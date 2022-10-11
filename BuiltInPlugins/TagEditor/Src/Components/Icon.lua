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
	if props.Name then
		if props.Name:find("^rbxassetid://") or props.Name:find("^rbxasset://") then
			decoration = Roact.createElement(Image, {
				Size = style.Size,
				Image = props.Name,
				ImageColor3 = if props.Name:find("^rbxasset://") then style.IconColor else nil,
			})
		end
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
