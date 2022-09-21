return function(group: string, renaming: boolean)
	return {
		type = "SetRenamingGroup",
		group = group,
		renaming = renaming,
	}
end
