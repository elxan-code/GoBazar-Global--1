﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Finalproject.Data;
using Finalproject.Models;
using System.IO;
using Microsoft.AspNetCore.Hosting;
using Finalproject.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Http;

namespace Finalproject.Areas.admin.Controllers
{
    [Area("admin")]
    [Authorize]
    public class ProductsController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public ProductsController(AppDbContext context, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            _webHostEnvironment = webHostEnvironment;
        }

        // GET: admin/Products
        public async Task<IActionResult> Index(int page = 1, double itemCount = 10)
        {
            VmHome model = new VmHome()
            {
                
                Products = _context.Products.Include(cp => cp.ProductToProduct).ThenInclude(pi => pi.ProductImages).ToList()
             
            };

            List<Product> products = _context.Products.OrderByDescending(m => m.Id).ToList();
            model.PageCount = (int)Math.Ceiling(products.Count / itemCount);
            model.Products = products.Skip((page - 1) * (int)itemCount).Take((int)itemCount).ToList();
            model.Page = page;
            model.ItemCount = itemCount;

            return View(model);




            var appDbContext = _context.Products.OrderByDescending(m=>m.Id).Include(p => p.Category).Include(p => p.SubCategory).Include(cp => cp.ProductToProduct).ThenInclude(pi => pi.ProductImages);
            return View(await appDbContext.ToListAsync());
        }

        // GET: admin/Products/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Products
                .Include(p => p.Category)
                .Include(p => p.SubCategory)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // GET: admin/Products/Create
        public IActionResult Create()
        {
            ViewBag.CategoryList = _context.Categories.ToList();
            ViewData["SubCategoryId"] = new SelectList(_context.SubCategories, "Id", "Id");

            return View();
        }
        public JsonResult GetSubCategory(int categoryId)
        {
            var data = _context.SubCategories.Where(m => m.CategoryId == categoryId).ToList();
            return Json(data);
        }


        // POST: admin/Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create( Product product)
        {
            ViewBag.CategoryList = _context.Categories.ToList();
            ViewData["SubCategoryId"] = new SelectList(_context.SubCategories, "Id", "Name", product.SubCategoryId);
            if (ModelState.IsValid)
            {
                //if (product.ImageFile != null)
                //{
                //    if (product.ImageFile.ContentType == "image/jpeg" || product.ImageFile.ContentType == "image/png")
                //    {
                //        if (product.ImageFile.Length <= 3000000)
                //        {
                //            string FileName = Guid.NewGuid() + "-" + product.ImageFile.FileName;
                //            string FilePath = Path.Combine(_webHostEnvironment.WebRootPath, "UploadsProducts", FileName);
                //            using (var stream = new FileStream(FilePath, FileMode.Create))
                //            {
                //                product.ImageFile.CopyTo(stream);
                //            }
                //            product.Image = FileName;
                //            _context.Products.Add(product);
                //            await _context.SaveChangesAsync();
                //            return RedirectToAction(nameof(Index));

                //        }
                //        else
                //        {
                //            ModelState.AddModelError("", "you can choose only 3 mb image file");
                //            return View(product);
                //        }


                //    }
                //    else
                //    {
                //        ModelState.AddModelError("", "you can choose only image file");
                //        return View(product);

                //    }

                //}
                //else
                //{
                //    ModelState.AddModelError("", " choose image file");
                //    return View(product);

                //}
                //return RedirectToAction("CreateColorToProduct");

                VmPrd vmPrdAll = new VmPrd();
                vmPrdAll.Product = product;
                string prdModel = JsonConvert.SerializeObject(vmPrdAll);
                HttpContext.Session.SetString("Product", prdModel);
                return RedirectToAction("CreateColorToProduct");
            }

            return View(product);


        }

        public IActionResult CreateColorToProduct()
        {
           
            return View();
        }

