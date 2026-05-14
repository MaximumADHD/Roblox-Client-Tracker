PROTO_0:
        0 ORK                              R1 R1 K0 ["Observation Tower"]
        1 DUPTABLE                         R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
        2 DUPTABLE                         R3 K11 [{"Id", "Name", "Description", "TypeId", "IsEndorsed"}]
        3 SETTABLEKS                       R0 R3 K6 ["Id"]
        5 SETTABLEKS                       R1 R3 K7 ["Name"]
        7 LOADK                            R4 K12 ["asset description"]
        8 SETTABLEKS                       R4 R3 K8 ["Description"]
       10 LOADN                            R4 10
       11 SETTABLEKS                       R4 R3 K9 ["TypeId"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K10 ["IsEndorsed"]
       16 SETTABLEKS                       R3 R2 K1 ["Asset"]
       18 DUPTABLE                         R3 K14 [{"Id", "Name", "Type"}]
       19 SETTABLEKS                       R0 R3 K6 ["Id"]
       21 LOADK                            R4 K15 ["Roblox"]
       22 SETTABLEKS                       R4 R3 K7 ["Name"]
       24 LOADN                            R4 1
       25 SETTABLEKS                       R4 R3 K13 ["Type"]
       27 SETTABLEKS                       R3 R2 K2 ["Creator"]
       29 DUPTABLE                         R3 K21 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K16 ["Final"]
       33 LOADK                            R4 K22 ["rbxasset://textures/StudioToolbox/Animation.png"]
       34 SETTABLEKS                       R4 R3 K17 ["Url"]
       36 LOADNIL                          R4
       37 SETTABLEKS                       R4 R3 K18 ["RetryUrl"]
       39 LOADN                            R4 0
       40 SETTABLEKS                       R4 R3 K19 ["UserId"]
       42 LOADK                            R4 K23 ["Avatar"]
       43 SETTABLEKS                       R4 R3 K20 ["EndpointType"]
       45 SETTABLEKS                       R3 R2 K3 ["Thumbnail"]
       47 DUPTABLE                         R3 K31 [{"ShowVotes", "UpVotes", "DownVotes", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
       48 LOADB                            R4 1
       49 SETTABLEKS                       R4 R3 K24 ["ShowVotes"]
       51 LOADN                            R4 154
       52 SETTABLEKS                       R4 R3 K25 ["UpVotes"]
       54 LOADN                            R4 69
       55 SETTABLEKS                       R4 R3 K26 ["DownVotes"]
       57 LOADB                            R4 1
       58 SETTABLEKS                       R4 R3 K27 ["CanVote"]
       60 LOADB                            R4 1
       61 SETTABLEKS                       R4 R3 K28 ["UserVote"]
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K29 ["HasVoted"]
       66 LOADK                            R4 K32 [""]
       67 SETTABLEKS                       R4 R3 K30 ["ReasonForNotVoteable"]
       69 SETTABLEKS                       R3 R2 K4 ["Voting"]
       71 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSimpleAsset"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 DUPTABLE                         R3 K6 [{"Artist", "MusicAlbum", "MusicGenre", "SoundEffectCategory", "SoundEffectSubcategory"}]
        7 LOADK                            R4 K1 ["Artist"]
        8 SETTABLEKS                       R4 R3 K1 ["Artist"]
       10 LOADK                            R4 K7 ["Album"]
       11 SETTABLEKS                       R4 R3 K2 ["MusicAlbum"]
       13 LOADK                            R4 K8 ["atmosphere"]
       14 SETTABLEKS                       R4 R3 K3 ["MusicGenre"]
       16 LOADK                            R4 K9 ["Instrument"]
       17 SETTABLEKS                       R4 R3 K4 ["SoundEffectCategory"]
       19 LOADK                            R4 K10 ["Drums"]
       20 SETTABLEKS                       R4 R3 K5 ["SoundEffectSubcategory"]
       22 SETTABLEKS                       R3 R2 K11 ["AudioDetails"]
       24 RETURN                           R2 1

PROTO_2:
        0 ORK                              R1 R1 K0 ["Observation Tower"]
        1 DUPTABLE                         R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
        2 DUPTABLE                         R3 K14 [{"Id", "Name", "TypeId", "IsEndorsed", "AssetGenres", "Description", "Created", "Updated"}]
        3 SETTABLEKS                       R0 R3 K6 ["Id"]
        5 LOADK                            R4 K0 ["Observation Tower"]
        6 SETTABLEKS                       R4 R3 K7 ["Name"]
        8 LOADN                            R4 10
        9 SETTABLEKS                       R4 R3 K8 ["TypeId"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K9 ["IsEndorsed"]
       14 LOADK                            R4 K15 [""]
       15 SETTABLEKS                       R4 R3 K10 ["AssetGenres"]
       17 LOADK                            R4 K16 ["mocked asset item"]
       18 SETTABLEKS                       R4 R3 K11 ["Description"]
       20 LOADK                            R4 K17 ["2019-05-01T00:37:18.59Z"]
       21 SETTABLEKS                       R4 R3 K12 ["Created"]
       23 LOADK                            R4 K18 ["2021-05-06T19:56:54.437Z"]
       24 SETTABLEKS                       R4 R3 K13 ["Updated"]
       26 SETTABLEKS                       R3 R2 K1 ["Asset"]
       28 DUPTABLE                         R3 K20 [{"Id", "Name", "Type"}]
       29 SETTABLEKS                       R0 R3 K6 ["Id"]
       31 LOADK                            R4 K21 ["Roblox"]
       32 SETTABLEKS                       R4 R3 K7 ["Name"]
       34 LOADN                            R4 1
       35 SETTABLEKS                       R4 R3 K19 ["Type"]
       37 SETTABLEKS                       R3 R2 K2 ["Creator"]
       39 DUPTABLE                         R3 K27 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K22 ["Final"]
       43 LOADK                            R4 K28 ["rbxasset://textures/StudioToolbox/Animation.png"]
       44 SETTABLEKS                       R4 R3 K23 ["Url"]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K24 ["RetryUrl"]
       49 LOADN                            R4 0
       50 SETTABLEKS                       R4 R3 K25 ["UserId"]
       52 LOADK                            R4 K29 ["Avatar"]
       53 SETTABLEKS                       R4 R3 K26 ["EndpointType"]
       55 SETTABLEKS                       R3 R2 K3 ["Thumbnail"]
       57 DUPTABLE                         R3 K37 [{"ShowVotes", "UpVotes", "DownVotes", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
       58 LOADB                            R4 1
       59 SETTABLEKS                       R4 R3 K30 ["ShowVotes"]
       61 LOADN                            R4 154
       62 SETTABLEKS                       R4 R3 K31 ["UpVotes"]
       64 LOADN                            R4 69
       65 SETTABLEKS                       R4 R3 K32 ["DownVotes"]
       67 LOADB                            R4 1
       68 SETTABLEKS                       R4 R3 K33 ["CanVote"]
       70 LOADB                            R4 1
       71 SETTABLEKS                       R4 R3 K34 ["UserVote"]
       73 LOADB                            R4 1
       74 SETTABLEKS                       R4 R3 K35 ["HasVoted"]
       76 LOADK                            R4 K15 [""]
       77 SETTABLEKS                       R4 R3 K36 ["ReasonForNotVoteable"]
       79 SETTABLEKS                       R3 R2 K4 ["Voting"]
       81 RETURN                           R2 1

PROTO_3:
        0 ORK                              R1 R1 K0 ["Comic Sans"]
        1 DUPTABLE                         R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
        2 DUPTABLE                         R3 K14 [{"AssetGenres", "Created", "Description", "Id", "IsEndorsed", "Name", "TypeId", "Updated"}]
        3 LOADK                            R4 K15 [""]
        4 SETTABLEKS                       R4 R3 K6 ["AssetGenres"]
        6 LOADK                            R4 K16 ["2019-05-01T00:37:18.59Z"]
        7 SETTABLEKS                       R4 R3 K7 ["Created"]
        9 LOADK                            R4 K17 ["mocked FontFamily Asset"]
       10 SETTABLEKS                       R4 R3 K8 ["Description"]
       12 SETTABLEKS                       R0 R3 K9 ["Id"]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K10 ["IsEndorsed"]
       17 LOADK                            R4 K0 ["Comic Sans"]
       18 SETTABLEKS                       R4 R3 K11 ["Name"]
       20 LOADN                            R4 73
       21 SETTABLEKS                       R4 R3 K12 ["TypeId"]
       23 LOADK                            R4 K18 ["2021-05-06T19:56:54.437Z"]
       24 SETTABLEKS                       R4 R3 K13 ["Updated"]
       26 SETTABLEKS                       R3 R2 K1 ["Asset"]
       28 DUPTABLE                         R3 K20 [{"Id", "Name", "Type"}]
       29 SETTABLEKS                       R0 R3 K9 ["Id"]
       31 LOADK                            R4 K21 ["Roblox"]
       32 SETTABLEKS                       R4 R3 K11 ["Name"]
       34 LOADN                            R4 1
       35 SETTABLEKS                       R4 R3 K19 ["Type"]
       37 SETTABLEKS                       R3 R2 K2 ["Creator"]
       39 DUPTABLE                         R3 K27 [{"EndpointType", "Final", "RetryUrl", "Url", "UserId"}]
       40 LOADK                            R4 K28 ["Avatar"]
       41 SETTABLEKS                       R4 R3 K22 ["EndpointType"]
       43 LOADB                            R4 1
       44 SETTABLEKS                       R4 R3 K23 ["Final"]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K24 ["RetryUrl"]
       49 LOADK                            R4 K29 ["rbxasset://textures/StudioToolbox/Animation.png"]
       50 SETTABLEKS                       R4 R3 K25 ["Url"]
       52 LOADN                            R4 0
       53 SETTABLEKS                       R4 R3 K26 ["UserId"]
       55 SETTABLEKS                       R3 R2 K3 ["Thumbnail"]
       57 NEWTABLE                         R3 0 0
       59 SETTABLEKS                       R3 R2 K4 ["Voting"]
       61 RETURN                           R2 1

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
