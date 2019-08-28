local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)
local DraftListItem = require(script.Parent.DraftListItem)

local AutosaveState = require(Plugin.Src.Symbols.AutosaveState)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local DraftState = require(Plugin.Src.Symbols.DraftState)

return function()
	local function createTestElement(initialState, container, props, children)
		return Roact.createElement(MockServiceWrapper, {
			Container = container,
			storeState = initialState,
		}, {
			DraftListItem = Roact.createElement(DraftListItem, props, children)
		})
	end

	local function createTestScript()
		return Instance.new("Script")
	end

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            MainView = Roact.createElement(DraftListItem, {}),
        })
        local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

    it("should render correctly", function()
        local draft = createTestScript()
        draft.Name = "DraftTestScript"

        local initialState = {
            Drafts = {
                [draft] = {
                    [DraftState.Outdated] = true,
                    [DraftState.Deleted] = false,
                    [DraftState.Autosaved] = AutosaveState.Saved,
                    [DraftState.Committed] = CommitState.Committed,
                }
            }
        }

        local container = Instance.new("Folder")
        local element = createTestElement(initialState, container, {
            Draft = draft,
            IndicatorMargin = 32,
            TextSize = 22,
            Font = Enum.Font.Arial,
        })
        local instance = Roact.mount(element, container)

        local item = container:FindFirstChildOfClass("Frame")
        expect(item:FindFirstChild("ScriptName")).to.be.ok()
        expect(item:FindFirstChild("Status")).to.be.ok()
        expect(item:FindFirstChild("Indicator")).to.be.ok()

        Roact.unmount(instance)
    end)
end