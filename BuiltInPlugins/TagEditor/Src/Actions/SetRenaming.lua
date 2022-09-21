return function(tag: string, renaming: boolean)
	return {
		type = "SetRenaming",
		tag = tag,
		renaming = renaming,
	}
end
