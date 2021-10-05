local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Components = Plugin.Src.Components
local BreakpointsTable = require(Components.Breakpoints.BreakpointsTable)
local AddBreakpoint = require(Plugin.Src.Actions.BreakpointsWindow.AddBreakpoint)
local Models = Plugin.Src.Models
local BreakpointModel = require(Models.Breakpoint)

local mockContext = require(Plugin.Src.Util.mockContext)

return function()
	local function createBreakpointsTable(...)
		local arg = {...}
		local initialStore = arg[1] or {Breakpoint = {BreakpointIdsInDebuggerConnection = {}, BreakpointInfo = {}}}
		return mockContext(initialStore, {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(200, 200),
			}, {
				BreakpointsTable = Roact.createElement(BreakpointsTable)
			})
		})
	end

	it("should create and destroy breakpoints without errors", function()
		local breakpointsTableElement =  createBreakpointsTable()
		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(breakpointsTableElement.getChildrenWithMockContext(), folder)
		local breakpointsTable = folder:FindFirstChild("BreakpointsTable", true)
		local list = breakpointsTable:FindFirstChild("TablePane"):FindFirstChild("BreakpointsTable").Contents.List
		expect(list:FindFirstChild("1", false)).to.equal(nil)
		Roact.unmount(folderInstance)
	end)

	it("should populate and sort breakpoints table through actions", function()
		local breakpointsTableElement = createBreakpointsTable()
		local store = breakpointsTableElement.getStore()
		
		--uniqueID is used as the lineNumber in the mock breakpoints, which is how the breakpoints are sorted
		for i, uniqueId in ipairs({8, 10, 9}) do
			store:dispatch(AddBreakpoint(123, BreakpointModel.mockBreakpoint({}, uniqueId)))
		end
		store:flush()

		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(breakpointsTableElement.getChildrenWithMockContext(), folder)
		local breakpointsTable = folder:FindFirstChild("BreakpointsTable",true)
		local treeTable = breakpointsTable:FindFirstChild("TablePane"):FindFirstChild("BreakpointsTable")
		local list = treeTable.Contents.List

		expect(list:FindFirstChild("1", false)).to.be.ok()
		expect(list["1"].Row[2].Left.Text.Text).to.equal("8")
		expect(list["1"].Row[5].Left.Text.Text).to.equal("varNum8 == 0")
		expect(list["1"].Row[6].Left.Text.Text).to.equal("varNum8")

		expect(list:FindFirstChild("2", false)).to.be.ok()
		expect(list["2"].Row[2].Left.Text.Text).to.equal("9")
		expect(list["2"].Row[5].Left.Text.Text).to.equal("varNum9 == 0")
		expect(list["2"].Row[6].Left.Text.Text).to.equal("varNum9")

		expect(list:FindFirstChild("3", false)).to.be.ok()
		expect(list["3"].Row[2].Left.Text.Text).to.equal("10")
		expect(list["3"].Row[5].Left.Text.Text).to.equal("varNum10 == 0")
		expect(list["3"].Row[6].Left.Text.Text).to.equal("varNum10")

		expect(list:FindFirstChild("4", false)).to.equal(nil)

		Roact.unmount(folderInstance)
	end)
	
	it("should populate and sort breakpoints table set by initial store", function()
		local initialBreakpointData = {}
		
		--uniqueID is used as the lineNumber in the mock breakpoints, which is how the breakpoints are sorted
		for i, uniqueId in ipairs({8, 10, 9}) do
			initialBreakpointData = Cryo.Dictionary.join(initialBreakpointData, {[uniqueId] = BreakpointModel.mockBreakpoint({}, uniqueId)})
		end
		local breakpointsTableElement = createBreakpointsTable(
			{Breakpoint = 
				{
					BreakpointIdsInDebuggerConnection = {[123] = {[8]=8, [10]=10, [9]=9}}, 
					BreakpointInfo = initialBreakpointData
				}
			})
		
		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(breakpointsTableElement.getChildrenWithMockContext(), folder)
		local breakpointsTable = folder:FindFirstChild("BreakpointsTable",true)

		local treeTable = breakpointsTable:FindFirstChild("TablePane"):FindFirstChild("BreakpointsTable")
		local list = treeTable.Contents.List

		expect(list:FindFirstChild("1", false)).to.be.ok()
		expect(list["1"].Row[2].Left.Text.Text).to.equal("8")
		expect(list["1"].Row[5].Left.Text.Text).to.equal("varNum8 == 0")
		expect(list["1"].Row[6].Left.Text.Text).to.equal("varNum8")

		expect(list:FindFirstChild("2", false)).to.be.ok()
		expect(list["2"].Row[2].Left.Text.Text).to.equal("9")
		expect(list["2"].Row[5].Left.Text.Text).to.equal("varNum9 == 0")
		expect(list["2"].Row[6].Left.Text.Text).to.equal("varNum9")

		expect(list:FindFirstChild("3", false)).to.be.ok()
		expect(list["3"].Row[2].Left.Text.Text).to.equal("10")
		expect(list["3"].Row[5].Left.Text.Text).to.equal("varNum10 == 0")
		expect(list["3"].Row[6].Left.Text.Text).to.equal("varNum10")

		expect(list:FindFirstChild("4", false)).to.equal(nil)

		Roact.unmount(folderInstance)
	end)
end
