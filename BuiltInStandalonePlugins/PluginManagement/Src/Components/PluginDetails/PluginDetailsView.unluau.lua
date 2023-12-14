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
local var97 = {}
var97.Size = UDim2.new(1, 0, 1, 0)
var9.defaultProps = var97
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
      local var124 = var1.CanvasSize
      var124 = UDim.new(0, var0.AbsoluteContentSize.Y)
      var1.CanvasSize = UDim2.new(var124.X, var124)
   end
   
end

function var9.didMount(arg1)
   arg1.resizeScrollingFrameCanvas()
end

local function fun6(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var151 = {}
   var151.BackgroundColor3 = var1.BackgroundColor
   var151.BorderSizePixel = 0
   var151.Size = arg1.props.Size
   local var154 = {}
   local var158 = {}
   var158.PaddingBottom = UDim.new(0, 40)
   var158.PaddingLeft = UDim.new(0, 40)
   var158.PaddingRight = UDim.new(0, 40)
   var154.Padding = var1.createElement("UIPadding", var158)
   local var175 = {}
   var175.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var175.Padding = UDim.new(0, 20)
   var175.SortOrder = Enum.SortOrder.LayoutOrder
   var175.VerticalAlignment = Enum.VerticalAlignment.Top
   var154.Layout = var1.createElement("UIListLayout", var175)
   local var187 = {}
   var187.BackgroundTransparency = 1
   var187.LayoutOrder = 2
   var187.width = UDim.new(1, 0)
   local var194 = {}
   local var198 = {}
   var198.assetId = arg1.props.assetId
   var198.name = arg1.props.pluginData.name
   var198.LayoutOrder = 1
   var194.DetailsTopBar = var1.createElement(var3, var198)
   local var205 = {}
   var205.LayoutOrder = 2
   var205.BorderSizePixel = 0
   var205.BackgroundColor3 = var1.BorderColor
   var205.Size = UDim2.new(1, 0, 0, 1)
   var194.Border = var1.createElement("Frame", var205)
   var154.PlugnEntryContainer = var1.createElement(var8, var187, var194)
   local var220 = {}
   var220.BackgroundTransparency = 1
   var220.LayoutOrder = 3
   var220.CanvasSize = UDim2.new(1, 0, 0, 0)
   var220.Position = UDim2.new(0, 200, 0, 0)
   var220.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var220.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var220.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var220.ScrollBarImageColor3 = var1.ScrollbarColor
   var220.ScrollBarThickness = var1.ScrollbarSize
   var220.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var220.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var250 = {}
   local var254 = {}
   var254.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var254.SortOrder = Enum.SortOrder.LayoutOrder
   var254.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var250.Layout = var1.createElement("UIListLayout", var254)
   local var269 = {}
   var269.BackgroundTransparency = 1
   var269.contentPadding = UDim.new(0, 20)
   var269.width = UDim.new(1, 0)
   local var279 = {}
   local var282 = next(arg1.props.httpPermissions)
   if var282 then
      local var286 = {}
      var286.LayoutOrder = 3
      function var286.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var301 = var1.CanvasSize
         var301 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var301.X, var301)
      end
      
      var286.theme = var1
      var286.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var286)
   end
   var279.HttpRequestPermissionContainer = var282
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var315 = {}
      var315.LayoutOrder = 4
      function var315.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var337 = var1.CanvasSize
            var337 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var337.X, var337)
         end
         
      end
      
      var315.theme = var1
      var315.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var315)
   end
   var279.ScriptInjectionPermissionContainer = var3
   var250.Content = var1.createElement(var8, var269, var279)
   var154.ScrollingFrame = var1.createElement("ScrollingFrame", var220, var250)
   return var1.createElement("Frame", var151, var154)
end

function var9.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var151 = {}
   var151.BackgroundColor3 = var1.BackgroundColor
   var151.BorderSizePixel = 0
   var151.Size = arg1.props.Size
   local var154 = {}
   local var158 = {}
   var158.PaddingBottom = UDim.new(0, 40)
   var158.PaddingLeft = UDim.new(0, 40)
   var158.PaddingRight = UDim.new(0, 40)
   var154.Padding = var1.createElement("UIPadding", var158)
   local var175 = {}
   var175.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var175.Padding = UDim.new(0, 20)
   var175.SortOrder = Enum.SortOrder.LayoutOrder
   var175.VerticalAlignment = Enum.VerticalAlignment.Top
   var154.Layout = var1.createElement("UIListLayout", var175)
   local var187 = {}
   var187.BackgroundTransparency = 1
   var187.LayoutOrder = 2
   var187.width = UDim.new(1, 0)
   local var194 = {}
   local var198 = {}
   var198.assetId = arg1.props.assetId
   var198.name = arg1.props.pluginData.name
   var198.LayoutOrder = 1
   var194.DetailsTopBar = var1.createElement(var3, var198)
   local var205 = {}
   var205.LayoutOrder = 2
   var205.BorderSizePixel = 0
   var205.BackgroundColor3 = var1.BorderColor
   var205.Size = UDim2.new(1, 0, 0, 1)
   var194.Border = var1.createElement("Frame", var205)
   var154.PlugnEntryContainer = var1.createElement(var8, var187, var194)
   local var220 = {}
   var220.BackgroundTransparency = 1
   var220.LayoutOrder = 3
   var220.CanvasSize = UDim2.new(1, 0, 0, 0)
   var220.Position = UDim2.new(0, 200, 0, 0)
   var220.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var220.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var220.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var220.ScrollBarImageColor3 = var1.ScrollbarColor
   var220.ScrollBarThickness = var1.ScrollbarSize
   var220.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var220.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var250 = {}
   local var254 = {}
   var254.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var254.SortOrder = Enum.SortOrder.LayoutOrder
   var254.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var250.Layout = var1.createElement("UIListLayout", var254)
   local var269 = {}
   var269.BackgroundTransparency = 1
   var269.contentPadding = UDim.new(0, 20)
   var269.width = UDim.new(1, 0)
   local var279 = {}
   local var282 = next(arg1.props.httpPermissions)
   if var282 then
      local var286 = {}
      var286.LayoutOrder = 3
      function var286.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var301 = var1.CanvasSize
         var301 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var301.X, var301)
      end
      
      var286.theme = var1
      var286.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var286)
   end
   var279.HttpRequestPermissionContainer = var282
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var315 = {}
      var315.LayoutOrder = 4
      function var315.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var337 = var1.CanvasSize
            var337 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var337.X, var337)
         end
         
      end
      
      var315.theme = var1
      var315.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var315)
   end
   var279.ScriptInjectionPermissionContainer = var3
   var250.Content = var1.createElement(var8, var269, var279)
   var154.ScrollingFrame = var1.createElement("ScrollingFrame", var220, var250)
   return var1.createElement("Frame", var151, var154)
end

fun6 = var7.withContext
local var348 = {}
var348.Localization = var7.Localization
local var350 = var7.Stylizer
var348.Stylizer = var350
var9 = fun6(var348)(var9)
function var350(arg1, arg2)
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

return require(var0.Packages.RoactRodux).connect(var350, nil)(var9)
