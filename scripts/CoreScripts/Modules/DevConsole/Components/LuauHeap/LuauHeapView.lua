--!strict
-- This component displays the snapshot list and a table tab group where each tab displays different aspects of the selected snapshot
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local HeaderButton = require(Components.HeaderButton)
local BannerButton = require(Components.BannerButton)
local CellLabel = require(Components.CellLabel)
local BoxButton = require(Components.BoxButton)
local LuauHeapViewEntry = require(script.Parent.LuauHeapViewEntry)
local LuauHeapViewStatEntry = require(script.Parent.LuauHeapViewStatEntry)
local LuauHeapViewRefEntry = require(script.Parent.LuauHeapViewRefEntry)
local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

local Actions = script.Parent.Parent.Parent.Actions
local SetLuauHeapActiveSnapshot = require(Actions.SetLuauHeapActiveSnapshot)
local SetLuauHeapCompareSnapshot = require(Actions.SetLuauHeapCompareSnapshot)

local Constants = require(script.Parent.Parent.Parent.Constants)

local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local HEADER_HEIGHT = Constants.GeneralFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.GeneralFormatting.EntryFrameHeight

local VALUE_CELL_WIDTH = Constants.LuauHeapFormatting.ValueCellWidth
local CELL_PADDING = Constants.LuauHeapFormatting.CellPadding
local VALUE_PADDING = Constants.LuauHeapFormatting.ValuePadding
local SNAPSHOT_WIDTH = Constants.LuauHeapFormatting.SnapshotWidth
local SNAPSHOT_HIGHLIGHT_SIZE = Constants.LuauHeapFormatting.SnapshotHighlightSize
local TABS_HEIGHT = Constants.LuauHeapFormatting.TabsHeight
local TAB_BUTTON_WIDTH = Constants.LuauHeapFormatting.TabButtonWidth
local TAB_BUTTON_HEIGHT = Constants.LuauHeapFormatting.TabButtonHeight
local TAB_BUTTON_PAD = Constants.LuauHeapFormatting.TabButtonPad
local TAB_HIGHLIGHT_HEIGHT = Constants.LuauHeapFormatting.TabHighlightHeight
local TABLE_HINT_HEIGHT = Constants.LuauHeapFormatting.TableHintHeight

local contentByType = {
	["graph"] = {
		hint = [[Graph displays the size of the objects in Luau VM aggregated by the shortest path from the root Engine references to them.
		Most important root references are ModuleScript tables and functions connected to signals or the task scheduler.]],
		headers = { "Name", "Size", "Self" },

		initFragmentSource = function(view)
			return view:renderChildren()
		end,
	},
	["tag"] = {
		hint = [[This memory breakdown displays how much memory is used by Luau VM types.]],
		headers = { "Name", "Size", "Count" },

		initFragmentSource = function(view)
			return view:renderChildrenStats("TagBreakdown")
		end,
	},
	["memcat"] = {
		hint = [[Memory separated by the category at the time of allocation.
		Memory category is assigned to the thread performing the allocation, not the script.
		Default value is based on the script name. Custom value can be assigned using 'debug.setmemorycategory' API.]],
		headers = { "Name", "Size", "Count" },

		initFragmentSource = function(view)
			return view:renderChildrenStats("MemcatBreakdown")
		end,
	},
	["userdata"] = {
		hint = [[This breakdown shows how much memory inside Luau VM is taken by custom Roblox engine classes.
		For DataModel classes like 'Part' this does not include the memory taken inside the engine itself.]],
		headers = { "Name", "Size", "Count" },

		initFragmentSource = function(view)
			return view:renderChildrenStats("UserdataBreakdown")
		end,
	},
	[if game:GetEngineFeature("UnparentedInstances") then "UniqueRefs" else "refs"] = {
		hint = [[This view shows engine DataModel instances that are only referenced by Luau VM and are not directly parented to the DataModel.
		For each instance, it will show the set of paths that make it accessible and prevent garbage collection.
		Most often, engine Luau references come from ModuleScript tables, active signal connections and active coroutines in the task scheduler.]],
		headers = { "Name", "Count", "Total Instances" },

		initFragmentSource = function(view)
			return view:renderChildrenRefs()
		end,
	},
}

