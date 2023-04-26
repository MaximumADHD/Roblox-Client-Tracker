return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)
	local GetFFlagUIBloxEnableRoDSDesignTokenSupport =
		require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport
	local AppStyleProvider = require(script.Parent.AppStyleProvider)
	local Constants = require(script.Parent.Constants)
	local withStyle = UIBlox.Core.Style.withStyle

	local appStyle = {
		themeName = Constants.ThemeName.Dark,
		fontName = Constants.FontName.Gotham,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement("Frame")
		local appStyleProvider = Roact.createElement(AppStyleProvider, {
			style = appStyle,
		}, {
			Element = element,
		})

		local instance = Roact.mount(appStyleProvider)
		Roact.unmount(instance)
	end)

	if GetFFlagUIBloxEnableRoDSDesignTokenSupport() then
		it("should load design tokens correctly", function()
			local TestElement = Roact.Component:extend("TestElement")
			local didRender = false
			function TestElement:render()
				return withStyle(function(style)
					didRender = true
					expect(style.Tokens ~= nil).equal(true)
					return nil
				end)
			end
			local appStyleProvider = Roact.createElement(AppStyleProvider, {}, {
				Element = Roact.createElement(TestElement),
			})
			local instance = Roact.mount(appStyleProvider)
			Roact.unmount(instance)
			expect(didRender).equal(true)
		end)
	else
		it("should throw when style prop is nil", function()
			local element = Roact.createElement("Frame")

			expect(function()
				local appStyleProvider = Roact.createElement(AppStyleProvider, {}, {
					Element = element,
				})
				local instance = Roact.mount(appStyleProvider)
				Roact.unmount(instance)
			end).to.throw()
		end)
	end
end
