local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Parent.React)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Dialog = require(Framework.UI.Components.Dialog)

function ResizingDialog()
	local open, setOpen = React.useState(false)
	local step, setStep = React.useState(1)

	React.useEffect(function()
		local loopTask = task.spawn(function()
			while true do
				task.wait(0.25)
				setStep(function(currentStep)
					return (currentStep % 3) + 1
				end)
			end
		end)

		return function()
			task.cancel(loopTask)
		end
	end, {})

	return React.createElement(Button, {
		Style = "Round",
		Text = "Open Dialog",
		Size = UDim2.fromOffset(120, 32),
		OnClick = function()
			setOpen(true)
		end,
	}, {
		Dialog = React.createElement(Dialog, {
			Title = "Resizing Dialog",
			Enabled = open,
			Size = Vector2.new(300, step * 100),
			OnClose = function()
				setOpen(false)
			end,
			Modal = true,
		}),
	})
end

return ResizingDialog
