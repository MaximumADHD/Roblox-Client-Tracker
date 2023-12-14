-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = require(var0.Src.Flags.GetFFlagDebugLCEditAvatarCage)
local var5 = require(var0.Packages.AvatarToolsShared).Components.FlowScreenLayout
local var6 = var2.UI
local var7 = var6.TextLabel
local var8 = var6.DEPRECATED_TextInput
local var9 = var6.Pane
local var10 = var1.PureComponent:extend("SelectFrame")
var2.Util.Typecheck.wrap(var10, script)
function var10.init(arg1)
   function arg1.renderContent(arg1)
      local var0 = arg1.props
      local var1 = var0.Stylizer
      local var2 = var0.Localization
      local var3 = var2:getText("Select", "Part")
      if var4() then
         var3 = var2:getText("Select", "Selection")
      end
      local var582 = {}
      var582.Size = UDim2.new(1, 0, 0, var1.TextBoxHeight)
      var582.LayoutOrder = arg1
      var582.Layout = Enum.FillDirection.Horizontal
      var582.HorizontalAlignment = Enum.HorizontalAlignment.Left
      local var591 = {}
      local var595 = {}
      var595.TextXAlignment = Enum.TextXAlignment.Left
      var595.TextYAlignment = Enum.TextYAlignment.Center
      var595.Size = UDim2.new(0, var1.LabelWidth, 1, 0)
      var595.Text = var3
      var595.LayoutOrder = arg1 + 1
      var591.TextBoxLabel = var1.createElement(var7, var595)
      local var609 = {}
      var609.Enabled = false
      var609.ShouldFocus = false
      var609.Text = var0.PartName
      var609.Size = UDim2.new(0.5, 0, 1, 0)
      var609.LayoutOrder = arg1 + 2
      var609.Style = "FilledRoundedBorder"
      var591.SelectedPartBox = var1.createElement(var8, var609)
      return var1.createElement(var9, var582, var591)
   end
   
end

local function fun14(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var1:getText("Select", "Prompt")
   if var4() then
      var2 = var1:getText("Select", "PromptGeneric")
   end
   local var640 = {}
   var640.Title = var1:getText("Editor", "Select")
   var640.PromptText = var2
   var640.NextButtonText = var1:getText("Flow", "Next")
   var640.BackButtonText = ""
   var640.NextButtonEnabled = var0.ButtonEnabled
   var640.HasBackButton = false
   var640.GoToNext = var0.OnConfirmSelection
   var640.RenderContent = arg1.renderContent
   return var1.createElement(var5, var640)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var1:getText("Select", "Prompt")
   if var4() then
      var2 = var1:getText("Select", "PromptGeneric")
   end
   local var640 = {}
   var640.Title = var1:getText("Editor", "Select")
   var640.PromptText = var2
   var640.NextButtonText = var1:getText("Flow", "Next")
   var640.BackButtonText = ""
   var640.NextButtonEnabled = var0.ButtonEnabled
   var640.HasBackButton = false
   var640.GoToNext = var0.OnConfirmSelection
   var640.RenderContent = arg1.renderContent
   return var1.createElement(var5, var640)
end

fun14 = var3.withContext
local var653 = {}
var653.Stylizer = var3.Stylizer
var653.Localization = var3.Localization
var10 = fun14(var653)(var10)
return var10
