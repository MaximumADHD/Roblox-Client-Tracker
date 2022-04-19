return function()
	local Framework = script.Parent.Parent.Parent
	local Util = require(Framework.Util)
	local FlagsList = Util.Flags.new({
		FFlagStudioDevFrameworkPackage = {"StudioDevFrameworkPackage"},
	})
	local Roact = require(Framework.Parent.Roact)
	local DragBox = require(script.Parent)
	local TestHelpers = require(Framework.TestHelpers)
	local provideMockContext = TestHelpers.provideMockContext
	local Cryo
	local isUsedAsPackage = require(Framework.Util.isUsedAsPackage)
	if FlagsList:get("FFlagStudioDevFrameworkPackage") and isUsedAsPackage() then
		Cryo = require(Framework.Parent.Cryo)
	else
		local Util = require(Framework.Util)
		Cryo = Util.Cryo
	end

	local DEFAULT_PROPS = {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Disabled = false,
		MinX = -1,
		MinY = -1,
		MaxX = 1,
		MaxY = 1,
		Value = Vector2.new(0,0),
		OnValueChanged = function() end,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 200, 0, 20),
		HorizontalDragTolerance = 300,
		VerticalDragTolerance = 300,
	}

	local function createTestDragBox(props)
		local combinedProps = Cryo.Dictionary.join(DEFAULT_PROPS, props or {})
		return provideMockContext(nil, {
			DragBox = Roact.createElement(DragBox, combinedProps)
		})
	end
	
	local function getTotalRange(minX, maxX, minY, maxY)
		local range = Vector2.new( maxX - minX , maxY - minY) 
		return range
	end	

	it("should create and destroy without errors", function()
		local element = createTestDragBox()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestDragBox()
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		Roact.unmount(instance)
	end)
	
	it("should set the knob to the correct default value", function()
		local folder = Instance.new("Folder")
		local value = Vector2.new(0.5, 0.5)
		local minX = -1
		local maxX = 1
		local minY = -1
		local maxY = 1		

		local element = createTestDragBox({
			Value = value,
			MinX = minX,
			MinY = minY,
			MaxX = maxX,
			MaxY = maxY,
		})
		local instance = Roact.mount(element, folder)
		local totalRange = getTotalRange(minX, maxX, minY, maxY)

		local button = folder:FindFirstChildOfClass("Frame")
		expect(button.Knob).to.be.ok()
		expect(button.Knob.Position.X.Scale).to.equal(  (value.X - minX) / totalRange.X  ) 
		Roact.unmount(instance)
	end)	

end