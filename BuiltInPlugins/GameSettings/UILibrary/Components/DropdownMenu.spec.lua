return function()
	local Library = script.Parent.Parent
	local Roact = require(Library.Parent.Roact)

	local MockWrapper = require(Library.MockWrapper)

	local DropdownMenu = require(script.Parent.DropdownMenu)

	local sourceExtents = Rect.new(0, 0, 150, 150)

	local function createTestDropdownMenu(props, children, container)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			DropdownMenu = Roact.createElement(DropdownMenu, props, children)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDropdownMenu({
			SourceExtents = sourceExtents,
			Items = {},
			RenderItem = function(item)
			end,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestDropdownMenu({
			SourceExtents = sourceExtents,
			Items = {},
			RenderItem = function(item)
			end,
		}, {}, container)

		local instance = Roact.mount(element, container)

		local gui = container:FindFirstChild("MockGui")
		expect(gui).to.be.ok()
		expect(gui.TopLevelDetector).to.be.ok()
		expect(gui.TopLevelDetector.ScrollBlocker).to.be.ok()
		expect(gui.TopLevelDetector.ScrollBlocker.Container).to.be.ok()

		local dropdownContainer = gui.TopLevelDetector.ScrollBlocker.Container
		expect(dropdownContainer.Layout).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should require an Items table", function()
		local element = createTestDropdownMenu({
			RenderItem = function()
			end,
			SourceExtents = sourceExtents,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()

		element = createTestDropdownMenu({
			Items = true,
			RenderItem = function()
			end,
			SourceExtents = sourceExtents,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should require a RenderItem function", function()
		local element = createTestDropdownMenu({
			Items = {},
			SourceExtents = sourceExtents,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()

		element = createTestDropdownMenu({
			Items = {},
			RenderItem = true,
			SourceExtents = sourceExtents,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should require a SourceExtents prop", function()
		local element = createTestDropdownMenu({
			Items = {},
			RenderItem = function()
			end,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should render items", function()
		local container = Instance.new("Folder")

		local element = createTestDropdownMenu({
			SourceExtents = sourceExtents,
			Items = {"Frame"},
			RenderItem = function()
				return Roact.createElement("Frame")
			end,
		}, {}, container)

		local instance = Roact.mount(element, container)

		local gui = container:FindFirstChild("MockGui")
		local dropdownContainer = gui.TopLevelDetector.ScrollBlocker.Container
		expect(dropdownContainer["1"]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should respect the order of items", function()
		local container = Instance.new("Folder")

		local element = createTestDropdownMenu({
			SourceExtents = sourceExtents,
			Items = {"FirstFrame", "SecondFrame", "ThirdFrame"},
			RenderItem = function(item, index)
				return Roact.createElement("TextLabel", {
					LayoutOrder = index,
					Text = item,
				})
			end,
		}, {}, container)

		local instance = Roact.mount(element, container)

		local gui = container:FindFirstChild("MockGui")
		local dropdownContainer = gui.TopLevelDetector.ScrollBlocker.Container
		expect(dropdownContainer["1"].LayoutOrder).to.equal(1)
		expect(dropdownContainer["2"].LayoutOrder).to.equal(2)
		expect(dropdownContainer["3"].LayoutOrder).to.equal(3)
		expect(dropdownContainer["1"].Text).to.equal("FirstFrame")
		expect(dropdownContainer["2"].Text).to.equal("SecondFrame")
		expect(dropdownContainer["3"].Text).to.equal("ThirdFrame")

		Roact.unmount(instance)
	end)
end