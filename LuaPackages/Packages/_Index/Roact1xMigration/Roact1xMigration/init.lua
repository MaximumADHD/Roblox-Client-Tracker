--[[
	This package is was previously a flagged toggle between new and old
	versions of Roact. With the flag removed, it's a needless proxy. Any
	dependencies on this package can simply switch to depending directly on
	Roact
]]
return require(script.Parent.Roact)