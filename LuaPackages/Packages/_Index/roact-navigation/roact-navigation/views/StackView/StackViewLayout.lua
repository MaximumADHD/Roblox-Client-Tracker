local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local Otter = require(script.Parent.Parent.Parent.Parent.Otter)
local AppNavigationContext = require(script.Parent.Parent.AppNavigationContext)
local NavigationActions = require(script.Parent.Parent.Parent.NavigationActions)
local StackHeaderMode = require(script.Parent.StackHeaderMode)
local StackPresentationStyle = require(script.Parent.StackPresentationStyle)
local NoneSymbol = require(script.Parent.Parent.Parent.NoneSymbol)
local StackViewTransitionConfigs = require(script.Parent.StackViewTransitionConfigs)
local StackViewCard = require(script.Parent.StackViewCard)
local SceneView = require(script.Parent.Parent.SceneView)
local TopBar = require(script.Parent.Parent.TopBar.TopBar)
local ContentHeightFitFrame = require(script.Parent.Parent.ContentHeightFitFrame)
local validate = require(script.Parent.Parent.Parent.utils.validate)

local defaultScreenOptions = {
	overlayEnabled = false,
	overlayColor3 = Color3.new(0, 0, 0),
	overlayTransparency = 0.7,
	-- cardColor3 default not needed; we use the engine's default frame color
}

-- Helper interpolates t with range [0,1] into the range [a,b].
local function lerp(a, b, t)
	return a * (1 - t) + b * t
end

local function calculateFadeTransparency(scene, index, positionValue)
	local navigationOptions = Cryo.Dictionary.join(defaultScreenOptions, scene.descriptor.options or {})
	local overlayEnabled = navigationOptions.overlayEnabled
	local overlayTransparency = navigationOptions.overlayTransparency

	if overlayEnabled then
		local pRange = math.max(math.min(1 + positionValue - index, 1), 0)
		return lerp(1, overlayTransparency, pRange)
	else
		return 1
	end
end


local StackViewLayout = Roact.Component:extend("StackViewLayout")

function StackViewLayout:init()
	local startingIndex = self.props.transitionProps.navigation.state.index

	self._isMounted = false
	self._scenesContainerRef = Roact.createRef()

	self._overlayFrameRefs = {} -- map of scene indexes to refs

	self._positionLastValue = startingIndex

	self._renderScene = function(scene)
		return self:_renderInnerScene(scene)
	end
end

function StackViewLayout:_getHeaderMode()
	if self.props.headerMode then
		return self.props.headerMode
	elseif self.props.mode == StackPresentationStyle.Modal then
		return StackHeaderMode.Screen
	else
		-- TODO: Change back to Float when TopBar implements it
		-- return StackHeaderMode.Float
		return StackHeaderMode.Screen
	end
end

function StackViewLayout:_renderHeader(scene, headerMode)
	local options = Cryo.Dictionary.join(defaultScreenOptions, scene.descriptor.options or {})
	local header = options.header

	validate(type(header) ~= "string",
		"header must be a valid Roact component, RoactNavigation.None, or nil, not a string")

	-- If HeaderMode is Screen and no header was explicitly removed from
	-- navigationOptions, then we do NOT want to render a header for this screen!
	if header == NoneSymbol and headerMode == StackHeaderMode.Screen then
		return nil
	end

	-- We will use header component if supplied, otherwise use default TopBar.
	local headerComponent = header ~= NoneSymbol and header or function(headerProps)
		return Roact.createElement(TopBar, headerProps)
	end

	local transitionProps = self.props.transitionProps or {}
	local passProps = Cryo.Dictionary.join(self.props, {
		transitionProps = Cryo.None,
	})

	return Roact.createElement(AppNavigationContext.Provider, {
		navigation = scene.descriptor.navigation,
	}, {
		["$header"] = Roact.createElement(headerComponent, Cryo.Dictionary.join(
			passProps,
			transitionProps, -- transitionProps override directly passed props
			{
				scene = scene,
				mode = headerMode,
			})
		)
	})
end

function StackViewLayout:_reset(resetToIndex, frequency)
	local position = self.props.transitionProps.position

	position:setGoal(Otter.spring(resetToIndex, {
		frequency,
	}))
end

function StackViewLayout:_goBack(backFromIndex, frequency)
	local navigation = self.props.transitionProps.navigation
	local position = self.props.transitionProps.position
	local scenes = self.props.transitionProps.scenes

	local toValue = math.max(backFromIndex - 1, 1)

	-- Set up temporary completion handler
	local onCompleteDisconnector
	onCompleteDisconnector = position:onComplete(function()
		if onCompleteDisconnector then
			onCompleteDisconnector()
			onCompleteDisconnector = nil
		end

		local backFromScene
		for _, scene in ipairs(scenes) do
			if scene.index == toValue + 1 then
				backFromScene = scene
				break
			end
		end

		if backFromScene then
			navigation.dispatch(NavigationActions.back({
				key = backFromScene.route.key,
				immediate = true,
			}))

			navigation.dispatch(NavigationActions.completeTransition())
		end
	end)

	position:setGoal(Otter.spring(toValue, {
		frequency = frequency,
	}))
