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
      local var566 = {}
      var566.Size = UDim2.new(1, 0, 0, var1.TextBoxHeight)
      var566.LayoutOrder = arg1
      var566.Layout = Enum.FillDirection.Horizontal
      var566.HorizontalAlignment = Enum.HorizontalAlignment.Left
      local var575 = {}
      local var579 = {}
      var579.TextXAlignment = Enum.TextXAlignment.Left
      var579.TextYAlignment = Enum.TextYAlignment.Center
      var579.Size = UDim2.new(0, var1.LabelWidth, 1, 0)
      var579.Text = var0.Localization:getText("Select", "Part")
      var579.LayoutOrder = arg1 + 1
      var575.TextBoxLabel = var1.createElement(var6, var579)
      local var593 = {}
      var593.Enabled = false
      var593.ShouldFocus = false
      var593.Text = var0.PartName
      var593.Size = UDim2.new(0.5, 0, 1, 0)
      var593.LayoutOrder = arg1 + 2
      var593.Style = "FilledRoundedBorder"
      var575.SelectedPartBox = var1.createElement(var7, var593)
      return var1.createElement(var8, var566, var575)
   end
   
end

local function fun14(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var618 = {}
   var618.Title = var1:getText("Editor", "Select")
   var618.PromptText = var1:getText("Select", "Prompt")
   var618.NextButtonText = var1:getText("Flow", "Next")
   var618.BackButtonText = ""
   var618.NextButtonEnabled = var0.ButtonEnabled
   var618.HasBackButton = false
   var618.GoToNext = var0.OnConfirmSelection
   var618.RenderContent = arg1.renderContent
   return var1.createElement(var4, var618)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var618 = {}
   var618.Title = var1:getText("Editor", "Select")
   var618.PromptText = var1:getText("Select", "Prompt")
   var618.NextButtonText = var1:getText("Flow", "Next")
   var618.BackButtonText = ""
   var618.NextButtonEnabled = var0.ButtonEnabled
   var618.HasBackButton = false
   var618.GoToNext = var0.OnConfirmSelection
   var618.RenderContent = arg1.renderContent
   return var1.createElement(var4, var618)
end

fun14 = var3.withContext
local var631 = {}
var631.Stylizer = var3.Stylizer
var631.Localization = var3.Localization
var9 = fun14(var631)(var9)
return var9
