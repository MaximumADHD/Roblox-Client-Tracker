--[[
	Specific component button used in the toolbar shown on hover in PromptSelectorWithPreview
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local Dash = Framework.Dash

export type Props = {
	Size: UDim2?,
	SizeConstraint: Enum.SizeConstraint?,
	ZIndex: number?,

	BackgroundTransparency: number?,
	BorderSizePixel: number?,

	Image: string?,
	Icon: string?,
}

type _Props = Props & {
	Stylizer: any,
}

type _Style = {
	ButtonIconColor: Color3,
	ButtonIconHoveredColor: Color3,
	ToolbarButtonBackgroundColor: Color3,
	ToolbarHeight: number,
}

local PreviewToolbarButton = Roact.PureComponent:extend("PreviewToolbarButton")

function PreviewToolbarButton:init()
	self.state = {
		isHovered = false,
	}

	self.onHovered = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onHoverEnded = function()
		self:setState({
			isHovered = false,
		})
	end
end

function PreviewToolbarButton:render()
	local props: _Props = self.props
	local state = self.state
	local style: _Style = props.Stylizer.PromptSelectorWithPreview
	local toolbaButtonSize = style.ToolbarHeight - 4
	local toolbarIconSize = toolbaButtonSize - 10

	local newProps = Dash.join(props, {
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		ZIndex = 4,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		[Roact.Event.MouseEnter] = self.onHovered,
		[Roact.Event.MouseLeave] = self.onHoverEnded,

		Image = "",
		Icon = Dash.None,
		Stylizer = Dash.None,
	})

	return Roact.createElement("ImageButton", newProps, {
		Background = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, toolbaButtonSize, 0, toolbaButtonSize),
			BackgroundTransparency = state.isHovered and 0 or 1,
			BorderSizePixel = 1,
			BackgroundColor3 = style.ToolbarButtonBackgroundColor,
		}, {
			Icon = Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, toolbarIconSize, 0, toolbarIconSize),
				ZIndex = 5,
				BackgroundTransparency = 1,
				BorderSizePixel = 1,
				Image = props.Icon,
				ImageColor3 = state.isHovered
					and style.ButtonIconHoveredColor
					or style.ButtonIconColor,
			}),
		}),
	})
end

PreviewToolbarButton = withContext({
	Stylizer = Stylizer,
})(PreviewToolbarButton)

return PreviewToolbarButton
