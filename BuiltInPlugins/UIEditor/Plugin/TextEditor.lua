--[[
	The TextEditor is displayed when you double-click a TextLabel. It allows you
	to edit the text in the TextLabel.
--]]

-- Module scripts
local CoreGuiManager = require(script.Parent.CoreGuiManager)
local FFlag	= require(script.Parent.FFlag)

-- Services
local ChangeHistoryService = game:GetService("ChangeHistoryService")

-- Variables
local m_actionMediator = nil

local m_currentInstance = nil

local m_screenGui = nil
local m_textBox = nil

local m_originalText = ""

local m_focusLostConnection = nil

local TextEditor = {}

function TextEditor:updateInstance(inputObject)
	if not m_currentInstance then return false end
	
	if (inputObject.UserInputType == Enum.UserInputType.MouseButton1 and
		inputObject.UserInputState == Enum.UserInputState.Begin) then
	
		--check if outside
		local location = Vector2.new(inputObject.Position.x, inputObject.Position.y)
	end
end

function TextEditor:finishEditingInstance()
	m_currentInstance = nil
	
	if m_screenGui then
		
		m_screenGui:Destroy()
		m_screenGui = nil
		
		m_textBox:Destroy()
		m_textBox = nil
		
		m_focusLostConnection:disconnect()
		m_focusLostConnection = nil
	end
	
	ChangeHistoryService:SetWaypoint("Text Changed")
	
	m_actionMediator:onTextEditorEnded()
end

function TextEditor:isCurrentlyEditing()
	return m_currentInstance ~= nil
end

function TextEditor:getCurrentInstance()
	return m_currentInstance
end

local function onFocusLost(enterPressed, inputObject)
	
	if (m_currentInstance) then
		m_currentInstance.Text = m_textBox.Text
	end
	
	TextEditor:finishEditingInstance()
end

function TextEditor:startEditingInstance(instance)
	m_currentInstance = instance
	
	local pos = instance.AbsolutePosition
	local size = instance.AbsoluteSize
	
	m_originalText = instance.Text
	instance.Text = ""
	
	if not m_screenGui then
		m_screenGui = Instance.new("ScreenGui", CoreGuiManager:findOrCreateFolder("TextEditor"))
		m_textBox = Instance.new("TextBox")
		
		m_textBox.Position = UDim2.new(0, pos.X, 0, pos.Y)
		m_textBox.Size = UDim2.new(0, size.X, 0, size.Y)
		
		m_textBox.BackgroundTransparency = 1
		m_textBox.BorderSizePixel = 0
		
		m_textBox.Font = m_currentInstance.Font
		m_textBox.TextColor3 = m_currentInstance.TextColor3
		m_textBox.Text = m_originalText
		m_textBox.TextSize = m_currentInstance.TextSize
		
		m_textBox.TextScaled = m_currentInstance.TextScaled
		
		m_textBox.TextWrapped = m_currentInstance.TextWrapped
		m_textBox.TextXAlignment = m_currentInstance.TextXAlignment
		m_textBox.TextYAlignment = m_currentInstance.TextYAlignment
		
		m_textBox.Parent = m_screenGui
		
		m_focusLostConnection = m_textBox.FocusLost:connect(onFocusLost)
		
		m_textBox.ClearTextOnFocus = false
		m_textBox:CaptureFocus()
		
		
		
	end
	
	m_actionMediator:onTextEditorBegan()
end

function TextEditor:setActionMediator(actionMediator)
	m_actionMediator = actionMediator
end

return TextEditor
