local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local AppCommonLib = require(Packages.AppCommonLib)
local LuauPolyfill = require(Packages.LuauPolyfill)

local Object = LuauPolyfill.Object
local RouteViewState = require(ReactNavigationExtend.Views.RouteViewState)
local TenFootUiBaseViewCard = require(ReactNavigationExtend.Views.Cards.TenFootUiBaseViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local useZDirectionAnimation = require(ReactNavigationExtend.Hooks.useZDirectionAnimation)

type Descriptor = TenFootUiCommon.Descriptor
type ScreenKind = TenFootUiCommon.ScreenKind
type ScreenProps = TenFootUiCommon.ScreenProps
type Signal = AppCommonLib.Signal
type ViewState = RouteViewState.ViewState

export type Props = {
	isVisible: boolean,
	isFocusable: boolean,
	isScreenAboveOverlay: boolean,
	viewState: ViewState,
	descriptor: Descriptor,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: ScreenProps?,
	setOpened: (any) -> (),
	setClosed: (any) -> (),
}

local MemoizedTenFootUiBaseViewCard = React.memo(TenFootUiBaseViewCard)

local function TenFootUiStackViewCard(props: Props)
	local viewState: ViewState = props.viewState
	local descriptor = props.descriptor
	local adorneeParent = props.adorneeParent
	local screenProps: ScreenProps = props.screenProps or {}
	local isScreenAboveOverlay = props.isScreenAboveOverlay

	local setOpened = props.setOpened
	local setClosed = props.setClosed

	local adornee, setAdornee = React.useState(nil)
	local shouldClosed, setShouldClosed = React.useState(false)

	local parentGroupTransparency, updateParentGroupTransparency = React.useBinding(0)
	local attachmentRef = React.useRef(nil)

	React.useEffect(function()
		if shouldClosed then
			setClosed()
		end
	end, { shouldClosed, setClosed } :: { any })

	local setShouldClosedCallback = React.useCallback(function()
		setShouldClosed(true)
	end, { setShouldClosed })

	React.useEffect(function()
		local groupTransparencyChangedSignalConnection
		local stackClosedSignalConnection
		if screenProps ~= nil and screenProps.groupTransparencyChangedSignal ~= nil then
			local groupTransparencyChangedSignal = screenProps.groupTransparencyChangedSignal
			groupTransparencyChangedSignalConnection =
				groupTransparencyChangedSignal:connect(updateParentGroupTransparency)
		end

		if screenProps ~= nil and screenProps.closedSignal ~= nil then
			local stackClosedSignal = screenProps.closedSignal
			-- Use an state as a mid step to call setClosed
			-- becuase call setClosed directly from signal callback doesn't trigger re-render somehow
			stackClosedSignalConnection = stackClosedSignal:connect(setShouldClosedCallback)
		end

		return function()
			if groupTransparencyChangedSignalConnection then
				groupTransparencyChangedSignalConnection:disconnect()
			end
			if stackClosedSignalConnection then
				stackClosedSignalConnection:disconnect()
			end
		end
	end, { screenProps, setShouldClosedCallback } :: { any })

	local animationConfig = useZDirectionAnimation({
		willAnimate = screenProps.isActiveKey,
		isScreenAboveOverlay = isScreenAboveOverlay,
		viewState = viewState,
		setOpened = setOpened,
		setClosed = setClosed,
		adornee = adornee,
		descriptor = descriptor,
		attachmentRef = attachmentRef,
	})

	local finalGroupTransparency = if screenProps.isActiveKey
		then animationConfig.groupTransparency
		else parentGroupTransparency

	local newProps = Object.assign(table.clone(props), {
		setAdornee = setAdornee,
		groupTransparency = finalGroupTransparency,
		adorneeAnchored = false,
		attachmentRef = attachmentRef,
	})

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(MemoizedTenFootUiBaseViewCard, newProps),
		if adornee ~= nil and adorneeParent:IsA("BasePart")
			then ReactRoblox.createPortal({
				Constraint = React.createElement("RigidConstraint", {
					Enabled = true,
					Attachment0 = adorneeParent:FindFirstChildOfClass("Attachment"),
					Attachment1 = adornee:FindFirstChildOfClass("Attachment"),
				}),
			}, adornee)
			else nil
	)
end

return TenFootUiStackViewCard
