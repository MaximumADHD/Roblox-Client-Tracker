return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Colors = require(Plugin.Core.Util.Colors)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)

	local Footer = require(Plugin.Core.Components.Footer.Footer)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			Footer = Roact.createElement(Footer, {
				backgrounds = {},
				selectedBackgroundIndex = 1,
				hoveredBackgroundIndex = 0,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should have the correct background buttons", function()
		local backgrounds = {
			{
				name = "White",
				color = "White",
			},
			{
				name = "Black",
				color = "Black",
			},
			{
				name = "None",
				color = "None",
			}
		}

		local element = Roact.createElement(MockWrapper, {}, {
			Footer = Roact.createElement(Footer, {
				backgrounds = backgrounds,
				selectedBackgroundIndex = 1,
				hoveredBackgroundIndex = 0,
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Footer")

		local footer = container.Footer
		local frame = footer.Frame -- Container frame inside the footer

		for _, background in ipairs(backgrounds) do
			expect(frame[background.name]).to.be.ok()
		end

		-- "+ 2" for the text label and UIListLayout
		expect(#frame:GetChildren()).to.equal(#backgrounds + 2)

		Roact.unmount(instance)
	end)

	itSKIP("should select and hover the correct background buttons", function()
		-- TODO CLIDEVSRVS-1687: Fix this test for the new theme APIs
		-- It checks the colours of buttons but they can be different with the new API

		local backgrounds = {
			{
				name = "White",
				color = "White",
			},
			{
				name = "Black",
				color = "Black",
			},
			{
				name = "None",
				color = "None",
			}
		}
		local selectedIndex = 1
		local hoveredIndex = 2

		local element = Roact.createElement(MockWrapper, {}, {
			Footer = Roact.createElement(Footer, {
				backgrounds = backgrounds,
				selectedBackgroundIndex = selectedIndex,
				hoveredBackgroundIndex = hoveredIndex,
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "Footer")

		local footer = container.Footer
		local frame = footer.Frame -- Container frame inside the footer

		for index, background in ipairs(backgrounds) do
			if index == selectedIndex then
				expect(frame[background.name].ImageColor3).to.equal(Colors.BLUE_PRIMARY)
			else
				expect(frame[background.name].ImageColor3).to.equal(Colors.WHITE)
			end

			if index == hoveredIndex or index == selectedIndex then
				expect(frame[background.name].Border.ImageColor3).to.equal(Colors.BLUE_PRIMARY)
			else
				expect(frame[background.name].Border.ImageColor3).to.equal(Colors.GRAY_3)
			end
		end

		Roact.unmount(instance)
	end)
end
