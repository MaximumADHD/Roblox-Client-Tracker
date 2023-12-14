-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Src.Components.Spinner)
local var4 = var1.PureComponent:extend("LoadingImage")
function var4.init(arg1)
   local var32 = {}
   var32.currentImageLoaded = false
   arg1.state = var32
   arg1.mostRecentRequestedImage = nil
   function arg1.requestLoadImage(arg1)
      if arg1 == "currentImageLoaded" then
      end
      local var39 = {}
      local var0 = false
      var39.currentImageLoaded = var0
      arg1:setState(var39)
      arg1.mostRecentRequestedImage = arg1
      if arg1 == "mostRecentRequestedImage" then
         if arg1 == "" then
            local var43 = arg1
            var43 = arg1
            var43.props.ImageLoader:loadImage(var43)
         end
      end
   end
   
   function arg1.onImageLoaded(arg1)
      if not arg1.isMounted then
      end
      if arg1 == "mostRecentRequestedImage" then
         local var53 = {}
         var53.currentImageLoaded = true
         arg1:setState(var53)
      end
   end
   
end

function var4.didMount(arg1)
   arg1.isMounted = true
   arg1.onImageLoaderConnection = arg1.props.ImageLoader.ImageLoaded:Connect(arg1.onImageLoaded)
   arg1.requestLoadImage(arg1.props.Image)
end

function var4.willUnmount(arg1)
   if arg1.onImageLoaderConnection then
      arg1.onImageLoaderConnection:Disconnect()
      arg1.onImageLoaderConnection = nil
   end
   arg1.isMounted = false
end

function var4.didUpdate(arg1, arg2, arg3)
   if arg2.Image ~= arg1.props.Image then
      arg1.requestLoadImage(arg1.props.Image)
   end
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.currentImageLoaded
   if var1 then
      local var87 = var2.Dictionary
      var87 = var0
      local var89 = {}
      var89.Size = UDim2.new(1, 0, 1, 0)
      var89.LayoutOrder = var2.None
      var89.AnchorPoint = var2.None
      var89.Position = var2.None
      var89.ZIndex = var2.None
      var89.ImageLoader = var2.None
      local var0 = var87.join(var87, var89) or {}
   end
   local var113 = {}
   var113.LayoutOrder = var0.LayoutOrder
   var113.AnchorPoint = var0.AnchorPoint
   var113.Position = var0.Position
   var113.Size = var0.Size
   var113.ZIndex = var0.ZIndex
   var113.BackgroundTransparency = 1
   local var120 = {}
   var120.Image = var1 and var1.createElement("ImageLabel", {})
   local var2 = var1
   if var2 then
      local var132 = {}
      var132.AnchorPoint = Vector2.new(0.5, 0.5)
      var132.Position = UDim2.new(0.5, 0, 0.5, 0)
      local var0 = var1.createElement(var3, var132)
   end
   var120.LoadingSpinner = var2
   return var1.createElement("Frame", var113, var120)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.currentImageLoaded
   if var1 then
      local var87 = var2.Dictionary
      var87 = var0
      local var89 = {}
      var89.Size = UDim2.new(1, 0, 1, 0)
      var89.LayoutOrder = var2.None
      var89.AnchorPoint = var2.None
      var89.Position = var2.None
      var89.ZIndex = var2.None
      var89.ImageLoader = var2.None
      local var0 = var87.join(var87, var89) or {}
   end
   local var113 = {}
   var113.LayoutOrder = var0.LayoutOrder
   var113.AnchorPoint = var0.AnchorPoint
   var113.Position = var0.Position
   var113.Size = var0.Size
   var113.ZIndex = var0.ZIndex
   var113.BackgroundTransparency = 1
   local var120 = {}
   var120.Image = var1 and var1.createElement("ImageLabel", {})
   local var2 = var1
   if var2 then
      local var132 = {}
      var132.AnchorPoint = Vector2.new(0.5, 0.5)
      var132.Position = UDim2.new(0.5, 0, 0.5, 0)
      local var0 = var1.createElement(var3, var132)
   end
   var120.LoadingSpinner = var2
   return var1.createElement("Frame", var113, var120)
end

fun6 = require(var0.Packages.Framework).ContextServices.withContext
local var145 = {}
var145.ImageLoader = require(var0.Src.ContextItems).ImageLoader
var4 = fun6(var145)(var4)
return var4
