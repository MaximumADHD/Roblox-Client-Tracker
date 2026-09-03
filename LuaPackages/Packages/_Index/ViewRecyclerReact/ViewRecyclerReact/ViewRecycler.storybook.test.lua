local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local Playground = require(Root.Stories.LayoutScrollPlayground)
local StoryControls = require(Root.Stories.Harness.StoryControls)
local StoryShell = require(Root.Stories.Harness.StoryShell)
local Storybook = require(Root["ViewRecycler.storybook"])
local ViewRecycler = require(Root)

local e = React.createElement

local EXPECTED_STORIES = {
	{ module = "LayoutScrollPlayground.story", name = "Layout & Scroll Playground" },
	{ module = "FixedSizes.story", name = "Fixed Sizes" },
	{ module = "KnownVariableSizes.story", name = "Known Variable Sizes" },
	{ module = "DynamicMeasuredRows.story", name = "Dynamic Measured Rows" },
	{ module = "ResponsiveGrid.story", name = "Responsive Grid" },
	{ module = "MasonryKnownSizes.story", name = "Masonry — Known Sizes" },
	{ module = "MultiItemTypes.story", name = "Multiple Item Types" },
	{ module = "StickyHeaders.story", name = "Sticky Headers" },
	{ module = "InfiniteScroll.story", name = "Infinite Scroll" },
	{ module = "ReverseChatFeed.story", name = "Reverse Chat Feed" },
	{ module = "RecyclingStateSafety.story", name = "Recycling State Safety" },
	{ module = "CrossListRecycling.story", name = "Cross-list Recycling" },
	{ module = "RecyclingViewport.story", name = "Viewport-coordinated Recycling" },
	{ module = "RichTextRecycling.story", name = "Rich Text Recycling" },
	{ module = "ItemBindingPerformance.story", name = "Item Binding Performance" },
	{ module = "DiagnosticsBenchmark.story", name = "Diagnostics Benchmark" },
}

local PRESETS = {
	{
		module = "FixedSizes.story",
		presetName = "FixedFocused",
	},
	{
		module = "KnownVariableSizes.story",
		presetName = "KnownVariable",
	},
	{
		module = "DynamicMeasuredRows.story",
		presetName = "Measured",
	},
}

local EXPECTED_DEMOS = {
	{ module = "Demo100KRowViewport.story", name = "Demo — 100K Row Viewport" },
	{ module = "DemoDynamicMeasuredActivityFeed.story", name = "Demo — Dynamic Measured Activity Feed" },
	{ module = "DemoEndAnchoredChat.story", name = "Demo — End-Anchored Chat" },
	{ module = "DemoResponsiveCollection.story", name = "Demo — Responsive Collection" },
	{ module = "DemoRichComposedMessages.story", name = "Demo — Rich Composed Messages" },
}

local DROPDOWN_CONTROLS = {
	["LayoutScrollPlayground.story"] = { "scenario", "axis", "alignment", "presentationMode" },
	["FixedSizes.story"] = { "axis", "alignment", "presentationMode" },
	["KnownVariableSizes.story"] = { "axis", "alignment", "presentationMode" },
	["DynamicMeasuredRows.story"] = { "alignment", "presentationMode" },
	["MasonryKnownSizes.story"] = { "axis", "sizingMode" },
	["StickyHeaders.story"] = { "pinnedItemType" },
}

