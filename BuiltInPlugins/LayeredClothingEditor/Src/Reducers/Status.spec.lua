return function()
	local Plugin = script.Parent.Parent.Parent

	local Constants = require(Plugin.Src.Util.Constants)
	local SetToolMode = require(Plugin.Src.Actions.SetToolMode)
	local SetDraggerType = require(Plugin.Src.Actions.SetDraggerType)

	local Status = require(Plugin.Src.Reducers.Status)

	local function createDefaultState()
		return Status(nil, {})
	end

	it("should return a table", function()
		local state = createDefaultState()

		expect(type(state)).to.equal("table")
		expect(state.toolMode).to.equal(Constants.TOOL_MODE.None)
		expect(state.draggerType).to.equal(Enum.RibbonTool.Select)
	end)

	describe("SetToolMode action", function()
		it("should get copied to state correctly", function()
			local state = createDefaultState()
			state = Status(state, SetToolMode(Constants.TOOL_MODE.Lattice))

			expect(state.toolMode).to.be.ok()
			expect(state.toolMode).to.equal(Constants.TOOL_MODE.Lattice)
		end)
	end)

	describe("SetDraggerType action", function()
		it("should get copied to state correctly", function()
			local state = createDefaultState()
			state = Status(state, SetDraggerType(Enum.RibbonTool.Move))

			expect(state.draggerType).to.be.ok()
			expect(state.draggerType).to.equal(Enum.RibbonTool.Move)
		end)
	end)
end