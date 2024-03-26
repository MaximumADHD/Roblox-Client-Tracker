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
   local var1007 = {}
   var1007.isHovered = false
   arg1.state = var1007
   function arg1.onMouseEnter()
      local var1010 = {}
      var1010.isHovered = true
      arg1:setState(var1010)
      arg1.props.Modal.onTooltipTriggered(arg2.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
   end
   
   function arg1.onMouseLeave()
      local var1023 = {}
      var1023.isHovered = false
      arg1:setState(var1023)
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
   local var1065 = {}
   var1065.AnchorPoint = var0.AnchorPoint
   var1065.Position = var0.Position
   var1065.LayoutOrder = var0.LayoutOrder
   var1065.BackgroundTransparency = 1
   var1065.Size = UDim2.fromOffset(13, 13)
   var1065.Image = var8.WARNING_ICON_SMALL
   var1065.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var1065.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var1085 = {}
   var2 = var1
   if var2 then
      local var1089 = {}
      var1089.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var1089.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var1089.isHovered = var1
      local var0 = var3.createElement(var10, var1089)
   end
   var1085.TooltipWrapper = var2
   return var3.createElement("ImageButton", var1065, var1085)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var1065 = {}
   var1065.AnchorPoint = var0.AnchorPoint
   var1065.Position = var0.Position
   var1065.LayoutOrder = var0.LayoutOrder
   var1065.BackgroundTransparency = 1
   var1065.Size = UDim2.fromOffset(13, 13)
   var1065.Image = var8.WARNING_ICON_SMALL
   var1065.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var1065.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var1085 = {}
   var2 = var1
   if var2 then
      local var1089 = {}
      var1089.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var1089.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var1089.isHovered = var1
      local var0 = var3.createElement(var10, var1089)
   end
   var1085.TooltipWrapper = var2
   return var3.createElement("ImageButton", var1065, var1085)
end

fun7 = var4.withContext
local var1092 = {}
var1092.Localization = var4.Localization
var1092.Stylizer = var4.Stylizer
var1092.Modal = require(var1.Core.ContextServices.ModalContext)
var11 = fun7(var1092)(var11)
return var11
