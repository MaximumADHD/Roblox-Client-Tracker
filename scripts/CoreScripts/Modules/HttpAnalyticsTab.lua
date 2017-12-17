local ROW_HEIGHT = 20
local COL_WIDTH = 100
local BORDER_WIDTH = 1
local BORDER_COLOR = Color3.new(1,1,1)
local STD_BG_COLOR = Color3.new(0.25, 0.75, 0.75)
local ALT_BG_COLOR = Color3.new(0.25, 0.25, 0.75)
local TEXT_COLOR = Color3.new(1, 1, 1)
local SORTED_TITLE_COLOR = Color3.new(1,0,1)
local BG_TRANSPARENCY = 0.9

local COL_WIDTHS = {50,50,50,65,120,-335}
local COL_KEYS = { "Method", "Status", "Time", "RequestType", "URL"}
local COL_TITLES = {"No.", "Method", "Status", "Time(ms)", "RequestType", "URL"}
local MAX_ROW = 256

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
	self._frame.Position = pos
	self._frame.Size = size
	self._frame.BorderColor3 = BORDER_COLOR
	self._frame.BorderSizePixel = BORDER_WIDTH
	self._frame.BackgroundTransparency = BG_TRANSPARENCY
	self._frame.ZIndex = self._parent.ZIndex + 1
	self._frame.BackgroundColor3 = bgColor
	self._frame.Parent = self._parent

	self._label = Instance.new("TextLabel")
	self._label.TextColor3 = TEXT_COLOR
	self._label.Position = UDim2.new(0, 5, 0, 0)
	self._label.Size = UDim2.new(1, -10, 1, 0)
	self._label.BackgroundTransparency = 1
	self._label.TextXAlignment = Enum.TextXAlignment.Left
	self._label.ZIndex = self._parent.ZIndex + 1
	self._label.Parent = self._frame
	
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

-- callbackClicked(row, col, frame) 'frame' is the 'Frame' instance be clicked
function UIListClass.new(parentFrame, callbackClicked)
	local self = {}
	setmetatable(self, UIListClass)

	self._parent = parentFrame
	self._frame = Instance.new("Frame")
	self._frame.Name = "UIListClass"
	self._frame.Position = UDim2.new(0,1,0,1)
	self._frame.Size = UDim2.new(1,0,0,0)
	self._frame.ZIndex = self._parent.ZIndex
	self._frame.BorderSizePixel = 0
	self._frame.Parent = self._parent

	self._columnWidths = {COL_WIDTH}
	self._rowHeight = ROW_HEIGHT

	self._rows = {}

	self._callbackClicked = callbackClicked
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

		-- set  click callback
		local itemFrame = item:getFrame()
		itemFrame.InputBegan:connect(function(input)

			-- set the frame's background color and call _callbackClicked
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if self._callbackClicked ~= nil then
					self._callbackClicked(index, i, itemFrame)
				end
			end
		end)

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
	if self._columnWidths[col] < 0 then
		return UDim2.new(1, -self._columnWidths[col], 0, self._rowHeight)
	else
		return UDim2.new(0, self._columnWidths[col], 0, self._rowHeight)
	end
end

function UIListClass:getHeightInPix()
	return self._rowHeight * #self._rows
end

function UIListClass:getFrame()
	return self._frame
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

function HttpResultListClass.new( parentFrame, heightChange, callbackClicked)
	local self = {}
	setmetatable(self, HttpResultListClass)

	self._sortedColumn = 1
	self._list = UIListClass.new(parentFrame, callbackClicked)

	self._heightChangedCallback = heightChange
	self._rowValues = {}
	self._counter = 0
	self._sortedTitleLastColor = nil
	self._sortedTitleFrame = nil
	return self
end

function HttpResultListClass:sort(col,frame)
	if col == self._sortedColumn then
		return
	end
	if col < 1 or 
		#self._rowValues < 2 or
		col > #self._rowValues[1] then 
		return
	end
	self._sortedColumn = col
	self._sortedTitleLastColor = frame.BackgroundColor3
	if self._sortedTitleFrame ~= nil then
		self._sortedTitleFrame.BackgroundColor3 = self._sortedTitleLastColor
	end
	self._sortedTitleFrame = frame
	self._sortedTitleFrame.BackgroundColor3 = SORTED_TITLE_COLOR
	table.sort(self._rowValues, function (row1, row2)
		return row1[self._sortedColumn] < row2[self._sortedColumn]
	end)
	for i,values in ipairs(self._rowValues) do
		self._list:setRow(i+1, values)
	end
