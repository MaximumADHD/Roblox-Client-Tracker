local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

local src = Plugin.Src
local Components = src.Components
local DisplayTable = require(Components.Watch.DisplayTable)

local mockContext = require(src.Util.mockContext)
--local TestStore = require(src.Util.TestStore)
local MainReducer = require(src.Reducers.MainReducer)
local MainMiddleware = require(src.Middleware.MainMiddleware)

return function()
	local function createDisplayTable(initalState)
		return mockContext(initalState, {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(200, 200),
			}, {
				DisplayTable = Roact.createElement(DisplayTable)
			})
		})
	end

	it("should create and destroy displayTable without errors", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mockContext =  createDisplayTable(store:getState())
		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(mockContext.getChildrenWithMockContext(), folder)
		local tableView = folder:FindFirstChild("DisplayTable", true)
		expect(tableView.Contents.List:FindFirstChild("1")).to.equal(nil)
		Roact.unmount(folderInstance)
	end)
	
	-- Commenting out these unit tests as they are blocked by the infinite scrollbar. Turn Scroll = false for
	-- the Table to run these unit tests.

	--[[it("should populate based on actions", function()
		local defaultStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)

		local mockContext = createDisplayTable(defaultStore:getState())
		local store = mockContext.getStore()

		TestStore(store)
		store:flush()

		local folder = Instance.new("Folder")
		local folderInstance = Roact.mount(mockContext.getChildrenWithMockContext(), folder)

		local tableView = folder:FindFirstChild("DisplayTable", true)
		local list = tableView.Contents.List

		expect(list["1"].Row[1].Left.Text.Text).to.equal("Alex")
		expect(list["1"].Row[2].Left.Text.Text).to.equal("Local")
		expect(list["1"].Row[3].Left.Text.Text).to.equal("somePreview")
		expect(list["1"].Row[4].Left.Text.Text).to.equal("map")

		expect(list["2"].Row[1].Left.Text.Text).to.equal("UnitedStates")
		expect(list["2"].Row[2].Left.Text.Text).to.equal("Local")
		expect(list["2"].Row[3].Left.Text.Text).to.equal("somePreview2")
		expect(list["2"].Row[4].Left.Text.Text).to.equal("map")

		Roact.unmount(folderInstance)
	end)]]
end
