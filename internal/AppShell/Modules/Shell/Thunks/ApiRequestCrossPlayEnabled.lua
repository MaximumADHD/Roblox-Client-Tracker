local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShellModules = Modules:FindFirstChild("Shell")
local Http = require(ShellModules:FindFirstChild("Http"))
local MakeSafeAsyncRodux = require(ShellModules:FindFirstChild('SafeAsyncRodux'))
local RequestCrossPlayEnabled = require(ShellModules.Actions.RequestCrossPlayEnabled)
local SetCrossPlayEnabled = require(ShellModules.Actions.SetCrossPlayEnabled)
local GetCrossPlayEnabledFailed = require(ShellModules.Actions.GetCrossPlayEnabledFailed)
local PostCrossPlayEnabledFailed = require(ShellModules.Actions.PostCrossPlayEnabledFailed)
local AddError = require(ShellModules.Actions.AddError)
local Errors = require(ShellModules:FindFirstChild('Errors'))

local GetCrossplayEnabledStatusAsync = MakeSafeAsyncRodux({
	asyncFunc = function(store)
		local jsonobject = Http.GetCrossplayEnabledStatusAsync()
		if jsonobject ~= nil then
			return store, jsonobject.isEnabled
		else
			return store
		end
	end,
	callback = function(store, enabled)
		if enabled ~= nil then
			store:Dispatch(SetCrossPlayEnabled(enabled))
		else
			store:Dispatch(GetCrossPlayEnabledFailed())
			store:Dispatch(AddError(Errors.CPPSettingError.SetCPPSettingError))
		end
	end,
	userRelated = true
})

local PostCrossplayEnabledStatusAsync = MakeSafeAsyncRodux({
	asyncFunc = function(store, val)
		if Http.PostCrossplayStatusAsync(val) then
			return store, val
		else
			return store
		end
	end,
	callback = function(store, enabled)
		if enabled ~= nil then
			store:Dispatch(SetCrossPlayEnabled(enabled))
		else
			store:Dispatch(PostCrossPlayEnabledFailed())
		end
	end,
	userRelated = true
})


return function(method)
	return function(store)
		local state = store:GetState()
		local crossPlayEnabledState = state.CrossPlayEnabledState
		local isRequesting = crossPlayEnabledState.isRequesting
		if method == "GET" then
			if not isRequesting then
				store:Dispatch(RequestCrossPlayEnabled())
				spawn(function()
					GetCrossplayEnabledStatusAsync(store)
				end)
			end
		elseif method == "POST" then
			local crossPlayEnabled = crossPlayEnabledState.enabled
			if not isRequesting and crossPlayEnabled ~= nil then
				store:Dispatch(RequestCrossPlayEnabled())
				local targetVal = not crossPlayEnabled
				spawn(function()
					PostCrossplayEnabledStatusAsync(store, targetVal)
				end)
			end
		end
	end
end