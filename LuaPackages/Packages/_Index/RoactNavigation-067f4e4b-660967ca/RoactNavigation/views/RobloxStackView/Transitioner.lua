-- upstream: https://github.com/react-navigation/stack/blob/676bc3b45a7715edecd13530ae3b39ee1fe48833/src/views/Transitioner.tsx
local root = script.Parent.Parent.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local React = require(Packages.React)
local Otter = require(Packages.Otter)
local ScenesReducer = require(script.Parent.ScenesReducer)
local invariant = require(root.utils.invariant)

local DEFAULT_TRANSITION_SPEC = {
	frequency = 4, -- Hz
}

local function buildTransitionProps(props, state)
	local navigation = props.navigation
	local options = props.options

	local layout = state.layout
	local position = state.position
	local scenes = state.scenes

	local activeScene
	for _, x in scenes do
		if x.isActive then
			activeScene = x
			break
		end
	end

	invariant(activeScene, "Could not find active scene")

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
	local filtered = Array.filter(scenes, function(scene)
		return not scene.isStale
	end)

	if #filtered == #scenes then
		return scenes
	else
		return filtered
	end
end

local Transitioner = React.Component:extend("Transitioner")

function Transitioner:init()
	local navigationState = self.props.navigation.state
	local descriptors = self.props.descriptors

	self._ref = React.createRef()

	self.state = {
		-- Layout is passed to StackViewLayout in order to allow it to
		-- sync animations.
		layout = {
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
	self._transitionQueue = {}

	self._completeSignalDisconnector = self.state.position:onComplete(function()
		if self._isMounted then
			self:_onTransitionEnd()
		end
	end)

	self._stepSignalDisconnector = self.state.position:onStep(function(value)
		if self._isMounted then
			self:_onPositionStep(value)
		end
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

function Transitioner:didUpdate(prevProps)
	-- AbsoluteSize change event may never fire if the frame is off screen
	-- So ensure that we calculate layout at least once
	if not self.state.layout.isMeasured and self._ref.current then
		self:_onAbsoluteSizeChanged(self._ref.current)
	end

	-- ROBLOX DEVIATION: React-navigation uses componentWillReceiveProps that is only called when Parent
	-- re-renders or when this component is actually being given new props, so we need to
	-- filter here. If not, this would trigger on setState and enter an infinite loop.
	if self.props ~= prevProps then
		if self._isTransitionRunning then
			local mostRecentTransition = self._transitionQueue[#self._transitionQueue] or {}
			-- don't enqueue spurious extra copies of same transition props
			if mostRecentTransition.prevProps ~= prevProps then
				table.insert(self._transitionQueue, { prevProps = prevProps })
			end

			return
		end

		self:_startTransition(prevProps, self.props)
	end
end

function Transitioner:render()
	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = false,
		[React.Change.AbsoluteSize] = self._doOnAbsoluteSizeChanged,
		ref = self._ref,
	}, {
		["TransitionerScenes"] = self.props.render(
			self._transitionProps,
			self._prevTransitionProps,
			self -- last arg is used only for tests
		),
	})
end

-- equivalent to React-Nav's Transitioner._onLayout
function Transitioner:_onAbsoluteSizeChanged(rbx)
	if not self._isMounted then
		return
	end

	local width = rbx.AbsoluteSize.X
	local height = rbx.AbsoluteSize.Y

	if width == self.state.layout.initWidth and height == self.state.layout.initHeight then
		return
	end

	local layout = Object.assign(table.clone(self.state.layout), {
		initWidth = width,
		initHeight = height,
		isMeasured = true,
	})

	local nextState = Object.assign(table.clone(self.state), {
		layout = layout,
	})

	self._transitionProps = buildTransitionProps(self.props, nextState)

	self:setState({
		layout = layout,
	})
end

function Transitioner:_computeScenes(props, nextProps)
	local nextScenes =
		ScenesReducer(self.state.scenes, nextProps.navigation.state, props.navigation.state, nextProps.descriptors)

	if not nextProps.navigation.state.isTransitioning then
		nextScenes = filterStale(nextScenes)
	end

	if nextProps.screenProps ~= self.props.screenProps then
		self:setState({ scenes = nextScenes })
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

		-- Trigger end transition logic if we daisy-chained from queued transitions via _onTransitionEnd.
		if self._isTransitionRunning then
			self:_onTransitionEnd()
		end

		return
	end

	local nextState = Object.assign(table.clone(self.state), {
		scenes = nextScenes,
	})

	local position = nextState.position
	local toValue = nextProps.navigation.state.index

	-- compute transitionProps
	self._prevTransitionProps = self._transitionProps
	self._transitionProps = buildTransitionProps(nextProps, nextState)
	local isTransitioning = self._transitionProps.navigation.state.isTransitioning

	if isTransitioning and indexHasChanged then
		self._isTransitionRunning = true
	end

	self:setState(nextState, function()
		if isTransitioning and indexHasChanged then
			if nextProps.onTransitionStart then
				nextProps.onTransitionStart(self._transitionProps, self._prevTransitionProps)
			end

			local positionHasChanged = self._positionLastValue ~= toValue
			if positionHasChanged then
				-- get transition spec
				local transitionUserSpec = {}
				if nextProps.configureTransition then
					transitionUserSpec = nextProps.configureTransition(self._transitionProps, self._prevTransitionProps)
						or {}
				end

				local transitionSpec = Object.assign(table.clone(DEFAULT_TRANSITION_SPEC), transitionUserSpec)

				-- motor will call _endTransition for us
				position:setGoal(Otter.spring(nextProps.navigation.state.index, transitionSpec))
			else
				-- Set motor to current state to trigger _endTransition call with correct sequencing.
				position:setGoal(Otter.instant(nextProps.navigation.state.index))
			end
		else
			-- If state is not transitioning, then we go immediately to new index.
			-- Likewise, if the index has not changed then we still need to set up initial
			-- positions via setState.

			if nextProps.onTransitionStart then
				nextProps.onTransitionStart(self._transitionProps, self._prevTransitionProps)
			end

			-- ROBLOX DEVIATION: motor will call _endTransition for us
			-- ROBLOX DEVIATION: upstream checks indexHasChanged here
			position:setGoal(Otter.instant(toValue))
		end
	end)
end

function Transitioner:_onTransitionEnd()
	local prevTransitionProps = self._prevTransitionProps
	self._prevTransitionProps = nil

	local scenes = filterStale(self.state.scenes)

	local nextState = Object.assign(table.clone(self.state), {
		scenes = scenes,
	})

	self._transitionProps = buildTransitionProps(self.props, nextState)

	self:setState(nextState, function()
		if self.props.onTransitionEnd then
			self.props.onTransitionEnd(self._transitionProps, prevTransitionProps)
		end

		local firstQueuedTransition = self._transitionQueue[1]
		if firstQueuedTransition then
			local prevProps = firstQueuedTransition.prevProps
			-- ROBLOX FIXME? is this clone necessary?
			self._transitionQueue = table.clone(self._transitionQueue)
			table.remove(self._transitionQueue, 1)
			self:_startTransition(prevProps, self.props)
		else
			self._isTransitionRunning = false
		end
	end)
end

-- ROBLOX DEVIATION: Deviation for Otter usage
function Transitioner:_onPositionStep(value)
	self._positionLastValue = value

	local targetIndex = self._transitionProps.index

	-- _prevTransitionProps can be nil, so guard against it.
	local startingIndex = targetIndex
	if self._prevTransitionProps then
		startingIndex = self._prevTransitionProps.index
	end

	if self.props.onTransitionStep and startingIndex ~= targetIndex then
		local transitionValue = (value - startingIndex) / (targetIndex - startingIndex)
		self.props.onTransitionStep(self._transitionProps, self._prevTransitionProps, transitionValue)
	end
end

return Transitioner
