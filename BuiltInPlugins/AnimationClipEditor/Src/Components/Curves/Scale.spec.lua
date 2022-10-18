return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Cryo = require(Plugin.Packages.Cryo)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Constants = require(Plugin.Src.Util.Constants)

	local Scale = require(script.Parent.Scale)

	local GetFFlagRetireWillUpdate = require(Plugin.LuaFlags.GetFFlagRetireWillUpdate)

	local function createTestScale(properties: Scale.Props?)
		return Roact.createElement(MockWrapper, {}, {
			Scale = Roact.createElement(
				Scale,
				Cryo.Dictionary.join({
					ParentSize = Vector2.new(20, 100),
					MinValue = 25,
					MaxValue = 75,
					VerticalZoom = 0.5,
					VerticalScroll = 0,
					ScaleType = Constants.SCALE_TYPE.Number,
				}, properties or {})
			),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestScale()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create the proper children", function()
		local container = Instance.new("Folder")
		local element = createTestScale()

		local instance = Roact.mount(element, container)
		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		if GetFFlagRetireWillUpdate() then
			expect(frame[1]).to.be.ok()
			expect(frame[1].TimeLabel).to.be.ok()
			expect(frame[1].TimeLabel.Text).to.equal("0.000")
			expect(frame[6].TimeLabel.Text).to.equal("50.000")
			expect(frame[11].TimeLabel.Text).to.equal("100.000")
		end
		Roact.unmount(instance)
	end)

	it("should display degree symbol for angles", function()
		local container = Instance.new("Folder")
		local element = createTestScale({
			ScaleType = Constants.SCALE_TYPE.Angle,
		})

		local instance = Roact.mount(element, container)
		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		if GetFFlagRetireWillUpdate() then
			expect(frame[1]).to.be.ok()
			expect(frame[1].TimeLabel).to.be.ok()
			expect(frame[1].TimeLabel.Text).to.equal("0°")
			expect(frame[6].TimeLabel.Text).to.equal("50°")
			expect(frame[11].TimeLabel.Text).to.equal("100°")
		end
		Roact.unmount(instance)
	end)
end
