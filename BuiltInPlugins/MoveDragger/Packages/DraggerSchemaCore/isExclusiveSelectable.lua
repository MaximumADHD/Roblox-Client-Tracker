
-- Attachments like to be exclusively selected unless we're trying to multiple
-- select them.
return function(draggerContext, selectable, item)
	return item:IsA("Attachment") and not draggerContext:shouldExtendSelection()
end