if game:GetEngineFeature("UnparentedInstances") then 
	contentByType["UnparentedRefs"] = {
		hint = [[This view shows engine DataModel instances that are not parented to any instance (and are also not unique references).
		For each instance, it will show the set of paths that make it accessible and prevent garbage collection.
		]],
		headers = { "Name", "Count", "Total Instances" },

		initFragmentSource = function(view)
			return view:renderUnparentedRefs()
		end,
	}
end

local LuauHeapView = Roact.PureComponent:extend("LuauHeapView")

function LuauHeapView:renderSnapshotList()
	local data = self.props.data :: { LuauHeapTypes.HeapReport }

	local children = {}

	for key, value in data do
		children[key] = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			inset = 0,
			isExpanded = false,
			isExpandable = false,
			layoutOrder = key,
			onButtonPress = function()
				self.props.dispatchSetLuauHeapActiveSnapshot(key)
			end,
		}, {
			name = Roact.createElement(CellLabel, {
				text = `Snapshot #{key}`,
				size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0)),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
			}),

			HorizontalHighlightTop = if self.props.activeSnapshot == key
				then Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, SNAPSHOT_HIGHLIGHT_SIZE),
					BackgroundColor3 = LINE_COLOR,
				})
				else nil,

			HorizontalHighlightBottom = if self.props.activeSnapshot == key
				then Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, SNAPSHOT_HIGHLIGHT_SIZE),
					Position = UDim2.new(0, 0, 1, -SNAPSHOT_HIGHLIGHT_SIZE),
					BackgroundColor3 = LINE_COLOR,
				})
				else nil,

			HorizontalHighlightLeft = if self.props.activeSnapshot == key
				then Roact.createElement("Frame", {
					Size = UDim2.new(0, SNAPSHOT_HIGHLIGHT_SIZE, 1, 0),
					BackgroundColor3 = LINE_COLOR,
				})
				else nil,

			HorizontalHighlightRight = if self.props.activeSnapshot == key
				then Roact.createElement("Frame", {
					Size = UDim2.new(0, SNAPSHOT_HIGHLIGHT_SIZE, 1, 0),
					Position = UDim2.new(1, -SNAPSHOT_HIGHLIGHT_SIZE, 0, 0),
					BackgroundColor3 = LINE_COLOR,
				})
				else nil,

			Compare = if self.props.activeSnapshot ~= key
				then Roact.createElement(BoxButton, {
					text = "Compare",
					size = UDim2.new(0.3, -6, 1, -6),
					pos = UDim2.new(0.7, 3, 0, 3),
					onClicked = function()
						self.props.dispatchSetLuauHeapCompareSnapshot(key)
					end,
				})
				else nil,
		})
	end

	return children
end

function LuauHeapView:renderChildren()
	local data = self.props.data[self.props.activeSnapshot] :: LuauHeapTypes.HeapReport
	local compare = self.props.data[self.props.compareSnapshot] :: LuauHeapTypes.HeapReport

	return Roact.createElement(LuauHeapViewEntry, {
		layoutOrder = 0,
		depth = 0,
		data = if data then data.Graph else nil,
		compare = if compare then compare.Graph else nil,
	})
end

function LuauHeapView:renderChildrenStats(group)
	local data = self.props.data[self.props.activeSnapshot] :: LuauHeapTypes.HeapReport
	local compare = self.props.data[self.props.compareSnapshot] :: LuauHeapTypes.HeapReport

	local list = data[group] :: { LuauHeapTypes.HeapReportStatsEntry }
	local listCompare = if compare then compare[group] :: { LuauHeapTypes.HeapReportStatsEntry } else nil

	local children = {}

	for key, value in list do
		local compare = nil

		if listCompare then
			for ck, cv in ipairs(listCompare) do
				if value.Name == cv.Name then
					compare = cv
					break
				end
			end
		end

		children[key] = Roact.createElement(LuauHeapViewStatEntry, {
			layoutOrder = -value.Size, -- Sort by reverse size
			depth = 0,
			data = value,
			compare = compare,
		})
	end

	return children
end

