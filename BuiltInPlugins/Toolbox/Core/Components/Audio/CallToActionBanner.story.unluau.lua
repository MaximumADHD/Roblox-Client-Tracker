-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.CallToActionBanner.CallToActionBanner)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.Core.Util.Images)
local function var5()
   print("click")
end

local var6 = {}
var6.name = "Banner"
function var6.story()
   local var232 = {}
   local var235 = {}
   var235.Image = var4.MONSTER_CAT_BANNER
   var235.Text = "Find tracks from Mostercat"
   var235.OnClick = var5
   var232.CallToActionBanner = var2.Generator(var235)
   return var1.createElement(var3, {}, var232)
end

return var6
