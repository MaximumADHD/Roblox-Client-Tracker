local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)
local StoryItem = require(ReplicatedStorage.Packages.StoryComponents.StoryItem)

local Button = script.Parent.Parent
local Core = Button.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

local App = UIBlox.App
local Images = require(App.ImageSet.Images)

local withStyle = require(UIBlox.Core.Style.withStyle)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

local GenericButton = require(Button.GenericButton)

local GenericButtonOverviewComponent = Roact.PureComponent:extend("GenericButtonOverviewComponent")

function GenericButtonOverviewComponent:init()
	self.isMounted = false
	self.state = {
		isDisabled = false,
		isLoading = false,
		userInteractionEnabled = true,
	}

	self.toggleDisabled = function()
		if self.isMounted then
			self:setState({
				isDisabled = not self.state.isDisabled
			})
		end
	end

	self.toggleLoading = function()
		if self.isMounted then
			self:setState({
				isLoading = not self.state.isLoading
			})
		end
	end

	self.toggleUserInteraction = function()
		if self.isMounted then
			self:setState({
				userInteractionEnabled = not self.state.userInteractionEnabled
			})
		end
	end
end

function GenericButtonOverviewComponent:render()
	local isDisabled = self.state.isDisabled
	local isLoading = self.state.isLoading
	local userInteractionEnabled = self.state.userInteractionEnabled
	local buttonImage = Images["component_assets/circle_17"]
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			ButtonControlsFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 50),
				LayoutOrder = 1,
			}, {
				Grid = Roact.createElement("UIGridLayout", {
					CellSize = UDim2.new(0, 200, 0, 45),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				DisableControl = Roact.createElement("TextButton", {
					Text = self.state.disabled and "Enable Buttons" or "Disable Buttons",
					[Roact.Event.Activated] = self.toggleDisabled,
					LayoutOrder = 1,
				}),
				LoadingControl = Roact.createElement("TextButton", {
					Text = isLoading and "Load Buttons" or "Unload Buttons",
					[Roact.Event.Activated] = self.toggleLoading,
					LayoutOrder = 2,
				}),
				UserInteractionControl = Roact.createElement("TextButton", {
					Text = "userInteractionEnabled = "..tostring(userInteractionEnabled),
					[Roact.Event.Activated] = self.toggleUserInteraction,
					LayoutOrder = 2,
				}),
			}),
			Overview = Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Grid = Roact.createElement("UIGridLayout", {
					CellSize = UDim2.new(0, 300, 0, 200),
					FillDirectionMaxCells = 2,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 10),
					PaddingLeft = UDim.new(0, 20),
				}),
				GenericButtonOverview = Roact.createElement(StoryItem, {
					size = UDim2.new(0, 300, 0, 128),
					layoutOrder = 1,
					title = "Generic Button",
					subTitle = "<<internal>>",
				}, {
					Button = Roact.createElement(GenericButton, {
						Size = UDim2.new(0, 144, 0, 48),
						buttonImage = buttonImage,
						buttonStateColorMap = {
							[ControlState.Default] = "UIDefault",
							[ControlState.Hover] = "UIEmphasis",
						},
						contentStateColorMap = {
							[ControlState.Default] = "UIDefault",
						},
						isDisabled = isDisabled,
						isLoading = isLoading,
						userInteractionEnabled = userInteractionEnabled,
						onActivated = function()
							print "Generic Button Clicked!"
						end,
						onStateChanged = function(oldState, newState)
							print("state changed \n oldState:", oldState, " newState:", newState)
						end
					})
				}),
			})
		})
	end)
end

function GenericButtonOverviewComponent:didMount()
	self.isMounted = true
end

function GenericButtonOverviewComponent:willUnmount()
	self.isMounted = false
end

return function(target)
	local handle = Roact.mount(Roact.createElement(StoryView, {}, {
		Story = Roact.createElement(GenericButtonOverviewComponent),
	}), target, "Button")

	return function()
		Roact.unmount(handle)
	end
end
