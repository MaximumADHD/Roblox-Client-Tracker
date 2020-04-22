return function()
	local Cell = script.Parent
	local Core = Cell.Parent
	local UIBlox = Core.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local GenericCell = require(Cell.GenericCell)

	local MOCK_THEME = {
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 0,
	}

	local MOCK_FONT = {
		Font = Enum.Font.GothamSemibold,
		RelativeSize = 12,
		RelativeMinSize = 12,
	}

	it("should create and destroy GenericCell without errors", function()
		local element = mockStyleComponent({
			genericCell = Roact.createElement(GenericCell, {
				dividerStyle = MOCK_THEME,
				colorStyle = MOCK_THEME,
				onStateChanged = function() end,
				renderLeftContent = function()
					return Roact.createElement("Frame")
				end,
				renderRightContent = function()
					return Roact.createElement("Frame")
				end,
				titleText = "title",
				subtitleText = "subtitle",
				fontStyle = MOCK_FONT,
				textStyle = MOCK_THEME,
				subtitleFontStyle = MOCK_FONT,
				subtitleTextStyle = MOCK_THEME,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy GenericSelectionCell with left component without errors", function()
		local element = mockStyleComponent({
			genericCell = Roact.createElement(GenericCell, {
				dividerStyle = MOCK_THEME,
				colorStyle = MOCK_THEME,
				onStateChanged = function() end,
				renderLeftContent = function()
					return Roact.createElement("Frame")
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy GenericSelectionCell with right component without errors", function()
		local element = mockStyleComponent({
			genericCell = Roact.createElement(GenericCell, {
				dividerStyle = MOCK_THEME,
				colorStyle = MOCK_THEME,
				onStateChanged = function() end,
				renderRightContent = function()
					return Roact.createElement("Frame")
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)


	it("should create and destroy GenericSelectionCell with Center Text without errors", function()
		local element = mockStyleComponent({
			genericCell = Roact.createElement(GenericCell, {
				dividerStyle = MOCK_THEME,
				colorStyle = MOCK_THEME,
				onStateChanged = function() end,
				titleText = "title",
				subtitleText = "subtitle",
				fontStyle = MOCK_FONT,
				subtitleFontStyle = MOCK_FONT,
				textStyle = MOCK_THEME,
				subtitleTextStyle = MOCK_THEME,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
