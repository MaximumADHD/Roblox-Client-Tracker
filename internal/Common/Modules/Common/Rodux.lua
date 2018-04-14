--[[
	Wraps around Rodux and applies a compatibility patch to deal with API
	breakages since the last Rodux upgrade.

	Things that have changed:
	* API is now camelCase instead of PascalCase to match standards
	* Thunks are no longer enabled by default
]]

local initify = require(script.Parent.initify)
initify(script.Parent.Dependencies.Rodux)

local Rodux = require(script.Parent.Dependencies.Rodux)

local oldStoreNew = Rodux.Store.new
Rodux.Store.new = function(reducer, initialState)
	-- Thunks are no longer enabled by default, so enable them!
	local store = oldStoreNew(reducer, initialState, { Rodux.thunkMiddleware })

	-- 'changed' is created for every store
	store.Changed = store.changed

	-- Middleware work by overwriting the 'dispatch' method, so we have to set
	-- it here.
	store.Dispatch = store.dispatch

	return store
end

-- Create PascalCase versions of regular Store methods
Rodux.Store.GetState = Rodux.Store.getState
Rodux.Store.Destruct = Rodux.Store.destruct
Rodux.Store.Flush = Rodux.Store.flush

-- Rodux has a Signal implementation that's exposed via Store.changed.
local Signal = require(script.Parent.Dependencies.Rodux.Signal)

local oldSignalConnect = Signal.connect
Signal.connect = function(...)
	local connection = oldSignalConnect(...)

	-- 'disconnect' is created for every connection.
	connection.Disconnect = connection.disconnect

	return connection
end

-- Create PascalCase versions of regular Signal methods
Signal.Connect = Signal.connect
Signal.Fire = Signal.fire

return Rodux