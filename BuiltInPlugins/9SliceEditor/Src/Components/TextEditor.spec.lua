return function()
	local Plugin = script.Parent.Parent.Parent
	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local withTestComponent = TestHelper.withTestComponent

	local TextEditor = require(script.Parent.TextEditor)
	local Orientation = require(Plugin.Src.Util.Orientation)

	it("should create and destroy without errors", function()
		withTestComponent(TextEditor, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {10, 90, 10, 90},
			setSliceRect = function()
			end,
		}, function()
		end)
	end)

	it("should create 4 TextOffsets", function()
		withTestComponent(TextEditor, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {10, 90, 10, 90},
			setSliceRect = function()
			end,
		}, function(container)
			expect(container:FindFirstChild("LeftInput", true)).to.be.ok()
			expect(container:FindFirstChild("RightInput", true)).to.be.ok()
			expect(container:FindFirstChild("TopInput", true)).to.be.ok()
			expect(container:FindFirstChild("BottomInput", true)).to.be.ok()
		end)
	end)
end
