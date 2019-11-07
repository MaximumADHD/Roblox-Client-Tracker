local Cryo = require(script.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Roact)
local Otter = require(script.Parent.Parent.Parent.Otter)
local ScenesReducer = require(script.Parent.ScenesReducer)
local validate = require(script.Parent.Parent.utils.validate)

local DEFAULT_TRANSITION_SPEC = {
	frequency = 4 -- Hz
}

local function buildTransitionProps(props, state)
	local navigation = props.navigation
	local options = props.options

	local layout = state.layout
	local position = state.position
	local scenes = state.scenes

	local activeScene
	for _, x in ipairs(scenes) do
		if x.isActive then
			activeScene = x
			break
		end
	end

	validate(activeScene, "Could not find active scene")

	return {
		layout = layout,
		navigation = navigation,
		position = position,
		scenes = scenes,
		scene = activeScene,
		options = options,
		index = activeScene.index,
	}
end

local function filterStale(scenes)
	local filtered = Cryo.List.filter(scenes, function(scene)
		return not scene.isStale
	end)

	if #filtered == #scenes then
		return scenes
	else
		return filtered
	end
end

local Transitioner = Roact.Component:extend("Transitioner")

function Transitioner:init()
	local navigationState = self.props.navigation.state
	local descriptors = self.props.descriptors

	self.state = {
		-- Layout is passed to StackViewLayout in order to allow it to
		-- sync animations.
		layout = {
			height = Otter.createSingleMotor(0),
			width = Otter.createSingleMotor(0),
			initWidth = 0,
			initHeight = 0,
			isMeasured = false,
		},
		position = Otter.createSingleMotor(navigationState.index),
		scenes = ScenesReducer({}, navigationState, nil, descriptors),
	}

	self._doOnAbsoluteSizeChanged = function(...)
		return self:_onAbsoluteSizeChanged(...)
	end

	self._positionLastValue = navigationState.index

	self._prevTransitionProps = nil
	self._transitionProps = buildTransitionProps(self.props, self.state)

	self._isMounted = false
	self._isTransitionRunning = false
	self._queuedTransition = nil

	self._completeSignalDisconnector = self.state.position:onComplete(function()
		self:_onTransitionEnd()
	end)

	self._stepSignalDisconnector = self.state.position:onStep(function(value)
		self._positionLastValue = value
	end)
end

function Transitioner:didMount()
	self._isMounted = true
end

function Transitioner:willUnmount()
	self._isMounted = false

	if self._completeSignalDisconnector then
		self._completeSignalDisconnector()
		self._completeSignalDisconnector = nil
	end

	if self._stepSignalDisconnector then
		self._stepSignalDisconnector()
		self._stepSignalDisconnector = nil
	end
end

function Transitioner:willUpdate(newProps)
	-- React-navigation uses componentWillReceiveProps that is only called when Parent
	-- re-renders or when this component is actually being given new props, so we need to
	-- filter here. If not, this would trigger on setState and enter an infinite loop.
	if newProps ~= self.props then
		if self._isTransitionRunning then
			if not self._queuedTransition then
				self._queuedTransition = { prevProps = self.props }
			end

			return
		end

		self:_startTransition(self.props, newProps)
	end
end

function Transitioner:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		[Roact.Change.AbsoluteSize] = self._doOnAbsoluteSizeChanged,
	}, {
		["$InnerComponent"] = self.props.render(
			self._transitionProps, self._prevTransitionProps),
	})
end

-- equivalent to React-Nav's Transitioner._onLayout
function Transitioner:_onAbsoluteSizeChanged(rbx)
	local width = rbx.AbsoluteSize.X
	local height = rbx.AbsoluteSize.Y

	if width == self.state.layout.initWidth and
		height == self.state.layout.initHeight then
		return
	end

	local layout = Cryo.Dictionary.join(self.state.layout, {
		initWidth = width,
		initHeight = height,
		isMeasured = true,
	})

	layout.width:setGoal(Otter.instant(width))
	layout.height:setGoal(Otter.instant(height))

	local nextState = Cryo.Dictionary.join(self.state, {
		layout = layout,
	})

	self._transitionProps = buildTransitionProps(self.props, nextState)

	spawn(function()
		if self._isMounted then
			self:setState(nextState)
		end
	end)
end