function LuauHeapView:renderUnparentedRefs()
	local data = self.props.data[self.props.activeSnapshot] :: LuauHeapTypes.HeapReport
	local refs = data.Refs

	if not refs then
		return {}
	end
	local roots = refs.UnparentedReferences
	if not roots then
		return {}
	end

	local children = {}

	for key, value in roots do
		children[key] = Roact.createElement(LuauHeapViewRefEntry, {
			layoutOrder = -value.Instances, -- Sort by reverse instance count
			depth = 0,
			data = value,
		})
	end

	return children
end

function LuauHeapView:renderChildrenRefs()
	local data = self.props.data[self.props.activeSnapshot] :: LuauHeapTypes.HeapReport

	local refs = data.Refs

	if not refs then
		return {}
	end
	assert(refs) -- TODO: Remove with FFlagLuauTinyControlFlowAnalysis

	local roots = refs.Roots

	local children = {}

	for key, value in roots do
		children[key] = Roact.createElement(LuauHeapViewRefEntry, {
			layoutOrder = -value.Instances, -- Sort by reverse instance count
			depth = 0,
			data = value,
		})
	end

	return children
end

function LuauHeapView:createTabSelector(size, position)
	local function onTabSelected(tab)
		self:setState({
			activeTab = tab,
		})
	end

	local function createButton(tab, text, offset)
		return Roact.createElement(BoxButton, {
			text = text,
			size = UDim2.new(0, TAB_BUTTON_WIDTH, 0, TAB_BUTTON_HEIGHT),
			pos = UDim2.new(0, TAB_BUTTON_WIDTH * offset, 0, 0),
			onClicked = function()
				onTabSelected(tab)
			end,
		})
	end

	local function createHighlight(tab, offset)
		return if self.state.activeTab == tab
			then Roact.createElement("Frame", {
				Size = UDim2.new(0, TAB_BUTTON_WIDTH, 0, TAB_HIGHLIGHT_HEIGHT),
				Position = UDim2.new(0, TAB_BUTTON_WIDTH * offset, 0, TAB_BUTTON_HEIGHT - TAB_HIGHLIGHT_HEIGHT),
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.HighlightBlue,
				ZIndex = 10, -- move it on top
			})
			else nil
	end
	if game:GetEngineFeature("UnparentedInstances") then 
		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			BackgroundTransparency = 1,
		}, {
			Graph = createButton("graph", "Graph", 0),
			GraphHighlight = createHighlight("graph", 0),

			Tags = createButton("tag", "Object Tags", 1),
			TagHighlight = createHighlight("tag", 1),

			Memcat = createButton("memcat", "Memory Categories", 2),
			MemcatHighlight = createHighlight("memcat", 2),

			Userdata = createButton("userdata", "Object Classes", 3),
			UserdataHighlight = createHighlight("userdata", 3),

			Refs = createButton("UniqueRefs", "Unique References", 4),
			RefHighlight = createHighlight("UniqueRefs", 4),

			UnparentedInstances = createButton("UnparentedRefs", "Unparented Instances", 5),
			UnparentedHighlight = createHighlight("UnparentedRefs", 5),
		})
	else 
		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			BackgroundTransparency = 1,
		}, {
			Graph = createButton("graph", "Graph", 0),
			GraphHighlight = createHighlight("graph", 0),

			Tags = createButton("tag", "Object Tags", 1),
			TagHighlight = createHighlight("tag", 1),

			Memcat = createButton("memcat", "Memory Categories", 2),
			MemcatHighlight = createHighlight("memcat", 2),

			Userdata = createButton("userdata", "Object Classes", 3),
			UserdataHighlight = createHighlight("userdata", 3),

			Refs = createButton("refs", "Unique References", 4),
			RefHighlight = createHighlight("refs", 4),

			UnparentedInstances = createButton("UnparentedRefs", "Unparented Instances", 5),
			UnparentedHighlight = createHighlight("UnparentedRefs", 5),
		})
	end
end

