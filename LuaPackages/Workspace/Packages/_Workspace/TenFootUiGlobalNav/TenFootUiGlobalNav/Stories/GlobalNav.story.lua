local TenFootUiGlobalNav = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = TenFootUiGlobalNav.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local GlobalNav = require(script.Parent.Parent.Components.GlobalNav)

local optionGroupProps = {
	items = {
		{
			icon = Images["icons/common/search"],
			onActivated = function()
				print("Option 1 activated")
			end,
			label = "Search",
		},
		{
			icon = Images["icons/common/goldrobux"],
			onActivated = function()
				print("Option 2 activated")
			end,
			label = "Catalog",
		},
		{
			icon = Images["icons/common/settings"],
			onActivated = function()
				print("Option 3 activated")
			end,
			label = "Settings",
		},
	},
}

function getTabGroupProps(controls)
	local tabGroupProps = {
		items = {
			{
				title = "Home",
				icon = Images["icons/menu/home_on"],
				onActivated = function()
					print("Tab 1 activated")
				end,
				showRoundedBackground = controls.selectedTab == 1,
			},
			{
				title = "Games",
				icon = Images["icons/menu/games_on"],
				onActivated = function()
					print("Tab 2 activated")
				end,
				showRoundedBackground = controls.selectedTab == 2,
			},
			{
				title = "Friends",
				icon = Images["icons/menu/friendsOn"],
				onActivated = function()
					print("Tab 3 activated")
				end,
				showRoundedBackground = controls.selectedTab == 3,
			},
		},
	}
	return tabGroupProps
end

return {
	name = "Ten Foot UI Global Nav",
	summary = "The Global Nav will show up on every page of the 10ft UI",
	controls = { selectedTab = 1 },
	story = function(props)
		local tabGroupProps = getTabGroupProps(props.controls)

		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 100),
			BackgroundTransparency = 1,
		}, {
			GlobalNav = React.createElement(GlobalNav, {
				optionGroupProps = optionGroupProps,
				tabGroupProps = tabGroupProps,
			}),
		})
	end,
}
