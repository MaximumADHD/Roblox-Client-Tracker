--[[
  Filename: BaseMemoryAnalyzer.lua
  Written by: dbanks
  Description: Base class for a widget that displays data about memory usage.
--]]


--[[ Globals ]]--
local RowHeight = 20
local ValueFrameWidth = 100
local StdRowColor3 = Color3.new(0.35, 0.55, 0.35)
local AltRowColor3 = Color3.new(0.15, 0.35, 0.15)
local RowLabelTextColor3 = Color3.new(1, 1, 1)
local RowLabelBorderColor3 = Color3.new(1, 1, 1)
local ButtonBorderColor3 = Color3.new(1, 1, 1)

local RowLabelBorderWidth = 1
local ButtonBorderWidth = 1

local IndentSize = RowHeight
local ButtonSize = IndentSize - 4

local ButtonFrameUDim2Position = UDim2.new(0, 0, 0, 0)

local ButtonUDim2Position = UDim2.new(1, -(IndentSize + ButtonSize)/2, 0, (IndentSize - ButtonSize)/2)
local ButtonUDim2Size = UDim2.new(0, ButtonSize, 0, ButtonSize)

local ValueUDim2Position = UDim2.new(1, -ValueFrameWidth, 0, 0)
local ValueUDim2Size = UDim2.new(0, ValueFrameWidth, 0, RowHeight)

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Helper functions ]]--
local function __StyleAndSizeButton(button)
    button.TextXAlignment = Enum.TextXAlignment.Center
    button.TextColor3 = RowLabelTextColor3
    button.BackgroundTransparency = 1
    button.BorderColor3 = ButtonBorderColor3
    button.BorderSizePixel = ButtonBorderWidth
    
    button.Position = ButtonUDim2Position
    button.Size = ButtonUDim2Size
end

local function __StyleAndSizeLabel(label)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.TextColor3 = RowLabelTextColor3
    label.BackgroundTransparency = 1
    
    label.Position = UDim2.new(0, 5, 0, 0)
    label.Size = UDim2.new(1, -10, 1, 0)
end

local function __StyleRowCellFrame(labelFrame)
    labelFrame.BorderColor3 = RowLabelBorderColor3
    labelFrame.BorderSizePixel = RowLabelBorderWidth
    labelFrame.BackgroundTransparency = 0.6    
end

--[[ Classes ]]--

--////////////////////////////////////
--
-- MemoryAnalyzerRowClass
-- A single row in the table.
--
--////////////////////////////////////
local MemoryAnalyzerRowClass = {}
MemoryAnalyzerRowClass.__index = MemoryAnalyzerRowClass


function MemoryAnalyzerRowClass.new(treeViewItem) 
    local self = {}
    setmetatable(self, MemoryAnalyzerRowClass)

    self._treeViewItem = treeViewItem

    self._expanded = true
    self._expansionToggleCallback = nil
    
    -- The gui widget for the row
    self._frame = Instance.new("Frame")
    self._frame.Name = "MemoryAnalyzerRowClassFrame"
    self._frame.BackgroundTransparency = 1

    -- The button
    self._buttonFrame = Instance.new("Frame")
    self._buttonFrame.Name = "ButtonFrame"
    self._buttonFrame.Parent = self._frame
    self._buttonFrame.Position = ButtonFrameUDim2Position
    local buttonFrameWidth = (1 + treeViewItem:getStackDepth()) * IndentSize
    self._buttonFrame.Size = UDim2.new(0, buttonFrameWidth, 0, RowHeight)
    __StyleRowCellFrame(self._buttonFrame)
    
    self._button = Instance.new("TextButton")
    self._button.Name = "Button"
    self._button.Parent = self._buttonFrame    
    __StyleAndSizeButton(self._button)

    self._button.MouseButton1Click:connect(function() 
        self:__toggleExpansion()
    end)

    self:__updateButtonState()

    -- The label
    self._labelFrame = Instance.new("Frame")
    self._labelFrame.Name = "LabelFrame"
    self._labelFrame.Parent = self._frame
    -- From the left edge of button frame to right edge of value frame.
    self._labelFrame.Position = UDim2.new(0, buttonFrameWidth, 0, 0)
    self._labelFrame.Size = UDim2.new(1, -buttonFrameWidth - ValueFrameWidth, 0, RowHeight)
    __StyleRowCellFrame(self._labelFrame)

    self._labelTextLabel = Instance.new("TextLabel")
    self._labelTextLabel.Name = "Label"
    self._labelTextLabel.Parent = self._labelFrame
    __StyleAndSizeLabel(self._labelTextLabel)

    self._labelTextLabel.Text = treeViewItem:getLabel()

    -- The value
    self._valueFrame = Instance.new("Frame")
    self._valueFrame.Name = "ValueFrame"
    self._valueFrame.Parent = self._frame
    self._valueFrame.Position = ValueUDim2Position
    self._valueFrame.Size = ValueUDim2Size
    __StyleRowCellFrame(self._valueFrame)

    self._valueTextLabel = Instance.new("TextLabel")
    self._valueTextLabel.Name = "Value"
    self._valueTextLabel.Parent = self._valueFrame
    __StyleAndSizeLabel(self._valueTextLabel)

    self._valueHasBeenNonZero = false
    self:updateValue()

    return self
