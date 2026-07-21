--!nonstrict
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

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton
local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle
local Foundation = require(CorePackages.Packages.Foundation)
local FFlagCoreUiMigrateUIBloxToFoundation = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCoreUiMigrateUIBloxToFoundation

local withSelectionCursorProvider = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.UNSTABLE.withCursorMigration
	else UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.Enums.CursorType
	else UIBlox.App.SelectionImage.CursorKind

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
	ButtonRef = t.optional(t.union(t.callback, t.table)),
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

function ThemedButton:renderWithSelectionCursor(getSelectionCursor)
	local props = self.props
	local styleKey = props.normalThemeKey

	if props.enabled and self.state.hover then
		styleKey = props.hoverThemeKey
	end

	return withFoundationOrUIBloxStyle(function(tokens)
		return {
			Theme = {
				BackgroundDefault = {
					Color = tokens.Color.Surface.Surface_0.Color3,
					Transparency = tokens.Color.Surface.Surface_0.Transparency,
				},
				BackgroundContrast = {
					Color = tokens.Color.Surface.Surface_100.Color3,
					Transparency = tokens.Color.Surface.Surface_100.Transparency,
				},
				BackgroundMuted = {
					Color = tokens.Color.Surface.Surface_200.Color3,
					Transparency = tokens.Color.Surface.Surface_200.Transparency,
				},
				BackgroundUIDefault = {
					Color = tokens.Color.Surface.Surface_300.Color3,
					Transparency = tokens.Color.Surface.Surface_300.Transparency,
				},
				BackgroundUIContrast = {
					Color = tokens.Color.OverMedia.OverMedia_0.Color3,
					Transparency = tokens.Color.OverMedia.OverMedia_0.Transparency,
				},
				BackgroundOnHover = {
					Color = tokens.Color.State.Hover.Color3,
					Transparency = tokens.Color.State.Hover.Transparency,
				},
				BackgroundOnPress = {
					Color = tokens.Color.State.Press.Color3,
					Transparency = tokens.Color.State.Press.Transparency,
				},
				UIDefault = {
					Color = tokens.Color.Shift.Shift_200.Color3,
					Transparency = tokens.Color.Shift.Shift_200.Transparency,
				},
				UIMuted = {
					Color = tokens.Color.Shift.Shift_100.Color3,
					Transparency = tokens.Color.Shift.Shift_100.Transparency,
				},
				UIEmphasis = {
					Color = tokens.Color.Shift.Shift_400.Color3,
					Transparency = tokens.Color.Shift.Shift_400.Transparency,
				},
				ContextualPrimaryDefault = {
					Color = tokens.Color.ActionEmphasis.Background.Color3,
					Transparency = tokens.Color.ActionEmphasis.Background.Transparency,
				},
				ContextualPrimaryContent = {
					Color = tokens.Color.ActionEmphasis.Foreground.Color3,
					Transparency = tokens.Color.ActionEmphasis.Foreground.Transparency,
				},
				SystemPrimaryDefault = {
					Color = tokens.Color.ActionSubEmphasis.Background.Color3,
					Transparency = tokens.Color.ActionSubEmphasis.Background.Transparency,
				},
				SystemPrimaryContent = {
					Color = tokens.Color.ActionSubEmphasis.Foreground.Color3,
					Transparency = tokens.Color.ActionSubEmphasis.Foreground.Transparency,
				},
				IconDefault = {
					Color = tokens.Color.Content.Default.Color3,
					Transparency = tokens.Color.Content.Default.Transparency,
				},
				IconEmphasis = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				IconOnHover = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				TextEmphasis = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				TextDefault = {
					Color = tokens.Color.Content.Default.Color3,
					Transparency = tokens.Color.Content.Default.Transparency,
				},
				TextMuted = {
					Color = tokens.Color.Content.Muted.Color3,
					Transparency = tokens.Color.Content.Muted.Transparency,
				},
				TextLink = {
					Color = tokens.Color.Content.Link.Color3,
					Transparency = tokens.Color.Content.Link.Transparency,
				},
				Divider = {
					Color = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = tokens.Color.Stroke.Emphasis.Transparency,
				},
				Overlay = {
					Color = tokens.Color.Common.Scrim.Color3,
					Transparency = tokens.Color.Common.Scrim.Transparency,
				},
				DropShadow = {
					Color = tokens.Color.Common.Shadow.Color3,
					Transparency = tokens.Color.Common.Shadow.Transparency,
				},
				NavigationBar = {
					Color = tokens.Color.Common.NavigationBar.Color3,
					Transparency = tokens.Color.Common.NavigationBar.Transparency,
				},
				PlaceHolder = {
					Color = tokens.Color.Common.Shimmer.Color3,
					Transparency = tokens.Color.Common.Shimmer.Transparency,
				},
				OnlineStatus = {
					Color = tokens.Color.System.Success.Color3,
					Transparency = tokens.Color.System.Success.Transparency,
				},
				OfflineStatus = {
					Color = tokens.Color.System.Neutral.Color3,
					Transparency = tokens.Color.System.Neutral.Transparency,
				},
				Success = {
					Color = tokens.Color.System.Success.Color3,
					Transparency = tokens.Color.System.Success.Transparency,
				},
				Alert = {
					Color = tokens.Color.System.Alert.Color3,
					Transparency = tokens.Color.System.Alert.Transparency,
				},
				Badge = {
					Color = tokens.Color.System.Contrast.Color3,
					Transparency = tokens.Color.System.Contrast.Transparency,
				},
				BadgeContent = {
					Color = tokens.Inverse.Content.Emphasis.Color3,
					Transparency = tokens.Inverse.Content.Emphasis.Transparency,
				},
				SecondaryDefault = {
					Color = tokens.Color.Extended.White.White_70.Color3,
					Transparency = tokens.Color.Extended.White.White_70.Transparency,
				},
				SecondaryOnHover = {
					Color = tokens.Color.Extended.White.White_100.Color3,
					Transparency = tokens.Color.Extended.White.White_100.Transparency,
				},
			},
		}
	end, function(style)
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
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRectNoInset),
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
				if
					input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch
				then
					self:setState({
						press = true,
					})
				end
			end,
			[Roact.Event.InputEnded] = function(rbx, input)
				if
					input.UserInputType == Enum.UserInputType.MouseButton1
					or input.UserInputType == Enum.UserInputType.Touch
				then
					self:setState({
						press = false,
					})
				end
			end,
			[Roact.Ref] = self.props.ButtonRef,
		}, props.renderChildren(transparency, props.enabled and self.state.hover, props.enabled and self.state.press))
	end)
end

function ThemedButton:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return ThemedButton
