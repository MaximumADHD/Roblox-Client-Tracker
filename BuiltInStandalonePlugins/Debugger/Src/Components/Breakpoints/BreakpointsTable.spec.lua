local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Components = Plugin.Src.Components
local BreakpointsTable = require(Components.Breakpoints.BreakpointsTable)
local AddBreakpoint = require(Plugin.Src.Actions.BreakpointsWindow.AddBreakpoint)
local Models = Plugin.Src.Models
local MetaBreakpointModel = require(Models.MetaBreakpoint)

local mockContext = require(Plugin.Src.Util.mockContext)

return function()
	local function createBreakpointsTable(...)
		local arg = {...}
		local initialStore = arg[1] or {Breakpoint = {BreakpointIdsInDebuggerConnection = {}, MetaBreakpoints = {}}}
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
	
	it("should populate breakpoints table through actions", function()
		local breakpointsTableElement = createBreakpointsTable()
		local store = breakpointsTableElement.getStore()
		
		--no default order, need to sort them explicitly before they're in a specific order.
		for _, uniqueId in ipairs({8, 10, 9}) do
			store:dispatch(AddBreakpoint(123, MetaBreakpointModel.mockMetaBreakpoint({}, uniqueId)))
		end
		store:flush()

		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(breakpointsTableElement.getChildrenWithMockContext(), folder)
		local breakpointsTable = folder:FindFirstChild("BreakpointsTable",true)
		local treeTable = breakpointsTable:FindFirstChild("TablePane"):FindFirstChild("BreakpointsTable")
		local list = treeTable.Contents.List

		expect(list:FindFirstChild("1", false)).to.be.ok()
		expect(list["1"].Row[2].Left.ScriptNameLabel).to.be.ok()
		expect(string.match(list["1"].Row[5].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")
		expect(string.match(list["1"].Row[6].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")

		expect(list:FindFirstChild("2", false)).to.be.ok()
		expect(list["2"].Row[2].Left.ScriptNameLabel).to.be.ok()
		expect(string.match(list["2"].Row[5].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")
		expect(string.match(list["2"].Row[6].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")

		expect(list:FindFirstChild("3", false)).to.be.ok()
		expect(list["3"].Row[2].Left.ScriptNameLabel).to.be.ok()
		expect(string.match(list["3"].Row[5].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")
		expect(string.match(list["3"].Row[6].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")

		expect(list:FindFirstChild("4", false)).to.equal(nil)

		Roact.unmount(folderInstance)
	end)
	
	it("should populate breakpoints table set by initial store", function()
		local initialBreakpointData = {}
		
		--no default order, need to sort them explicitly before they're in a specific order.
		for i, uniqueId in ipairs({8, 10, 9}) do
			initialBreakpointData = Cryo.Dictionary.join(initialBreakpointData, {[uniqueId] = MetaBreakpointModel.mockMetaBreakpoint({}, uniqueId)})
		end
		local breakpointsTableElement = createBreakpointsTable(
			{Breakpoint = 
				{
					BreakpointIdsInDebuggerConnection = {[123] = {[8]=8, [10]=10, [9]=9}}, 
					MetaBreakpoints = initialBreakpointData
				}
			})
		
		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(breakpointsTableElement.getChildrenWithMockContext(), folder)
		local breakpointsTable = folder:FindFirstChild("BreakpointsTable",true)

		local treeTable = breakpointsTable:FindFirstChild("TablePane"):FindFirstChild("BreakpointsTable")
		local list = treeTable.Contents.List

		expect(list:FindFirstChild("1", false)).to.be.ok()
		expect(list["1"].Row[2].Left.ScriptNameLabel).to.be.ok()
		expect(string.match(list["1"].Row[5].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")
		expect(string.match(list["1"].Row[6].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")

		expect(list:FindFirstChild("2", false)).to.be.ok()
		expect(list["2"].Row[2].Left.ScriptNameLabel).to.be.ok()
		expect(string.match(list["2"].Row[5].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")
		expect(string.match(list["2"].Row[6].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")

		expect(list:FindFirstChild("3", false)).to.be.ok()
		expect(list["3"].Row[2].Left.ScriptNameLabel).to.be.ok()
		expect(string.match(list["3"].Row[5].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")
		expect(string.match(list["3"].Row[6].Left.Text.Contents.TextBox.Text, "varNum")).to.equal("varNum")

		expect(list:FindFirstChild("4", false)).to.equal(nil)

		Roact.unmount(folderInstance)
	end)
end
