--[[
getAttachmentCFrameInPartSpace:
	Returns the CFrame of an attachment relative to its ancestor BasePart.
	In classic rigs, attachments are direct children of MeshParts so this is just attachment.CFrame.
	In HRD rigs, attachments may be nested under Bone chains, so we compose CFrames up the chain.
	Gated behind R15plusUtils.checkFlagEnabledForAllowHrd().
]]

local root = script.Parent.Parent
local R15plusUtils = require(root.util.R15plusUtils)

return function(attachment: Attachment): CFrame
	if not R15plusUtils.checkFlagEnabledForAllowHrd() then
		return attachment.CFrame
	end
	local cframe = attachment.CFrame
	local currentParent = attachment.Parent
	while currentParent and currentParent:IsA("Attachment") do
		cframe = currentParent.CFrame * cframe
		currentParent = currentParent.Parent
	end
	return cframe
end
