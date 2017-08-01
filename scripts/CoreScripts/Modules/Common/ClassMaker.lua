--	// FileName: ClassMaker.lua
--	// Written by: Xsitsu
--	// Description: Really basic class maker module.

local classes = {}

local function ToStringFunction(tbl)
	return string.format("%s: %s", tbl.__ClassName, tbl.MemoryLocation)
end

local function NotValidMemberErrorFunction(tbl, index)
	error(string.format("%s is not a valid member of %s", index, tbl.__ClassName), 3)
end

local function DumpFunction(self)
	return tostring(self)
end

local function IsAFunction(self, classType)
	return (self.__ClassName == classType)
end

local module = {}

function module.RegisterClassType(classType, classMethods)
	if (not classes[classType]) then
		local metatable = {}
		metatable.__metatable = "The metatable is locked"
		metatable.__tostring = ToStringFunction
		metatable.__newindex = function() NotValidMemberErrorFunction() end

		metatable.__ClassName = classType

		local useClassMethods = {}
		useClassMethods.Dump = DumpFunction
		useClassMethods.IsA = IsAFunction

		for i, v in pairs(classMethods) do
			useClassMethods[i] = v
		end
		metatable.__ClassMethods = useClassMethods

		metatable.__index = function(tbl, index)
			local rVal = rawget(tbl, index) or rawget(metatable.__ClassMethods, index) or rawget(metatable, index)
			if (rVal) then return rVal end
			NotValidMemberErrorFunction(tbl, index)
		end

		classes[classType] = metatable
	else
		error(string.format("Class of type '%s' already exists.", classType))
	end
end

function module.MakeClass(classType, classProperties)
	if (classes[classType]) then
		classProperties.MemoryLocation = tostring(classProperties):match("[0123456789ABCDEF]+")
		return setmetatable(classProperties, classes[classType])
	else
		error(string.format("Class of type '%s' does not exist.", classType))
	end
end

return module
