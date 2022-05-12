return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)

	local ContextServices = require(Framework.ContextServices)
	local Theme = ContextServices.Theme
	local provide = ContextServices.provide
	local FrameworkStyles = require(Framework.UI.FrameworkStyles)

	local StudioTheme = require(Framework.Style.Themes.StudioTheme)

	local Util = require(Framework.Util)
	local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

	local ScreenFlow = require(script.Parent)

	local StartScreen = Roact.PureComponent:extend("StartScreen")
	function StartScreen:render()
		return Roact.createElement("Frame")
	end

	local function createScreenFlow()
		local theme
		if THEME_REFACTOR then
			theme = StudioTheme.mock()
		else
			theme = Theme.new(function()
				return {
					Framework = FrameworkStyles.new(),
				}
			end)
		end
		return provide({theme}, {
			ScreenFlow = Roact.createElement(ScreenFlow, {
				Screens = {StartScreen},
				GetNextIndex = function() end,
				GetPreviousIndex = function() end,
				OnScreenChanged = function() end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createScreenFlow()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local folder = Instance.new("Folder")
		local element = createScreenFlow()

		local instance = Roact.mount(element, folder)

		local frame = folder:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end