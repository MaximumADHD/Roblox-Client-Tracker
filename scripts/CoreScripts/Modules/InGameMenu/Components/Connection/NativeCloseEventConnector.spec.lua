return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux

	local InGameMenu = script.Parent.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

	local mockEducationalPolicyMapper = function(policy)
		return {
			enableEducationalPopup = function()
				return false
			end,
			educationalPopupMaxDisplayCount = function()
				return 0
			end,
		}
	end

	local NativeCloseEventConnector = require(script.Parent.NativeCloseEventConnector)

	it("should create and destroy without errors on engine feature enabled", function()
		local isNativeCloseIntercept = game:GetEngineFeature("NativeCloseIntercept")
		--[[
			NativeCloseEventConnector relies on GuiService.NativeClose which guarded
			by an engine feature NativeCloseIntercept
			Skip unit test for older engine version which NativeCloseIntercept is disabled
		]]
		if not isNativeCloseIntercept then
			SKIP()
			return
		end
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockEducationalPolicyMapper },
			},  {
				TestComponent = Roact.createElement(NativeCloseEventConnector, {
					openNativeClosePrompt = function() end,
				}),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
