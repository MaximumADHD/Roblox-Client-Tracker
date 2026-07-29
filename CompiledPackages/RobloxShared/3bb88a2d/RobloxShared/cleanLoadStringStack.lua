local loadModuleEnabled = pcall((debug :: any).loadmodule, Instance.new("ModuleScript"))

return function(line: string): string
	if not loadModuleEnabled then
		local spacing, filePath, lineNumber, extra = line:match('(%s*)%[string "(.-)"%]:(%d+)(.*)')
		if filePath then
			local match = filePath
			if spacing then
				match = spacing .. match
			end
			if lineNumber then
				match = match .. ":" .. lineNumber
			end
			if extra then
				match = match .. extra
			end
			return match
		end
	end
	return line
end
