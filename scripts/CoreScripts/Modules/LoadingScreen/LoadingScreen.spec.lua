return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
	local StyleConstants = UIBlox.App.Style.Constants

	local LoadingScreenReducer = require(script.Parent.Reducers.LoadingScreenReducer)
	local LoadingScreen = require(script.Parent.LoadingScreen)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local function createLoadingScreenWithAppStyleProvider(reducedMotion)
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(LoadingScreenReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			Roact.createElement(AppStyleProvider, {
				style = {
					themeName = StyleConstants.ThemeName.Dark,
					fontName = StyleConstants.FontName.Gotham,
					settings = {
						reducedMotion = reducedMotion
					}
				}
			}, {
				LoadingScreen = Roact.createElement(LoadingScreen,{
					placeId = 0,
				}),
			})
		})
	end

	it("should create and destroy without errors with reducedMotion true", function()
		local element = createLoadingScreenWithAppStyleProvider(true)

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should replace shimmer with pulsate with reducedMotion true", function()
		local element = createLoadingScreenWithAppStyleProvider(true)

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local loadingOverlay = folder:FindFirstChild("LoadingOverlay", true)
		expect(loadingOverlay).toBe(nil)

		local spinner = folder:FindFirstChild("Spinner", true)
		expect(spinner).toBeDefined()

		Roact.unmount(instance)
	end)

	it("should not replace shimmer with pulsate with reducedMotion false", function()
		local element = createLoadingScreenWithAppStyleProvider(false)

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local loadingOverlay = folder:FindFirstChild("LoadingOverlay", true)
		expect(loadingOverlay).toBeDefined()

		local spinner = folder:FindFirstChild("Spinner", true)
		expect(spinner).toBe(nil)

		Roact.unmount(instance)
	end)
end