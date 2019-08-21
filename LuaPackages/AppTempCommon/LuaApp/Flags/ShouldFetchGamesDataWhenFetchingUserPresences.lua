local FFlagLuaHomePeopleListV1V361 = settings():GetFFlag("LuaHomePeopleListV1V361")

return function()
	-- When we should fetch games data could change in the future
	-- Right now, we should fetch games data when people list on or place list on
	return FFlagLuaHomePeopleListV1V361
end