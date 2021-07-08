local Plugin = script.Parent.Parent.Parent
local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local TabSet = require(Plugin.Core.Components.TabSet)

local TabTestWrapper = Roact.PureComponent:extend("TabTestWrapper")

function TabTestWrapper:init()
    self.state = {
        currentTab = "Marketplace"
    }
    
    self.changeTab = function(tabName)
        self:setState(function()
            return {
                    currentTab = tabName 
            }
        end)
    end
end


function TabTestWrapper:render(props)
    return Roact.createElement(TabSet, {
        Size = UDim2.new(1,0,1,0),
        Position = UDim2.new(),
        CurrentWidth = 565.5,
        CurrentTab = self.state.currentTab,
        Tabs = {[1] = {
            Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
            Key = "Marketplace",
            Text = "Marketplace",},
        [2] = {
            Image = "rbxasset://textures/StudioToolbox/Tabs/Shop.png",
            Key = "Inventory",
            Text = "Inventory",}
        },
        onTabSelected = self.changeTab,
    })
end


return TabTestWrapper