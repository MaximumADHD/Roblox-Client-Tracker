return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TruncatedTextLabel = require(script.Parent)
	local TestHelpers = require(Framework.TestHelpers)

	local function createTestTruncatedTextLabelDecoration(props)
		return TestHelpers.provideMockContext(nil, {
			TruncatedTextLabel = Roact.createElement(TruncatedTextLabel,props),
		})
	end
	
	-- TextService:getTextSize() does not work in CLI, and therefore most tests will not work in CLI.
	-- We exit early out of such tests.
	-- See https://jira.rbx.com/browse/RIDE-5815 for more the ticket involving this
	local isCli, _ = pcall(function()
		game:GetService("ProcessService")
	end)

	it("should expect a Text prop", function()
		local element = createTestTruncatedTextLabelDecoration()
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should create and destroy without errors", function()
		local element = createTestTruncatedTextLabelDecoration({Text = "Script:line 8"})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should truncate properly given a suffix", function()
		if isCli then
			return
		end
		
		local folder = Instance.new("Folder")
		local element = createTestTruncatedTextLabelDecoration({
			Style = "Title",
			Text = "I hope this works. I eat Robux.",
			TextSize = 16,
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(0, 100, 0, 30),
			SuffixLength = 6,
			[Roact.Change.AbsoluteSize] = function () end,
		})
		local instance = Roact.mount(element, folder)
		local textLabel = folder:FindFirstChildOfClass("TextLabel")
		expect(textLabel.Text).to.equal("I hope thi"..utf8.char(0x2026).."Robux.")
		Roact.unmount(instance)
	end)

	it("should truncate properly given no suffix", function()
		if isCli then
			return
		end
		local folder = Instance.new("Folder")
		local element = createTestTruncatedTextLabelDecoration({
			Style = "Title",
			Text = "I hope this works. I eat Robux.",
			TextSize = 16,
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(0, 100, 0, 30),
			[Roact.Change.AbsoluteSize] = function () end,
		})
		local instance = Roact.mount(element, folder)
		local textLabel = folder:FindFirstChildOfClass("TextLabel")
		expect(textLabel.Text).to.equal("I hope this work"..utf8.char(0x2026))
		Roact.unmount(instance)
	end)

	it("should default to no suffix when given suffix is too large", function()
		if isCli then
			return
		end
		local folder = Instance.new("Folder")
		local element = createTestTruncatedTextLabelDecoration({
			Style = "Title",
			Text = "I hope this works. I eat Robux.",
			TextSize = 29,
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(0, 100, 0, 30),
			SuffixLength = 29,
			[Roact.Change.AbsoluteSize] = function () end,
		})
		local instance = Roact.mount(element,folder)
		local textLabel = folder:FindFirstChildOfClass("TextLabel")
		expect(textLabel.Text).to.equal("I hope t"..utf8.char(0x2026))
		Roact.unmount(instance)
	end)

	it("should default to no suffix when given suffix is negative large", function()
		if isCli then
			return
		end
		local folder = Instance.new("Folder")
		local element = createTestTruncatedTextLabelDecoration({
			Style = "Title",
			Text = "I hope this works. I eat Robux.",
			TextSize = 29,
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(0, 100, 0, 30),
			SuffixLength = -29,
			[Roact.Change.AbsoluteSize] = function () end,
		})
		local instance = Roact.mount(element, folder)
		local textLabel = folder:FindFirstChildOfClass("TextLabel")
		expect(textLabel.Text).to.equal("I hope t"..utf8.char(0x2026))
		Roact.unmount(instance)
	end)
end
