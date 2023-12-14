-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.AudioTabs)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = require(var0.Core.Types.Category)
local var5 = var1.PureComponent:extend("AudioTabsStroyWrapper")
function var5.init(arg1)
   local var27 = {}
   var27.selectedTab = var4.SOUND_EFFECTS.name
   arg1.state = var27
   function arg1.OnTabSelect(arg1)
      local var33 = {}
      var33.selectedTab = arg1
      arg1:setState(var33)
   end
   
end

function var5.render(arg1)
   local var39 = {}
   var39.Size = UDim2.new(0, 330, 0, 30)
   var39.BackgroundTransparency = 1
   local var47 = {}
   local var51 = {}
   var51.SelectedTab = arg1.state.selectedTab
   var51.OnTabSelect = arg1.OnTabSelect
   var47.AudioTabs = var1.createElement(var2, var51)
   return var1.createElement("Frame", var39, var47)
end

local var6 = {}
var6.name = "Audio Tabs"
var6.summary = "Tab selection with round edges"
function var6.story()
   local var64 = {}
   var64.AudioTabs = var1.createElement(var5)
   return var1.createElement(var3, {}, var64)
end

return var6
