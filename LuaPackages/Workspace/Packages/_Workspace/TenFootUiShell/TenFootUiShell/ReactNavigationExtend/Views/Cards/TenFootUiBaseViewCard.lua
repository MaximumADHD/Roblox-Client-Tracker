local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local Constants = require(ReactNavigationExtend.Views.Constants)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind
local SceneViewWithFocusRoot = require(script.Parent.SceneViewWithFocusRoot)
local TenFootUiOverflowScreen = require(TenFootUiShell.Components.TenFootUiOverflowScreen)

type Descriptor = TenFootUiCommon.Descriptor
type ScreenProps = TenFootUiCommon.ScreenProps
type ScreenKind = TenFootUiCommon.ScreenKind

export type Props = {
	isVisible: boolean,
	isFocusable: boolean,
	descriptor: Descriptor,
	adorneeCFrame: CFrame?,
	adorneeAnchored: boolean,
	groupTransparency: number,
	setAdornee: (Instance?) -> (),
	setSurfaceGui: (Instance?) -> ()?,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	screenProps: ScreenProps?,
	attachmentRef: React.Ref<any>?,
}

local function getScreenProps(descriptor: Descriptor)
	local screenKind: ScreenKind = descriptor.options.screenKind or ScreenKind.Default
	if screenKind == ScreenKind.FullScreen :: ScreenKind then
		return Constants.GetFullScreenDims()
	elseif screenKind == ScreenKind.Overlay :: ScreenKind then
		local dims, cframe, centerCframe = Constants.GetFullScreenDims()
		local sizeScale = descriptor.options.sizeScale
		local positionOffset = descriptor.options.positionOffset
		if sizeScale then
			dims = Vector3.new(dims.X * sizeScale.X, dims.Y * sizeScale.Y, dims.Z)
		end
		if positionOffset then
			local offset = CFrame.new(
				positionOffset.X / Constants.FULLSCREEN_CANVAS_SIZE.X,
				positionOffset.Y / Constants.FULLSCREEN_CANVAS_SIZE.Y,
				0
			)
			cframe = cframe * offset
		end
		return dims, cframe, centerCframe
	else
		return Constants.GetPageContentDims()
	end
end

local function getCanvasSize(descriptor: Descriptor)
	local screenKind: ScreenKind = descriptor.options.screenKind or ScreenKind.Default
	if screenKind == ScreenKind.FullScreen :: ScreenKind then
		return Constants.FULLSCREEN_CANVAS_SIZE
	elseif screenKind == ScreenKind.Overlay :: ScreenKind then
		local sizeScale = descriptor.options.sizeScale
		local fullScreenCanvasSize = Constants.FULLSCREEN_CANVAS_SIZE
		if sizeScale then
			return Vector2.new(fullScreenCanvasSize.X * sizeScale.X, fullScreenCanvasSize.Y * sizeScale.Y)
		else
			return fullScreenCanvasSize
		end
	else
		return Constants.DEFAULT_CANVAS_SIZE
	end
end

local function getConfiguredOverflowScreen(screenKind: ScreenKind)
	return function(props: any)
		return React.createElement(TenFootUiOverflowScreen, {
			screenKind = screenKind,
			groupTransparency = props.GroupTransparency,
		}, props.children)
	end
end

local function TenFootUiBaseViewCard(props: Props)
	local descriptor: Descriptor = props.descriptor
	local adorneeParent = props.adorneeParent

	local screenKind: ScreenKind = descriptor.options.screenKind or ScreenKind.Default
	local screenWrapper = descriptor.options.screenWrapper
	local ScreenWrapper = React.useMemo(function()
		return screenWrapper or getConfiguredOverflowScreen(screenKind)
	end, { screenWrapper, screenKind } :: { any })
	local isVisible = props.isVisible

	local dims: Vector3, defaultCframe: CFrame, screenCenterCframe: CFrame = getScreenProps(descriptor)
	local adorneeCFrame = props.adorneeCFrame or defaultCframe

	local canvasSize: Vector2 = getCanvasSize(descriptor)

	local intialAttachementOffset, setInitialAttachementOffset = React.useState(Vector3.zero)

	React.useEffect(function()
		-- set attachment position according to offset between defaultCframe and screenCenterCframe
		local offset = screenCenterCframe.Position - adorneeCFrame.Position
		if offset ~= Vector3.zero then
			setInitialAttachementOffset(offset)
		end
	end, {})

	local guiComponent = React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = dims,
		adorneeCFrame = adorneeCFrame,
		adorneeAnchored = props.adorneeAnchored,
		canvasSize = canvasSize,
		alwaysOnTop = isVisible,
		isVisible = isVisible,
		name = descriptor.key,
		adorneeParent = adorneeParent,
		surfaceGuiParent = props.surfaceGuiParent,
		setAdornee = props.setAdornee,
		setSurfaceGui = props.setSurfaceGui,
		adorneeChildren = React.createElement("Attachment", {
			ref = props.attachmentRef,
			Name = string.format("%s_Attachment", descriptor.key),
			Position = intialAttachementOffset,
		}),
		surfaceGuiChildren = React.createElement(ScreenWrapper, {
			GroupTransparency = props.groupTransparency,
		}, {
			SceneView = React.createElement(SceneViewWithFocusRoot, {
				component = descriptor.getComponent(),
				navigation = descriptor.navigation,
				screenProps = props.screenProps,
				isFocusable = props.isFocusable and isVisible,
			}),
		}),
	})

	local absorbInput = true
	if descriptor.options.absorbInput == false then
		absorbInput = false
	end
	if screenKind == ScreenKind.Overlay and absorbInput then
		-- Add a textbutton underneath to aborb input
		local fullScreenDims: Vector3, fullScreenCFrame: CFrame, _ = Constants.GetFullScreenDims()

		local onAcivated = React.useCallback(function()
			if descriptor.options.absorbInputCallback then
				descriptor.options.absorbInputCallback(descriptor.navigation)
			end
		end, { descriptor })

		return React.createElement(
			React.Fragment,
			nil,
			React.createElement(SurfaceGuiWithAdornee, {
				adorneeSize = fullScreenDims,
				adorneeCFrame = fullScreenCFrame,
				adorneeAnchored = true,
				canvasSize = Constants.FULLSCREEN_CANVAS_SIZE,
				alwaysOnTop = true,
				isVisible = true,
				name = "AbsorbInput",
				adorneeParent = adorneeParent,
				surfaceGuiParent = props.surfaceGuiParent,
				surfaceGuiChildren = React.createElement("TextButton", {
					Name = "AbsorbInput_TextButton",
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "",
					[React.Event.Activated] = onAcivated,
				}),
			}),
			guiComponent
		)
	else
		return guiComponent
	end
end

return TenFootUiBaseViewCard
