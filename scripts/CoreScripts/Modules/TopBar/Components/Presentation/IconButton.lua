local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()
local FFlagAddUILessMode = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant = SharedFlags.FIntAddUILessModeVariant
local FFlagTopBarStyleUseDisplayUIScale = SharedFlags.FFlagTopBarStyleUseDisplayUIScale

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)

local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Cryo = require(CorePackages.Packages.Cryo)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Core.Style.withStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local Images = UIBlox.App.ImageSet.Images
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local ReactOtter = require(CorePackages.Packages.ReactOtter)

local Foundation = require(CorePackages.Packages.Foundation)
local withCursor = if FFlagAdaptUnibarAndTiltSizing then Foundation.Hooks.withCursor else nil :: never
local ICON_BUTTON_CURSOR = if FFlagAdaptUnibarAndTiltSizing then Foundation.Enums.CursorType.SkinToneCircle else nil :: never

local TopBar = script.Parent.Parent.Parent
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()

local FlashingDot = require(script.Parent.FlashingDot)
local FlashingDotV2 = require(script.Parent.FlashingDotV2)
local GetFFlagFlashingDotUseAsyncInit = require(CoreGui.RobloxGui.Modules.Flags.GetFFlagFlashingDotUseAsyncInit)
local ChromeEnabled = require(CoreGui.RobloxGui.Modules.Chrome.Enabled)()
local isNewTiltIconEnabled = require(CoreGui.RobloxGui.Modules.isNewTiltIconEnabled)
local Constants = require(script.Parent.Parent.Parent.Constants)
local GetFFlagChromeUsePreferredTransparency = SharedFlags.GetFFlagChromeUsePreferredTransparency

local IconButton = Roact.PureComponent:extend("IconButton")

local OVERLAY_ASSET = Images["component_assets/circle_17"]

IconButton.validateProps = t.strictInterface({
	icon = t.union(t.string, t.table),
	iconSize = t.union(t.number, t.UDim2, t.table),
	enableFlashingDot = t.optional(t.boolean),
	useIconScaleAnimation = t.optional(t.boolean),
	onActivated = t.callback,
	onHover = t.optional(t.callback),
	onHoverEnd = t.optional(t.callback),
	backgroundTransparency = t.optional(t.number),
	backgroundColor3 = t.optional(t.Color3),
	backgroundCornerRadius = t.optional(t.UDim),
	forwardRef = if ChromeEnabled and FFlagTiltIconUnibarFocusNav then t.optional(t.any) else nil :: never,
	onSelectionChanged = if ChromeEnabled and FFlagTiltIconUnibarFocusNav then t.optional(t.callback) else nil :: never,
	nextSelectionRightRef = if ChromeEnabled and FFlagTiltIconUnibarFocusNav then t.optional(t.any) else nil :: never,
	modal = if FFlagAddUILessMode and FIntAddUILessModeVariant == 2 then t.optional(t.boolean) else nil :: never,
})

function AnimatedScaleIcon(props)
	local sizeTransition, setSizeTransition = ReactOtter.useAnimatedBinding(props.iconSize)

	React.useEffect(function()
		setSizeTransition(ReactOtter.spring(props.iconSize, {
			dampingRatio = 1,
			frequency = 1 / 0.35,
		}))
		return function() end
	end, { props.iconSize })

	return Roact.createElement(ImageSetLabel, {
		Size = sizeTransition:map(function(v)
			return UDim2.fromOffset(v, v)
		end),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = props.icon,
		ImageColor3 = props.style.Theme.IconEmphasis.Color,
		ImageTransparency = props.style.Theme.IconEmphasis.Transparency,
		ZIndex = 1,
	})
end

function IconButton:init()
	self:setState({
		controlState = ControlState.Default,
	})

	self.controlStateUpdated = function(oldControlState, newControlState)
		if self.props.onHover and newControlState == ControlState.Hover then
			self.props.onHover()
		elseif
			self.props.onHoverEnd
			and oldControlState == ControlState.Hover
			and newControlState ~= ControlState.Hover
		then
			self.props.onHoverEnd()
		end
		self:setState({
			controlState = newControlState,
		})
	end

	if FFlagTopBarStyleUseDisplayUIScale then
		self.disposeUiScaleEffect = Signals.createEffect(function(scope)
			local DisplayStore = Display.GetDisplayStore(scope)
			self:setState({
				UiScale = DisplayStore.getUIScale(scope),
			})
		end)
	end
end

function IconButton:render()
	if ChromeEnabled and FFlagAdaptUnibarAndTiltSizing then
		return withCursor(function(getCursor)
			return self:renderWithCursor(getCursor)
		end)
	else
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithCursor(getSelectionCursor)
		end)
	end
end

