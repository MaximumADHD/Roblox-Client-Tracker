
local ASSET_TO_STRING = {
    [1]  = "Image";
    [2]  = "T-Shirt";
    [3]  = "Audio";
    [4]  = "Mesh";
    [5]  = "Lua";
    [6]  = "HTML";
    [7]  = "Text";
    [8]  = "Hat";
    [9]  = "Place";
    [10] = "Model";
    [11] = "Shirt";
    [12] = "Pants";
    [13] = "Decal";
    [16] = "Avatar";
    [17] = "Head";
    [18] = "Face";
    [19] = "Gear";
    [21] = "Badge";
    [22] = "Group Emblem";
    [24] = "Animation";
    [25] = "Arms";
    [26] = "Legs";
    [27] = "Torso";
    [28] = "Right Arm";
    [29] = "Left Arm";
    [30] = "Left Leg";
    [31] = "Right Leg";
    [32] = "Package";
    [33] = "YouTube Video";
    -- NOTE: GamePass and Plugin AssetTypeIds are different on ST1, ST2 and ST3

    [34] = "Game Pass";
    [38] = "Plugin";
	[41] = "Hair Accessory";
	[42] = "Face Accessory";
	[43] = "Neck Accessory";
	[44] = "Shoulder Accessory";
	[45] = "Front Accessory";
	[46] = "Back Accessory";
	[47] = "Waist Accessory";

	[48] = "Climb Animation";
	[49] = "Death Animation";
	[50] = "Fall Animation";
	[51] = "Idle Animation";
	[52] = "Jump Animation";
	[53] = "Run Animation";
	[54] = "Swim Animation";
	[55] = "Walk Animation";
	[56] = "Pose Animation";

	[57] = "Ear Accessory";
	[58] = "Eye Accessory";

    [0]  = "Product";
}

local reversible = {}
for id, name in next, ASSET_TO_STRING do
	reversible[id] = name
	reversible[name] = id
	reversible[name:gsub(' ','')] = id
end

return reversible
