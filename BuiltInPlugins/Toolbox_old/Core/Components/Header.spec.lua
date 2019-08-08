return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Header = require(Plugin.Core.Components.Header)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Header = Roact.createElement(Header, {
				maxWidth = 200,
				categories = {},
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should have a dropdown and a search bar", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Header = Roact.createElement(Header, {
				maxWidth = 200,
				categories = {},
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Header")

		local header = container.Header
		expect(header.CategoryMenu).to.be.ok()
		expect(header.SearchBar).to.be.ok()
		expect(header.UIPadding).to.be.ok()
		expect(header.UIListLayout).to.be.ok()

		Roact.unmount(instance)
	end)

	describeSKIP("the search bar", function()
		it("should stretch to fill remaining space", function()
			local toolboxWidths = {200, 500, 1000}
			local dropdownWidth = 120
			local totalPadding = 9 + 7 + 9 -- 9 on outside, 7 between dropdown and search bar
			local minSearchBarWidth = 100

			for _, toolboxWidth in ipairs(toolboxWidths) do
				local expectedSearchBarWidth = math.max(minSearchBarWidth, toolboxWidth - dropdownWidth - totalPadding)
				local element = Roact.createElement(MockWrapper, {}, {
					Header = Roact.createElement(Header, {
						maxWidth = toolboxWidth,
						categories = {},
					}),
				})
				local container = Instance.new("Folder")
				local instance = Roact.mount(element, container, "Header")

				local header = container.Header
				local searchBar = header.SearchBar

				expect(header.SearchBar.AbsoluteSize.x).to.equal(expectedSearchBarWidth)

				Roact.unmount(instance)
			end
		end)
	end)
end
