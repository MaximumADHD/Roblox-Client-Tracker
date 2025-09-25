--[[
	SummedAreaTable.lua is an implementation of the summed area table data structure.
	It allows O(1) time calculation of the sum of elements in a rectangular region of a grid.
	Both ImageReadWrapper and SummedAreaTable expect zero indexed coordinates in functions 
	that take coordinates.
]]

local COLOR3_BYTE_STRIDE = 4

type ImageReadWrapperMembers = {
	size: Vector2,
	buffer: buffer,
}

local ImageReadWrapper = {}
ImageReadWrapper.__index = ImageReadWrapper

export type ImageReadWrapper = typeof(setmetatable({} :: ImageReadWrapperMembers, ImageReadWrapper))

-- Zero indexed
function ImageReadWrapper.ReadPixel(self, x: number, y: number): Color3
	if x >= self.size.X or y >= self.size.Y or x < 0 or y < 0 then
		return Color3.fromRGB(0.0, 0.0, 0.0)
	end

	local pixelIndex = x + y * self.size.X
	local pixelOffset = pixelIndex * COLOR3_BYTE_STRIDE
	return Color3.fromRGB(
		buffer.readu8(self.buffer, pixelOffset),
		buffer.readu8(self.buffer, pixelOffset + 1),
		buffer.readu8(self.buffer, pixelOffset + 2)
	)
end

function ImageReadWrapper.new(editableImage: EditableImage): ImageReadWrapper
	local imageReadWrapper = setmetatable({} :: ImageReadWrapperMembers, ImageReadWrapper)
	imageReadWrapper.buffer = editableImage:ReadPixelsBuffer(Vector2.new(0, 0), editableImage.Size)
	imageReadWrapper.size = editableImage.Size
	return imageReadWrapper
end

type SummedAreaTableMembers = { size: Vector2, calculateWeightFromColor3: (Color3) -> number, buffer: buffer }

local SummedAreaTable = {}
SummedAreaTable.__index = SummedAreaTable

export type SummedAreaTable = typeof(setmetatable({} :: SummedAreaTableMembers, SummedAreaTable))

--calculateWeightFromColor3 is a function that defines the value at each cell of the table
--used to build the summed area table
function SummedAreaTable.new(size: Vector2, calculateWeightFromColor3: (Color3) -> number): SummedAreaTable
	local summedAreaTable = setmetatable({} :: SummedAreaTableMembers, SummedAreaTable)
	summedAreaTable.size = size
	summedAreaTable.calculateWeightFromColor3 = calculateWeightFromColor3
	summedAreaTable.buffer = buffer.create(size.X * size.Y * COLOR3_BYTE_STRIDE)
	return summedAreaTable
end

-- Zero indexed coordinates, out of bounds access mimics an infinitely large table
function SummedAreaTable.ReadValue(self: SummedAreaTable, x: number, y: number): number
	if x < 0 or y < 0 then
		return 0
	end
	x = math.min(x, self.size.X - 1)
	y = math.min(y, self.size.Y - 1)

	local index = x + y * self.size.X
	return buffer.readu32(self.buffer, index * COLOR3_BYTE_STRIDE)
end

function SummedAreaTable.WriteValue(self: SummedAreaTable, x: number, y: number, value)
	assert(x < self.size.X and y < self.size.Y and x >= 0 and y >= 0)

	local index = x + y * self.size.X
	buffer.writeu32(self.buffer, index * COLOR3_BYTE_STRIDE, value)
end

function SummedAreaTable.BuildSummedAreaTable(self: SummedAreaTable, editableImage: EditableImage)
	local imageWrapper = ImageReadWrapper.new(editableImage)

	assert(imageWrapper.size == self.size)
	for y = 0, self.size.Y - 1 do
		for x = 0, self.size.X - 1 do
			local center = self.calculateWeightFromColor3(imageWrapper:ReadPixel(x, y))
			local left = self:ReadValue(x - 1, y)
			local up = self:ReadValue(x, y - 1)
			local upperLeft = self:ReadValue(x - 1, y - 1)
			local weight = center + left + up - upperLeft
			self:WriteValue(x, y, weight)
		end
	end
end

-- areaStart and areaSize define the rectangular block of elements you want to find the sum of
-- areaStart is zero indexed
function SummedAreaTable.GetAreaDensity(self: SummedAreaTable, areaStart: Vector2, areaSize: Vector2): number
	local upperLeftCoord = areaStart - Vector2.one
	local lowerRightCoord = areaStart + areaSize - Vector2.one
	local upperRightCoord = Vector2.new(lowerRightCoord.X, upperLeftCoord.Y)
	local lowerLeftCoord = Vector2.new(upperLeftCoord.X, lowerRightCoord.Y)

	return self:ReadValue(lowerRightCoord.X, lowerRightCoord.Y)
		- self:ReadValue(upperRightCoord.X, upperRightCoord.Y)
		- self:ReadValue(lowerLeftCoord.X, lowerLeftCoord.Y)
		+ self:ReadValue(upperLeftCoord.X, upperLeftCoord.Y)
end

