-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.Pane
local var5 = var3.Image
local var6 = require(script.Parent.PreviewModelComponent)
local var7 = var1.PureComponent:extend("DisplayAvatarsComponent")
function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Loaded
   local var3 = var1.PreviewWindowSize
   local var41 = {}
   local var45 = {}
   var45.Size = var3
   var45.Model = var0.Model1
   var45.AnimationId = var0.Animation1
   var45.Loaded = var2
   var45.Label = "R6"
   var41.OriginalPreview = var1.createElement(var6, var45)
   local var51 = {}
   var51.Size = var1.Arrow.Size
   var51.Position = var1.Arrow.Position
   var51.Image = var1.Arrow.Image
   var51.ImageRectSize = var1.Arrow.ImageRectSize
   var51.ImageRectOffset = var1.Arrow.Offset
   var51.ImageColor3 = var1.Arrow.Color
   var41.Arrow = var1.createElement(var5, var51)
   local var68 = {}
   var68.Size = var3
   var68.Position = var1.PreviewWindowPosition
   var68.Model = var0.Model2
   var68.AnimationId = var0.Animation2
   var68.Loaded = var2
   var68.Label = "R15"
   var41.SuggestedPreview = var1.createElement(var6, var68)
   return var1.createElement(var4, {}, var41)
end

local var73 = {}
var73.Stylizer = var2.Style.Stylizer
var7 = var2.ContextServices.withContext(var73)(var7)
return var7
