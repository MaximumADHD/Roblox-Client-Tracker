export type ImmediateSignal<T...> = {
	fire: (self: ImmediateSignal<T...>, T...) -> (),
	connect: (self: ImmediateSignal<T...>, (T...) -> ()) -> () -> (),
	_callbacks: { (T...) -> () },
}
type ImmediateSignalStatic = {
	new: <T...>() -> ImmediateSignal<T...>,
}

local ImmediateSignal = {}
local ImmediateSignalMetatable = { __index = ImmediateSignal }

local ImmediateSignalStatic = {}

function ImmediateSignalStatic.new<T...>(): ImmediateSignal<T...>
	return setmetatable({
		_callbacks = {},
	}, ImmediateSignalMetatable) :: any
end

function ImmediateSignal:fire<T...>(...: T...)
	for _, callback in self._callbacks do
		callback(...)
	end
end

function ImmediateSignal:connect<T...>(callback: (T...) -> ()): () -> ()
	table.insert(self._callbacks, callback)
	local connected = true

	local function disconnect()
		if not connected then
			error("Attempt to disconnect an already disconnected connection")
		end
		connected = false
		local index = table.find(self._callbacks, callback)
		if index ~= nil then
			table.remove(self._callbacks, index)
		end
	end

	return disconnect
end

return ImmediateSignalStatic