-- A version of GetAreaDensity that can find the sum of the all pixels enclosed in a continuous space bounding box,
-- including pixels that are partially covered by the bounding box.
-- GetAreaDensity() returns the summed value of all pixels enclosed in a rectangle. But the rectangle in that function is
-- parameterized by integers so you can only define a rectangle aligned with the discrete pixel grid. The continuous version
-- takes float values lets you include any partial coverage of a pixel, e.g. if the upper left corner of the rectangle was
-- set to (0.5, 0.5), it would include the value of the pixel at discrete coordinates (0,0) * 0.25 in the sum of pixels inside
-- of the rectangle because a quarter of the pixel is inside of the rectangle.
function SummedAreaTable:GetAreaDensityContinuous(areaStart: Vector2, areaSize: Vector2)
	local filledArea = 0.0

	local upperLeftPixelSpace = areaStart
	local lowerRightPixelSpace = areaStart + areaSize
	--First calculate internal discrete pixels
	local upperLeftInternalPixel = upperLeftPixelSpace:Ceil()
	local lowerRightInternalPixel = lowerRightPixelSpace:Floor()
	local internalSize = lowerRightInternalPixel - upperLeftInternalPixel
	if internalSize.X > 0 and internalSize.Y > 0 then
		filledArea += self:GetAreaDensity(upperLeftInternalPixel, internalSize)
	end

	local upperLeftFractional = upperLeftInternalPixel - upperLeftPixelSpace
	local lowerRightFractional = lowerRightPixelSpace - lowerRightInternalPixel

	--columns
	if internalSize.Y > 0 then
		local columnSize = Vector2.new(1, internalSize.Y)
		if math.floor(upperLeftPixelSpace.X) < math.floor(lowerRightPixelSpace.X) then
			local columnStart = upperLeftInternalPixel + Vector2.new(-1, 0)
			local columnWidth = upperLeftFractional.X
			filledArea += self:GetAreaDensity(columnStart, columnSize) * columnWidth
			columnStart = upperLeftInternalPixel + Vector2.new(internalSize.X, 0)
			columnWidth = lowerRightFractional.X
			filledArea += self:GetAreaDensity(columnStart, columnSize) * columnWidth
		else
			local columnWidth = lowerRightPixelSpace.X - upperLeftPixelSpace.X
			local columnStart = upperLeftInternalPixel + Vector2.new(-1, 0)
			filledArea += self:GetAreaDensity(columnStart, columnSize) * columnWidth
		end
	end

	--rows
	if internalSize.X > 0 then
		local rowSize = Vector2.new(internalSize.X, 1)
		if math.floor(upperLeftPixelSpace.Y) < math.floor(lowerRightPixelSpace.Y) then
			local rowStart = upperLeftInternalPixel + Vector2.new(0, -1)
			local rowWidth = upperLeftFractional.Y
			filledArea += self:GetAreaDensity(rowStart, rowSize) * rowWidth
			rowStart = upperLeftInternalPixel + Vector2.new(0, internalSize.Y)
			rowWidth = lowerRightFractional.Y
			filledArea += self:GetAreaDensity(rowStart, rowSize) * rowWidth
		else
			local rowWidth = lowerRightPixelSpace.Y - upperLeftPixelSpace.Y
			local rowStart = upperLeftInternalPixel + Vector2.new(0, -1)
			filledArea += self:GetAreaDensity(rowStart, rowSize) * rowWidth
		end
	end

	--upper left corner
	local leftEdgeWidth = math.min(upperLeftInternalPixel.X, lowerRightPixelSpace.X) - upperLeftPixelSpace.X
	local upperEdgeHeight = math.min(upperLeftInternalPixel.Y, lowerRightPixelSpace.Y) - upperLeftPixelSpace.Y
	filledArea += self:GetAreaDensity(upperLeftPixelSpace:Floor(), Vector2.new(1, 1)) * leftEdgeWidth * upperEdgeHeight

	--upper right corner
	if math.floor(upperLeftPixelSpace.X) < math.floor(lowerRightPixelSpace.X) then
		local upperRightCornerWidth = lowerRightFractional.X
		local upperRightCornerStart = Vector2.new(lowerRightPixelSpace.X, upperLeftPixelSpace.Y):Floor()
		filledArea += self:GetAreaDensity(upperRightCornerStart, Vector2.new(1, 1)) * upperRightCornerWidth * upperEdgeHeight
		--lower right corner
		if math.floor(upperLeftPixelSpace.Y) < math.floor(lowerRightPixelSpace.Y) then
			filledArea += self:GetAreaDensity(lowerRightPixelSpace:Floor(), Vector2.new(1, 1)) * lowerRightFractional.X * lowerRightFractional.Y
		end
	end

	--lower left corner
	if math.floor(upperLeftPixelSpace.Y) < math.floor(lowerRightPixelSpace.Y) then
		local lowerLeftCornerHeight = lowerRightFractional.Y
		local lowerLeftCornerStart = Vector2.new(upperLeftPixelSpace.X, lowerRightPixelSpace.Y):Floor()
		filledArea += self:GetAreaDensity(lowerLeftCornerStart, Vector2.new(1, 1)) * leftEdgeWidth * lowerLeftCornerHeight
	end

	return filledArea
end

return SummedAreaTable
