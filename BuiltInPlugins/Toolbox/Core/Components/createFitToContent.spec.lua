return function()
	local Plugin = script.Parent.Parent.Parent
	local Packages = Plugin.Packages
	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Roact
	if FFlagToolboxDeduplicatePackages then
		Roact = require(Packages.Roact)
	else
		Roact = require(Plugin.Libs.Roact)
	end

	local createFitToContent = require(Plugin.Core.Components.createFitToContent)

	it("should create and destroy without errors", function()
		local fitToContent = createFitToContent("Frame", "UIListLayout", {})
		local component = Roact.createElement(fitToContent, {}, {})
		local instance = Roact.mount(component)

		Roact.unmount(instance)
	end)

	it("should throw an error if size is specified", function()
		local fitToContent = createFitToContent("Frame", "UIListLayout", {})
		local component = Roact.createElement(fitToContent, {
			Size = UDim2.new(),
		}, {})

		expect(function()
			Roact.mount(component)
		end).to.throw()
	end)

	it("should add a Layout to its children", function()
		local container = Instance.new("Folder")

		local fitToContent = createFitToContent("Frame", "UIListLayout", {})
		local component = Roact.createElement(fitToContent, {}, {
			Frame1 = Roact.createElement("Frame"),
			Frame2 = Roact.createElement("Frame"),
		})

		local instance = Roact.mount(component, container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.Frame1).to.be.ok()
		expect(frame.Frame2).to.be.ok()
		expect(frame.Layout).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should add padding if BorderSize is specified", function()
		local container = Instance.new("Folder")

		local fitToContent = createFitToContent("Frame", "UIListLayout", {
			BorderSize = 5,
		})
		local component = Roact.createElement(fitToContent, {}, {
			Frame1 = Roact.createElement("Frame"),
			Frame2 = Roact.createElement("Frame"),
		})

		local instance = Roact.mount(component, container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame.Layout).to.be.ok()
		expect(frame.Padding).to.be.ok()

		Roact.unmount(instance)
	end)
end
