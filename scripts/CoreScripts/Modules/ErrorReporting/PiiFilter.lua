local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local t = require(CorePackages.Packages.t)

local PiiFilterArgs = t.strictInterface({
	eraseTimeout = t.number,
	testHarness = t.optional(t.strictInterface({
		players = t.union(t.instanceOf("Players"), t.interface({
			GetPlayers = t.callback,
			GetPlayerByUserId = t.callback,
			PlayerAdded = t.RBXScriptSignal,
			PlayerRemoving = t.RBXScriptSignal,
		})),
		wait = t.callback,
	})),
})

local PiiFilter = {}
PiiFilter.__index = PiiFilter

function PiiFilter.new(args)
	assert(PiiFilterArgs(args))
	
	local players = args.testHarness == nil and Players or args.testHarness.players
	local waitFn = args.testHarness == nil and wait or args.testHarness.wait

	return setmetatable({
		_eraseTimeout = args.eraseTimeout,
		_trackedPii = {},
		_playerCounter = 1,
		-- We store a map of user ID : number in memory so that we can
		-- anonymize user IDs, but still allow error reports to disambiguate
		-- between different players.
		_disambiguationIdentifiers = {},
		_waitFn = waitFn,
		_players = players,
	}, PiiFilter)
end

function PiiFilter:_addPlayerToEraseMap(player)
	local disambiguator = self._disambiguationIdentifiers[player.UserId]
	if disambiguator == nil then
		disambiguator = self._playerCounter
		self._disambiguationIdentifiers[player.UserId] = self._playerCounter
		self._playerCounter += 1
	end

	self._trackedPii[tostring(player.UserId)] = string.format("UserId(%d)", disambiguator)
	self._trackedPii[tostring(player.Name)] = string.format("UserName(%d)", disambiguator)
	self._trackedPii[tostring(player.DisplayName)] = string.format("DisplayName(%d)", disambiguator)
end

function PiiFilter:_removePlayerFromEraseMap(player)
	self._trackedPii[tostring(player.UserId)] = nil
	self._trackedPii[tostring(player.Name)] = nil
	self._trackedPii[tostring(player.DisplayName)] = nil
end

function PiiFilter:startTracking()
	for _, player in ipairs(self._players:GetPlayers()) do
		self:_addPlayerToEraseMap(player)
	end

	self._playerAddedConnection = self._players.PlayerAdded:Connect(function(player)
		self:_addPlayerToEraseMap(player)
	end)

	self._playerRemovingConnection = self._players.PlayerRemoving:Connect(function(player)
		-- Wait a few minutes to remove PII from the replacement map, in case some
		-- errors are sent when they leave, or when web requests come back and they're
		-- no longer in the game.
		self._waitFn(self._eraseTimeout)

		-- Ensure that they didn't rejoin the server while we waited.
		if self._players:GetPlayerByUserId(player.UserId) == nil then
			self:_removePlayerFromEraseMap(player)
		end
	end)
end

function PiiFilter:stopTracking()
	self._playerAddedConnection:Disconnect()
	self._playerRemovingConnection:Disconnect()
end

function PiiFilter:cleanPii(message)
	for targetString, replacement in pairs(self._trackedPii) do
		message = string.gsub(message, targetString, replacement)
	end

	return message
end

return PiiFilter