function IconButton:renderWithCursor(getCursor)
	local hasBackgroundFrame = not isNewTiltIconEnabled() and self.props.backgroundColor3
	local backgroundSize
	if FFlagTopBarStyleUseDisplayUIScale then
		backgroundSize = Constants.TopBarButtonHeight * self.state.UiScale
	else
		backgroundSize = Constants.TopBarButtonHeight
	end
	return withStyle(function(style: any)
		local overlayTheme = {
			Color = Color3.new(1, 1, 1),
			Transparency = 1,
		}

		if self.state.controlState == ControlState.Pressed then
			overlayTheme = style.Theme.BackgroundOnPress
		elseif self.state.controlState == ControlState.Hover then
			overlayTheme = style.Theme.BackgroundOnHover
		end

		return Roact.createElement(Interactable, {
			onStateChanged = self.controlStateUpdated,
			ZIndex = 1,
			Modal = if FFlagAddUILessMode and FIntAddUILessModeVariant == 2 then self.props.modal else nil,
			BackgroundTransparency = if isNewTiltIconEnabled()
				then if GetFFlagChromeUsePreferredTransparency()
					then style.Theme.BackgroundUIContrast.Transparency * style.Settings.PreferredTransparency
					else style.Theme.BackgroundUIContrast.Transparency
				else 1,
			Position = UDim2.fromScale(0, if isNewTiltIconEnabled() then 0.5 else 1),
			AnchorPoint = Vector2.new(0, if isNewTiltIconEnabled() then 0.5 else 1),
			Size = UDim2.fromOffset(backgroundSize, backgroundSize),
			Image = if not isNewTiltIconEnabled() then "rbxasset://textures/ui/TopBar/iconBase.png" else nil,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			SelectionImageObject = if isNewTiltIconEnabled() then 
				if FFlagAdaptUnibarAndTiltSizing then getCursor.refCache[ICON_BUTTON_CURSOR]
				else getCursor(CursorKind.SelectedKnob)
			else nil,
			NextSelectionRight = if ChromeEnabled and FFlagTiltIconUnibarFocusNav then self.props.nextSelectionRightRef else nil :: never,
			[Roact.Event.Activated] = self.props.onActivated,
			[Roact.Event.SelectionChanged] = if ChromeEnabled and FFlagTiltIconUnibarFocusNav then self.props.onSelectionChanged else nil,
			[Roact.Ref] = self.props.forwardRef,
		}, {

			UICorner = isNewTiltIconEnabled() and Roact.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}) or nil,

			BackgroundFrame = if hasBackgroundFrame
				then Roact.createElement("Frame", {
					Size = self.props.iconSize,
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = self.props.backgroundTransparency,
					BackgroundColor3 = self.props.backgroundColor3,
					ZIndex = 0,
				}, {
					UICorner = if self.props.backgroundCornerRadius
						then Roact.createElement("UICorner", {
							CornerRadius = self.props.backgroundCornerRadius,
						})
						else nil,
				})
				else nil,

			Icon = not self.props.useIconScaleAnimation and Roact.createElement(ImageSetLabel, {
				Size = if typeof(self.props.iconSize) ~= "number" then self.props.iconSize else UDim2.fromOffset(self.props.iconSize, self.props.iconSize),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = self.props.icon,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				ZIndex = 1,
			}),

			ScalingIcon = self.props.useIconScaleAnimation and Roact.createElement(AnimatedScaleIcon, {
				icon = self.props.icon,
				iconSize = self.props.iconSize,
				style = style :: any,
			}) :: any,

			FlashingDot = if self.props.enableFlashingDot
				then Roact.createElement(if GetFFlagFlashingDotUseAsyncInit() then FlashingDotV2 else FlashingDot)
				else nil,

			StateOverlayRound = isNewTiltIconEnabled() and Roact.createElement("Frame", {
				BackgroundTransparency = overlayTheme.Transparency,
				BackgroundColor3 = overlayTheme.Color,
				Size = UDim2.fromScale(1, 1),
				ZIndex = 2,
			}, {
				UICorner = isNewTiltIconEnabled() and Roact.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}) or nil,
			}) or nil,

			StateOverlay = not isNewTiltIconEnabled() and Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,

				Image = OVERLAY_ASSET,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(8, 8, 8, 8),

				ImageColor3 = overlayTheme.Color,
				ImageTransparency = overlayTheme.Transparency,
				Size = UDim2.fromScale(1, 1),
				ZIndex = 2,
			}) or nil,
		})
	end)
end


function IconButton:willUnmount()
	if FFlagTopBarStyleUseDisplayUIScale and self.disposeUiScaleEffect then
		self.disposeUiScaleEffect()
	end
end

if FFlagEnableChromeBackwardsSignalAPI then
	return Roact.forwardRef(function(props, ref)
		return Roact.createElement(
			IconButton,
			Cryo.Dictionary.join(props, {
				forwardRef = ref,
			})
		)
	end)
end

return IconButton
