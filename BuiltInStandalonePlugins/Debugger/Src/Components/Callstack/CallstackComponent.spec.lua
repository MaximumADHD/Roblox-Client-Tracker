local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

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
				Callstack = Roact.createElement(CallstackComponent)
			})
		})
	end

	it("should create and destroy callstack without errors", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mockContext =  createCallstack(store:getState())
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
		local list = tableView.Contents.List

		expect(list["1"].Row[1].Left.Text.Text).to.equal("Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script")
		expect(list["4"].Row[1].Left.Text.Text).to.equal("TestThread2")

		Roact.unmount(folderInstance)
	end)
end
