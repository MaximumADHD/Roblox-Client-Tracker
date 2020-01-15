local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockMouse = require(TestHelpers.MockMouse)

local AxisLockedDragger = require(script.Parent.AxisLockedDragger)

return function()
	it("should be creatable", function()
		local ald = AxisLockedDragger.new(
				MockMouse.new(),
				Vector3.new(0, 0, 0),
				Vector3.new(0, 1, 0),
				function(newPosition)
					return newPosition
				end
			)
		expect(ald).to.be.ok()
		ald:destroy()
	end)

	it("should require a mouse instance", function()
		expect(function()
			AxisLockedDragger.new(
				nil,
				Vector3.new(0, 0, 0),
				Vector3.new(0, 1, 0),
				function(newPosition)
					return newPosition
				end
			)
		end).to.throw()
	end)
end
