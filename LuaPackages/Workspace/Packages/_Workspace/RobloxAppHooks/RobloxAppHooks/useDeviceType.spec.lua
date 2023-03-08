return function()
	describe("useDeviceType", function()
		local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
		local Packages = RobloxAppHooks.Parent

		local React = require(Packages.React)
		local Rodux = require(Packages.Rodux)
		local RoactRodux = require(Packages.RoactRodux)

		local ReactRoblox = require(Packages.Dev.ReactRoblox)
		local JestGlobals = require(Packages.Dev.JestGlobals)
		local expect = JestGlobals.expect

		local RoactServices = require(Packages.RoactServices).RoactServices
		local RobloxAppEnums = require(Packages.RobloxAppEnums)

		local DeviceOrientationModeEnum = RobloxAppEnums.DeviceOrientationMode
		type DeviceType = RobloxAppEnums.DeviceType

		local useDeviceType = require(script.Parent.useDeviceType)

		it("it should without any issues", function()
			local deviceType: DeviceType = nil
			local function component()
				deviceType = useDeviceType()
			end

			local store = Rodux.Store.new(function(state, action)
				return {
					DeviceOrientation = DeviceOrientationModeEnum.Landscape,
				}
			end)

			-- TODO: Replace mockServices with util version once it is packagified
			local mockServices = function(componentMap, extraArgs: any?)
				local root = componentMap

				if extraArgs.includeStoreProvider then
					root = {
						StoreProvider = React.createElement(RoactRodux.StoreProvider, {
							store = store,
						}, root),
					}
				end

				root = React.createElement(RoactServices.ServiceProvider, {}, root)

				return root
			end

			local container = Instance.new("Frame")
			local root = ReactRoblox.createRoot(container)

			local function render(): any?
				ReactRoblox.act(function()
					local element: any = mockServices({
						Component = React.createElement(component),
					}, {
						includeStoreProvider = true,
					})

					root:render(element)
				end)
				return
			end

			local ok, result = pcall(render)

			root:unmount()

			if not ok then
				error(result)
			end

			expect(ok).toBeTruthy()
			expect(deviceType).toBeDefined()
		end)
	end)
end