end

function StackViewLayout:_onFloatingHeaderHeightChanged(height)
	local scenesContainer = self._scenesContainerRef.current
	if self._isMounted and scenesContainer then
		scenesContainer.Position = UDim2.new(0, 0, 0, height)
		scenesContainer.Size = UDim2.new(1, 0, 1, -height)
	end
end

function StackViewLayout:_renderCard(scene, index)
	local transitionProps = self.props.transitionProps -- Core animation info from Transitioner.
	local lastTransitionProps = self.props.lastTransitionProps -- Previous transition info.
	local transitionConfig = self.state.transitionConfig -- State based info from scene config.

	local navigationOptions = Cryo.Dictionary.join(defaultScreenOptions, scene.descriptor.options or {})

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

	local sceneElement = Roact.createElement(SceneView, {
		screenProps = screenProps,
		navigation = navigation,
		component = sceneComponent,
	})

	local headerMode = self:_getHeaderMode()
	if headerMode == StackHeaderMode.Screen then
		--[[
			This ref is used to change the scene container size whenever the header changes height.
			It's not too expensive to create one every time this thing is rendered, and since it's
			not being set on the actual scene element then it won't trigger a bunch of reconciling
			beyond this immediate layer. Its lifetime is the same as the onSizeChanged callback.
		]]
		local sceneWrapperRef = Roact.createRef()

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			BorderSizePixel = 0,
		}, {
			screenHeader = Roact.createElement(ContentHeightFitFrame, {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				BorderSizePixel = 0,
				onHeightChanged = function(height)
					local sceneWrapper = sceneWrapperRef.current
					if self._isMounted and sceneWrapper then
						sceneWrapper.Position = UDim2.new(0, 0, 0, height)
						sceneWrapper.Size = UDim2.new(1, 0, 1, -height)
					end
				end
			}, {
				headerContent = self:_renderHeader(scene, headerMode)
			}),
			sceneWrapper = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				BorderSizePixel = 0,
				[Roact.Ref] = sceneWrapperRef,
			}, {
				scene = sceneElement,
			})
		})
	else
		return sceneElement
	end
end

function StackViewLayout:render()
	local headerMode = self:_getHeaderMode()
	local transitionProps = self.props.transitionProps
	local topMostOpaqueSceneIndex = self.state.topMostOpaqueSceneIndex
	local scenes = transitionProps.scenes
	local floatingHeader = nil

	if headerMode == StackHeaderMode.Float then
		local scene = transitionProps.scene
		floatingHeader = Roact.createElement(ContentHeightFitFrame, {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			BorderSizePixel = 0,
			onHeightChanged = function(...)
				self:_onFloatingHeaderHeightChanged(...)
			end
		}, {
			headerContent = self:_renderHeader(scene, headerMode)
		})
	end

	local renderedScenes = Cryo.List.map(scenes, function(scene, idx)
		-- The card is obscured if:
		-- 	It's not the active card (e.g. we're transitioning TO it).
		-- 	It's hidden underneath an opaque card that is NOT currently transitioning.
		--	It's completely off-screen.
		local cardObscured = idx < topMostOpaqueSceneIndex and not scene.isActive

		local navigationOptions = Cryo.Dictionary.join(defaultScreenOptions, scene.descriptor.options or {})
		local overlayColor3 = navigationOptions.overlayColor3

		-- Each scene gets its own overlay frame whose transparency must be managed.
		local overlayFrameRef = self._overlayFrameRefs[idx]
		if not overlayFrameRef then
			overlayFrameRef = Roact.createRef()
			self._overlayFrameRefs[idx] = overlayFrameRef
		end

		-- Wrap all cards in a TextButton so we can control hidden state and ZIndex without bleeding props.
		-- This button also provides the card's overlay effect when required and prevents pass-through of
		-- stray touches.
		return Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = overlayColor3,
			BackgroundTransparency = calculateFadeTransparency(scene, idx, self._positionLastValue),
			AutoButtonColor = false,
			BorderSizePixel = 0,
			Text = " ",
			ZIndex = idx,
			Visible = not cardObscured,
			[Roact.Ref] = overlayFrameRef,
		}, {
			-- Cards need to have unique keys so that instances of the same components are not
			-- reused for different scenes. (Could lead to unanticipated lifecycle problems).
			["card_" .. scene.key] = self:_renderCard(scene, idx),
		})
	end)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		BorderSizePixel = 0,
	}, {
		floatingHeader = floatingHeader or nil,
		scenesContainer = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0), -- Overridden by _onFloatingHeaderHeightChanged
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			BorderSizePixel = 0,
			[Roact.Ref] = self._scenesContainerRef,
		}, renderedScenes),
	})
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
		local transitionProps = self.props.transitionProps
		local scenes = transitionProps.scenes

		for idx, scene in ipairs(scenes) do
			local frameRef = self._overlayFrameRefs[idx]
			local frameInstance = frameRef and frameRef.current

			if frameInstance then
				frameInstance.BackgroundTransparency = calculateFadeTransparency(scene, idx, value)
			end
		end

		self._positionLastValue = value
	end
end

return StackViewLayout
