-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.Pane
local var7 = require(var0.Src.Components.LabeledToggleButton)
local var8 = require(var0.Src.Actions.EventTypeEnabled.SetGamepadEnabled)
local var9 = require(var0.Src.Actions.EventTypeEnabled.SetKeyboardEnabled)
local var10 = require(var0.Src.Actions.EventTypeEnabled.SetMouseClickEnabled)
local var11 = require(var0.Src.Actions.EventTypeEnabled.SetMouseMoveEnabled)
local var12 = require(var0.Src.Actions.EventTypeEnabled.SetTouchEnabled)
local var13 = var1.PureComponent:extend("FilterSettingsUIGroup")
function var13.init(arg1, arg2)
   assert(arg2.RoduxStoreContext)
   function arg1.toggleMouseMove()
      local var0 = arg1.props
      var0.SetMouseMoveEnabled(var0.EnabledMouseMove, var0.RoduxStoreContext)
   end
   
   function arg1.toggleMouseClick()
      local var0 = arg1.props
      var0.SetMouseClickEnabled(var0.EnabledMouseClick, var0.RoduxStoreContext)
   end
   
   function arg1.toggleKeyboard()
      local var0 = arg1.props
      var0.SetKeyboardEnabled(var0.EnabledKeyboard, var0.RoduxStoreContext)
   end
   
   function arg1.toggleGamepad()
      local var0 = arg1.props
      var0.SetGamepadEnabled(var0.EnabledGamepad, var0.RoduxStoreContext)
   end
   
   function arg1.toggleTouch()
      local var0 = arg1.props
      var0.SetTouchEnabled(var0.EnabledTouch, var0.RoduxStoreContext)
   end
   
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = arg1.props.Disabled
   local var102 = {}
   var102.LayoutOrder = var0.LayoutOrder
   var102.Style = "CornerBox"
   var102.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var102.AutomaticSize = Enum.AutomaticSize.Y
   var102.Layout = Enum.FillDirection.Vertical
   var102.Spacing = UDim.new(0, var2.PaddingPx)
   var102.Padding = var2.PaddingPx
   var102.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var102.VerticalAlignment = Enum.VerticalAlignment.Top
   local var118 = {}
   local var122 = {}
   var122.Text = var1:getText("PlaybackTabView", "FilterEventsLabel")
   var122.Size = UDim2.fromScale(1, 0)
   var122.AutomaticSize = Enum.AutomaticSize.Y
   var122.LayoutOrder = 0
   var122.TextXAlignment = Enum.TextXAlignment.Left
   var122.TextYAlignment = Enum.TextYAlignment.Top
   var118.Label = var1.createElement(var5, var122)
   local var139 = {}
   var139.Size = UDim2.new(1, 0, 0, var2.GridAreaHeightPx)
   var139.LayoutOrder = 1
   local var147 = {}
   local var151 = {}
   var151.FillDirection = Enum.FillDirection.Vertical
   var151.CellPadding = UDim2.fromOffset(var2.PaddingPx, var2.GridCellPaddingYPx)
   var151.SortOrder = Enum.SortOrder.LayoutOrder
   var151.VerticalAlignment = Enum.VerticalAlignment.Top
   var151.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var151.CellSize = var2.GridLayoutCellSize
   var147.Layout = var1.createElement("UIGridLayout", var151)
   local var165 = {}
   var165.Selected = var0.EnabledMouseMove
   var165.OnClick = arg1.toggleMouseMove
   var165.Text = var1:getText("RecordTabView", "FilterNameMouseMove")
   var165.Disabled = var3
   var147.MouseMoveEnabled = var1.createElement(var7, var165)
   local var176 = {}
   var176.Selected = var0.EnabledMouseClick
   var176.OnClick = arg1.toggleMouseClick
   var176.Text = var1:getText("RecordTabView", "FilterNameMouseClick")
   var176.Disabled = var3
   var147.MouseClickEnabled = var1.createElement(var7, var176)
   local var187 = {}
   var187.Selected = var0.EnabledKeyboard
   var187.OnClick = arg1.toggleKeyboard
   var187.Text = var1:getText("RecordTabView", "FilterNameKeyboard")
   var187.Disabled = var3
   var147.KeyboardEnabled = var1.createElement(var7, var187)
   local var198 = {}
   var198.Selected = var0.EnabledGamepad
   var198.OnClick = arg1.toggleGamepad
   var198.Text = var1:getText("RecordTabView", "FilterNameGamepad")
   var198.Disabled = var3
   var147.GamepadEnabled = var1.createElement(var7, var198)
   local var209 = {}
   var209.Selected = var0.EnabledTouch
   var209.OnClick = arg1.toggleTouch
   var209.Text = var1:getText("RecordTabView", "FilterNameTouch")
   var209.Disabled = var3
   var147.TouchEnabled = var1.createElement(var7, var209)
   var118.GridLayoutArea = var1.createElement(var6, var139, var147)
   return var1.createElement(var6, var102, var118)
end

local var220 = {}
var220.Stylizer = var3.Stylizer
var220.Localization = var3.Localization
var13 = var3.withContext(var220)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = arg1[arg2.RoduxStoreContext]
   local var1 = {}
   var1.EnabledMouseMove = var0.mouseMove
   var1.EnabledMouseClick = var0.mouseClick
   var1.EnabledKeyboard = var0.keyboard
   var1.EnabledGamepad = var0.gamepad
   var1.EnabledTouch = var0.touch
   return var1
end, function(arg1)
   local var0 = {}
   function var0.SetMouseMoveEnabled()
      local var0 = arg1.props
      var0.SetMouseMoveEnabled(var0.EnabledMouseMove, var0.RoduxStoreContext)
   end
   
   function var0.SetMouseClickEnabled()
      local var0 = arg1.props
      var0.SetMouseClickEnabled(var0.EnabledMouseClick, var0.RoduxStoreContext)
   end
   
   function var0.SetKeyboardEnabled()
      local var0 = arg1.props
      var0.SetKeyboardEnabled(var0.EnabledKeyboard, var0.RoduxStoreContext)
   end
   
   function var0.SetGamepadEnabled()
      local var0 = arg1.props
      var0.SetGamepadEnabled(var0.EnabledGamepad, var0.RoduxStoreContext)
   end
   
   function var0.SetTouchEnabled()
      local var0 = arg1.props
      var0.SetTouchEnabled(var0.EnabledTouch, var0.RoduxStoreContext)
   end
   
   return var0
end)(var13)
