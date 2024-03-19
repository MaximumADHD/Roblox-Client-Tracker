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

local function fun6(arg1)
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
   local var147 = {}
   var147.BackgroundTransparency = 1
   var147.LayoutOrder = 2
   var147.width = UDim.new(1, 0)
   local var154 = {}
   local var158 = {}
   var158.assetId = arg1.props.assetId
   var158.name = arg1.props.pluginData.name
   var158.LayoutOrder = 1
   var154.DetailsTopBar = var1.createElement(var3, var158)
   local var165 = {}
   var165.LayoutOrder = 2
   var165.BorderSizePixel = 0
   var165.BackgroundColor3 = var1.BorderColor
   var165.Size = UDim2.new(1, 0, 0, 1)
   var154.Border = var1.createElement("Frame", var165)
   var114.PlugnEntryContainer = var1.createElement(var8, var147, var154)
   local var180 = {}
   var180.BackgroundTransparency = 1
   var180.LayoutOrder = 3
   var180.CanvasSize = UDim2.new(1, 0, 0, 0)
   var180.Position = UDim2.new(0, 200, 0, 0)
   var180.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var180.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var180.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var180.ScrollBarImageColor3 = var1.ScrollbarColor
   var180.ScrollBarThickness = var1.ScrollbarSize
   var180.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var180.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var210 = {}
   local var214 = {}
   var214.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var214.SortOrder = Enum.SortOrder.LayoutOrder
   var214.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var210.Layout = var1.createElement("UIListLayout", var214)
   local var229 = {}
   var229.BackgroundTransparency = 1
   var229.contentPadding = UDim.new(0, 20)
   var229.width = UDim.new(1, 0)
   local var239 = {}
   local var242 = next(arg1.props.httpPermissions)
   if var242 then
      local var246 = {}
      var246.LayoutOrder = 3
      function var246.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var261 = var1.CanvasSize
         var261 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var261.X, var261)
      end
      
      var246.theme = var1
      var246.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var246)
   end
   var239.HttpRequestPermissionContainer = var242
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var275 = {}
      var275.LayoutOrder = 4
      function var275.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var297 = var1.CanvasSize
            var297 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var297.X, var297)
         end
         
      end
      
      var275.theme = var1
      var275.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var275)
   end
   var239.ScriptInjectionPermissionContainer = var3
   var210.Content = var1.createElement(var8, var229, var239)
   var114.ScrollingFrame = var1.createElement("ScrollingFrame", var180, var210)
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
   local var147 = {}
   var147.BackgroundTransparency = 1
   var147.LayoutOrder = 2
   var147.width = UDim.new(1, 0)
   local var154 = {}
   local var158 = {}
   var158.assetId = arg1.props.assetId
   var158.name = arg1.props.pluginData.name
   var158.LayoutOrder = 1
   var154.DetailsTopBar = var1.createElement(var3, var158)
   local var165 = {}
   var165.LayoutOrder = 2
   var165.BorderSizePixel = 0
   var165.BackgroundColor3 = var1.BorderColor
   var165.Size = UDim2.new(1, 0, 0, 1)
   var154.Border = var1.createElement("Frame", var165)
   var114.PlugnEntryContainer = var1.createElement(var8, var147, var154)
   local var180 = {}
   var180.BackgroundTransparency = 1
   var180.LayoutOrder = 3
   var180.CanvasSize = UDim2.new(1, 0, 0, 0)
   var180.Position = UDim2.new(0, 200, 0, 0)
   var180.TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
   var180.MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
   var180.BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"
   var180.ScrollBarImageColor3 = var1.ScrollbarColor
   var180.ScrollBarThickness = var1.ScrollbarSize
   var180.ScrollBarImageTransparency = var1.ScrollbarTransparency
   var180.Size = UDim2.new(1, 0, 1, 40 + var2.DETAILS_THUMBNAIL_SIZE)
   var1.Ref = arg1.scrollRef
   local var210 = {}
   local var214 = {}
   var214.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var214.SortOrder = Enum.SortOrder.LayoutOrder
   var214.VerticalAlignment = Enum.VerticalAlignment.Top
   var1.Change.AbsoluteContentSize = arg1.resizeScrollingFrameCanvas
   var1.Ref = arg1.scrollLayoutRef
   var210.Layout = var1.createElement("UIListLayout", var214)
   local var229 = {}
   var229.BackgroundTransparency = 1
   var229.contentPadding = UDim.new(0, 20)
   var229.width = UDim.new(1, 0)
   local var239 = {}
   local var242 = next(arg1.props.httpPermissions)
   if var242 then
      local var246 = {}
      var246.LayoutOrder = 3
      function var246.renderContent(arg1)
         local var0 = arg1.scrollLayoutRef.current
         local var1 = arg1.scrollRef.current
         if var1 then
            if not var0 then
            end
         end
         local var261 = var1.CanvasSize
         var261 = UDim.new(0, var0.AbsoluteContentSize.Y)
         var1.CanvasSize = UDim2.new(var261.X, var261)
      end
      
      var246.theme = var1
      var246.title = var0:getText("Details", "HttpRequests")
      local var0 = var1.createElement(var6, var246)
   end
   var239.HttpRequestPermissionContainer = var242
   local var3 = next(arg1.props.scriptInjectionPermissions)
   if var3 then
      local var275 = {}
      var275.LayoutOrder = 4
      function var275.renderContent(arg1)
         arg1.scrollLayoutRef = var1.createRef()
         arg1.scrollRef = var1.createRef()
         function arg1.resizeScrollingFrameCanvas(arg1)
            local var0 = arg1.scrollLayoutRef.current
            local var1 = arg1.scrollRef.current
            if var1 then
               if not var0 then
               end
            end
            local var297 = var1.CanvasSize
            var297 = UDim.new(0, var0.AbsoluteContentSize.Y)
            var1.CanvasSize = UDim2.new(var297.X, var297)
         end
         
      end
      
      var275.theme = var1
      var275.title = var0:getText("Details", "ScriptInjection")
      local var0 = var1.createElement(var6, var275)
   end
   var239.ScriptInjectionPermissionContainer = var3
   var210.Content = var1.createElement(var8, var229, var239)
   var114.ScrollingFrame = var1.createElement("ScrollingFrame", var180, var210)
   return var1.createElement("Frame", var111, var114)
end

fun6 = var7.withContext
local var308 = {}
var308.Localization = var7.Localization
local var310 = var7.Stylizer
var308.Stylizer = var310
var9 = fun6(var308)(var9)
function var310(arg1, arg2)
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

return require(var0.Packages.RoactRodux).connect(var310, nil)(var9)
