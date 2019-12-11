--[[
	A somewhat generic button that provides support for hover/press states drawn
	from the current theme. Requires providing a text or image label as a child;
	has no content on its own. Children are provided via a render prop, because
	the press effect is achieved by altering the transparency of the button and
	its contents:

	createElement(ThemedButton, {
		renderChildren = function(transparency)
			return {
				Test = Roact.createElement("TextLabel", {
					TextTransparency = transparency,
					-- ...
				})
			}
		end,
		-- ...
	})
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local withStyle = UIBlox.Core.Style.withStyle

local ThemedButton = Roact.PureComponent:extend("ThemedButton")

ThemedButton.validateProps = t.strictInterface({
	normalThemeKey = t.string,
	hoverThemeKey = t.string,

	imageProps = t.strictInterface({
		Image = t.union(t.string, t.table),
		ScaleType = t.enum(Enum.ScaleType),
		SliceCenter = t.Rect,
	}),

	enabled = t.optional(t.boolean),
	renderChildren = t.callback,
	onActivated = t.callback,

	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	Size = t.optional(t.UDim2),
	Visible = t.optional(t.boolean),
})

ThemedButton.defaultProps = {
	imageProps = Assets.Images.RoundedRect,
	enabled = true,
}

function ThemedButton:init()
	self:setState({
		hover = false,
		press = false,
	})
end


function ThemedButton:render()
	local props = self.props
	local styleKey = props.normalThemeKey

	if props.enabled and self.state.hover then
		styleKey = props.hoverThemeKey
	end

	return withStyle(function(style)
		local buttonStyle = style.Theme[styleKey]
		assert(buttonStyle ~= nil, "theme key " .. styleKey .. " is nil")
		local transparency = divideTransparency(buttonStyle.Transparency, self.state.press and 2 or 1)
		if not props.enabled then
			transparency = 0.5
		end
		return Roact.createElement(ImageSetButton, {
			Visible = props.Visible,
			BackgroundTransparency = 1,
			ImageColor3 = buttonStyle.Color,
			Position = props.Position,
			Size = props.Size,
			AnchorPoint = props.AnchorPoint,
			ImageTransparency = transparency,
			LayoutOrder = props.LayoutOrder,
			ScaleType = props.imageProps.ScaleType,
			SliceCenter = props.imageProps.SliceCenter,
			Image = props.imageProps.Image,
			[Roact.Event.Activated] = function()
				if props.enabled then
					props.onActivated()
				end
			end,
			[Roact.Event.MouseEnter] = function()
				self:setState({
					hover = true,
				})
			end,
			[Roact.Event.MouseLeave] = function()
				self:setState({
					hover = false,
					press = false,
				})
			end,
			[Roact.Event.InputBegan] = function(rbx, input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					self:setState({
						press = true,
					})
				end
			end,
			[Roact.Event.InputEnded] = function(rbx, input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					self:setState({
						press = false,
					})
				end
			end,
		}, props.renderChildren(
			transparency,
			props.enabled and self.state.hover,
			props.enabled and self.state.press
		))
	end)
end

return ThemedButton
