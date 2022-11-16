-- spec: https://dom.spec.whatwg.org/#abortsignal
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
type Error = LuauPolyfill.Error

export type AbortSignal = {
	_signal: BindableEvent,
	reason: Error,
	aborted: boolean,
	connect: (AbortSignal, () -> ()) -> RBXScriptConnection,
	fire: (AbortSignal) -> (),
	throwIfAborted: (AbortSignal) -> (),
}

local AbortSignal = {}
AbortSignal.__index = AbortSignal

function AbortSignal.new(): AbortSignal
	local self = {}
	setmetatable(self, AbortSignal)

	self.aborted = false
	self.reason = Error.new("Undefined Error")

	self._signal = Instance.new("BindableEvent")

	return self :: any
end

function AbortSignal.abort(reason: any): AbortSignal
	local signal = AbortSignal.new()
	signal.reason = reason or Error.new("Signal Aborted")
	return signal
end

function AbortSignal.timeout(milliseconds: number): AbortSignal
	local signal = AbortSignal.new()
	signal.reason = Error.new("TimeoutError")
	task.delay(milliseconds / 1000, function()
		signal:fire()
	end)
	return signal
end

function AbortSignal:throwIfAborted()
	if self.aborted then
		error(self.reason)
	end
	return
end

-- deviation from spec: use BindableEvent semantics instead of EventHandler
function AbortSignal:connect(callback): RBXScriptConnection
	return self._signal.Event:Connect(callback)
end

-- deviation from spec: use BindableEvent semantics instead of EventHandler
function AbortSignal:fire()
	self.aborted = true
	self._signal:Fire()
	return
end

return {
	AbortSignal = AbortSignal,
}
