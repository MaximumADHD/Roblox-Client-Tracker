local Roact = require(script.Parent.Parent.Parent.Roact)

local GroupRenameTextBox = Roact.Component:extend("GroupRenameTextBox")

function GroupRenameTextBox:init()
	self.textBoxRef = Roact.createRef()
end

function GroupRenameTextBox:render()
	return Roact.createElement("TextBox", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = self.props.Group.Name,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Right,
		TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),

		[Roact.Event.FocusLost] = function(gui, submitted)
			if submitted then
				self.props.Group.OnRenamed(gui.Text)
			else
				self.props.Group.OnRenamed()
			end
		end,

		[Roact.Ref] = self.textBoxRef,
	})
end

function GroupRenameTextBox:didMount()
	self.textBoxRef.current:CaptureFocus()
end

return GroupRenameTextBox