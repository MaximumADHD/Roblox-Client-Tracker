--[[
	The module loader allows scripts to be required recursively, clearing the cache of any module
	script whose source has changed between loads.
]]
local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)
local Dash = Framework.Dash
local forEach = Dash.forEach
local getOrSet = Dash.getOrSet

local ModuleLoader = {
	requirers = {},
	connections = {},
	cache = {},
	errors = {},
}

-- TODO #luau: add debug.loadmodule
local loadModule = (debug :: any).loadmodule
-- Try using debug.loadmodule to check if it works
local loadModuleOk = pcall(function()
	loadModule(script)
end)

function ModuleLoader:usingLoadModule()
	return loadModuleOk
end

function ModuleLoader:load(moduleScript: ModuleScript)
	if not self:usingLoadModule() then
		return require(moduleScript)
	end
	local moduleFn, err = loadModule(moduleScript)
	assert(moduleFn, err)
	getfenv(moduleFn).require = function(childScript: ModuleScript)
		local requirers = getOrSet(self.requirers, childScript, function()
			return {}
		end)
		requirers[moduleScript] = true
		return self:_require(childScript)
	end
	-- We can't access Source in a running place
	pcall(function()
		getOrSet(self.connections, moduleScript, function()
			return moduleScript:GetPropertyChangedSignal("Source"):Connect(function()
				self:clear(moduleScript)
			end)
		end)
	end)
	return moduleFn()
end

function ModuleLoader:_require(moduleScript: ModuleScript)
	return getOrSet(self.cache, moduleScript, function()
		return self:load(moduleScript)
	end)
end

function ModuleLoader:clear(moduleScript: ModuleScript)
	-- Avoid clearing scripts which have not been cached to avoid cycles
	if not self.cache[moduleScript] then
		return
	end
	self.cache[moduleScript] = nil
	-- Clear any cached requirers
	if self.requirers[moduleScript] then
		forEach(self.requirers[moduleScript], function(_true: boolean, requirer: ModuleScript)
			self:clear(requirer)
		end)
	end
	self.requirers[moduleScript] = nil
end

function ModuleLoader:reset()
	forEach(self.connections, function(connection)
		connection:Disconnect()
	end)
	self.requirers = {}
	self.connections = {}
	self.cache = {}
	self.errors = {}
end

return ModuleLoader