describe("ViewRecycler Storybook", function()
	it("publishes package-local story discovery dependencies", function()
		expect(Storybook.name).toBe("ViewRecycler")
		expect(Storybook.roact).toBe(React)
		expect(Storybook.reactRoblox).toBe(ReactRoblox)
		expect(Storybook.storyRoot).toBe(Root.Stories)
	end)

	it("keeps every named manual regression scenario discoverable", function()
		local names = {}
		for _, expectedStory in EXPECTED_STORIES do
			local story = require(Root.Stories[expectedStory.module])
			names[story.name] = true
			expect(story.name).toBe(expectedStory.name)
			expect(type(story.summary)).toBe("string")
		end
		expect(names).toEqual({
			["Layout & Scroll Playground"] = true,
			["Fixed Sizes"] = true,
			["Known Variable Sizes"] = true,
			["Dynamic Measured Rows"] = true,
			["Responsive Grid"] = true,
			["Masonry — Known Sizes"] = true,
			["Multiple Item Types"] = true,
			["Sticky Headers"] = true,
			["Infinite Scroll"] = true,
			["Reverse Chat Feed"] = true,
			["Recycling State Safety"] = true,
			["Cross-list Recycling"] = true,
			["Viewport-coordinated Recycling"] = true,
			["Rich Text Recycling"] = true,
			["Item Binding Performance"] = true,
			["Diagnostics Benchmark"] = true,
		})
	end)

	it("publishes dedicated flagship demo entries", function()
		for _, expectedDemo in EXPECTED_DEMOS do
			local story = require(Root.Stories.Demos[expectedDemo.module])
			expect(story.name).toBe(expectedDemo.name)
			expect(type(story.summary)).toBe("string")
			expect(type(story.controls)).toBe("table")
		end
	end)

	it("gives every story native controls with a discrete overscan selector", function()
		for _, expectedStory in EXPECTED_STORIES do
			local story = require(Root.Stories[expectedStory.module])
			local controlCount = 0
			for _, control in story.controls do
				controlCount += 1
				if type(control) == "table" then
					expect(#control).toBeGreaterThan(1)
					expect(control[1]).never.toBeNil()
				end
			end

			expect(controlCount).toBeGreaterThan(0)
			local overscanControl = story.controls.overscan or story.controls.childOverscan
			expect(type(overscanControl)).toBe("table")
			expect(overscanControl[1]).never.toBeNil()
		end
	end)

	it("uses dropdowns for enum-like choices and booleans for toggles", function()
		for moduleName, controlNames in DROPDOWN_CONTROLS do
			local story = require(Root.Stories[moduleName])
			for _, controlName in controlNames do
				expect(type(story.controls[controlName])).toBe("table")
				expect(#story.controls[controlName]).toBeGreaterThan(1)
			end
		end

		expect(type(require(Root.Stories["LayoutScrollPlayground.story"]).controls.diagnostics)).toBe("boolean")
		expect(type(require(Root.Stories["ItemBindingPerformance.story"]).controls.paused)).toBe("boolean")
		expect(type(require(Root.Stories["RichTextRecycling.story"]).controls.captureMode)).toBe("boolean")
		expect(type(require(Root.Stories["RecyclingViewport.story"]).controls.captureMode)).toBe("boolean")
	end)

	it("presents capture stories on a fixed 16:9 stage with a benchmark disclaimer", function()
		local element = StoryShell.Component({
			captureMode = true,
			children = {
				Scenario = e("Frame"),
			},
			title = "Capture scenario",
		})

		expect(element.props.Size).toEqual(UDim2.fromOffset(1280, 720))
		expect(element.props.children.Banner.props.Text).toBe(
			"Capture scenario · Behavior demonstration — not a device benchmark"
		)
		expect(element.props.children.Content.props.children.CaptureLayout).never.toBeNil()
	end)

	it("routes rich messages beyond the Immediate slot cap to structural presentation", function()
		local story = require(Root.Stories["RichTextRecycling.story"])
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story, {
				controls = {
					fragmentSlotCap = 4,
					itemCount = 20,
					messageComplexity = 4,
					strategy = "cappedImmediate",
				},
			}))
		end)

		local fallbackStatusFound = false
		local renderedStructuralFragments = 0
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("Frame") and descendant.Name == "RichFragment" then
				renderedStructuralFragments += 1
			end
			if
				descendant:IsA("TextLabel")
				and string.find(descendant.Text, "fallback:", 1, true)
				and not string.find(descendant.Text, "fallback: 0", 1, true)
			then
				fallbackStatusFound = true
			end
		end
		expect(fallbackStatusFound).toBe(true)
		expect(renderedStructuralFragments).toBeGreaterThan(4)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("uses capped Immediate presentation when coalesced messages fit the slot budget", function()
		local story = require(Root.Stories["RichTextRecycling.story"])
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story, {
				controls = {
					fragmentSlotCap = 16,
					itemCount = 10,
					messageComplexity = 1,
					strategy = "cappedImmediate",
				},
			}))
		end)

		local immediateStatusFound = false
		local visibleSlotFound = false
		local hiddenSlotFound = false
		local boundTextFound = false
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("Frame") and string.find(descendant.Name, "ImmediateSlot", 1, true) == 1 then
				visibleSlotFound = visibleSlotFound or descendant.Visible
				hiddenSlotFound = hiddenSlotFound or not descendant.Visible
				local label = descendant:FindFirstChildWhichIsA("TextLabel")
				boundTextFound = boundTextFound or (label ~= nil and label.Text ~= "")
			end
			if descendant:IsA("TextLabel") and string.find(descendant.Text, "fallback: 0", 1, true) then
				immediateStatusFound = true
			end
		end
		expect(immediateStatusFound).toBe(true)
		expect(visibleSlotFound).toBe(true)
		expect(hiddenSlotFound).toBe(true)
		expect(boundTextFound).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("hybrid presentation routes eligible and oversized messages independently", function()
		local story = require(Root.Stories["RichTextRecycling.story"])
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story, {
				controls = {
					fragmentSlotCap = 8,
					itemCount = 50,
					messageComplexity = 3,
					strategy = "hybrid",
				},
			}))
		end)

		local eligibleCount = 0
		local fallbackCount = 0
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextLabel") then
				local eligible, fallback = string.match(descendant.Text, "eligible: (%d+) · fallback: (%d+)")
				if eligible ~= nil and fallback ~= nil then
					eligibleCount = tonumber(eligible) or 0
					fallbackCount = tonumber(fallback) or 0
					break
				end
			end
		end
		expect(eligibleCount).toBeGreaterThan(0)
		expect(fallbackCount).toBeGreaterThan(0)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("exposes presentation mode only on stories with safe paired item views", function()
		local storiesWithPresentationMode = {
			["LayoutScrollPlayground.story"] = true,
			["FixedSizes.story"] = true,
			["KnownVariableSizes.story"] = true,
			["DynamicMeasuredRows.story"] = true,
		}

		for _, expectedStory in EXPECTED_STORIES do
			local story = require(Root.Stories[expectedStory.module])
			expect(story.controls.presentationMode ~= nil).toBe(
				storiesWithPresentationMode[expectedStory.module] == true
			)
		end
	end)

	it("normalizes raw Storybook values without mutating defaults", function()
		local defaults = {
			count = 10,
			mode = "first",
		}
		local resolved = StoryControls.merge(defaults, {
			count = { 25, 50 },
			mode = "second",
		})

		expect(resolved).toEqual({
			count = 25,
			mode = "second",
		})
		expect(defaults).toEqual({
			count = 10,
			mode = "first",
		})
		expect(StoryControls.positiveInteger(-5, 10)).toBe(1)
		expect(StoryControls.nonNegativeNumber(-5, 10)).toBe(0)
	end)

	it("passes native controls through the playground boundary", function()
		local story = require(Root.Stories["LayoutScrollPlayground.story"])
		local element = story.story({
			controls = {
				scenario = Playground.Scenario.KnownVariable,
				itemCount = 321,
				overscan = 7,
				axis = "horizontal",
				jumpTarget = 123,
				alignment = "end",
				diagnostics = false,
				shortLength = 35,
				longLength = 81,
				spacing = 9,
			},
		})
		local resolved = Playground.resolveControls(element.props.controls)

		expect(element.type).toBe(Playground.Component)
		expect(resolved.scenario).toBe(Playground.Scenario.KnownVariable)
		expect(resolved.itemCount).toBe(321)
		expect(resolved.overscan).toBe(7)
		expect(resolved.axis).toBe(ViewRecycler.Axis.X)
		expect(resolved.jumpTarget).toBe(123)
		expect(resolved.alignment).toBe(ViewRecycler.ScrollAlignment.End)
		expect(resolved.diagnostics).toBe(false)
		expect(resolved.shortLength).toBe(35)
		expect(resolved.longLength).toBe(81)
		expect(resolved.spacing).toBe(9)
	end)

	it("renders resolved playground controls as observable list chrome", function()
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(760, 700)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(Playground.Component, {
				controls = Playground.mergeControls({
					scenario = Playground.Scenario.Fixed,
					itemCount = 25,
					jumpTarget = 17,
					alignment = "end",
					diagnostics = false,
				}),
			}))
		end)

		local titleFound = false
		local targetControlFound = false
		local scrollingFrameCount = 0
		for _, descendant in container:GetDescendants() do
			if
				descendant:IsA("TextLabel")
				and string.find(descendant.Text, "Layout & Scroll Playground — 100K Row Viewport", 1, true)
			then
				titleFound = true
			elseif descendant:IsA("TextButton") and descendant.Text == "Jump to #17 (end)" then
				targetControlFound = true
			elseif descendant:IsA("ScrollingFrame") then
				scrollingFrameCount += 1
			end
		end
		expect(titleFound).toBe(true)
		expect(targetControlFound).toBe(true)
		expect(scrollingFrameCount).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("exposes masonry controls for known-size geometry and reproducibility", function()
		local controls = require(Root.Stories["MasonryKnownSizes.story"]).controls

		expect(controls.axis).toEqual({ "vertical", "horizontal" })
		expect(controls.sizingMode).toEqual({ "responsiveItemWidth", "fixedColumns" })
		expect(controls.columnCount).toEqual({ 3, 2, 4, 5 })
		expect(controls.itemWidth).toEqual({ 150, 110, 180, 240 })
		expect(controls.itemCount).toEqual({ 120, 30, 300, 1000 })
		expect(controls.mainSpacing).toBe(10)
		expect(controls.crossAxisSpacing).toBe(10)
		expect(controls.overscan).toEqual({ 2, 0, 1, 4, 8 })
		expect(controls.randomSeed).toBe(23)
	end)

	it("renders deterministic masonry tiles with live range diagnostics", function()
		local story = require(Root.Stories["MasonryKnownSizes.story"])
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(660, 700)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story, {
				controls = {
					axis = "vertical",
					columnCount = 2,
					itemCount = 12,
					overscan = 1,
					randomSeed = 7,
					sizingMode = "fixedColumns",
				},
			}))
		end)

		local fixedModeFound = false
		local firstTileFound = false
		local knownHeightFound = false
		local visibleRangeFound = false
		local mountedRangeFound = false
		local scrollingFrameCount = 0
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("Frame") and descendant.Name == "MasonryTile" then
				firstTileFound = true
			elseif descendant:IsA("ScrollingFrame") then
				scrollingFrameCount += 1
			elseif descendant:IsA("TextLabel") then
				fixedModeFound = fixedModeFound
					or string.find(descendant.Text, "Fixed columns: 2 · seed 7 · 12 known-size items", 1, true)
						~= nil
				knownHeightFound = knownHeightFound or string.find(descendant.Text, "★ 4.3 · 210px", 1, true) ~= nil
				visibleRangeFound = visibleRangeFound
					or (
						string.find(descendant.Text, "Visible range:", 1, true) ~= nil
						and string.find(descendant.Text, "pending", 1, true) == nil
					)
				mountedRangeFound = mountedRangeFound
					or (
						string.find(descendant.Text, "Mounted range:", 1, true) ~= nil
						and string.find(descendant.Text, "pending", 1, true) == nil
					)
			end
		end

		expect(fixedModeFound).toBe(true)
		expect(firstTileFound).toBe(true)
		expect(knownHeightFound).toBe(true)
		expect(visibleRangeFound).toBe(true)
		expect(mountedRangeFound).toBe(true)
		expect(scrollingFrameCount).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("preserves the selected visual gap between measured rows", function()
		local story = require(Root.Stories["DynamicMeasuredRows.story"])
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(760, 700)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story, {
				controls = {
					itemCount = 10,
					spacing = 9,
				},
			}))
		end)

		local measuredGapFound = false
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("UIPadding") and descendant.PaddingBottom.Offset == 9 then
				measuredGapFound = true
				break
			end
		end
		expect(measuredGapFound).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("exposes measured-estimate reset as an explicit interaction", function()
		local story = require(Root.Stories["DynamicMeasuredRows.story"])
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story))
		end)

		local resetFound = false
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextButton") and descendant.Text == "Reset estimate" then
				resetFound = true
				break
			end
		end
		expect(resetFound).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("offers measured LLM streaming and history controls in the chat demonstration", function()
		local story = require(Root.Stories["ReverseChatFeed.story"])
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story))
		end)

		local buttons = {}
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextButton") then
				buttons[descendant.Text] = true
			end
		end
		expect(buttons["Load earlier"]).toBe(true)
		expect(buttons["Stream LLM response"]).toBe(true)
		expect(buttons["Go to latest"]).toBe(true)

		local measuredTextFound = false
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextLabel") and descendant.AutomaticSize == Enum.AutomaticSize.Y then
				measuredTextFound = true
				break
			end
		end
		expect(measuredTextFound).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("streams a complete response into a measured row without rerendering per token", function()
		local story = require(Root.Stories["ReverseChatFeed.story"])
		local streamedText, setStreamedText = React.createBinding("")
		local completed = story._streamResponseForTest("Tokens arrive without React renders", 0, function()
			return true
		end, setStreamedText)

		expect(completed).toBe(true)
		expect(streamedText:getValue()).toBe("  Tokens arrive without React renders")
	end)

	it("applies each named preset before per-story control overrides", function()
		for _, expectedPreset in PRESETS do
			local story = require(Root.Stories[expectedPreset.module])
			local preset = Playground.presets[expectedPreset.presetName]
			local element = story.story({
				controls = {
					overscan = 6,
					alignment = "start",
				},
			})
			local controls = element.props.controls

			expect(element.type).toBe(Playground.Component)
			expect(story.presetControls).toBe(preset.values)
			expect(controls.scenario).toBe(preset.values.scenario)
			expect(controls.overscan).toBe(6)
			expect(controls.alignment).toBe("start")
			for key, value in preset.values do
				expect(controls[key]).toBe(value)
			end
			expect(type(Playground.scenarioDetails[controls.scenario].instructions)).toBe("string")
			expect(type(Playground.scenarioDetails[controls.scenario].acceptanceCriteria)).toBe("string")
			expect(type(Playground.scenarioDetails[controls.scenario].itemUpdate)).toBe("string")
		end
	end)

	it("exposes explicit instructions and acceptance criteria on specialized stories", function()
		for index = 5, #EXPECTED_STORIES do
			local story = require(Root.Stories[EXPECTED_STORIES[index].module])
			local shell = story.story({})

			expect(string.find(shell.props.instructions, "^[^%s]") ~= nil).toBe(true)
			expect(string.find(shell.props.acceptanceCriteria, "^[^%s]") ~= nil).toBe(true)
			expect(string.find(shell.props.itemUpdate, "^[^%s]") ~= nil).toBe(true)
		end
	end)

	it("renders the homogeneous pinned-item branch in the sticky-header story", function()
		local story = require(Root.Stories["StickyHeaders.story"])
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(560, 700)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story, {
				controls = {
					pinnedItemType = "homogeneous",
				},
			}))
		end)

		local homogeneousStartFound = false
		local homogeneousEndFound = false
		local heterogeneousStartFound = false
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("TextLabel") then
				homogeneousStartFound = homogeneousStartFound
					or string.find(descendant.Text, "Homogeneous pinned start using RowItemView", 1, true) ~= nil
				homogeneousEndFound = homogeneousEndFound
					or string.find(descendant.Text, "Homogeneous pinned end using RowItemView", 1, true) ~= nil
				heterogeneousStartFound = heterogeneousStartFound
					or string.find(descendant.Text, "Sticky headers and pinned items", 1, true) ~= nil
			end
		end
		expect(homogeneousStartFound).toBe(true)
		expect(homogeneousEndFound).toBe(true)
		expect(heterogeneousStartFound).toBe(false)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("presents all managed lists in the viewport recycling story", function()
		local story = require(Root.Stories["RecyclingViewport.story"])
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(720, 700)
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(e(story.story))
		end)

		local scrollingFrameCount = 0
		for _, descendant in container:GetDescendants() do
			if descendant:IsA("ScrollingFrame") then
				scrollingFrameCount += 1
			end
		end
		expect(scrollingFrameCount).toBe(13)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
