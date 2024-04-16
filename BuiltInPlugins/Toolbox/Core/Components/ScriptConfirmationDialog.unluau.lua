-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Constants)
local var5 = var3.ContextServices
local var6 = var3.UI.Checkbox
local var7 = var3.Util.GetTextSize
local var8 = require(var0.Core.Components.PluginWidget.Dialog)
local var9 = require(var0.Core.Components.MessageBox.MessageBoxButton)
local var10 = require(var0.Core.ContextServices.ModalContext)
local var11 = var2.PureComponent:extend("ScriptConfirmationDialog")
function var11.init(arg1, arg2)
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
      local var72 = {}
      var72.checked = var0
      arg1:setState(var72)
      arg1.props.onChangeShowDialog(var0)
   end
   
   local var78 = {}
   var78.checked = false
   arg1:setState(var78)
end

function var11.willUnmount(arg1)
   arg1.isDead = true
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Info
   local var91 = {}
   var91.assetName = var2.assetName
   var91.numScripts = var2.numScripts
   local var4 = var0.Localization:getText("ScriptWarning", "DetailText", var91)
   local var5 = var4.FONT_SIZE_MEDIUM
   local var6 = var4.FONT_BOLD
   local var7 = var0.Localization:getText("ScriptWarning", "InstructionText") ... " " ... var0.Localization:getText("ScriptWarning", "InstructionText2")
   local var8 = var4.FONT_SIZE_MEDIUM
   local var9 = var4.FONT
   local var10 = var0.Localization:getText("ScriptWarning", "DontShowAgain")
   local var11 = var4.FONT_SIZE_MEDIUM
   local var12 = var4.FONT
   local var181 = math.min(var7(var10, var11, var12, Vector2.new(0, 0)).X, 424)
   var181 = var4.MESSAGE_BOX_BUTTON_WIDTH
   local var14 = math.max(math.max(var181, 52 + math.max(math.min(var7(var4, var5, var6, Vector2.new(0, 0)).X, 424), math.min(var7(var7, var8, var9, Vector2.new(0, 0)).X, 424), var181 + 16)), 120)
   local var15 = var14 - 52
   local var16 = var7(var4, var5, var6, Vector2.new(var15, 1000)).Y
   local var17 = var7(var7, var8, var9, Vector2.new(var15, 1000)).Y
   local var18 = var7(var10, var11, var12, Vector2.new(var15 - 16, 1000)).Y
   local var19 = math.max(32, var16 + var18 + var17 + 8)
   local var241 = {}
   var241.Text = var0.Localization:getText("Purchase", "Cancel")
   var241.onButtonClicked = arg1.props.onCancel
   local var248 = {}
   var248.Name = var0.Name
   var248.Title = var0.Localization:getText("General", "ToolboxToolbarName")
   var248.Size = Vector2.new(12 + var14 + 12, 8 + var19 + 12 + 23 + 12)
   var248.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var248.Modal = true
   var248.plugin = arg1.props.Plugin:get()
   var2.Change.Enabled = arg1.onEnabledChanged
   var2.Event.AncestryChanged = arg1.onAncestryChanged
   local var268 = {}
   local var272 = {}
   var272.Position = UDim2.new(0, 0, 0, 0)
   var272.Size = UDim2.new(1, 0, 1, 0)
   var272.BackgroundColor3 = var1.messageBox.backgroundColor
   local var287 = {}
   local var291 = {}
   var291.PaddingBottom = UDim.new(0, 12)
   var291.PaddingLeft = UDim.new(0, 12)
   var291.PaddingRight = UDim.new(0, 12)
   var291.PaddingTop = UDim.new(0, 8)
   var287.UIPadding = var2.createElement("UIPadding", var291)
   local var312 = {}
   var312.SortOrder = Enum.SortOrder.LayoutOrder
   var312.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var312.VerticalAlignment = Enum.VerticalAlignment.Top
   var312.Padding = UDim.new(0, 12)
   var287.UIListLayout = var2.createElement("UIListLayout", var312)
   local var324 = {}
   var324.Size = UDim2.new(1, 0, 0, var19)
   var324.BackgroundTransparency = 1
   var324.LayoutOrder = 1
   local var333 = {}
   local var337 = {}
   var337.SortOrder = Enum.SortOrder.LayoutOrder
   var337.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var337.VerticalAlignment = Enum.VerticalAlignment.Top
   var337.Padding = UDim.new(0, 20)
   var337.FillDirection = Enum.FillDirection.Horizontal
   var333.UIListLayout = var2.createElement("UIListLayout", var337)
   local var350 = {}
   var350.Size = UDim2.new(0, 32, 0, 32)
   var350.BackgroundTransparency = 1
   var350.LayoutOrder = 0
   var350.Image = var0.Icon
   var333.Icon = var2.createElement("ImageLabel", var350)
   local var364 = {}
   var364.LayoutOrder = 1
   var364.Size = UDim2.new(1, 65484, 1, 0)
   var364.BackgroundTransparency = 1
   local var373 = {}
   local var377 = {}
   var377.SortOrder = Enum.SortOrder.LayoutOrder
   var377.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var377.VerticalAlignment = Enum.VerticalAlignment.Top
   var377.Padding = UDim.new(0, 8)
   var377.FillDirection = Enum.FillDirection.Vertical
   var373.UIListLayout = var2.createElement("UIListLayout", var377)
   local var390 = {}
   var390.LayoutOrder = 0
   var390.Size = UDim2.new(1, 0, 0, var16)
   var390.BackgroundTransparency = 1
   var390.Text = var4
   var390.Font = var6
   var390.TextSize = var5
   var390.TextColor3 = var1.messageBox.textColor
   var390.TextXAlignment = Enum.TextXAlignment.Left
   var390.TextYAlignment = Enum.TextYAlignment.Top
   var390.TextWrapped = true
   var373.DetailLabel = var2.createElement("TextLabel", var390)
   local var408 = {}
   var408.LayoutOrder = 1
   var408.Size = UDim2.new(1, 0, 0, var17)
   var408.BackgroundTransparency = 1
   var408.Text = var7
   var408.Font = var9
   var408.TextSize = var8
   var408.TextColor3 = var1.messageBox.textColor
   var408.TextXAlignment = Enum.TextXAlignment.Left
   var408.TextYAlignment = Enum.TextYAlignment.Top
   var408.TextWrapped = true
   var373.InstructionLabel = var2.createElement("TextLabel", var408)
   local var426 = {}
   var426.LayoutOrder = 2
   var426.Text = var10
   var426.Font = var12
   var426.TextSize = var11
   var426.OnClick = arg1.onToggleShowAgain
   var426.Size = UDim2.new(1, 0, 0, var18)
   var426.Checked = arg1.state.checked
   var373.ShowAgainCheckbox = var2.createElement(var6, var426)
   var333.Texts = var2.createElement("Frame", var364, var373)
   var287.Information = var2.createElement("Frame", var324, var333)
   local var442 = {}
   var442.Size = UDim2.new(1, 0, 0, 23)
   var442.BackgroundTransparency = 1
   var442.LayoutOrder = 2
   local var451 = {}
   local var455 = {}
   var455.SortOrder = Enum.SortOrder.LayoutOrder
   var455.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var455.VerticalAlignment = Enum.VerticalAlignment.Top
   var455.FillDirection = Enum.FillDirection.Horizontal
   var455.Padding = UDim.new(0, 8)
   var451.UIListLayout = var2.createElement("UIListLayout", var455)
   local var468 = {}
   var468.Text = var0.Localization:getText("Common", "OK")
   var468.onButtonClicked = arg1.props.onOkButtonClicked
   var451.OkButton = var2.createElement(var9, var468)
   var451.CancelButton = var2.createElement(var9, var241)
   var287.Buttons = var2.createElement("Frame", var442, var451)
   var268.Background = var2.createElement("Frame", var272, var287)
   return var2.createElement(var8, var248, var268)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Info
   local var91 = {}
   var91.assetName = var2.assetName
   var91.numScripts = var2.numScripts
   local var4 = var0.Localization:getText("ScriptWarning", "DetailText", var91)
   local var5 = var4.FONT_SIZE_MEDIUM
   local var6 = var4.FONT_BOLD
   local var7 = var0.Localization:getText("ScriptWarning", "InstructionText") ... " " ... var0.Localization:getText("ScriptWarning", "InstructionText2")
   local var8 = var4.FONT_SIZE_MEDIUM
   local var9 = var4.FONT
   local var10 = var0.Localization:getText("ScriptWarning", "DontShowAgain")
   local var11 = var4.FONT_SIZE_MEDIUM
   local var12 = var4.FONT
   local var181 = math.min(var7(var10, var11, var12, Vector2.new(0, 0)).X, 424)
   var181 = var4.MESSAGE_BOX_BUTTON_WIDTH
   local var14 = math.max(math.max(var181, 52 + math.max(math.min(var7(var4, var5, var6, Vector2.new(0, 0)).X, 424), math.min(var7(var7, var8, var9, Vector2.new(0, 0)).X, 424), var181 + 16)), 120)
   local var15 = var14 - 52
   local var16 = var7(var4, var5, var6, Vector2.new(var15, 1000)).Y
   local var17 = var7(var7, var8, var9, Vector2.new(var15, 1000)).Y
   local var18 = var7(var10, var11, var12, Vector2.new(var15 - 16, 1000)).Y
   local var19 = math.max(32, var16 + var18 + var17 + 8)
   local var241 = {}
   var241.Text = var0.Localization:getText("Purchase", "Cancel")
   var241.onButtonClicked = arg1.props.onCancel
   local var248 = {}
   var248.Name = var0.Name
   var248.Title = var0.Localization:getText("General", "ToolboxToolbarName")
   var248.Size = Vector2.new(12 + var14 + 12, 8 + var19 + 12 + 23 + 12)
   var248.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var248.Modal = true
   var248.plugin = arg1.props.Plugin:get()
   var2.Change.Enabled = arg1.onEnabledChanged
   var2.Event.AncestryChanged = arg1.onAncestryChanged
   local var268 = {}
   local var272 = {}
   var272.Position = UDim2.new(0, 0, 0, 0)
   var272.Size = UDim2.new(1, 0, 1, 0)
   var272.BackgroundColor3 = var1.messageBox.backgroundColor
   local var287 = {}
   local var291 = {}
   var291.PaddingBottom = UDim.new(0, 12)
   var291.PaddingLeft = UDim.new(0, 12)
   var291.PaddingRight = UDim.new(0, 12)
   var291.PaddingTop = UDim.new(0, 8)
   var287.UIPadding = var2.createElement("UIPadding", var291)
   local var312 = {}
   var312.SortOrder = Enum.SortOrder.LayoutOrder
   var312.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var312.VerticalAlignment = Enum.VerticalAlignment.Top
   var312.Padding = UDim.new(0, 12)
   var287.UIListLayout = var2.createElement("UIListLayout", var312)
   local var324 = {}
   var324.Size = UDim2.new(1, 0, 0, var19)
   var324.BackgroundTransparency = 1
   var324.LayoutOrder = 1
   local var333 = {}
   local var337 = {}
   var337.SortOrder = Enum.SortOrder.LayoutOrder
   var337.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var337.VerticalAlignment = Enum.VerticalAlignment.Top
   var337.Padding = UDim.new(0, 20)
   var337.FillDirection = Enum.FillDirection.Horizontal
   var333.UIListLayout = var2.createElement("UIListLayout", var337)
   local var350 = {}
   var350.Size = UDim2.new(0, 32, 0, 32)
   var350.BackgroundTransparency = 1
   var350.LayoutOrder = 0
   var350.Image = var0.Icon
   var333.Icon = var2.createElement("ImageLabel", var350)
   local var364 = {}
   var364.LayoutOrder = 1
   var364.Size = UDim2.new(1, 65484, 1, 0)
   var364.BackgroundTransparency = 1
   local var373 = {}
   local var377 = {}
   var377.SortOrder = Enum.SortOrder.LayoutOrder
   var377.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var377.VerticalAlignment = Enum.VerticalAlignment.Top
   var377.Padding = UDim.new(0, 8)
   var377.FillDirection = Enum.FillDirection.Vertical
   var373.UIListLayout = var2.createElement("UIListLayout", var377)
   local var390 = {}
   var390.LayoutOrder = 0
   var390.Size = UDim2.new(1, 0, 0, var16)
   var390.BackgroundTransparency = 1
   var390.Text = var4
   var390.Font = var6
   var390.TextSize = var5
   var390.TextColor3 = var1.messageBox.textColor
   var390.TextXAlignment = Enum.TextXAlignment.Left
   var390.TextYAlignment = Enum.TextYAlignment.Top
   var390.TextWrapped = true
   var373.DetailLabel = var2.createElement("TextLabel", var390)
   local var408 = {}
   var408.LayoutOrder = 1
   var408.Size = UDim2.new(1, 0, 0, var17)
   var408.BackgroundTransparency = 1
   var408.Text = var7
   var408.Font = var9
   var408.TextSize = var8
   var408.TextColor3 = var1.messageBox.textColor
   var408.TextXAlignment = Enum.TextXAlignment.Left
   var408.TextYAlignment = Enum.TextYAlignment.Top
   var408.TextWrapped = true
   var373.InstructionLabel = var2.createElement("TextLabel", var408)
   local var426 = {}
   var426.LayoutOrder = 2
   var426.Text = var10
   var426.Font = var12
   var426.TextSize = var11
   var426.OnClick = arg1.onToggleShowAgain
   var426.Size = UDim2.new(1, 0, 0, var18)
   var426.Checked = arg1.state.checked
   var373.ShowAgainCheckbox = var2.createElement(var6, var426)
   var333.Texts = var2.createElement("Frame", var364, var373)
   var287.Information = var2.createElement("Frame", var324, var333)
   local var442 = {}
   var442.Size = UDim2.new(1, 0, 0, 23)
   var442.BackgroundTransparency = 1
   var442.LayoutOrder = 2
   local var451 = {}
   local var455 = {}
   var455.SortOrder = Enum.SortOrder.LayoutOrder
   var455.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var455.VerticalAlignment = Enum.VerticalAlignment.Top
   var455.FillDirection = Enum.FillDirection.Horizontal
   var455.Padding = UDim.new(0, 8)
   var451.UIListLayout = var2.createElement("UIListLayout", var455)
   local var468 = {}
   var468.Text = var0.Localization:getText("Common", "OK")
   var468.onButtonClicked = arg1.props.onOkButtonClicked
   var451.OkButton = var2.createElement(var9, var468)
   var451.CancelButton = var2.createElement(var9, var241)
   var287.Buttons = var2.createElement("Frame", var442, var451)
   var268.Background = var2.createElement("Frame", var272, var287)
   return var2.createElement(var8, var248, var268)
end

fun5 = var5.withContext
local var475 = {}
var475.Plugin = var5.Plugin
var475.Stylizer = var5.Stylizer
var475.Localization = var5.Localization
var11 = fun5(var475)(var11)
return var11
