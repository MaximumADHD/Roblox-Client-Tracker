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
   local var503 = {}
   var503.isHovered = false
   arg1.state = var503
   function arg1.onMouseEnter()
      local var506 = {}
      var506.isHovered = true
      arg1:setState(var506)
      arg1.props.Modal.onTooltipTriggered(arg2.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
   end
   
   function arg1.onMouseLeave()
      local var519 = {}
      var519.isHovered = false
      arg1:setState(var519)
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
   local var561 = {}
   var561.AnchorPoint = var0.AnchorPoint
   var561.Position = var0.Position
   var561.LayoutOrder = var0.LayoutOrder
   var561.BackgroundTransparency = 1
   var561.Size = UDim2.fromOffset(13, 13)
   var561.Image = var8.WARNING_ICON_SMALL
   var561.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var561.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var581 = {}
   var2 = var1
   if var2 then
      local var585 = {}
      var585.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var585.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var585.isHovered = var1
      local var0 = var3.createElement(var10, var585)
   end
   var581.TooltipWrapper = var2
   return var3.createElement("ImageButton", var561, var581)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var561 = {}
   var561.AnchorPoint = var0.AnchorPoint
   var561.Position = var0.Position
   var561.LayoutOrder = var0.LayoutOrder
   var561.BackgroundTransparency = 1
   var561.Size = UDim2.fromOffset(13, 13)
   var561.Image = var8.WARNING_ICON_SMALL
   var561.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var561.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var581 = {}
   var2 = var1
   if var2 then
      local var585 = {}
      var585.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var585.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var585.isHovered = var1
      local var0 = var3.createElement(var10, var585)
   end
   var581.TooltipWrapper = var2
   return var3.createElement("ImageButton", var561, var581)
end

fun7 = var4.withContext
local var588 = {}
var588.Localization = var4.Localization
var588.Stylizer = var4.Stylizer
var588.Modal = require(var1.Core.ContextServices.ModalContext)
var11 = fun7(var588)(var11)
return var11
