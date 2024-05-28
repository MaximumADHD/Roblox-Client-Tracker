-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.LoadingBar
local var7 = var4.TextLabel
local var8 = var1.PureComponent:extend("ImportProgressBar")
local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var196 = {}
   var196.currentFileIndex = tostring(0)
   local var202 = tostring(0)
   var196.totalFiles = var202
   var202 = var1:getText("ImportQueue", "Complete")
   local var4 = var0.Stylizer.ImportQueue
   local var5 = var4.Padding
   local var217 = {}
   var217.Size = var0.Size
   var217.LayoutOrder = var0.LayoutOrder
   var217.Layout = Enum.FillDirection.Vertical
   var217.VerticalAlignment = Enum.VerticalAlignment.Top
   var217.Padding = var5
   var217.Spacing = var5
   local var222 = {}
   local var226 = {}
   var226.LayoutOrder = 1
   var226.Size = UDim2.new(1, 0, 0, 0)
   var226.AutomaticSize = Enum.AutomaticSize.Y
   var226.Text = `{var1:getText("ImportQueue", "FilesRemaining2", var196)}- {var202}`
   var226.TextXAlignment = Enum.TextXAlignment.Left
   var226.TextWrapped = true
   var222.LoadingText = var1.createElement(var7, var226)
   local var241 = {}
   var241.Size = UDim2.new(1, 0, 0, var4.LoadingBarWidth)
   var241.Progress = 1
   var222.LoadingBar = var1.createElement(var6, var241)
   return var1.createElement(var5, var217, var222)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var196 = {}
   var196.currentFileIndex = tostring(0)
   local var202 = tostring(0)
   var196.totalFiles = var202
   var202 = var1:getText("ImportQueue", "Complete")
   local var4 = var0.Stylizer.ImportQueue
   local var5 = var4.Padding
   local var217 = {}
   var217.Size = var0.Size
   var217.LayoutOrder = var0.LayoutOrder
   var217.Layout = Enum.FillDirection.Vertical
   var217.VerticalAlignment = Enum.VerticalAlignment.Top
   var217.Padding = var5
   var217.Spacing = var5
   local var222 = {}
   local var226 = {}
   var226.LayoutOrder = 1
   var226.Size = UDim2.new(1, 0, 0, 0)
   var226.AutomaticSize = Enum.AutomaticSize.Y
   var226.Text = `{var1:getText("ImportQueue", "FilesRemaining2", var196)}- {var202}`
   var226.TextXAlignment = Enum.TextXAlignment.Left
   var226.TextWrapped = true
   var222.LoadingText = var1.createElement(var7, var226)
   local var241 = {}
   var241.Size = UDim2.new(1, 0, 0, var4.LoadingBarWidth)
   var241.Progress = 1
   var222.LoadingBar = var1.createElement(var6, var241)
   return var1.createElement(var5, var217, var222)
end

fun7 = var3.withContext
local var251 = {}
var251.Localization = var3.Localization
var251.Stylizer = var2.Style.Stylizer
var8 = fun7(var251)(var8)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.SessionQueue = arg1.Sessions.sessionQueue
   return var0
end, nil)(var8)
