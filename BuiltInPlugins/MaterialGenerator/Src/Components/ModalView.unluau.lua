-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = var1.UI
local var4 = var3.Button
local var5 = var3.KeyboardListener
local var6 = var3.Pane
local var7 = var1.Util.prioritize
local var8 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
local var9 = var2.PureComponent:extend("ModalView")
function var9.init(arg1)
   assert(var8(), "Expected FFlagMaterialGeneratorNewUI to be false")
   function arg1.close()
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
end

local function fun13(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ModalView
   local var258 = {}
   var258.BackgroundColor = Color3.new(0, 0, 0)
   var258.LayoutOrder = var0.LayoutOrder
   var258.OnClick = arg1.close
   var258.Size = var7(var0.Size, var1.Size)
   var258.Transparency = var1.Transparency
   var258.ZIndex = 1
   local var268 = {}
   local var272 = {}
   var272.AnchorPoint = Vector2.new(0.5, 0.5)
   var272.Position = UDim2.fromScale(0.5, 0.5)
   var272.Size = var7(var0.ContentSize, var1.ContentSize)
   var272.ZIndex = 2
   local var282 = {}
   local var286 = {}
   var286.AnchorPoint = Vector2.new(1, 0)
   var286.Position = UDim2.new(1, 65534, 0, 2)
   var286.Size = var1.CloseButtonSize
   var286.Style = "Close"
   var286.OnClick = arg1.close
   var286.ZIndex = 1000
   var282.CloseButton = var2.createElement(var4, var286)
   local var305 = {}
   function var305.OnKeyPressed()
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
   var282.KeyboardListener = var2.createElement(var5, var305)
   var282.Content = var0.Content
   var268.ContentWrapper = var2.createElement(var6, var272, var282)
   return var2.createElement(var6, var258, var268)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ModalView
   local var258 = {}
   var258.BackgroundColor = Color3.new(0, 0, 0)
   var258.LayoutOrder = var0.LayoutOrder
   var258.OnClick = arg1.close
   var258.Size = var7(var0.Size, var1.Size)
   var258.Transparency = var1.Transparency
   var258.ZIndex = 1
   local var268 = {}
   local var272 = {}
   var272.AnchorPoint = Vector2.new(0.5, 0.5)
   var272.Position = UDim2.fromScale(0.5, 0.5)
   var272.Size = var7(var0.ContentSize, var1.ContentSize)
   var272.ZIndex = 2
   local var282 = {}
   local var286 = {}
   var286.AnchorPoint = Vector2.new(1, 0)
   var286.Position = UDim2.new(1, 65534, 0, 2)
   var286.Size = var1.CloseButtonSize
   var286.Style = "Close"
   var286.OnClick = arg1.close
   var286.ZIndex = 1000
   var282.CloseButton = var2.createElement(var4, var286)
   local var305 = {}
   function var305.OnKeyPressed()
      if arg1.props.OnClose then
         arg1.props.OnClose()
      end
   end
   
   var282.KeyboardListener = var2.createElement(var5, var305)
   var282.Content = var0.Content
   var268.ContentWrapper = var2.createElement(var6, var272, var282)
   return var2.createElement(var6, var258, var268)
end

fun13 = var1.ContextServices.withContext
local var315 = {}
var315.Stylizer = var1.Style.Stylizer
var9 = fun13(var315)(var9)
return var9
