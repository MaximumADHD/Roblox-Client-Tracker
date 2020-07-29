local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)
local StoryItem = require(ReplicatedStorage.Packages.StoryComponents.StoryItem)

local Bar = script.Parent.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)
local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)
local RootHeaderBar = require(Bar.RootHeaderBar)
local IconButton = require(UIBlox.Core.Button.IconButton)

return function(target)
	local handle = Roact.mount(Roact.createElement(StoryView, {}, {
		Story = Roact.createElement(StoryItem, {
				size = UDim2.new(1, 0, 1, 0),
				title = "RootHeaderBar",
				subTitle = "App.Bar.RootHeaderBar",
			}, {
				Roact.createElement(RootHeaderBar, {
					title = "Root Header Bar Story Long Text Example To Test Truncation",
					renderRight = function()
						return Roact.createFragment({
							search = Roact.createElement(IconButton, {
								size = getIconSizeUDim2(IconSize.Small),
								icon = Images['icons/common/search_small'],
								onActivated = function()
									print "Opening Search!"
								end,
								LayoutOrder = 1,
							}),
							premium = Roact.createElement(IconButton, {
								size = getIconSizeUDim2(IconSize.Small),
								icon = Images['icons/common/goldrobux_small'],
								onActivated = function()
									print "Oooh Shiny!"
								end,
								LayoutOrder = 2,
							}),
							alert = Roact.createElement(IconButton, {
								size = getIconSizeUDim2(IconSize.Small),
								icon = Images['icons/common/notificationOn'],
								onActivated = function()
									print "Alert!"
								end,
								LayoutOrder = 3,
							}),
						})
					end,
				}),
			})
	}), target, "HeaderBar")
	return function()
		Roact.unmount(handle)
	end
end
