local MockIXPService = {}
MockIXPService.__index = MockIXPService

function MockIXPService.new(
	browserTrackerLayerData: any?,
	userLayerData: any?,
	userLayerInitialized: any?,
	initializeDelay: any?,
	userId: number?
)
	local self = {
		-- BT should start initialized in Lua; on the real service, it gets initialized by native
		_browserTrackerLoadingStatus = Enum.IXPLoadingStatus.Initialized,
		_userLoadingStatus = userLayerInitialized and Enum.IXPLoadingStatus.Initialized or Enum.IXPLoadingStatus.None,
		_userId = userId or 0,
		_browserTrackerLayerData = browserTrackerLayerData,
		_userLayerData = userLayerData,
		_initializeDelay = initializeDelay or 0.1,
		_exposureEventsFired = {},
	}

	self._browserTrackerBindableEvent = Instance.new("BindableEvent")
	self.OnBrowserTrackerLayerLoadingStatusChanged = self._browserTrackerBindableEvent.Event

	self._userBindableEvent = Instance.new("BindableEvent")
	self.OnUserLayerLoadingStatusChanged = self._userBindableEvent.Event

	setmetatable(self, MockIXPService)
	return self
end

function MockIXPService:_SetBrowserTrackerIXPLoadingStatus(loadingStatus)
	if self._browserTrackerLoadingStatus ~= loadingStatus then
		self._browserTrackerLoadingStatus = loadingStatus
		self._browserTrackerBindableEvent:Fire(loadingStatus)
	end
end

function MockIXPService:_SetUserIXPLoadingStatus(loadingStatus, userId)
	if self._userLoadingStatus ~= loadingStatus or self._userId ~= userId then
		self._userLoadingStatus = loadingStatus
		self._userId = userId
		self._userBindableEvent:Fire(self._userLoadingStatus, self._userId)
	end
end

function MockIXPService:RegisterUserLayers(_layerNames) end

function MockIXPService:InitializeUserLayers(userId)
	-- if the userId == 0 and it's already initialized, don't simulate a fetch,
	-- it was probably just stubbed in for tests.
	if
		self._userLoadingStatus ~= Enum.IXPLoadingStatus.Initialized or (self._userId ~= 0 and userId ~= self._userId)
	then
		self:_SetUserIXPLoadingStatus(Enum.IXPLoadingStatus.Pending, userId)
		spawn(function()
			wait(self._initializeDelay)
			self:_SetUserIXPLoadingStatus(Enum.IXPLoadingStatus.Initialized, userId)
		end)
	end
end

function MockIXPService:GetBrowserTrackerLayerVariables(layerName)
	if self._browserTrackerLoadingStatus == Enum.IXPLoadingStatus.Initialized then
		return self._browserTrackerLayerData[layerName]
	end
	return {}
end

function MockIXPService:GetUserLayerVariables(layerName)
	if self._userLoadingStatus == Enum.IXPLoadingStatus.Initialized then
		return self._userLayerData[layerName]
	end
	return {}
end

function MockIXPService:ClearUserLayers()
	self._userLoadingStatus = Enum.IXPLoadingStatus.None
	self._userId = 0
	self._userBindableEvent:Fire(self._userLoadingStatus, self._userId)
end

function MockIXPService:GetBrowserTrackerLayerLoadingStatus()
	return self._browserTrackerLoadingStatus
end

function MockIXPService:GetUserLayerLoadingStatus()
	return self._userLoadingStatus
end

function MockIXPService:GetBrowserTrackerStatusForLayer(_layerName)
	return self._browserTrackerLoadingStatus
end

function MockIXPService:GetUserStatusForLayer(_layerName)
	return self._userLoadingStatus
end

function MockIXPService:LogUserLayerExposure(layerName)
	table.insert(self._exposureEventsFired, layerName)
end

function MockIXPService:LogBrowserTrackerLayerExposure(layerName)
	table.insert(self._exposureEventsFired, layerName)
end

return MockIXPService
