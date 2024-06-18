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
local var67 = {}
var67.httpPermissions = {}
var11.defaultProps = var67
function var11.init(arg1)
   arg1.frameRef = var3.createRef()
   local var73 = {}
   var73.frameWidth = 0
   arg1.state = var73
   function arg1.onCheckboxActivated(arg1)
      local var84 = arg1
      local var85 = var84.props
      var85 = arg1.props.API:get()
      var84 = arg1.props.assetId
      return var85.setPluginPermission(var85, var84, arg1)
   end
   
   function arg1.resizeFrame()
      local var0 = arg1.frameRef.current
      if not var0 then
      end
      if arg1.state.frameWidth ~= var0.AbsoluteSize.X then
         local var98 = {}
         var98.frameWidth = var0.AbsoluteSize.X
         arg1:setState(var98)
      end
   end
   
   function arg1.getTruncatedText(arg1, arg2)
      local var0 = ""
      local var106 = arg1
      local var107 = 16
      local var108 = arg2.Font
      local var110 = Vector2.new()
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
   local var147 = {}
   var147.Checked = arg4.allowed
   var147.LayoutOrder = arg3
   function var147.OnClick(arg1)
      local var157 = arg1
      local var158 = var157.props
      var158 = arg1.props.API:get()
      var157 = arg1.props.assetId
      return var158.setPluginPermission(var158, var157, arg1)
   end
   
   var147.Text = arg1.getTruncatedText("", arg2)
   return var3.createElement(var9, var147)
end

local function fun7(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var175 = pairs(arg1.props.httpPermissions)
   local var176 = var1
   local var181 = arg1:renderCheckbox(var0, var178, var179)
   table.insert()
   local var186 = {}
   var186.BackgroundTransparency = 1
   var186.contentPadding = UDim.new(0, 20)
   var186.LayoutOrder = arg1.props.LayoutOrder
   var186.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var203 = {}
   local var207 = {}
   var207.BackgroundTransparency = 1
   var207.contentPadding = UDim.new(0, 8)
   var207.LayoutOrder = 0
   local var217 = UDim.new(1, 0)
   var207.width = var217
   var217 = var1
   var203.Checkboxes = var3.createElement(var7, var207, var217)
   local var222 = {}
   var222.BackgroundTransparency = 1
   var222.Font = var0.Font
   var222.LayoutOrder = 1
   var222.TextSize = 16
   var222.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var222.TextXAlignment = Enum.TextXAlignment.Left
   var222.TextColor3 = var0.InfoTextColor
   var203.InfoText = var3.createElement(var6, var222)
   return var3.createElement(var7, var186, var203)
end

function var11.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = {}
   local var175 = pairs(arg1.props.httpPermissions)
   local var176 = var1
   local var181 = arg1:renderCheckbox(var0, var178, var179)
   table.insert()
   local var186 = {}
   var186.BackgroundTransparency = 1
   var186.contentPadding = UDim.new(0, 20)
   var186.LayoutOrder = arg1.props.LayoutOrder
   var186.width = UDim.new(1, 0)
   var3.Ref = arg1.frameRef
   var3.Change.AbsoluteSize = arg1.resizeFrame
   local var203 = {}
   local var207 = {}
   var207.BackgroundTransparency = 1
   var207.contentPadding = UDim.new(0, 8)
   var207.LayoutOrder = 0
   local var217 = UDim.new(1, 0)
   var207.width = var217
   var217 = var1
   var203.Checkboxes = var3.createElement(var7, var207, var217)
   local var222 = {}
   var222.BackgroundTransparency = 1
   var222.Font = var0.Font
   var222.LayoutOrder = 1
   var222.TextSize = 16
   var222.Text = arg1.props.Localization:getText("Details", "HttpRequestInfo")
   var222.TextXAlignment = Enum.TextXAlignment.Left
   var222.TextColor3 = var0.InfoTextColor
   var203.InfoText = var3.createElement(var6, var222)
   return var3.createElement(var7, var186, var203)
end

fun7 = var4.withContext
local var235 = {}
var235.API = require(var0.Src.ContextServices.PluginAPI2)
var235.Localization = var4.Localization
var235.Stylizer = var4.Stylizer
var11 = fun7(var235)(var11)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.setPluginPermission(arg1)
      local var252 = arg1
      local var253 = var252.props
      var253 = arg1.props.API:get()
      var252 = arg1.props.assetId
      return var253.setPluginPermission(var253, var252, arg1)
   end
   
   return var0
end)(var11)
