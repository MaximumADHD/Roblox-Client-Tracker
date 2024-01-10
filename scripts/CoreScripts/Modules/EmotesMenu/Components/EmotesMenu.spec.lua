return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
	local StyleConstants = UIBlox.App.Style.Constants
	local Colors = UIBlox.App.Style.Colors

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local EmotesModules = script.Parent.Parent
	local EmotesMenuReducer = require(EmotesModules.Reducers.EmotesMenuReducer)
	local EmotesMenu = require(script.Parent.EmotesMenu)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(EmotesMenuReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			Roact.createElement(AppStyleProvider, {
				style = {
					themeName = StyleConstants.ThemeName.Dark,
					fontName = StyleConstants.FontName.Gotham,
				}
			}, {
				EmotesMenu = Roact.createElement(EmotesMenu),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should use appropriate wheel background based on flag", function()
		local preferredTransparency = 0.7
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(EmotesMenuReducer, {}, {
				Rodux.thunkMiddleware,
			}),
		}, {
			Roact.createElement(AppStyleProvider, {
				style = {
					themeName = StyleConstants.ThemeName.Dark,
					fontName = StyleConstants.FontName.Gotham,
					settings = {
						preferredTransparency = preferredTransparency
					}
				}
			}, {
				EmotesMenu = Roact.createElement(EmotesMenu),
			})
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local backgroundCircleOverlay = folder:FindFirstChild("BackgroundCircleOverlay", true)
		expect((backgroundCircleOverlay :: Frame).BackgroundTransparency).toBeCloseTo(0.4 * preferredTransparency)
		expect((backgroundCircleOverlay :: Frame).BackgroundColor3).toBe(Colors.Flint:Lerp(Color3.new(0, 0, 0), preferredTransparency))

		Roact.unmount(instance)
	end)
end