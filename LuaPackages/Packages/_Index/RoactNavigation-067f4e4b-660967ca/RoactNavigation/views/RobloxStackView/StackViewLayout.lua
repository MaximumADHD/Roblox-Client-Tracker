local RobloxStackView = script.Parent
local views = RobloxStackView.Parent
local root = views.Parent
local Packages = root.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local React = require(Packages.React)
local StackPresentationStyle = require(RobloxStackView.StackPresentationStyle)
local StackViewTransitionConfigs = require(RobloxStackView.StackViewTransitionConfigs)
local StackViewOverlayFrame = require(RobloxStackView.StackViewOverlayFrame)
local StackViewCard = require(RobloxStackView.StackViewCard)
local SceneView = require(views.SceneView)

local defaultScreenOptions = {
	absorbInput = true,
	absorbInputSelectable = true,
	overlayEnabled = false,
	overlayColor3 = Color3.new(0, 0, 0),
	overlayTransparency = 0.7,
	-- cardColor3 default is provided by StackViewCard
	renderOverlay = function(navigationOptions, initialTransitionValue, transitionChangedSignal)
		-- NOTE: renderOverlay will not be called if sceneOptions.overlayEnabled evaluates false
		return React.createElement(StackViewOverlayFrame, {
			navigationOptions = navigationOptions,
			initialTransitionValue = initialTransitionValue,
			transitionChangedSignal = transitionChangedSignal,
		})
	end,
	-- NOTE: transparent is ignored when overlayEnabled is true (overlays are always transparent)
	transparent = false,
}

local function calculateTransitionValue(index, position)
	return math.max(math.min(1 + position - index, 1), 0)
end

local StackViewLayout = React.Component:extend("StackViewLayout")

function StackViewLayout:init()
	self:setState({})
	local startingIndex = self.props.transitionProps.navigation.state.index

	self._isMounted = false
	self._positionLastValue = startingIndex

	self._renderScene = function(scene)
		return self:_renderInnerScene(scene)
	end

	self._subscribeToOverlayUpdates = function(callback)
		local position = self.props.transitionProps.position
		local index = self.props.transitionProps.scene.index

		return position:onStep(function(value)
			callback(calculateTransitionValue(index, value))
		end)
	end
end

function StackViewLayout:_renderCard(scene, navigationOptions)
	local transitionProps = self.props.transitionProps -- Core animation info from Transitioner.
	local lastTransitionProps = self.props.lastTransitionProps -- Previous transition info.
	local transitionConfig = self.state.transitionConfig -- State based info from scene config.

	local cardColor3 = navigationOptions.cardColor3
	local overlayEnabled = navigationOptions.overlayEnabled
	local transparent = navigationOptions.transparent

	local initialPositionValue = transitionProps.scene.index
	if lastTransitionProps then
		initialPositionValue = lastTransitionProps.scene.index
	end

	local cardInterpolationProps = {}
	local screenInterpolator = transitionConfig.screenInterpolator
	if screenInterpolator then
		cardInterpolationProps = screenInterpolator(Object.assign(table.clone(transitionProps), {
			initialPositionValue = initialPositionValue,
			scene = scene,
		}))
	end

	-- Merge down the various prop packages to be applied to StackViewCard.
	return React.createElement(
		StackViewCard,
		Object.assign(table.clone(transitionProps), cardInterpolationProps, {
			key = "card_" .. tostring(scene.key),
			scene = scene,
			renderScene = self._renderScene,
			cardColor3 = if overlayEnabled or transparent then nil else cardColor3,
		})
	)
end

function StackViewLayout:_renderInnerScene(scene)
	local navigation = scene.descriptor.navigation

	local sceneComponent = scene.descriptor.getComponent()
	local screenProps = self.props.screenProps

	return React.createElement(SceneView, {
		screenProps = screenProps,
		navigation = navigation,
		component = sceneComponent,
	})
end

