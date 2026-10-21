local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Store = require(CorePackages.Packages.Rodux).Store
local DataProvider = require(script.Parent.Parent.DataProvider)
local MainViewVoiceChat = require(script.Parent.MainViewVoiceChat)
local getFFlagVoiceDebugConsoleV2 = require(script.Parent.Parent.VoiceDebug.GetFFlagVoiceDebugConsoleV2)

it("should create and destroy without errors", function()
	if game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") and not getFFlagVoiceDebugConsoleV2() then
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
					isDeveloperView = true,
				},
				VoiceChatData = {},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				MainViewVoiceChat = Roact.createElement(MainViewVoiceChat, {
					size = UDim2.new(),
					tabList = {},
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end
end)
