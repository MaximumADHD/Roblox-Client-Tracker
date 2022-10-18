--!strict
return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Line = require(script.Parent.Line)

	local function createTestLine(x1, y1, x2, y2, width, color, transparency)
		return Roact.createElement(MockWrapper, {}, {
			Line = Roact.createElement(Line, {
				A = Vector2.new(x1, y1),
				B = Vector2.new(x2, y2),
				Width = width,
				Color = color,
				Transparency = transparency,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestLine(0, 0, 100, 100, 1, Color3.fromRGB(255, 0, 0), 0.5)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept points in any X order", function()
		local element = createTestLine(100, 100, 0, 0, 1, Color3.fromRGB(255, 0, 0), 0.5)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestLine(0, 0, 100, 100, 1, Color3.fromRGB(255, 0, 0), 0.5)
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
