local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local AlertViewBuilder = require(SocialLibraries.Components.AlertViewBuilder.AlertViewBuilder)

return Roact.createElement(AlertViewBuilder, {
	title = "Hello world!",
	bodyText = "This is a longer sentence that may appear in the description of an alert modal saying what to do. It may in fact be very long.",
	onModalOpen = function()
	end,
	onModalClose = function()
	end,
	buttons = {
		{
			buttonType = ButtonType.Secondary,
			props = {
				text = "Hi!",
				onActivated = function(texts, checkboxes)
					print("Button 1 was clicked, and Checkbox1 was ", checkboxes[1], " and Checkbox2 was ", checkboxes[2], "and the text was " .. texts["Textbox1"])
					if #texts["Textbox1"] < 10 then
						return true
					end

					return
				end,
			},
		},
		{
			buttonType = ButtonType.PrimarySystem,
			props = {
				text = "Hi2",
				onActivated = function() print("Clicked 2") end,
			},
		},
	},
	checkboxes = {
		{
			label = "This is a checkbox",
		},
		{
			label = "This is another one",
		},
		{
			label = "This is a third checkbox",
		}
	},
	textboxes = {
		Textbox1 = {
			belowText = "Test message below textbox",
			warningText = "This is warning text",
			LayoutOrder = 1,
		},
		Textbox2 = {
			belowText = "Another test message below textbox",
			warningText = "This is warning text",
			LayoutOrder = 2,
		},
	}
})
