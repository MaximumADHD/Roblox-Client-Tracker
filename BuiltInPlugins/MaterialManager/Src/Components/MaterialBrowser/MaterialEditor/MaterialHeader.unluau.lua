-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Button
local var7 = var5.Image
local var8 = var5.Pane
local var9 = require(var0.Src.Actions.ClearMaterial)
local var10 = require(var0.Src.Reducers.MainReducer)
local var11 = require(var0.Src.Components.MaterialPreview)
local var12 = var2.PureComponent:extend("MaterialHeader")
function var12.init(arg1)
   function arg1.onClose()
      arg1.props.dispatchClearMaterial()
   end
   
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.MaterialHeader
   local var2 = var0.Material
   if not var2 then
      return var2.createElement(var8)
   end
   local var392 = {}
   var392.LayoutOrder = var0.LayoutOrder
   var392.Size = var1.HeaderSize
   local var395 = {}
   local var399 = {}
   var399.BackgroundColor = var1.HeaderBackground
   var399.DisableZoom = true
   var399.LayoutOrder = 1
   var399.Material = var2.Material
   var399.MaterialVariant = var2.MaterialVariant
   var399.Position = UDim2.fromOffset(0, 0)
   var395.Preview = var2.createElement(var11, var399)
   local var413 = {}
   var413.OnClick = arg1.onClose
   var413.Position = var1.ButtonPosition
   var413.Size = var1.ButtonSize
   var413.Style = var1.ButtonStyle
   var413.ZIndex = 2
   local var419 = {}
   local var423 = {}
   var423.Style = var1.Close
   var423.Size = var1.ImageSize
   var423.Position = var1.ImagePosition
   var419.Image = var2.createElement(var7, var423)
   var395.Close = var2.createElement(var6, var413, var419)
   return var2.createElement(var8, var392, var395)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.MaterialHeader
   local var2 = var0.Material
   if not var2 then
      return var2.createElement(var8)
   end
   local var392 = {}
   var392.LayoutOrder = var0.LayoutOrder
   var392.Size = var1.HeaderSize
   local var395 = {}
   local var399 = {}
   var399.BackgroundColor = var1.HeaderBackground
   var399.DisableZoom = true
   var399.LayoutOrder = 1
   var399.Material = var2.Material
   var399.MaterialVariant = var2.MaterialVariant
   var399.Position = UDim2.fromOffset(0, 0)
   var395.Preview = var2.createElement(var11, var399)
   local var413 = {}
   var413.OnClick = arg1.onClose
   var413.Position = var1.ButtonPosition
   var413.Size = var1.ButtonSize
   var413.Style = var1.ButtonStyle
   var413.ZIndex = 2
   local var419 = {}
   local var423 = {}
   var423.Style = var1.Close
   var423.Size = var1.ImageSize
   var423.Position = var1.ImagePosition
   var419.Image = var2.createElement(var7, var423)
   var395.Close = var2.createElement(var6, var413, var419)
   return var2.createElement(var8, var392, var395)
end

fun8 = var4.withContext
local var430 = {}
var430.Analytics = var4.Analytics
var430.Localization = var4.Localization
var430.Stylizer = var3.Style.Stylizer
var12 = fun8(var430)(var12)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Material = arg2.MockMaterial or arg1.MaterialBrowserReducer.Material
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchClearMaterial()
      arg1.props.dispatchClearMaterial()
   end
   
   return var0
end)(var12)
