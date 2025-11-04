local Packages = script.Parent.Parent
local Signals = require(Packages.Signals)

type scope = Signals.scope
type dispose = Signals.dispose

local function onDisposed(scope: scope, dispose: dispose)
	local function source(_, delete: true?)
		if delete then
			dispose()
		end
		return 0
	end

	scope(source)
end

return onDisposed
