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
local var67 = {}
var67.Value = var10.Selection
function var67.OnValueChanged()
end

var11.defaultProps = var67
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

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local function fun0()
   end
   
   local var92 = {}
   local var94 = var1.Axis
   var92.axis = var94.Both
   var92.contentPadding = var1.SectionContentPaddingCompact
   var92.BackgroundTransparency = 1
   var92.FillDirection = Enum.FillDirection.Vertical
   local var99 = {}
   function var94()
   end
   
   var99.SelectionRadioButton = var94(var10.Selection, 1)
   local var107 = {}
   var107.axis = var1.Axis.Both
   local var111 = var1.RelativeToSetting
   var107.contentPadding = var111.HelpIconPadding
   var107.BackgroundTransparency = 1
   var107.FillDirection = Enum.FillDirection.Horizontal
   var107.LayoutOrder = 2
   local var116 = {}
   function var111()
   end
   
   var116.RadioButton = var111(var10.Active, 1)
   local var124 = {}
   var124.LayoutOrder = 2
   var124.Size = UDim2.new(0, 22, 1, 0)
   local var132 = {}
   local var136 = {}
   var136.Style = "HelpIcon"
   var132.Icon = var2.createElement(var7, var136)
   local var142 = {}
   var142.Text = var0.Localization:getText("RelativeToSection", "ActiveObjectTooltip")
   var132.Tooltip = var2.createElement(var9, var142)
   var116.HelpIcon = var2.createElement(var6, var124, var132)
   var99.ActiveRadioButton = var2.createElement(var1, var107, var116)
   return var2.createElement(var1, var92, var99)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local function fun0()
   end
   
   local var92 = {}
   local var94 = var1.Axis
   var92.axis = var94.Both
   var92.contentPadding = var1.SectionContentPaddingCompact
   var92.BackgroundTransparency = 1
   var92.FillDirection = Enum.FillDirection.Vertical
   local var99 = {}
   function var94()
   end
   
   var99.SelectionRadioButton = var94(var10.Selection, 1)
   local var107 = {}
   var107.axis = var1.Axis.Both
   local var111 = var1.RelativeToSetting
   var107.contentPadding = var111.HelpIconPadding
   var107.BackgroundTransparency = 1
   var107.FillDirection = Enum.FillDirection.Horizontal
   var107.LayoutOrder = 2
   local var116 = {}
   function var111()
   end
   
   var116.RadioButton = var111(var10.Active, 1)
   local var124 = {}
   var124.LayoutOrder = 2
   var124.Size = UDim2.new(0, 22, 1, 0)
   local var132 = {}
   local var136 = {}
   var136.Style = "HelpIcon"
   var132.Icon = var2.createElement(var7, var136)
   local var142 = {}
   var142.Text = var0.Localization:getText("RelativeToSection", "ActiveObjectTooltip")
   var132.Tooltip = var2.createElement(var9, var142)
   var116.HelpIcon = var2.createElement(var6, var124, var132)
   var99.ActiveRadioButton = var2.createElement(var1, var107, var116)
   return var2.createElement(var1, var92, var99)
end

fun4 = var4.withContext
local var151 = {}
var151.Localization = var4.Localization
var151.Stylizer = var4.Stylizer
var11 = fun4(var151)(var11)
return var11
