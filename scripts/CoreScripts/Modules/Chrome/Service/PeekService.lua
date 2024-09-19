local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Cryo = require(CorePackages.Workspace.Packages.Cryo)

local Types = require(Chrome.Service.Types)

local GetFIntChromeDefaultPeekDuration = require(Chrome.Flags.GetFIntChromeDefaultPeekDuration)
local GetFIntChromePeekCooldownSeconds = require(Chrome.Flags.GetFIntChromePeekCooldownSeconds)

local Signal = AppCommonLib.Signal

local DEFAULT_PEEK_LIFETIME_CONFIG = {
	duration = GetFIntChromeDefaultPeekDuration(),
}

type PeekId = Types.PeekId
type PeekLifetimeConfig = Types.PeekLifetimeConfig
type PeekConfig = Types.PeekConfig
type PeekLifetimeConfigWithDefaults = typeof(DEFAULT_PEEK_LIFETIME_CONFIG) & PeekLifetimeConfig

local PeekService = {} :: PeekService
PeekService.__index = PeekService

export type PeekService = {
	__index: PeekService,

	new: () -> PeekService,

	PEEK_COOLDOWN_SEC: number,

	configurePeek: (PeekService, peekId: PeekId, config: PeekConfig) -> (),
	queuePeek: (PeekService, peekId: PeekId) -> (),
	dismissPeek: (PeekService, peekId: PeekId) -> (),
	destroy: (PeekService) -> (),
	getCurrentPeek: (PeekService) -> PeekId?,
	getPeekConfig: (PeekService, peekId: PeekId) -> PeekConfig,

	onPeekShown: AppCommonLib.Signal,
	onPeekQueued: AppCommonLib.Signal,
	onPeekDismissed: AppCommonLib.Signal,
	onPeekHidden: AppCommonLib.Signal,
	onPeekChanged: AppCommonLib.Signal,

	_getLifetimeConfig: (PeekService, peekId: PeekId) -> PeekLifetimeConfigWithDefaults,
	_showPeek: (PeekService, peekId: PeekId) -> (),
	_processPeekQueue: (PeekService) -> (),
	_hideCurrentPeek: (PeekService) -> (),

	_dismissalTime: number?,
	_peekConfigs: { [PeekId]: PeekConfig },
	_peekQueue: { PeekId },
	_currentPeek: PeekId?,
}

function PeekService.new(): PeekService
	local self = {}

	self.PEEK_COOLDOWN_SEC = GetFIntChromePeekCooldownSeconds()

	self._peekConfigs = {}
	self._peekQueue = {}

	self.onPeekQueued = Signal.new()
	self.onPeekShown = Signal.new()
	self.onPeekDismissed = Signal.new()
	self.onPeekHidden = Signal.new()
	self.onPeekChanged = Signal.new()

	return (setmetatable(self, PeekService) :: any) :: PeekService
end

function PeekService:configurePeek(peekId, config)
	self._peekConfigs[peekId] = config
end

function PeekService:_getLifetimeConfig(peekId)
	local config = self._peekConfigs[peekId]
	if config then
		return Cryo.Dictionary.join(DEFAULT_PEEK_LIFETIME_CONFIG, if config.lifetime then config.lifetime else {})
	else
		return DEFAULT_PEEK_LIFETIME_CONFIG
	end
end

function PeekService:_hideCurrentPeek()
	local peekId = self._currentPeek
	if peekId then
		self._currentPeek = nil
		self.onPeekHidden:fire(peekId)
		self.onPeekChanged:fire(peekId)
	end
end

function PeekService:_showPeek(peekId)
	self._currentPeek = peekId
	self.onPeekShown:fire(peekId)
	self.onPeekChanged:fire(peekId)
end

function PeekService:_processPeekQueue()
	if self._currentPeek or #self._peekQueue == 0 then
		return
	end

	local nextPeekId = table.remove(self._peekQueue, 1)

	if nextPeekId then
		local lifetime = self:_getLifetimeConfig(nextPeekId)

		self:_showPeek(nextPeekId)

		task.delay(lifetime.duration, function()
			-- Since Peeks can be dismissed early we need to make sure we only
			-- hide the current Peek if it's the same one this function has been
			-- processing
			if self._currentPeek == nextPeekId then
				self:_hideCurrentPeek()
			end

			-- Peek was dismissed early. Subtract the duration the user has been
			-- waiting from the cooldown
			local cooldown = self.PEEK_COOLDOWN_SEC
			if self._dismissalTime then
				cooldown = math.max(os.time() - self._dismissalTime, 0)
				self._dismissalTime = nil
			end

			task.delay(cooldown, function()
				-- Only process the next Peek if one isn't already being shown.
				-- If this condition is true it means another thread already
				-- kicked off the next Peek
				if self._currentPeek then
					return
				end

				self:_processPeekQueue()
			end)
		end)
	end
end

function PeekService:getCurrentPeek()
	return self._currentPeek
end

function PeekService:getPeekConfig(peekId)
	return self._peekConfigs[peekId]
end

function PeekService:queuePeek(peekId)
	if peekId ~= self._currentPeek then
		local index = table.find(self._peekQueue, peekId)

		if not index then
			self.onPeekQueued:fire(peekId)
			self.onPeekChanged:fire(peekId)

			table.insert(self._peekQueue, peekId)

			self:_processPeekQueue()
		end
	end
end

function PeekService:dismissPeek(peekId)
	if self._currentPeek == peekId then
		self.onPeekDismissed:fire(peekId)
		self:_hideCurrentPeek()
		self._dismissalTime = os.time()
	end
end

function PeekService:destroy()
	self._currentPeek = nil
	table.clear(self._peekQueue)
end

return PeekService
