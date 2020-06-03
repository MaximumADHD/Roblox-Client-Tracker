local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)

local Bar = script.Parent.Parent
local Core = Bar.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

local ThreeSectionBar = require(Bar.ThreeSectionBar)
local IconButton = require(Core.Button.IconButton)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)

local App = UIBlox.App
local Images = require(App.ImageSet.Images)

local withStyle = require(UIBlox.Core.Style.withStyle)

local BarWithoutBackButton = Roact.PureComponent:extend("BarWithoutBackButton")

local iconSize = 20

function BarWithoutBackButton:render()
	return withStyle(function(stylePalette)

		local theme = stylePalette.Theme
		local font = stylePalette.Font

		local renderLeftChildren = function()
			return {
				GenericTextLabel = Roact.createElement(GenericTextLabel, {
					Text = "Title Bar",
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0, 200, 0, 40),
					colorStyle = theme.SystemPrimaryDefault,
					fontStyle = font.Title,
					fluidSizing = true,
					LayoutOrder = 2,
				}),
			}
		end

		local renderRightChildren = function()
			return {
				search = Roact.createElement(IconButton, {
					size = UDim2.new(0, iconSize-4, 0, iconSize-4),
					icon = Images['icons/common/search_small'],
					onActivated = function()
						print "Opening Search!"
					end,
					LayoutOrder = 1,
				}),
				premium = Roact.createElement(IconButton, {
					size = UDim2.new(0, iconSize, 0, iconSize),
					icon = Images['icons/common/goldrobux_small'],
					onActivated = function()
						print "Oooh Shiny!"
					end,
					LayoutOrder = 2,
				}),
				alert = Roact.createElement(IconButton, {
					size = UDim2.new(0, iconSize, 0, iconSize),
					icon = Images['icons/common/notificationOn'],
					onActivated = function()
						print "Alert!"
					end,
					LayoutOrder = 3,
				}),
			}
		end

		return Roact.createElement(ThreeSectionBar, {
			renderLeftChildren = renderLeftChildren,
			renderCenterChildren = nil,
			renderRightChildren = renderRightChildren,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			Size = UDim2.new(1, 0, 0, 40),
			Position = UDim2.new(0, 0, 0, 0),
		})
	end)
end

return function(target)
	local handle = Roact.mount(Roact.createElement(StoryView, {}, {
		Story = Roact.createElement(BarWithoutBackButton),
	}), target, "BarWithoutBackButton")
	return function()
		Roact.unmount(handle)
	end
end
