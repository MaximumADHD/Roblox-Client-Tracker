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

export type PiiFilter = {
	startTracking: (self: PiiFilter) -> (),
	stopTracking: (self: PiiFilter) -> (),
	cleanPii: (self: PiiFilter, message: string) -> string,
	-- private methods
	_addPlayerToEraseMap: (self: PiiFilter, player: Player) -> (),
	_removePlayerFromEraseMap: (self: PiiFilter, player: Player) -> (),
	-- private fields
	_eraseTimeout: number,
	_trackedPii: { [string]: string },
	_playerCounter: number,
	_disambiguationIdentifiers: { [number]: number },
	_playerAddedConnection: RBXScriptConnection,
	_playerRemovingConnection: RBXScriptConnection,
	_waitFn: (number?) -> number,
	_players: Players,
}
type PiiFilterStatic = {
	new: (args: {
		eraseTimeout: number,
		testHarness: {
			players: Players,
			wait: (number?) -> number,
		}?
	}) -> PiiFilter,
}

local PiiFilter: PiiFilter & PiiFilterStatic = {} :: any
(PiiFilter :: any).__index = PiiFilter

function PiiFilter.new(args: {
	eraseTimeout: number,
	testHarness: {
		players: Players,
		wait: (number?) -> number,
	}?
}): PiiFilter
	assert(PiiFilterArgs(args))

	local players = if args.testHarness == nil then Players else args.testHarness.players
	local waitFn = if args.testHarness == nil then wait else args.testHarness.wait

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
	}, PiiFilter) :: any
end

function PiiFilter:_addPlayerToEraseMap(player: Player)
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

function PiiFilter:_removePlayerFromEraseMap(player: Player)
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

function PiiFilter:cleanPii(message: string): string
	for targetString, replacement in pairs(self._trackedPii) do
		message = string.gsub(message, targetString, replacement)
	end

	return message
end

return PiiFilter