end  

function MemoryAnalyzerRowClass:isExpanded()
    return self._expanded
end

function MemoryAnalyzerRowClass:valueHasBeenNonZero()
    return self._valueHasBeenNonZero
end

function MemoryAnalyzerRowClass:setExpansionToggleCallback(callback)
    self._expansionToggleCallback = callback
end

function MemoryAnalyzerRowClass:__toggleExpansion()
    self._expanded = not self._expanded
    self:__updateButtonState()
    if (self._expansionToggleCallback ~= nil) then 
        self._expansionToggleCallback()
    end
end
    

function MemoryAnalyzerRowClass:__updateButtonState()
    local children = self._treeViewItem:getChildren()
    if #children == 0 then 
        self._button.Visible = false
    else
        self._button.Visible = true
        if (self._expanded) then 
            self._button.Text = "-"
        else
            self._button.Text = "+"
        end
    end
end

function MemoryAnalyzerRowClass:updateValue()
    local value = self._treeViewItem:getValue()
    -- We know we're only dealing with positive numbers.
    -- And if I'm only going to display 3 significant digits (see below) I'm really 
    -- asking if this is >= 0.001
    if (value >= 0.001) then 
        self._valueHasBeenNonZero = true
    end
    
    self._valueTextLabel.Text = string.format("%.3f", self._treeViewItem:getValue())
end

function MemoryAnalyzerRowClass:setZIndex(zIndex) 
    self._frame.ZIndex = zIndex
    self._labelTextLabel.ZIndex = zIndex
    self._valueTextLabel.ZIndex = zIndex
end

function MemoryAnalyzerRowClass:setRowValue(value) 
    self._valueTextLabel.Text = string.format("%.3f", value)
end

function MemoryAnalyzerRowClass:getFrame()
    return self._frame
end

function MemoryAnalyzerRowClass:setRowNumber(rowNumber)
    if (rowNumber % 2 == 1) then 
        self._buttonFrame.BackgroundColor3 = StdRowColor3
        self._labelFrame.BackgroundColor3 = StdRowColor3
        self._valueFrame.BackgroundColor3 = StdRowColor3
    else
        self._buttonFrame.BackgroundColor3 = AltRowColor3
        self._labelFrame.BackgroundColor3 = AltRowColor3
        self._valueFrame.BackgroundColor3 = AltRowColor3
    end
end

--////////////////////////////////////
--
-- BaseMemoryAnalyzerClass
-- The whole table.
--
--////////////////////////////////////
local BaseMemoryAnalyzerClass = {}
BaseMemoryAnalyzerClass.__index = BaseMemoryAnalyzerClass

BaseMemoryAnalyzerClass.Indent = string.rep(" ", 4) 

