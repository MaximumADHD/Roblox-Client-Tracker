--[[
	Test utilities: wait for the Roblox GUI tree (or a custom condition) by
	yielding RunService.Heartbeat inside ReactRoblox.act, with a hard cap to
	avoid hanging CI.
]]

local main = script.Parent.Parent
local Packages = main.Parent

local ReactRoblox = require(Packages.ReactRoblox)
local RunService = game:GetService("RunService")

-- Bound total work; one yield per loop iteration (see MIN_HEARTBEATS_BEFORE_TREE_READY).
local DEFAULT_MAX_HEARTBEATS = 60
-- At least this many RunService.Heartbeat yields before we treat `treeHasAnyInstance` as "ready"
-- (gives React/Roblox a few frames under the RTL host; avoids bailing on a thin wrapper only).
local DEFAULT_MIN_HEARTBEATS_BEFORE_TREE_READY = 3

local function treeHasAnyInstance(root: Instance): boolean
	for _, child in root:GetChildren() do
		return true
	end
	for _, child in root:GetChildren() do
		if treeHasAnyInstance(child) then
			return true
		end
	end
	return false
end

local function waitWithHeartbeatUntil(predicate: () -> boolean, maxHeartbeats: number?)
	local max = maxHeartbeats or DEFAULT_MAX_HEARTBEATS
	ReactRoblox.act(function()
		for i = 1, max do
			RunService.Heartbeat:Wait()
			if predicate() then
				return
			end
		end
		error(
			"waitWithHeartbeatUntil: predicate not satisfied after "
				.. tostring(max)
				.. " RunService.Heartbeat yield(s)"
		)
	end)
end

-- Yields at least `minBeats` heartbeats (then continues while needed) so React/Roblox can build
-- a full tree under the RTL host before we assert; success when `treeHasAnyInstance` is true.
local function waitForGuiLayout(root: Instance, maxHeartbeats: number?, minBeatsBeforeTreeReady: number?)
	local max = maxHeartbeats or DEFAULT_MAX_HEARTBEATS
	local minB = minBeatsBeforeTreeReady or DEFAULT_MIN_HEARTBEATS_BEFORE_TREE_READY
	if max < minB then
		error("waitForGuiLayout: maxHeartbeats must be >= minBeatsBeforeTreeReady")
	end
	ReactRoblox.act(function()
		for i = 1, max do
			RunService.Heartbeat:Wait()
			if i >= minB and treeHasAnyInstance(root) then
				return
			end
		end
		error(
			"waitForGuiLayout: no instance tree under root after " .. tostring(max) .. " RunService.Heartbeat yield(s)"
		)
	end)
end

return {
	treeHasAnyInstance = treeHasAnyInstance,
	waitForGuiLayout = waitForGuiLayout,
	waitWithHeartbeatUntil = waitWithHeartbeatUntil,
}
