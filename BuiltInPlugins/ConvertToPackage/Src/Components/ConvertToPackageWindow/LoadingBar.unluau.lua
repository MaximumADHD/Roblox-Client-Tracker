-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("RunService")
local var2 = var0.Packages
local var3 = require(var2.Framework)
local var4 = require(var2.Roact)
local var5 = var3.ContextServices
local var6 = require(var0.Src.Util.Constants)
local var7 = var3.UI.Pane
local var8 = var4.Component:extend("LoadingBar")
function var8.init(arg1, arg2)
   local var31 = {}
   var31.progress = 0
   var31.time = 0
   arg1:setState(var31)
end

function var8.loadUntil(arg1, arg2)
   while arg1.state.progress < arg2 do
      while arg1.isMounted do
         local var0 = arg1.state.time + var1.RenderStepped:Wait()
         local var47 = {}
         var47.time = var0
         var47.progress = (var0) / arg1.props.loadingTime
         arg1:setState(var47)
      end
   end
end

function var8.didMount(arg1)
   arg1.isMounted = true
   spawn(function(arg1, arg2)
      local var57 = {}
      var57.progress = 0
      var57.time = 0
      arg1:setState(var57)
   end)
end

function var8.willUnmount(arg1)
   arg1.isMounted = false
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = math.min(math.max(arg1.state.progress, 0), 1)
   local var86 = {}
   var86.BackgroundTransparency = 1
   var86.Size = var0.Size
   var86.Position = var0.Position
   local var90 = {}
   local var94 = {}
   var94.BackgroundTransparency = 1
   var94.Font = var6.FONT
   var94.Position = UDim2.new(0, 0, 0, 65506)
   var94.Size = UDim2.new(1, 0, 0, 20)
   var94.Text = var0.loadingText ... " ( " ... math.floor(var2 * 100 + 0.5) ... "% )"
   var94.TextColor3 = var1.loading.text
   var94.TextSize = var6.FONT_SIZE_MEDIUM
   var94.TextXAlignment = Enum.TextXAlignment.Center
   var94.TextYAlignment = Enum.TextYAlignment.Center
   var90.LoadingTitle = var4.createElement("TextLabel", var94)
   local var120 = {}
   var120.Style = "BorderBox"
   local var122 = {}
   local var126 = {}
   var126.Style = "Box"
   local var128 = var1.loading
   var126.BackgroundColor = var128.bar
   var128 = var2
   var126.Size = UDim2.new(var128, 0, 1, 0)
   var122.LoadingBar = var4.createElement(var7, var126)
   var90.LoadingBackgroundBar = var4.createElement(var7, var120, var122)
   return var4.createElement("Frame", var86, var90)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = math.min(math.max(arg1.state.progress, 0), 1)
   local var86 = {}
   var86.BackgroundTransparency = 1
   var86.Size = var0.Size
   var86.Position = var0.Position
   local var90 = {}
   local var94 = {}
   var94.BackgroundTransparency = 1
   var94.Font = var6.FONT
   var94.Position = UDim2.new(0, 0, 0, 65506)
   var94.Size = UDim2.new(1, 0, 0, 20)
   var94.Text = var0.loadingText ... " ( " ... math.floor(var2 * 100 + 0.5) ... "% )"
   var94.TextColor3 = var1.loading.text
   var94.TextSize = var6.FONT_SIZE_MEDIUM
   var94.TextXAlignment = Enum.TextXAlignment.Center
   var94.TextYAlignment = Enum.TextYAlignment.Center
   var90.LoadingTitle = var4.createElement("TextLabel", var94)
   local var120 = {}
   var120.Style = "BorderBox"
   local var122 = {}
   local var126 = {}
   var126.Style = "Box"
   local var128 = var1.loading
   var126.BackgroundColor = var128.bar
   var128 = var2
   var126.Size = UDim2.new(var128, 0, 1, 0)
   var122.LoadingBar = var4.createElement(var7, var126)
   var90.LoadingBackgroundBar = var4.createElement(var7, var120, var122)
   return var4.createElement("Frame", var86, var90)
end

fun5 = var5.withContext
local var138 = {}
var138.Stylizer = var5.Stylizer
var8 = fun5(var138)(var8)
return var8