end

-- insert 'valuse'. If '_rowValues' is ordered, will keep the order
function HttpResultListClass:insert(values)
	if self._sortedColumn == 0 or #self._rowValues == 0 then
		table.insert(self._rowValues, values)
		return
	else
		-- insert to an ordered table
		-- find a right position in the ordered table
		local posInsert = #self._rowValues + 1
		for i=1,#self._rowValues do
			if self._rowValues[i][self._sortedColumn] > values[self._sortedColumn] then
				posInsert = i
				break
			end
		end

		-- inser the 'values' at posInsert
		-- move the all items after posInsert back off one position
		table.insert(self._rowValues, posInsert, values)
		
	end
end

-- remove the the oldest item
function HttpResultListClass:remove()
	local removeIndex = 1
	if self._sortedColumn > 1 then
		local removeCounterValue = self._counter - MAX_ROW + 1
		for i,v in ipairs(self._rowValues) do
			if v[1] == removeCounterValue then
				removeIndex = i
				break
			end
		end -- end for
	end
	table.remove(self._rowValues, removeIndex)
end

function HttpResultListClass:addRow(values)
	local isHeightUpdate = false
	if #self._rowValues < MAX_ROW then
		self:insert(values)
		isHeightUpdate = true
	else
		self:remove()
		self:insert(values)
	end
	for i,values in ipairs(self._rowValues) do
			self._list:setRow(i+1, values)
	end
	if isHeightUpdate and self._heightChangedCallback ~= nil then
		self._heightChangedCallback(self._list:getHeightInPix())
	end
end

-- add a row of http result to list
function HttpResultListClass:addHttpResult(httpResult)
	if httpResult["Hiden"] == true then
		return
	end
	if #self._rowValues == 0 then
		self._list:setColumns(COL_TITLES, COL_WIDTHS)
	end

	local values = {self._counter+1}
	for _,v in ipairs(COL_KEYS) do
		table.insert(values, httpResult[v])
	end
	table.insert(values, httpResult["Response"])
	self:addRow(values)
	self._counter = self._counter+1
end

function HttpResultListClass:getHeightInPix()
	return self._list:getHeightInPix()
end

function HttpResultListClass:getFrame()
	return self._list:getFrame()
end

function HttpResultListClass:getValues(row)
	return self._rowValues[row]
end

--////////////////////////////////////
--
-- HttpAnalyticsTable
-- how many requests have been made, how many requests have failed, 
-- average, min, and max response time for per developer facing RequestType
--
--////////////////////////////////////
local HttpAnalyticsTableClass = {}
HttpAnalyticsTableClass.__index = HttpAnalyticsTableClass

local HTTP_ANALYTICS_TITTLES = {"RequestType","RequestCount","FailedCount",
							   "AverageTime(ms)","MinTime(ms)","MaxTime(ms)"}
local HTTP_ANALYTICS_KEYS = {"RequestType","RequestCount","FailedCount",
							   "AverageTime","MinTime","MaxTime"}
local HTTP_ANALYTICS_WIDTHS = {120, 90, 90, 110, 90, 90}
function HttpAnalyticsTableClass.new( parentFrame,callback )
	local self = {}
	setmetatable(self, HttpAnalyticsTableClass)

	self._list = UIListClass.new(parentFrame)
	self._tableData = {}
	self._tableData.size = 0
	self._heightChangedCallback = callback
	return self
end

