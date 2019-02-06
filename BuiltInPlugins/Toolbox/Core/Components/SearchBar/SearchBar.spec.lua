return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local SearchBar = require(Plugin.Core.Components.SearchBar.SearchBar)

	local Workspace = game:GetService("Workspace")

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			SearchBar = Roact.createElement(SearchBar, {
				width = 100,
				onSearchRequested = function() end,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	describe("the textbox", function()
		it("should move as text is typed", function()
			local width = 200
			local element = Roact.createElement(MockWrapper, {}, {
				SearchBar = Roact.createElement(SearchBar, {
					width = width,
				}),
			})
			local container = Workspace.ToolboxTestsTarget
			local instance = Roact.mount(element, container, "SearchBar")
			local searchBar = container.SearchBar
			local textBox = searchBar.Background.Border.TextContainer.TextBox

			local str = ("abcdefghijklmnopqrstuvwxyz"):rep(2)

			textBox.Text = str:sub(1, 1)
			local previousWidth = textBox.AbsoluteSize.x

			for i = 1, #str, 1 do
				local text = str:sub(1, i)
				textBox.Text = text

				local width = textBox.AbsoluteSize.x
				expect(width >= previousWidth).to.equal(true)
				previousWidth = width
			end

			Roact.unmount(instance)
		end)
	end)
end
