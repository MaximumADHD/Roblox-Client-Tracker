--[[
	The FocusNavigableSurfaceRegistry and associated hooks allow us to
	hold a reference to a given FocusNavigableSurface with a specific name,
	which can then be focused on or referred to through context.

	TODO: Remove in CLIXBOX-2955
]]

local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)

type RegisteredPayload = { name: string, guiObject: GuiObject }

type DeRegisteredPayload = { name: string, guiObject: GuiObject }

type State = { [string]: { [number]: GuiObject } }

type Action = {
	type: "registered",
	payload: RegisteredPayload,
} | {
	type: "deRegistered",
	payload: DeRegisteredPayload,
}

type Dispatcher = (action: Action) -> ()

type FocusNavigableSurfaceRegistry = { state: State, dispatch: Dispatcher }

local actions = {
	registered = function(state: State, payload: RegisteredPayload)
		local newState = table.clone(state)
		local registryEntry = if newState[payload.name] then table.clone(newState[payload.name]) else {}
		table.insert(registryEntry, payload.guiObject)
		newState[payload.name] = registryEntry
		return newState
	end,
	deRegistered = function(state: State, payload: DeRegisteredPayload)
		local newState = table.clone(state)
		local registryEntry = if newState[payload.name] then table.clone(newState[payload.name]) else {}
		table.remove(registryEntry, table.find(registryEntry, payload.guiObject))
		newState[payload.name] = registryEntry
		return newState
	end,
}

local function registryReducer(state: State, action)
	local reducerAction = actions[action.type]
	if reducerAction then
		return reducerAction(state, action.payload)
	else
		error("Unknown action: " .. action.type)
	end
end

local FocusNavigableSurfaceRegistryContext = React.createContext(nil :: FocusNavigableSurfaceRegistry?)
local function FocusNavigableSurfaceRegistryProvider(props: { children: any })
	local state, dispatch = React.useReducer(registryReducer, {})
	return React.createElement(FocusNavigableSurfaceRegistryContext.Provider, {
		value = { state = state, dispatch = dispatch },
	}, props.children)
end

local function useRegistryEntry(name: string): GuiObject?
	local focusNavigableSurfaceRegistry = React.useContext(FocusNavigableSurfaceRegistryContext)
	if focusNavigableSurfaceRegistry == nil then
		return nil
	end
	local registryEntry = (focusNavigableSurfaceRegistry :: FocusNavigableSurfaceRegistry).state[name]
	if registryEntry == nil then
		return nil
	end
	return registryEntry[#registryEntry]
end

local function useRegisterFocusNavigableSurface()
	local focusNavigableSurfaceRegistry = React.useContext(FocusNavigableSurfaceRegistryContext)
	local dispatch = if focusNavigableSurfaceRegistry then focusNavigableSurfaceRegistry.dispatch else nil
	return React.useCallback(function(name: string, guiObject: GuiObject)
		if dispatch then
			dispatch({
				type = "registered",
				payload = {
					name = name,
					guiObject = guiObject,
				},
			})
		end
	end, { dispatch })
end

local function useDeRegisterFocusNavigableSurface()
	local focusNavigableSurfaceRegistry = React.useContext(FocusNavigableSurfaceRegistryContext)
	local dispatch = if focusNavigableSurfaceRegistry then focusNavigableSurfaceRegistry.dispatch else nil
	return React.useCallback(function(name: string, guiObject: GuiObject)
		if dispatch then
			dispatch({
				type = "deRegistered",
				payload = {
					name = name,
					guiObject = guiObject,
				},
			})
		end
	end, { dispatch })
end

local function useFocusRegistryEntry(name: string)
	local focusGuiObject = ReactFocusNavigation.useFocusGuiObject()
	local registryEntry = useRegistryEntry(name)
	return React.useCallback(function()
		if registryEntry then
			focusGuiObject(registryEntry)
		end
	end, { focusGuiObject :: any, registryEntry :: any })
end

return {
	Provider = FocusNavigableSurfaceRegistryProvider,
	registryContext = FocusNavigableSurfaceRegistryContext,
	useRegisterFocusNavigableSurface = useRegisterFocusNavigableSurface,
	useDeRegisterFocusNavigableSurface = useDeRegisterFocusNavigableSurface,
	useRegistryEntry = useRegistryEntry,
	useFocusRegistryEntry = useFocusRegistryEntry,
}
