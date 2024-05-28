-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("GuiService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = var1.Packages
local var3 = require(var2.Roact)
local var4 = require(var2.Framework).ContextServices
local var5 = require(var1.Core.Util.Analytics.Analytics)
local var6 = require(var1.Core.Util.Constants)
local var7 = require(var1.Core.Util.Images)
local var8 = require(var1.Core.Util.ToolboxUtilities)
local var9 = require(var1.Core.Components.TooltipWrapper)
local var10 = var3.PureComponent:extend("VerifiedCreatorBadge")
function var10.init(arg1, arg2)
   local var755 = {}
   var755.isHovered = false
   arg1.state = var755
   function arg1.onMouseEnter()
      local var758 = {}
      var758.isHovered = true
      arg1:setState(var758)
      arg1.props.Modal.onTooltipTriggered(arg2.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
   end
   
   function arg1.onMouseLeave()
      local var771 = {}
      var771.isHovered = false
      arg1:setState(var771)
   end
   
   function arg1.onActivated()
      var5.onIdVerificationIconClicked(arg1.props.assetId)
      local var0 = var8.getVerificationDocumentationUrl()
      var0:OpenBrowserWindow()
   end
   
end

local function fun7(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var813 = {}
   var813.AnchorPoint = var0.AnchorPoint
   var813.Position = var0.Position
   var813.LayoutOrder = var0.LayoutOrder
   var813.BackgroundTransparency = 1
   var813.Size = UDim2.fromOffset(13, 13)
   var813.Image = var7.WARNING_ICON_SMALL
   var813.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var813.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var833 = {}
   var2 = var1
   if var2 then
      local var837 = {}
      var837.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var837.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var837.isHovered = var1
      local var0 = var3.createElement(var9, var837)
   end
   var833.TooltipWrapper = var2
   return var3.createElement("ImageButton", var813, var833)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state.isHovered
   local var813 = {}
   var813.AnchorPoint = var0.AnchorPoint
   var813.Position = var0.Position
   var813.LayoutOrder = var0.LayoutOrder
   var813.BackgroundTransparency = 1
   var813.Size = UDim2.fromOffset(13, 13)
   var813.Image = var7.WARNING_ICON_SMALL
   var813.ImageColor3 = var0.Stylizer.asset.icon.warningColor
   var813.ZIndex = 2
   var3.Event.Activated = arg1.onActivated
   var3.Event.MouseEnter = arg1.onMouseEnter
   local var2 = var3.Event
   var2.MouseLeave = arg1.onMouseLeave
   local var833 = {}
   var2 = var1
   if var2 then
      local var837 = {}
      var837.Text = var0.Localization:getText("General", "UnverifiedCreatorBadgeTooltipText")
      var837.canShowCurrentTooltip = var0.Modal.modalStatus:canShowCurrentTooltip(var0.assetId, var6.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
      var837.isHovered = var1
      local var0 = var3.createElement(var9, var837)
   end
   var833.TooltipWrapper = var2
   return var3.createElement("ImageButton", var813, var833)
end

fun7 = var4.withContext
local var840 = {}
var840.Localization = var4.Localization
var840.Stylizer = var4.Stylizer
var840.Modal = require(var1.Core.ContextServices.ModalContext)
var10 = fun7(var840)(var10)
return var10
