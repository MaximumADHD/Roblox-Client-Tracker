--[[
	Simple GUI that shows test results in Roblox Studio.
]]

local Test = script.Parent.Parent
local TestEnum = require(Test.TestEnum)
local Create = require(Test.Create)

local GuiReporter = {}

local colors = {
	[TestEnum.TestStatus.Success] = Color3.fromRGB(20, 224, 23),
	[TestEnum.TestStatus.Failure] = Color3.fromRGB(211, 38, 0),
	[TestEnum.TestStatus.Skipped] = Color3.fromRGB(244, 194, 12)
}

local shortNames = {
	[TestEnum.TestStatus.Success] = "+",
	[TestEnum.TestStatus.Failure] = "-",
	[TestEnum.TestStatus.Skipped] = "~"
}

local function autoheight(element)
	local height = 0
	for _, child in ipairs(element:GetChildren()) do
		if child:IsA("GuiBase") then
			height = height + child.AbsoluteSize.y
		end
	end

	local size = element.Size
	element.Size = UDim2.new(
		size.X.Scale,
		size.X.Offset,
		size.Y.Scale,
		height
	)
end

local function autocanvas(element)
	local height = 0
	for _, child in ipairs(element:GetChildren()) do
		if child:IsA("GuiBase") then
			height = height + child.AbsoluteSize.y
		end
	end

	element.CanvasSize = UDim2.new(0, 0, 0, height)
end

local function List(...)
	local root = Create "Frame" ({
		Name = "List",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -20, 0, 0),

		Create "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Right
		}
	}, ...)

	autoheight(root)

	return root
end

local function wasSkipped(node)
	return node.status == TestEnum.TestStatus.Skipped
end

local gui = {}

function gui.describe(node, config)
	local children = {}
	for _, child in ipairs(node.children) do
		local hide = false

		if config.hideSkipped then
			hide = wasSkipped(child)
		end

		if not hide then
			local gui = gui.node(child, config)
			table.insert(children, gui)
		end
	end

	local root = List {
		Name = node.planNode.phrase,
		Size = UDim2.new(1, 0, 0, 0),

		Create "TextLabel" {
			BackgroundTransparency = 1,
			Text = node.planNode.phrase,
			Size = UDim2.new(1, -4, 0, 24),
			TextXAlignment = Enum.TextXAlignment.Left
		},

		List(children)
	}

	autoheight(root)

	return root
end

function gui.it(node, config)
	local root = Create "Frame" {
		Name = "it " .. node.planNode.phrase,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 24),

		Create "TextLabel" {
			Name = "Result",
			Text = shortNames[node.status] or "U",
			Size = UDim2.new(0, 20, 0, 20),
			Position = UDim2.new(0, 2, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = colors[node.status] or Color3.fromRGB(255, 255, 255)
		},

		Create "TextLabel" {
			Text = node.planNode.phrase,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -28, 0, 20),
			Position = UDim2.new(0, 28, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			TextXAlignment = Enum.TextXAlignment.Left
		}
	}

	return root
end

function gui.root(node, config)
	local children = {}
	for _, child in ipairs(node.children) do
		local hide = false

		if config.hideSkipped then
			hide = wasSkipped(child)
		end

		if not hide then
			local gui = gui.node(child, config)
			table.insert(children, gui)
		end
	end

	local root = Create "ScrollingFrame" {
		Name = "TestRoot",
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),

		List(children)
	}

	autocanvas(root)

	return root
end

function gui.node(node, config)
	if node.planNode.type == TestEnum.NodeType.Describe then
		return gui.describe(node, config)
	elseif node.planNode.type == TestEnum.NodeType.It then
		return gui.it(node, config)
	end

	return gui.root(node, config)
end

function GuiReporter.report(results, config)
	config = config or {}

	if config.hideSkipped == nil then
		config.hideSkipped = false
	end

	if game:GetService("CoreGui"):FindFirstChild("TestResults") then
		game:GetService("CoreGui").TestResults:Destroy()
	end

	local gui = Create "ScreenGui" {
		Name = "TestResults",
		DisplayOrder = 1e6,

		gui.node(results, config)
	}

	gui.Parent = game:GetService("CoreGui")
end

return GuiReporter