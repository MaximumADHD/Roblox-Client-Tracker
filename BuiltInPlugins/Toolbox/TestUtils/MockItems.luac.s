PROTO_0:
  ORK R1 R1 K0 ["Observation Tower"]
  DUPTABLE R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
  DUPTABLE R3 K11 [{"Id", "Name", "Description", "TypeId", "IsEndorsed"}]
  SETTABLEKS R0 R3 K6 ["Id"]
  SETTABLEKS R1 R3 K7 ["Name"]
  LOADK R4 K12 ["asset description"]
  SETTABLEKS R4 R3 K8 ["Description"]
  LOADN R4 10
  SETTABLEKS R4 R3 K9 ["TypeId"]
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["IsEndorsed"]
  SETTABLEKS R3 R2 K1 ["Asset"]
  DUPTABLE R3 K14 [{"Id", "Name", "Type"}]
  SETTABLEKS R0 R3 K6 ["Id"]
  LOADK R4 K15 ["Roblox"]
  SETTABLEKS R4 R3 K7 ["Name"]
  LOADN R4 1
  SETTABLEKS R4 R3 K13 ["Type"]
  SETTABLEKS R3 R2 K2 ["Creator"]
  DUPTABLE R3 K21 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K16 ["Final"]
  LOADK R4 K22 ["rbxasset://textures/StudioToolbox/Animation.png"]
  SETTABLEKS R4 R3 K17 ["Url"]
  LOADNIL R4
  SETTABLEKS R4 R3 K18 ["RetryUrl"]
  LOADN R4 0
  SETTABLEKS R4 R3 K19 ["UserId"]
  LOADK R4 K23 ["Avatar"]
  SETTABLEKS R4 R3 K20 ["EndpointType"]
  SETTABLEKS R3 R2 K3 ["Thumbnail"]
  DUPTABLE R3 K31 [{"ShowVotes", "UpVotes", "DownVotes", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K24 ["ShowVotes"]
  LOADN R4 154
  SETTABLEKS R4 R3 K25 ["UpVotes"]
  LOADN R4 69
  SETTABLEKS R4 R3 K26 ["DownVotes"]
  LOADB R4 1
  SETTABLEKS R4 R3 K27 ["CanVote"]
  LOADB R4 1
  SETTABLEKS R4 R3 K28 ["UserVote"]
  LOADB R4 1
  SETTABLEKS R4 R3 K29 ["HasVoted"]
  LOADK R4 K32 [""]
  SETTABLEKS R4 R3 K30 ["ReasonForNotVoteable"]
  SETTABLEKS R3 R2 K4 ["Voting"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getSimpleAsset"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  DUPTABLE R3 K6 [{"Artist", "MusicAlbum", "MusicGenre", "SoundEffectCategory", "SoundEffectSubcategory"}]
  LOADK R4 K1 ["Artist"]
  SETTABLEKS R4 R3 K1 ["Artist"]
  LOADK R4 K7 ["Album"]
  SETTABLEKS R4 R3 K2 ["MusicAlbum"]
  LOADK R4 K8 ["atmosphere"]
  SETTABLEKS R4 R3 K3 ["MusicGenre"]
  LOADK R4 K9 ["Instrument"]
  SETTABLEKS R4 R3 K4 ["SoundEffectCategory"]
  LOADK R4 K10 ["Drums"]
  SETTABLEKS R4 R3 K5 ["SoundEffectSubcategory"]
  SETTABLEKS R3 R2 K11 ["AudioDetails"]
  RETURN R2 1

PROTO_2:
  ORK R1 R1 K0 ["Observation Tower"]
  DUPTABLE R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
  DUPTABLE R3 K14 [{"Id", "Name", "TypeId", "IsEndorsed", "AssetGenres", "Description", "Created", "Updated"}]
  SETTABLEKS R0 R3 K6 ["Id"]
  LOADK R4 K0 ["Observation Tower"]
  SETTABLEKS R4 R3 K7 ["Name"]
  LOADN R4 10
  SETTABLEKS R4 R3 K8 ["TypeId"]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["IsEndorsed"]
  LOADK R4 K15 [""]
  SETTABLEKS R4 R3 K10 ["AssetGenres"]
  LOADK R4 K16 ["mocked asset item"]
  SETTABLEKS R4 R3 K11 ["Description"]
  LOADK R4 K17 ["2019-05-01T00:37:18.59Z"]
  SETTABLEKS R4 R3 K12 ["Created"]
  LOADK R4 K18 ["2021-05-06T19:56:54.437Z"]
  SETTABLEKS R4 R3 K13 ["Updated"]
  SETTABLEKS R3 R2 K1 ["Asset"]
  DUPTABLE R3 K20 [{"Id", "Name", "Type"}]
  SETTABLEKS R0 R3 K6 ["Id"]
  LOADK R4 K21 ["Roblox"]
  SETTABLEKS R4 R3 K7 ["Name"]
  LOADN R4 1
  SETTABLEKS R4 R3 K19 ["Type"]
  SETTABLEKS R3 R2 K2 ["Creator"]
  DUPTABLE R3 K27 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K22 ["Final"]
  LOADK R4 K28 ["rbxasset://textures/StudioToolbox/Animation.png"]
  SETTABLEKS R4 R3 K23 ["Url"]
  LOADNIL R4
  SETTABLEKS R4 R3 K24 ["RetryUrl"]
  LOADN R4 0
  SETTABLEKS R4 R3 K25 ["UserId"]
  LOADK R4 K29 ["Avatar"]
  SETTABLEKS R4 R3 K26 ["EndpointType"]
  SETTABLEKS R3 R2 K3 ["Thumbnail"]
  DUPTABLE R3 K37 [{"ShowVotes", "UpVotes", "DownVotes", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K30 ["ShowVotes"]
  LOADN R4 154
  SETTABLEKS R4 R3 K31 ["UpVotes"]
  LOADN R4 69
  SETTABLEKS R4 R3 K32 ["DownVotes"]
  LOADB R4 1
  SETTABLEKS R4 R3 K33 ["CanVote"]
  LOADB R4 1
  SETTABLEKS R4 R3 K34 ["UserVote"]
  LOADB R4 1
  SETTABLEKS R4 R3 K35 ["HasVoted"]
  LOADK R4 K15 [""]
  SETTABLEKS R4 R3 K36 ["ReasonForNotVoteable"]
  SETTABLEKS R3 R2 K4 ["Voting"]
  RETURN R2 1

PROTO_3:
  ORK R1 R1 K0 ["Comic Sans"]
  DUPTABLE R2 K5 [{"Asset", "Creator", "Thumbnail", "Voting"}]
  DUPTABLE R3 K14 [{"AssetGenres", "Created", "Description", "Id", "IsEndorsed", "Name", "TypeId", "Updated"}]
  LOADK R4 K15 [""]
  SETTABLEKS R4 R3 K6 ["AssetGenres"]
  LOADK R4 K16 ["2019-05-01T00:37:18.59Z"]
  SETTABLEKS R4 R3 K7 ["Created"]
  LOADK R4 K17 ["mocked FontFamily Asset"]
  SETTABLEKS R4 R3 K8 ["Description"]
  SETTABLEKS R0 R3 K9 ["Id"]
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["IsEndorsed"]
  LOADK R4 K0 ["Comic Sans"]
  SETTABLEKS R4 R3 K11 ["Name"]
  LOADN R4 73
  SETTABLEKS R4 R3 K12 ["TypeId"]
  LOADK R4 K18 ["2021-05-06T19:56:54.437Z"]
  SETTABLEKS R4 R3 K13 ["Updated"]
  SETTABLEKS R3 R2 K1 ["Asset"]
  DUPTABLE R3 K20 [{"Id", "Name", "Type"}]
  SETTABLEKS R0 R3 K9 ["Id"]
  LOADK R4 K21 ["Roblox"]
  SETTABLEKS R4 R3 K11 ["Name"]
  LOADN R4 1
  SETTABLEKS R4 R3 K19 ["Type"]
  SETTABLEKS R3 R2 K2 ["Creator"]
  DUPTABLE R3 K27 [{"EndpointType", "Final", "RetryUrl", "Url", "UserId"}]
  LOADK R4 K28 ["Avatar"]
  SETTABLEKS R4 R3 K22 ["EndpointType"]
  LOADB R4 1
  SETTABLEKS R4 R3 K23 ["Final"]
  LOADNIL R4
  SETTABLEKS R4 R3 K24 ["RetryUrl"]
  LOADK R4 K29 ["rbxasset://textures/StudioToolbox/Animation.png"]
  SETTABLEKS R4 R3 K25 ["Url"]
  LOADN R4 0
  SETTABLEKS R4 R3 K26 ["UserId"]
  SETTABLEKS R3 R2 K3 ["Thumbnail"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["Voting"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["getSimpleAsset"]
  DUPCLOSURE R1 K2 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["getSimpleAudioAsset"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["getPreviewAsset"]
  DUPCLOSURE R1 K6 [PROTO_3]
  SETTABLEKS R1 R0 K7 ["getFontFamilyAsset"]
  RETURN R0 1
