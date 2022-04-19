return function()
	local JestGlobals = require(script.Parent.Parent.Parent.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
    
	describe("VirtualInput", function()
		it("should load", function()
			local VirtualInput = require(script.Parent.VirtualInput)

			expect(VirtualInput).never.toBeNil()
			expect(VirtualInput.Keyboard).never.toBeNil()
			expect(VirtualInput.Mouse).never.toBeNil()
			expect(VirtualInput.Touch).never.toBeNil()
			expect(VirtualInput.GamePad).never.toBeNil()
			expect(VirtualInput.Text).never.toBeNil()
		end)
	end)
end