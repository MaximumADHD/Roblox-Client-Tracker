-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = var0.Core.Util
local var5 = require(var4.Constants)
local var6 = require(var4.ContextHelper).withLocalization
local var7 = var3.ContextServices
local var8 = var3.UI.Checkbox
local var9 = var3.Util.GetTextSize
local var10 = require(var0.Core.Components.PluginWidget.Dialog)
local var11 = require(var0.Core.Components.MessageBox.MessageBoxButton)
local var12 = require(var0.Core.ContextServices.ModalContext)
local var13 = var2.PureComponent:extend("ScriptConfirmationDialog")
function var13.init(arg1, arg2)
   arg1.isDead = false
   function arg1.onEnabledChanged(arg1)
      if arg1.isDead then
      end
      if not arg1.Enabled then
         if arg1.props.onClose then
            arg1.props.onClose()
         end
      end
   end
   
   function arg1.onAncestryChanged(arg1, arg2, arg3)
      if arg1.isDead then
      end
      if not arg3 then
         if arg1.props.onClose then
            arg1.props.onClose()
         end
      end
   end
   
   function arg1.onToggleShowAgain()
      local var0 = arg1.state.checked
      local var76 = {}
      var76.checked = var0
      arg1:setState(var76)
      arg1.props.onChangeShowDialog(var0)
   end
   
   local var82 = {}
   var82.checked = false
   arg1:setState(var82)
end

function var13.willUnmount(arg1)
   arg1.isDead = true
end

function var13.render(arg1)
   return var6(function(arg1)
      if arg1.isDead then
      end
      if not arg1.Enabled then
         if arg1.props.onClose then
            arg1.props.onClose()
         end
      end
   end)
end

