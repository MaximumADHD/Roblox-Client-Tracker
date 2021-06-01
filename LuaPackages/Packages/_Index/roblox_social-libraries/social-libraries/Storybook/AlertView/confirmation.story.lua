local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local Components = SocialLibraries.Components
local AlertView = require(Components.AlertView.AlertView)
local AlertViewLabel = require(Components.AlertView.AlertViewLabel)
local AlertViewButton = require(Components.AlertView.AlertViewButton)
local UIBlox = dependencies.UIBlox

local SCREEN_SIZE = Vector2.new(800, 480)

local ControllingComponent = Roact.Component:extend("ControllingComponent")
function ControllingComponent:init()
	self.state = {
		displayingModal = false,
	}
end
local BUTTON_HEIGHT = 50
local PADDING_BETWEEN = 24
function ControllingComponent:render()
	return UIBlox.Style.withStyle(function(styles)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, SCREEN_SIZE.X, 0, SCREEN_SIZE.Y)
		}, {
			TurnItOnButton = Roact.createElement("TextButton", {
				Text = "Click me!",
				[Roact.Event.Activated] = function()
					self:setState({
						displayingModal = true,
					})
				end,
				Size = UDim2.new(0, 50, 0, 20),
			}),
			AlertView = Roact.createElement(AlertView, {
				Visible = self.state.displayingModal,
			}, {
				Title = Roact.createElement(AlertViewLabel, {
					Text = "Confirm",
					TextSize = 36,
					TextColor3 = styles.Theme.TextDefault.Color,
					LayoutOrder = 0,
					Size = UDim2.new(1, 0, 0, 40),
				}),
				BodyText = Roact.createElement(AlertViewLabel, {
					TextColor3 = styles.Theme.TextDefault.Color,
					Text = "Are you sure you want to do that?",
					LayoutOrder = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				ButtonContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Padding = UDim.new(0, PADDING_BETWEEN),
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					CancelButton = Roact.createElement(AlertViewButton, {
						Text = "Cancel",
						LayoutOrder = 1,
						onActivated = function()
							self:setState({
								displayingModal = false,
							})
						end,
						Size = UDim2.new(0.5, -PADDING_BETWEEN / 2, 0, BUTTON_HEIGHT),
						secondary = true,
					}),
					BanButton = Roact.createElement(AlertViewButton, {
						Text = "Accept",
						LayoutOrder = 1,
						onActivated = function()
							print("Accepted!")
							self:setState({
								displayingModal = false,
							})
						end,
						Size = UDim2.new(0.5, -PADDING_BETWEEN / 2, 0, BUTTON_HEIGHT),
					})
				})
			})
		})
	end)
end

return Roact.createElement(ControllingComponent)
