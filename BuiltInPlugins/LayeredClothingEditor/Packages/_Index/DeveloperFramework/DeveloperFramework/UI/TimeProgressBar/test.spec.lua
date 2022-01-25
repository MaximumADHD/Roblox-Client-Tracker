local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTimeProgressBar")

if FFlagDevFrameworkTextInput2 then
	return function()
		local Framework = script.Parent.Parent.Parent
		local Roact = require(Framework.Parent.Roact)
		local ContextServices = require(Framework.ContextServices)
		local provide = ContextServices.provide
		local TimeProgressBar = require(script.Parent)

		local StudioTheme = require(Framework.Style.Themes.StudioTheme)

		local function createTestTimeProgressBar(props, children)
			local theme = StudioTheme.mock()
			return provide({theme}, {
				TimeProgressBar = Roact.createElement(TimeProgressBar, props, children),
			})
		end

		it("should expect a TotalTime prop", function()
			local element = createTestTimeProgressBar()
			expect(function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end).to.throw()
		end)

		it("should expect TotalTime to be non-negative", function()
			local element = createTestTimeProgressBar({
				TotalTime = -1,
			})
			expect(function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end).to.throw()
		end)

		it("should create and destroy without errors", function()
			local element = createTestTimeProgressBar({
				TotalTime = 1,
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end
else
	return function() end
end
