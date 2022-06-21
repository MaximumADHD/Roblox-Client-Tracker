local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local DraftListView = require(script.Parent.DraftListView)

local AutosaveState = require(Plugin.Src.Symbols.AutosaveState)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local DraftState = require(Plugin.Src.Symbols.DraftState)

return function()
	local function createTestElement(initialState, container, props, children)
		return Roact.createElement(MockServiceWrapper, {
			Container = container,
			storeState = initialState,
		}, {
			DraftListView = Roact.createElement(DraftListView, props, children)
		})
	end

	local function createTestScript()
		return Instance.new("Script")
	end

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			MainView = Roact.createElement(DraftListView, {}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should render correctly with no drafts", function()
		local container = Instance.new("Folder")
		local initialState = {
			Drafts = {},
		}

		local element = createTestElement(initialState, container)

		local instance = Roact.mount(element, container)

		local background = container:FindFirstChildOfClass("Frame")
		expect(background).to.be.ok()
		expect(background:FindFirstChild("EmptyLabel")).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should render correctly when there are drafts", function()
		local container = Instance.new("Folder")
		local numDrafts = 3
		local numUIConstraints = 1
		local initialState = {
			Drafts = {}
		}

		for _=1, numDrafts do
			initialState.Drafts[createTestScript()] = {
				[DraftState.Outdated] = false,
				[DraftState.Deleted] = false,
				[DraftState.Autosaved] = AutosaveState.Saved,
				[DraftState.Committed] = CommitState.Uncommitted,
			}
		end

		local element = createTestElement(initialState, container)

		local instance = Roact.mount(element, container)

		local background = container:FindFirstChildOfClass("Frame")
		expect(background).to.be.ok()
		expect(background:FindFirstChild("EmptyLabel")).never.to.be.ok()

		local fitContent = background:FindFirstChildOfClass("Frame").Contents
			:FindFirstChildOfClass("ScrollingFrame"):FindFirstChildOfClass("Frame")
		expect(#fitContent:GetChildren()).to.equal(numDrafts + numUIConstraints)

		Roact.unmount(instance)
	end)
end