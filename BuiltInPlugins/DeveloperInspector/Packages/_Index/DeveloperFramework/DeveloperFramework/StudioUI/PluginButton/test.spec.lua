return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local PluginButton = require(script.Parent)

	local MockPluginToolbar = require(Framework.TestHelpers.Instances.MockPluginToolbar)

	local function mockToolbar()
		return MockPluginToolbar.new(nil, "")
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(PluginButton, {
			Toolbar = mockToolbar(),
			Title = "Test",
			OnClick = function()
			end,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should expect a Title prop", function()
		local element = Roact.createElement(PluginButton, {
			Toolbar = mockToolbar(),
		})

		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should expect a Toolbar prop", function()
		local element = Roact.createElement(PluginButton, {
			Title = "Test",
		})

		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	describe("Id and Title props", function()
		it("should handle just Title", function()
			local toolbar = mockToolbar()

			local title = "Some localized string"

			local element = Roact.createElement(PluginButton, {
				Toolbar = toolbar,
				Title = title,
				OnClick = function()
				end,
			})

			local instance = Roact.mount(element)

			local buttons = toolbar:getButtons()
			expect((next(buttons))).to.be.ok()

			local button = buttons[title]
			expect(button).to.be.ok()
			expect(button:getId()).to.equal(title)
			expect(button.Text).to.equal(title)

			Roact.unmount(instance)
		end)

		it("should handle both existing", function()
			local toolbar = mockToolbar()

			local id = "button_unique_id"
			local title = "Some localized string"

			local element = Roact.createElement(PluginButton, {
				Toolbar = toolbar,
				Id = id,
				Title = title,
				OnClick = function()
				end,
			})

			local instance = Roact.mount(element)

			local buttons = toolbar:getButtons()
			expect((next(buttons))).to.be.ok()

			local button = buttons[id]
			expect(button).to.be.ok()
			expect(button:getId()).to.equal(id)
			expect(button.Text).to.equal(title)

			Roact.unmount(instance)
		end)

		it("should require Title prop", function()
			local element = Roact.createElement(PluginButton, {
				Toolbar = mockToolbar(),
				Id = "button_unique_id",
				OnClick = function()
				end,
			})

			expect(function()
				local instance = Roact.mount(element)
				Roact.unmount(instance)
			end).to.throw()
		end)
	end)
end
