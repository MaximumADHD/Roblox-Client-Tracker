return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Theme = ContextServices.Theme
	local provide = ContextServices.provide
	local FrameworkStyles = require(Framework.UI.FrameworkStyles)
	local TextLabel = require(script.Parent)

	local StudioTheme = require(Framework.Style.Themes.StudioTheme)

	local Util = require(Framework.Util)
	local FlagsList = Util.Flags.new({
		FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	})

	local function createTestTextLabelDecoration()
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
			TextLabel = Roact.createElement(TextLabel,{
				Text = "hello world"
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTextLabelDecoration()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end