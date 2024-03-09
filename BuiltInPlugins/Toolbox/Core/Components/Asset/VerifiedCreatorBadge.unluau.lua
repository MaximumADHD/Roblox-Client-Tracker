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
   local var968 = {}
   var968.isHovered = false
   arg1.state = var968
   function arg1.onMouseEnter()
      local var971 = {}
      var971.isHovered = true
      arg1:setState(var971)
      arg1.props.Modal.onTooltipTriggered(arg2.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
   end
   
   function arg1.onMouseLeave()
      local var984 = {}
      var984.isHovered = false
      arg1:setState(var984)
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
   local var1026 = {}
   var1026.AnchorPoint = var0.AnchorPoint
   var1026.Position = var0.Position
   var1026.LayoutOrder = var0.LayoutOrder
   var1026.BackgroundTransparency = 1
   var1026.Size = UDim2.fromOffset(13, 13)
   var1026.Image = var8.WARNING_ICON_SMALL
   var1026.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var1026.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var1046 = {}
   var2 = var1
   if var2 then
      local var1050 = {}
      var1050.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var1050.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var1050.isHovered = var1
      local var0 = var3.createElement(var10, var1050)
   end
   var1046.TooltipWrapper = var2
   return var3.createElement("ImageButton", var1026, var1046)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var1026 = {}
   var1026.AnchorPoint = var0.AnchorPoint
   var1026.Position = var0.Position
   var1026.LayoutOrder = var0.LayoutOrder
   var1026.BackgroundTransparency = 1
   var1026.Size = UDim2.fromOffset(13, 13)
   var1026.Image = var8.WARNING_ICON_SMALL
   var1026.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var1026.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var1046 = {}
   var2 = var1
   if var2 then
      local var1050 = {}
      var1050.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var1050.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var1050.isHovered = var1
      local var0 = var3.createElement(var10, var1050)
   end
   var1046.TooltipWrapper = var2
   return var3.createElement("ImageButton", var1026, var1046)
end

fun7 = var4.withContext
local var1053 = {}
var1053.Localization = var4.Localization
var1053.Stylizer = var4.Stylizer
var1053.Modal = require(var1.Core.ContextServices.ModalContext)
var11 = fun7(var1053)(var11)
return var11
