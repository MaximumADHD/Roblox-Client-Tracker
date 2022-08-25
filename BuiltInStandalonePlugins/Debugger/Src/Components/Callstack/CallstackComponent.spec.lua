local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkList = SharedFlags.getFFlagDevFrameworkList()
local FFlagOnlyLoadOneCallstack = require(Plugin.Src.Flags.GetFFlagOnlyLoadOneCallstack)

local src = Plugin.Src
local Components = src.Components
local CallstackComponent = require(Components.Callstack.CallstackComponent)

local mockContext = require(src.Util.mockContext)
local TestStore = require(src.Util.TestStore)
local MainReducer = require(src.Reducers.MainReducer)
local MainMiddleware = require(src.Middleware.MainMiddleware)

return function()
	local function createCallstack(initalState)
		return mockContext(initalState, {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(200, 200),
			}, {
				Callstack = Roact.createElement(CallstackComponent),
			}),
		})
	end

	it("should create and destroy callstack without errors", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mockContext = createCallstack(store:getState())
		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(mockContext.getChildrenWithMockContext(), folder)
		local tableView = folder:FindFirstChild("TableView", true)
		expect(tableView.Contents.List:FindFirstChild("1")).to.equal(nil)
		Roact.unmount(folderInstance)
	end)

	it("should populate based on actions", function()
		local defaultStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)

		local mockContext = createCallstack(defaultStore:getState())
		local store = mockContext.getStore()

		TestStore(store)
		store:flush()

		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(mockContext.getChildrenWithMockContext(), folder)

		local tableView = folder:FindFirstChild("TableView", true)
		
		if FFlagDevFrameworkList then
			local list = tableView.Contents.List.Child
			local state = store:getState()
			local currDST = state.Common.debuggerConnectionIdToDST[state.Common.currentDebuggerConnectionId]
			expect((list["1"])[1].Left.Text.Text).to.equal(
				state.Callstack.stateTokenToCallstackVars[currDST].threadList[1].displayString
			)
	
			if FFlagOnlyLoadOneCallstack() then
				expect((list["3"])[2].Left.Text.Text).to.equal("1")
				expect((list["3"])[4].Left.Text.Text).to.equal("TestFrame2")
				expect((list["3"])[5].Left.Text.Text).to.equal("20")
		
				expect((list["4"])[2].Left.Text.Text).to.equal("2")
				expect((list["4"])[4].Left.Text.Text).to.equal("TestFrame1")
				expect((list["4"])[5].Left.Text.Text).to.equal("10")
			else
				expect((list["2"])[2].Left.Text.Text).to.equal("1")
				expect((list["2"])[4].Left.Text.Text).to.equal("TestFrame1")
				expect((list["2"])[5].Left.Text.Text).to.equal("10")
		
				expect((list["3"])[2].Left.Text.Text).to.equal("2")
				expect((list["3"])[4].Left.Text.Text).to.equal("TestFrame2")
				expect((list["3"])[5].Left.Text.Text).to.equal("20")
			end
		else
			local list = tableView.Contents.List.Child.Scroller
			local state = store:getState()
			local currDST = state.Common.debuggerConnectionIdToDST[state.Common.currentDebuggerConnectionId]
			expect((list["1"].Row)[1].Left.Text.Text).to.equal(
				state.Callstack.stateTokenToCallstackVars[currDST].threadList[1].displayString
			)
	
			if FFlagOnlyLoadOneCallstack() then
				expect((list["3"].Row)[2].Left.Text.Text).to.equal("1")
				expect((list["3"].Row)[4].Left.Text.Text).to.equal("TestFrame2")
				expect((list["3"].Row)[5].Left.Text.Text).to.equal("20")
		
				expect((list["4"].Row)[2].Left.Text.Text).to.equal("2")
				expect((list["4"].Row)[4].Left.Text.Text).to.equal("TestFrame1")
				expect((list["4"].Row)[5].Left.Text.Text).to.equal("10")
			else
				expect((list["2"].Row)[2].Left.Text.Text).to.equal("1")
				expect((list["2"].Row)[4].Left.Text.Text).to.equal("TestFrame1")
				expect((list["2"].Row)[5].Left.Text.Text).to.equal("10")
		
				expect((list["3"].Row)[2].Left.Text.Text).to.equal("2")
				expect((list["3"].Row)[4].Left.Text.Text).to.equal("TestFrame2")
				expect((list["3"].Row)[5].Left.Text.Text).to.equal("20")
			end
		end
		Roact.unmount(folderInstance)
	end)
end
