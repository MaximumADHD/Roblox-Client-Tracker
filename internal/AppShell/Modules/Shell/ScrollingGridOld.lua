-- Written by Kip Turner, Copyright Roblox 2015

local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))

local GuiService = game:GetService('GuiService')

local DEFAULT_WINDOW_SIZE = UDim2.new(1,0,1,0)


local function ScrollingGrid(config)

	local this = {}
	this.Enum =
	{
		ScrollDirection = {["Vertical"] = 1; ["Horizontal"] = 2;};
		StartCorner = {["UpperLeft"] = 1; ["UpperRight"] = 2; ["BottomLeft"] = 3; ["BottomRight"] = 4;};
	}

	this.GridItems = {}
	this.ItemSet = {}

	--Config
	config = config or {}
	this.ScrollDirection = (config.ScrollDirection and this.Enum.ScrollDirection[config.ScrollDirection]) or this.Enum.ScrollDirection.Vertical
	this.StartCorner = (config.StartCorner and this.Enum.StartCorner[config.StartCorner]) or this.Enum.StartCorner.UpperLeft
	this.FixedRowColumnCount = config.FixedRowColumnCount
	this.CellSize = config.CellSize or Vector2.new(100,100)
	this.Padding = config.Padding or Vector2.new(0,0)
	this.Spacing = config.Spacing or Vector2.new(0,0)
	--Whether the content in scorlling area is dynamic
	this.Dynamic = config.Dynamic or false

	--build the base guis
	local container = Utility.Create'Frame'
	{
		Size = DEFAULT_WINDOW_SIZE;
		Name = "Container";
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}
	local scrollingArea = Utility.Create'ScrollingFrame'
	{
		Size = UDim2.new(1,0,1,0);
		Position = UDim2.new(0,0,0,0);
		Name = "ScrollingArea";
		BackgroundTransparency = 1;
		ScrollingEnabled = false;
		ScrollBarThickness = 0;
		Selectable = false;
		Parent = container;
	}

	this.Container = container
	this.ScrollingArea = scrollingArea

	this.DefaultSelection = this.Container

	this.ScrollingArea:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
		this:RecalcLayout()
	end)

	--[Common APIs]--
	function this:GetPadding()
		return self.Padding
	end

	function this:SetPadding(newPadding)
		if newPadding ~= self.Padding then
			self.Padding = newPadding
			self:RecalcLayout()
		end
	end

	function this:GetSpacing()
		return self.Spacing
	end

	function this:SetSpacing(newSpacing)
		if newSpacing ~= self.Spacing then
			self.Spacing = newSpacing
			self:RecalcLayout()
		end
	end

	function this:GetCellSize()
		return self.CellSize
	end

	function this:GetGridItemSize()
		return self.CellSize
	end

	function this:SetCellSize(cellSize)
		if cellSize ~= self.CellSize then
			self.CellSize = cellSize
			self:RecalcLayout()
		end
	end

	function this:GetScrollDirection()
		return self.ScrollDirection
	end

	function this:SetScrollDirection(newDirection)
		if newDirection ~= self.ScrollDirection then
			self.ScrollDirection = newDirection
			self:RecalcLayout()
		end
	end

	function this:GetStartCorner()
		return self.StartCorner
	end

	function this:SetStartCorner(newStartCorner)
		if newStartCorner ~= self.StartCorner then
			self.StartCorner = newStartCorner
			self:RecalcLayout()
		end
	end

	function this:GetRowColumnConstraint()
		return self.FixedRowColumnCount
	end

	function this:SetRowColumnConstraint(fixedRowColumnCount)
		if fixedRowColumnCount < 1 then
			fixedRowColumnCount = nil
		end
		if fixedRowColumnCount ~= self.FixedRowColumnCount then
			self.FixedRowColumnCount = fixedRowColumnCount
			self:RecalcLayout()
		end
	end


	function this:GetClipping()
		return self.Container.ClipsDescendants
	end

	function this:SetClipping(clippingEnabled)
		self.Container.ClipsDescendants = clippingEnabled;
	end

	function this:GetVisible()
		return self.Container.Visible
	end

	function this:SetVisible(isVisible)
		self.Container.Visible = isVisible;
	end

	function this:GetSize()
		return self.Container.Size
	end

	function this:SetSize(size)
		self.Container.Size = size
	end

	function this:GetPosition()
		return self.Container.Position
	end

	function this:SetPosition(position)
		self.Container.Position = position
	end

	function this:GetParent()
		return self.Container.Parent
	end

	function this:SetParent(parent)
		self.Container.Parent = parent
	end

	function this:GetGuiObject()
		return self.Container
	end

	-- Default selection handles the case of removing the last item in the grid while it is selected
	-- Set to nil if do not want a default selection
	function this:SetDefaultSelection(selectionObject)
		self.DefaultSelection = selectionObject
	end

	function this:ResetDefaultSelection()
		self.DefaultSelection = self.Container
	end

	function this:ContainsItem(gridItem)
		return self.ItemSet[gridItem] ~= nil
	end

	function this:FindAncestorGridItem(object)
		if object ~= nil then
			if self:ContainsItem(object) then
				return object
			end
			return self:FindAncestorGridItem(object.Parent)
		end
	end

	function this:Get2DGridIndex(index)
		-- 0 base index
		local zerobasedIndex = index - 1
		local rows, columns = self:GetNumRowsColumns()
		local row, column

		-- TODO: implement StartCorner here
		if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
			row = math.floor(zerobasedIndex / columns)
			column = zerobasedIndex % columns
		else
			column = math.floor(zerobasedIndex / rows)
			row = zerobasedIndex % rows
		end

		return row, column
	end

	function this:GetGridPosition(row, column)
		local cellSize = self:GetCellSize()
		local spacing = self:GetSpacing()
		local padding = self:GetPadding()
		return UDim2.new(0, padding.X + column * cellSize.X + column * spacing.X,
						0, padding.Y + row * cellSize.Y + row * spacing.Y)
	end

	function this:GetCanvasPositionForOffscreenItem(selectedObject)
		-- NOTE: using <= and >= instead of < and > because scrollingframe
		-- code may automatically bump it while we are observing the change
		if selectedObject and self.ScrollingArea and self:ContainsItem(selectedObject) then
			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				if selectedObject.AbsolutePosition.Y <= self.ScrollingArea.AbsolutePosition.Y then
					return Utility.ClampCanvasPosition(self.ScrollingArea, Vector2.new(0, selectedObject.Position.Y.Offset)) -- - selectedObject.AbsoluteSize.Y/2))
				elseif selectedObject.AbsolutePosition.Y + selectedObject.AbsoluteSize.Y >= self.ScrollingArea.AbsolutePosition.Y + self.ScrollingArea.AbsoluteWindowSize.Y then
					return Utility.ClampCanvasPosition(self.ScrollingArea, Vector2.new(0, -(self.ScrollingArea.AbsoluteWindowSize.Y - selectedObject.Position.Y.Offset - selectedObject.AbsoluteSize.Y)  )) --+ selectedObject.AbsoluteSize.Y/2))
				end
			else -- Horizontal
				if selectedObject.AbsolutePosition.X <= self.ScrollingArea.AbsolutePosition.X then
					return Utility.ClampCanvasPosition(self.ScrollingArea, Vector2.new(selectedObject.Position.X.Offset, 0))
				elseif selectedObject.AbsolutePosition.X + selectedObject.AbsoluteSize.X >= self.ScrollingArea.AbsolutePosition.X + self.ScrollingArea.AbsoluteWindowSize.X then
					return Utility.ClampCanvasPosition(self.ScrollingArea, Vector2.new(-(self.ScrollingArea.AbsoluteWindowSize.X - selectedObject.Position.X.Offset - selectedObject.AbsoluteSize.X), 0))
				end
			end
		end
	end

	function this:Destroy()
		if self.Container then
			self.Container:Destroy()
		end
	end


	----Make API based on the scrolling grid type
	if not this.Dynamic then
		function this:GetFirstVisibleItem()
			local firstVisibleItem = nil
			for i = #self.GridItems, 1, -1 do
				local item = self.GridItems[i]
				if item then
					if item.Position.X.Offset >= self.ScrollingArea.CanvasPosition.X and
							item.Position.X.Offset + item.AbsoluteSize.X <= self.ScrollingArea.CanvasPosition.X + self.ScrollingArea.AbsoluteWindowSize.X then
						firstVisibleItem = item
					end
				end
			end
			return firstVisibleItem
		end

		function this:SortItems(sortFunc)
			table.sort(self.GridItems, sortFunc)
			self:RecalcLayout()

			local selectedObject = self:FindAncestorGridItem(GuiService.SelectedCoreObject)
			if selectedObject and self:ContainsItem(selectedObject) then
				local thisPos = self:GetCanvasPositionForOffscreenItem(selectedObject)
				if thisPos then
					Utility.PropertyTweener(self.ScrollingArea, 'CanvasPosition', thisPos, thisPos, 0, Utility.EaseOutQuad, true)
				end
			end
		end

		function this:AddItem(gridItem)
			if not self:ContainsItem(gridItem) then
				table.insert(self.GridItems, gridItem)
				self.ItemSet[gridItem] = true
				gridItem.Parent = self.ScrollingArea
				if GuiService.SelectedCoreObject == self.DefaultSelection then
					Utility.SetSelectedCoreObject(gridItem)
				end
				self:RecalcLayout()
			end
		end

		function this:RemoveItem(gridItem)
			if self:ContainsItem(gridItem) then
				for i, otherItem in pairs(self.GridItems) do
					if otherItem == gridItem then
						table.remove(self.GridItems, i)
						-- Assign a new selection
						if GuiService.SelectedCoreObject == gridItem then
							GuiService.SelectedCoreObject = self.GridItems[i] or self.GridItems[i-1] or self.GridItems[1] or self.DefaultSelection
						end
						-- Clean-up
						self.ItemSet[gridItem] = nil
						gridItem.Parent = nil
						self:RecalcLayout()
						return
					end
				end
			end
		end

		function this:RemoveAllItems()
			local wasSelected = false
			do
				local currentSelection = GuiService.SelectedCoreObject
				while currentSelection ~= nil and wasSelected == false do
					wasSelected = wasSelected or self:ContainsItem(currentSelection)
					currentSelection = currentSelection.Parent
				end
			end
			for i = #self.GridItems, 1, -1 do
				local removed = table.remove(self.GridItems, i)
				self.ItemSet[removed] = nil
				removed.Parent = nil
			end

			if wasSelected then
				GuiService.SelectedCoreObject = self.Container
			end

			self:RecalcLayout()
			self.ScrollingArea.CanvasPosition = Vector2.new(0, 0)
		end

		function this:GetNumRowsColumns()
			local rows, columns = 0, 0

			local windowSize = self.ScrollingArea.AbsoluteWindowSize
			local padding = self:GetPadding()
			local cellSize = self:GetCellSize()
			local cellSpacing = self:GetSpacing()
			local adjustedWindowSize = Utility.ClampVector2(Vector2.new(0, 0), windowSize - padding, windowSize - padding)
			local absoluteCellSize = Utility.ClampVector2(Vector2.new(1,1), cellSize + cellSpacing, cellSize + cellSpacing)
			local windowSizeCalc = (adjustedWindowSize + cellSpacing) / absoluteCellSize

			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				columns = math.max(1, self:GetRowColumnConstraint() or math.floor(windowSizeCalc.x))
				rows = math.ceil(math.max(1, #self.GridItems) / columns)
			else
				rows = math.max(1, self:GetRowColumnConstraint() or math.floor(windowSizeCalc.y))
				columns = math.ceil(math.max(1, #self.GridItems) / rows)
			end

			return rows, columns
		end

		function this:RecalcLayout()
			local padding = self:GetPadding()
			local cellSpacing = self:GetSpacing()
			local gridItemSize = self:GetGridItemSize()
			local rows, columns = self:GetNumRowsColumns()

			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				self.ScrollingArea.CanvasSize = UDim2.new(self.ScrollingArea.Size.X.Scale, self.ScrollingArea.Size.X.Offset, 0, padding.Y * 2 + rows * gridItemSize.Y + (math.max(0, rows - 1)) * cellSpacing.Y)
			else
				self.ScrollingArea.CanvasSize = UDim2.new(0, padding.X * 2 + columns * gridItemSize.X + (math.max(0, columns - 1)) * cellSpacing.X, self.ScrollingArea.Size.Y.Scale, self.ScrollingArea.Size.Y.Offset)
			end

			self.ScrollingArea.Size = UDim2.new(1, 0, 1, 0)
			self.ScrollingArea.Position = UDim2.new(0, 0, 0, 0)

			local grid2DtoIndex = {}
			for i = 1, #self.GridItems do
				local row, column = self:Get2DGridIndex(i)
				local gridItem = self.GridItems[i]

				gridItem.Size = UDim2.new(0, gridItemSize.X, 0, gridItemSize.Y)
				gridItem.Position = self:GetGridPosition(row, column, gridItemSize)

				grid2DtoIndex[row] = grid2DtoIndex[row] or {}
				grid2DtoIndex[row][column] = gridItem
			end

			for rowNum, row in pairs(grid2DtoIndex) do
				for columnNum, column in pairs(row) do
					local gridItem = grid2DtoIndex[rowNum][columnNum]
					if gridItem then
						if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
							gridItem.NextSelectionUp = grid2DtoIndex[rowNum - 1] and grid2DtoIndex[rowNum - 1][columnNum] or nil
							gridItem.NextSelectionDown = grid2DtoIndex[rowNum + 1] and grid2DtoIndex[rowNum + 1][columnNum] or nil
							if gridItem.NextSelectionDown == nil and grid2DtoIndex[rowNum + 1] ~= nil then
								gridItem.NextSelectionDown = self.GridItems[#self.GridItems]
							end
							gridItem.NextSelectionLeft = nil
							gridItem.NextSelectionRight = nil
						else
							gridItem.NextSelectionLeft = grid2DtoIndex[rowNum] and grid2DtoIndex[rowNum][columnNum - 1] or gridItem
							gridItem.NextSelectionRight = grid2DtoIndex[rowNum] and grid2DtoIndex[rowNum][columnNum + 1] or nil
							if gridItem.NextSelectionRight == nil then
								if grid2DtoIndex[0] and grid2DtoIndex[0][columnNum + 1] then
									-- Move to the last position
									gridItem.NextSelectionRight = self.GridItems[#self.GridItems]
								else
									-- Avoid selector from moving to other selectable objects
									gridItem.NextSelectionRight = gridItem
								end
							end
							gridItem.NextSelectionUp = nil
							gridItem.NextSelectionDown = nil
						end
					end
				end
			end
		end

		do
			this:RecalcLayout()
			local lastSelectedObject = nil
			GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
				local selectedObject = this:FindAncestorGridItem(GuiService.SelectedCoreObject)
				if selectedObject and this:ContainsItem(selectedObject) then
					local upDirection = (this.ScrollDirection == this.Enum.ScrollDirection.Vertical) and 'NextSelectionUp' or 'NextSelectionLeft'
					local downDirection = (this.ScrollDirection == this.Enum.ScrollDirection.Vertical) and 'NextSelectionDown' or 'NextSelectionRight'
					local upObject = selectedObject[upDirection]
					local downObject = selectedObject[downDirection]

					local nextPos, upPos, downPos;


					local gridItemSize = this:GetGridItemSize()
					local thisPos = this:GetCanvasPositionForOffscreenItem(selectedObject)

					if lastSelectedObject then
						local lastUpObject = lastSelectedObject[upDirection]
						local lastDownObject = lastSelectedObject[downDirection]

						if upObject and lastUpObject == selectedObject then
							upPos = this:GetCanvasPositionForOffscreenItem(upObject)
							if upObject ~= selectedObject and upPos then
								upPos = upPos + gridItemSize / 2
							end
						elseif downObject and lastDownObject == selectedObject then
							downPos = this:GetCanvasPositionForOffscreenItem(downObject)
							if downObject ~= selectedObject and downPos then
								downPos = downPos - gridItemSize / 2
							end
						end
					end

					if upPos and (upPos.Y < this.ScrollingArea.CanvasPosition.Y or upPos.X < this.ScrollingArea.CanvasPosition.X) then
						nextPos = upPos
					elseif downPos and (downPos.Y > this.ScrollingArea.CanvasPosition.Y or downPos.X > this.ScrollingArea.CanvasPosition.X) then
						nextPos = downPos
					else
						nextPos = thisPos
					end

					if nextPos then
						nextPos = Utility.ClampCanvasPosition(this.ScrollingArea, nextPos)
						if thisPos then --and thisPos ~= nextPos then
							-- Sort of a hack to not snap on the last one
							if (upObject and downObject) then
								Utility.PropertyTweener(this.ScrollingArea, 'CanvasPosition', thisPos, thisPos, 0, Utility.EaseOutQuad, true)
							end
						end

						Utility.PropertyTweener(this.ScrollingArea, 'CanvasPosition', this.ScrollingArea.CanvasPosition, nextPos, 0.2, Utility.EaseOutQuad, true)
					end
					lastSelectedObject = selectedObject
				else
					lastSelectedObject = nil
				end
			end)
		end
	else
		--[APIs for dynamic scrolling grid]--
		--Set Item Call back, the item will be generated when it's in the scrolling area
		this.targetCanvasPosition = Vector2.new(0, 0)
		this.gridCount = config.gridCount or 0

		--The selection mode decides how we cope with SelectedCoreObject change
		--Middle: Keep the selection in the middle of the scrolling area if possible, make some offset on each side
		--TopLeft: Keep the selection on top/left edge of scrolling area if possible
		--Normal: Behave like normal scrolling grid
		this.Enum.SelectionMode = {["Middle"] = 1; ["TopLeft"] = 2; ["Normal"] = 3;}
		this.SelectionMode = (config.SelectionMode and this.Enum.SelectionMode[config.SelectionMode]) or this.Enum.SelectionMode.Normal

		function this:GetItemVisible(item, fully)
			if fully then --Whether item is fully visible
				if this.ScrollDirection == this.Enum.ScrollDirection.Vertical then
					return item.Position.Y.Offset >= self.ScrollingArea.CanvasPosition.Y and
						item.Position.Y.Offset + item.AbsoluteSize.Y <= self.ScrollingArea.CanvasPosition.Y + self.ScrollingArea.AbsoluteWindowSize.Y
				else
					return item.Position.X.Offset >= self.ScrollingArea.CanvasPosition.X and
						item.Position.X.Offset + item.AbsoluteSize.X <= self.ScrollingArea.CanvasPosition.X + self.ScrollingArea.AbsoluteWindowSize.X
				end
			else
				if this.ScrollDirection == this.Enum.ScrollDirection.Vertical then
					return item.Position.Y.Offset < self.ScrollingArea.CanvasPosition.Y + self.ScrollingArea.AbsoluteWindowSize.Y or
						item.Position.Y.Offset + item.AbsoluteSize.Y > self.ScrollingArea.CanvasPosition.Y
				else
					return item.Position.X.Offset < self.ScrollingArea.CanvasPosition.X + self.ScrollingArea.AbsoluteWindowSize.X or
						item.Position.X.Offset + item.AbsoluteSize.X > self.ScrollingArea.CanvasPosition.X
				end
			end
		end

		function this:SetItemCallback(callback, recalc)
			self.getItemFunc = callback
			if recalc then
				self:RecalcLayout()
			end
		end

		function this:GetNumRowsColumns()
			local rows, columns = 0, 0

			local windowSize = self.ScrollingArea.AbsoluteWindowSize
			local padding = self:GetPadding()
			local cellSize = self:GetCellSize()
			local cellSpacing = self:GetSpacing()
			local adjustedWindowSize = Utility.ClampVector2(Vector2.new(0, 0), windowSize - padding, windowSize - padding)
			local absoluteCellSize = Utility.ClampVector2(Vector2.new(1,1), cellSize + cellSpacing, cellSize + cellSpacing)
			local windowSizeCalc = (adjustedWindowSize + cellSpacing) / absoluteCellSize

			local GridItemsCount = 0
			for _, item in pairs(self.GridItems) do
				if item then
					GridItemsCount = GridItemsCount + 1
				end
			end

			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				columns = math.max(1, math.floor(windowSizeCalc.x))
				rows = math.ceil(math.max(1, GridItemsCount) / columns)
			else
				rows = math.max(1, math.floor(windowSizeCalc.y))
				columns = math.ceil(math.max(1, GridItemsCount) / rows)
			end

			return rows, columns
		end

		function this:GetIndexFrom2D(row, column)
			local rows, columns = self:GetNumRowsColumns()

			local result = 0;

			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				result = (row-1) * columns + column
			else
				result = (column-1) * rows + row
			end

			return result
		end

		function this:GetItemRowColumnFromScreenPosition(x, y)
			local cellSize = self:GetCellSize()
			local spacing = self:GetSpacing()
			local padding = self:GetPadding()

			local cellWidth = (spacing.X + cellSize.X)
			local cellHeight = (spacing.Y + cellSize.Y)

			return math.floor(y / cellHeight) + 1, math.floor(x / cellWidth) + 1
		end

		function this:Add(index, gridItem)
			self.GridItems[index] = gridItem
			gridItem.Parent = self.ScrollingArea
			self.ItemSet[gridItem] = true
		end

		function this:Remove(index)
			local gridItem = self.GridItems[index]
			self.GridItems[index] = nil
			if gridItem then
				gridItem.Parent = nil
				if GuiService.SelectedCoreObject == gridItem then
					Utility.SetSelectedCoreObject(nil)
				end
				self.ItemSet[gridItem] = nil
			end
		end

		function this:GetActiveItemsRange()
			local windowSize = self.ScrollingArea.AbsoluteWindowSize
			local windowWidth = windowSize.X
			local windowHeight = windowSize.Y
			local canvasPosition = self.targetCanvasPosition
			local x = canvasPosition.X
			local y = canvasPosition.Y
			local cellSize = self:GetCellSize()
			local spacing = self:GetSpacing()
			local padding = self:GetPadding()

			local cellWidth = (spacing.X + cellSize.X)
			local cellHeight = (spacing.Y + cellSize.Y)

			local left = math.floor( x / cellWidth ) + 1
			local right = math.ceil( (x + windowWidth) / cellWidth )

			local top = math.floor( y / cellHeight ) + 1
			local bottom = math.ceil( (y + windowHeight) / cellHeight )

			local firstIndex = self:GetIndexFrom2D(top, left)
			local lastIndex = self:GetIndexFrom2D(bottom, right)

			local rows, columns = self:GetNumRowsColumns()

			-- add a row/column of padding on either side
			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				lastIndex = lastIndex + columns
				firstIndex = firstIndex - columns
			else
				lastIndex = lastIndex + rows
				firstIndex = firstIndex - rows
			end

			-- clamp to 1...
			if firstIndex < 1 then firstIndex = 1 end
			if lastIndex < 1 then lastIndex = 1 end

			return firstIndex, lastIndex
		end

		--Re-allocate the griditems based on (target) canvasposition
		function this:Rewindow()
			if self.getItemFunc then
				local removeMe = {}
				local moveMe = {}

				for index, gridItem in pairs(self.GridItems) do
					removeMe[gridItem] = index
				end

				local addMe = {}
				local firstIndex, lastIndex = self:GetActiveItemsRange()
				for index = firstIndex, lastIndex do
					local gridItem = self.getItemFunc(index)
					if gridItem then
						local prevIndex = removeMe[gridItem]
						if prevIndex then   --It's already there.
							removeMe[gridItem] = nil
							if prevIndex ~= index then
								moveMe[prevIndex] = index
							end
						else
							addMe[gridItem] = index
						end
					end
				end

				for gridItem, index in pairs(removeMe) do
					self:Remove(index)
				end

				for fromIndex, toIndex in pairs(moveMe) do
					local gridItem = self.GridItems[fromIndex]
					addMe[gridItem] = toIndex
					self.GridItems[fromIndex] = nil
				end

				for gridItem, index in pairs(addMe) do
					self:Add(index, gridItem)
				end

				for index, gridItem in pairs(self.GridItems) do
					local row, column = self:Get2DGridIndex(index)
					gridItem.Position = self:GetGridPosition(row, column)
				end
			end
		end

		function this:GetSelectableItem(includeContainer, prevSelectedIndex)
			local windowSize = self.ScrollingArea.AbsoluteWindowSize
			local width = windowSize.X
			local height = windowSize.Y
			local centerRow, centerColumn = self:GetItemRowColumnFromScreenPosition(
				self.ScrollingArea.CanvasPosition.X + width / 2,
				self.ScrollingArea.CanvasPosition.Y + height / 2)

			-- Find the item closest to the top left
			local bestGridItem = nil
			local score = math.huge

			for i, gridItem in pairs(self.GridItems) do
				local newScore = score
				if prevSelectedIndex then
					--If has prevSelectedIndex, select the gridItem with nearest Index
					newScore = math.abs(i - prevSelectedIndex)
				else
					local row, column = self:Get2DGridIndex(i)
					newScore = math.abs(column) + math.abs(row)
				end

				-- Favor on-screen items
				if gridItem.Position.X.Offset < this.targetCanvasPosition.X or
					gridItem.Position.Y.Offset < this.targetCanvasPosition.Y then
					newScore = newScore + 10000
				end

				if newScore < score then
					bestGridItem = gridItem
					score = newScore
				end
			end

			local selectableItem = bestGridItem or (includeContainer and self.Container)
			return selectableItem
		end


		function this:SelectAvailableItem(includeContainer, prevSelectedIndex)
			local selectableItem = self:GetSelectableItem(includeContainer, prevSelectedIndex)
			if selectableItem then
				Utility.SetSelectedCoreObject(selectableItem)
			end
		end

		function this:RecalcLayout(newGridCount)
			if newGridCount then
				self.gridCount = newGridCount
			end
			local prevSelectedObject = self:FindAncestorGridItem(GuiService.SelectedCoreObject)
			local wasSelected = GuiService.SelectedCoreObject == self.Container or (prevSelectedObject and self:ContainsItem(prevSelectedObject))
			local prevSelectedIndex = nil
			if wasSelected and prevSelectedObject then
				local prevRow, prevColumn = self:GetItemRowColumnFromScreenPosition(prevSelectedObject.Position.X.Offset, prevSelectedObject.Position.Y.Offset)
				prevSelectedIndex = self:GetIndexFrom2D(prevRow, prevColumn)
			end

			--Recalc the proper CanvasSize
			local padding = self:GetPadding()
			local cellSpacing = self:GetSpacing()
			local gridItemSize = self:GetGridItemSize()
			local rows, columns = self:GetNumRowsColumns()

			--Need overwrite the gridCount as there hasn't been that many grid items in the scrolligGrid when recalc
			if self.gridCount then
				if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
					rows = math.ceil(math.max(1, self.gridCount) / columns)
				else
					columns = math.ceil(math.max(1, self.gridCount) / rows)
				end
			end

			if self.ScrollDirection == self.Enum.ScrollDirection.Vertical then
				self.ScrollingArea.CanvasSize = UDim2.new(self.ScrollingArea.Size.X.Scale, self.ScrollingArea.Size.X.Offset, 0, padding.Y * 2 + rows * gridItemSize.Y + (math.max(0, rows - 1)) * cellSpacing.Y)
			else
				self.ScrollingArea.CanvasSize = UDim2.new(0, padding.X * 2 + columns * gridItemSize.X + (math.max(0, columns - 1)) * cellSpacing.X, self.ScrollingArea.Size.Y.Scale, self.ScrollingArea.Size.Y.Offset)
			end

			--The previous target canvasPos may become non-reachable now
			self.targetCanvasPosition = Utility.ClampCanvasPosition(self.ScrollingArea, self.targetCanvasPosition)

			--Re allocate grid items
			self:Rewindow()

			local selectedObject = self:FindAncestorGridItem(GuiService.SelectedCoreObject)
			if selectedObject and self:ContainsItem(selectedObject) then
				--The selected object is still the scrolling grid
				local thisPos = self:GetCanvasPositionForOffscreenItem(selectedObject)
				if thisPos then
					self.targetCanvasPosition = thisPos
					--Here use the tween to overwrite and stop all other tweens, replace this with TweenService
					Utility.PropertyTweener(self.ScrollingArea, 'CanvasPosition', thisPos, thisPos, 0.0, Utility.EaseOutQuad, true,
					function()
						self:Rewindow()
					end)
				end
			elseif wasSelected then
				--Selected object got removed, select the nearest gridItem or container
				self:SelectAvailableItem(true, prevSelectedIndex)
			end
		end

		GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
			local selectedObject = this:FindAncestorGridItem(GuiService.SelectedCoreObject)

			if selectedObject and this:ContainsItem(selectedObject) then
				local nextPos = nil
				local row, column = this:GetItemRowColumnFromScreenPosition(selectedObject.Position.X.Offset, selectedObject.Position.Y.Offset)
				local cellSize = this:GetCellSize()
				local spacing = this:GetSpacing()
				local cellWidth = (spacing.X + cellSize.X)
				local cellHeight = (spacing.Y + cellSize.Y)

				if this.SelectionMode == this.Enum.SelectionMode.Middle then
					local windowSize = this.ScrollingArea.AbsoluteWindowSize
					local width = windowSize.X
					local height = windowSize.Y
					local centerRow, centerColumn = this:GetItemRowColumnFromScreenPosition( this.ScrollingArea.CanvasPosition.X + width / 2, this.ScrollingArea.CanvasPosition.Y + height / 2)

					if this.ScrollDirection == this.Enum.ScrollDirection.Vertical then
						local maxaway = math.floor( (math.floor(height / cellHeight) - 1) / 2 );

						if row > centerRow + maxaway then
							local newCenter = row - maxaway
							nextPos = Vector2.new(0, (newCenter-0.5) * cellHeight - height / 2)
						elseif row < centerRow - maxaway then
							local newCenter = row + maxaway
							nextPos = Vector2.new(0, (newCenter-0.5) * cellHeight - height / 2)
						end
					else
						local maxaway = math.floor( (math.floor(width / cellWidth) - 1) / 2 );

						if column > centerColumn + maxaway then
							local newCenter = column - maxaway
							nextPos = Vector2.new((newCenter-0.5) * cellWidth - width / 2, 0)
						elseif column < centerColumn - maxaway then
							local newCenter = column + maxaway
							nextPos = Vector2.new((newCenter-0.5) * cellWidth - width / 2, 0)
						end
					end
				elseif this.SelectionMode == this.Enum.SelectionMode.TopLeft then
					if this.ScrollDirection == this.Enum.ScrollDirection.Vertical then
						nextPos = Vector2.new(0, (row-1) * cellHeight)
					else
						nextPos = Vector2.new((column-1) * cellWidth, 0)
					end
				else
					nextPos = this:GetCanvasPositionForOffscreenItem(selectedObject)
				end

				if nextPos and nextPos.X == this.targetCanvasPosition.X and nextPos.Y == this.targetCanvasPosition.Y then
					return
				end

				-- If there are too many other tasks, the animation pipeline can get behind, setting
				-- the canvas position to the last target helps the percieved speed of the scroll in that case.
				this.ScrollingArea.CanvasPosition = this.targetCanvasPosition

				if nextPos then
					nextPos = Vector2.new(math.max(0, nextPos.x), math.max(0, nextPos.y))
					nextPos = Utility.ClampCanvasPosition(this.ScrollingArea, nextPos)
					Utility.PropertyTweener(this.ScrollingArea, 'CanvasPosition', this.ScrollingArea.CanvasPosition, nextPos, 0.2, Utility.EaseOutQuad, true)
					this.targetCanvasPosition = nextPos
					this:Rewindow()
				end
			end
		end)
	end

	return this
end

return ScrollingGrid
