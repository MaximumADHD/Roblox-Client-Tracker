local PATH_SEPARATOR = "/"

local PASSTHROUGH_PREFIXES = { "@std", "@rbx" }

local function resolveInstancePath(relativeTo: Instance, instancePath: string): Instance?
	local parts = instancePath:split(PATH_SEPARATOR)
	local firstPart = parts[1]
	for _, prefix in PASSTHROUGH_PREFIXES do
		if firstPart == prefix then
			return nil
		end
	end

	local prevPathPart: string?
	local current = relativeTo

	for _, pathPart in parts do
		-- Splitting can produce empty strings (e.g. "./" → {".", ""} or
		-- "Foo//Bar" → {"Foo", "", "Bar"}). Skip them after the first part.
		if pathPart == "" and prevPathPart ~= nil then
			continue
		end

		if not prevPathPart and pathPart == "" then
			error("paths beginning with '/' are not supported in sandboxed string requires")
		end

		-- First part of the path needs special handling for aliases and
		-- ascending through parents
		if current == relativeTo then
			if pathPart == "@game" then
				current = game
				prevPathPart = pathPart
				continue
			elseif pathPart == "@self" then
				prevPathPart = pathPart
				continue
			elseif pathPart == "." then
				if not current.Parent then
					error(`could not resolve path (no parent for {current})`)
				end
				current = current.Parent
				prevPathPart = pathPart
				continue
			elseif pathPart == ".." then
				-- Paths beginning with `../` need to go up two parents, then
				-- any subsequent use of `..` will only move up one parent.
				if not (current.Parent and current.Parent.Parent) then
					error(`could not resolve path part "{pathPart}" relative to {current}`)
				end
				current = current.Parent.Parent
				prevPathPart = pathPart
				continue
			end
		end

		if pathPart == ".." then
			if prevPathPart and prevPathPart ~= pathPart then
				error("paths including '..' after the beginning are not supported in sandboxed string requires")
			end
			if not current.Parent then
				error(`could not resolve path part "{pathPart}" relative to {current}`)
			end
			current = current.Parent
		else
			local candidate = current:FindFirstChild(pathPart)
			if not candidate then
				error(`could not resolve an Instance named "{pathPart}" relative to {current}`)
			end
			current = candidate
		end

		prevPathPart = pathPart
	end

	return current
end

return resolveInstancePath
