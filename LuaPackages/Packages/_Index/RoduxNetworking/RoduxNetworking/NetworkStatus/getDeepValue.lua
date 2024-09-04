return function(tab, keyPath): any?
	local currentNode = tab
	for _, key in ipairs(keyPath:split(".")) do
		if not currentNode[key] then
			return nil
		end

		currentNode = currentNode[key]
	end

	return currentNode
end
