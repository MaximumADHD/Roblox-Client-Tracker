local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local Image = UI.Decoration.Image
local _TextLabel = UI.Decoration.TextLabel

-- local Icons = require(Plugin.Src.FamFamFam)
-- local Emoji = require(Plugin.Src.Emoji)

local Icon = Roact.PureComponent:extend("Icon")

export type Props = {
	LayoutOrder: number,
	Name: string,
}

type _Props = Props & {
	Analytics: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	TextSize: number,
	IconColor: Color3,
}

function Icon:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.Icon

	local decoration

	if props.Name:find("^rbxassetid://") or props.Name:find("^rbxasset://") then
		decoration = Roact.createElement(Image, {
			Size = style.Size,
			Image = props.Name,
			ImageColor3 = if props.Name:find("^rbxasset://") then style.IconColor else nil,
		})
	-- elseif props.Name:find("^emoji:") then
	-- 	local text = props.Name:sub(7, -1)
	-- 	local emoji = Emoji.getNamedEmoji(text)
	-- 	if not emoji and not text:match("^[a-zA-Z%-_]+$") then
	-- 		emoji = text
	-- 	elseif not emoji then
	-- 		emoji = "❌"
	-- 	end
	-- 	decoration = Roact.createElement(TextLabel, {
	-- 		TextSize = style.TextSize,
	-- 		Text = emoji,
	-- 		Size = style.Size,
	-- 	})
	-- else --Icon from spritesheet
	-- 	local imageProps = Icons.Lookup(props.Name) or Icons.Lookup("computer_error")
	-- 	decoration = Roact.createElement(Image, {
	-- 		Size = style.Size,
	-- 		Image = imageProps.Image,
	-- 		Style = {
	-- 			ImageRectSize = imageProps.ImageRectSize,
	-- 			ImageRectOffset = imageProps.ImageRectOffset,
	-- 		},
	-- 	})
	end

	return Roact.createElement(Pane, {
		Size = style.Size,
		LayoutOrder = props.LayoutOrder,
	}, {
		ChildDecoration = decoration,
	})

end

Icon = withContext({
	Analytics = Analytics,
	Stylizer = Stylizer,
})(Icon)

return Icon
