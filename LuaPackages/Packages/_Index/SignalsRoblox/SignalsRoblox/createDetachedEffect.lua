local Root = script.Parent
local Packages = Root.Parent
local Signals = require(Packages.Signals)
local createEffect = Signals.createEffect

type scope = Signals.scope
type dispose = Signals.dispose

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

return createDetachedEffect
