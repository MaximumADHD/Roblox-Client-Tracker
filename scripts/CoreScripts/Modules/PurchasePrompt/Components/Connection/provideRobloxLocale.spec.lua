return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Root = script.Parent.Parent.Parent
	
	local getLocalizationContext = require(Root.Localization.getLocalizationContext)
	local Connection = script.Parent

	local LocalizationContextProvider = require(Connection.LocalizationContextProvider)
	local provideRobloxLocale = require(Connection.provideRobloxLocale)

	it("should create and destroy without errors", function()

		local renderedFrameRef = Roact.createRef()

		local element = Roact.createElement(LocalizationContextProvider, {
			localizationContext = getLocalizationContext("en-us")
		}, {
			provideRobloxLocale = provideRobloxLocale(function()
				return Roact.createElement("Frame", {
					[Roact.Ref] = renderedFrameRef,
				})
			end)
		})

		local instance = Roact.mount(element)

		expect(renderedFrameRef.current).to.be.ok()
		expect(renderedFrameRef.current:IsA("Instance")).to.be.ok()

		Roact.unmount(instance)
	end)
end
