local CorePackages = game:GetService("CorePackages")

-- This covers all of the Packages folder, which is fairly defensive, but should
-- be okay even if it runs multiple times
local initify = require(CorePackages.initify)
initify(CorePackages.Packages)

local UIBlox = require(CorePackages.Packages.UIBlox)

export type ImageSetImage = UIBlox.ImageSetImage
export type Images = UIBlox.Images
export type Font = UIBlox.Font
export type FontPalette = UIBlox.FontPalette
export type Theme = UIBlox.Theme
export type AppStyle = UIBlox.AppStyle

return UIBlox
