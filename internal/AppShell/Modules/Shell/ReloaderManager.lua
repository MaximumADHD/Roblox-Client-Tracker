local HttpService = game:GetService('HttpService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local reloaders = {}

local ReloaderManager = {}
do
	--[Reloader]--
	--Add
	function ReloaderManager:addReloader(reloaderName)
		if (reloaders[reloaderName] == nil) then
			reloaders[reloaderName] = {}
		end
	end

	--Call
	function ReloaderManager:callReloader(reloaderName, internal)
		if reloaders[reloaderName] == nil then return end
		for key, value in pairs(reloaders[reloaderName]) do
			ReloaderManager:callReloaderFunc(reloaderName, key, internal)
		end
	end

	--Remove
	function ReloaderManager:removeReloader(reloaderName)
		if reloaders[reloaderName] == nil then return end
		for key, value in pairs(reloaders[reloaderName]) do
			reloaders[reloaderName][key] = nil
		end
		reloaders[reloaderName] = nil
	end

	--[Reloader Func]--
	local function GetReloaderFuncObj(reloaderId, funcId)
		if not reloaderId or not funcId then return end
		if reloaders[reloaderId] and reloaders[reloaderId][funcId] then
			return reloaders[reloaderId][funcId]
		end
	end

	--Add reloaderfunc, will excute the reloaderFunc at intervals
	--Each reloader may has several reloaderFuncs since we may want to refresh different element at different intervals
	--reloaderName: the name of reloader, usually describle what the reloader works for
	--reloaderFunc: function to be called when reloader
	--interval: interval to reload(seconds)
	function ReloaderManager:addReloaderFunc(reloaderName, reloaderFunc, interval)
		--Don't make duplicated reloaderfuncs
		if reloaders[reloaderName] then
			return
		end

		ReloaderManager:addReloader(reloaderName)

		--We use GUID to differentiate reloaderfuncs, avoid to make redundant thread
		local funcId = HttpService:GenerateGUID()
		reloaders[reloaderName][funcId] =
			{
				reloaderFunc = reloaderFunc,
				interval = interval,
				lastUpdateTime = nil,
				suspend = false,
				mutex = false,
			};

		--Reload logic
		spawn(function()
			while GetReloaderFuncObj(reloaderName, funcId) do
				local ReloaderFuncObj = GetReloaderFuncObj(reloaderName, funcId)
				local realInterval = ReloaderFuncObj.interval
				if ReloaderFuncObj.lastUpdateTime then
					--If we made any manually call between intervals, we should use the ReloaderFuncObj.lastUpdateTime as the new
					--start time to make sure the data is always not outdated
					local timeToLastUpdate = tick() - ReloaderFuncObj.lastUpdateTime
					if timeToLastUpdate < realInterval then
						realInterval = realInterval - timeToLastUpdate
					end
				end
				wait(realInterval)
				ReloaderManager:callReloaderFunc(reloaderName, funcId, true)
			end
		end)

		return funcId
	end

	--Remove
	function ReloaderManager:removeReloaderFunc(reloaderName, funcId)
		if reloaders[reloaderName] == nil or reloaders[reloaderName][funcId] == nil then
			return
		end
		reloaders[reloaderName][funcId] = nil
	end

	--Update(interval, reloaderFunc, suspend)
	function ReloaderManager:updateReloaderFunc(reloaderName, funcId, newAttrs)
		local Reloader = GetReloaderFuncObj(reloaderName, funcId)
		if not Reloader then
			return
		end

		if newAttrs and type(newAttrs) == 'table' then
			for k, v in pairs(newAttrs) do
				Reloader[k] = v
			end
		end
	end

	function ReloaderManager:suspendReloaderFunc(reloaderName, funcId)
		ReloaderManager:updateReloaderFunc(reloaderName, funcId, {suspend = true})
	end

	function ReloaderManager:resumeReloaderFunc(reloaderName, funcId)
		ReloaderManager:updateReloaderFunc(reloaderName, funcId, {suspend = false})
	end

	--Call reloaderFunc, default is a manually call on reloaderFunc
	function ReloaderManager:callReloaderFunc(reloaderName, funcId, internal)
		local ReloaderFuncObj = GetReloaderFuncObj(reloaderName, funcId)

		if ReloaderFuncObj and ReloaderFuncObj.reloaderFunc then
			local CallFunc = false
			--Call inside Reloader Manager
			if internal then
				if not ReloaderFuncObj.suspend and not ReloaderFuncObj.mutex then
					if not ReloaderFuncObj.lastUpdateTime or tick() - ReloaderFuncObj.lastUpdateTime >= ReloaderFuncObj.interval then
						CallFunc = true
					end
				end
			else  --Get Called from outside, manually call
				if not ReloaderFuncObj.mutex then
					CallFunc = true
				end
			end


			if CallFunc then
				ReloaderFuncObj.mutex = true
				ReloaderFuncObj.lastUpdateTime = tick()
				ReloaderFuncObj.reloaderFunc()
				ReloaderFuncObj.mutex = false
			end
		end
	end

	--Call all reloader funcs on resume
	if not UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
		pcall(function() PlatformService.Resumed:connect(function()
				for _, reloader in pairs(reloaders) do
					spawn(function()
						ReloaderManager:callReloader(reloader, true)
					end)
				end
			end)
		end)
	end
end
return ReloaderManager
