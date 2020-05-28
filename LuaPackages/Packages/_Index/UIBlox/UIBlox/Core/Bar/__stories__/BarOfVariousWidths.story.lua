local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)

local Bar = script.Parent.Parent
local Core = Bar.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

local ThreeSectionBar = require(Bar.ThreeSectionBar)
local IconButton = require(Core.Button.IconButton)

local App = UIBlox.App
local Images = require(App.ImageSet.Images)

local withStyle = require(UIBlox.Core.Style.withStyle)

local BarOfVariousWidths = Roact.PureComponent:extend("BarOfVariousWidths")

local iconSize = 20

function BarOfVariousWidths:init()
	self.ref = Roact.createRef()
	self.state = {
		barWidth = 400,
		widthThresholdIndex = 1,
	}

	self.changeWidth = function(newWidth)
		return function()
			self:setState({ barWidth = newWidth })
			if self.ref.current then
				self.ref.current.Size = UDim2.new(0, newWidth, 1, 0)
			end
		end
	end

	self.widthThresholds = { 320, 400, 600 }
end

function BarOfVariousWidths:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 400, 1, 0),
			[Roact.Ref] = self.ref,
			BackgroundTransparency = 1,
		}, {
			header = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						button = Roact.createElement(IconButton, {
							Size = UDim2.new(0, iconSize-4, 0, iconSize-4),
							icon = Images['icons/navigation/pushBack'],
							onActivated = function()
								local newWidth = self.widthThresholds[self.state.widthThresholdIndex]
								self:setState({ widthThresholdIndex = (self.state.widthThresholdIndex + 1) % 3 + 1})
								self.changeWidth(newWidth)()
							end,
							LayoutOrder = 2,
						}),
					}
				end,
				renderCenterChildren = function()
					return {
						TextLabel = Roact.createElement("TextLabel", {
							Text = "Click Buttons to Resize\nCurrent Size (px): " .. self.state.barWidth,
							Size = UDim2.new(0, 200, 0, 40),
							BackgroundTransparency = 1,
							TextColor3 = Color3.fromRGB(255,255,255),
							TextSize = 8,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}),
					}
				end,
				renderRightChildren = function()
					return {
						search = Roact.createElement(IconButton, {
							size = UDim2.new(0, iconSize-4, 0, iconSize-4),
							icon = Images['icons/common/search_small'],
							onActivated = self.changeWidth(320),
							LayoutOrder = 1,
						}),
						premium = Roact.createElement(IconButton, {
							size = UDim2.new(0, iconSize, 0, iconSize),
							icon = Images['icons/common/goldrobux_small'],
							onActivated = self.changeWidth(400),
							LayoutOrder = 2,
						}),
						alert = Roact.createElement(IconButton, {
							size = UDim2.new(0, iconSize, 0, iconSize),
							icon = Images['icons/common/notificationOn'],
							onActivated = self.changeWidth(600),
							LayoutOrder = 3,
						}),
					}
				end,
				BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
				BackgroundColor3 = theme.BackgroundUIContrast.Color,
				Size = UDim2.new(1, 0, 0, 48),
				Position = UDim2.new(0, 0, 0, 0),
			})
		})
	end)
end

return function(target)
	local handle = Roact.mount(Roact.createElement(StoryView, {}, {
		Story = Roact.createElement(BarOfVariousWidths),
	}), target, "BarOfVariousWidths")
	return function()
		Roact.unmount(handle)
	end
end
