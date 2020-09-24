return function(draggerContext, hoverSelectable)
	if draggerContext:areConstraintDetailsShown() and
		(hoverSelectable:IsA("Attachment") or hoverSelectable:IsA("Constraint")) then
		-- Don't show hover boxes for constraints with visible details, they
		-- have their own special hover highlighting.
		return nil
	else
		-- Note: We're using SelectionBox directly here. For other schemas which
		-- aren't based on Instances, you would return a class which :extends
		-- Component or PureComponent and knows how to adorn your selectables.
		return "SelectionBox"
	end
end