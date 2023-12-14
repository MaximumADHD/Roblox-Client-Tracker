-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.React)
local var1 = var0.PureComponent:extend("Tabs")
local var2 = require(script.Parent.importUIComponent)
local var3 = require(script.Parent.avatarCheckUIComponent)
function var1.init(arg1)
   local var0 = {}
   var0.currentTab = "Tab1"
   arg1.state = var0
end

function var1.render(arg1)
   local var158 = {}
   var158.Size = UDim2.new(1, 0, 1, 0)
   var158.BackgroundTransparency = 1
   local var166 = {}
   local var170 = {}
   var170.Size = UDim2.new(1, 0, 0, 30)
   var170.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
   local var182 = {}
   local var186 = {}
   var186.Size = UDim2.new(0.5, 0, 1, 0)
   var186.Position = UDim2.new(0, 0, 0, 0)
   var186.Text = "Import"
   var186.Font = Enum.Font.SourceSans
   var186.TextSize = 18
   var186.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
   var186.BorderSizePixel = 0
   function var0.Event.Activated(arg1)
      local var0 = {}
      var0.currentTab = "Tab1"
      arg1.state = var0
   end
   
   var182.Tab1 = var0.createElement("TextButton", var186)
   local var218 = {}
   var218.Size = UDim2.new(0.5, 0, 1, 0)
   var218.Position = UDim2.new(0.5, 0, 0, 0)
   var218.Text = "Check"
   var218.Font = Enum.Font.SourceSans
   var218.TextSize = 18
   var218.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
   var218.BorderSizePixel = 0
   function var0.Event.Activated()
      local var244 = {}
      var244.currentTab = "Tab1"
      arg1:setState(var244)
   end
   
   var182.Tab2 = var0.createElement("TextButton", var218)
   var166.Tabs = var0.createElement("Frame", var170, var182)
   local var252 = {}
   var252.Size = UDim2.new(1, 0, 1, 65506)
   var252.Position = UDim2.new(0, 0, 0, 30)
   var252.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
   local var270 = {}
   if arg1.state.currentTab == "Tab1" then
      local var0 = var0.createElement(var2) or var0.createElement(var3)
   end
   var270.Content = var0.createElement(var3)
   var166.Frame = var0.createElement("Frame", var252, var270)
   return var0.createElement("Frame", var158, var166)
end

return var1
