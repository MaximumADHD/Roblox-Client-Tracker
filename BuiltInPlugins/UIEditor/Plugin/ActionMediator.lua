--[[
	The ActionMediator decouples the interaction between the "action modules" such as Move,
	Resize, Rotate, Rubberband and TextEditor module.
	
	The modules call the event handlers through a reference instead of 	direct inclusion. We
	avoid having to use BindableEvents and their performance issues, but still decouple the
	modules to a degree.

	The ActionMediator should be injected into the modules that need them. That way there will
	not be a direct circular dependency between the module scripts.
	
	The modules associated with the "action modules" are updated here, e.g. the 
	DistanceLinesManager, RotationBox and SizeBox. That way it's easier to see when
	they're updated and when their visibility change.
--]]

local ActionMediator = {}

-- Module scripts
local FFlag = require(script.Parent.FFlag)

-- Variables
local m_move = nil
local m_resize = nil
local m_rotate = nil
local m_rubberband = nil
local m_textEditor = nil

local m_distanceLinesManager = nil
local m_rotationBox = nil
local m_sizeBox = nil

local m_selectionManager = nil

-- void ActionMediator:onMoveBegan(Vector2 location)
function ActionMediator:onMoveBegan(location)
	m_resize:hide()
	m_sizeBox:setVisible(false)
end

-- void ActionMediator:onMoveChanged(Vector2 location)
function ActionMediator:onMoveChanged(location)
	m_distanceLinesManager:update()
	m_distanceLinesManager:setVisible(true)
end

-- void ActionMediator:onMoveEnded(Vector2 location)
function ActionMediator:onMoveEnded(location)
	m_resize:updatePosition()
	m_resize:show()
	m_sizeBox:updatePosition()
	m_sizeBox:setVisible(true)
end

-- void ActionMediator:onResizeBegan(Vector2 location)
function ActionMediator:onResizeBegan(location) end

-- void ActionMediator:onResizeChanged(Vector2 location)
function ActionMediator:onResizeChanged(location)
	m_distanceLinesManager:update()
	m_sizeBox:update()
end

-- void ActionMediator:onResizeEnded(Vector2 location)
function ActionMediator:onResizeEnded(location) end

-- void ActionMediator:onRotateBegan(Vector2 location)
function ActionMediator:onRotateBegan(location)
	m_distanceLinesManager:setVisible(false)
	m_resize:hide()
	m_sizeBox:setVisible(false)
end

-- void ActionMediator:onRotateChanged(Vector2 location)
function ActionMediator:onRotateChanged(location)
	m_rotationBox:update(location, m_rotate:getRotation())
end

-- void ActionMediator:onRotateEnded(Vector2 location)
function ActionMediator:onRotateEnded(location)
	m_resize:updatePosition()
	m_resize:show()
	m_sizeBox:setVisible(true)
	m_distanceLinesManager:update()
	m_distanceLinesManager:setVisible(true)
end

-- void ActionMediator:onRubberbandBegan(Vector2 location)
function ActionMediator:onRubberbandBegan(location)
	m_resize:hide()
	-- Don't show the sizebox and distance lines while selecting objects with
	-- the rubberband. They'll only show if you have one object. Otherwise
	-- they might flicker on and off. Show them again when done with the selection.
	m_sizeBox:setVisible(false)
	m_distanceLinesManager:setVisible(false)
	m_selectionManager:setSuppressFilteredSelectionChanged(true)
end

-- void ActionMediator:onRubberbandEnded()
function ActionMediator:onRubberbandEnded()
	-- The selection changes were suppressed while the rubberband was active. The
	-- listeners need to be notified of the selection changes during the rubberband
	-- selection.
	m_selectionManager:setSuppressFilteredSelectionChanged(false)
end

-- void ActionMediator:onTextEditorBegan()
function ActionMediator:onTextEditorBegan()
	m_distanceLinesManager:setVisible(false)
	m_resize:hide()
	m_sizeBox:setVisible(false)
end

-- void ActionMediator:onTextEditorEnded()
function ActionMediator:onTextEditorEnded()
	m_distanceLinesManager:setVisible(true)
	m_resize:show()
	m_sizeBox:setVisible(true)
end

-- For setting the Move module
function ActionMediator:setMove(move)
	m_move = move
end

-- For setting the Rotate module
function ActionMediator:setRotate(rotate)
	m_rotate = rotate
end

-- For setting the Resize module
function ActionMediator:setResize(resize)
	m_resize = resize
end

-- For setting the Rubberband module
function ActionMediator:setRubberband(rubberband)
	m_rubberband = rubberband
end

-- For setting the TextEditor module
function ActionMediator:setTextEditor(textEditor)
	m_textEditor = textEditor
end

-- For setting the DistanceLinesManager module
function ActionMediator:setDistanceLinesManager(distanceLinesManager)
	m_distanceLinesManager = distanceLinesManager
end

-- For setting the RotationBox module
function ActionMediator:setRotationBox(rotationBox)
	m_rotationBox = rotationBox
end

-- For setting the SizeBox module
function ActionMediator:setSizeBox(sizeBox)
	m_sizeBox = sizeBox
end

-- For setting the SelectionManager module
function ActionMediator:setSelectionManager(selectionManager)
	m_selectionManager = selectionManager
end

return ActionMediator
