-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("TextService")
local var2 = game:GetService("PermissionsService")
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = require(var0.Src.Thunks.SetPluginPermission)
local var6 = require(var0.Src.Components.FluidFitTextLabel)
local var7 = require(var0.Packages.FitFrame).FitFrameVertical
local var8 = require(var0.Src.Util.Constants)
local var9 = require(var0.Packages.Framework).UI.Checkbox
local var10 = require(var0.Src.Util.truncateMiddleText)
local var11 = var3.Component:extend("HttpRequestHolder")
local var339 = {}
var339.httpPermissions = {}
var11.defaultProps = var339
function var11.init(arg1)
   arg1.frameRef = var3.createRef()
   local var345 = {}
   var345.frameWidth = 0
   arg1.state = var345
   function arg1.onCheckboxActivated(arg1)
      local var356 = arg1
      local var357 = var356.props
      var357 = arg1.props.API:get()
      var356 = arg1.props.assetId
      return var357.setPluginPermission(var357, var356, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var383 = {}
         var383.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var383)
      end
   end
   
   function arg1.getTruncatedText(arg1, arg2)
      local var0 = ""
      local var415 = arg1
      local var417 = 16
      local var418 = arg2.Font
      local var421 = Vector2.new()
      local var5 = var8.SCROLLBAR_WIDTH_ADJUSTMENT
      local var6 = arg1.state.frameWidth - 16 - var5
      if 0 < var6 then
         if var6 < var1:GetTextSize().X then
            var5 = arg1
            var0 = var10(var5, 16, arg2.Font, var6)
            return var0
         end
      end
      var0 = arg1
      return var0
   end
   
end

function var11.didMount(arg1)
   arg1.resizeFrame()
end

function var11.renderCheckbox(arg1, arg2, arg3, arg4)
   if arg4.data then
      local var0 = arg4.data.domain or ""
   end
   local var490 = {}
   var490.Checked = arg4.allowed
   var490.LayoutOrder = arg3
   function var490.OnClick(arg1)
      local var500 = arg1
      local var501 = var500.props
      var501 = arg1.props.API:get()
      var500 = arg1.props.assetId
      return var501.setPluginPermission(var501, var500, arg1)
   end
   
   var490.Text = arg1.getTruncatedText("", arg2)
   return var3.createElement(var9, var490)
end

local function fun13(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var536 = pairs(arg1.props.httpPermissions)
   local var539 = var1
   local var549 = arg1:renderCheckbox(var0, var541, var543)
   table.insert()
   local var556 = {}
   var556.BackgroundTransparency = 1
   var556.contentPadding = UDim.new(0, 20)
   var556.LayoutOrder = arg1.props.LayoutOrder
   var556.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var577 = {}
   local var581 = {}
   var581.BackgroundTransparency = 1
   var581.contentPadding = UDim.new(0, 8)
   var581.LayoutOrder = 0
   local var591 = UDim.new(1, 0)
   var581.width = var591
   var591 = var1
   var577.Checkboxes = var3.createElement(var7, var581, var591)
   local var596 = {}
   var596.BackgroundTransparency = 1
   var596.Font = var0.Font
   var596.LayoutOrder = 1
   var596.TextSize = 16
   var596.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var596.TextXAlignment = Enum.TextXAlignment.Left
   var596.TextColor3 = var0.InfoTextColor
   var577.InfoText = var3.createElement(var6, var596)
   return var3.createElement(var7, var556, var577)
end

function var11.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var536 = pairs(arg1.props.httpPermissions)
   local var539 = var1
   local var549 = arg1:renderCheckbox(var0, var541, var543)
   table.insert()
   local var556 = {}
   var556.BackgroundTransparency = 1
   var556.contentPadding = UDim.new(0, 20)
   var556.LayoutOrder = arg1.props.LayoutOrder
   var556.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var577 = {}
   local var581 = {}
   var581.BackgroundTransparency = 1
   var581.contentPadding = UDim.new(0, 8)
   var581.LayoutOrder = 0
   local var591 = UDim.new(1, 0)
   var581.width = var591
   var591 = var1
   var577.Checkboxes = var3.createElement(var7, var581, var591)
   local var596 = {}
   var596.BackgroundTransparency = 1
   var596.Font = var0.Font
   var596.LayoutOrder = 1
   var596.TextSize = 16
   var596.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var596.TextXAlignment = Enum.TextXAlignment.Left
   var596.TextColor3 = var0.InfoTextColor
   var577.InfoText = var3.createElement(var6, var596)
   return var3.createElement(var7, var556, var577)
end

fun13 = var4.withContext
local var611 = {}
var611.API = require(var0.Src.ContextServices.PluginAPI2)
var611.Localization = var4.Localization
var611.Stylizer = var4.Stylizer
var11 = fun13(var611)(var11)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var647 = arg1
      local var648 = var647.props
      var648 = arg1.props.API:get()
      var647 = arg1.props.assetId
      return var648.setPluginPermission(var648, var647, arg1)
   end
   
   return var0
end)(var11)