local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Info
   local var108 = {}
   var108.assetName = var2.assetName
   var108.numScripts = var2.numScripts
   local var4 = var0.Localization:getText("ScriptWarning", "DetailText", var108)
   local var5 = var5.FONT_SIZE_MEDIUM
   local var6 = var5.FONT_BOLD
   local var7 = var0.Localization:getText("ScriptWarning", "InstructionText") ... " " ... var0.Localization:getText("ScriptWarning", "InstructionText2")
   local var8 = var5.FONT_SIZE_MEDIUM
   local var9 = var5.FONT
   local var10 = var0.Localization:getText("ScriptWarning", "DontShowAgain")
   local var11 = var5.FONT_SIZE_MEDIUM
   local var12 = var5.FONT
   local var198 = math.min(var9(var10, var11, var12, Vector2.new(0, 0)).X, 424)
   var198 = var5.MESSAGE_BOX_BUTTON_WIDTH
   local var14 = math.max(math.max(var198, 52 + math.max(math.min(var9(var4, var5, var6, Vector2.new(0, 0)).X, 424), math.min(var9(var7, var8, var9, Vector2.new(0, 0)).X, 424), var198 + 16)), 120)
   local var15 = var14 - 52
   local var16 = var9(var4, var5, var6, Vector2.new(var15, 1000)).Y
   local var17 = var9(var7, var8, var9, Vector2.new(var15, 1000)).Y
   local var18 = var9(var10, var11, var12, Vector2.new(var15 - 16, 1000)).Y
   local var19 = math.max(32, var16 + var18 + var17 + 8)
   local var258 = {}
   var258.Text = var0.Localization:getText("Purchase", "Cancel")
   var258.onButtonClicked = arg1.props.onCancel
   local var265 = {}
   var265.Name = var0.Name
   var265.Title = var0.Localization:getText("General", "ToolboxToolbarName")
   var265.Size = Vector2.new(12 + var14 + 12, 8 + var19 + 12 + 23 + 12)
   var265.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var265.Modal = true
   var265.plugin = arg1.props.Plugin:get()
   var2.Change.Enabled = arg1.onEnabledChanged
   var2.Event.AncestryChanged = arg1.onAncestryChanged
   local var285 = {}
   local var289 = {}
   var289.Position = UDim2.new(0, 0, 0, 0)
   var289.Size = UDim2.new(1, 0, 1, 0)
   var289.BackgroundColor3 = var1.messageBox.backgroundColor
   local var304 = {}
   local var308 = {}
   var308.PaddingBottom = UDim.new(0, 12)
   var308.PaddingLeft = UDim.new(0, 12)
   var308.PaddingRight = UDim.new(0, 12)
   var308.PaddingTop = UDim.new(0, 8)
   var304.UIPadding = var2.createElement("UIPadding", var308)
   local var329 = {}
   var329.SortOrder = Enum.SortOrder.LayoutOrder
   var329.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var329.VerticalAlignment = Enum.VerticalAlignment.Top
   var329.Padding = UDim.new(0, 12)
   var304.UIListLayout = var2.createElement("UIListLayout", var329)
   local var341 = {}
   var341.Size = UDim2.new(1, 0, 0, var19)
   var341.BackgroundTransparency = 1
   var341.LayoutOrder = 1
   local var350 = {}
   local var354 = {}
   var354.SortOrder = Enum.SortOrder.LayoutOrder
   var354.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var354.VerticalAlignment = Enum.VerticalAlignment.Top
   var354.Padding = UDim.new(0, 20)
   var354.FillDirection = Enum.FillDirection.Horizontal
   var350.UIListLayout = var2.createElement("UIListLayout", var354)
   local var367 = {}
   var367.Size = UDim2.new(0, 32, 0, 32)
   var367.BackgroundTransparency = 1
   var367.LayoutOrder = 0
   var367.Image = var0.Icon
   var350.Icon = var2.createElement("ImageLabel", var367)
   local var381 = {}
   var381.LayoutOrder = 1
   var381.Size = UDim2.new(1, 65484, 1, 0)
   var381.BackgroundTransparency = 1
   local var390 = {}
   local var394 = {}
   var394.SortOrder = Enum.SortOrder.LayoutOrder
   var394.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var394.VerticalAlignment = Enum.VerticalAlignment.Top
   var394.Padding = UDim.new(0, 8)
   var394.FillDirection = Enum.FillDirection.Vertical
   var390.UIListLayout = var2.createElement("UIListLayout", var394)
   local var407 = {}
   var407.LayoutOrder = 0
   var407.Size = UDim2.new(1, 0, 0, var16)
   var407.BackgroundTransparency = 1
   var407.Text = var4
   var407.Font = var6
   var407.TextSize = var5
   var407.TextColor3 = var1.messageBox.textColor
   var407.TextXAlignment = Enum.TextXAlignment.Left
   var407.TextYAlignment = Enum.TextYAlignment.Top
   var407.TextWrapped = true
   var390.DetailLabel = var2.createElement("TextLabel", var407)
   local var425 = {}
   var425.LayoutOrder = 1
   var425.Size = UDim2.new(1, 0, 0, var17)
   var425.BackgroundTransparency = 1
   var425.Text = var7
   var425.Font = var9
   var425.TextSize = var8
   var425.TextColor3 = var1.messageBox.textColor
   var425.TextXAlignment = Enum.TextXAlignment.Left
   var425.TextYAlignment = Enum.TextYAlignment.Top
   var425.TextWrapped = true
   var390.InstructionLabel = var2.createElement("TextLabel", var425)
   local var443 = {}
   var443.LayoutOrder = 2
   var443.Text = var10
   var443.Font = var12
   var443.TextSize = var11
   var443.OnClick = arg1.onToggleShowAgain
   var443.Size = UDim2.new(1, 0, 0, var18)
   var443.Checked = arg1.state.checked
   var390.ShowAgainCheckbox = var2.createElement(var8, var443)
   var350.Texts = var2.createElement("Frame", var381, var390)
   var304.Information = var2.createElement("Frame", var341, var350)
   local var459 = {}
   var459.Size = UDim2.new(1, 0, 0, 23)
   var459.BackgroundTransparency = 1
   var459.LayoutOrder = 2
   local var468 = {}
   local var472 = {}
   var472.SortOrder = Enum.SortOrder.LayoutOrder
   var472.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var472.VerticalAlignment = Enum.VerticalAlignment.Top
   var472.FillDirection = Enum.FillDirection.Horizontal
   var472.Padding = UDim.new(0, 8)
   var468.UIListLayout = var2.createElement("UIListLayout", var472)
   local var485 = {}
   var485.Text = var0.Localization:getText("Common", "OK")
   var485.onButtonClicked = arg1.props.onOkButtonClicked
   var468.OkButton = var2.createElement(var11, var485)
   var468.CancelButton = var2.createElement(var11, var258)
   var304.Buttons = var2.createElement("Frame", var459, var468)
   var285.Background = var2.createElement("Frame", var289, var304)
   return var2.createElement(var10, var265, var285)
