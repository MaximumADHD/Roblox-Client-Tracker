local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect
local Roact = require(CorePackages.Packages.Roact)

local CollapsibleSection = require(script.Parent.CollapsibleSection)

local function allTexts(instance): { string }
	local texts = {}
	for _, descendant in instance:GetDescendants() do
		if descendant:IsA("TextLabel") then
			table.insert(texts, descendant.Text)
		end
	end
	return texts
end

it("should create and destroy without errors", function()
	local element = Roact.createElement(CollapsibleSection, {
		title = "Example",
	}, {
		Child = Roact.createElement("Frame", { Size = UDim2.new(1, 0, 0, 20) }),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("shows its children by default (expanded)", function()
	local container = Instance.new("Frame")
	local instance = Roact.mount(
		Roact.createElement(CollapsibleSection, {
			title = "Example",
		}, {
			Child = Roact.createElement(
				"TextLabel",
				{ Size = UDim2.new(1, 0, 0, 20), Text = "child content", BackgroundTransparency = 1 }
			),
		}),
		container
	)

	local texts = allTexts(container)
	Roact.unmount(instance)

	expect(table.find(texts, "child content")).toBeDefined()
end)

it("hides its children once collapsed, but keeps the header", function()
	local container = Instance.new("Frame")
	local instance = Roact.mount(
		Roact.createElement(CollapsibleSection, {
			title = "Example",
			defaultExpanded = false,
		}, {
			Child = Roact.createElement(
				"TextLabel",
				{ Size = UDim2.new(1, 0, 0, 20), Text = "child content", BackgroundTransparency = 1 }
			),
		}),
		container
	)

	local texts = allTexts(container)
	Roact.unmount(instance)

	expect(table.find(texts, "child content")).toBe(nil)
	expect(table.find(texts, "Example")).toBeDefined()
end)

it("renders exactly one expand arrow, since the header is always expandable", function()
	local container = Instance.new("Frame")
	local instance = Roact.mount(
		Roact.createElement(CollapsibleSection, {
			title = "Example",
		}, {
			Child = Roact.createElement("Frame", { Size = UDim2.new(1, 0, 0, 20) }),
		}),
		container
	)

	local arrowCount = 0
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("ImageLabel") then
			arrowCount += 1
		end
	end
	Roact.unmount(instance)

	expect(arrowCount).toBe(1)
end)
