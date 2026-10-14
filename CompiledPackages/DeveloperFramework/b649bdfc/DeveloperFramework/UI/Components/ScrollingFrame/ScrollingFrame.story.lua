local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local ScrollingFrame = require(Framework.UI.Components.ScrollingFrame)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local itr = LayoutOrderIterator.new()

local function createButton(text)
	return React.createElement(Button, {
		LayoutOrder = itr:getNextOrder(),
		Style = "Round",
		Text = text,
		Size = UDim2.new(1, -8, 0, 32),
		OnClick = function()
			print(text)
		end,
	})
end

return function()
	return React.createElement(ScrollingFrame, {
		Size = UDim2.fromOffset(300, 100),
		[React.Tag] = "X-ColumnM",
	}, {
		ButtonA = createButton("Cat"),
		ButtonB = createButton("Dog"),
		ButtonC = createButton("Mouse"),
		ButtonD = createButton("Horse"),
		ButtonE = createButton("Bird"),
		ButtonF = createButton("Jellyfish"),
		ButtonG = createButton("Caterpiller"),
		ButtonH = createButton("Badger"),
		ButtonI = createButton("Catfish"),
	})
end
