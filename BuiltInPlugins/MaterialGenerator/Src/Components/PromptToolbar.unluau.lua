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
   local var127 = var1
   var127 = arg1
   local var130 = "isDisabled"
   local var131 = "isGenerating"
   local var132 = "onClick"
   local var133 = "onGenerate"
   local var138 = var1
   var138 = var127.omit(var127, {})
   local var140 = {}
   var140.OnClick = arg1.onClick
   local var143 = {}
   local var147 = {}
   var147.AnchorPoint = Vector2.new(1, 0.5)
   var147.Position = UDim2.fromScale(1, 0.5)
   var147.Size = var6:use("PromptToolbar").GenerateButtonSize
   var147.Text = var2
   var147.isDisabled = var0
   var147.isLoading = var1
   var147.onClick = arg1.onGenerate
   var143.GenerateButton = var3.createElement(var8, var147)
   return var3.createElement(var7, var138.join(var138, var140), var143)
end
