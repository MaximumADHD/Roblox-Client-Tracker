-- TODO (awarwick) 5/16/2020 Remove Roact-Rodux with this flag and remap RoactRodux
-- to the new version in the project json
if game:DefineFastFlag("StudioGameSettingsNewUseRoactRodux", false) then
	return require(script.Parent.RoactRodux_2_2)
end

local StoreProvider = require(script.StoreProvider)
local connect = require(script.connect)
local getStore = require(script.getStore)

return {
	StoreProvider = StoreProvider,
	connect = connect,
	UNSTABLE_getStore = getStore,
	UNSTABLE_connect2 = connect,
}