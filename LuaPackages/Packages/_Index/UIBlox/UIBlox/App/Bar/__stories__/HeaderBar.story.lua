local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)
local StoryItem = require(ReplicatedStorage.Packages.StoryComponents.StoryItem)

local Bar = script.Parent.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local HeaderBar = require(Bar.HeaderBar)
local IconButton = require(UIBlox.App.Button.IconButton)
local TextButton = require(UIBlox.App.Button.TextButton)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local function BarDemo()
	return Roact.createElement(HeaderBar, {
		title = string.rep("Header Bar Story", 1),
		renderLeft = HeaderBar.renderLeft.backButton(function()
			print("navProps.navigation.pop()")
		end),
		renderRight = function()
			return Roact.createFragment({
				search = Roact.createElement(IconButton, {
					iconSize = IconSize.Medium,
					icon = Images["icons/common/search"],
					onActivated = function()
						print("Opening Search!")
					end,
					layoutOrder = 1,
				}),
				premium = Roact.createElement(IconButton, {
					iconSize = IconSize.Medium,
					icon = Images["icons/common/goldrobux"],
					onActivated = function()
						print("Oooh Shiny!")
					end,
					layoutOrder = 2,
				}),
				alert = Roact.createElement(IconButton, {
					iconSize = IconSize.Medium,
					icon = Images["icons/common/notificationOn"],
					onActivated = function()
						print("Alert!")
					end,
					layoutOrder = 3,
				}),
			})
		end,
	})
end

local function BarWithTextButtonsDemo()
	return Roact.createElement(HeaderBar, {
		title = string.rep("Header Bar Story", 1),
		renderLeft = function()
			return Roact.createFragment({
				search = Roact.createElement(TextButton, {
					text = "Action 1",
					onActivated = function()
						print("Opening Search!")
					end,
					layoutOrder = 1,
				}),
			})
		end,
		renderRight = function()
			return Roact.createFragment({
				search = Roact.createElement(TextButton, {
					text = "Action 2",
					onActivated = function()
						print("Opening Search!")
					end,
					layoutOrder = 1,
				}),
			})
		end,
	})
end

local function HeaderBarWithSearchBox()
	return Roact.createElement(HeaderBar, {
		title = "",
		renderLeft = HeaderBar.renderLeft.backButton(function()
			print("navProps.navigation.pop()")
		end),
		renderCenter = function()
			return Roact.createFragment({
				searchBoxMock = Roact.createElement(ImageSetComponent.Label, {
					Image = Images["component_assets/circle_17_stroke_1"],
					SliceCenter = Rect.new(8, 8, 9, 9),
					ScaleType = Enum.ScaleType.Slice,
					Size = UDim2.new(1, 0, 0, 36),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
				}),
			})
		end,
	})
end

local function HeaderBarWithOnlySearchBox()
	return Roact.createElement(HeaderBar, {
		title = "",
		renderLeft = nil,
		renderCenter = function()
			return Roact.createFragment({
				searchBoxMock = Roact.createElement(ImageSetComponent.Label, {
					Image = Images["component_assets/circle_17_stroke_1"],
					SliceCenter = Rect.new(8, 8, 9, 9),
					ScaleType = Enum.ScaleType.Slice,
					Size = UDim2.new(1, 0, 0, 36),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
				}),
			})
		end,
	})
end

return function(target)
	local handle = Roact.mount(Roact.createElement(StoryView, {}, {
		Story =	Roact.createElement(StoryItem, {
			size = UDim2.fromScale(1, 1),
			title = "HeaderBar",
			subTitle = "App.Bar.HeaderBar",
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 15),
			}),
			frame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(600, 45),
				LayoutOrder = 1,
			}, {
				headerBar = Roact.createElement(BarDemo)
			}),
			frame2 = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(361, 45),
				LayoutOrder = 2,
			}, {
				headerBar = Roact.createElement(BarDemo)
			}),
			frame3 = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(300, 45),
				LayoutOrder = 3,
			}, {
				headerBar = Roact.createElement(BarDemo)
			}),
			frame4 = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(600, 45),
				LayoutOrder = 4,
			}, {
				headerBar = Roact.createElement(BarWithTextButtonsDemo)
			}),
			frame5 = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(361, 45),
				LayoutOrder = 5,
			}, {
				headerBar = Roact.createElement(BarWithTextButtonsDemo)
			}),
			frame6 = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(300, 45),
				LayoutOrder = 6,
			}, {
				headerBar = Roact.createElement(BarWithTextButtonsDemo)
			}),
			frameHeaderBarWithSearchBoxForPhone = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(300, 45),
				LayoutOrder = 7,
			}, {
				headerBar = Roact.createElement(HeaderBarWithSearchBox)
			}),
			frameHeaderBarWithOnlySearchBoxForPhone = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(300, 45),
				LayoutOrder = 8,
			}, {
				headerBar = Roact.createElement(HeaderBarWithOnlySearchBox)
			}),
		}),
	}), target, "HeaderBar")
	return function()
		Roact.unmount(handle)
	end
end
