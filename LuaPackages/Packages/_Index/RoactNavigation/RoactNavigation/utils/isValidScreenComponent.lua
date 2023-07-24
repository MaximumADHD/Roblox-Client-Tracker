-- We have to do this using type because ElementKind is not exported by Roact
return function(screenComponent)
	local componentType = type(screenComponent)
	local valid = componentType == "function" -- Function Component
		or (componentType == "table" and type(screenComponent.render) == "function") -- Stateful Component
	return valid
end
