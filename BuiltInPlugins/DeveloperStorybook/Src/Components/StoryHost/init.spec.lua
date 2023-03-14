return function()
	local Main = script.Parent.Parent.Parent.Parent
	local Roact = require(Main.Packages.Roact)
	local StoryHost = require(script.Parent)
	local MockWrap = require(Main.Src.Resources.MockWrap)

	local function getProps()
		local definition = {
			story = function()
				return Roact.createElement("TextLabel", {
					Text = "Test",
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
			Platform = "Console",
		}
	end

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(StoryHost, getProps()))
		local instance = Roact.mount(element, container)
		expect(container.Element.Contents.Name).to.be.ok()
		Roact.unmount(instance)
	end)
end
