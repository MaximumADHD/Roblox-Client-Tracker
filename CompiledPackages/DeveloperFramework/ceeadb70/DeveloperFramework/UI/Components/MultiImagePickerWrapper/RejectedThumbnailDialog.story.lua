local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local IconButton = require(Framework.UI.Components.IconButton)
local RejectedThumbnailDialog = require(Framework.UI.Components.MultiImagePickerWrapper.RejectedThumbnailDialog)

local style = require(script.Parent.style)

local RejectedThumbnailDialogStory = Roact.Component:extend("RejectedThumbnailDialogStory")

function RejectedThumbnailDialogStory:render()
	return Roact.createFragment({
		Button = Roact.createElement(IconButton, {
			AutomaticSize = Enum.AutomaticSize.X,
			Text = "Open RejectedThumbnailDialog",
			OnClick = function()
				self:setState({
					dialogOpen = true,
				})
			end,
		}),

		Dialog = self.state.dialogOpen and Roact.createElement(RejectedThumbnailDialog, {
			Theme = style,
			OnClose = function()
				self:setState({
					dialogOpen = false,
				})
			end,
			Files = { "doge.png", "cat.gif" },
		}),
	})
end

return RejectedThumbnailDialogStory
