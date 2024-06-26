-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.FitFrame).FitFrameOnAxis
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Container
local var7 = var5.Image
local var8 = var5.RadioButton
local var9 = var5.Tooltip
local var10 = require(var0.Src.Utility.RelativeTo)
local var11 = var2.PureComponent:extend("RelativeToSetting")
local var71 = {}
var71.Value = var10.Selection
function var71.OnValueChanged()
end

var11.defaultProps = var71
function var11.init(arg1, arg2)
   if type(arg2.Value) == "string" then
      local var0 = false
   end
   assert(true, "Missing required property Value.")
   if type(arg2.OnValueChanged) == "function" then
      local var0 = false
   end
   assert(true, "Missing required property OnValueChanged.")
end

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local function fun0()
   end
   
   local var96 = {}
   local var98 = var1.Axis
   var96.axis = var98.Both
   var96.contentPadding = var1.SectionContentPaddingCompact
   var96.BackgroundTransparency = 1
   var96.FillDirection = Enum.FillDirection.Vertical
   local var103 = {}
   function var98()
   end
   
   var103.SelectionRadioButton = var98(var10.Selection, 1)
   local var111 = {}
   var111.axis = var1.Axis.Both
   local var115 = var1.RelativeToSetting
   var111.contentPadding = var115.HelpIconPadding
   var111.BackgroundTransparency = 1
   var111.FillDirection = Enum.FillDirection.Horizontal
   var111.LayoutOrder = 2
   local var120 = {}
   function var115()
   end
   
   var120.RadioButton = var115(var10.Active, 1)
   local var128 = {}
   var128.LayoutOrder = 2
   var128.Size = UDim2.new(0, 22, 1, 0)
   local var136 = {}
   local var140 = {}
   var140.Style = "HelpIcon"
   var136.Icon = var2.createElement(var7, var140)
   local var146 = {}
   var146.Text = var0.Localization:getText("RelativeToSection", "ActiveObjectTooltip")
   var136.Tooltip = var2.createElement(var9, var146)
   var120.HelpIcon = var2.createElement(var6, var128, var136)
   var103.ActiveRadioButton = var2.createElement(var1, var111, var120)
   return var2.createElement(var1, var96, var103)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local function fun0()
   end
   
   local var96 = {}
   local var98 = var1.Axis
   var96.axis = var98.Both
   var96.contentPadding = var1.SectionContentPaddingCompact
   var96.BackgroundTransparency = 1
   var96.FillDirection = Enum.FillDirection.Vertical
   local var103 = {}
   function var98()
   end
   
   var103.SelectionRadioButton = var98(var10.Selection, 1)
   local var111 = {}
   var111.axis = var1.Axis.Both
   local var115 = var1.RelativeToSetting
   var111.contentPadding = var115.HelpIconPadding
   var111.BackgroundTransparency = 1
   var111.FillDirection = Enum.FillDirection.Horizontal
   var111.LayoutOrder = 2
   local var120 = {}
   function var115()
   end
   
   var120.RadioButton = var115(var10.Active, 1)
   local var128 = {}
   var128.LayoutOrder = 2
   var128.Size = UDim2.new(0, 22, 1, 0)
   local var136 = {}
   local var140 = {}
   var140.Style = "HelpIcon"
   var136.Icon = var2.createElement(var7, var140)
   local var146 = {}
   var146.Text = var0.Localization:getText("RelativeToSection", "ActiveObjectTooltip")
   var136.Tooltip = var2.createElement(var9, var146)
   var120.HelpIcon = var2.createElement(var6, var128, var136)
   var103.ActiveRadioButton = var2.createElement(var1, var111, var120)
   return var2.createElement(var1, var96, var103)
end

fun3 = var4.withContext
local var155 = {}
var155.Localization = var4.Localization
var155.Stylizer = var4.Stylizer
var11 = fun3(var155)(var11)
return var11
