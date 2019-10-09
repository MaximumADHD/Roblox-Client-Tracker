local ButtonRoot = script.Parent.Parent
local CoreRoot = ButtonRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local DarkTheme = require(Packages.UIBloxResources.UIBloxStyle.Themes.DarkTheme)
local Gotham = require(Packages.UIBloxResources.UIBloxStyle.Fonts.Gotham)

local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local withStyle = require(UIBloxRoot.Style.withStyle)
local OverviewStoryItem = require(UIBloxRoot.Story.OverviewStoryItem)
local ControlState = require(UIBloxRoot.Core.Control.Enum.ControlState)

local GenericButton = require(ButtonRoot.GenericButton)

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
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		},{
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			ButtonControlsFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 50),
				LayoutOrder = 1,
			},{
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
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
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
				GenericButtonOverview = Roact.createElement(OverviewStoryItem, {
					size = UDim2.new(0, 300, 0, 128),
					layoutOrder = 1,
					label = "Generic Button",
					componentName = "<<internal>>",
				}, {
					Button = Roact.createElement(GenericButton, {
						Size = UDim2.new(0, 144, 0, 48),
						buttonImage = "buttons/buttonFill",
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
	local handle = Roact.mount(Roact.createElement(StyleProvider,
	{
		style = {
			Theme = DarkTheme,
			Font = Gotham,
		},
	},{
		Story = Roact.createElement(GenericButtonOverviewComponent),
	}),target, "Button")

	return function()
		Roact.unmount(handle)
	end
end
