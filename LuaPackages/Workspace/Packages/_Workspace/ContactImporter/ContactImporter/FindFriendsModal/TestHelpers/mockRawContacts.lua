local longList = {}

for i = 1, 25, 1 do
	local contactEntry = {
		phonenumber = { tostring(i) },
		lastname = "Person" .. tostring(i),
		firstname = "Test" .. tostring(i),
	}
	table.insert(longList, contactEntry)
end

return {
	shortList = {
		{
			phonenumber = {
				"44 2350328333",
			},
			lastname = "a",
			firstname = "alex",
		},
		{
			phonenumber = {
				"980889091",
			},
			lastname = "b",
			firstname = "bob",
		},
		{
			phonenumber = {
				"980889090",
			},
			lastname = "c",
			firstname = "cathy",
		},
		{
			phonenumber = {
				"980889090",
			},
			lastname = "z",
			firstname = "zack",
		},
	},
	longList = longList,
}
