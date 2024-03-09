-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.counter
local var4 = var2.UI
local var5 = var4.IconButton
local var6 = var4.Pane
local var7 = var4.TextLabel
local var8 = require(var0.Src.Reducers.MainReducer)
local var9 = require(var0.Src.Actions.ExampleIncrementCount)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ExampleCount = arg1.ExampleReducer.ExampleCount
   var0.ExampleString = arg1.ExampleReducer.ExampleString
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchExampleIncrementCount()
      arg1.dispatchExampleIncrementCount("Pressed!")
   end
   
   return var0
end)(function(arg1)
   local var0 = var3()
   local var38 = {}
   var38.LayoutOrder = 2
   var1.Tag = "X-Fit X-PadL X-RowM X-Middle"
   local var43 = {}
   local var47 = {}
   var47.LayoutOrder = var0()
   var47.Text = "Increment"
   function var47.OnClick()
      arg1.dispatchExampleIncrementCount("Pressed!")
   end
   
   local var55 = var1.Tag
   var1.Tag = "Primary X-Fit"
   var43.Button = var1.createElement(var5, var47)
   local var61 = {}
   var55 = var0
   local var62 = var55()
   var61.LayoutOrder = var62
   var62 = `Count: {arg1.ExampleCount}{arg1.ExampleString}`
   var61.Text = var62
   var1.Tag = "X-Fit"
   var43.Text = var1.createElement(var7, var61)
   return var1.createElement(var6, var38, var43)
end)