function Transitioner:_computeScenes(props, nextProps)
	local nextScenes = ScenesReducer(
		self.state.scenes,
		nextProps.navigation.state,
		props.navigation.state,
		nextProps.descriptors)

	if not nextProps.navigation.state.isTransitioning then
		nextScenes = filterStale(nextScenes)
	end

	-- Update nextScenes whenever screenProps changes
	-- See react-nav bug here:
	-- https://github.com/react-navigation/react-navigation/issues/4271
	-- TODO: Do we have the same problem that requires this?
	if nextProps.screenProps ~= self.props.screenProps then
		spawn(function()
			if self._isMounted then
				self:setState({
					nextScenes = nextScenes
				})
			end
		end)
	end

	if nextScenes == self.state.scenes then
		return nil
	end

	return nextScenes
end

function Transitioner:_startTransition(props, nextProps)
	local indexHasChanged = props.navigation.state.index ~= nextProps.navigation.state.index
	local nextScenes = self:_computeScenes(props, nextProps)

	if not nextScenes then
		-- If nextScenes is nil, nothing has changed, so report transition end, then bail
		self._prevTransitionProps = self._transitionProps

		-- Ensure that position is set to final position before firing transitionEnd
		-- See https://github.com/react-navigation/react-navigation/issues/5247
		self.state.position:setGoal(Otter.instant(props.navigation.state.index))
		-- Transition end will be called by position motor.
		return
	end

	local nextState = Cryo.Dictionary.join(self.state, {
		scenes = nextScenes,
	})

	local position = nextState.position
	local toValue = nextProps.navigation.state.index

	-- compute transitionProps
	self._prevTransitionProps = self._transitionProps
	self._transitionProps = buildTransitionProps(nextProps, nextState)
	local isTransitioning = self._transitionProps.navigation.state.isTransitioning

	-- If state is not transitioning, then we go immediately to new index.
	-- TODO: There is some weirdity here. It does not make sense to transition if
	-- indexHasChanged is false, yet react-nav does it anyway. They have a comment
	-- asking why, but have not looked into it yet.
	-- (It seems that this sets the initial card positions via componentWillReceiveProps!)
	if not isTransitioning or not indexHasChanged then
		spawn(function()
			if self._isMounted then
				self:setState(nextState)

				if nextProps.onTransitionStart then
					nextProps.onTransitionStart(self._transitionProps, self._prevTransitionProps)
				end

				if indexHasChanged then
					position:setGoal(Otter.instant(toValue))
					-- motor will call end for us
				else
					-- motor not running, need to end manually
					self:_onTransitionEnd()
				end
			end
		end)
	elseif isTransitioning then
		self._isTransitionRunning = true
		spawn(function()
			if self._isMounted then
				self:setState(nextState)

				if nextProps.onTransitionStart then
					nextProps.onTransitionStart(self._transitionProps, self._prevTransitionProps)
				end
			end
		end)

		-- get transition spec
		local transitionUserSpec = {}
		if nextProps.configureTransition then
			transitionUserSpec = nextProps.configureTransition(
				self._transitionProps, self._prevTransitionProps) or {}
		end

		local transitionSpec = Cryo.Dictionary.join(DEFAULT_TRANSITION_SPEC, transitionUserSpec)

		local positionHasChanged = self._positionLastValue ~= toValue
		if indexHasChanged and positionHasChanged then
			position:setGoal(Otter.spring(nextProps.navigation.state.index, transitionSpec))
			-- motor will call end transition
		else
			-- motor not running, end transition manually
			self:_onTransitionEnd()
		end
	end
end

function Transitioner:_onTransitionEnd()
	if not self._isMounted then
		return
	end

	local prevTransitionProps = self._prevTransitionProps
	self._prevTransitionProps = nil

	local scenes = filterStale(self.state.scenes)

	local nextState = Cryo.Dictionary.join(self.state, {
		scenes = scenes,
	})

	self._transitionProps = buildTransitionProps(self.props, nextState)

	spawn(function()
		if self._isMounted then
			self:setState(nextState)

			if self.props.onTransitionEnd then
				self.props.onTransitionEnd(self._transitionProps, prevTransitionProps)
			end

			if self._queuedTransition then
				local prevProps = self._queuedTransition.prevProps
				self._queuedTransition = nil
				self:_startTransition(prevProps, self.props)
			else
				self._isTransitionRunning = false
			end
		end
	end)
end

return Transitioner
