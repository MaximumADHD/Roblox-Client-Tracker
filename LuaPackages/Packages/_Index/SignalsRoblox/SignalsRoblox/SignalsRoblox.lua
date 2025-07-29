local Root = script.Parent
local Packages = Root.Parent
local Signals = require(Packages.Signals)
local createEffect = Signals.createEffect

type getter<T> = Signals.getter<T>
type scope = Signals.scope
type dispose = Signals.dispose

local function defaultFilter(...: any): any
	return select(1, ...)
end

local function createRBXEventSignal<T>(
	event: RBXScriptSignal,
	initialValue: (() -> T) | T,
	filter: ((...any) -> T)?
): (getter<T>, RBXScriptConnection)
	local getter, setter = Signals.createSignal(initialValue)

	local filterEvent: (...any) -> T = if filter ~= nil then filter else defaultFilter

	local connection = event:Connect(function(...: any)
		setter(filterEvent(...))
	end)

	return getter, connection
end

local function createDetachedEffect(effect: (scope, dispose) -> ())
	local isDisposed = false
	local event: BindableEvent? = nil

	local function disposeEffect()
		if not isDisposed then
			isDisposed = true
			if event ~= nil then
				event:Fire()
			end
		end
	end

	local dispose = createEffect(function(scope)
		effect(scope, disposeEffect)
	end)

	if isDisposed then
		dispose()
	else
		local bindable = Instance.new("BindableEvent")
		event = bindable
		bindable.Event:Once(function()
			bindable:Destroy()
			event = nil
			dispose()
		end)
	end
end

return {
	createRBXEventSignal = createRBXEventSignal,
	createDetachedEffect = createDetachedEffect,
}
