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
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var38 = {}
   var38.currentFileIndex = tostring(0)
   local var44 = tostring(0)
   var38.totalFiles = var44
   var44 = var1:getText("ImportQueue", "Complete")
   local var4 = var0.Stylizer.ImportQueue
   local var5 = var4.Padding
   local var59 = {}
   var59.Size = var0.Size
   var59.LayoutOrder = var0.LayoutOrder
   var59.Layout = Enum.FillDirection.Vertical
   var59.VerticalAlignment = Enum.VerticalAlignment.Top
   var59.Padding = var5
   var59.Spacing = var5
   local var64 = {}
   local var68 = {}
   var68.LayoutOrder = 1
   var68.Size = UDim2.new(1, 0, 0, 0)
   var68.AutomaticSize = Enum.AutomaticSize.Y
   var68.Text = `{var1:getText("ImportQueue", "FilesRemaining2", var38)}- {var44}`
   var68.TextXAlignment = Enum.TextXAlignment.Left
   var68.TextWrapped = true
   var64.LoadingText = var1.createElement(var7, var68)
   local var83 = {}
   var83.Size = UDim2.new(1, 0, 0, var4.LoadingBarWidth)
   var83.Progress = 1
   var64.LoadingBar = var1.createElement(var6, var83)
   return var1.createElement(var5, var59, var64)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var38 = {}
   var38.currentFileIndex = tostring(0)
   local var44 = tostring(0)
   var38.totalFiles = var44
   var44 = var1:getText("ImportQueue", "Complete")
   local var4 = var0.Stylizer.ImportQueue
   local var5 = var4.Padding
   local var59 = {}
   var59.Size = var0.Size
   var59.LayoutOrder = var0.LayoutOrder
   var59.Layout = Enum.FillDirection.Vertical
   var59.VerticalAlignment = Enum.VerticalAlignment.Top
   var59.Padding = var5
   var59.Spacing = var5
   local var64 = {}
   local var68 = {}
   var68.LayoutOrder = 1
   var68.Size = UDim2.new(1, 0, 0, 0)
   var68.AutomaticSize = Enum.AutomaticSize.Y
   var68.Text = `{var1:getText("ImportQueue", "FilesRemaining2", var38)}- {var44}`
   var68.TextXAlignment = Enum.TextXAlignment.Left
   var68.TextWrapped = true
   var64.LoadingText = var1.createElement(var7, var68)
   local var83 = {}
   var83.Size = UDim2.new(1, 0, 0, var4.LoadingBarWidth)
   var83.Progress = 1
   var64.LoadingBar = var1.createElement(var6, var83)
   return var1.createElement(var5, var59, var64)
end

fun0 = var3.withContext
local var93 = {}
var93.Localization = var3.Localization
var93.Stylizer = var2.Style.Stylizer
var8 = fun0(var93)(var8)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.SessionQueue = arg1.Sessions.sessionQueue
   return var0
end, nil)(var8)
