return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Theme = ContextServices.Theme
	local provide = ContextServices.provide
	local FrameworkStyles = require(Framework.UI.FrameworkStyles)
	local Box = require(script.Parent)
	local TestHelpers = require(Framework.TestHelpers)

	local StudioTheme = require(Framework.Style.Themes.StudioTheme)

	local Util = require(Framework.Util)
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local function createTestBoxDecoration()
		if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
			return TestHelpers.provideMockContext(nil, {
				BoxDecoration = Roact.createElement(Box),
			})
		else
			local theme
			if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
				theme = StudioTheme.new()
			else
				theme = Theme.new(function()
					return {
						Framework = FrameworkStyles.new(),
					}
				end)
			end
			return provide({theme}, {
				BoxDecoration = Roact.createElement(Box),
			})
		end
	end

	it("should create and destroy without errors", function()
		local element = createTestBoxDecoration()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end