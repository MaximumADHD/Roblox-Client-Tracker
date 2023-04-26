return function()
	describe("useUiModeInfo", function()
		local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
		local Packages = RobloxAppHooks.Parent
		local React = require(Packages.React)
		local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
		local mockStore = UnitTestHelpers.mockStore
		local mockProviders = UnitTestHelpers.mockProviders
		local renderHookWithProviders = UnitTestHelpers.renderHookWithProviders

		local JestGlobals = require(Packages.Dev.JestGlobals)
		local expect = JestGlobals.expect

		local RobloxAppEnums = require(Packages.RobloxAppEnums)

		local DeviceOrientationModeEnum = RobloxAppEnums.DeviceOrientationMode

		local useUiModeInfo = require(script.Parent.useUiModeInfo)
		type UiModeInfo = useUiModeInfo.UiModeInfo

		local function makeMockProviders(store)
			store = store or mockStore({
				DeviceOrientation = DeviceOrientationModeEnum.Landscape,
			})

			return {
				function(props)
					return mockProviders(React.createElement(React.Fragment, nil, props.children), {
						store = store,
					})
				end,
			}
		end

		it("should render without any issues", function()
			local helper = renderHookWithProviders(function()
				return useUiModeInfo()
			end, {
				providers = makeMockProviders(),
			})

			expect(helper.result).toBeDefined()

			helper.cleanup()
		end)

		it("should include deviceType and uiMode props", function()
			local helper = renderHookWithProviders(function()
				return useUiModeInfo()
			end, {
				providers = makeMockProviders(),
			})

			expect(type(helper.result.deviceType)).toBe("string")
			expect(helper.result.uiMode).toBe("Unknown")

			helper.cleanup()
		end)
	end)
end
