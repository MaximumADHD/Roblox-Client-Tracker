local httpService = game.HttpService
local cursorToPageNumber = {}

function testHttpGet(name, args)
	local t = {}
	local isjson = false

	if name == '/v1/avatar' then
		t.bodyColors = {
			headColorId = 1021,
			leftArmColorId = 1021,
			leftLegColorId = 1021,
			rightArmColorId = 1021,
			rightLegColorId = 1021,
			torsoColorId = 1021,
		}
		t.bodyColorsUrl = ''
		t.playerAvatarType = 'R15'
		t.scales = {
			height = 1,
			width = 1
		}
		t.assets = {
			{
				name = 'Smile',
				id = 144075659,
				assetType = {
					name = 'Face',
					id = 18
				}
			},
			{
				name = 'Blue and Black Motorcycle Shirt',
				id = 144076358,
				assetType = {
					name = 'Shirt',
					id = 11
				}
			},
			{
				name = 'Dark Green Jeans',
				id = 144076760,
				assetType = {
					name = 'Pants',
					id = 12
				}
			},
			{
				name = 'Paper Tix Hat',
				id = 390970950,
				assetType = {
					name = 'Hat',
					id = 8
				}
			},
			{
				name = 'l r',
				id = 619543231,
				assetType = {
					name = 'RunAnimation',
					id = 53
				}
			},
			{
				name = 'l w',
				id = 619544080,
				assetType = {
					name = 'WalkAnimation',
					id = 55
				}
			},
			{
				name = 'l f',
				id = 619541867,
				assetType = {
					name = 'FallAnimation',
					id = 50
				}
			},
			{
				name = 'l j',
				id = 619542888,
				assetType = {
					name = 'JumpAnimation',
					id = 52
				}
			},
			{
				name = 'l i',
				id = 619542203,
				assetType = {
					name = 'IdleAnimation',
					id = 51
				}
			},
			{
				name = 'l s',
				id = 619543721,
				assetType = {
					name = 'SwimAnimation',
					id = 54
				}
			},
			{
				name = 'l c',
				id = 619541458,
				assetType = {
					name = 'ClimbAnimation',
					id = 48
				}
			}
		}
	elseif name == '/v1/avatar-rules' then
		t.scales = {
			height = {
				max = 1.05,
				min = 0.95,
				increment = 0.01
			},
			width = {
				max = 1,
				min = 0.75,
				increment = 0.01
			},
		}
		t.playerAvatarTypes = {
			[1] = 'R6',
			[2] = 'R15'
		}
		t.bodyColorsPalette = {
			[1] = {
				brickColorId = 45,
				hexColor = "#B4D2E4"
			},
			[2] = {
				brickColorId = 1024,
				hexColor = "#AFDDFF"
			},
			[3] = {
				brickColorId = 11,
				hexColor = "#80BBDC"
			},
			[4] = {
				brickColorId = 102,
				hexColor = "#6E99CA"
			},
			[5] = {
				brickColorId = 23,
				hexColor = "#0D69AC"
			},
			[6] = {
				brickColorId = 1010,
				hexColor = "#0000FF"
			},
			[7] = {
				brickColorId = 1012,
				hexColor = "#2154B9"
			},
			[8] = {
				brickColorId = 1011,
				hexColor = "#002060"
			},
			[9] = {
				brickColorId = 1027,
				hexColor = "#9FF3E9"
			},
			[10] = {
				brickColorId = 1018,
				hexColor = "#12EED4"
			},
			[11] = {
				brickColorId = 151,
				hexColor = "#789082"
			},
			[12] = {
				brickColorId = 1022,
				hexColor = "#7F8E64"
			},
			[13] = {
				brickColorId = 135,
				hexColor = "#74869D"
			},
			[14] = {
				brickColorId = 1019,
				hexColor = "#00FFFF"
			},
			[15] = {
				brickColorId = 1013,
				hexColor = "#04AFEC"
			},
			[16] = {
				brickColorId = 107,
				hexColor = "#008F9C"
			},
			[17] = {
				brickColorId = 1028,
				hexColor = "#CCFFCC"
			},
			[18] = {
				brickColorId = 29,
				hexColor = "#A1C48C"
			},
			[19] = {
				brickColorId = 119,
				hexColor = "#A4BD47"
			},
			[20] = {
				brickColorId = 37,
				hexColor = "#4B974B"
			},
			[21] = {
				brickColorId = 1021,
				hexColor = "#3A7D15"
			},
			[22] = {
				brickColorId = 1020,
				hexColor = "#00FF00"
			},
			[23] = {
				brickColorId = 28,
				hexColor = "#287F47"
			},
			[24] = {
				brickColorId = 141,
				hexColor = "#27462D"
			},
			[25] = {
				brickColorId = 1029,
				hexColor = "#FFFFCC"
			},
			[26] = {
				brickColorId = 226,
				hexColor = "#FDEA8D"
			},
			[27] = {
				brickColorId = 1008,
				hexColor = "#C1BE42"
			},
			[28] = {
				brickColorId = 24,
				hexColor = "#F5CD30"
			},
			[29] = {
				brickColorId = 1017,
				hexColor = "#FFAF00"
			},
			[30] = {
				brickColorId = 1009,
				hexColor = "#FFFF00"
			},
			[31] = {
				brickColorId = 1005,
				hexColor = "#FFAF00"
			},
			[32] = {
				brickColorId = 105,
				hexColor = "#E29B40"
			},
			[33] = {
				brickColorId = 1025,
				hexColor = "#FFC9C9"
			},
			[34] = {
				brickColorId = 125,
				hexColor = "#EAB892"
			},
			[35] = {
				brickColorId = 101,
				hexColor = "#DA867A"
			},
			[36] = {
				brickColorId = 1007,
				hexColor = "#A34B4B"
			},
			[37] = {
				brickColorId = 1016,
				hexColor = "#FF66CC"
			},
			[38] = {
				brickColorId = 1032,
				hexColor = "#FF00BF"
			},
			[39] = {
				brickColorId = 1004,
				hexColor = "#FF0000"
			},
			[40] = {
				brickColorId = 21,
				hexColor = "#C4281C"
			},
			[41] = {
				brickColorId = 9,
				hexColor = "#E8BAC8"
			},
			[42] = {
				brickColorId = 1026,
				hexColor = "#B1A7FF"
			},
			[43] = {
				brickColorId = 1006,
				hexColor = "#B480FF"
			},
			[44] = {
				brickColorId = 153,
				hexColor = "#957977"
			},
			[45] = {
				brickColorId = 1023,
				hexColor = "#8C5B9F"
			},
			[46] = {
				brickColorId = 1015,
				hexColor = "#AA00AA"
			},
			[47] = {
				brickColorId = 1031,
				hexColor = "#6225D1"
			},
			[48] = {
				brickColorId = 104,
				hexColor = "#6B327C"
			},
			[49] = {
				brickColorId = 5,
				hexColor = "#D7C59A"
			},
			[50] = {
				brickColorId = 1030,
				hexColor = "#FFCC99"
			},
			[51] = {
				brickColorId = 18,
				hexColor = "#CC8E69"
			},
			[52] = {
				brickColorId = 106,
				hexColor = "#DA8541"
			},
			[53] = {
				brickColorId = 38,
				hexColor = "#A05F35"
			},
			[54] = {
				brickColorId = 1014,
				hexColor = "#AA5500"
			},
			[55] = {
				brickColorId = 217,
				hexColor = "#7C5C46"
			},
			[56] = {
				brickColorId = 192,
				hexColor = "#694028"
			},
			[57] = {
				brickColorId = 1001,
				hexColor = "#F8F8F8"
			},
			[58] = {
				brickColorId = 1,
				hexColor = "#F2F3F3"
			},
			[59] = {
				brickColorId = 208,
				hexColor = "#E5E4DF"
			},
			[60] = {
				brickColorId = 1002,
				hexColor = "#CDCDCD"
			},
			[61] = {
				brickColorId = 194,
				hexColor = "#A3A2A5"
			},
			[62] = {
				brickColorId = 199,
				hexColor = "#635F62"
			},
			[63] = {
				brickColorId = 26,
				hexColor = "#1B2A35"
			},
			[64] = {
				brickColorId = 1003,
				hexColor = "#111111"
			},
			[65] = {
				brickColorId = 364,
				hexColor = "#5A4C42"
			},
			[66] = {
				brickColorId = 359,
				hexColor = "#AF9483"
			},
			[67] = {
				brickColorId = 361,
				hexColor = "#564236"
			},
			[68] = {
				brickColorId = 351,
				hexColor = "#BC9B5D"
			},
			[69] = {
				brickColorId = 352,
				hexColor = "#C7AC78"
			},
			[70] = {
				brickColorId = 330,
				hexColor = "#FF98DC"
			},
			[71] = {
				brickColorId = 305,
				hexColor = "#527CAE"
			},
			[72] = {
				brickColorId = 321,
				hexColor = "#A75E9B"
			},
			[73] = {
				brickColorId = 310,
				hexColor = "#5B9A4C"
			},
			[74] = {
				brickColorId = 317,
				hexColor = "#7C9C6B"
			},
			[75] = {
				brickColorId = 334,
				hexColor = "#F8D96D"
			},
		}
		t.wearableAssetTypes = {
			[1] = {
				id = 8,
				name = "Hat",
				maxNumber = 3
			},
			[2] = {
				id = 41,
				name = "Hair Accessory",
				maxNumber = 1
			},
			[3] = {
				id = 42,
				name = "Face Accessory",
				maxNumber = 1
			},
			[4] = {
				id = 43,
				name = "Neck Accessory",
				maxNumber = 1
			},
			[5] = {
				id = 44,
				name = "Shoulder Accessory",
				maxNumber = 1
			},
			[6] = {
				id = 45,
				name = "Front Accessory",
				maxNumber = 1
			},
			[7] = {
				id = 46,
				name = "Back Accessory",
				maxNumber = 1
			},
			[8] = {
				id = 47,
				name = "Waist Accessory",
				maxNumber = 1
			},
			[9] = {
				id = 18,
				name = "Face",
				maxNumber = 1
			},
			[10] = {
				id = 19,
				name = "Gear",
				maxNumber = 1
			},
			[11] = {
				id = 17,
				name = "Head",
				maxNumber = 1
			},
			[12] = {
				id = 29,
				name = "Left Arm",
				maxNumber = 1
			},
			[13] = {
				id = 30,
				name = "Left Leg",
				maxNumber = 1
			},
			[14] = {
				id = 12,
				name = "Pants",
				maxNumber = 1
			},
			[15] = {
				id = 28,
				name = "Right Arm",
				maxNumber = 1
			},
			[16] = {
				id = 31,
				name = "Right Leg",
				maxNumber = 1
			},
			[17] = {
				id = 11,
				name = "Shirt",
				maxNumber = 1
			},
			[18] = {
				id = 2,
				name = "T-Shirt",
				maxNumber = 1
			},
			[19] = {
				id = 27,
				name = "Torso",
				maxNumber = 1
			},
			[20] = {
				id = 48,
				name = "Climb Animation",
				maxNumber = 1
			},
			[21] = {
				id = 49,
				name = "Death Animation",
				maxNumber = 1
			},
			[22] = {
				id = 50,
				name = "Fall Animation",
				maxNumber = 1
			},
			[23] = {
				id = 51,
				name = "Idle Animation",
				maxNumber = 1
			},
			[24] = {
				id = 52,
				name = "Jump Animation",
				maxNumber = 1
			},
			[25] = {
				id = 53,
				name = "Run Animation",
				maxNumber = 1
			},
			[26] = {
				id = 54,
				name = "Swim Animation",
				maxNumber = 1
			},
			[27] = {
				id = 55,
				name = "Walk Animation",
				maxNumber = 1
			},
			[28] = {
				id = 56,
				name = "Pose Animation",
				maxNumber = 1
			},
		}
	elseif name == '/v1/outfits/<outfitId>/details' then
		if args.outfitId == 100 then
			isjson = true
			t = [[{"id":100,"name":"Simplistic","assets":[{"id":130856220,"name":"bill cosbeh","assetType":{"id":2,"name":"T-Shirt"}},{"id":100426655,"name":"Blue Camping Hat","assetType":{"id":8,"name":"Hat"}},{"id":20573078,"name":"Shaggy","assetType":{"id":41,"name":"Hair Accessory"}},{"id":11884330,"name":"Nerd Glasses","assetType":{"id":42,"name":"Face Accessory"}},{"id":7074893,"name":"Drool","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":226,"torsoColorId":199,"rightArmColorId":226,"leftArmColorId":226,"rightLegColorId":11,"leftLegColorId":11}}]]
		elseif args.outfitId == 1337 then
			isjson = true
			t = [[{"id":1337,"name":"Outfit5","assets":[{"id":114275203,"name":"Purple Robes Pants","assetType":{"id":12,"name":"Pants"}},{"id":114273471,"name":"Purple Robes","assetType":{"id":11,"name":"Shirt"}},{"id":100426197,"name":"Curtis Cactus","assetType":{"id":8,"name":"Hat"}},{"id":31117267,"name":"Skeptic","assetType":{"id":18,"name":"Face"}},{"id":27112068,"name":"Roblox 2.0 Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":27112056,"name":"Roblox 2.0 Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":27112052,"name":"Roblox 2.0 Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":27112039,"name":"Roblox 2.0 Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":27112025,"name":"Roblox 2.0 Torso","assetType":{"id":27,"name":"Torso"}},{"id":15913848,"name":"Father Time","assetType":{"id":8,"name":"Hat"}},{"id":10628538,"name":"Queen's Guard Hat","assetType":{"id":8,"name":"Hat"}}],"bodyColors":{"headColorId":1,"torsoColorId":1001,"rightArmColorId":1,"leftArmColorId":1001,"rightLegColorId":1003,"leftLegColorId":1003}}]]
		elseif args.outfitId == 123123 then
			isjson = true
			t = [[{"id":123123,"name":"ODer","assets":[{"id":66848497,"name":"Jeans","assetType":{"id":12,"name":"Pants"}},{"id":30177031,"name":"Black vest","assetType":{"id":11,"name":"Shirt"}},{"id":27112068,"name":"Roblox 2.0 Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":27112056,"name":"Roblox 2.0 Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":27112052,"name":"Roblox 2.0 Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":27112039,"name":"Roblox 2.0 Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":27112025,"name":"Roblox 2.0 Torso","assetType":{"id":27,"name":"Torso"}},{"id":20573078,"name":"Shaggy","assetType":{"id":41,"name":"Hair Accessory"}},{"id":11884330,"name":"Nerd Glasses","assetType":{"id":42,"name":"Face Accessory"}},{"id":10907541,"name":"Mr. Chuckles","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":1005,"torsoColorId":1005,"rightArmColorId":1005,"leftArmColorId":1005,"rightLegColorId":105,"leftLegColorId":1005}}]]
		elseif args.outfitId == 100000 then
			isjson = true
			t = [[{"id":100000,"name":"Bat For Lashes","assets":[{"id":107335704,"name":"Jeans","assetType":{"id":12,"name":"Pants"}},{"id":48474356,"name":"Girl Torso","assetType":{"id":27,"name":"Torso"}},{"id":36048793,"name":"[S] Black & White Striped Henley","assetType":{"id":11,"name":"Shirt"}},{"id":20573078,"name":"Shaggy","assetType":{"id":41,"name":"Hair Accessory"}}],"bodyColors":{"headColorId":1030,"torsoColorId":1030,"rightArmColorId":1030,"leftArmColorId":1030,"rightLegColorId":1030,"leftLegColorId":1030}}]]
		elseif args.outfitId == 10870203 then
			isjson = true
			t = [[{"id":10870203,"name":"BOK BOK","assets":[{"id":110704033,"name":"Badblox Hatchling - Hatched Egg of Duty","assetType":{"id":19,"name":"Gear"}},{"id":42070576,"name":"Epic Face","assetType":{"id":18,"name":"Face"}},{"id":39104464,"name":"Telamon's Chicken Suit pants","assetType":{"id":12,"name":"Pants"}},{"id":39104375,"name":"Telamon's Chicken Suit","assetType":{"id":11,"name":"Shirt"}},{"id":33070696,"name":"Transient Harmonica","assetType":{"id":43,"name":"Neck Accessory"}},{"id":32336306,"name":"Superhero Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":32336243,"name":"Superhero Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":32336182,"name":"Superhero Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":32336117,"name":"Superhero Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":32336059,"name":"Superhero Torso","assetType":{"id":27,"name":"Torso"}},{"id":24114402,"name":"Brighteye's Bloxy Cola Hat","assetType":{"id":8,"name":"Hat"}},{"id":24112667,"name":"Telamon's Chicken Suit","assetType":{"id":8,"name":"Hat"}}],"bodyColors":{"headColorId":1009,"torsoColorId":1001,"rightArmColorId":1001,"leftArmColorId":1001,"rightLegColorId":1001,"leftLegColorId":1001}}]]
		elseif args.outfitId == 11436109 then
			isjson = true
			t = [[{"id":11436109,"name":"Pirate","assets":[{"id":27847473,"name":"Pirate Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":27847445,"name":"Pirate Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":27847412,"name":"Pirate Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":27847382,"name":"Pirate Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":27847359,"name":"Pirate Torso","assetType":{"id":27,"name":"Torso"}},{"id":25535439,"name":"Green Macaw","assetType":{"id":44,"name":"Shoulder Accessory"}},{"id":19366445,"name":"Friendly Pirate","assetType":{"id":18,"name":"Face"}},{"id":18897230,"name":"Pirate Shirt","assetType":{"id":11,"name":"Shirt"}},{"id":16018533,"name":"pirate pants","assetType":{"id":12,"name":"Pants"}},{"id":10910681,"name":"Pirate Cutlass","assetType":{"id":19,"name":"Gear"}},{"id":1028859,"name":"Pirate Captain's Hat","assetType":{"id":8,"name":"Hat"}}],"bodyColors":{"headColorId":1030,"torsoColorId":1030,"rightArmColorId":1030,"leftArmColorId":1030,"rightLegColorId":1030,"leftLegColorId":1030}}]]
		elseif args.outfitId == 25420584 then
			isjson = true
			t = [[{"id":25420584,"name":"Sparkle Time Pumpkin","assets":[{"id":311584247,"name":"Orange Sparkle Time Pumpkin Pants","assetType":{"id":12,"name":"Pants"}},{"id":311583686,"name":"Orange Sparkle Time Pumpkin","assetType":{"id":11,"name":"Shirt"}},{"id":311450131,"name":"Sparkle Time Classic Pumpkin","assetType":{"id":8,"name":"Hat"}},{"id":134082579,"name":"Headless Head","assetType":{"id":17,"name":"Head"}},{"id":42070576,"name":"Epic Face","assetType":{"id":18,"name":"Face"}},{"id":32357663,"name":"Slinger Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":32357631,"name":"Slinger Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":32357619,"name":"Gunslinger Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":32357584,"name":"Slinger Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":32357558,"name":"Slinger Torso","assetType":{"id":27,"name":"Torso"}}],"bodyColors":{"headColorId":1005,"torsoColorId":1005,"rightArmColorId":1005,"leftArmColorId":1005,"rightLegColorId":1005,"leftLegColorId":1005}}]]
		elseif args.outfitId == 24713377 then
			isjson = true
			t = [[{"id":24713377,"name":"huhcat science","assets":[{"id":170892848,"name":"Grey Cat Tail","assetType":{"id":47,"name":"Waist Accessory"}},{"id":154727201,"name":"Exploding Lab Table","assetType":{"id":19,"name":"Gear"}},{"id":150182466,"name":"Huh?","assetType":{"id":18,"name":"Face"}},{"id":86500078,"name":"Man Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":86500064,"name":"Man Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":86500054,"name":"Man Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":86500036,"name":"Man Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":86500008,"name":"Man Torso","assetType":{"id":27,"name":"Torso"}},{"id":85243256,"name":"Cat Outfit Pants Black","assetType":{"id":12,"name":"Pants"}},{"id":85243134,"name":"Cat Outfit Shirt- Black","assetType":{"id":11,"name":"Shirt"}},{"id":1374269,"name":"Kitty Ears","assetType":{"id":8,"name":"Hat"}}],"bodyColors":{"headColorId":1,"torsoColorId":1001,"rightArmColorId":1001,"leftArmColorId":1001,"rightLegColorId":1001,"leftLegColorId":1001}}]]
		elseif args.outfitId == 31110119 then
			isjson = true
			t = [[{"id":31110119,"name":"Watermelon Shark Boy","assets":[{"id":376532000,"name":"ROBLOX Boy Torso","assetType":{"id":27,"name":"Torso"}},{"id":376531703,"name":"ROBLOX Boy Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":376531300,"name":"ROBLOX Boy Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":376531012,"name":"ROBLOX Boy Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":376530220,"name":"ROBLOX Boy Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":264989462,"name":"Watermelon Shark","assetType":{"id":8,"name":"Hat"}},{"id":264866809,"name":"Watermelon Shark - Bottom","assetType":{"id":12,"name":"Pants"}},{"id":264866774,"name":"Watermelon Shark","assetType":{"id":11,"name":"Shirt"}},{"id":134082579,"name":"Headless Head","assetType":{"id":17,"name":"Head"}},{"id":42070576,"name":"Epic Face","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":1021,"torsoColorId":1021,"rightArmColorId":1021,"leftArmColorId":1021,"rightLegColorId":1021,"leftLegColorId":1021}}]]
		elseif args.outfitId == 59241811 then
			isjson = true
			t = [[{"id":59241811,"name":"ghost","assets":[{"id":619544080,"name":"Levitation Walk","assetType":{"id":55,"name":"Walk Animation"}},{"id":619543721,"name":"Levitation Swim","assetType":{"id":54,"name":"Swim Animation"}},{"id":619543231,"name":"Levitation Run","assetType":{"id":53,"name":"Run Animation"}},{"id":619542888,"name":"Levitation Jump","assetType":{"id":52,"name":"Jump Animation"}},{"id":619542203,"name":"Levitation Idle","assetType":{"id":51,"name":"Idle Animation"}},{"id":619541867,"name":"Levitation Fall","assetType":{"id":50,"name":"Fall Animation"}},{"id":619541458,"name":"Levitation Climb","assetType":{"id":48,"name":"Climb Animation"}},{"id":139610147,"name":"Korblox Deathspeaker Hood","assetType":{"id":8,"name":"Hat"}},{"id":139607770,"name":"Korblox Deathspeaker Torso","assetType":{"id":27,"name":"Torso"}},{"id":139607718,"name":"Korblox Deathspeaker Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":139607673,"name":"Korblox Deathspeaker Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":139607625,"name":"Korblox Deathspeaker Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":139607570,"name":"Korblox Deathspeaker Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":134082579,"name":"Headless Head","assetType":{"id":17,"name":"Head"}},{"id":42070576,"name":"Epic Face","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":1021,"torsoColorId":1021,"rightArmColorId":1021,"leftArmColorId":1021,"rightLegColorId":1021,"leftLegColorId":1021}}]]
		elseif args.outfitId == 59241891 then
			isjson = true
			t = [[{"id":59241891,"name":"hero","assets":[{"id":619529601,"name":"Superhero Walk","assetType":{"id":55,"name":"Walk Animation"}},{"id":619529095,"name":"Superhero Swim","assetType":{"id":54,"name":"Swim Animation"}},{"id":619528716,"name":"Superhero Run","assetType":{"id":53,"name":"Run Animation"}},{"id":619528412,"name":"Superhero Jump","assetType":{"id":52,"name":"Jump Animation"}},{"id":619528125,"name":"Superhero Idle","assetType":{"id":51,"name":"Idle Animation"}},{"id":619527817,"name":"Superhero Fall","assetType":{"id":50,"name":"Fall Animation"}},{"id":619527470,"name":"Superhero Climb","assetType":{"id":48,"name":"Climb Animation"}},{"id":134111523,"name":"Dragon Hunter Helmet","assetType":{"id":8,"name":"Hat"}},{"id":134111490,"name":"Dragon Hunter Torso","assetType":{"id":27,"name":"Torso"}},{"id":134111465,"name":"Dragon Hunter Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":134111431,"name":"Dragon Hunter Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":134111188,"name":"Dragon Hunter Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":134111153,"name":"Dragon Hunter Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":31117267,"name":"Skeptic","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":1030,"torsoColorId":1021,"rightArmColorId":1021,"leftArmColorId":1021,"rightLegColorId":1021,"leftLegColorId":1021}}]]
		elseif args.outfitid == 59242106 then
			isjson = true
			t = [[{"id":59242106,"name":"sway","assets":[{"id":619512767,"name":"Stylish Walk","assetType":{"id":55,"name":"Walk Animation"}},{"id":619512450,"name":"Stylish Swim","assetType":{"id":54,"name":"Swim Animation"}},{"id":619512153,"name":"Stylish Run","assetType":{"id":53,"name":"Run Animation"}},{"id":619511974,"name":"Stylish Jump","assetType":{"id":52,"name":"Jump Animation"}},{"id":619511648,"name":"Stylish Idle","assetType":{"id":51,"name":"Idle Animation"}},{"id":619511417,"name":"Stylish Fall","assetType":{"id":50,"name":"Fall Animation"}},{"id":619509955,"name":"Stylish Climb","assetType":{"id":48,"name":"Climb Animation"}},{"id":323478754,"name":"Andromeda Explorer Torso","assetType":{"id":27,"name":"Torso"}},{"id":323478559,"name":"Andromeda Explorer Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":323478407,"name":"Andromeda Explorer Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":323478259,"name":"Andromeda Explorer Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":323478156,"name":"Andromeda Explorer Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":323477117,"name":"Andromeda Explorer Helmet","assetType":{"id":8,"name":"Hat"}},{"id":86487766,"name":"Woman Face","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":1030,"torsoColorId":1021,"rightArmColorId":1021,"leftArmColorId":1021,"rightLegColorId":1021,"leftLegColorId":1021}}]]
		elseif args.outfitId == 59242281 then
			isjson = true
			t = [[{"id":59242281,"name":"zombie","assets":[{"id":619537468,"name":"Zombie Walk","assetType":{"id":55,"name":"Walk Animation"}},{"id":619537096,"name":"Zombie Swim","assetType":{"id":54,"name":"Swim Animation"}},{"id":619536621,"name":"Zombie Run","assetType":{"id":53,"name":"Run Animation"}},{"id":619536283,"name":"Zombie Jump","assetType":{"id":52,"name":"Jump Animation"}},{"id":619535834,"name":"Zombie Idle","assetType":{"id":51,"name":"Idle Animation"}},{"id":619535616,"name":"Zombie Fall","assetType":{"id":50,"name":"Fall Animation"}},{"id":619535091,"name":"Zombie Climb","assetType":{"id":48,"name":"Climb Animation"}},{"id":64438742,"name":"Zachary Elloit Dencourt, III Right Leg","assetType":{"id":31,"name":"Right Leg"}},{"id":64438718,"name":"Zachary Elloit Dencourt, III Left Leg","assetType":{"id":30,"name":"Left Leg"}},{"id":64438670,"name":"Zachary Elloit Dencourt, III Left Arm","assetType":{"id":29,"name":"Left Arm"}},{"id":64438626,"name":"Zachary Elloit Dencourt, III Right Arm","assetType":{"id":28,"name":"Right Arm"}},{"id":64438589,"name":"Zachary Elloit Dencourt, III","assetType":{"id":27,"name":"Torso"}},{"id":64438501,"name":"Zachary Elloit Dencourt, III","assetType":{"id":8,"name":"Hat"}},{"id":42070576,"name":"Epic Face","assetType":{"id":18,"name":"Face"}}],"bodyColors":{"headColorId":37,"torsoColorId":26,"rightArmColorId":107,"leftArmColorId":26,"rightLegColorId":26,"leftLegColorId":21}}]]
		end
	elseif name == '/v1/users/<userId>/inventory/<urlTypeName>?pageNumber=<desiredPageNumber>&itemsPerPage=<itemsPerPage>' then
		t.data = {}
		local all = {}
		
		if args.urlTypeName == 'Hat' then
			all = {
				1073690, -- jj5x5
				11297746, -- white ninja headband
				1563352, -- gbth
				489170175, -- bomb animal hoodie
				71484026, -- branch antlers
				151784320, -- doge
				9254254, -- duck
			}
		elseif args.urlTypeName == 'Shirt' then
			all = {
				506666331,
				616449360,
				506665000,
				566743904,
				607602042,
				617089236,
				615589949,
				477730847,
				601624316,
				543795946,
				542225458,
				542204446
			}
		elseif args.urlTypeName == 'Pants' then
			all = {
				559150559,
				567482873,
				480539222,
				584587127,
				588165582,
				506390425,
				617159402,
				583732678,
				495464303,
				493679861,
				540333924,
				597202046
			}
		elseif args.urlTypeName == 'HairAccessory' then
			all = {
				16630147, -- beautiful hair
				13745548, -- cinnamon
				17877340, -- beautiful brown
				14815761, -- black and red
				161246757, -- red swoosh
				221175027, -- beautiful red
				233615637, -- beautiful blond
				398673196, -- blond pony
				17424092, -- beautiful purple
				13476917, -- golden
				293316608, -- cotton candy
				29952810, -- american sweetheart
				121390915, -- xtreme rainbow
				145310635, -- blue swoosh
				156486009, -- orinthian lady
				376807895, -- spring flowers
				346675520,
				439984886,
				164482409,
				187845417,
				164482468,
				398673423,
				80921949,
				362030276
			}
		elseif args.urlTypeName == 'FaceAccessory' then
			all = {
				610134832,
				583136875,
				175134718,
				19380685,
				20642008,
				51245241,
				30331986,
				11884330,
				22070802,
				63995612,
				556821517,
				25741345,
				151314918,
				14129625,
				125369932,
				12520031,
				158066137,
				93050572,
				317590827,
				134823161,
				42847660,
				134822978,
				21069972,
				62679779,
				
			}
		elseif args.urlTypeName == 'NeckAccessory' then
			all = {
				610137473,
				174795947,
				483899424,
				255797985,
				99860652,
				31312480,
				330294398,
				99266546,
				134824163,
				293316227,
				112605928,
				153027806
			}
		elseif args.urlTypeName == 'ShoulderAccessory' then
			all = {
				610138769,
				121389389,
				20945145,
				215724848,
				532181076,
				67996309,
				419752586,
				106709021,
				255797621,
				391490834,
				439943248,
				150381051
			}
		elseif args.urlTypeName == 'FrontAccessory' then
			all = {
				340623941,
				402303331,
				18265174,
				243773509,
				306163801,
				501941216,
				608820513,
				42839214,
				108894695,
				306163926,
				33090534,
				108894823
			}
		elseif args.urlTypeName == 'BackAccessory' then
			all = {
				106690045,
				215719598,
				409739014,
				553869736,
				192557913,
				62673504,
				188702967,
				286519153,
				212947242,
				335080396,
				258183674,
				19399858
			}
		elseif args.urlTypeName == 'WaistAccessory' then
			all = {
				170892848,
				212358027,
				335079036,
				158066212,
				610878730,
				472507574,
				187846604,
				542166288,
				212962112,
				562478957,
				192483960,
				108894754
			}
		elseif args.urlTypeName == 'Gear' then
			all = {
				610133821,
				610133129,
				212641536,
				398675172,
				16688968,
				78730532,
				257810065,
				359178822,
				467935723,
				212296936,
				86494893,
				223785473
			}
		elseif args.urlTypeName == 'Face' then
			all = {
				616381207,
				616380929,
				20418682,
				128992838,
				209995252,
				119812659,
				8329679,
				130213380,
				209994875,
				20418658,
				20722130,
				380754227
			}
		elseif args.urlTypeName == 'Head' then
			all = {
				6340213,
				8330578,
				100302996,
				8330576,
				6340101,
				6340133,
				6340208,
				134082579,
				6340269,
				6340141
			}
		elseif args.urlTypeName == 'Torso' then
			all = {
				57230892,
				68802665,
				134111490,
				376547767,
				376532000,
				130108224,
				301824116,
				301826032,
				343616293,
				323478754,
				293302013,
				136792820
			}
		elseif args.urlTypeName == 'RightArm' then
			all = {
				57230923,
				68803728,
				134111188,
				376547341,
				376531012,
				130107879,
				301822975,
				301825492,
				343615010,
				323478259,
				293301104,
				136792698
			}
		elseif args.urlTypeName == 'LeftArm' then
			all = {
				57230954,
				68803787,
				134111153,
				376547633,
				376530220,
				130107808,
				301822804,
				301824684,
				343614830,
				323478156,
				293300963,
				136792342
			}
		elseif args.urlTypeName == 'RightLeg' then
			all = {
				57231029,
				68803997,
				134111465,
				376547092,
				376531703,
				130108169,
				301823806,
				301825891,
				343616092,
				323478559,
				293301935,
				136792747
			}
		elseif args.urlTypeName == 'LeftLeg' then
			all = {
				57230991,
				68803962,
				134111431,
				376546668,
				376531300,
				130107952,
				301823492,
				301825699,
				343615631,
				323478407,
				293301721,
				136792633
			}
		elseif args.urlTypeName == 'ClimbAnimation' then
			all = {
				619535091, -- zombie
				619509955, -- stylish
				619527470, -- superhero
				619541458 -- levitation
			}
		elseif args.urlTypeName == 'JumpAnimation' then
			all = {
				619536283,
				619511974,
				619528412,
				619542888
			}
		elseif args.urlTypeName == 'FallAnimation' then
			all = {
				619535616,
				619511417,
				619527817,
				619541867
			}
		elseif args.urlTypeName == 'IdleAnimation' then
			all = {
				619535834,
				619511648,
				619528125,
				619542203
			}
		elseif args.urlTypeName == 'WalkAnimation' then
			all = {
				619537468,
				619512767,
				619529601,
				619544080
			}
		elseif args.urlTypeName == 'RunAnimation' then
			all = {
				619536621,
				619512153,
				619528716,
				619543231
			}
		elseif args.urlTypeName == 'SwimAnimation' then
			all = {
				619537096,
				619512450,
				619529095,
				619543721
			}
		end

		-- pageify
		for i = args.itemsPerPage*(args.desiredPageNumber-1)+1, args.itemsPerPage*args.desiredPageNumber do
			if all[i] then
				table.insert(t.data, all[i])
			end
		end
	elseif name == '/v1/users/<userId>/outfits?page=<desiredPageNumber>&itemsPerPage=<itemsPerPage>' then
		t.data = {}
		local all = {
			{
				id = 59241811,
				name = 'ghost'
			},
			{
				id = 59241891,
				name = 'superhero'
			},
			{
				id = 59242106,
				name = 'sway'
			},
			{
				id = 59242281,
				name = 'zombie'
			},
			{
				id = 31110119,
				name = 'shark'
			},
			{
				id = 24713377,
				name = 'cat'
			},
			{
				id = 25420584,
				name = 'pumpkin'
			},
			{
				id = 11436109,
				name = 'pirate'
			},
			{
				id = 10870203,
				name = 'chicken'
			},
			{
				id = 100,
				name = 'outfit 100'
			},
			{
				id = 1337,
				name = 'outfit 1337',
			},
			{
				id = 123123,
				name = 'outfit 123123',
			},
			{
				id = 100000,
				name = 'outfit 100000',
			},
		}

		-- pageify
		for i = args.itemsPerPage*(args.desiredPageNumber-1)+1, args.itemsPerPage*args.desiredPageNumber do
			if all[i] then
				table.insert(t.data, all[i])
			end
		end
	elseif name == '/users/inventory/list-json?assetTypeId=<assetTypeId>&itemsPerPage=<itemsPerPage>&userId=<userId>&cursor=<cursor>' then
		local all
		
		if args.assetTypeId >= 48 and args.assetTypeId <= 56 then
			all = {
				IsValid = true,
				Data = {
					TotalItems = 1,
					Start = 1,
					End = 1,
					Page = 1,
					nextPageCursor = nil,
					previousPageCursor = nil,
					ItemsPerPage = 50,
					PageType = 'inventory',
					Items = {
						{
							AssetRestrictionIcon = {},
							Item = {
								AssetId = 0,
								Name = '',
								AssetType = args.assetTypeId
							},
							Creator = {Id=1, Name='ROBLOX', Type=1},
							Product = {},
							Thumbnail = {},
							UserItem = {}
						}
					}
				}
			}
			
			if args.assetTypeId == 48 then
				all.Data.Items[1].Item.AssetId = 618370598
				all.Data.Items[1].Item.Name = 'robot climb'
			elseif args.assetTypeId == 50 then
				all.Data.Items[1].Item.AssetId = 618371776
				all.Data.Items[1].Item.Name = 'robot fall'
			elseif args.assetTypeId == 51 then
				all.Data.Items[1].Item.AssetId = 618371523
				all.Data.Items[1].Item.Name = 'robot idle'
			elseif args.assetTypeId == 52 then
				all.Data.Items[1].Item.AssetId = 618371366
				all.Data.Items[1].Item.Name = 'robot jump'
			elseif args.assetTypeId == 53 then
				all.Data.Items[1].Item.AssetId = 618371155
				all.Data.Items[1].Item.Name = 'robot run'
			elseif args.assetTypeId == 54 then
				all.Data.Items[1].Item.AssetId = 618370796
				all.Data.Items[1].Item.Name = 'robot swim'
			elseif args.assetTypeId == 55 then
				all.Data.Items[1].Item.AssetId = 618370987
				all.Data.Items[1].Item.Name = 'robot walk'
			end
		else
			local sample = [[{
				"IsValid": true,
				"Data": {
					"TotalItems": null,
					"Start": 0,
					"End": 49,
					"Page": 1,
					"nextPageCursor": "3576364250_1_751812488a8ac801249080f3997607d3",
					"previousPageCursor": null,
					"ItemsPerPage": 50,
					"PageType": "inventory",
					"Items": [{
						"AssetRestrictionIcon": {
							"TooltipText": "Builders Club exclusive.",
							"CssTag": "bc",
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 57684660,
							"Name": "Ninjafaic",
							"AbsoluteUrl": "https://www.roblox.com/Ninjafaic-item?id=57684660",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 65,
							"PriceInTickets": null,
							"IsForSale": true,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/6b411b6d63272c4b0820663aa3d796b4",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 607700713,
							"Name": "Roblox Logo Visor",
							"AbsoluteUrl": "https://www.roblox.com/Roblox-Logo-Visor-item?id=607700713",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": true,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Free"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t1.rbxcdn.com/7f4ec583853cf334d59035597830a6a4",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 607702162,
							"Name": "Roblox Baseball Cap",
							"AbsoluteUrl": "https://www.roblox.com/Roblox-Baseball-Cap-item?id=607702162",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": true,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Free"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/696b097afd013cdaa8aef52ba13369c7",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 116777823,
							"Name": "Roblox Visor",
							"AbsoluteUrl": "https://www.roblox.com/Roblox-Visor-item?id=116777823",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": true,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Free"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t4.rbxcdn.com/f56bfd1153d563ff3d1b293c21b86f9c",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 562258908,
							"Name": "Snowy Red Ice-Nine Drone Helm",
							"AbsoluteUrl": "https://www.roblox.com/Snowy-Red-Ice-Nine-Drone-Helm-item?id=562258908",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t6.rbxcdn.com/c13ed77fe50ebbe7cd472c1233225553",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 554639910,
							"Name": "Violet Hood of the Ages",
							"AbsoluteUrl": "https://www.roblox.com/Violet-Hood-of-the-Ages-item?id=554639910",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/fa51b1f400d1159eb332c2bd4c6052ed",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 536288533,
							"Name": "Temple Challenger Hat",
							"AbsoluteUrl": "https://www.roblox.com/Temple-Challenger-Hat-item?id=536288533",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/cc689524b32aa0fc7b14c409ee4a1109",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 1158038,
							"Name": "Classic ROBLOX Pumpkin Head",
							"AbsoluteUrl": "https://www.roblox.com/Classic-ROBLOX-Pumpkin-Head-item?id=1158038",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/dd22211425e4aec9cfb86b41d0dd7f3f",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 497670934,
							"Name": "Scholastic Spirit Animals Virtual Leopard",
							"AbsoluteUrl": "https://www.roblox.com/Scholastic-Spirit-Animals-Virtual-Leopard-item?id=497670934",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t6.rbxcdn.com/f81048fb790469d592f8ba2a7e07c7bd",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 17449488,
							"Name": "Hothead",
							"AbsoluteUrl": "https://www.roblox.com/Hothead-item?id=17449488",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t3.rbxcdn.com/53ed3d6ee2aecfb6a341cae54f51434e",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 456225595,
							"Name": "Painter Skater",
							"AbsoluteUrl": "https://www.roblox.com/Painter-Skater-item?id=456225595",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/ca8586b43164d9a420054a3acb3922f0",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 493482011,
							"Name": "DIY Rainbow Shaggy",
							"AbsoluteUrl": "https://www.roblox.com/DIY-Rainbow-Shaggy-item?id=493482011",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/7d4815d9b5c17b2775e1c988a8804285",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 323477117,
							"Name": "Andromeda Explorer Helmet",
							"AbsoluteUrl": "https://www.roblox.com/Andromeda-Explorer-Helmet-item?id=323477117",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/9b84191fb687466350faf905c206e553",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": "Serialized limited release, resellable.",
							"CssTag": "limited-unique",
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 489176525,
							"Name": "Rainbow Omega Top Hat",
							"AbsoluteUrl": "https://www.roblox.com/Rainbow-Omega-Top-Hat-item?id=489176525",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 828,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": true,
							"SerialNumber": 3549,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/81793785395aefa19498b7584a00ddfa",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": "Serialized limited release, resellable.",
							"CssTag": "limited-unique",
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 489170175,
							"Name": "Neon Bombastic Animal Hoodie",
							"AbsoluteUrl": "https://www.roblox.com/Neon-Bombastic-Animal-Hoodie-item?id=489170175",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 981,
							"PriceInTickets": null,
							"IsForSale": true,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": true,
							"SerialNumber": 10687,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t6.rbxcdn.com/9815f732d6b2c065bddee3b1653d6457",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": "Serialized limited release, resellable.",
							"CssTag": "limited-unique",
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 489170175,
							"Name": "Neon Bombastic Animal Hoodie",
							"AbsoluteUrl": "https://www.roblox.com/Neon-Bombastic-Animal-Hoodie-item?id=489170175",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 981,
							"PriceInTickets": null,
							"IsForSale": true,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": true,
							"SerialNumber": 9981,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t6.rbxcdn.com/9815f732d6b2c065bddee3b1653d6457",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 427949022,
							"Name": "Voltron Head",
							"AbsoluteUrl": "https://www.roblox.com/Voltron-Head-item?id=427949022",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/fb75eba24e63e8111bf60b6068a3fdcc",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 439315202,
							"Name": "Flintstones Car",
							"AbsoluteUrl": "https://www.roblox.com/Flintstones-Car-item?id=439315202",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/87381eb50f39df12fec756862135b044",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": true,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 456226220,
							"Name": "Galaxy Adventurer",
							"AbsoluteUrl": "https://www.roblox.com/Galaxy-Adventurer-item?id=456226220",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 1000,
							"PriceInTickets": null,
							"IsForSale": true,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/129a2601fe70e0e8f2b6c7d7a0db8233",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 334661971,
							"Name": "ROBLOX Visor",
							"AbsoluteUrl": "https://www.roblox.com/ROBLOX-Visor-item?id=334661971",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t6.rbxcdn.com/0ddedbe1c36afface54573c6707bc24d",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 425118283,
							"Name": "2016 Graduation Cap",
							"AbsoluteUrl": "https://www.roblox.com/2016-Graduation-Cap-item?id=425118283",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 16,
							"PriceInTickets": null,
							"IsForSale": true,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/9a3647858f3a2107c76b66d64105e6e0",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 419231331,
							"Name": "Hank Hat",
							"AbsoluteUrl": "https://www.roblox.com/Hank-Hat-item?id=419231331",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t3.rbxcdn.com/930f9b1232979296a6e5244003786004",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 1098274,
							"Name": "Game Input Device",
							"AbsoluteUrl": "https://www.roblox.com/Game-Input-Device-item?id=1098274",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/a38cce88e9ea97c276724162c58fe7b8",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 1048037,
							"Name": "Bighead",
							"AbsoluteUrl": "https://www.roblox.com/Bighead-item?id=1048037",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/674b8065cdbb5301bdefec9d75e4a6ba",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 51353039,
							"Name": "Bloxxer Cap",
							"AbsoluteUrl": "https://www.roblox.com/Bloxxer-Cap-item?id=51353039",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/12e00297469a732d31017545b1e886f3",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 10911958,
							"Name": "WWII Infantry Helmet",
							"AbsoluteUrl": "https://www.roblox.com/WWII-Infantry-Helmet-item?id=10911958",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 15,
							"PriceInTickets": null,
							"IsForSale": true,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/845e5ed71c5759f2d16ed7cf51740f62",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 417457461,
							"Name": "ROBLOX \u0027R\u0027 Baseball Cap",
							"AbsoluteUrl": "https://www.roblox.com/ROBLOX-R-Baseball-Cap-item?id=417457461",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": true,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Free"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/a4c124822ca3d21e95340ce93c151073",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 419205215,
							"Name": "Dory Headphones",
							"AbsoluteUrl": "https://www.roblox.com/Dory-Headphones-item?id=419205215",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/e8bb6ac93e405fe0d1873b92cfe4c6ad",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 413657233,
							"Name": "Angry Birds\u0027 Headphones",
							"AbsoluteUrl": "https://www.roblox.com/Angry-Birds-Headphones-item?id=413657233",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/8bfad21919d721b7735e3e77142970a6",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 413657049,
							"Name": "Angry Birds: Red\u0027s Mask",
							"AbsoluteUrl": "https://www.roblox.com/Angry-Birds-Reds-Mask-item?id=413657049",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/db476aed7d07c03f7b0efcc437b5ed8c",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 398122137,
							"Name": "Black Panther?s Mask",
							"AbsoluteUrl": "https://www.roblox.com/Black-Panther-s-Mask-item?id=398122137",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/b5a1afb6d534577277b92a9111614be9",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 398122199,
							"Name": "Iron Man Helmet",
							"AbsoluteUrl": "https://www.roblox.com/Iron-Man-Helmet-item?id=398122199",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/38ec69f9fedb10236ddc8fa13c7c0b7e",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 398674411,
							"Name": "Black Iron Antlers",
							"AbsoluteUrl": "https://www.roblox.com/Black-Iron-Antlers-item?id=398674411",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t4.rbxcdn.com/6fdb6da6f9b923bdcd7578d42cdf4eb1",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 397906657,
							"Name": "VR Headset",
							"AbsoluteUrl": "https://www.roblox.com/VR-Headset-item?id=397906657",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/40a340d2d60d0997c964df4792f7cc5c",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 383280964,
							"Name": "Opened Stylist Gift",
							"AbsoluteUrl": "https://www.roblox.com/Opened-Stylist-Gift-item?id=383280964",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t1.rbxcdn.com/1df063eb1b2f31ca9286177e61b72ee1",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 17902820,
							"Name": "Frost Clan Hillfighter",
							"AbsoluteUrl": "https://www.roblox.com/Frost-Clan-Hillfighter-item?id=17902820",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/c7f0f3f81b2c7ebc1ebe9d13df4230d2",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 394182865,
							"Name": "ROBLOX 10th Anniversary Party Hat",
							"AbsoluteUrl": "https://www.roblox.com/ROBLOX-10th-Anniversary-Party-Hat-item?id=394182865",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t4.rbxcdn.com/f870169c57ec6d5b8943a68acea0e523",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 394182979,
							"Name": "ROBLOX 10th Anniversary Top Hat",
							"AbsoluteUrl": "https://www.roblox.com/ROBLOX-10th-Anniversary-Top-Hat-item?id=394182979",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/d43264e8e231a920bbf7000d26f0a99e",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 391934091,
							"Name": "DIY Deadly Dark Dominus",
							"AbsoluteUrl": "https://www.roblox.com/DIY-Deadly-Dark-Dominus-item?id=391934091",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t6.rbxcdn.com/91507c4b50068aefcfdf5a4a85559fb1",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 391854055,
							"Name": "Fool Baseball Cap 2016",
							"AbsoluteUrl": "https://www.roblox.com/Fool-Baseball-Cap-2016-item?id=391854055",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t4.rbxcdn.com/cf71e49227243e7eaa3d1dcd3e673fca",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": "Discontinued item, resellable.",
							"CssTag": "limited",
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 44113968,
							"Name": "Kuddle E. Koala",
							"AbsoluteUrl": "https://www.roblox.com/Kuddle-E-Koala-item?id=44113968",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": 190,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": true,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": ""
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t4.rbxcdn.com/07b4fb70f829602f1f53cc82b8e32d70",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 23220518,
							"Name": "Lua Cap",
							"AbsoluteUrl": "https://www.roblox.com/Lua-Cap-item?id=23220518",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/a433a87acb7c341cb60bf36193709cec",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380566976,
							"Name": "Tabby Egg",
							"AbsoluteUrl": "https://www.roblox.com/Tabby-Egg-item?id=380566976",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t2.rbxcdn.com/22c9e2d55c34817430bc7b7084510eaf",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380566339,
							"Name": "Eggmin",
							"AbsoluteUrl": "https://www.roblox.com/Eggmin-item?id=380566339",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/5c7549d589e9720e9dd7a978c8ea878d",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380571402,
							"Name": "Gooey Egg",
							"AbsoluteUrl": "https://www.roblox.com/Gooey-Egg-item?id=380571402",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t0.rbxcdn.com/aa6c1c5f54eb9ad1b93bdf0b6994a3df",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380570229,
							"Name": "Scribbled Egg",
							"AbsoluteUrl": "https://www.roblox.com/Scribbled-Egg-item?id=380570229",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/6fd3ee6616d10fb4d4507fb05c59fa68",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380569757,
							"Name": "Normal Egg",
							"AbsoluteUrl": "https://www.roblox.com/Normal-Egg-item?id=380569757",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t7.rbxcdn.com/90ca23e57d5a698b8c5fcd36c8c70c24",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380567134,
							"Name": "Dicey Egg of Chance",
							"AbsoluteUrl": "https://www.roblox.com/Dicey-Egg-of-Chance-item?id=380567134",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t3.rbxcdn.com/9086e5106d73c93e8c14d8144820fd92",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380566768,
							"Name": "Basket of Eggception",
							"AbsoluteUrl": "https://www.roblox.com/Basket-of-Eggception-item?id=380566768",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t4.rbxcdn.com/442f6797ad6b955f068ed1308d84f8c6",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}, {
						"AssetRestrictionIcon": {
							"TooltipText": null,
							"CssTag": null,
							"LoadAssetRestrictionIconCss": true,
							"HasTooltip": false
						},
						"Item": {
							"AssetId": 380570824,
							"Name": "Cherry Nesting Egg",
							"AbsoluteUrl": "https://www.roblox.com/Cherry-Nesting-Egg-item?id=380570824",
							"AssetType": 0,
							"AssetTypeFriendlyLabel": null,
							"Description": null,
							"Genres": null,
							"GearAttributes": null,
							"AssetCategory": 0,
							"CurrentVersionId": 0,
							"IsApproved": false,
							"LastUpdated": "\/Date(-62135575200000)\/",
							"LastUpdatedBy": null,
							"AudioUrl": null
						},
						"Creator": {
							"Id": 1,
							"Name": "ROBLOX",
							"Type": 1,
							"CreatorProfileLink": "https://www.roblox.com/users/1/profile/"
						},
						"Product": {
							"Id": 0,
							"PriceInRobux": null,
							"PriceInTickets": null,
							"IsForSale": false,
							"IsPublicDomain": false,
							"IsResellable": false,
							"IsLimited": false,
							"IsLimitedUnique": false,
							"SerialNumber": null,
							"IsRental": false,
							"RentalDurationInHours": 0,
							"BcRequirement": 0,
							"TotalPrivateSales": 0,
							"SellerId": 0,
							"SellerName": null,
							"LowestPrivateSaleUserAssetId": null,
							"IsXboxExclusiveItem": false,
							"OffsaleDeadline": null,
							"NoPriceText": "Offsale"
						},
						"PrivateServer": null,
						"Thumbnail": {
							"Final": true,
							"Url": "https://t5.rbxcdn.com/7b28d212e89b0592c6d7c95ae40dfa31",
							"RetryUrl": "",
							"IsApproved": false
						},
						"UserItem": {
							"UserAsset": null,
							"IsItemOwned": false,
							"ItemOwnedCount": 0,
							"IsRentalExpired": false,
							"IsItemCurrentlyRented": false,
							"CanUserBuyItem": false,
							"RentalExpireTime": null,
							"CanUserRentItem": false
						}
					}]
				}
			}]]
			-- BREAKBREAKBREAK
			do return [[{"IsValid":true,"Data":{"TotalItems":null,"Start":0,"End":24,"Page":1,"nextPageCursor":"2133276014_1_4a5d964f9c6fcc24c6c5c6c379da04d1","previousPageCursor":null,"ItemsPerPage":25,"PageType":"inventory","Items":[{"AssetRestrictionIcon":null,"Item":{"AssetId":325758823,"Name":"Bigfoot Boarder Right Arm","AbsoluteUrl":"https://www.roblox.com/Bigfoot-Boarder-Right-Arm-item?id=325758823","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t2.rbxcdn.com/2f6a627c5db57c95016fe009e05e225e","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":478705536,"Name":"All-Seeing Golem Right Arm","AbsoluteUrl":"https://www.roblox.com/All-Seeing-Golem-Right-Arm-item?id=478705536","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t3.rbxcdn.com/35e9877a3466f03479a752efc7c8dbfb","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":121946611,"Name":"Bombo Right Arm","AbsoluteUrl":"https://www.roblox.com/Bombo-Right-Arm-item?id=121946611","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t4.rbxcdn.com/526a893f14085dbe3bb4c21bb7b6e0a4","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":420162092,"Name":"Crimson Claw The Vengeful Right Arm","AbsoluteUrl":"https://www.roblox.com/Crimson-Claw-The-Vengeful-Right-Arm-item?id=420162092","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t3.rbxcdn.com/91363b8a8a67202208c44709a5b407c8","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":134111188,"Name":"Dragon Hunter Right Arm","AbsoluteUrl":"https://www.roblox.com/Dragon-Hunter-Right-Arm-item?id=134111188","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t3.rbxcdn.com/76a7ededf4a2d7e839909ef467277857","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":277961619,"Name":"Lt. Maverick Scout Right Arm","AbsoluteUrl":"https://www.roblox.com/Lt-Maverick-Scout-Right-Arm-item?id=277961619","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t6.rbxcdn.com/463e6b40b2d48314af03a3a38f9e383e","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":376531012,"Name":"ROBLOX Boy Right Arm","AbsoluteUrl":"https://www.roblox.com/ROBLOX-Boy-Right-Arm-item?id=376531012","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t4.rbxcdn.com/99dc62a23e3b355a4626ec5aecf84e8c","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":376547341,"Name":"ROBLOX Girl Right Arm","AbsoluteUrl":"https://www.roblox.com/ROBLOX-Girl-Right-Arm-item?id=376547341","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t6.rbxcdn.com/fa886f361dbd518213beeeb6706b33b6","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":{"TooltipText":null,"CssTag":null,"LoadAssetRestrictionIconCss":true,"HasTooltip":false},"Item":{"AssetId":293282026,"Name":"Adventurous Archer of the Forbidden Forest Right A","AbsoluteUrl":"https://www.roblox.com/Adventurous-Archer-of-the-Forbidden-Forest-Right-A-item?id=293282026","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":{"Id":0,"PriceInRobux":null,"PriceInTickets":null,"IsForSale":false,"IsPublicDomain":false,"IsResellable":false,"IsLimited":false,"IsLimitedUnique":false,"SerialNumber":null,"IsRental":false,"RentalDurationInHours":0,"BcRequirement":0,"TotalPrivateSales":0,"SellerId":0,"SellerName":null,"LowestPrivateSaleUserAssetId":null,"IsXboxExclusiveItem":false,"OffsaleDeadline":null,"NoPriceText":"Offsale"},"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t1.rbxcdn.com/254aa86e51e71387d30038f329773477","RetryUrl":"","IsApproved":false},"UserItem":{"UserAsset":null,"IsItemOwned":false,"ItemOwnedCount":0,"IsRentalExpired":false,"IsItemCurrentlyRented":false,"CanUserBuyItem":false,"RentalExpireTime":null,"CanUserRentItem":false}},{"AssetRestrictionIcon":null,"Item":{"AssetId":293284083,"Name":"Lion Knight Right Arm","AbsoluteUrl":"https://www.roblox.com/Lion-Knight-Right-Arm-item?id=293284083","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t7.rbxcdn.com/17041c86b692f932bbfeca5e913cb194","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":346688977,"Name":"Redcliff Rogue Right Arm","AbsoluteUrl":"https://www.roblox.com/Redcliff-Rogue-Right-Arm-item?id=346688977","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t2.rbxcdn.com/0071c697d9f4be44e64223b6a62154e8","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":343615010,"Name":"Rouge Space Assassin Right Arm","AbsoluteUrl":"https://www.roblox.com/Rouge-Space-Assassin-Right-Arm-item?id=343615010","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t4.rbxcdn.com/bf59dae87d9d6763800bae4178c04d3e","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":323478259,"Name":"Andromeda Explorer Right Arm","AbsoluteUrl":"https://www.roblox.com/Andromeda-Explorer-Right-Arm-item?id=323478259","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t3.rbxcdn.com/93f0b9efe519aadd37c8ae55c0d1bd2a","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":315617411,"Name":"Creature From the Blox Lagoon Right Arm","AbsoluteUrl":"https://www.roblox.com/Creature-From-the-Blox-Lagoon-Right-Arm-item?id=315617411","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t2.rbxcdn.com/b0594bb5a84ac3824fac9b7e11c0140c","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":{"TooltipText":null,"CssTag":null,"LoadAssetRestrictionIconCss":true,"HasTooltip":false},"Item":{"AssetId":319644079,"Name":"Disenchanted Korblox Squire Right Arm","AbsoluteUrl":"https://www.roblox.com/Disenchanted-Korblox-Squire-Right-Arm-item?id=319644079","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":{"Id":0,"PriceInRobux":null,"PriceInTickets":null,"IsForSale":false,"IsPublicDomain":false,"IsResellable":false,"IsLimited":false,"IsLimitedUnique":false,"SerialNumber":null,"IsRental":false,"RentalDurationInHours":0,"BcRequirement":0,"TotalPrivateSales":0,"SellerId":0,"SellerName":null,"LowestPrivateSaleUserAssetId":null,"IsXboxExclusiveItem":false,"OffsaleDeadline":null,"NoPriceText":"Offsale"},"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t2.rbxcdn.com/f946f9a9ed6b66052ce5446fce2233e5","RetryUrl":"","IsApproved":false},"UserItem":{"UserAsset":null,"IsItemOwned":false,"ItemOwnedCount":0,"IsRentalExpired":false,"IsItemCurrentlyRented":false,"CanUserBuyItem":false,"RentalExpireTime":null,"CanUserRentItem":false}},{"AssetRestrictionIcon":null,"Item":{"AssetId":117543412,"Name":"Rubyhorde the Rapacious Right Arm","AbsoluteUrl":"https://www.roblox.com/Rubyhorde-the-Rapacious-Right-Arm-item?id=117543412","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t1.rbxcdn.com/529b20d882f6afee2a02fbac9e5ebfec","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":{"TooltipText":null,"CssTag":null,"LoadAssetRestrictionIconCss":true,"HasTooltip":false},"Item":{"AssetId":241558158,"Name":"Golden Suit of Bling Squared Right Arm","AbsoluteUrl":"https://www.roblox.com/Golden-Suit-of-Bling-Squared-Right-Arm-item?id=241558158","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":{"Id":0,"PriceInRobux":null,"PriceInTickets":null,"IsForSale":false,"IsPublicDomain":false,"IsResellable":false,"IsLimited":false,"IsLimitedUnique":false,"SerialNumber":null,"IsRental":false,"RentalDurationInHours":0,"BcRequirement":0,"TotalPrivateSales":0,"SellerId":0,"SellerName":null,"LowestPrivateSaleUserAssetId":null,"IsXboxExclusiveItem":false,"OffsaleDeadline":null,"NoPriceText":"Offsale"},"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t4.rbxcdn.com/f19f464216df88a8754adf6a230babc2","RetryUrl":"","IsApproved":false},"UserItem":{"UserAsset":null,"IsItemOwned":false,"ItemOwnedCount":0,"IsRentalExpired":false,"IsItemCurrentlyRented":false,"CanUserBuyItem":false,"RentalExpireTime":null,"CanUserRentItem":false}},{"AssetRestrictionIcon":null,"Item":{"AssetId":111514642,"Name":"Orinthian Soldier Right Arm","AbsoluteUrl":"https://www.roblox.com/Orinthian-Soldier-Right-Arm-item?id=111514642","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t1.rbxcdn.com/3b2fbacb78dbb7355232c3ffaacd90c8","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":223825145,"Name":"Korblox Lord of Death Right Arm","AbsoluteUrl":"https://www.roblox.com/Korblox-Lord-of-Death-Right-Arm-item?id=223825145","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t1.rbxcdn.com/ef5dc80e9587cb6761ce45d409385bd8","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":196239551,"Name":"Korblox Hunter Right Arm","AbsoluteUrl":"https://www.roblox.com/Korblox-Hunter-Right-Arm-item?id=196239551","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t6.rbxcdn.com/4158b9292430d0cfb2f82c4d8c60d5f0","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":193700282,"Name":"Circuit Breaker Right Arm","AbsoluteUrl":"https://www.roblox.com/Circuit-Breaker-Right-Arm-item?id=193700282","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t6.rbxcdn.com/aac5d095fc235425acda9e6f10ee5f95","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":188835327,"Name":"Captain Skeledeath Right Arm","AbsoluteUrl":"https://www.roblox.com/Captain-Skeledeath-Right-Arm-item?id=188835327","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t0.rbxcdn.com/0fbcec668200182a2d984d503b915b64","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":151796782,"Name":"Neon Party Guy - Right Arm","AbsoluteUrl":"https://www.roblox.com/Neon-Party-Guy-Right-Arm-item?id=151796782","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t6.rbxcdn.com/c863705ff5a669331775279023dbae1b","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":187996167,"Name":"Snow Queen Right Arm","AbsoluteUrl":"https://www.roblox.com/Snow-Queen-Right-Arm-item?id=187996167","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t4.rbxcdn.com/802a2eec11f66ddcc62a5b9001a25751","RetryUrl":"","IsApproved":false},"UserItem":null},{"AssetRestrictionIcon":null,"Item":{"AssetId":91657884,"Name":"Red Futurion Right Arm","AbsoluteUrl":"https://www.roblox.com/Red-Futurion-Right-Arm-item?id=91657884","AssetType":0,"AssetTypeFriendlyLabel":null,"Description":null,"Genres":null,"GearAttributes":null,"AssetCategory":0,"CurrentVersionId":0,"IsApproved":false,"LastUpdated":"\/Date(-62135575200000)\/","LastUpdatedBy":null,"AudioUrl":null},"Creator":{"Id":1,"Name":"ROBLOX","Type":1,"CreatorProfileLink":"https://www.roblox.com/users/1/profile/"},"Product":null,"PrivateServer":null,"Thumbnail":{"Final":true,"Url":"https://t7.rbxcdn.com/d9e07b237382e64729cfd79267412772","RetryUrl":"","IsApproved":false},"UserItem":null}]}}]]
				
			end
			all = httpService:JSONDecode(sample)
		end
		
		t.IsValid = true
		t.Data = {
			TotalItems = 0,
			Start = 0,
			End = 0,
			Page = 0,
			nextPageCursor = '',
			previousPageCursor = '',
			ItemsPerPage = 0,
			PageType = 'Inventory',
			Items = {}
		}
		
		local cursorData
		if not cursorToPageNumber[args.assetTypeId] then
			cursorToPageNumber[args.assetTypeId] = {
				totalItems = #all.Data.Items
			}
		end
		if not cursorToPageNumber[args.assetTypeId][args.itemsPerPage] then
			cursorToPageNumber[args.assetTypeId][args.itemsPerPage] = {
				approvedCursors = {['']=true}
			}
		end
		if cursorToPageNumber[args.assetTypeId][args.itemsPerPage][args.cursor] then
			cursorData = cursorToPageNumber[args.assetTypeId][args.itemsPerPage][args.cursor]
		elseif cursorToPageNumber[args.assetTypeId][args.itemsPerPage].approvedCursors[args.cursor] then
			local from = cursorToPageNumber[args.assetTypeId][args.itemsPerPage][cursorToPageNumber[args.assetTypeId][args.itemsPerPage].approvedCursors[args.cursor]]
			
			cursorData = {
				nextCursor = math.random()..'x'..math.random()..'x'..math.random(),
				thisCursor = args.cursor,
				fromCursor = from and from.thisCursor or nil,
				itemsPerPage = args.itemsPerPage,
				pageNumber = from and from.pageNumber+1 or 1,
				start = from and from.fin+1 or 1,
				fin = math.min((from and from.fin or 0) + args.itemsPerPage-1, cursorToPageNumber[args.assetTypeId].totalItems)
			}
			
			if cursorData.fin ~= cursorToPageNumber[args.assetTypeId].totalItems then
				cursorToPageNumber[args.assetTypeId][args.itemsPerPage].approvedCursors[cursorData.nextCursor] = args.cursor
			end
		else
			error('BAD CURSOR '..tostring(args.cursor))
		end
		
		t.Data.TotalItems = cursorToPageNumber[args.assetTypeId].totalItems
		t.Data.Start = cursorData.start
		t.Data.End = cursorData.fin
		t.Data.Page = cursorData.pageNumer
		t.Data.nextPageCursor = cursorData.nextCursor
		t.Data.previousPageCursor = cursorData.fromCursor
		t.Data.ItemsPerPage = args.itemsPerPage
		
		-- pageify
		for i = t.Data.Start, t.Data.End do
			if all.Data.Items[i] then
				table.insert(t.Data.Items, all.Data.Items[i])
			end
		end
	else
		error('BAD TEST URL '..tostring(name))
	end

	return isjson and t or httpService:JSONEncode(t)
end


return testHttpGet