-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = require(var0.Packages.AvatarToolsShared).Components.FlowScreenLayout
local var5 = var2.UI
local var6 = var5.TextLabel
local var7 = var5.DEPRECATED_TextInput
local var8 = var5.Pane
local var9 = var1.PureComponent:extend("SelectFrame")
var2.Util.Typecheck.wrap(var9, script)
function var9.init(arg1)
   function arg1.renderContent(arg1)
      local var0 = arg1.props
      local var1 = var0.Stylizer
      local var482 = {}
      var482.Size = UDim2.new(1, 0, 0, var1.TextBoxHeight)
      var482.LayoutOrder = arg1
      var482.Layout = Enum.FillDirection.Horizontal
      var482.HorizontalAlignment = Enum.HorizontalAlignment.Left
      local var491 = {}
      local var495 = {}
      var495.TextXAlignment = Enum.TextXAlignment.Left
      var495.TextYAlignment = Enum.TextYAlignment.Center
      var495.Size = UDim2.new(0, var1.LabelWidth, 1, 0)
      var495.Text = var0.Localization:getText("Select", "Part")
      var495.LayoutOrder = arg1 + 1
      var491.TextBoxLabel = var1.createElement(var6, var495)
      local var509 = {}
      var509.Enabled = false
      var509.ShouldFocus = false
      var509.Text = var0.PartName
      var509.Size = UDim2.new(0.5, 0, 1, 0)
      var509.LayoutOrder = arg1 + 2
      var509.Style = "FilledRoundedBorder"
      var491.SelectedPartBox = var1.createElement(var7, var509)
      return var1.createElement(var8, var482, var491)
   end
   
end

local function fun14(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var534 = {}
   var534.Title = var1:getText("Editor", "Select")
   var534.PromptText = var1:getText("Select", "Prompt")
   var534.NextButtonText = var1:getText("Flow", "Next")
   var534.BackButtonText = ""
   var534.NextButtonEnabled = var0.ButtonEnabled
   var534.HasBackButton = false
   var534.GoToNext = var0.OnConfirmSelection
   var534.RenderContent = arg1.renderContent
   return var1.createElement(var4, var534)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var534 = {}
   var534.Title = var1:getText("Editor", "Select")
   var534.PromptText = var1:getText("Select", "Prompt")
   var534.NextButtonText = var1:getText("Flow", "Next")
   var534.BackButtonText = ""
   var534.NextButtonEnabled = var0.ButtonEnabled
   var534.HasBackButton = false
   var534.GoToNext = var0.OnConfirmSelection
   var534.RenderContent = arg1.renderContent
   return var1.createElement(var4, var534)
end

fun14 = var3.withContext
local var547 = {}
var547.Stylizer = var3.Stylizer
var547.Localization = var3.Localization
var9 = fun14(var547)(var9)
return var9
