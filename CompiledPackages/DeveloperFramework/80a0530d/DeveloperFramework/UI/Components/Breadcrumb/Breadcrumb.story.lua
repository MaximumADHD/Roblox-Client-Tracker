local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)

local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local Breadcrumb = require(Framework.UI.Components.Breadcrumb)

local BreadcrumbStory = React.PureComponent:extend("BreadcrumbStory")
function BreadcrumbStory:init()
	self.state = {
		Editing = false,
		Text = self.props.InitialText,
	}
	self.onEdited = function(text: string)
		self:setState({
			Editing = false,
			Text = text,
		})
	end
	self.onPressed = function()
		if self.props.Editable then
			self:setState({
				Editing = true,
			})
		end
	end
end

function BreadcrumbStory:render()
	local props = self.props
	return React.createElement(Breadcrumb, {
		Delimiters = { "%.%.", "%." },
		Editing = self.state.Editing,
		GetImageProps = if props.Images then Breadcrumb.GetSelectorIcon else nil,
		OnPressed = self.onPressed,
		OnEdited = if props.Editable then self.onEdited else nil,
		Text = self.state.Text,
		Size = UDim2.fromOffset(300, 24),
		[React.Tag] = props[React.Tag],
	})
end

return {
	stories = {
		{
			name = "Single Element",
			story = function()
				return React.createElement(BreadcrumbStory, {
					InitialText = "Image",
				})
			end,
		},
		{
			name = "Multiple Elements",
			story = function()
				return React.createElement(BreadcrumbStory, {
					InitialText = "Frame.Contents.0.Image",
				})
			end,
		},
		{
			name = "Images",
			story = function()
				return React.createElement(BreadcrumbStory, {
					InitialText = "Frame $Dialog .. TextButton $Main . ImageLabel",
					Images = true,
				})
			end,
		},
		{
			name = "Editable",
			story = function()
				return React.createElement(BreadcrumbStory, {
					InitialText = "Frame $Dialog .. TextButton $Main . ImageLabel",
					Images = true,
					Editable = true,
				})
			end,
		},
		{
			name = "PropertyCellError",
			story = function()
				return if supportsStyleSheets
					then React.createElement(BreadcrumbStory, {
						InitialText = "Frame $Dialog .. TextButton $Main . ImageLabel",
						Images = true,
						Editable = true,
						[React.Tag] = "PropertyCellError",
					})
					else nil
			end,
		},
	},
}
