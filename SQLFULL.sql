USE [GoBazarDB]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Surname], [Phone], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'88b8c11c-562a-434c-8968-650d70197b5f', N'CustomUser', N'Elxan', N'Seyidov', NULL, 0, N'elxan123@gmail.com', N'ELXAN123@GMAIL.COM', N'elxan123@gmail.com', N'ELXAN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK/9KAK95C5n8LC6KomA7s/MuyiiskHypi9OMpYHnAG6DsqIxxSuGHBevHrjBWl8CA==', N'4XX437UM3QLN22NPMFZOYJ6WIKDASBI3', N'2074b93f-0ba5-4433-879e-5738964964af', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [Surname], [Phone], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b0b7538-8b71-4af2-9c64-3709144afd65', N'CustomUser', N'Admin', N'SuperAdmin', NULL, 1, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENCxnPaUUyA43lhf5WSQ00jYO9suFxwqhJwxKwN/qnUWvwr5ZuwHDEIwkH0LxA3+XA==', N'Y72XEPTSVOQQTMY3N6Z4CNGJB7I4QVP7', N'e2530e98-3f65-4b1f-95d7-0d247825fdec', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (4, N'fa-solid fa-tablet', N'Tablet')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (5, N'fa-solid fa-mobile', N'Smartphones')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (6, N'fa-solid fa-tv', N'TV & Video')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (7, N'fa-solid fa-camera', N'Cameras & Photos')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (8, N'fa-solid fa-clock', N'Smart watch')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (9, N'fa-solid fa-desktop', N'Notebooks')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (10, N'fa-solid fa-headset', N'Headsets')
INSERT [dbo].[Categories] ([Id], [Icon], [Name]) VALUES (11, N'fa-solid fa-gamepad', N'Console Game')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (9, N'c158fe76-56dc-4a3d-8507-40d9d785d572-applesmartt.png', N'Tablet', N'Apple', 4)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (12, N'05ac7ac8-1291-499b-b7c2-5312b8ce852c-logosamsung.jpg', NULL, N'Samsung', 4)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (13, N'a2872c40-eba1-4d20-9855-6a880bf03864-huaveylogo3.jpg', NULL, N'Huawei', 4)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (14, N'e82549e6-80e2-4cf7-959b-69da1f362d46-lenovologo-1.png', NULL, N'Lenovo', 4)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (15, N'01ea1582-49cc-4c05-971a-572b2ed3d850-tcl-logo.png', NULL, N'TCL', 4)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (16, N'e6a58daa-85ae-47f3-9f76-f977b8829372-applesmartt.png', N'SmartPhones', N'Apple', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (17, N'4fde754c-ecb7-4cab-ac2b-0622b302e8da-xiomismorort.jpg', NULL, N'Xiaomi', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (18, N'9afc3c25-2fcd-4998-9c9d-7cdcb4d08ba1-logosamsung.jpg', NULL, N'Samsung', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (19, N'186c9d32-b6c3-492b-851b-f534953a24d5-huaveylogo3.jpg', NULL, N'Huawei', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (20, N'0cdcb978-af08-4c88-b69d-4100239501bb-Oneplus.jpg', NULL, N'OnePlus', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (21, N'3ae3313e-74a3-43c9-8417-6b1b3519620f-nokialogo.jpg', NULL, N'Nokia', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (22, N'ec7fbd02-eeda-4fb9-8b2e-cb1fb737f6ab-Oppologo.jpg', NULL, N'OPPO', 5)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (23, N'5837c93a-3788-4117-b138-46a837135212-LG-Life-is-Good-1.jpg', N'TV & Video	', N'LG', 6)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (24, N'567e8054-83cc-4feb-888d-d77e1e215589-sony-logo.jpg', NULL, N'Sony', 6)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (25, N'ebd3e656-e405-4968-abb6-14b47626d5e5-hisense-logo.png', NULL, N'Hisense', 6)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (26, N'4e61d6cb-663b-4968-987e-e0e6959eb8e5-logosamsung.jpg', NULL, N'Samsung', 6)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (27, N'5fb944a5-dc2a-4da0-a6fe-474facae40e5-tcl-logo.png', NULL, N'TCL', 6)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (28, N'8c8afe6e-04de-4ea2-b6bf-9ce8ad43c7bd-canon-logo.png', N' Cameras & Photos', N'Canon', 7)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (29, N'4c651593-57db-480e-b747-d923283efdbd-Nikon.png', NULL, N'Nikon', 7)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (30, N'7623414d-b9e1-4fda-a0e8-419bbaa7a358-sony-logo.jpg', NULL, N'Sony', 7)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (31, N'30e53503-17f5-4a3e-96f9-c8a42b89e518-fujifilm-logo.png', NULL, N'FujiFilm', 7)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (32, N'a0b9052b-1cb2-40a2-821e-fbe2e6847f4a-panasonic-logo.jpg', NULL, N'Ponosonic', 7)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (33, N'8358be64-bc6d-47c7-a285-829a12d83e98-go-pro-logo.png', NULL, N'Go Pro', 7)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (34, N'ea74d84f-3f2c-48b6-91c8-9b5ecac9d698-applesmartt.png', N'Smart watch', N'Apple', 8)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (35, N'ba5ff85b-9cc5-4a9d-9ced-0c258fa55b8a-xiomismorort.jpg', NULL, N'Xiaomi', 8)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (36, N'701e2cdd-a351-4cc6-9c8e-2e9a6fab6783-logosamsung.jpg', NULL, N'Samsung', 8)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (37, N'20fd2949-ae1a-4f80-8f07-22d617905542-huaveylogo3.jpg', NULL, N'Huawei', 8)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (38, N'6559045a-2970-493f-a6f1-c6d0fc2e2a46-applesmartt.png', N'HeadSet', N'Apple', 10)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (39, N'4000bc85-ced5-4c9d-b79c-1bfb68b12e87-huaveylogo3.jpg', NULL, N'Huawei', 10)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (40, N'316dcf07-ee5d-412d-b6d3-53c0aa60102c-xiomismorort.jpg', NULL, N'Xiaomi', 10)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (41, N'beab92a7-d111-474f-9787-bd6adff125d7-dr.dre-logo.png', NULL, N'Dr Dre', 10)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (42, N'075dc1e6-1817-4458-bf71-c56dcc4720f3-jbl-logo.jpg', NULL, N'JBL', 10)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (43, N'bd78e005-e861-4a5d-ac6e-ba96a6438cbc-playstationss.jpg', N'Console Game', N'Playstation', 11)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (44, N'1b4742c2-0bf3-4f0a-b953-4b4569261cd9-xbox.jpg', NULL, N'Xbox', 11)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (45, N'3d7004f0-20c1-4b3e-8777-633aa87909c0-NIntendoi.jpg', NULL, N'Nintendo', 11)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (46, N'b641233c-8912-4c87-a48d-0d1fcb88393f-applesmartt.png', N'Notebooks', N'Apple', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (47, N'94ca6096-938a-4c37-a4bb-2418ef945e35-acer-logo.jpg', NULL, N'Acer', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (48, N'24449975-59bd-43f5-b5c2-a4a40d0e5e23-asus-logo.jpg', NULL, N'Asus', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (49, N'7a2aefb2-e22d-4205-957e-604e141124c0-fijutsu-logo.jpg', NULL, N'Fijutsu', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (50, N'251a2d3b-b910-41eb-b3b4-f720343b4e92-dell-logo.jpg', NULL, N'Dell', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (51, N'23e28ee3-2469-43ab-9094-a01035a0431d-hp-logo.jpg', NULL, N'HP', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (52, N'0131bcb6-98bb-4ff6-b064-dec052019fae-lenovologo-1.png', NULL, N'Lenovo', 9)
INSERT [dbo].[SubCategories] ([Id], [Image], [Title], [Name], [CategoryId]) VALUES (53, N'ed2f82ba-df5a-49a1-a3d4-2329ca0fb53a-msi-logo.png', NULL, N'MSI', 9)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (1, N'9746f723-63b2-4183-8380-22278fb326ea-1529927_0a_9.jpg', N'Tablet>>Apple', N'iPad Air 10.9-İnch Wi-Fi+4G 64GB (2020) ', N'Apple', N'Space grey', N'1300$', NULL, NULL, NULL, 4, 9)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (2, N'13216c29-ca25-4f8e-b90d-ccd0ee908146-Без названия.jpg', NULL, N'iPad 9 (2021) 256GB WI-FI+4G ', N'Apple', N'Silver', N'899$', NULL, NULL, NULL, 4, 9)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (3, N'7ec1c400-f35f-4ffd-a58f-5156b2ee7822-Pad-10-2-2020-LTE-32GB-Space-Grey-MYMH2FDA-03122020-01-p.jpg', NULL, N'İPAD 10.2-İNCH Wİ-Fİ + CELLULAR 32GB (2020)', N'Apple', N'SPACE ', N'1300$', N'969$', CAST(N'2022-03-19T00:00:00.0000000' AS DateTime2), N'30%', 4, 9)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (4, N'bdd065e1-a9a9-4e57-a778-2a19ea302f2e-u_10234433.jpg', N'Tablet>>Samsug', N'Samsung Galaxy Tab A8 LTE 32Гб (SM-X205) ', N'Samsung', N'Pink', N'799$', NULL, NULL, NULL, 4, 12)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (5, N'b6531e7c-3a3b-4b64-a0c4-a1c096689069-lte.jpg', NULL, N'Samsung Galaxy Tab A8 LTE 64GB (SM-X205) ', N'Samsung', N'Gray', N'599$', NULL, NULL, NULL, 4, 12)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (6, N'c5721601-b238-4169-86ed-1ff300d20167-492134289_.jpg', N'Tablet>>Huawei', N' HUAWEI MatePad T 10s LTE  4/128GB ', N'Huawei', N'Blue', N'1299$', N'999$', CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2), N'26%', 4, 13)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (7, N'1d184336-2e00-4fe6-99e9-8963f8e60822-sdada.jfif', N'Tablet>>Lenovo', N'Lenovo TB-7305F 1/16GB ', N'Lenovo', N'Black', N'299$', NULL, NULL, NULL, 4, 14)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (8, N'6af77199-c9ce-4567-9010-b4c610952283-tcl.jfif', N'Tablet>>TCL', N'TCL 10 TabMax 4G 9295G 4/64GB ', N'TCl', N'Frost Blue', N'395$', NULL, NULL, NULL, 4, 15)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (9, N'1c725810-69ba-4db1-b002-3f00ced715d2-refurb-iphone-11-pro-gold-2019.jfif', N'Smarphones>>Apple', N'iPhone 11 64GB ', N'Apple', N'Gold', N'1500$', NULL, NULL, NULL, 5, 16)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (10, N'91b4de60-4b70-41b2-9e7f-87e2dbee376c-xiaomi_redmi_note_11_azul_estelar_01_l.jpg', N'Smartphone>>Xiaomi', N'Xiaomi Redmi Note 11 4/128GB ', N'Xioami ', N'Star Blue', N'489$', NULL, NULL, NULL, 5, 17)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (11, N'8ed80ea4-0184-47d7-bb25-df01cfa4b617-Без названия.jfif', N'Smarphones>>Samsung', N'Samsung Galaxy S21FE 5G 6/128GB (SM-G990) ', N'Samsung', N'White', N'1300$', N'999$', CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2), N'30%', 5, 18)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (12, N'b3c66edc-44b9-4231-9329-c068839ca8b5-huawei-nova-9-8gb128gb-starry-blue.jpg', N'Smarphones>>Huawei', N'HUAWEI Nova 9 8GB/128GB Starry', N'Huawei', N' Blue', N'739$', NULL, NULL, NULL, 5, 19)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (13, N'dabca3f7-f0a8-49ae-9450-4198c352ac08-OnePlus-Nord-N10-5G-dp.jpeg', N'Smartphones>>OnePlus', N'Oneplus Nord N10 5G 6/128Gb  Midnight ', N'OnePlus', N'Ice', N'639$', NULL, NULL, NULL, 5, 20)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (14, N'abf4d014-45fa-4022-8664-d59cfb439995-nokia_g20_4gb_64gb_04_ad_l.jpg', N'Smartphones>>Nokia', N'Nokia G20 Dark 4/64GB', N'Nokia', N'Blue ', N'259$', NULL, NULL, NULL, 5, 21)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (15, N'19126a8a-958f-4c49-a65f-e23c595a6431-opop.jfif', N'Smartphones>>OPPO', N'Oppo F17 6/128Gb ', N'OPPO', N'BLUE', N'429$', NULL, NULL, NULL, 5, 22)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (16, N'ff474d88-a791-4ac1-8937-6f633b253ca9-4.jpg', N'Tv>>Lg', N'LG OLED65B1RLA', N'Lg', N'Black', N'4599$', N'4000$', CAST(N'2022-03-31T23:11:00.0000000' AS DateTime2), N'9%', 6, 23)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (17, N'f978676b-0109-403b-b7aa-d9c4a33ff48b-sonyyy.jpg', N'Tv>>Sony', N'Sony 4k FULL HD', N'Sony', N'Black', N'4209$', NULL, NULL, NULL, 6, 24)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (18, N'8b79d397-89d4-422f-9a61-28291662b582-HIsense.jfif', N'TV>>Hisense', N'Hisense 4k 65 FULL HD', N'Hisense', N'Black', N'3999$', NULL, NULL, NULL, 6, 25)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (19, N'd0f2ab9b-a831-45f6-bfe4-5aa44f0ddb59-samsunggg.jfif', N'TV>>Samsung', N'Samsung Tv 4K ', N'Samsung', N'Black', N'5499$', NULL, NULL, NULL, 6, 26)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (20, N'd66f1363-e554-470d-8f4c-34367b37c047-TCLL.jpg', N'TV>>TCL', N'TCL 4K', N'TCl', N'Black', N'3569$', NULL, NULL, NULL, 6, 27)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (21, N'6bb7fad6-7f55-4d60-b236-ba96269c12ad-Canonnnn.jpg', N'Camer>>Canon', N'Canon EOS R', N'Canon', N'Black', N'1359$', N'929$', CAST(N'2022-03-20T23:37:00.0000000' AS DateTime2), N'36%', 7, 28)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (22, N'0ac63cdc-db4f-4388-b569-05a3c6c6fbed-nikon.jpg', N'Cameras>>Nicon', N'Nikon D610', N'Nikon ', N'Black', N'639$', NULL, NULL, NULL, 7, 29)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (23, N'0bd79395-f78c-4e1b-8b8a-7d9663e52c98-Sonycamera.jpg', N'Cameras>>Sony', N'Sony a7', N'Sony', N'Black', N'659$', NULL, NULL, NULL, 7, 30)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (24, N'cee8c05b-98ed-4241-936d-851933debe2a-fujidilm.jpg', N'Camera>>Fujufilm', N'Fujufilm x-14', N'Fujufilm', N'Black', N'319$', NULL, NULL, NULL, 7, 31)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (25, N'a12ca592-a4cf-45b6-9b3c-ffb2340be265-Ponosonic.jpg', N'Camera>>Ponosonic', N'Ponosonic HC-X1000', N'Ponosonic', N'Black', N'2099$', NULL, NULL, NULL, 7, 32)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (26, N'419c6ccc-1f6d-41ee-a412-014ceb956138-Gopro.jpg', N'Camera>>Go Pro', N'Go Pro', N'Go Pro', N'Black', N'1539$', NULL, NULL, NULL, 7, 33)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (27, N'43999d69-f819-4c7d-b587-d6b0297db35c-applewatch.jfif', N'Smart Watch>>Apple', N'Apple Smart Watch', N'Apple', N'White', N'899$', N'499%', CAST(N'2022-04-01T00:00:00.0000000' AS DateTime2), N'50%', 8, 34)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (28, N'b6fb8f32-7a89-4a09-a663-be82a7d780c0-Mibands.jpg', N'Smart Watch>>Xiaomi', N'Mi Band 6', N'Xiaomi', N'Black', N'109$', N'69$', CAST(N'2022-04-09T00:14:00.0000000' AS DateTime2), N'23%', 8, 37)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (29, N'673e8f65-8ffe-41a7-a1d4-af8b9c217224-hp.jpg', N'Notebooks>>HP', N'HP Notebook 15-ra006ne', N'Hp', N'Black', N'2609$', NULL, NULL, NULL, 9, 51)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (30, N'6ed60d72-6c97-4974-81ea-4562f14f4c83-dr dre.jfif', N'Headset>>Dr.Dre', N'Dr.Dre', N'Dr.Dre', N'Red', N'929$', N'769$', CAST(N'2022-04-10T00:14:00.0000000' AS DateTime2), N'9%', 10, 41)
INSERT [dbo].[Products] ([Id], [Image], [Title], [Model], [Brand], [Color], [Price], [DiscountPrice], [DiscountDate], [Discountfaiz], [CategoryId], [SubCategoryId]) VALUES (31, N'e5c5b837-92f5-4ae3-9251-45bf563cc324-ps6666.jpeg', N'Console Game>>PlatStation', N'PlatStation 5', N'PlatStation', N'White', N'1349$', NULL, NULL, NULL, 11, 43)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Advertisings] ON 

INSERT [dbo].[Advertisings] ([Id], [Image], [Link]) VALUES (1, N'0e173322-d630-496b-97eb-1df27dd607eb-tapaz.jpg', N'https://tap.az/')
SET IDENTITY_INSERT [dbo].[Advertisings] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Uptitle], [Title], [CreatedDate], [Image]) VALUES (1, N'What is MetaVerse?', N'A metaverse is a network of 3D virtual worlds focused on social connection. In futurism and science fiction, it is often described as a hypothetical iteration of the Internet as a single, universal virtual world that is facilitated by the use of virtual and augmented reality headsets.', CAST(N'2022-03-10T18:36:00.0000000' AS DateTime2), N'37568c47-824c-41f9-8550-4ca68699fa1b-s1.jfif')
INSERT [dbo].[Blogs] ([Id], [Uptitle], [Title], [CreatedDate], [Image]) VALUES (2, N'Gta VI comin in 2023-2024', N'On Friday February 4, Rockstar Games took to Twitter and their newswire to offer a community update its Grand Theft Auto series which included a long-awaited announcement about the development of Grand Theft Auto 6.  "With the unprecedented longevity of GTAV, we know many of you have been asking us about a new entry in the Grand Theft Auto series,” wrote Rockstar.  "With every new project we embark on, our goal is always to significantly move beyond what we have previously delivered — and we are pleased to confirm that active development for the next entry in the Grand Theft Auto series is well underway.  They added: "We look forward to sharing more as soon as we are ready, so please stay tuned to the Rockstar Newswire for official details.“On behalf of our entire team, we thank you all for your support and cannot wait to step into the future with you!”  The news of Grand Theft Auto 6’s development at last comes after the franchise’s third game, and first game under Rockstar North, celebrated its 20th anniversary on October 8 2021', CAST(N'2022-03-10T18:38:00.0000000' AS DateTime2), N'06a7247c-7af5-4870-bc5b-e8c7c674e655-GTA_6_Release_Rockstar_Games.jpg')
INSERT [dbo].[Blogs] ([Id], [Uptitle], [Title], [CreatedDate], [Image]) VALUES (3, N'Windows 11 have bugs?', N'Windows 11 is officially out, and early adopters have reported bugs and issues with the next generation of Windows.  While many of these issues should get sorted out pretty quickly by Microsoft, if you encounter one it doesn''t matter how soon a fix might come — you want to know what''s going wrong with your PC, and how to deal with it.  See our full Windows 11 review The best Windows laptops you can buy right now Windows 11 vs Windows 10: Here''s what''s new To help you solve your Windows 11 woes, we''ve pulled together this guide to the most common Windows 11 problems we''re seeing right now, and what (if anything) can be done about them.', CAST(N'2022-03-10T18:40:00.0000000' AS DateTime2), N'fe2e1e32-1c83-41e4-8897-02efe9da3a6d-eooagXPMSQVNwgpnEsZwZG.jpg')
INSERT [dbo].[Blogs] ([Id], [Uptitle], [Title], [CreatedDate], [Image]) VALUES (4, N'Xiaomi new smart Glasses', N'Xiaomi’s Smart Glasses are powered by a quad-core ARM processor and run on Android. They also use MicroLED imaging technology, which is known for having a higher brightness and longer lifespan than OLED. The company says the technology has a simpler structure that enabled it to create a compact display with individual pixels sized at 4μm. You won’t be able to view the images you take in color, though — Xiaomi says it opted to use a monochrome display solution “to allow sufficient light to pass through complicated optical structures.”   The company explains:  “The grating structure etched onto the inner surface of the lens allows light to be refracted in a unique way, directing it safely into the human eye. The refraction process involves bouncing light beams countless times, allowing the human eye to see a complete image, and greatly increasing usability while wearing. All this is done inside a single lens, instead of using complicated multiples lens systems, mirrors, or half mirrors as some other products do.”  Its smart glasses won’t be just a second screen for your phone, according to Xiaomi. It’s independently capable of many things, such as selecting the most important notifications to show you, including smart home alarms and messages from important contacts. The device’s navigation capability can display maps and directions in front of your eyes. It can also show you the number of whoever’s currently calling your phone, and you can take the call using the smart glasses’ built in mic and speakers.  That mic will be able to pick up speech, as well, which Xiaomi’s proprietary translating algorithm can translate in real time. The glasses’ translation feature also works’ on written text and text on photos captures through its camera. Unfortunately, the company has yet to announce a price or a launch date for the glasses, but we’ll keep you updated when it does.', CAST(N'2022-03-10T18:41:00.0000000' AS DateTime2), N'4e40f863-eef3-46f5-86df-3992a9bdae74-xiomi im.jpeg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[BrandsLogos] ON 

INSERT [dbo].[BrandsLogos] ([Id], [Image], [Link]) VALUES (1, N'bf737647-1739-4531-b5ed-1a938b2a12be-huaveylogo3.jpg', N'https://www.huawei.com/en/?ic_medium=direct&ic_source=surlent')
INSERT [dbo].[BrandsLogos] ([Id], [Image], [Link]) VALUES (2, N'707250e2-f4c9-476c-b59b-5ea3c3d4cb2c-applesmartt.png', N'https://www.apple.com/')
INSERT [dbo].[BrandsLogos] ([Id], [Image], [Link]) VALUES (3, N'36d7243e-16cc-4bf3-96ac-246d0e163792-playstationss.jpg', N'https://www.playstation.com/en-us/')
INSERT [dbo].[BrandsLogos] ([Id], [Image], [Link]) VALUES (4, N'3fb62857-e84d-4ccf-967e-c00fbc3821df-dr.dre-logo.png', N'https://www.beatsbydre.com/')
INSERT [dbo].[BrandsLogos] ([Id], [Image], [Link]) VALUES (5, N'5e34207e-f912-458b-873d-cd98a7a2845a-go-pro-logo.png', N'https://gopro.com/en/az/en')
INSERT [dbo].[BrandsLogos] ([Id], [Image], [Link]) VALUES (6, N'02841859-89f8-465c-a04b-0f3499a0ae09-logosamsung.jpg', N'https://www.samsung.com/')
SET IDENTITY_INSERT [dbo].[BrandsLogos] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Destiraction], [CreatedDate]) VALUES (7, N'Emil', N'emil123@gmail.com', N'Мы и наши партнеры используем такие технологии, как файлы cookie, и обрабатываем персональные данные, такие как IP-адрес или информацию браузера, для персонализации рекламы, которую вы видите. Это помогает нам показывать вам более релевантную рекламу и улучшает вашу работу в интернете. Мы также используем эти данные для измерения результатов или настройки содержания нашего веб-сайта. Поскольку мы ценим вашу конфиденциальность, мы просим вашего разрешения на использование этих технологий. Вы всегда можете изменить или отозвать свое согласие позже в разделе "Политика конфиденциальности".', CAST(N'2022-03-12T18:39:07.9692337' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[FlashDeal2s] ON 

INSERT [dbo].[FlashDeal2s] ([Id], [Link], [Title], [Uptitle], [Image]) VALUES (1, N'https://www.google.com/', N'Smart Headsets', N'Get Extra 15% Discount on', N'b75f64b0-fccc-405c-9d09-d6afd76e0fd3-bottombanner-01.jpg')
INSERT [dbo].[FlashDeal2s] ([Id], [Link], [Title], [Uptitle], [Image]) VALUES (2, N'https://www.google.com/', N'Get Extra $10', N'GLimited offer for Tablets', N'22620687-ddf2-4acd-ae63-24ea90cfbf20-bottombanner-02.jpg')
SET IDENTITY_INSERT [dbo].[FlashDeal2s] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeImage1s] ON 

INSERT [dbo].[HomeImage1s] ([Id], [Image]) VALUES (1, N'bcfc093a-4cc9-4976-83cb-9b30ae7b5283-SubBanner-01.jpg')
SET IDENTITY_INSERT [dbo].[HomeImage1s] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Icon], [Title1], [Title2]) VALUES (1, N'fa-solid fa-bus', N'Easy to buy & return', N'Single click to buy & return')
INSERT [dbo].[Services] ([Id], [Icon], [Title1], [Title2]) VALUES (2, N'fa-solid fa-credit-card', N'Secure Payments', N'100% payment security')
INSERT [dbo].[Services] ([Id], [Icon], [Title1], [Title2]) VALUES (3, N'fa-solid fa-headphones', N'24x7 Support Available', N'support 24 hours a day')
INSERT [dbo].[Services] ([Id], [Icon], [Title1], [Title2]) VALUES (4, N'fa-solid fa-mobile', N'Shop with our App', N'Download app & get offers')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Logo], [Location], [Phone], [Email], [Poweredby], [StoreName], [Fax], [OpeninTime], [Comments], [Map]) VALUES (1, N'c606e2ce-cb56-4395-98ab-523f50033c3d-logo.png', N'Yeni Yasamal', N'910123456789', N'GoBazar@gmail.com', N'Powered By OpenCart Gobazar - Best Online Store © ', N'Gobazar - Best Online Store', N'0123456789', N'9:00 AM to 6:00 PM', N'Shop Laptop feature only the best laptop deals on  the market. By comparing laptop deals from   the  likes of PC World, Comet, Dixons, The Link and Carphone Warehouse', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2254.459504013009!2d49.79260524041466!3d40.39880218010924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4030876df001a3db%3A0x6dd49887a78f0dd7!2sARMOSTORE!5e0!3m2!1sen!2s!4v1647015154066!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Image]) VALUES (3, N'2be0032e-cb4c-4cc8-afd8-55326b5c1399-Main-banner-2-1903x520.jpg')
INSERT [dbo].[Sliders] ([Id], [Image]) VALUES (4, N'f7ba5f7d-0746-4caa-9f05-ccf13481adec-Main-banner-1-1903x520.jpg')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Socials] ON 

INSERT [dbo].[Socials] ([Id], [Icon], [Link]) VALUES (1, N'fa-brands fa-facebook-f', N'https://www.facebook.com/')
INSERT [dbo].[Socials] ([Id], [Icon], [Link]) VALUES (2, N'fa-brands fa-twitter', N'https://twitter.com/')
INSERT [dbo].[Socials] ([Id], [Icon], [Link]) VALUES (3, N'fa-brands fa-youtube', N'https://www.youtube.com/')
INSERT [dbo].[Socials] ([Id], [Icon], [Link]) VALUES (4, N'fa-brands fa-instagram', N'https://www.instagram.com/')
SET IDENTITY_INSERT [dbo].[Socials] OFF
GO
SET IDENTITY_INSERT [dbo].[Specials] ON 

INSERT [dbo].[Specials] ([Id], [Image], [Model], [Brand], [Color], [Price], [Discount], [Discountfaiz]) VALUES (1, N'cf7fd8b0-e051-46a6-864f-6285e01f0a2a-xiaomi-xiaomi-poco-x3-pro-8gb-256gb.jpg', N'POCO X3', N'Xioami ', N'Blue', N'499$', N'599$', N'10%')
INSERT [dbo].[Specials] ([Id], [Image], [Model], [Brand], [Color], [Price], [Discount], [Discountfaiz]) VALUES (2, N'890eb5ef-ce3d-4883-b7d1-38c49ec6af5f-Apple-iPhone-Xs-600x600.jpg', N'Iphone XS', N'Apple', N'Gold', N'799$', N'999$', N'20%')
INSERT [dbo].[Specials] ([Id], [Image], [Model], [Brand], [Color], [Price], [Discount], [Discountfaiz]) VALUES (3, N'd9b42218-ad4a-4da0-adef-c8d5e5fc6d54-xbox-x-1.jpg', N'Series x', N'Xbox', N'Black', N'600$', N'999$', N'30%')
INSERT [dbo].[Specials] ([Id], [Image], [Model], [Brand], [Color], [Price], [Discount], [Discountfaiz]) VALUES (4, N'5ba5da1b-233e-4292-a56b-e1628a228de4-HP-250-G8-3Y666PA.jpg', NULL, N'HP', N'Hp 250 8Gb', N'1600$', N'800$', N'50%')
SET IDENTITY_INSERT [dbo].[Specials] OFF
GO
