--[[
	A basic container. If no Background is provided, it is invisible.
	Does not have a Style and does not rely on Theme.

	Optional Props:
		Component Background: The Decoration to use as this component's background.
		Style BackgroundStyle: The Style to style the Background decoration with.
		StyleModifier BackgroundStyleModifier: The Modifier to index into the Background style with.

		number Margin: A constant margin all around the component, including the background.
		table Margin: Specific margin values for Top, Bottom, Left, and Right.

		number Padding: A constant padding all around the interior of the component.
		table Padding: Specific padding values for Top, Bottom, Left, and Right.

		UDim2 Size: The size of this component.
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		number ZIndex: The render index of this component.
		number LayoutOrder: The layout order of this component in a list.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util)
local Immutable = Util.Immutable
local Typecheck = Util.Typecheck

local Container = Roact.PureComponent:extend("Container")
Typecheck.wrap(Container, script)

function Container:render()
	local props = self.props

	local background = props.Background
	local backgroundStyle = props.BackgroundStyle
	local backgroundStyleModifier = props.BackgroundStyleModifier

	local padding = props.Padding
	local margin = props.Margin
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local zIndex = props.ZIndex
	local layoutOrder = props.LayoutOrder

	local children = props[Roact.Children] or {}
	if type(padding) == "number" then
		children = Immutable.JoinDictionaries(children, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, padding),
				PaddingBottom = UDim.new(0, padding),
				PaddingLeft = UDim.new(0, padding),
				PaddingRight = UDim.new(0, padding),
			})
		})
	elseif type(padding) == "table" then
		children = Immutable.JoinDictionaries(children, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, padding.Top),
				PaddingBottom = UDim.new(0, padding.Bottom),
				PaddingLeft = UDim.new(0, padding.Left),
				PaddingRight = UDim.new(0, padding.Right),
			})
		})
	end

	local marginComponent
	if margin then
		if type(margin) == "number" then
			marginComponent = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, margin),
				PaddingBottom = UDim.new(0, margin),
				PaddingLeft = UDim.new(0, margin),
				PaddingRight = UDim.new(0, margin),
			})
		elseif type(margin) == "table" then
			marginComponent = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, margin.Top),
				PaddingBottom = UDim.new(0, margin.Bottom),
				PaddingLeft = UDim.new(0, margin.Left),
				PaddingRight = UDim.new(0, margin.Right),
			})
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		Position = position,
		LayoutOrder = layoutOrder,
		AnchorPoint = anchorPoint,
		ZIndex = zIndex,
	}, {
		Margin = marginComponent,

		Decoration = background and Roact.createElement(background, {
			Style = backgroundStyle,
			StyleModifier = backgroundStyleModifier,
		}),

		Contents = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 2,
		}, children),
	})
end

return Container
