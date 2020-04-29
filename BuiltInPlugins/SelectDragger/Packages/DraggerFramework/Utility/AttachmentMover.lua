
local AttachmentMover = {}
AttachmentMover.__index = AttachmentMover

function AttachmentMover.new()
    return setmetatable({}, AttachmentMover)
end

function AttachmentMover:setDragged(attachments)
    self._originalWorldCFrames = {}
    for _, attachment in ipairs(attachments) do
        self._originalWorldCFrames[attachment] = attachment.WorldCFrame
    end
end

function AttachmentMover:transformTo(transform)
    for attachment, originalWorldCFrame in pairs(self._originalWorldCFrames) do
        attachment.WorldCFrame = transform * originalWorldCFrame
    end
end

function AttachmentMover:commit()
    self._originalWorldCFrames = nil
end

return AttachmentMover