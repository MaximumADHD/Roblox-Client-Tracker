

local ROW_HEIGHT = 20
local COL_WIDTH = 100
local BORDER_WIDTH = 1
local BORDER_COLOR = Color3.new(1,1,1)
local STD_BG_COLOR = Color3.new(0.25, 0.75, 0.75)
local ALT_BG_COLOR = Color3.new(0.25, 0.25, 0.75)
local TEXT_COLOR = Color3.new(1, 1, 1)
local BG_TRANSPARENCY = 0.9

local COL_WIDTHS = {50,50,65,120,500}
local COL_KEYS = { "Method", "Status", "Time", "RequestType", "URL"}
local COL_TITLES = { "Method", "Status", "Time(ms)", "RequestType", "URL"}
local MAX_ROW = 128

pcall(function ()
	MAX_ROW = tonumber(settings():GetFVariable("HttpAnalyticsMaxHistory"))
end)

--////////////////////////////////////
--
-- UIListGridItemClass
-- a single grid in the list
-- it has a 'Frame' to show background and 'TextLabel' to show text
--
--////////////////////////////////////
local UIListGridItemClass = {}
UIListGridItemClass.__index = UIListGridItemClass

function UIListGridItemClass.new(parentFrame, pos, size, bgColor)
	local self = {}
	setmetatable(self, UIListGridItemClass)

	self._parent = parentFrame

	self._frame = Instance.new("Frame")
	self._frame.Parent = self._parent
	self._frame.Position = pos
	self._frame.Size = size
	self._frame.BorderColor3 = BORDER_COLOR
	self._frame.BorderSizePixel = BORDER_WIDTH
	self._frame.BackgroundTransparency = BG_TRANSPARENCY
	self._frame.ZIndex = self._parent.ZIndex + 1
	self._frame.BackgroundColor3 = bgColor

	self._label = Instance.new("TextLabel")
	self._label.Parent = self._frame
	self._label.TextColor3 = TEXT_COLOR
	self._label.Position = UDim2.new(0, 5, 0, 0)
	self._label.Size = UDim2.new(1, -10, 1, 0)
	self._label.BackgroundTransparency = 1
	self._label.TextXAlignment = Enum.TextXAlignment.Left
	self._label.ZIndex = self._parent.ZIndex + 1
	
	return self	
end

function UIListGridItemClass:setValue( value )
	if self._label == nil then
		return
	end

	local valueType = type(value)
	local text
	if valueType == "string" then
		text = value
	elseif valueType == "number" then
		if value - math.floor(value) > 0 then
			text = string.format("%.02f", value)
		else
			text = tostring(value)
		end
	else
		text = tostring(value)
	end

	self._label.Text = text
end

function UIListGridItemClass:getFrame()
	return self._frame
end

--////////////////////////////////////
--
-- UIListClass
-- to show lua tables in UI
-- creates and manager UIListGridItemClass instance
--
--////////////////////////////////////
local UIListClass = {}
UIListClass.__index = UIListClass

function UIListClass.new(parentFrame)
	local self = {}
	setmetatable(self, UIListClass)

	self._parent = parentFrame
	self._frame = Instance.new("Frame")
	self._frame.Name = "UIListClass"
	self._frame.Parent = self._parent
	self._frame.Position = UDim2.new(0,1,0,1)
	self._frame.Size = UDim2.new(1,0,0,0)
	self._frame.ZIndex = self._parent.ZIndex

	self._columnWidths = {COL_WIDTH}
	self._rowHeight = ROW_HEIGHT

	self._rows = {}
	return self
end

function UIListClass:setColumns(names, widths)
	self:setColumnWidths(widths)
	self:setRow(1, names)
end

function UIListClass:setColumnWidths( widths )
	self._columnWidths = widths
end

function UIListClass:setRow( index, values )
	if #self._rows + 1 < index then
		return
	elseif #self._rows < index then
		self:addRow(values)
	else
		local row = self._rows[index]
		for i,v in ipairs(row) do
			v:setValue(values[i])
		end
	end
end

function UIListClass:addRow( values )
	local index = #self._rows+1
	local row = {}
	for i = 1, #values do
		if i > #self._columnWidths then
			break
		end

		local pos = self:getItemPosition(index, i)
		local size = self:getItemSize(index,i)
		local bgColor
		if (index % 2 == 1) then 
			bgColor = STD_BG_COLOR
		else
			bgColor = ALT_BG_COLOR
		end
		local item = UIListGridItemClass.new(self._frame, pos, size, bgColor)

		item:setValue(values[i])
		table.insert(row, item)
	end
	table.insert(self._rows, row)
end

function UIListClass:getItemPosition( row, col )
	local offsetX = 0
	local offsetY = 0
	for i = 1, col-1 do
		offsetX = offsetX + self._columnWidths[i]
	end
	for i = 1, row-1 do
		offsetY = offsetY + self._rowHeight
	end

	return UDim2.new(0, offsetX, 0, offsetY)
end

function UIListClass:getItemSize( row, col )
	if col == #self._columnWidths then
		local offsetX = 0
		for i=1,col-1 do
			offsetX = offsetX + self._columnWidths[i]
		end
		return UDim2.new(1, -offsetX, 0, self._rowHeight)
	end
	return UDim2.new(0, self._columnWidths[col], 0, self._rowHeight)
end

function UIListClass:getHeightInPix()
	return self._rowHeight * #self._rows
end

--////////////////////////////////////
--
-- HttpResultList
-- manage http results data and set data to UIListClass then the http results will show in UI
-- call HttpResultListClass:addHttpResult to add a row of http result to UI
--
--////////////////////////////////////
local HttpResultListClass = {}
HttpResultListClass.__index = HttpResultListClass

function HttpResultListClass.new( parentFrame, callback )
	local self = {}
	setmetatable(self, HttpResultListClass)

	self._list = UIListClass.new(parentFrame)
	self._heightChangedCallback = callback
	self._rowValues = {}

	return self
end

function HttpResultListClass:addRow(values)
	if #self._rowValues < MAX_ROW then
		table.insert(self._rowValues, values)
		self._list:addRow(values)

		if self._heightChangedCallback ~= nil then
			self._heightChangedCallback(self._list:getHeightInPix())
		end
	else
		table.remove(self._rowValues, 1)
		table.insert(self._rowValues, values)
		for i,values in ipairs(self._rowValues) do
			self._list:setRow(i+1, values)
		end
	end
end

-- to add a row of http result to UI
function HttpResultListClass:addHttpResult(httpResult)
	if #self._rowValues == 0 then
		self._list:setColumns(COL_TITLES, COL_WIDTHS)
	end
	local values = {}
	for _,v in ipairs(COL_KEYS) do
		table.insert(values, httpResult[v])
	end
	self:addRow(values)
end

-- need to get the height to update the 'body.Size', so the scrollbar will work
function HttpResultListClass:getHeightInPix()
	return self._list:getHeightInPix()
end

return HttpResultListClass