return function(conversation)
	return (conversation.title or conversation.titleForViewer):gsub("\n", "")
end