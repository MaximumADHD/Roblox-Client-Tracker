
--[[
	
	---Overview---

	The UI Editor is an Official Roblox supported plugin shipped with Roblox Studio.
	
	The intention of this plugin is to enable developers to easily create good looking
	cross-platform user interfaces.
	
	
	---Function Comments---
	
	Given that lua is a weakly typed language we are using comments on functions to document 
	expected return and parameter types.
	
	Given the example
	
	-- void extend(table(mt Extents2D)& extents, Vector2 ...)
	local function extend(extents, ...) end
	
	We have a function named extend that takes a variable number of arguments.
	The first argument we expect is a table that has a metatable with the functionality of
	Extents2D (defined in the Extents2D module script). All other arguments after
	the first are expected to be of type Vector2(userdata). We expect that this function will
	not return anything. One thing of note is that we use the & symbol to describe that the
	extents table may be mutated by the function. Although not demonstrated here, we use the
	symbol ? to acknowledge that the type is not known
	
	
--]]
