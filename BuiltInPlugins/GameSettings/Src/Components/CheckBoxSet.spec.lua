return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)

	local theme = Theme.newDummyTheme()

	local function createBoxes(first, second)
		local testBoxes = {{
				Id = "First",
				Selected = first,
			}, {
				Id = "Second",
				Selected = second,
			},
		}
		return testBoxes
	end

	local function createTestCheckBoxSet(boxes, enabled, err)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			buttonSet = Roact.createElement(CheckBoxSet, {
				Title = "Title",
				Enabled = enabled,
				SelectionChanged = function()
				end,
				Boxes = boxes,
				ErrorMessage = err,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestCheckBoxSet({}, true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBoxSet(createBoxes(true, true)), container)
		local checkBoxSet = container.Frame

		expect(checkBoxSet.Title).to.be.ok()
		expect(checkBoxSet.Content).to.be.ok()
		expect(checkBoxSet.Content.Layout).to.be.ok()
		expect(checkBoxSet.Content["1"]).to.be.ok()
		expect(checkBoxSet.Content["2"]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should enable its boxes when enabled", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBoxSet(createBoxes(true, false), true), container)
		local checkBoxSet = container.Frame

		expect(checkBoxSet.Content["1"].Background.Selection.Visible).to.equal(true)
		expect(checkBoxSet.Content["2"].Background.Selection.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should disable its boxes when disabled", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBoxSet(createBoxes(true, true), false), container)
		local checkBoxSet = container.Frame

		expect(checkBoxSet.Content["1"].Background.Selection.Visible).to.equal(false)
		expect(checkBoxSet.Content["2"].Background.Selection.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should display the passed error message", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBoxSet(createBoxes(true, true), true, "Error"), container)
		local checkBoxSet = container.Frame

		expect(checkBoxSet.Content.Error).to.be.ok()
		expect(checkBoxSet.Content.Error.Visible).to.equal(true)
		expect(checkBoxSet.Content.Error.Text).to.equal("Error")

		local noError = createTestCheckBoxSet(createBoxes(true, true), true, nil)
		instance = Roact.reconcile(instance, noError)

		expect(checkBoxSet.Content:FindFirstChild("Error")).never.to.be.ok()

		Roact.unmount(instance)
	end)
end