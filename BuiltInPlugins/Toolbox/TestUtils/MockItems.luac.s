PROTO_0:
        0 ORK                              R1 R1 K0 ["Observation Tower"]
        1 DUPTABLE                         R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
        2 DUPTABLE                         R3 K14 [{["Id"], ["Name"], ["Description"] = "asset description", ["TypeId"] = 10, ["IsEndorsed"] = True}]
        3 SETTABLEKS                       R0 R3 K6 ["Id"]
        5 SETTABLEKS                       R1 R3 K7 ["Name"]
        7 SETTABLEKS                       R3 R2 K1 ["Asset"]
        9 DUPTABLE                         R3 K18 [{["Id"], ["Name"] = "Roblox", ["Type"] = 1}]
       10 SETTABLEKS                       R0 R3 K6 ["Id"]
       12 SETTABLEKS                       R3 R2 K2 ["Creator"]
       14 DUPTABLE                         R3 K28 [{["Final"] = True, ["Url"] = "rbxasset://textures/StudioToolbox/Animation.png", ["RetryUrl"] = , ["UserId"] = 0, ["EndpointType"] = "Avatar"}]
       15 SETTABLEKS                       R3 R2 K3 ["Thumbnail"]
       17 DUPTABLE                         R3 K39 [{["ShowVotes"] = True, ["UpVotes"] = 4506, ["DownVotes"] = 581, ["CanVote"] = True, ["UserVote"] = True, ["HasVoted"] = True, ["ReasonForNotVoteable"] = ""}]
       18 SETTABLEKS                       R3 R2 K4 ["Voting"]
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSimpleAsset"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 DUPTABLE                         R3 K10 [{["Artist"] = "Artist", ["MusicAlbum"] = "Album", ["MusicGenre"] = "atmosphere", ["SoundEffectCategory"] = "Instrument", ["SoundEffectSubcategory"] = "Drums"}]
        7 SETTABLEKS                       R3 R2 K11 ["AudioDetails"]
        9 RETURN                           R2 1

PROTO_2:
        0 ORK                              R1 R1 K0 ["Observation Tower"]
        1 DUPTABLE                         R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
        2 DUPTABLE                         R3 K20 [{["Id"], ["Name"] = "Observation Tower", ["TypeId"] = 10, ["IsEndorsed"] = True, ["AssetGenres"] = "", ["Description"] = "mocked asset item", ["Created"] = "2019-05-01T00:37:18.59Z", ["Updated"] = "2021-05-06T19:56:54.437Z"}]
        3 SETTABLEKS                       R0 R3 K6 ["Id"]
        5 SETTABLEKS                       R3 R2 K1 ["Asset"]
        7 DUPTABLE                         R3 K24 [{["Id"], ["Name"] = "Roblox", ["Type"] = 1}]
        8 SETTABLEKS                       R0 R3 K6 ["Id"]
       10 SETTABLEKS                       R3 R2 K2 ["Creator"]
       12 DUPTABLE                         R3 K34 [{["Final"] = True, ["Url"] = "rbxasset://textures/StudioToolbox/Animation.png", ["RetryUrl"] = , ["UserId"] = 0, ["EndpointType"] = "Avatar"}]
       13 SETTABLEKS                       R3 R2 K3 ["Thumbnail"]
       15 DUPTABLE                         R3 K44 [{["ShowVotes"] = True, ["UpVotes"] = 4506, ["DownVotes"] = 581, ["CanVote"] = True, ["UserVote"] = True, ["HasVoted"] = True, ["ReasonForNotVoteable"] = ""}]
       16 SETTABLEKS                       R3 R2 K4 ["Voting"]
       18 RETURN                           R2 1

PROTO_3:
        0 ORK                              R1 R1 K0 ["Comic Sans"]
        1 DUPTABLE                         R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
        2 DUPTABLE                         R3 K20 [{["AssetGenres"] = "", ["Created"] = "2019-05-01T00:37:18.59Z", ["Description"] = "mocked FontFamily Asset", ["Id"], ["IsEndorsed"] = True, ["Name"] = "Comic Sans", ["TypeId"] = 73, ["Updated"] = "2021-05-06T19:56:54.437Z"}]
        3 SETTABLEKS                       R0 R3 K12 ["Id"]
        5 SETTABLEKS                       R3 R2 K1 ["Asset"]
        7 DUPTABLE                         R3 K24 [{["Id"], ["Name"] = "Roblox", ["Type"] = 1}]
        8 SETTABLEKS                       R0 R3 K12 ["Id"]
       10 SETTABLEKS                       R3 R2 K2 ["Creator"]
       12 DUPTABLE                         R3 K34 [{["EndpointType"] = "Avatar", ["Final"] = True, ["RetryUrl"] = , ["Url"] = "rbxasset://textures/StudioToolbox/Animation.png", ["UserId"] = 0}]
       13 SETTABLEKS                       R3 R2 K3 ["Thumbnail"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K4 ["Voting"]
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getSimpleAsset"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["getSimpleAudioAsset"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 SETTABLEKS                       R1 R0 K5 ["getPreviewAsset"]
       13 DUPCLOSURE                       R1 K6 [PROTO_3]
       14 SETTABLEKS                       R1 R0 K7 ["getFontFamilyAsset"]
       16 RETURN                           R0 1
