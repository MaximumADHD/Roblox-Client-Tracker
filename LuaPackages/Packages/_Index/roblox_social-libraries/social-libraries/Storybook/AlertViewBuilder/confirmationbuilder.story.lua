local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local AlertViewBuilder = require(SocialLibraries.Components.AlertViewBuilder.AlertViewBuilder)

local ControllingComponent = Roact.Component:extend("ControllingComponent")
function ControllingComponent:init()
	self.state = {
		displayingModal = false,
	}
end

local SCREEN_SIZE = Vector2.new(800, 480)

function ControllingComponent:render()
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
		AlertView = Roact.createElement(AlertViewBuilder, {
			title = "Confirmation",
			bodyText = "Enter your message.",
			Visible = self.state.displayingModal,
			onModalClose = function()
				self:setState({
					displayingModal = false,
					warningText = Roact.None,
				})
			end,
			buttons = {
				{
					buttonType = ButtonType.Secondary,
					props = {
						text = "Cancel",
						onActivated = function()
							self:setState({
								warningText = Roact.None,
							})
							print("Cancelled!")
						end,
					}
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						text = "Submit",
						onActivated = function(texts, checkboxes)
							if #texts["Textbox1"] < 5 then
								self:setState({
									warningText = "Your message must be at least 5 characters.",
								})
								return true
							elseif not checkboxes[1] or checkboxes[2] then
								self:setState({
									warningText = "You must select the right checkboxes.",
								})
								return true
							end
							print("Good submission, it was", texts["Textbox1"])
							return false
						end,
					}
				},
			},
			checkboxes = {
				{
					label = "You must check this to proceed.",
				},
				{
					label = "You must not check this to proceed.",
				},
			},
			textboxes = {
				Textbox1 = {
					warningText = self.state.warningText,
					LayoutOrder = 1,
				},
			}
		})
	})
end

return Roact.createElement(ControllingComponent)
