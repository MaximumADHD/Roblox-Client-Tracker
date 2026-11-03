-- Lossless delta events backed by Roblox's Signal package. Fine-grained
-- Signals carry state and may coalesce; this channel must deliver each
-- scroll correction and Source transaction.
local Src = script:FindFirstAncestor("ViewRecycler")

local Signal = require(Src.Parent.Signal)

type PackedArgs = { [number]: any, n: number }

export type Event<T...> = {
	fire: (T...) -> (),
	connect: (callback: (T...) -> ()) -> () -> (),
}

local function createEvent<T...>(): Event<T...>
	-- Structural casts keep the facade variadic even though Signal's
	-- transport carries one packed value.
	local signal: any, fireSignal: (PackedArgs) -> () = Signal.createSignal()

	return {
		fire = function(...)
			fireSignal(table.pack(...))
		end,

		connect = function(callback: (T...) -> ())
			local subscription = signal:subscribe(function(args: PackedArgs)
				callback(table.unpack(args, 1, args.n))
			end)
			return function()
				subscription:unsubscribe()
			end
		end,
	}
end

return createEvent