-- http analyzer data
-- show how many requests have been made, how many requests have failed, 
-- average, min, and max response time for per developer facing RequestType
function HttpAnalyticsTableClass:addHttpResult( httpResult )
	if self._tableData.size == 0 then
		self._list:setColumns(HTTP_ANALYTICS_TITTLES, HTTP_ANALYTICS_WIDTHS)
	end
	local record = self._tableData[httpResult.RequestType]
	local isHeightUpdate = false
	if record == nil then
		self._tableData[httpResult.RequestType] = {
			RequestType = httpResult.RequestType,
			RequestCount = 1,
			FailedCount = 0,
			AverageTime = httpResult.Time,
			MinTime = httpResult.Time,
			MaxTime = httpResult.Time,
			index = self._tableData.size + 1
		}
		self._tableData.size = self._tableData.size + 1
		if httpResult.Status >= 400 then
			self._tableData[httpResult.RequestType].FailedCount = 1
		end 

		record = self._tableData[httpResult.RequestType]

		isHeightUpdate = true
	else
		record.RequestCount = record.RequestCount + 1
		if httpResult.Status >= 400 then
			record.FailedCount = record.FailedCount + 1
		end
		record.AverageTime = (record.AverageTime*record.RequestCount 
							 + httpResult.Time - record.AverageTime)/record.RequestCount
		if httpResult.Time < record.MinTime then
			record.MinTime = httpResult.Time
		end
		if httpResult.Time > record.MaxTime then
			record.MaxTime = httpResult.Time
		end
	end

	local values = {}
	for _,v in ipairs(HTTP_ANALYTICS_KEYS) do
		table.insert(values, record[v])
	end
	self._list:setRow(record.index+1, values)
	if isHeightUpdate and self._heightChangedCallback ~= nil then
		self._heightChangedCallback(self:getHeightInPix())
	end
end

function HttpAnalyticsTableClass:getHeightInPix()
	return self._list:getHeightInPix()
end

function HttpAnalyticsTableClass:getFrame()
	return self._list:getFrame()
end

--////////////////////////////////////
--
-- HttpResponseViewClass
-- show response header and body
--
--////////////////////////////////////
local RESPONSE_TITLE_SIZE = 12
local RESPONSE_TITLE_COLOR = Color3.new(0.8,0.8,1)
local RESPONSE_TITLE_INDENTATION = 4
local RESPONSE_TEXT_INDENTATION = 10
local CANT_RENDER_MSG = "\n  Some content can't be rendered as text."
local BODY_TITTLE = "Response Body:"
local HttpResponseViewClass = {}
HttpResponseViewClass.__index = HttpResponseViewClass

function HttpResponseViewClass.new( parentFrame,callback )
	local self = {}
	setmetatable(self, HttpResponseViewClass)

	self._frame = Instance.new("Frame")
	self._frame.Position = UDim2.new(0, 2, 0, 2)
	self._frame.Size = UDim2.new(1, -4, 10, 0)
	self._frame.BackgroundTransparency = 1
	self._frame.ZIndex = parentFrame.ZIndex+1
	self._frame.Visible = false
	self._frame.InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self._bodyTitle.Visible = false
			self._bodyLabel.Visible = false
			self._frame.Visible = false
			callback(false)
		end
	end)
	self._frame.Parent = parentFrame

	self._bodyTitle = Instance.new("TextLabel")
	self._bodyTitle.Name = "self._bodyTitle"
	self._bodyTitle.Position = UDim2.new(0, RESPONSE_TITLE_INDENTATION, 0, RESPONSE_TITLE_INDENTATION)
	self._bodyTitle.Size = UDim2.new(1, 0, 0, 50)
	self._bodyTitle.TextSize = RESPONSE_TITLE_SIZE
	self._bodyTitle.TextColor3 = RESPONSE_TITLE_COLOR
	self._bodyTitle.TextXAlignment = Enum.TextXAlignment.Left
	self._bodyTitle.TextYAlignment = Enum.TextYAlignment.Top
	self._bodyTitle.ZIndex = self._frame.ZIndex
	self._bodyTitle.BackgroundTransparency = 1
	self._bodyTitle.Visible = false
	self._bodyTitle.TextWrap = true
	self._bodyTitle.Text = BODY_TITTLE
	self._bodyTitle.Parent = self._frame

	self._bodyLabel = Instance.new("TextLabel")
	self._bodyLabel.Name = "self._bodyLabel"
	self._bodyLabel.Position = UDim2.new(0, RESPONSE_TEXT_INDENTATION, 0, 29)
	self._bodyLabel.Size = UDim2.new(1, -2*RESPONSE_TEXT_INDENTATION, 1, 0)
	self._bodyLabel.TextWrap = true
	self._bodyLabel.TextXAlignment = Enum.TextXAlignment.Left
	self._bodyLabel.TextYAlignment = Enum.TextYAlignment.Top
	self._bodyLabel.TextColor3 = TEXT_COLOR
	self._bodyLabel.ZIndex = self._frame.ZIndex
	self._bodyLabel.BackgroundTransparency = 1
	self._bodyLabel.Visible = false
	self._bodyLabel.Parent = self._frame

	return self
