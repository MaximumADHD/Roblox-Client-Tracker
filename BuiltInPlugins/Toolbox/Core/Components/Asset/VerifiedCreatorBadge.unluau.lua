-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("GuiService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = var1.Packages
local var3 = require(var2.Roact)
local var4 = require(var2.Framework).ContextServices
local var5 = require(var1.Core.Util.Analytics.Analytics)
local var6 = require(var1.Core.Util.Constants)
local var7 = require(var1.Core.Util.ContextHelper)
local var8 = require(var1.Core.Util.Images)
local var9 = require(var1.Core.Util.ToolboxUtilities)
local var10 = require(var1.Core.Components.TooltipWrapper)
local var11 = var3.PureComponent:extend("VerifiedCreatorBadge")
function var11.init(arg1, arg2)
   local var989 = {}
   var989.isHovered = false
   arg1.state = var989
   function arg1.onMouseEnter()
      local var992 = {}
      var992.isHovered = true
      arg1:setState(var992)
      arg1.props.Modal.onTooltipTriggered(arg2.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
   end
   
   function arg1.onMouseLeave()
      local var1005 = {}
      var1005.isHovered = false
      arg1:setState(var1005)
   end
   
   function arg1.onActivated()
      var5.onIdVerificationIconClicked(arg1.props.assetId)
      local var0 = var9.getVerificationDocumentationUrl()
      var0:OpenBrowserWindow()
   end
   
end

local function fun7(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var1047 = {}
   var1047.AnchorPoint = var0.AnchorPoint
   var1047.Position = var0.Position
   var1047.LayoutOrder = var0.LayoutOrder
   var1047.BackgroundTransparency = 1
   var1047.Size = UDim2.fromOffset(13, 13)
   var1047.Image = var8.WARNING_ICON_SMALL
   var1047.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var1047.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var1067 = {}
   var2 = var1
   if var2 then
      local var1071 = {}
      var1071.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var1071.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var1071.isHovered = var1
      local var0 = var3.createElement(var10, var1071)
   end
   var1067.TooltipWrapper = var2
   return var3.createElement("ImageButton", var1047, var1067)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var1047 = {}
   var1047.AnchorPoint = var0.AnchorPoint
   var1047.Position = var0.Position
   var1047.LayoutOrder = var0.LayoutOrder
   var1047.BackgroundTransparency = 1
   var1047.Size = UDim2.fromOffset(13, 13)
   var1047.Image = var8.WARNING_ICON_SMALL
   var1047.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var1047.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var1067 = {}
   var2 = var1
   if var2 then
      local var1071 = {}
      var1071.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var1071.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var1071.isHovered = var1
      local var0 = var3.createElement(var10, var1071)
   end
   var1067.TooltipWrapper = var2
   return var3.createElement("ImageButton", var1047, var1067)
end

fun7 = var4.withContext
local var1074 = {}
var1074.Localization = var4.Localization
var1074.Stylizer = var4.Stylizer
var1074.Modal = require(var1.Core.ContextServices.ModalContext)
var11 = fun7(var1074)(var11)
return var11
