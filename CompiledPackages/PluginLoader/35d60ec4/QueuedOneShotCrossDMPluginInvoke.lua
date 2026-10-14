--!strict
--[[
	A cross-datamodel Plugin Invoke/OnInvoke signal that cannot be missed, whichever side gets there first: plugin:Invoke is
	transient, so it is paired with a plugin item, which persists.

	ONE SHOT ONLY. The item is never cleared, so once fired every later listen() fires immediately. Use
	plugin:Invoke / plugin:OnInvoke directly for repeating events.

	A preinit cannot require() this, so it has to inline the logic; keep the ordering below.
]]

local QueuedOneShotCrossDMPluginInvoke = {}

-- Payload must be primitive: plugin items cross a datamodel boundary, so Instances cannot travel this way.
function QueuedOneShotCrossDMPluginInvoke.fire(plugin: Plugin, key: string, payload: (string | number | boolean)?)
	-- Set the item BEFORE invoking, so a receiver that is not listening yet still observes it.
	plugin:SetItem(key, if payload == nil then true else payload)
	plugin:Invoke(key, payload)
end

function QueuedOneShotCrossDMPluginInvoke.hasFired(plugin: Plugin, key: string): boolean
	return QueuedOneShotCrossDMPluginInvoke.read(plugin, key) ~= nil
end

-- The stored payload, or `true` if it fired without one, or nil if it has not fired.
function QueuedOneShotCrossDMPluginInvoke.read(plugin: Plugin, key: string): any
	local value = plugin:GetItem(key, nil)
	if value == nil or value == false then
		return nil
	end
	return value
end

-- The callback receives fire()'s payload, or `true` if it fired without one. The return type is left to
-- inference because OnInvoke is not typed as an RBXScriptConnection.
function QueuedOneShotCrossDMPluginInvoke.listen(plugin: Plugin, key: string, callback: (any) -> ())
	local called = false
	local function callOnce(payload: any)
		if called then
			return
		end
		called = true
		callback(if payload == nil then true else payload)
	end

	-- Subscribe BEFORE reading the item, so a fire() landing between the two is not lost.
	local connection = plugin:OnInvoke(key, callOnce)
	local stored = QueuedOneShotCrossDMPluginInvoke.read(plugin, key)
	if stored ~= nil then
		callOnce(stored)
	end
	return connection
end

return QueuedOneShotCrossDMPluginInvoke
