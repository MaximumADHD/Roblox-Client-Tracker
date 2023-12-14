-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Button
local var5 = var1.PureComponent:extend("MyJiraTicket")
local function var6()
   local var0 = Random.new()
   local var1 = Instance.new("Part")
   var1.Name = "My part"
   var1.Color = Color3.fromRGB(27, 143, 143)
   local var2 = var0:NextInteger(65526, 10)
   local var3 = 0
   local var4 = var0:NextInteger(65526, 10)
   var1.Position = var1.Position + Vector3.new()
   var1.Parent = workspace
end

local function fun1(arg1)
   local var52 = {}
   var52.Text = arg1.props.Localization:getText("TutorialComponents", "MyJiraTicket")
   var52.OnClick = var6
   return var1.createElement(var4, var52)
end

function var5.render(arg1)
   local var52 = {}
   var52.Text = arg1.props.Localization:getText("TutorialComponents", "MyJiraTicket")
   var52.OnClick = var6
   return var1.createElement(var4, var52)
end

fun1 = var3.withContext
local var59 = {}
var59.Localization = var3.Localization
var5 = fun1(var59)(var5)
return var5