end

-- show labels and update the postion
function HttpResponseViewClass:show(body)
	local utf8Length,pos= utf8.len(body)
	if utf8Length == nil then
		if pos ~= nil then
			body = body:sub(1, pos-1)
		end
		-- tell developers something can't be rendered as text
		self._bodyTitle.Text = BODY_TITTLE .. CANT_RENDER_MSG
	else
		self._bodyTitle.Text = BODY_TITTLE
	end
	
	self._bodyLabel.Text = body
	self._bodyTitle.Position = UDim2.new(0, RESPONSE_TITLE_INDENTATION, 0, RESPONSE_TITLE_INDENTATION)
	self._bodyLabel.Position = UDim2.new(0, RESPONSE_TEXT_INDENTATION, 0, 
		self._bodyTitle.Position.Y.Offset + self._bodyTitle.TextBounds.Y)

	self._bodyTitle.Visible = true
	self._bodyLabel.Visible = true
	self._frame.Visible = true
end

function HttpResponseViewClass:getHeightInPix()
	return RESPONSE_TITLE_INDENTATION + self._bodyTitle.TextBounds.Y +
	self._bodyLabel.TextBounds.Y
end

function HttpResponseViewClass:isVisible()
	return self._frame.Visible
end

--////////////////////////////////////
--
-- HttpAnalyzer
-- contain the HttpAnalyticsTable and HttpResultList
-- get data from uper layer, update the position of HttpResultList
--
--////////////////////////////////////
local SPACE_TABLE_LIST = 3
local HttpAnalyzerClass = {}
HttpAnalyzerClass.__index = HttpAnalyzerClass

function HttpAnalyzerClass.new( parentFrame,callback )
	local self = {}
	setmetatable(self, HttpAnalyzerClass)

	self._responseView = HttpResponseViewClass.new(parentFrame, function (isShowed, height)
		if not isShowed then
			self._httpAnalyticsFrame.Visible = true
			self._httpResultListFrame.Visible = true
		end
		self:heightChange()	
	end)

	local analyticsTableHeightChange = function (newHeight)
		self:updatePosition()
	end

	local resultListHeightChange = function (newHeight)
		self:heightChange()
	end

	local resultListClicked = function(row, col, frame)
		if self._responseView:isVisible() then
			return
		end
		if row == 1 then
			self._httpResultList:sort(col,frame)
		else
			local values = self._httpResultList:getValues(row-1)
			self:showResponse(values)
		end
	end

	self._httpAnalyticsTable = HttpAnalyticsTableClass.new(parentFrame, analyticsTableHeightChange)
	self._httpResultList = HttpResultListClass.new(parentFrame, resultListHeightChange, resultListClicked)
	self._httpAnalyticsFrame = self._httpAnalyticsTable:getFrame()
	self._httpResultListFrame = self._httpResultList:getFrame()
	self._heightChangedCallback = callback

	return self
end

function HttpAnalyzerClass:updatePosition()
	local tableHeight = self._httpAnalyticsTable:getHeightInPix()
	self._httpResultListFrame.Position = UDim2.new(0,1,0,tableHeight+SPACE_TABLE_LIST)
	self:heightChange()
end

function HttpAnalyzerClass:heightChange()
	if self._heightChangedCallback ~= nil then
		self._heightChangedCallback(self:getHeightInPix())
	end
end

-- add a row of http result to list
-- and update the analyzer data on table
function HttpAnalyzerClass:addHttpResult( httpResult )
	self._httpAnalyticsTable:addHttpResult(httpResult)
	self._httpResultList:addHttpResult(httpResult)
end

function HttpAnalyzerClass:getHeightInPix()
	if self._responseView:isVisible() then
		return self._responseView:getHeightInPix()
	else
		return self._httpAnalyticsTable:getHeightInPix() + 
		   self._httpResultList:getHeightInPix() + SPACE_TABLE_LIST
	end
end

function HttpAnalyzerClass:showResponse(values)
	self._httpAnalyticsFrame.Visible = false
	self._httpResultListFrame.Visible = false

	self._responseView:show(values[#values])
	self:heightChange()
end

return HttpAnalyzerClass