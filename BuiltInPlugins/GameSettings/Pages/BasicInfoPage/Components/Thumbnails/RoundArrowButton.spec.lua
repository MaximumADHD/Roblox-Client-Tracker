return function()
	SKIP()

	local Page = script.Parent.Parent.Parent
	local Plugin = script.Parent.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local RoundArrowButton = require(Page.Components.Thumbnails.RoundArrowButton)

	local function createTestRoundArrowButton(visible, flipped)
		return Roact.createElement(RoundArrowButton, {
			Visible = visible or false,
			Flipped = flipped or false,
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestRoundArrowButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRoundArrowButton(), container)
		local button = container.ImageButton

		expect(button).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should hide when not visible", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRoundArrowButton(), container)

		expect(container.ImageButton.Visible).to.equal(false)

		local newButton = createTestRoundArrowButton(true)
		instance = Roact.reconcile(instance, newButton)

		expect(container.ImageButton.Visible).to.equal(true)

		Roact.unmount(instance)
	end)

	it("should turn over when flipped", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRoundArrowButton(true, false), container)

		expect(container.ImageButton.Rotation).to.equal(0)

		local newButton = createTestRoundArrowButton(true, true)
		instance = Roact.reconcile(instance, newButton)

		expect(container.ImageButton.Rotation).to.equal(180)

		Roact.unmount(instance)
	end)
end