function BaseMemoryAnalyzerClass.new(parentFrame) 
    local self = {}
    setmetatable(self, BaseMemoryAnalyzerClass)

    -- The gui widget containing the whole thing.
    self._frame = Instance.new("Frame")
    self._frame.Name = "MemoryAnalyzerClassFrame"
    self._frame.ZIndex = parentFrame.ZIndex
    self._frame.BackgroundTransparency = 1

    -- a map from treeViewItem to the Row used to display the treeViewItem.
    self._rowsByTreeViewItem = {}

    -- things need to be laid out, either because I have new content or 
    -- the size of my parent container changed.
    -- Starts out as 'false' because there's no rows -> nothing to lay out.
    self._layoutDirty = false

    self._heightChangedCallback = nil
    self._heightInPix = 0

    self._frame.Parent = parentFrame

    return self
end

-- This needs to be overridden in derived classes.
function BaseMemoryAnalyzerClass:getMemoryUsageTree()
    return nil
end

function BaseMemoryAnalyzerClass:setHeightChangedCallback(callback)
    self._heightChangedCallback  = callback
end

function BaseMemoryAnalyzerClass:__getOrMakeRowForTreeViewItem(treeViewItem) 
    if (self._rowsByTreeViewItem[treeViewItem] == nil) then
        local row = MemoryAnalyzerRowClass.new(treeViewItem)
        row:setExpansionToggleCallback(function() 
            self:__layoutRows()
        end)
        local frame = row:getFrame()
        frame.Parent = self._frame

        self._rowsByTreeViewItem[treeViewItem] = row
        self._layoutDirty = true
    end
    return self._rowsByTreeViewItem[treeViewItem]
end

function BaseMemoryAnalyzerClass:__recursiveUpdateStatValue(treeViewItem)
    local row = self:__getOrMakeRowForTreeViewItem(treeViewItem) 
    row:updateValue()
    
    local children = treeViewItem:getChildren()
    for i, child in ipairs(children) do 
        self:__recursiveUpdateStatValue(child)
    end
end

-- Write latest stat values into each row.
function BaseMemoryAnalyzerClass:renderUpdates()  
    local treeViewItemRoot = self:getMemoryUsageTree()
    if (treeViewItemRoot ~= nil) then         
        self:__recursiveUpdateStatValue(treeViewItemRoot)
    end
    
    if self._layoutDirty then 
        self:__layoutRows()
    end
end


function BaseMemoryAnalyzerClass:__layoutRows()    
    self._layoutDirty = false
    self._heightInPix = 0

    local treeViewItemRoot = self:getMemoryUsageTree()
    if (treeViewItemRoot ~= nil) then 
        self:__recursiveLayoutTreeViewItem(self:getMemoryUsageTree(), true) 
    end
    
    self._frame.Size = UDim2.new(1, 0, 0, self._heightInPix)
    self._frame.Position = UDim2.new(0, 0, 0, 0)

    if (self._heightChangedCallback) then 
        self._heightChangedCallback(self._heightInPix)
    end
end

function BaseMemoryAnalyzerClass:__recursiveLayoutTreeViewItem(treeViewItem, isVisible)
    local row = self:__getOrMakeRowForTreeViewItem(treeViewItem)
    local frame = row:getFrame()
    
    -- caller has something to say about whether it's visible (ancestor may be collapsed).
    -- I also may be invisible if I have never been non-zero.
    isVisible = (isVisible and row:valueHasBeenNonZero())
    
    if (isVisible) then 
        frame.Visible = true
        frame.Size = UDim2.new(1, 0, 0, RowHeight)
        frame.Position = UDim2.new(0, 0, 0, self._heightInPix)
        row:setZIndex(self._frame.ZIndex)
        row:setRowNumber(self._heightInPix/RowHeight)
    
        self._heightInPix = self._heightInPix + RowHeight
    else
        frame.Visible = false
    end
    
    local children = treeViewItem:getChildren()
    for i, child in ipairs(children) do 
        self:__recursiveLayoutTreeViewItem(child, row:isExpanded() and isVisible)
    end
end  

function BaseMemoryAnalyzerClass:getHeightInPix()
    return self._heightInPix
end

return BaseMemoryAnalyzerClass