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
local var33 = {}
var33.Value = var10.Selection
function var33.OnValueChanged()
end

var11.defaultProps = var33
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
   
   local var58 = {}
   local var60 = var1.Axis
   var58.axis = var60.Both
   var58.contentPadding = var1.SectionContentPaddingCompact
   var58.BackgroundTransparency = 1
   var58.FillDirection = Enum.FillDirection.Vertical
   local var65 = {}
   function var60()
   end
   
   var65.SelectionRadioButton = var60(var10.Selection, 1)
   local var73 = {}
   var73.axis = var1.Axis.Both
   local var77 = var1.RelativeToSetting
   var73.contentPadding = var77.HelpIconPadding
   var73.BackgroundTransparency = 1
   var73.FillDirection = Enum.FillDirection.Horizontal
   var73.LayoutOrder = 2
   local var82 = {}
   function var77()
   end
   
   var82.RadioButton = var77(var10.Active, 1)
   local var90 = {}
   var90.LayoutOrder = 2
   var90.Size = UDim2.new(0, 22, 1, 0)
   local var98 = {}
   local var102 = {}
   var102.Style = "HelpIcon"
   var98.Icon = var2.createElement(var7, var102)
   local var108 = {}
   var108.Text = var0.Localization:getText("RelativeToSection", "ActiveObjectTooltip")
   var98.Tooltip = var2.createElement(var9, var108)
   var82.HelpIcon = var2.createElement(var6, var90, var98)
   var65.ActiveRadioButton = var2.createElement(var1, var73, var82)
   return var2.createElement(var1, var58, var65)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local function fun0()
   end
   
   local var58 = {}
   local var60 = var1.Axis
   var58.axis = var60.Both
   var58.contentPadding = var1.SectionContentPaddingCompact
   var58.BackgroundTransparency = 1
   var58.FillDirection = Enum.FillDirection.Vertical
   local var65 = {}
   function var60()
   end
   
   var65.SelectionRadioButton = var60(var10.Selection, 1)
   local var73 = {}
   var73.axis = var1.Axis.Both
   local var77 = var1.RelativeToSetting
   var73.contentPadding = var77.HelpIconPadding
   var73.BackgroundTransparency = 1
   var73.FillDirection = Enum.FillDirection.Horizontal
   var73.LayoutOrder = 2
   local var82 = {}
   function var77()
   end
   
   var82.RadioButton = var77(var10.Active, 1)
   local var90 = {}
   var90.LayoutOrder = 2
   var90.Size = UDim2.new(0, 22, 1, 0)
   local var98 = {}
   local var102 = {}
   var102.Style = "HelpIcon"
   var98.Icon = var2.createElement(var7, var102)
   local var108 = {}
   var108.Text = var0.Localization:getText("RelativeToSection", "ActiveObjectTooltip")
   var98.Tooltip = var2.createElement(var9, var108)
   var82.HelpIcon = var2.createElement(var6, var90, var98)
   var65.ActiveRadioButton = var2.createElement(var1, var73, var82)
   return var2.createElement(var1, var58, var65)
end

fun3 = var4.withContext
local var117 = {}
var117.Localization = var4.Localization
var117.Stylizer = var4.Stylizer
var11 = fun3(var117)(var11)
return var11
