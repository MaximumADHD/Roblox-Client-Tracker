
local StateType = {}
setmetatable(StateType, {
    __index = function(self, index)
        error("Attempt to get invalid StateType `"..tostring(index).."`")
    end,
})

StateType.Ready = "Ready"
StateType.PendingDraggingParts = "PendingDraggingParts" -- Clicked a part, but haven't started dragging
StateType.DraggingHandle = "DraggingHandle"
StateType.DraggingParts = "DraggingParts"
StateType.DragSelecting = "DragSelecting"

return StateType