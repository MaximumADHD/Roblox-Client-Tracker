local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact

local ICON_MASK = "rbxasset://textures/ui/LuaChat/graphic/gr-mask-game-icon-48x48.png"
local DEFAULT_THUMBNAIL = "rbxasset://textures/ui/LuaChat/icons/share-game-thumbnail.png"

local MaskedIcon = Roact.PureComponent:extend("MaskedIcon")
MaskedIcon.defaultProps = {
	icon = DEFAULT_THUMBNAIL,
}

function MaskedIcon:render()
	local props = self.props

    return Roact.createElement("Frame", {
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
	}, {
		layout = Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),

		button = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = props.icon,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),

			mask = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = ICON_MASK,
				Size = UDim2.new(1, 0, 1, 0),
			})
		})
	})
end

return MaskedIcon
