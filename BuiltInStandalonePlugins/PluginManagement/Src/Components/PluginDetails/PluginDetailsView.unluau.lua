-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Components.PluginDetails.DetailsTopBar)
local var4 = require(var0.Src.Components.PluginDetails.HttpRequestHolder)
local var5 = require(var0.Src.Components.PluginDetails.ScriptInjectionHolder)
local var6 = require(var0.Src.Components.PluginDetails.ListItem)
local var7 = require(var0.Packages.Framework).ContextServices
local var8 = require(var0.Packages.FitFrame).FitFrameVertical
local var9 = var1.Component:extend("PluginDetailsView")
local var166 = {}
var166.Size = UDim2.new(1, 0, 1, 0)
var9.defaultProps = var166
function var9.init(arg1)
   arg1.scrollLayoutRef = var1.createRef()
   arg1.scrollRef = var1.createRef()
   function arg1.resizeScrollingFrameCanvas(arg1)
      local var0 = arg1.scrollLayoutRef.current
      local var1 = arg1.scrollRef.current
      if var1 then
         if not var0 then
         end
      end
      local var193 = var1.CanvasSize
      var193 = UDim.new(0, var0.AbsoluteContentSize.Y)
      var1.CanvasSize = UDim2.new(var193.X, var193)
   end
   
end

function var9.didMount(arg1)
   arg1.resizeScrollingFrameCanvas()
end

local function fun6(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var220 = {}
   var220.BackgroundColor3 = var1.BackgroundColor
   var220.BorderSizePixel = 0
   var220.Size = arg1.props.Size
   local var223 = {}
   local var227 = {}
   var227.PaddingBottom = UDim.new(0, 40)
   var227.PaddingLeft = UDim.new(0, 40)
   var227.PaddingRight = UDim.new(0, 40)
   var223.Padding = var1.createElement("UIPadding", var227)
   local var244 = {}
   var244.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var244.Padding = UDim.new(0, 20)
   var244.SortOrder = Enum.SortOrder.LayoutOrder
   var244.VerticalAlignment = Enum.VerticalAlignment.Top
   var223.Layout = var1.createElement("UIListLayout", var244)
   local var256 = {}
   var256.BackgroundTransparency = 1
   var256.LayoutOrder = 2
   var256.width = UDim.new(1, 0)
   local var263 = {}
   local var267 = {}
   var267.assetId = arg1.props.assetId
   var267.name = arg1.props.pluginData.name
   var267.LayoutOrder = 1
   var263.DetailsTopBar = var1.createElement(var3, var267)
   local var274 = {}
   var274.LayoutOrder = 2
   var274.BorderSizePixel = 0
   var274.BackgroundColor3 = var1.BorderColor
   var274.Size = UDim2.new(1, 0, 0, 1)
   var263.Border = var1.createElement("Frame", var274)
   var223.PlugnEntryContainer = var1.createElement(var8, var256, var263)
   local var289 = {}
   var289.BackgroundTransparency = 1
   var289.LayoutOrder = 3
   var289.CanvasSize = UDim2.new(1, 0, 0, 0)
   var289.Position = UDim2.new(0, 200, 0, 0)
   var289.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var289.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var289.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var289.ScrollBarImageColor3 = var1.ScrollbarColor
   var289.ScrollBarThickness = var1.ScrollbarSize
   var289.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var289.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var319 = {}
   local var323 = {}
   var323.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var323.SortOrder = Enum.SortOrder.LayoutOrder
   var323.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var319.Layout = var1.createElement("UIListLayout", var323)
   local var338 = {}
   var338.BackgroundTransparency = 1
   var338.contentPadding = UDim.new(0, 20)
   var338.width = UDim.new(1, 0)
   local var348 = {}
   local var351 = next(arg1.props.httpPermissions)
   if var351 then
      local var355 = {}
      var355.LayoutOrder = 3
      function var355.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var370 = var1.CanvasSize
         var370 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var370.X, var370)
      end
      
      var355.theme = var1
      var355.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var355)
   end
   var348.HttpRequestPermissionContainer = var351
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var384 = {}
      var384.LayoutOrder = 4
      function var384.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var406 = var1.CanvasSize
            var406 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var406.X, var406)
         end
         
      end
      
      var384.theme = var1
      var384.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var384)
   end
   var348.ScriptInjectionPermissionContainer = var3
   var319.Content = var1.createElement(var8, var338, var348)
   var223.ScrollingFrame = var1.createElement("ScrollingFrame", var289, var319)
   return var1.createElement("Frame", var220, var223)