function LuauHeapView:createStatsTableHeader(posScaleY, posOffsetY, headers)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1 - SNAPSHOT_WIDTH, 0, 0, HEADER_HEIGHT),
		Position = UDim2.new(SNAPSHOT_WIDTH, 0, posScaleY, posOffsetY),
		BackgroundTransparency = 1,
	}, {
		First = if headers[1]
			then Roact.createElement(HeaderButton, {
				text = headers[1],
				size = UDim2.new(1 - VALUE_CELL_WIDTH * 2, -VALUE_PADDING - CELL_PADDING, 0, HEADER_HEIGHT),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
				sortfunction = self.onSortChanged,
			})
			else nil,
		Second = if headers[2]
			then Roact.createElement(HeaderButton, {
				text = headers[2],
				size = UDim2.new(VALUE_CELL_WIDTH, -CELL_PADDING, 0, HEADER_HEIGHT),
				pos = UDim2.new(1 - VALUE_CELL_WIDTH * 2, VALUE_PADDING, 0, 0),
				sortfunction = self.onSortChanged,
			})
			else nil,
		Third = if headers[3]
			then Roact.createElement(HeaderButton, {
				text = headers[3],
				size = UDim2.new(VALUE_CELL_WIDTH, -CELL_PADDING, 0, HEADER_HEIGHT),
				pos = UDim2.new(1 - VALUE_CELL_WIDTH, VALUE_PADDING, 0, 0),
				sortfunction = self.onSortChanged,
			})
			else nil,
		TopHorizontal = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),
		LowerHorizontal = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LINE_WIDTH),
			Position = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),
		Vertical1 = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = UDim2.new(1 - VALUE_CELL_WIDTH, 0, 0, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),
		Vertical2 = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = UDim2.new(1 - VALUE_CELL_WIDTH * 2, 0, 0, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),
	})
end

function LuauHeapView:init()
	self.state = {
		activeTab = "graph",
	}
end

function LuauHeapView:render()
	local layoutOrder = self.props.layoutOrder
	local size = self.props.size
	local label = nil

	local content = contentByType[self.state.activeTab]

	if not self.props.data or #self.props.data == 0 then
		label = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Text = "Capture a Snapshot to view details",
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		})
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		SnapshotHeader = Roact.createElement(HeaderButton, {
			text = "Snapshots",
			size = UDim2.new(SNAPSHOT_WIDTH, -CELL_PADDING, 0, HEADER_HEIGHT),
			pos = UDim2.new(0, CELL_PADDING, 0, 0),
		}),

		Snapshots = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(SNAPSHOT_WIDTH, -4, 1, -HEADER_HEIGHT),
			Position = UDim2.new(0, 2, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = Enum.ScrollBarInset.None,
			ScrollBarThickness = 5,
			CanvasSize = UDim2.fromScale(0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Stroke = Roact.createElement("UIStroke", {
				Thickness = 2,
				Color = Color3.new(0.6, 0.6, 0.6),
			}),
			Children = Roact.createFragment(self:renderSnapshotList()),
		}),

		Tabs = self:createTabSelector(
			UDim2.new(1 - SNAPSHOT_WIDTH, 0, 0, TABS_HEIGHT),
			UDim2.new(SNAPSHOT_WIDTH, 0, 0, 0)
		),

		Hint = Roact.createElement("TextLabel", {
			Size = UDim2.new(1 - SNAPSHOT_WIDTH, 0, 0, TABLE_HINT_HEIGHT),
			Position = UDim2.new(SNAPSHOT_WIDTH, 0, 0, TABS_HEIGHT),
			Text = content.hint,
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
		}),

		Headers = self:createStatsTableHeader(0.0, TABS_HEIGHT + TABLE_HINT_HEIGHT, content.headers),

		Entries = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1 - SNAPSHOT_WIDTH, 0, 1.0, -(TABS_HEIGHT + TABLE_HINT_HEIGHT + HEADER_HEIGHT)),
			Position = UDim2.new(SNAPSHOT_WIDTH, 0, 0, TABS_HEIGHT + TABLE_HINT_HEIGHT + HEADER_HEIGHT),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = Enum.ScrollBarInset.None,
			ScrollBarThickness = 5,
			CanvasSize = UDim2.fromScale(0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Children = if label then label else Roact.createFragment(content.initFragmentSource(self)),
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetLuauHeapActiveSnapshot = function(snapshotNum: number)
			dispatch(SetLuauHeapActiveSnapshot(snapshotNum))
		end,
		dispatchSetLuauHeapCompareSnapshot = function(snapshotNum: number)
			dispatch(SetLuauHeapCompareSnapshot(snapshotNum))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(LuauHeapView)
