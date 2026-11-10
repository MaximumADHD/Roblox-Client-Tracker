--!strict

local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)

local IconButton = require(Framework.UI.Components.IconButton)

local useDialogWidget = require(script.Parent)

local function UseDialogWidgetStory()
	local modal, setModal = React.useState(false)
	local show, hide, visible = useDialogWidget({
		Contents = React.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Text = "HELLO!",
			TextScaled = true,
		}),
		Size = Vector2.new(400, 400),
		Modal = modal,
	})

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		[React.Tag] = "X-Column X-Fit",
	}, {
		ShowToggle = React.createElement(IconButton, {
			OnClick = function()
				if visible then
					hide()
				else
					show()
				end
			end,
			Text = `{if visible then "Hide" else "Show"} Dialog Widget`,
		}),
		ModalToggle = React.createElement(IconButton, {
			OnClick = function()
				setModal(function(prevModal)
					return not prevModal
				end)
			end,
			Text = `Modal: {if modal then "ON" else "OFF"}`,
		}),
	})
end

return {
	story = React.createElement(UseDialogWidgetStory),
}
