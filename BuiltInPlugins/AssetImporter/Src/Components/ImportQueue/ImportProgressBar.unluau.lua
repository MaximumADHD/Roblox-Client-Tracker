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
   local var221 = {}
   var221.currentFileIndex = tostring(0)
   local var227 = tostring(0)
   var221.totalFiles = var227
   var227 = var1:getText("ImportQueue", "Complete")
   local var4 = var0.Stylizer.ImportQueue
   local var5 = var4.Padding
   local var242 = {}
   var242.Size = var0.Size
   var242.LayoutOrder = var0.LayoutOrder
   var242.Layout = Enum.FillDirection.Vertical
   var242.VerticalAlignment = Enum.VerticalAlignment.Top
   var242.Padding = var5
   var242.Spacing = var5
   local var247 = {}
   local var251 = {}
   var251.LayoutOrder = 1
   var251.Size = UDim2.new(1, 0, 0, 0)
   var251.AutomaticSize = Enum.AutomaticSize.Y
   var251.Text = `{var1:getText("ImportQueue", "FilesRemaining2", var221)}- {var227}`
   var251.TextXAlignment = Enum.TextXAlignment.Left
   var251.TextWrapped = true
   var247.LoadingText = var1.createElement(var7, var251)
   local var266 = {}
   var266.Size = UDim2.new(1, 0, 0, var4.LoadingBarWidth)
   var266.Progress = 1
   var247.LoadingBar = var1.createElement(var6, var266)
   return var1.createElement(var5, var242, var247)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var221 = {}
   var221.currentFileIndex = tostring(0)
   local var227 = tostring(0)
   var221.totalFiles = var227
   var227 = var1:getText("ImportQueue", "Complete")
   local var4 = var0.Stylizer.ImportQueue
   local var5 = var4.Padding
   local var242 = {}
   var242.Size = var0.Size
   var242.LayoutOrder = var0.LayoutOrder
   var242.Layout = Enum.FillDirection.Vertical
   var242.VerticalAlignment = Enum.VerticalAlignment.Top
   var242.Padding = var5
   var242.Spacing = var5
   local var247 = {}
   local var251 = {}
   var251.LayoutOrder = 1
   var251.Size = UDim2.new(1, 0, 0, 0)
   var251.AutomaticSize = Enum.AutomaticSize.Y
   var251.Text = `{var1:getText("ImportQueue", "FilesRemaining2", var221)}- {var227}`
   var251.TextXAlignment = Enum.TextXAlignment.Left
   var251.TextWrapped = true
   var247.LoadingText = var1.createElement(var7, var251)
   local var266 = {}
   var266.Size = UDim2.new(1, 0, 0, var4.LoadingBarWidth)
   var266.Progress = 1
   var247.LoadingBar = var1.createElement(var6, var266)
   return var1.createElement(var5, var242, var247)
end

fun7 = var3.withContext
local var276 = {}
var276.Localization = var3.Localization
var276.Stylizer = var2.Style.Stylizer
var8 = fun7(var276)(var8)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.SessionQueue = arg1.Sessions.sessionQueue
   return var0
end, nil)(var8)