end

function var9.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var220 = {}
   var220.BackgroundColor3 = var1.BackgroundColor
   var220.BorderSizePixel = 0
   var220.Size = arg1.props.Size
   local var223 = {}
   local var227 = {}
   var227.PaddingBottom = UDim.new(0, 40)
   var227.PaddingLeft = UDim.new(0, 40)
   var227.PaddingRight = UDim.new(0, 40)
   var223.Padding = var1.createElement("UIPadding", var227)
   local var244 = {}
   var244.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var244.Padding = UDim.new(0, 20)
   var244.SortOrder = Enum.SortOrder.LayoutOrder
   var244.VerticalAlignment = Enum.VerticalAlignment.Top
   var223.Layout = var1.createElement("UIListLayout", var244)
   local var256 = {}
   var256.BackgroundTransparency = 1
   var256.LayoutOrder = 2
   var256.width = UDim.new(1, 0)
   local var263 = {}
   local var267 = {}
   var267.assetId = arg1.props.assetId
   var267.name = arg1.props.pluginData.name
   var267.LayoutOrder = 1
   var263.DetailsTopBar = var1.createElement(var3, var267)
   local var274 = {}
   var274.LayoutOrder = 2
   var274.BorderSizePixel = 0
   var274.BackgroundColor3 = var1.BorderColor
   var274.Size = UDim2.new(1, 0, 0, 1)
   var263.Border = var1.createElement("Frame", var274)
   var223.PlugnEntryContainer = var1.createElement(var8, var256, var263)
   local var289 = {}
   var289.BackgroundTransparency = 1
   var289.LayoutOrder = 3
   var289.CanvasSize = UDim2.new(1, 0, 0, 0)
   var289.Position = UDim2.new(0, 200, 0, 0)
   var289.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var289.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var289.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var289.ScrollBarImageColor3 = var1.ScrollbarColor
   var289.ScrollBarThickness = var1.ScrollbarSize
   var289.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var289.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var319 = {}
   local var323 = {}
   var323.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var323.SortOrder = Enum.SortOrder.LayoutOrder
   var323.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var319.Layout = var1.createElement("UIListLayout", var323)
   local var338 = {}
   var338.BackgroundTransparency = 1
   var338.contentPadding = UDim.new(0, 20)
   var338.width = UDim.new(1, 0)
   local var348 = {}
   local var351 = next(arg1.props.httpPermissions)
   if var351 then
      local var355 = {}
      var355.LayoutOrder = 3
      function var355.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var370 = var1.CanvasSize
         var370 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var370.X, var370)
      end
      
      var355.theme = var1
      var355.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var355)
   end
   var348.HttpRequestPermissionContainer = var351
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var384 = {}
      var384.LayoutOrder = 4
      function var384.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var406 = var1.CanvasSize
            var406 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var406.X, var406)
         end
         
      end
      
      var384.theme = var1
      var384.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var384)
   end
   var348.ScriptInjectionPermissionContainer = var3
   var319.Content = var1.createElement(var8, var338, var348)
   var223.ScrollingFrame = var1.createElement("ScrollingFrame", var289, var319)
   return var1.createElement("Frame", var220, var223)
end

fun6 = var7.withContext
local var417 = {}
var417.Localization = var7.Localization
local var419 = var7.Stylizer
var417.Stylizer = var419
var9 = fun6(var417)(var9)
function var419(arg1, arg2)
   local var0 = arg1.Management.plugins
   local var1 = arg1.PluginPermissions[arg2.assetId]
   local var2 = {}
   if var0 then
      local var0 = var0[arg2.assetId] or nil
   end
   var2.pluginData = nil
   if var1 then
      local var0 = var1.httpPermissions or {}
   end
   var2.httpPermissions = {}
   if var1 then
      local var0 = var1.scriptInjectionPermissions or {}
   end
   var2.scriptInjectionPermissions = {}
   return var2
end

return require(var0.Packages.RoactRodux).connect(var419, nil)(var9)
