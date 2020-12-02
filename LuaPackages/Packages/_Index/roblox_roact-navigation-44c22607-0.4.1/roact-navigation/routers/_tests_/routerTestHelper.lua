-- upstream https://github.com/react-navigation/react-navigation/blob/fcd7d83c4c33ad1fa508c8cfe687d2fa259bfc2c/packages/core/src/routers/__tests__/routerTestHelper.js

local Root = script.Parent.Parent.Parent
local Packages = Root.Parent
local Cryo = require(Packages.Cryo)
local StackActions = require(Root.routers.StackActions)
local SwitchActions = require(Root.routers.SwitchActions)
local NavigationActions = require(Root.NavigationActions)

local defaultOptions = { skipInitializeState = false }

local function getSubStateRecursive(state, level)
	level = level or 1
	if level == 0 then
		return state
	else
		local directSubState = state.routes[state.index]
		return getSubStateRecursive(directSubState, level -1 )
	end
end

local function getRouterTestHelper(router, options)
	options = options or defaultOptions

	local state = nil
	if (not options.skipInitializeState) then
		state = router.getStateForAction({
			type = NavigationActions.Init,
		})
	end

	local function applyAction(action)
		state = router.getStateForAction(action, state)
	end

	local function navigateTo(routeName, otherActionAttributes)
		otherActionAttributes = otherActionAttributes or {}

		return applyAction(Cryo.Dictionary.join({
			type = NavigationActions.Navigate,
			routeName = routeName,
		}, otherActionAttributes))
	end

	local function jumpTo(routeName, otherActionAttributes)
		otherActionAttributes = otherActionAttributes or {}

		return applyAction(Cryo.Dictionary.join({
			type = SwitchActions.JumpTo,
			routeName = routeName,
		}, otherActionAttributes))
	end

	local function back(key)
		return applyAction({
			type = NavigationActions.Back,
			key = key,
		})
	end

	local function pop()
		return applyAction({
			type = StackActions.Pop,
		})
	end

	local function popToTop()
		return applyAction({
			type = StackActions.PopToTop,
		})
	end

	local function getState()
		return state
	end

	local function getSubState(level)
		level = level or 1

		return getSubStateRecursive(state, level)
	end

	return{
		applyAction = applyAction,
		navigateTo = navigateTo,
		jumpTo = jumpTo,
		back = back,
		pop = pop,
		popToTop = popToTop,
		getState = getState,
		getSubState = getSubState,
	}
end

return getRouterTestHelper