local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)

export type XPath = Rhodium.XPath
export type Element = Rhodium.Element

return Rhodium
