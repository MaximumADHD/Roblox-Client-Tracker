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
	local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

	local function createTestTextLabelDecoration(props)
		props = props or {}
		props.Text = props.Text or "hello world"
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
			TextLabel = Roact.createElement(TextLabel, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTextLabelDecoration()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("check that the Roact.Ref is passed to the underlying frame", function()
		local ref = Roact.createRef()
		local element = createTestTextLabelDecoration({
			[Roact.Ref] = ref
		})
		local instance = Roact.mount(element)
		expect(ref.current.ClassName).to.equal("TextLabel")
		Roact.unmount(instance)
	end)
end
