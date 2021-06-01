local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Components = SocialLibraries.Components
local AlertView = require(Components.AlertView.AlertView)
local AlertViewLabel = require(Components.AlertView.AlertViewLabel)
local AlertViewButton = require(Components.AlertView.AlertViewButton)
local AlertViewCheckbox = require(Components.AlertView.AlertViewCheckbox)
local AlertViewTextbox = require(Components.AlertView.AlertViewTextbox)
local FitFrameVertical = dependencies.RoactFitComponents.FitFrameVertical

local SCREEN_SIZE = Vector2.new(600, 480)
local BUTTON_HEIGHT = 50
local PADDING_BETWEEN = 24

local ControllingComponent = Roact.Component:extend("ControllingComponent")
function ControllingComponent:init()
	self.ref = Roact.createRef()
	self.state = {
		displayingModal = false,
		warningText = "",
	}
end

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
					Text = "Submission",
					TextSize = 36,
					Size = UDim2.new(1, 0, 0, 40),
					LayoutOrder = 0,
				}),
				BodyText = Roact.createElement(AlertViewLabel, {
					Text = "This is an example of some longer body text!",
					LayoutOrder = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				TextboxDisplay = Roact.createElement(FitFrameVertical, {
					width = UDim.new(1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					margin = {
						top = 0,
						left = 0,
						right = 0,
						bottom = 5,
					},
				}, {
					Textbox = Roact.createElement(AlertViewTextbox, {
						LayoutOrder = 1,
						[Roact.Ref] = self.ref,
					}),
					WarningText = (self.state.warningText  ~= "") and
					Roact.createElement(AlertViewLabel, {
						Text = self.state.warningText,
						LayoutOrder = 2,
						TextXAlignment = Enum.TextXAlignment.Left,
						Size = UDim2.new(1, 0, 0, 35),
						TextColor3 = styles.Theme.Alert.Color,
					}) or nil
				}),
				AcceptCheckbox = Roact.createElement(AlertViewCheckbox, {
					Text = "I accept.",
					checked = self.state.checkboxStatus,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 0, 50),
					onActivated = function()
						self:setState({
							checkboxStatus = not self.state.checkboxStatus
						})
					end
				}),
				ButtonContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 4,
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
					SubmitButton = Roact.createElement(AlertViewButton, {
						Text = "Submit",
						LayoutOrder = 1,
						onActivated = function()
							if #self.ref.current.Text < 5 then
								self:setState({
									warningText = "Your message must be at least 5 characters.",
								})
								return
							elseif not self.state.checkboxStatus then
								self:setState({
									warningText = "You must accept.",
								})
								return
							end
							print("Good submission, it was", self.ref.current.Text)
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
