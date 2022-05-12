return function()
	local ControlPointView = require(script.Parent.ControlPointView)

	it("should create and destroy without errors", function()
		local point = ControlPointView.new()
		expect(point).to.be.ok()
		point:cleanup()
		expect(point.controlPoint).to.equal(nil)
		expect(point.adornment)
	end)

	it("should render correctly", function()
		local point = ControlPointView.new()
		local partParent = Instance.new("Part")
		local adornmentParent = game:GetService("CoreGui")
		point:render({
			Position = Vector3.new(0, 0, 0),
			Selected = false,
			Hovered = false,
			Weight = 1.0,
			Transparency = 0.7,
			Size = 0.05,
			Shape = "Box",
			PartParent = partParent,
			AdornmentParent = adornmentParent,
			Name = "ControlPoint",
		})
		expect(point.adornment).to.be.ok()
		expect(point.controlPoint).to.be.ok()

		local adornment = adornmentParent:FindFirstChild("BoxHandleAdornment")
		local part = partParent:FindFirstChild("ControlPoint")
		expect(point.adornment).to.equal(adornment)
		expect(point.controlPoint).to.equal(part)

		partParent:Destroy()
		point:cleanup()
	end)

	it("should render correctly with rename", function()
		local point = ControlPointView.new()
		local partParent = Instance.new("Part")
		local adornmentParent = game:GetService("CoreGui")
		point:render({
			Position = Vector3.new(0, 0, 0),
			Selected = false,
			Hovered = false,
			Weight = 1.0,
			Transparency = 0.7,
			Size = 0.05,
			Shape = "Box",
			PartParent = partParent,
			AdornmentParent = adornmentParent,
			Name = "ControlPoint",
		})

		point.controlPoint.Name = "test"
		expect(point.controlPoint.Name).to.equal("ControlPoint")

		partParent:Destroy()
		point:cleanup()
	end)

	it("should switch correctly", function()
		local point = ControlPointView.new()
		local partParent = Instance.new("Part")
		local adornmentParent = game:GetService("CoreGui")
		point:render({
			Position = Vector3.new(0, 0, 0),
			Selected = false,
			Hovered = false,
			Weight = 1.0,
			Transparency = 0.7,
			Size = 0.05,
			Shape = "Sphere",
			PartParent = partParent,
			AdornmentParent = adornmentParent,
			Name = "ControlPoint",
		})

		expect(point.adornment).to.equal(adornmentParent:FindFirstChild("SphereHandleAdornment"))

		point:render({
			Position = Vector3.new(0, 0, 0),
			Selected = false,
			Hovered = false,
			Weight = 1.0,
			Transparency = 0.7,
			Size = 0.05,
			Shape = "Box",
			PartParent = partParent,
			AdornmentParent = adornmentParent,
			Name = "ControlPoint",
		})

		expect(point.adornment).to.equal(adornmentParent:FindFirstChild("BoxHandleAdornment"))
		expect(adornmentParent:FindFirstChild("SphereHandleAdornment")).to.equal(nil)

		partParent:Destroy()
		point:cleanup()
	end)
end
