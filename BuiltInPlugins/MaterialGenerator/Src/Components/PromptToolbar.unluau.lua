-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = var2.ContextServices
local var5 = var4.Localization
local var6 = var4.Stylizer
local var7 = var2.UI.Pane
local var8 = require(var0.Src.Components.LoadingButton)
local var9 = require(var0.Src.Resources.Theme)
return function(arg1)
   local var0 = arg1.isDisabled or arg1.isGenerating
   if arg1.isGenerating == "isGenerating" then
      local var0 = false
   end
   local var1 = true
   local var2 = ""
   if not var1 then
      var2 = var5:use():getText("PromptToolbar", "GenerateButton")
   end
   local var180 = var1
   var180 = arg1
   local var183 = "isDisabled"
   local var184 = "isGenerating"
   local var185 = "onClick"
   local var186 = "onGenerate"
   local var191 = var1
   var191 = var180.omit(var180, {})
   local var193 = {}
   var193.OnClick = arg1.onClick
   local var196 = {}
   local var200 = {}
   var200.AnchorPoint = Vector2.new(1, 0.5)
   var200.Position = UDim2.fromScale(1, 0.5)
   var200.Size = var6:use("PromptToolbar").GenerateButtonSize
   var200.Text = var2
   var200.isDisabled = var0
   var200.isLoading = var1
   var200.onClick = arg1.onGenerate
   var196.GenerateButton = var3.createElement(var8, var200)
   return var3.createElement(var7, var191.join(var191, var193), var196)
end
