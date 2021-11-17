local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local join = Cryo.Dictionary.join

local SetGamepadEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetGamepadEnabled)
local SetKeyboardEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetKeyboardEnabled)
local SetMouseClickEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetMouseClickEnabled)
local SetMouseMoveEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetMouseMoveEnabled)
local SetTouchEnabled = require(Plugin.Src.Actions.EventTypeEnabled.SetTouchEnabled)

export type EventTypeEnabledStore = {
	mouseMove: boolean,
	mouseClick: boolean,
	keyboard: boolean,
	gamepad: boolean,
	touch: boolean,
}

local defaultEventTypeEnabledStore: EventTypeEnabledStore = {
	mouseMove = true,
	mouseClick = true,
	keyboard = true,
	gamepad = true,
	touch = true,
}

type EventTypeEnabledReducerFunctionType = (EventTypeEnabledStore?, any) -> EventTypeEnabledStore

local function makeEnabledListReducer()
	return Rodux.createReducer(defaultEventTypeEnabledStore, {
		SetGamepadEnabled = function(state: EventTypeEnabledStore, action: SetGamepadEnabled.Props): EventTypeEnabledStore
			return join(state, {
				gamepad = action.gamepadEnabled,
			})
		end,
		SetKeyboardEnabled = function(state: EventTypeEnabledStore, action: SetKeyboardEnabled.Props): EventTypeEnabledStore
			return join(state, {
				keyboard = action.keyboardEnabled,
			})
		end,
		SetMouseClickEnabled = function(state: EventTypeEnabledStore, action: SetMouseClickEnabled.Props): EventTypeEnabledStore
			return join(state, {
				mouseClick = action.mouseClickEnabled,
			})
		end,
		SetMouseMoveEnabled = function(state: EventTypeEnabledStore, action: SetMouseMoveEnabled.Props): EventTypeEnabledStore
			return join(state, {
				mouseMove = action.mouseMoveEnabled,
			})
		end,
		SetTouchEnabled = function(state: EventTypeEnabledStore, action: SetTouchEnabled.Props): EventTypeEnabledStore
			return join(state, {
				touch = action.touchEnabled,
			})
		end,
	})
end

local function makeReducer(reducerFunction: EventTypeEnabledReducerFunctionType, reducerName: string)
	: EventTypeEnabledReducerFunctionType
	return function(state: EventTypeEnabledStore?, action: any)
		if state == nil or action.context == reducerName then
			return reducerFunction(state, action)
		end

		return state :: EventTypeEnabledStore
	end
end

local function makeReducerForName(name: string): EventTypeEnabledReducerFunctionType
	return makeReducer(makeEnabledListReducer(), name)
end

return {
	makeReducerForName = makeReducerForName,
}