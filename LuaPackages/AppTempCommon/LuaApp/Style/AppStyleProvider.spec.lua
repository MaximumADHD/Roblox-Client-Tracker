return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local AppStyleProvider = require(script.Parent.AppStyleProvider)
	local Constants = require(script.Parent.Constants)
	local appStyle = {
		themeName = Constants.ThemeName.Dark,
		fontName = Constants.FontName.Gotham,
	}
	it("should create and destroy without errors", function()
		local element = Roact.createElement("Frame")
		local appStyleProvider = Roact.createElement(AppStyleProvider, {
			style = appStyle,
		},{
			Element = element,
		})

		local instance = Roact.mount(appStyleProvider)
		Roact.unmount(instance)
	end)

	it("should throw when style prop is nil", function()
		local element = Roact.createElement("Frame")
		local appStyleProvider = Roact.createElement(AppStyleProvider, {},{
			Element = element,
		})
		expect(function()
			local instance = Roact.mount(appStyleProvider)
			Roact.unmount(instance)
		end).to.throw()
	end)
end