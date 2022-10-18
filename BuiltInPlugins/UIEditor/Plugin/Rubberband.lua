--[[
	The Rubberband is displayed when the user clicks outside a GUI object and
	drags the mouse. GUI object inside the rubberband are selected.
--]]

-- Module scripts
local FFlag = require(script.Parent.FFlag)

-- Services
local CoreGuiManager = require(script.Parent.CoreGuiManager)

local m_actionMediator = nil

local m_rubberbandDragInProgress = false
local m_selectionBoxStart = nil
local m_selectionBoxEnd = nil

local m_selectionScreenGui = nil
local m_rubberbandFrames = {}

--constant
local RUBBERBAND_BORDER_SIZE = 1
local RUBBERBAND_COLOR = Color3.new(0.7019, 0.7019, 0.7019)

local function createFrame(parent, border, color)
	local frame = Instance.new("Frame", parent)
	frame.BorderSizePixel = border
	frame.BackgroundColor3 = color
	return frame
end

local function createRubberband()
	m_selectionScreenGui = Instance.new("ScreenGui", CoreGuiManager:findOrCreateFolder("Rubberband"))

	for i = 1, 4 do
		m_rubberbandFrames[i] = createFrame(m_selectionScreenGui, 0, RUBBERBAND_COLOR)
	end
end

local Rubberband = {}

function Rubberband:startRubberbandDrag(location)
	m_rubberbandDragInProgress = true
	m_selectionBoxStart = location
	m_selectionBoxEnd = location

	if not m_selectionScreenGui then
		createRubberband()
	end

	m_actionMediator:onRubberbandBegan(location)
end

function Rubberband:updateRubberband(location)
	if not m_rubberbandDragInProgress then
		return
	end

	m_selectionBoxEnd = location
	local size = m_selectionBoxEnd - m_selectionBoxStart

	m_rubberbandFrames[1].Size = UDim2.new(0, RUBBERBAND_BORDER_SIZE, 0, size.Y + RUBBERBAND_BORDER_SIZE)
	m_rubberbandFrames[2].Size = UDim2.new(0, RUBBERBAND_BORDER_SIZE, 0, size.Y + RUBBERBAND_BORDER_SIZE)
	m_rubberbandFrames[3].Size = UDim2.new(0, size.X + RUBBERBAND_BORDER_SIZE, 0, RUBBERBAND_BORDER_SIZE)
	m_rubberbandFrames[4].Size = UDim2.new(0, size.X + RUBBERBAND_BORDER_SIZE, 0, RUBBERBAND_BORDER_SIZE)

	m_rubberbandFrames[1].Position = UDim2.new(0, m_selectionBoxStart.X, 0, m_selectionBoxStart.Y)
	m_rubberbandFrames[2].Position = UDim2.new(0, m_selectionBoxStart.X + size.X, 0, m_selectionBoxStart.Y)
	m_rubberbandFrames[3].Position = UDim2.new(0, m_selectionBoxStart.X, 0, m_selectionBoxStart.Y)
	m_rubberbandFrames[4].Position = UDim2.new(0, m_selectionBoxStart.X, 0, m_selectionBoxStart.Y + size.Y)
end

function Rubberband:finishRubberbandDrag()
	if not m_rubberbandDragInProgress then
		return
	end

	m_rubberbandDragInProgress = false
	m_selectionBoxStart = nil

	if m_selectionScreenGui then
		m_selectionScreenGui:Destroy()
		m_selectionScreenGui = nil
		m_rubberbandFrames = {}
	end

	m_actionMediator:onRubberbandEnded()
end

function Rubberband:isDragInProgress()
	return m_rubberbandDragInProgress -- and m_selectionBoxStart ~= m_selectionBoxEnd
end

function Rubberband:getBounds()
	return m_selectionBoxStart, m_selectionBoxEnd
end

function Rubberband:setActionMediator(actionMediator)
	m_actionMediator = actionMediator
end

return Rubberband
