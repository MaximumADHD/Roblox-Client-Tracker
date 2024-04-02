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
local var57 = {}
var57.Size = UDim2.new(1, 0, 1, 0)
var9.defaultProps = var57
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
      local var84 = var1.CanvasSize
      var84 = UDim.new(0, var0.AbsoluteContentSize.Y)
      var1.CanvasSize = UDim2.new(var84.X, var84)
   end
   
end

function var9.didMount(arg1)
   arg1.resizeScrollingFrameCanvas()
end

local function fun3(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var111 = {}
   var111.BackgroundColor3 = var1.BackgroundColor
   var111.BorderSizePixel = 0
   var111.Size = arg1.props.Size
   local var114 = {}
   local var118 = {}
   var118.PaddingBottom = UDim.new(0, 40)
   var118.PaddingLeft = UDim.new(0, 40)
   var118.PaddingRight = UDim.new(0, 40)
   var114.Padding = var1.createElement("UIPadding", var118)
   local var135 = {}
   var135.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var135.Padding = UDim.new(0, 20)
   var135.SortOrder = Enum.SortOrder.LayoutOrder
   var135.VerticalAlignment = Enum.VerticalAlignment.Top
   var114.Layout = var1.createElement("UIListLayout", var135)
   local var151 = {}
   var151.BackgroundTransparency = 1
   var151.LayoutOrder = 2
   var151.width = UDim.new(1, 0)
   local var159 = {}
   local var163 = {}
   var163.assetId = arg1.props.assetId
   var163.name = arg1.props.pluginData.name
   var163.LayoutOrder = 1
   var159.DetailsTopBar = var1.createElement(var3, var163)
   local var170 = {}
   var170.LayoutOrder = 2
   var170.BorderSizePixel = 0
   var170.BackgroundColor3 = var1.BorderColor
   var170.Size = UDim2.new(1, 0, 0, 1)
   var159.Border = var1.createElement("Frame", var170)
   var114.PlugnEntryContainer = var1.createElement(var8, var151, var159)
   local var5 = {}
   var5.BackgroundTransparency = 1
   var5.LayoutOrder = 3
   var5.CanvasSize = UDim2.new(1, 0, 0, 0)
   var5.Position = UDim2.new(0, 200, 0, 0)
   var5.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var5.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var5.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var5.ScrollBarImageColor3 = var1.ScrollbarColor
   var5.ScrollBarThickness = var1.ScrollbarSize
   var5.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var5.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var35 = {}
   local var39 = {}
   var39.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var39.SortOrder = Enum.SortOrder.LayoutOrder
   var39.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var35.Layout = var1.createElement("UIListLayout", var39)
   local var54 = {}
   var54.BackgroundTransparency = 1
   var54.contentPadding = UDim.new(0, 20)
   var54.width = UDim.new(1, 0)
   local var64 = {}
   local var67 = next(arg1.props.httpPermissions)
   if var67 then
      local var71 = {}
      var71.LayoutOrder = 3
      function var71.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var86 = var1.CanvasSize
         var86 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var86.X, var86)
      end
      
      var71.theme = var1
      var71.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var71)
   end
   var64.HttpRequestPermissionContainer = var67
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var100 = {}
      var100.LayoutOrder = 4
      function var100.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var122 = var1.CanvasSize
            var122 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var122.X, var122)
         end
         
      end
      
      var100.theme = var1
      var100.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var100)
   end
   var64.ScriptInjectionPermissionContainer = var3
   var35.Content = var1.createElement(var8, var54, var64)
   var114.ScrollingFrame = var1.createElement("ScrollingFrame", var5, var35)
   return var1.createElement("Frame", var111, var114)
end

function var9.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var111 = {}
   var111.BackgroundColor3 = var1.BackgroundColor
   var111.BorderSizePixel = 0
   var111.Size = arg1.props.Size
   local var114 = {}
   local var118 = {}
   var118.PaddingBottom = UDim.new(0, 40)
   var118.PaddingLeft = UDim.new(0, 40)
   var118.PaddingRight = UDim.new(0, 40)
   var114.Padding = var1.createElement("UIPadding", var118)
   local var135 = {}
   var135.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var135.Padding = UDim.new(0, 20)
   var135.SortOrder = Enum.SortOrder.LayoutOrder
   var135.VerticalAlignment = Enum.VerticalAlignment.Top
   var114.Layout = var1.createElement("UIListLayout", var135)
   local var151 = {}
   var151.BackgroundTransparency = 1
   var151.LayoutOrder = 2
   var151.width = UDim.new(1, 0)
   local var159 = {}
   local var163 = {}
   var163.assetId = arg1.props.assetId
   var163.name = arg1.props.pluginData.name
   var163.LayoutOrder = 1
   var159.DetailsTopBar = var1.createElement(var3, var163)
   local var170 = {}
   var170.LayoutOrder = 2
   var170.BorderSizePixel = 0
   var170.BackgroundColor3 = var1.BorderColor
   var170.Size = UDim2.new(1, 0, 0, 1)
   var159.Border = var1.createElement("Frame", var170)
   var114.PlugnEntryContainer = var1.createElement(var8, var151, var159)
   local var5 = {}
   var5.BackgroundTransparency = 1
   var5.LayoutOrder = 3
   var5.CanvasSize = UDim2.new(1, 0, 0, 0)
   var5.Position = UDim2.new(0, 200, 0, 0)
   var5.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var5.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var5.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var5.ScrollBarImageColor3 = var1.ScrollbarColor
   var5.ScrollBarThickness = var1.ScrollbarSize
   var5.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var5.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var35 = {}
   local var39 = {}
   var39.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var39.SortOrder = Enum.SortOrder.LayoutOrder
   var39.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var35.Layout = var1.createElement("UIListLayout", var39)
   local var54 = {}
   var54.BackgroundTransparency = 1
   var54.contentPadding = UDim.new(0, 20)
   var54.width = UDim.new(1, 0)
   local var64 = {}
   local var67 = next(arg1.props.httpPermissions)
   if var67 then
      local var71 = {}
      var71.LayoutOrder = 3
      function var71.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var86 = var1.CanvasSize
         var86 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var86.X, var86)
      end
      
      var71.theme = var1
      var71.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var71)
   end
   var64.HttpRequestPermissionContainer = var67
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var100 = {}
      var100.LayoutOrder = 4
      function var100.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var122 = var1.CanvasSize
            var122 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var122.X, var122)
         end
         
      end
      
      var100.theme = var1
      var100.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var100)
   end
   var64.ScriptInjectionPermissionContainer = var3
   var35.Content = var1.createElement(var8, var54, var64)
   var114.ScrollingFrame = var1.createElement("ScrollingFrame", var5, var35)
   return var1.createElement("Frame", var111, var114)
end

fun3 = var7.withContext
local var133 = {}
var133.Localization = var7.Localization
local var135 = var7.Stylizer
var133.Stylizer = var135
var9 = fun3(var133)(var9)
function var135(arg1, arg2)
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

return require(var0.Packages.RoactRodux).connect(var135, nil)(var9)