        [HttpPost]
        public IActionResult CreateColorToProduct(List<VmImage> model)
        {
            string prdModelString = HttpContext.Session.GetString("Product");
            VmPrd prdModel = JsonConvert.DeserializeObject<VmPrd>(prdModelString);

            foreach (var item in model)
            {
                foreach (var image in item.Image)
                {
                    string s = null;
                    using (var ms = new MemoryStream())
                    {
                        image.CopyTo(ms);
                        var fileBytes = ms.ToArray();
                        s = Convert.ToBase64String(fileBytes);
                    }

                    item.ImageBase64.Add(s);
                }


                item.Image = null;
            }

            prdModel.VmImages = model;
            HttpContext.Session.SetString("Product", JsonConvert.SerializeObject(prdModel));



            //First stage
            Product product = new Product()
            {
                Title = prdModel.Product.Title,
                Model = prdModel.Product.Model,
                Brand = prdModel.Product.Brand,
                Stock = prdModel.Product.Stock,
                Color = prdModel.Product.Color,
                Price = prdModel.Product.Price,
                DiscountPrice = prdModel.Product.DiscountPrice,
                Discountfaiz = prdModel.Product.Discountfaiz,
                DiscountDate = prdModel.Product.DiscountDate,
                CategoryId = prdModel.Product.CategoryId,
                SubCategoryId = prdModel.Product.SubCategoryId
            };
            _context.Products.Add(product);
            _context.SaveChanges();

            //Second stage
            foreach (var item in prdModel.VmImages)
            {
                ProductToProduct colorToProduct = new ProductToProduct()
                {
                    ProductId = product.Id,
                };
                _context.ProductToProducts.Add(colorToProduct);
                _context.SaveChanges();

                foreach (var image in item.ImageBase64)
                {
                    byte[] bytes = Convert.FromBase64String(image);
                    MemoryStream stream = new MemoryStream(bytes);

                    IFormFile file = new FormFile(stream, 0, bytes.Length, "image1", "image1.png");

                    string filename = Guid.NewGuid() + "-" + file.FileName;
                    string filePath = Path.Combine("wwwroot", "ProductDetails", filename);

                    using (var stream2 = new FileStream(filePath, FileMode.Create))
                    {
                        file.CopyTo(stream2);
                    }

                    ProductImage productImage = new ProductImage()
                    {
                        Image = filename,
                        ProductToProductId = colorToProduct.Id
                    };
                    _context.ProductImages.Add(productImage);
                    _context.SaveChanges();
                }
           
            }
            HttpContext.Session.Remove("Product");
            return RedirectToAction("index");



        }


        // GET: admin/Products/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Products.FindAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            ViewBag.CategoryList = _context.Categories.ToList();
            ViewData["SubCategoryId"] = new SelectList(_context.SubCategories, "Id", "Id");
            return View(product);
        }

        // POST: admin/Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Product product)
        {
            ViewBag.CategoryList = _context.Categories.ToList();
            ViewData["SubCategoryId"] = new SelectList(_context.SubCategories, "Id", "Name", product.SubCategoryId);
            if (ModelState.IsValid)
            {
                if (product.ImageFile != null)
                {
                    if (product.ImageFile.ContentType == "image/jpeg" || product.ImageFile.ContentType == "image/png")
                    {
                        if (product.ImageFile.Length <= 3000000)
                        {

                            //Delete old image

                            if (!string.IsNullOrEmpty(product.Image))
                            {
                                string oldImagePath = Path.Combine(_webHostEnvironment.WebRootPath, "UploadsProducts", product.Image);
                                if (System.IO.File.Exists(oldImagePath))
                                {
                                    System.IO.File.Delete(oldImagePath);
                                }
                            }



                            //string olddata = Path.Combine(_webHostEnvironment.WebRootPath, "UploadsProducts", product.Image);
                            //if (System.IO.File.Exists(olddata))
                            //{
                            //    System.IO.File.Delete(olddata);
                            //}



                            string FileName = Guid.NewGuid() + "-" + product.ImageFile.FileName;
                            string FilePath = Path.Combine(_webHostEnvironment.WebRootPath, "UploadsProducts", FileName);
                            using (var stream = new FileStream(FilePath, FileMode.Create))
                            {
                                product.ImageFile.CopyTo(stream);
                            }
                            product.Image = FileName;


                        }
                        else
                        {
                            ModelState.AddModelError("", "you can choose only 3 mb image file");
                            return View(product);
                        }


                    }
                    else
                    {
                        ModelState.AddModelError("", "you can choose only image file");
                        return View(product);

                    }

                }

                _context.Products.Update(product);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));

            }

            return View(product);

        }

        // GET: admin/Products/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Products
                .Include(p => p.Category)
                .Include(p => p.SubCategory)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // POST: admin/Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var product = await _context.Products.FindAsync(id);
            string olddata = Path.Combine(_webHostEnvironment.WebRootPath, "UploadsProducts", product.Image);
            if (System.IO.File.Exists(olddata))
            {
                System.IO.File.Delete(olddata);
            }
            _context.Products.Remove(product);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductExists(int id)
        {
            return _context.Products.Any(e => e.Id == id);
        }
    }
}
