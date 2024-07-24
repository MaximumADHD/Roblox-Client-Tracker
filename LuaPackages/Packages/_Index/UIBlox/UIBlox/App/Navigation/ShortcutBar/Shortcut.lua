local ControllerBar = script.Parent
local Navigation = ControllerBar.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local useStyle = require(UIBlox.Core.Style.useStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local KeyLabel = require(App.Menu.KeyLabel.KeyLabel)

local ProgressIconAnimated = require(script.Parent.ProgressIconAnimated)
local Types = require(script.Parent.Types)

type IconProps = {
	layoutOrder: number,
	itemProps: Types.ShortcutPublicProps,
}

local defaultProps = {
	iconLabelGap = 6,
	actionTextSpacingLeading = 12,
}

local defaultPublicProps = {
	hasProgress = false,
	animationTriggerTime = 0.3,
	animationKeyHoldingTime = 1.5,
	animationCoolDownTime = 0.75,
}

local function renderIcon(props: IconProps, style)
	local layoutOrder = props.layoutOrder
	local itemProps = props.itemProps

	local frameSize = getIconSize(IconSize.Medium)
	local hasProgress = itemProps.hasProgress

	local progressProps: Types.ShortcutProgressProps
	if hasProgress then
		progressProps = itemProps :: Types.ShortcutProgressProps
	end

	local icon = itemProps.icon

	local automaticSize = nil
	local isKeyCode = typeof(icon) == "EnumItem"
	local isKeyCodeList = typeof(icon) == "table" and #icon > 0
	-- Icon should accommodate KeyLabels and other elements that vary in size
	if isKeyCode or isKeyCodeList then
		automaticSize = Enum.AutomaticSize.X
	end

	local image: React.ReactElement
	-- Generate KeyLabels for KeyCode or list of KeyCodes
	if isKeyCode then
		image = React.createElement(KeyLabel, {
			keyCode = icon :: Enum.KeyCode,
			iconThemeKey = "IconEmphasis",
		})
	elseif isKeyCodeList then
		local children: { [string]: React.React_Node } = {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
		}
		for index, keyCode in icon :: { [number]: Enum.KeyCode } do
			children["KeyLabel" .. index] = React.createElement(KeyLabel, {
				keyCode = keyCode,
				LayoutOrder = index,
				iconThemeKey = "IconEmphasis",
			})
		end
		image = React.createElement("Frame", {
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
		}, children)
	else
		image = React.createElement(ImageSetComponent.Label, {
			Size = UDim2.fromScale(1, 1),
			Image = icon,
			ImageColor3 = style.Theme.TextEmphasis.Color,
			ImageTransparency = style.Theme.TextEmphasis.Transparency,
			BackgroundTransparency = 1,
		})
	end

	return React.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.fromOffset(frameSize, frameSize),
		AutomaticSize = automaticSize,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		ProgressIcon = if hasProgress
			then React.createElement(ProgressIconAnimated, progressProps :: Types.AnimationProps)
			else nil,
		Image = if hasProgress then nil else image,
	})
end

local function Shortcut(providedProps: Types.ShortcutProps)
	local props: Types.ShortcutProps = Object.assign({}, defaultProps, providedProps)
	local publicProps: Types.ShortcutPublicProps = Object.assign({}, defaultPublicProps, props.publicProps)

	local style = useStyle()
	local index = props.index

	return React.createElement("Frame", {
		LayoutOrder = index,
		Size = UDim2.fromOffset(0, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, props.iconLabelGap),
		}),
		ActionText = if publicProps.actionText
			then React.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(0, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, props.actionTextSpacingLeading),
				}),
				Label = React.createElement(GenericTextLabel, {
					Size = UDim2.fromOffset(0, 0),
					AutomaticSize = Enum.AutomaticSize.XY,
					Text = publicProps.actionText,
					colorStyle = style.Theme.TextEmphasis,
					fontStyle = style.Font.SubHeader1,
					BackgroundTransparency = 1,
				}),
			})
			else nil,
		Icon = renderIcon({
			layoutOrder = 2,
			itemProps = publicProps,
		}, style),
		LabelText = React.createElement(GenericTextLabel, {
			LayoutOrder = 3,
			Size = UDim2.fromOffset(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = publicProps.text,
			colorStyle = style.Theme.TextEmphasis,
			fontStyle = style.Font.SubHeader1,
			BackgroundTransparency = 1,
		}),
	})
end

return Shortcut
