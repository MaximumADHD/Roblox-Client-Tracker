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
local var109 = {}
var109.Size = UDim2.new(1, 0, 1, 0)
var9.defaultProps = var109
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
      local var136 = var1.CanvasSize
      var136 = UDim.new(0, var0.AbsoluteContentSize.Y)
      var1.CanvasSize = UDim2.new(var136.X, var136)
   end
   
end

function var9.didMount(arg1)
   arg1.resizeScrollingFrameCanvas()
end

local function fun6(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var163 = {}
   var163.BackgroundColor3 = var1.BackgroundColor
   var163.BorderSizePixel = 0
   var163.Size = arg1.props.Size
   local var166 = {}
   local var170 = {}
   var170.PaddingBottom = UDim.new(0, 40)
   var170.PaddingLeft = UDim.new(0, 40)
   var170.PaddingRight = UDim.new(0, 40)
   var166.Padding = var1.createElement("UIPadding", var170)
   local var187 = {}
   var187.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var187.Padding = UDim.new(0, 20)
   var187.SortOrder = Enum.SortOrder.LayoutOrder
   var187.VerticalAlignment = Enum.VerticalAlignment.Top
   var166.Layout = var1.createElement("UIListLayout", var187)
   local var199 = {}
   var199.BackgroundTransparency = 1
   var199.LayoutOrder = 2
   var199.width = UDim.new(1, 0)
   local var206 = {}
   local var210 = {}
   var210.assetId = arg1.props.assetId
   var210.name = arg1.props.pluginData.name
   var210.LayoutOrder = 1
   var206.DetailsTopBar = var1.createElement(var3, var210)
   local var217 = {}
   var217.LayoutOrder = 2
   var217.BorderSizePixel = 0
   var217.BackgroundColor3 = var1.BorderColor
   var217.Size = UDim2.new(1, 0, 0, 1)
   var206.Border = var1.createElement("Frame", var217)
   var166.PlugnEntryContainer = var1.createElement(var8, var199, var206)
   local var232 = {}
   var232.BackgroundTransparency = 1
   var232.LayoutOrder = 3
   var232.CanvasSize = UDim2.new(1, 0, 0, 0)
   var232.Position = UDim2.new(0, 200, 0, 0)
   var232.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var232.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var232.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var232.ScrollBarImageColor3 = var1.ScrollbarColor
   var232.ScrollBarThickness = var1.ScrollbarSize
   var232.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var232.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var262 = {}
   local var266 = {}
   var266.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var266.SortOrder = Enum.SortOrder.LayoutOrder
   var266.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var262.Layout = var1.createElement("UIListLayout", var266)
   local var281 = {}
   var281.BackgroundTransparency = 1
   var281.contentPadding = UDim.new(0, 20)
   var281.width = UDim.new(1, 0)
   local var291 = {}
   local var294 = next(arg1.props.httpPermissions)
   if var294 then
      local var298 = {}
      var298.LayoutOrder = 3
      function var298.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var313 = var1.CanvasSize
         var313 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var313.X, var313)
      end
      
      var298.theme = var1
      var298.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var298)
   end
   var291.HttpRequestPermissionContainer = var294
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var327 = {}
      var327.LayoutOrder = 4
      function var327.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var349 = var1.CanvasSize
            var349 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var349.X, var349)
         end
         
      end
      
      var327.theme = var1
      var327.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var327)
   end
   var291.ScriptInjectionPermissionContainer = var3
   var262.Content = var1.createElement(var8, var281, var291)
   var166.ScrollingFrame = var1.createElement("ScrollingFrame", var232, var262)
   return var1.createElement("Frame", var163, var166)
end

function var9.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var163 = {}
   var163.BackgroundColor3 = var1.BackgroundColor
   var163.BorderSizePixel = 0
   var163.Size = arg1.props.Size
   local var166 = {}
   local var170 = {}
   var170.PaddingBottom = UDim.new(0, 40)
   var170.PaddingLeft = UDim.new(0, 40)
   var170.PaddingRight = UDim.new(0, 40)
   var166.Padding = var1.createElement("UIPadding", var170)
   local var187 = {}
   var187.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var187.Padding = UDim.new(0, 20)
   var187.SortOrder = Enum.SortOrder.LayoutOrder
   var187.VerticalAlignment = Enum.VerticalAlignment.Top
   var166.Layout = var1.createElement("UIListLayout", var187)
   local var199 = {}
   var199.BackgroundTransparency = 1
   var199.LayoutOrder = 2
   var199.width = UDim.new(1, 0)
   local var206 = {}
   local var210 = {}
   var210.assetId = arg1.props.assetId
   var210.name = arg1.props.pluginData.name
   var210.LayoutOrder = 1
   var206.DetailsTopBar = var1.createElement(var3, var210)
   local var217 = {}
   var217.LayoutOrder = 2
   var217.BorderSizePixel = 0
   var217.BackgroundColor3 = var1.BorderColor
   var217.Size = UDim2.new(1, 0, 0, 1)
   var206.Border = var1.createElement("Frame", var217)
   var166.PlugnEntryContainer = var1.createElement(var8, var199, var206)
   local var232 = {}
   var232.BackgroundTransparency = 1
   var232.LayoutOrder = 3
   var232.CanvasSize = UDim2.new(1, 0, 0, 0)
   var232.Position = UDim2.new(0, 200, 0, 0)
   var232.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var232.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var232.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var232.ScrollBarImageColor3 = var1.ScrollbarColor
   var232.ScrollBarThickness = var1.ScrollbarSize
   var232.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var232.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var262 = {}
   local var266 = {}
   var266.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var266.SortOrder = Enum.SortOrder.LayoutOrder
   var266.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var262.Layout = var1.createElement("UIListLayout", var266)
   local var281 = {}
   var281.BackgroundTransparency = 1
   var281.contentPadding = UDim.new(0, 20)
   var281.width = UDim.new(1, 0)
   local var291 = {}
   local var294 = next(arg1.props.httpPermissions)
   if var294 then
      local var298 = {}
      var298.LayoutOrder = 3
      function var298.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var313 = var1.CanvasSize
         var313 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var313.X, var313)
      end
      
      var298.theme = var1
      var298.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var298)
   end
   var291.HttpRequestPermissionContainer = var294
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var327 = {}
      var327.LayoutOrder = 4
      function var327.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var349 = var1.CanvasSize
            var349 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var349.X, var349)
         end
         
      end
      
      var327.theme = var1
      var327.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var327)
   end
   var291.ScriptInjectionPermissionContainer = var3
   var262.Content = var1.createElement(var8, var281, var291)
   var166.ScrollingFrame = var1.createElement("ScrollingFrame", var232, var262)
   return var1.createElement("Frame", var163, var166)
end

fun6 = var7.withContext
local var360 = {}
var360.Localization = var7.Localization
local var362 = var7.Stylizer
var360.Stylizer = var362
var9 = fun6(var360)(var9)
function var362(arg1, arg2)
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

return require(var0.Packages.RoactRodux).connect(var362, nil)(var9)
