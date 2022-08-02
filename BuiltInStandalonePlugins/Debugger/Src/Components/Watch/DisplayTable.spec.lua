local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkList = SharedFlags.getFFlagDevFrameworkList()

local src = Plugin.Src
local Components = src.Components
local DisplayTable = require(Components.Watch.DisplayTable)

local mockContext = require(src.Util.mockContext)
local TestStore = require(src.Util.TestStore)
local MainReducer = require(src.Reducers.MainReducer)
local MainMiddleware = require(src.Middleware.MainMiddleware)
local SetWatchSortState = require(src.Actions.Watch.SetWatchSortState)

return function()
	local function createDisplayTable(initalState)
		return mockContext(initalState, {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(200, 200),
			}, {
				DisplayTable = Roact.createElement(DisplayTable),
			}),
		})
	end

	it("should create and destroy displayTable without errors", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mockContext = createDisplayTable(store:getState())
		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(mockContext.getChildrenWithMockContext(), folder)
		local tableView = folder:FindFirstChild("DisplayTable", true)
		expect(tableView.Contents.List:FindFirstChild("1")).to.equal(nil)
		Roact.unmount(folderInstance)
	end)

	it("should populate based on actions", function()
		local defaultStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)

		local mockContext = createDisplayTable(defaultStore:getState())
		local store = mockContext.getStore()

		TestStore(store)
		store:dispatch(SetWatchSortState(Enum.SortDirection.Descending, 1))
		store:flush()

		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(mockContext.getChildrenWithMockContext(), folder)

		local tableView = folder:FindFirstChild("DisplayTable", true)

		local list = if FFlagDevFrameworkList then tableView.Contents.List.Child else tableView.Contents.List.Child.Scroller

		expect((if FFlagDevFrameworkList then list["1"] else list["1"].Row)[1].Left.Text.Text).to.equal("Alex")
		expect((if FFlagDevFrameworkList then list["1"] else list["1"].Row)[2].Left.Text.Text).to.equal("Local")
		expect((if FFlagDevFrameworkList then list["1"] else list["1"].Row)[3].Left.Text.Text).to.equal("somePreview")
		expect((if FFlagDevFrameworkList then list["1"] else list["1"].Row)[4].Left.Text.Text).to.equal("map")

		expect((if FFlagDevFrameworkList then list["2"] else list["2"].Row)[1].Left.Text.Text).to.equal("UnitedStates")
		expect((if FFlagDevFrameworkList then list["2"] else list["2"].Row)[2].Left.Text.Text).to.equal("Local")
		expect((if FFlagDevFrameworkList then list["2"] else list["2"].Row)[3].Left.Text.Text).to.equal("somePreview2")
		expect((if FFlagDevFrameworkList then list["2"] else list["2"].Row)[4].Left.Text.Text).to.equal("map")

		Roact.unmount(folderInstance)
	end)
end
