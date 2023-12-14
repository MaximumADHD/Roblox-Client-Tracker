-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.src.Constants)
local var3 = require(var0.src.components.AvatarPrompt)
local var4 = require(var0.src.components.LoadingPrompt)
local var5 = require(var0.src.components.ErrorPrompt)
local var6 = require(var0.src.components.RedirectRigPrompt)
local function fun0(arg1)
   if arg1 ~= var2.SCREENS.AVATAR then
      local var0 = false
   end
   return true
end

local function fun1(arg1)
   if arg1 ~= var2.SCREENS.LOADING then
      local var0 = false
   end
   return true
end

local function fun2(arg1)
   if arg1 ~= var2.SCREENS.ERROR then
      local var0 = false
   end
   return true
end

local function fun3(arg1)
   if arg1 ~= var2.SCREENS.REDIRECT_RIG then
      local var0 = false
   end
   return true
end

local var7 = var1.Component:extend("AvatarImporter")
function var7.render(arg1)
   local var0 = arg1.props.screen
   local var404 = {}
   var404.BackgroundTransparency = 1
   var404.Size = UDim2.new(1, 0, 1, 0)
   local var412 = {}
   if var0 ~= var2.SCREENS.AVATAR then
      local var0 = false
   end
   var412.AvatarPrompt = true and var1.createElement(var3)
   if var0 ~= var2.SCREENS.LOADING then
      local var0 = false
   end
   var412.LoadingPrompt = true and var1.createElement(var4)
   if var0 ~= var2.SCREENS.ERROR then
      local var0 = false
   end
   var412.ErrorPrompt = true and var1.createElement(var5)
   if var0 ~= var2.SCREENS.REDIRECT_RIG then
      local var0 = false
   end
   var412.RedirectRigPrompt = true and var1.createElement(var6)
   return var1.createElement("Frame", var404, var412)
end

return require(var0.Packages.RoactRodux).connect(function(arg1)
   arg1 = arg1 or {}
   local var0 = {}
   var0.screen = arg1.plugin.screen
   return var0
end)(var7)
