return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local StoryHost = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	local function getProps()
		local definition = {
			story = function()
				return Roact.createElement("TextLabel", {
					Text = "Test"
				})
			end,
			roact = Roact,
		}
		return {
			StoryProps = {
				story = definition.story,
				definition = definition,
			},
			ThemeName = "Light",

		}
	end

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(StoryHost, getProps()))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(StoryHost, getProps()))
		local instance = Roact.mount(element, container)
		Roact.unmount(instance)
	end)

end
