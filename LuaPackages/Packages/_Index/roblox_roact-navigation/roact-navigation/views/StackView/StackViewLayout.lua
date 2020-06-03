local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local StackPresentationStyle = require(script.Parent.StackPresentationStyle)
local StackViewTransitionConfigs = require(script.Parent.StackViewTransitionConfigs)
local StackViewOverlayFrame = require(script.Parent.StackViewOverlayFrame)
local StackViewCard = require(script.Parent.StackViewCard)
local SceneView = require(script.Parent.Parent.SceneView)

local defaultScreenOptions = {
	absorbInput = true,
	overlayEnabled = false,
	overlayColor3 = Color3.new(0, 0, 0),
	overlayTransparency = 0.7,
	-- cardColor3 default is provided by StackViewCard
	renderOverlay = function(navigationOptions, initialTransitionValue, transitionChangedSignal)
		-- NOTE: renderOverlay will not be called if sceneOptions.overlayEnabled evaluates false
		return Roact.createElement(StackViewOverlayFrame, {
			navigationOptions = navigationOptions,
			initialTransitionValue = initialTransitionValue,
			transitionChangedSignal = transitionChangedSignal,
		})
	end,
}

local function calculateTransitionValue(index, position)
	return math.max(math.min(1 + position - index, 1), 0)
end


local StackViewLayout = Roact.Component:extend("StackViewLayout")

function StackViewLayout:init()
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

	local initialPositionValue = transitionProps.scene.index
	if lastTransitionProps then
		initialPositionValue = lastTransitionProps.scene.index
	end

	local cardInterpolationProps = {}
	local screenInterpolator = transitionConfig.screenInterpolator
	if screenInterpolator then
		cardInterpolationProps = screenInterpolator(
			Cryo.Dictionary.join(transitionProps, {
				initialPositionValue = initialPositionValue,
				scene = scene,
			})
		)
	end

	-- Merge down the various prop packages to be applied to StackViewCard.
	return Roact.createElement(StackViewCard, Cryo.Dictionary.join(
		transitionProps, cardInterpolationProps, {
			key = "card_" .. tostring(scene.key),
			scene = scene,
			renderScene = self._renderScene,
			transparent = overlayEnabled,
			cardColor3 = cardColor3,
		})
	)
end

function StackViewLayout:_renderInnerScene(scene)
	local navigation = scene.descriptor.navigation

	local sceneComponent = scene.descriptor.getComponent()
	local screenProps = self.props.screenProps

	return Roact.createElement(SceneView, {
		screenProps = screenProps,
		navigation = navigation,
		component = sceneComponent,
	})
end

function StackViewLayout:render()
	local transitionProps = self.props.transitionProps
	local topMostOpaqueSceneIndex = self.state.topMostOpaqueSceneIndex
	local scenes = transitionProps.scenes

	local renderedScenes = Cryo.List.map(scenes, function(scene)
		-- The card is obscured if:
		-- 	It's not the active card (e.g. we're transitioning TO it).
		-- 	It's hidden underneath an opaque card that is NOT currently transitioning.
		--	It's completely off-screen.
		local cardObscured = scene.index < topMostOpaqueSceneIndex and not scene.isActive

		local screenOptions = Cryo.Dictionary.join(defaultScreenOptions, scene.descriptor.options or {})
		local overlayEnabled = screenOptions.overlayEnabled
		local absorbInput = screenOptions.absorbInput
		local renderOverlay = screenOptions.renderOverlay

		local stationaryContent = nil
		if overlayEnabled then
			stationaryContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				BorderSizePixel = 0,
				ZIndex = 1,
			}, {
				Overlay = renderOverlay(
					screenOptions,
					calculateTransitionValue(scene.index, self._positionLastValue),
					self._subscribeToOverlayUpdates)
			})
		end

		-- Wrapper frame holds default/custom card background and the card content.
		-- We MUST change from TextButton to Frame here when absorbInput=false because
		-- of legacy behavior on desktop  for GuiObject.Active=false blocking mouse clicks
		-- from falling through. (Active=false DOES work on mobile, but not desktop).
		local sceneWrapperComponent = "Frame"
		local sceneWrapperProps = {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			ZIndex = scene.index,
			Visible = not cardObscured,
		}

		if not cardObscured and absorbInput then
			sceneWrapperComponent = "TextButton"
			sceneWrapperProps = Cryo.Dictionary.join(sceneWrapperProps, {
				AutoButtonColor = false,
				Text = " ",
				Active = true,
			})
		end

		return Roact.createElement(sceneWrapperComponent, sceneWrapperProps, {
			StationaryContent = stationaryContent,
			DynamicContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				-- Cards need to have unique keys so that instances of the same components are not
				-- reused for different scenes. (Could lead to unanticipated lifecycle problems).
				["card_" .. scene.key] = self:_renderCard(scene, screenOptions),
			})
		})
	end)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		BorderSizePixel = 0,
	}, renderedScenes)
end

function StackViewLayout.getDerivedStateFromProps(nextProps, lastState)
	local transitionProps = nextProps.transitionProps
	local scenes = transitionProps.scenes
	local state = transitionProps.navigation.state
	local isTransitioning = state.isTransitioning
	local topMostIndex = #scenes

	local isOverlayMode = nextProps.mode == StackPresentationStyle.Modal or
		nextProps.mode == StackPresentationStyle.Overlay

	-- Find the last opaque scene in a modal stack so that we can optimize rendering.
	local topMostOpaqueSceneIndex = 0
	if isOverlayMode then
		for idx = topMostIndex, 1, -1 do
			local scene = scenes[idx]
			local navigationOptions = Cryo.Dictionary.join(defaultScreenOptions, scene.descriptor.options or {})

			-- Card covers other pages if it's not an overlay and it's not the top-most index while transitioning.
			if not navigationOptions.overlayEnabled and not (isTransitioning and idx == topMostIndex) then
				topMostOpaqueSceneIndex = idx
				break
			end
		end
	else
		for idx = topMostIndex, 1, -1 do
			if not (isTransitioning and idx == topMostIndex) then
				topMostOpaqueSceneIndex = idx
				break
			end
		end
	end

	return {
		topMostOpaqueSceneIndex = topMostOpaqueSceneIndex,
		transitionConfig = StackViewTransitionConfigs.getTransitionConfig(
			nextProps.transitionConfig,
			nextProps.transitionProps,
			nextProps.lastTransitionProps,
			nextProps.mode),
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
