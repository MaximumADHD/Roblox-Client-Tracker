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
   local var497 = {}
   var497.isHovered = false
   arg1.state = var497
   function arg1.onMouseEnter()
      local var500 = {}
      var500.isHovered = true
      arg1:setState(var500)
      arg1.props.Modal.onTooltipTriggered(arg2.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
   end
   
   function arg1.onMouseLeave()
      local var513 = {}
      var513.isHovered = false
      arg1:setState(var513)
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
   local var555 = {}
   var555.AnchorPoint = var0.AnchorPoint
   var555.Position = var0.Position
   var555.LayoutOrder = var0.LayoutOrder
   var555.BackgroundTransparency = 1
   var555.Size = UDim2.fromOffset(13, 13)
   var555.Image = var8.WARNING_ICON_SMALL
   var555.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var555.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var575 = {}
   var2 = var1
   if var2 then
      local var579 = {}
      var579.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var579.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var579.isHovered = var1
      local var0 = var3.createElement(var10, var579)
   end
   var575.TooltipWrapper = var2
   return var3.createElement("ImageButton", var555, var575)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var555 = {}
   var555.AnchorPoint = var0.AnchorPoint
   var555.Position = var0.Position
   var555.LayoutOrder = var0.LayoutOrder
   var555.BackgroundTransparency = 1
   var555.Size = UDim2.fromOffset(13, 13)
   var555.Image = var8.WARNING_ICON_SMALL
   var555.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var555.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var575 = {}
   var2 = var1
   if var2 then
      local var579 = {}
      var579.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var579.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var579.isHovered = var1
      local var0 = var3.createElement(var10, var579)
   end
   var575.TooltipWrapper = var2
   return var3.createElement("ImageButton", var555, var575)
end

fun7 = var4.withContext
local var582 = {}
var582.Localization = var4.Localization
var582.Stylizer = var4.Stylizer
var582.Modal = require(var1.Core.ContextServices.ModalContext)
var11 = fun7(var582)(var11)
return var11
