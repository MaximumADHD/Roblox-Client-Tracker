-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RunService")
local var1 = script.Parent.Parent.Parent.Parent.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).UI
local var4 = var3.TextLabel
local var5 = var3.LoadingBar
local var6 = var2.Component:extend("LoadingBarWrapper")
function var6.init(arg1, arg2)
   local var25 = {}
   var25.progress = 0
   var25.time = 0
   arg1:setState(var25)
end

function var6.loadUntil(arg1, arg2)
   while arg1.state.progress < arg2 do
      while arg1.isMounted do
         local var0 = arg1.state.time + var0.RenderStepped:Wait()
         local var41 = {}
         var41.time = var0
         var41.progress = (var0) / arg1.props.loadingTime
         arg1:setState(var41)
      end
   end
end

function var6.didMount(arg1)
   arg1.isMounted = true
   spawn(function(arg1, arg2)
      local var51 = {}
      var51.progress = 0
      var51.time = 0
      arg1:setState(var51)
   end)
end

function var6.willUnmount(arg1)
   arg1.isMounted = false
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = math.min(math.max(arg1.state.progress, 0), 1)
   local var79 = {}
   var79.BackgroundTransparency = 1
   var79.Size = var0.Size
   var79.Position = var0.Position
   local var83 = {}
   local var87 = {}
   var87.Position = UDim2.new(0, 0, 0, 65506)
   var87.Size = UDim2.new(1, 0, 0, 20)
   var87.Text = var0.loadingText ... " ( " ... math.floor(var1 * 100 + 0.5) ... "% )"
   var87.TextXAlignment = Enum.TextXAlignment.Center
   var87.TextYAlignment = Enum.TextYAlignment.Center
   var83.LoadingTitle = var2.createElement(var4, var87)
   local var106 = {}
   var106.Progress = var1
   var106.Size = UDim2.new(1, 0, 1, 0)
   var83.LoadingBar = var2.createElement(var5, var106)
   return var2.createElement("Frame", var79, var83)
end

return var6
