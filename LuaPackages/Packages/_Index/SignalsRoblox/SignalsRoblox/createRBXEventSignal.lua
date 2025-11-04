local Root = script.Parent
local Packages = Root.Parent
local Signals = require(Packages.Signals)
local createSignal = Signals.createSignal

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
	local getter, setter = createSignal(initialValue)

	local filterEvent: (...any) -> T = if filter ~= nil then filter else defaultFilter

	local connection = event:Connect(function(...: any)
		setter(filterEvent(...))
	end)

	return getter, connection
end

return createRBXEventSignal
