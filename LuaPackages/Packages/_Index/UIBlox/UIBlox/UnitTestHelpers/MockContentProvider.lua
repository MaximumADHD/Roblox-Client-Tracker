--[[
	Util for mocking ContentProvider in tests.
	Usage:
	local ultimatelySuccessfulContentIds = {
		<list of uris that load successfully but not right away.>
	}
	local ultimatelyTimedOutContentIds = {
		<list of uris that will try loading for a while then time out>
	}
	local ultimatelyFailedContentIds = {
		<list of uris that will try loading for a while then fail>
	}
	MockContentProvider.new(ultimatelySuccessfulContentIds, ultimatelyTimedOutContentIds, ultimatelyFailedContentIds)

	Now you can call PreloadAsync.
	If a uri is in none of ultimatelySuccessfulContentIds, ultimatelyTimedOutContentIds, or ultimatelyFailedContentIds, it will
	immediately call back with success.
	Otherwise call proceedWithLoad to hit the next loading state:
	* first call will put content into "Loading" state.
	* second call will put content into "Success" or "TimedOut" state.

	You can call mockReload to emulate the case where content reloads itself (e.g. a thumbnail
	that gets refreshed.)

	Other calls to ContentProvider: GetAssetFetchStatus, GetAssetFetchStatusChangedSignal, should just work.
]]

local UnitTestHelpers = script.Parent
local UIBlox = UnitTestHelpers.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

--[[
	MockConnection in support of implementing GetAssetFetchStatusChangedSignal
]]
local MockConnection = {}
MockConnection.__index = MockConnection
function MockConnection.new(callback)
	local self = {}

	setmetatable(self, {
		__index = MockConnection,
	})
	self.callback = callback
	self.connected = true
	self.isMock = 231
	return self
end

function MockConnection:Fire(newStatus)
	if self.connected then
		self.callback(newStatus)
	end
end

function MockConnection:Disconnect()
	self.connected = false
end

--[[
	MockSignal in support of implementing GetAssetFetchStatusChangedSignal
]]
local MockSignal = {}
MockSignal.__index = MockSignal
function MockSignal.new()
	local self = {}

	setmetatable(self, {
		__index = MockSignal,
	})
	self.connections = {}
	return self
end

function MockSignal:Connect(callback)
	local connection = MockConnection.new(callback)
	table.insert(self.connections, connection)
	return connection
end

function MockSignal:Fire(newStatus)
	for _, connection in self.connections do
		connection:Fire(newStatus)
	end
end

--[[
	MockContentProvider: util for mocking content provider behavior in tests.
]]
local MockContentProvider = {}
MockContentProvider.__index = MockContentProvider
function MockContentProvider.new(
	ultimatelySuccessfulContentIds,
	ultimatelyTimedOutContentIds,
	ultimatelyFailedContentIds
)
	local self = {}

	setmetatable(self, {
		__index = MockContentProvider,
	})
	self.mockContentProviderProceedWithLoad = false
	self.contentResolved = false
	self.assetFetchStatuses = {}
	self.signals = {}
	self.preloadAsyncCalled = false
	self.isMock = true
	self.ultimatelySuccessfulContentIds = ultimatelySuccessfulContentIds or {}
	self.ultimatelyTimedOutContentIds = ultimatelyTimedOutContentIds or {}
	self.ultimatelyFailedContentIds = ultimatelyFailedContentIds or {}
	return self
end

function MockContentProvider:mockReload(contentId, finalStatus)
	self.mockContentProviderProceedWithLoad = false
	finalStatus = finalStatus or Enum.AssetFetchStatus.Success
	self:_staggeredProgress(nil, contentId, finalStatus)
end

function MockContentProvider:proceedWithLoad()
	self.mockContentProviderProceedWithLoad = true
	Roact.act(function()
		task.wait(0.1)
	end)
end

function MockContentProvider:_setAssetFetchStatus(contentId, status)
	self.assetFetchStatuses[contentId] = status
	if self.signals[contentId] then
		self.signals[contentId]:Fire(status)
	end
end

function MockContentProvider:_staggeredProgress(opt_callback, contentId, finalStatus)
	self.contentResolved = false

	task.spawn(function()
		while true do
			if self.mockContentProviderProceedWithLoad then
				if not self.contentResolved then
					self:_setAssetFetchStatus(contentId, Enum.AssetFetchStatus.Loading)
					if opt_callback then
						opt_callback(contentId, Enum.AssetFetchStatus.Loading)
					end
					self.contentResolved = true
					self.mockContentProviderProceedWithLoad = false
				else
					self:_setAssetFetchStatus(contentId, finalStatus)
					if opt_callback then
						opt_callback(contentId, finalStatus)
					end
					self.mockContentProviderProceedWithLoad = false
					break
				end
			end
			task.wait()
		end
	end)
end

function MockContentProvider:_makeMockSignal()
	local mockSignal = MockSignal.new()
	return mockSignal
end

function MockContentProvider:GetAssetFetchStatusChangedSignal(contentId)
	if self.signals[contentId] == nil then
		self.signals[contentId] = self:_makeMockSignal()
	end
	return self.signals[contentId]
end

function MockContentProvider:GetAssetFetchStatus(contentId)
	if self.assetFetchStatuses[contentId] ~= nil then
		return self.assetFetchStatuses[contentId]
	else
		return Enum.AssetFetchStatus.None
	end
end

function MockContentProvider:PreloadAsync(assets, callback)
	self.preloadAsyncCalled = true
	for _, contentId in ipairs(assets) do
		if self.ultimatelySuccessfulContentIds[contentId] then
			self:_staggeredProgress(callback, contentId, Enum.AssetFetchStatus.Success)
		elseif self.ultimatelyTimedOutContentIds[contentId] then
			self:_staggeredProgress(callback, contentId, Enum.AssetFetchStatus.TimedOut)
		elseif self.ultimatelyFailedContentIds[contentId] then
			self:_staggeredProgress(callback, contentId, Enum.AssetFetchStatus.Failure)
		else
			task.delay(0, function()
				self:_setAssetFetchStatus(contentId, Enum.AssetFetchStatus.Success)
				if callback then
					callback(contentId, Enum.AssetFetchStatus.Success)
				end
			end)
		end
	end
end

return MockContentProvider
