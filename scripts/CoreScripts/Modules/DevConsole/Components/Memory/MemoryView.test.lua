local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local afterEach = JestGlobals.afterEach

local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)

local FFlagDevConsoleKeyCollisionFix = require(script.Parent.Flags.FFlagDevConsoleKeyCollisionFix)
local MemoryView = require(script.Parent.MemoryView)

local dummmyMemoryData = {
	getMemoryData = function()
		return {
			summaryTable = {},
			summaryCount = 0,
			entryList = nil,
		}
	end,
	treeUpdatedSignal = function()
		return Signal.new()
	end,
}

local mountedInstance: any
local container: any

afterEach(function()
	if mountedInstance then
		Roact.unmount(mountedInstance)
		mountedInstance = nil
	end
	if container then
		container:Destroy()
		container = nil
	end
end)

-- dataSet must be a real CircularBuffer: MemoryViewEntry and LineGraph call :back(),
-- :front() and :iterator() on it. Return type is open so tests can attach children.
local function graphStats(): { [string]: any }
	local dataSet = CircularBuffer.new(2)
	dataSet:push_back({ time = 0, data = 0 })
	dataSet:push_back({ time = 1, data = 1 })

	return {
		dataSet = dataSet,
		max = 1,
		min = 0,
	}
end

local function makeMemoryData(entries)
	return {
		getMemoryData = function()
			return entries
		end,
		treeUpdatedSignal = function()
			return Signal.new()
		end,
		getSortType = function()
			return nil
		end,
		setSortType = function() end,
	}
end

local function mountMemoryView(entries, mountName)
	container = Instance.new("ScreenGui")
	container.Parent = game:GetService("CoreGui")

	Roact.act(function()
		mountedInstance = Roact.mount(
			Roact.createElement(MemoryView, {
				targetMemoryData = makeMemoryData(entries),
				size = UDim2.fromOffset(500, 800),
				layoutOrder = 1,
				searchTerm = "",
			}),
			container,
			mountName
		)
	end)

	-- Rows live in the "Entries" ScrollingFrame, a sibling of the Header.
	return container[mountName].Entries
end

-- Rows are direct children of the ScrollingFrame; everything else is scaffolding.
local function rowNames(scrollingFrame)
	local names = {}
	for _, child in scrollingFrame:GetChildren() do
		local isScaffolding = child:IsA("UIListLayout")
			or child.Name == "WindowingPadding"
			or child.Name == "noDataMessage"
		if not isScaffolding then
			table.insert(names, child.Name)
		end
	end
	return names
end

it("should create and destroy without errors", function()
	local element = Roact.createElement(MemoryView, {
		targetMemoryData = dummmyMemoryData,
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

-- Regression: RIDE-11892. Roact children are one flat dict for the whole tree, so rows
-- sharing a name overwrote each other. Siblings are name-unique, so the reachable case
-- is duplicates under different parents.
it("renders same-named children living under different parents", function()
	local function parentWithSharedChild(parentName)
		local parentStats = graphStats()
		parentStats.sortedChildren = {
			{ name = "Composite Texture", dataStats = graphStats() },
		}
		return { name = parentName, dataStats = parentStats }
	end

	local scrollingFrame = mountMemoryView({
		parentWithSharedChild("GraphicsTextureCharacter"),
		parentWithSharedChild("GraphicsTexture"),
	}, "MemoryViewSharedChildNames")

	local names = rowNames(scrollingFrame)
	-- 2 parents + 1 child each; with the flag off the two children collide, leaving 3.
	local expectedRows = if FFlagDevConsoleKeyCollisionFix then 4 else 3

	expect(#names).toBe(expectedRows)

	local seen = {}
	for _, name in names do
		expect(seen[name]).toBeNil()
		seen[name] = true
	end
end)
