return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local AutoSizedTextLabel = require(script.Parent.AutoSizedTextLabel)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AutoSizedTextLabel, {
			Text = "Hello",
			TextSize = 10,
			Font = Enum.Font.SourceSans,
			width = 100,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should not throw even if no text is provided", function()
		local element = Roact.createElement(AutoSizedTextLabel, {
			TextSize = 10,
			Font = Enum.Font.SourceSans,
			width = 100,
		})

		expect(Roact.mount(element)).to.be.ok()
	end)

	it("should clamp its height if maxHeight was provided", function()
		local element = Roact.createElement(AutoSizedTextLabel, {
			Text = "Really long text that should get to a height larger than 1 line!",
			TextSize = 10,
			Font = Enum.Font.SourceSans,
			width = 100,
			maxHeight = 2,
		})

		local folder = Instance.new("Frame")
		Roact.mount(element, folder)
		local textLabel = folder:FindFirstChildWhichIsA("GuiObject")

		expect(textLabel.Size.Y.Offset).to.equal(2)
	end)
end
