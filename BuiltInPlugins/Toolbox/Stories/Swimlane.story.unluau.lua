-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Components.Categorization.Swimlane)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.Core.Components.Categorization.IconTile)
local function fun0(arg1)
   return function()
      local var28 = {}
      var28.Example = var1.createElement(var2, arg1)
      return var1.createElement(var3, {}, var28)
   end
end

local function fun1(arg1, arg2)
   local var0 = {}
   var0.BackgroundColor = Color3.fromRGB(math.random(255), math.random(255), math.random(255))
   var0.Image = "rbxassetid://6002241241"
   var0.Key = arg1
   var0.Title = arg2
   return var0
end

local var5 = {}
var5.summary = "A section with a title, horizontal list, and optional \'see all\' button"
local var6 = {}
var6.name = "Simple example"
var6.summary = "a general example with data"
local var56 = {}
local var58 = "This"
local var59 = "is"
local var60 = "a"
local var61 = "test"
var56.Data = {}
var56.Total = 123
var56.Title = "Just a bunch of Frames"
function var56.OnClickSeeAll()
   print("See All")
end

function var56.OnRenderItem(arg1, arg2)
   local var71 = {}
   var71.LayoutOrder = arg1
   var71.Size = UDim2.new(0, 100, 0, 100)
   var71.Text = arg2
   return var1.createElement("TextLabel", var71)
end

function var6.story(arg1, arg2)
   local var84 = {}
   var84.LayoutOrder = arg1
   var84.Size = UDim2.new(0, 100, 0, 100)
   var84.Text = arg2
   return var1.createElement("TextLabel", var84)
end

local var12 = {}
var12.name = "Icon Tiles"
var12.summary = "Tiles that represent products to buy"
local var13 = {}
function var59(arg1, arg2)
   local var0 = {}
   var0.BackgroundColor = Color3.fromRGB(math.random(255), math.random(255), math.random(255))
   var0.Image = "rbxassetid://6002241241"
   var0.Key = arg1
   var0.Title = arg2
   return var0
end

local var14 = var59("1", "Blonde Hair")
local var15 = fun1("2", "Cool Blonde Hair")
local var16 = fun1("3", "Original Blonde")
local var17 = fun1("4", "Blonde")
local var18 = fun1("5", "Blondie")
local var19 = fun1("6", "Bulond")
local var20 = fun1("7", "Blund")
local var21 = fun1("8", "Real Blonde")
local var22 = fun1("9", "Blond")
local var23 = fun1("10", "Blonde")
var13.Data = {}
var13.Title = "Check Out This Hair!"
var13.Total = 12341115
function var13.OnClickSeeAll()
   print("See All")
end

function var13.OnRenderItem(arg1, arg2)
   local var145 = {}
   var145.LayoutOrder = arg1
   var145.BackgroundColor = arg2.BackgroundColor
   var145.Image = arg2.Image
   var145.Key = arg2.Key
   var145.Title = arg2.Title
   var145.Size = UDim2.new(0, 90, 0, 105)
   function var145.OnClick()
      local var160 = {}
      var160.Example = var1.createElement(var2, arg1)
      return var1.createElement(var3, {}, var160)
   end
   
   return var1.createElement(var4, var145)
end

function var12.story(arg1, arg2)
   local var173 = {}
   var173.LayoutOrder = arg1
   var173.Size = UDim2.new(0, 100, 0, 100)
   var173.Text = arg2
   return var1.createElement("TextLabel", var173)
end

var5.stories = {}
return var5