end

function var13.renderContent(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Info
   local var108 = {}
   var108.assetName = var2.assetName
   var108.numScripts = var2.numScripts
   local var4 = var0.Localization:getText("ScriptWarning", "DetailText", var108)
   local var5 = var5.FONT_SIZE_MEDIUM
   local var6 = var5.FONT_BOLD
   local var7 = var0.Localization:getText("ScriptWarning", "InstructionText") ... " " ... var0.Localization:getText("ScriptWarning", "InstructionText2")
   local var8 = var5.FONT_SIZE_MEDIUM
   local var9 = var5.FONT
   local var10 = var0.Localization:getText("ScriptWarning", "DontShowAgain")
   local var11 = var5.FONT_SIZE_MEDIUM
   local var12 = var5.FONT
   local var198 = math.min(var9(var10, var11, var12, Vector2.new(0, 0)).X, 424)
   var198 = var5.MESSAGE_BOX_BUTTON_WIDTH
   local var14 = math.max(math.max(var198, 52 + math.max(math.min(var9(var4, var5, var6, Vector2.new(0, 0)).X, 424), math.min(var9(var7, var8, var9, Vector2.new(0, 0)).X, 424), var198 + 16)), 120)
   local var15 = var14 - 52
   local var16 = var9(var4, var5, var6, Vector2.new(var15, 1000)).Y
   local var17 = var9(var7, var8, var9, Vector2.new(var15, 1000)).Y
   local var18 = var9(var10, var11, var12, Vector2.new(var15 - 16, 1000)).Y
   local var19 = math.max(32, var16 + var18 + var17 + 8)
   local var258 = {}
   var258.Text = var0.Localization:getText("Purchase", "Cancel")
   var258.onButtonClicked = arg1.props.onCancel
   local var265 = {}
   var265.Name = var0.Name
   var265.Title = var0.Localization:getText("General", "ToolboxToolbarName")
   var265.Size = Vector2.new(12 + var14 + 12, 8 + var19 + 12 + 23 + 12)
   var265.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var265.Modal = true
   var265.plugin = arg1.props.Plugin:get()
   var2.Change.Enabled = arg1.onEnabledChanged
   var2.Event.AncestryChanged = arg1.onAncestryChanged
   local var285 = {}
   local var289 = {}
   var289.Position = UDim2.new(0, 0, 0, 0)
   var289.Size = UDim2.new(1, 0, 1, 0)
   var289.BackgroundColor3 = var1.messageBox.backgroundColor
   local var304 = {}
   local var308 = {}
   var308.PaddingBottom = UDim.new(0, 12)
   var308.PaddingLeft = UDim.new(0, 12)
   var308.PaddingRight = UDim.new(0, 12)
   var308.PaddingTop = UDim.new(0, 8)
   var304.UIPadding = var2.createElement("UIPadding", var308)
   local var329 = {}
   var329.SortOrder = Enum.SortOrder.LayoutOrder
   var329.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var329.VerticalAlignment = Enum.VerticalAlignment.Top
   var329.Padding = UDim.new(0, 12)
   var304.UIListLayout = var2.createElement("UIListLayout", var329)
   local var341 = {}
   var341.Size = UDim2.new(1, 0, 0, var19)
   var341.BackgroundTransparency = 1
   var341.LayoutOrder = 1
   local var350 = {}
   local var354 = {}
   var354.SortOrder = Enum.SortOrder.LayoutOrder
   var354.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var354.VerticalAlignment = Enum.VerticalAlignment.Top
   var354.Padding = UDim.new(0, 20)
   var354.FillDirection = Enum.FillDirection.Horizontal
   var350.UIListLayout = var2.createElement("UIListLayout", var354)
   local var367 = {}
   var367.Size = UDim2.new(0, 32, 0, 32)
   var367.BackgroundTransparency = 1
   var367.LayoutOrder = 0
   var367.Image = var0.Icon
   var350.Icon = var2.createElement("ImageLabel", var367)
   local var381 = {}
   var381.LayoutOrder = 1
   var381.Size = UDim2.new(1, 65484, 1, 0)
   var381.BackgroundTransparency = 1
   local var390 = {}
   local var394 = {}
   var394.SortOrder = Enum.SortOrder.LayoutOrder
   var394.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var394.VerticalAlignment = Enum.VerticalAlignment.Top
   var394.Padding = UDim.new(0, 8)
   var394.FillDirection = Enum.FillDirection.Vertical
   var390.UIListLayout = var2.createElement("UIListLayout", var394)
   local var407 = {}
   var407.LayoutOrder = 0
   var407.Size = UDim2.new(1, 0, 0, var16)
   var407.BackgroundTransparency = 1
   var407.Text = var4
   var407.Font = var6
   var407.TextSize = var5
   var407.TextColor3 = var1.messageBox.textColor
   var407.TextXAlignment = Enum.TextXAlignment.Left
   var407.TextYAlignment = Enum.TextYAlignment.Top
   var407.TextWrapped = true
   var390.DetailLabel = var2.createElement("TextLabel", var407)
   local var425 = {}
   var425.LayoutOrder = 1
   var425.Size = UDim2.new(1, 0, 0, var17)
   var425.BackgroundTransparency = 1
   var425.Text = var7
   var425.Font = var9
   var425.TextSize = var8
   var425.TextColor3 = var1.messageBox.textColor
   var425.TextXAlignment = Enum.TextXAlignment.Left
   var425.TextYAlignment = Enum.TextYAlignment.Top
   var425.TextWrapped = true
   var390.InstructionLabel = var2.createElement("TextLabel", var425)
   local var443 = {}
   var443.LayoutOrder = 2
   var443.Text = var10
   var443.Font = var12
   var443.TextSize = var11
   var443.OnClick = arg1.onToggleShowAgain
   var443.Size = UDim2.new(1, 0, 0, var18)
   var443.Checked = arg1.state.checked
   var390.ShowAgainCheckbox = var2.createElement(var8, var443)
   var350.Texts = var2.createElement("Frame", var381, var390)
   var304.Information = var2.createElement("Frame", var341, var350)
   local var459 = {}
   var459.Size = UDim2.new(1, 0, 0, 23)
   var459.BackgroundTransparency = 1
   var459.LayoutOrder = 2
   local var468 = {}
   local var472 = {}
   var472.SortOrder = Enum.SortOrder.LayoutOrder
   var472.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var472.VerticalAlignment = Enum.VerticalAlignment.Top
   var472.FillDirection = Enum.FillDirection.Horizontal
   var472.Padding = UDim.new(0, 8)
   var468.UIListLayout = var2.createElement("UIListLayout", var472)
   local var485 = {}
   var485.Text = var0.Localization:getText("Common", "OK")
   var485.onButtonClicked = arg1.props.onOkButtonClicked
   var468.OkButton = var2.createElement(var11, var485)
   var468.CancelButton = var2.createElement(var11, var258)
   var304.Buttons = var2.createElement("Frame", var459, var468)
   var285.Background = var2.createElement("Frame", var289, var304)
   return var2.createElement(var10, var265, var285)
end

fun7 = var7.withContext
local var492 = {}
var492.Plugin = var7.Plugin
var492.Stylizer = var7.Stylizer
var492.Localization = var7.Localization
var13 = fun7(var492)(var13)
return var13
