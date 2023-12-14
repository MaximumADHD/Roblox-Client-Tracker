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
   local var187 = {}
   local var191 = {}
   var191.Size = var3
   var191.Model = var0.Model1
   var191.AnimationId = var0.Animation1
   var191.Loaded = var2
   var187.OriginalPreview = var1.createElement(var6, var191)
   local var196 = {}
   var196.Size = var1.Arrow.Size
   var196.Position = var1.Arrow.Position
   var196.Image = var1.Arrow.Image
   var196.ImageRectSize = var1.Arrow.ImageRectSize
   var196.ImageRectOffset = var1.Arrow.Offset
   var196.ImageColor3 = var1.Arrow.Color
   var187.Arrow = var1.createElement(var5, var196)
   local var213 = {}
   var213.Size = var3
   var213.Position = var1.PreviewWindowPosition
   var213.Model = var0.Model2
   var213.AnimationId = var0.Animation2
   var213.Loaded = var2
   var187.SuggestedPreview = var1.createElement(var6, var213)
   return var1.createElement(var4, {}, var187)
end

local var217 = {}
var217.Stylizer = var2.Style.Stylizer
var7 = var2.ContextServices.withContext(var217)(var7)
return var7
