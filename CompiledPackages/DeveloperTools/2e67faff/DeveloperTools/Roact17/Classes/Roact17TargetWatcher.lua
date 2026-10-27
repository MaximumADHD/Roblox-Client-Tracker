--[[
	The Roact17TargetWatcher class uses the React devtools to maintain a list of available
	React 17 target trees, and broadcasts this via available bridges.
]]
local Source = script.Parent.Parent.Parent
local Packages = Source.Parent

local Roact17Types = require(Source.Roact17.types)
local Roact17Worker = require(Source.Roact17.Classes.Roact17Worker)

local Dash = require(Packages.Dash)
local collect = Dash.collect
local collectSet = Dash.collectSet
local class = Dash.class
local forEach = Dash.forEach

local Roact17TargetWatcher = class("Roact17TargetWatcher", function(debugInterface, devtools: Roact17Types.Devtools)
	return {
		debugInterface = debugInterface,
		devtools = devtools,
		rootToTarget = {}
	}
end)

function Roact17TargetWatcher:_init()
	self.devtools.store:addListener('roots', function()
		self:_updateTargets()
	end)
end

function Roact17TargetWatcher:_updateTargets()
	local store = self.devtools.store
	local roots = store:getRoots()
	-- Remove old targets that are no longer valid
	local foundRoots = collectSet(roots)
	local prevTargets = self.rootToTarget
	forEach(prevTargets, function(target)
		if foundRoots[target.root] == nil then
			self.debugInterface:removeTarget(target)
		end
	end)
	-- Define the new targets
	self.rootToTarget = collect(roots, function(_index: number, root: number): (number, number)
		local rendererID = store:getRendererIDForElement(root)
		local renderer = self.devtools.hook.rendererInterfaces[rendererID]
		local displayName = renderer:getDisplayNameForRoot(root)
		-- Avoid using Anonymous as it isn't helpful information
		if displayName == "Anonymous" then
			displayName = "#" .. root
		end
		local target = prevTargets[root] or self.debugInterface:addTarget(displayName, function(targetId: string, toBridgeId: string)
			return Roact17Worker.new(self.debugInterface, targetId, toBridgeId, self.devtools, root)
		end)
		return root, target
	end)
end

return Roact17TargetWatcher
