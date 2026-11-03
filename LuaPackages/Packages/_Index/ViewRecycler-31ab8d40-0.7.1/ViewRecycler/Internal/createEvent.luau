-- Lossless, synchronous delta events. Every fire reaches every listener
-- connected when the fire began and still connected when its turn comes.
export type Event<T...> = {
	fire: (T...) -> (),
	connect: (callback: (T...) -> ()) -> () -> (),
}

local function createEvent<T...>(): Event<T...>
	-- Copy-on-write listener list so connects and disconnects during a fire
	-- do not disturb the iteration in progress.
	local listeners: { (T...) -> () } = {}

	return {
		fire = function(...)
			for _, listener in listeners do
				listener(...)
			end
		end,

		connect = function(callback)
			local connected = true
			local entry = function(...)
				if connected then
					callback(...)
				end
			end
			local nextListeners = table.clone(listeners)
			table.insert(nextListeners, entry)
			listeners = nextListeners
			return function()
				connected = false
				local index = table.find(listeners, entry)
				if index ~= nil then
					local remaining = table.clone(listeners)
					table.remove(remaining, index)
					listeners = remaining
				end
			end
		end,
	}
end

return createEvent