function StackViewLayout:render()
	local transitionProps = self.props.transitionProps
	local topMostOpaqueSceneIndex = self.state.topMostOpaqueSceneIndex
	local scenes = transitionProps.scenes

	local renderedScenes = {}
	for _, scene in scenes do
		-- The card is obscured if:
		-- 	It's not the active card (e.g. we're transitioning TO it).
		-- 	It's hidden underneath an opaque card that is NOT currently transitioning.
		--	It's completely off-screen.
		local cardObscured = scene.index < topMostOpaqueSceneIndex and not scene.isActive

		local screenOptions = if scene.descriptor.options
			then Object.assign(table.clone(defaultScreenOptions), scene.descriptor.options)
			else table.clone(defaultScreenOptions)
		local overlayEnabled = screenOptions.overlayEnabled
		local absorbInput = screenOptions.absorbInput
		local absorbInputSelectable = screenOptions.absorbInputSelectable
		local renderOverlay = screenOptions.renderOverlay

		local stationaryContent = nil
		if overlayEnabled then
			stationaryContent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				BorderSizePixel = 0,
				ZIndex = 1,
			}, {
				Overlay = renderOverlay(
					screenOptions,
					calculateTransitionValue(scene.index, self._positionLastValue),
					self._subscribeToOverlayUpdates
				),
			})
		end

		-- Wrapper frame holds default/custom card background and the card content.
		-- It MUST be a Frame when absorbInput=false because of legacy behavior on desktop
		-- for GuiObject.Active=false blocking mouse clicks from falling through.
		-- (Active=false DOES work on mobile, but not desktop).
		-- When absorbInput=true, we add a TextButton behind the frame that will catch
		-- mouse clicks
		local absorbInputElement = nil
		if not cardObscured and absorbInput then
			absorbInputElement = React.createElement("TextButton", {
				Active = true,
				Selectable = absorbInputSelectable,
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Text = " ",
				ZIndex = 2 * scene.index - 1,
			})
		end

		local renderedScene = React.createElement(React.Fragment, {}, {
			AbsorbInput = absorbInputElement,
			-- use scene index for key, it makes testing with Rhodium easier
			[tostring(scene.index)] = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ClipsDescendants = false,
				ZIndex = 2 * scene.index,
				Visible = not cardObscured,
			}, {
				StationaryContent = stationaryContent,
				DynamicContent = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ClipsDescendants = false,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					-- Cards need to have unique keys so that instances of the same components are not
					-- reused for different scenes. (Could lead to unanticipated lifecycle problems).
					["card_" .. scene.key] = self:_renderCard(scene, screenOptions),
				}),
			}),
		})

		renderedScenes[tostring(scene.key)] = renderedScene
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = false,
		BorderSizePixel = 0,
	}, renderedScenes)
end

function StackViewLayout.getDerivedStateFromProps(nextProps, _lastState)
	local transitionProps = nextProps.transitionProps
	local scenes = transitionProps.scenes
	local state = transitionProps.navigation.state
	local isTransitioning = state.isTransitioning
	local topMostIndex = #scenes

	local isOverlayMode = nextProps.mode == StackPresentationStyle.Modal
		or nextProps.mode == StackPresentationStyle.Overlay

	-- Find the last opaque scene in a modal stack so that we can optimize rendering.
	local topMostOpaqueSceneIndex = 0

	for idx = topMostIndex, 1, -1 do
		local scene = scenes[idx]
		local navigationOptions = if scene.descriptor.options
			then Object.assign(table.clone(defaultScreenOptions), scene.descriptor.options)
			else table.clone(defaultScreenOptions)

		-- Card covers other pages if it's not transparent (note that overlays are implicitly transparent)
		-- and if it's not the top-most page while transitioning.
		local cardIsTransparent = navigationOptions.transparent or (isOverlayMode and navigationOptions.overlayEnabled)
		if not cardIsTransparent and not (isTransitioning and idx == topMostIndex) then
			topMostOpaqueSceneIndex = idx
			break
		end
	end

	return {
		topMostOpaqueSceneIndex = topMostOpaqueSceneIndex,
		transitionConfig = StackViewTransitionConfigs.getTransitionConfig(
			nextProps.transitionConfig,
			nextProps.transitionProps,
			nextProps.lastTransitionProps,
			nextProps.mode
		),
	}
end

function StackViewLayout:didMount()
	self._isMounted = true

	self._positionDisconnector = self.props.transitionProps.position:onStep(function(...)
		self:_onPositionStep(...)
	end)
end

function StackViewLayout:willUnmount()
	self._isMounted = false

	if self._positionDisconnector then
		self._positionDisconnector()
		self._positionDisconnector = nil
	end
end

function StackViewLayout:didUpdate(oldProps)
	local position = self.props.transitionProps.position

	if position ~= oldProps.transitionProps.position then
		self._positionDisconnector()
		self._positionDisconnector = position:onStep(function(...)
			self:_onPositionStep(...)
		end)
	end
end

function StackViewLayout:_onPositionStep(value)
	if self._isMounted then
		self._positionLastValue = value
	end
end

return StackViewLayout
