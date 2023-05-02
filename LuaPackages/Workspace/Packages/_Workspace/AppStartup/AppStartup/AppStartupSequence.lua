local AppStartup = script:FindFirstAncestor("AppStartup")
local Packages = AppStartup.Parent
local AppCommonLib = require(Packages.AppCommonLib)
local Signal = AppCommonLib.Signal

type Signal = AppCommonLib.Signal

export type AppStartupSequence = {
	default: AppStartupSequence,
	new: () -> AppStartupSequence,
	changed: Signal,
	isInteractive: boolean,
	setInteractive: (self: AppStartupSequence) -> (),
}

local AppStartupSequence: AppStartupSequence = {} :: AppStartupSequence;

(AppStartupSequence :: any).__index = AppStartupSequence

function AppStartupSequence.new(): AppStartupSequence
	local self = {
		changed = Signal.new(),
		isInteractive = false,
	}
	setmetatable(self, AppStartupSequence)
	return (self :: any) :: AppStartupSequence
end

function AppStartupSequence:setInteractive(): ()
	if self.isInteractive then
		return
	end
	self.isInteractive = true
	self.changed:fire()
end

AppStartupSequence.default = AppStartupSequence.new()

return AppStartupSequence
