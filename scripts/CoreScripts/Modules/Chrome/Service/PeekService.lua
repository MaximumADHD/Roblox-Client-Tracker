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
	tryShowPeek: (PeekService, peekId: PeekId) -> boolean,
	lockCurrentPeek: (PeekService) -> (),
	unlockCurrentPeek: (PeekService) -> (),
	dismissPeek: (PeekService, peekId: PeekId) -> (),
	destroy: (PeekService) -> (),
	getCurrentPeek: (PeekService) -> PeekId?,
	getPeekConfig: (PeekService, peekId: PeekId) -> PeekConfig,

	onPeekShown: AppCommonLib.Signal,
	onPeekDismissed: AppCommonLib.Signal,
	onPeekHidden: AppCommonLib.Signal,
	onPeekChanged: AppCommonLib.Signal,

	_getLifetimeConfig: (PeekService, peekId: PeekId) -> PeekLifetimeConfigWithDefaults,
	_showPeek: (PeekService, peekId: PeekId) -> (),
	_hideCurrentPeek: (PeekService) -> (),

	_dismissalTime: number?,
	_peekConfigs: { [PeekId]: PeekConfig },
	_currentPeek: PeekId?,
	_isCurrentPeekLocked: boolean,
	_isOnCooldown: boolean,
	_thread: thread?,
}

function PeekService.new(): PeekService
	local self = {}

	self.PEEK_COOLDOWN_SEC = GetFIntChromePeekCooldownSeconds()

	self._peekConfigs = {}
	self._isCurrentPeekLocked = false
	self._isOnCooldown = false

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

		self._isCurrentPeekLocked = false

		self._isOnCooldown = true
		self._thread = task.delay(self.PEEK_COOLDOWN_SEC, function()
			self._isOnCooldown = false
		end)
	end
end

function PeekService:_showPeek(peekId)
	self._currentPeek = peekId
	self.onPeekShown:fire(peekId)
	self.onPeekChanged:fire(peekId)
end

function PeekService:getCurrentPeek()
	return self._currentPeek
end

function PeekService:getPeekConfig(peekId)
	return self._peekConfigs[peekId]
end

function PeekService:tryShowPeek(peekId)
	if self._currentPeek or self._isOnCooldown then
		return false
	end

	self:_showPeek(peekId)

	local lifetime = self:_getLifetimeConfig(peekId)

	self._thread = task.delay(lifetime.duration, function()
		while self._isCurrentPeekLocked do
			task.wait()
		end

		-- Since Peeks can be dismissed early we need to make sure we only
		-- hide the current Peek if it's the same one this function has been
		-- processing
		if self._currentPeek == peekId then
			self:_hideCurrentPeek()
		end
	end)

	return true
end

function PeekService:lockCurrentPeek()
	if self._currentPeek then
		self._isCurrentPeekLocked = true
	end
end

function PeekService:unlockCurrentPeek()
	self._isCurrentPeekLocked = false
end

function PeekService:dismissPeek(peekId)
	if self._currentPeek == peekId then
		self.onPeekDismissed:fire(peekId)
		self:_hideCurrentPeek()
	end
end

function PeekService:destroy()
	self._currentPeek = nil

	if self._thread then
		task.cancel(self._thread)
	end
end

return PeekService
