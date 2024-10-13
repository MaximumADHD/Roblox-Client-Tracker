PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["round"]
  GETTABLEKS R3 R0 K1 ["Min"]
  LOADN R4 2
  CALL R2 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R1 K3 [tostring]
  CALL R1 -1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["round"]
  GETTABLEKS R4 R0 K4 ["Max"]
  LOADN R5 2
  CALL R3 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R2 K3 [tostring]
  CALL R2 -1 1
  RETURN R1 2

PROTO_1:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["__networking"]
  LOADK R4 K1 ["avatar"]
  LOADK R5 K2 ["/v1/avatar-rules"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v2/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v2/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/configuration"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  SETTABLEKS R2 R8 K4 ["Body"]
  NAMECALL R4 R3 K6 ["patch"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_5:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R3 K3 [0] [+4]
  GETTABLEKS R4 R2 K4 ["GameSettingsAvatar"]
  RETURN R4 1
  MOVE R6 R3
  NAMECALL R4 R0 K5 ["configurationV2GET"]
  CALL R4 2 1
  NAMECALL R4 R4 K6 ["await"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K7 ["responseBody"]
  GETTABLEKS R5 R6 K8 ["universeAvatarType"]
  JUMPIFNOTEQKS R5 K9 ["MorphToR6"] [+4]
  GETIMPORT R6 K13 [Enum.GameAvatarType.R6]
  RETURN R6 1
  JUMPIFNOTEQKS R5 K14 ["MorphToR15"] [+4]
  GETIMPORT R6 K16 [Enum.GameAvatarType.R15]
  RETURN R6 1
  GETIMPORT R6 K18 [Enum.GameAvatarType.PlayerChoice]
  RETURN R6 1

PROTO_6:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsAvatar"]
  RETURN R0 0
  LOADNIL R5
  GETIMPORT R6 K8 [Enum.GameAvatarType.R6]
  JUMPIFNOTEQ R2 R6 [+3]
  LOADK R5 K9 ["MorphToR6"]
  JUMP [+7]
  GETIMPORT R6 K11 [Enum.GameAvatarType.R15]
  JUMPIFNOTEQ R2 R6 [+3]
  LOADK R5 K12 ["MorphToR15"]
  JUMP [+1]
  LOADK R5 K13 ["PlayerChoice"]
  MOVE R8 R4
  DUPTABLE R9 K15 [{"universeAvatarType"}]
  SETTABLEKS R5 R9 K14 ["universeAvatarType"]
  NAMECALL R6 R0 K16 ["configurationV2PATCH"]
  CALL R6 3 1
  NAMECALL R6 R6 K17 ["await"]
  CALL R6 1 0
  RETURN R0 0

PROTO_7:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R3 K3 [0] [+8]
  GETTABLEKS R5 R2 K4 ["AllowCustomAnimations"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K5 ["PlayerChoice"]
  RETURN R4 1
  LOADK R4 K6 ["Standard"]
  RETURN R4 1
  MOVE R6 R3
  NAMECALL R4 R0 K7 ["configurationV2GET"]
  CALL R4 2 1
  NAMECALL R4 R4 K8 ["await"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K9 ["responseBody"]
  GETTABLEKS R5 R6 K10 ["universeAnimationType"]
  RETURN R5 1

PROTO_8:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+8]
  JUMPIFEQKS R2 K4 ["Standard"] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R3 K5 ["AllowCustomAnimations"]
  RETURN R0 0
  MOVE R7 R4
  DUPTABLE R8 K7 [{"universeAnimationType"}]
  SETTABLEKS R2 R8 K6 ["universeAnimationType"]
  NAMECALL R5 R0 K8 ["configurationV2PATCH"]
  CALL R5 3 1
  NAMECALL R5 R5 K9 ["await"]
  CALL R5 1 0
  RETURN R0 0

PROTO_9:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R3 K3 [0] [+4]
  GETTABLEKS R4 R2 K4 ["GameSettingsR15Collision"]
  RETURN R4 1
  MOVE R6 R3
  NAMECALL R4 R0 K5 ["configurationV2GET"]
  CALL R4 2 1
  NAMECALL R4 R4 K6 ["await"]
  CALL R4 1 1
  GETIMPORT R6 K9 [Enum.R15CollisionType]
  GETTABLEKS R8 R4 K10 ["responseBody"]
  GETTABLEKS R7 R8 K11 ["universeCollisionType"]
  GETTABLE R5 R6 R7
  RETURN R5 1

PROTO_10:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsR15Collision"]
  RETURN R0 0
  MOVE R7 R4
  DUPTABLE R8 K6 [{"universeCollisionType"}]
  GETTABLEKS R9 R2 K7 ["Name"]
  SETTABLEKS R9 R8 K5 ["universeCollisionType"]
  NAMECALL R5 R0 K8 ["configurationV2PATCH"]
  CALL R5 3 1
  NAMECALL R5 R5 K9 ["await"]
  CALL R5 1 0
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["avatarRulesV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["scales"]
  GETTABLEKS R2 R3 K4 ["height"]
  GETIMPORT R3 K7 [NumberRange.new]
  GETTABLEKS R4 R2 K8 ["min"]
  GETTABLEKS R5 R2 K9 ["max"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K10 ["increment"]
  RETURN R3 2

PROTO_12:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOTEQKN R3 K3 [0] [+10]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeHeight"]
  GETTABLEKS R4 R6 K5 ["Min"]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeHeight"]
  GETTABLEKS R5 R6 K6 ["Max"]
  JUMP [+19]
  MOVE R8 R3
  NAMECALL R6 R0 K7 ["configurationV2GET"]
  CALL R6 2 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K10 ["universeAvatarMinScales"]
  GETTABLEKS R4 R7 K11 ["height"]
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K12 ["universeAvatarMaxScales"]
  GETTABLEKS R5 R7 K11 ["height"]
  GETIMPORT R6 K15 [NumberRange.new]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_13:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsScaleRangeHeight"]
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["round"]
  GETTABLEKS R9 R2 K6 ["Min"]
  LOADN R10 2
  CALL R8 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K8 [tostring]
  CALL R7 -1 1
  MOVE R5 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["round"]
  GETTABLEKS R8 R2 K9 ["Max"]
  LOADN R9 2
  CALL R7 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R6 K8 [tostring]
  CALL R6 -1 1
  MOVE R9 R4
  DUPTABLE R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
  DUPTABLE R11 K14 [{"height"}]
  SETTABLEKS R5 R11 K13 ["height"]
  SETTABLEKS R11 R10 K10 ["universeAvatarMinScales"]
  DUPTABLE R11 K14 [{"height"}]
  SETTABLEKS R6 R11 K13 ["height"]
  SETTABLEKS R11 R10 K11 ["universeAvatarMaxScales"]
  NAMECALL R7 R0 K15 ["configurationV2PATCH"]
  CALL R7 3 1
  NAMECALL R7 R7 K16 ["await"]
  CALL R7 1 0
  RETURN R0 0

PROTO_14:
  NAMECALL R1 R0 K0 ["avatarRulesV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["scales"]
  GETTABLEKS R2 R3 K4 ["width"]
  GETIMPORT R3 K7 [NumberRange.new]
  GETTABLEKS R4 R2 K8 ["min"]
  GETTABLEKS R5 R2 K9 ["max"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K10 ["increment"]
  RETURN R3 2

PROTO_15:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOTEQKN R3 K3 [0] [+10]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeWidth"]
  GETTABLEKS R4 R6 K5 ["Min"]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeWidth"]
  GETTABLEKS R5 R6 K6 ["Max"]
  JUMP [+19]
  MOVE R8 R3
  NAMECALL R6 R0 K7 ["configurationV2GET"]
  CALL R6 2 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K10 ["universeAvatarMinScales"]
  GETTABLEKS R4 R7 K11 ["width"]
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K12 ["universeAvatarMaxScales"]
  GETTABLEKS R5 R7 K11 ["width"]
  GETIMPORT R6 K15 [NumberRange.new]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_16:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsScaleRangeWidth"]
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["round"]
  GETTABLEKS R9 R2 K6 ["Min"]
  LOADN R10 2
  CALL R8 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K8 [tostring]
  CALL R7 -1 1
  MOVE R5 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["round"]
  GETTABLEKS R8 R2 K9 ["Max"]
  LOADN R9 2
  CALL R7 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R6 K8 [tostring]
  CALL R6 -1 1
  MOVE R9 R4
  DUPTABLE R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
  DUPTABLE R11 K15 [{"width", "depth"}]
  SETTABLEKS R5 R11 K13 ["width"]
  LOADN R12 0
  SETTABLEKS R12 R11 K14 ["depth"]
  SETTABLEKS R11 R10 K10 ["universeAvatarMinScales"]
  DUPTABLE R11 K15 [{"width", "depth"}]
  SETTABLEKS R6 R11 K13 ["width"]
  LOADN R12 0
  SETTABLEKS R12 R11 K14 ["depth"]
  SETTABLEKS R11 R10 K11 ["universeAvatarMaxScales"]
  NAMECALL R7 R0 K16 ["configurationV2PATCH"]
  CALL R7 3 1
  NAMECALL R7 R7 K17 ["await"]
  CALL R7 1 0
  RETURN R0 0

PROTO_17:
  NAMECALL R1 R0 K0 ["avatarRulesV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["scales"]
  GETTABLEKS R2 R3 K4 ["head"]
  GETIMPORT R3 K7 [NumberRange.new]
  GETTABLEKS R4 R2 K8 ["min"]
  GETTABLEKS R5 R2 K9 ["max"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K10 ["increment"]
  RETURN R3 2

PROTO_18:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOTEQKN R3 K3 [0] [+10]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeHead"]
  GETTABLEKS R4 R6 K5 ["Min"]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeHead"]
  GETTABLEKS R5 R6 K6 ["Max"]
  JUMP [+19]
  MOVE R8 R3
  NAMECALL R6 R0 K7 ["configurationV2GET"]
  CALL R6 2 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K10 ["universeAvatarMinScales"]
  GETTABLEKS R4 R7 K11 ["head"]
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K12 ["universeAvatarMaxScales"]
  GETTABLEKS R5 R7 K11 ["head"]
  GETIMPORT R6 K15 [NumberRange.new]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_19:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsScaleRangeHead"]
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["round"]
  GETTABLEKS R9 R2 K6 ["Min"]
  LOADN R10 2
  CALL R8 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K8 [tostring]
  CALL R7 -1 1
  MOVE R5 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["round"]
  GETTABLEKS R8 R2 K9 ["Max"]
  LOADN R9 2
  CALL R7 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R6 K8 [tostring]
  CALL R6 -1 1
  MOVE R9 R4
  DUPTABLE R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
  DUPTABLE R11 K14 [{"head"}]
  SETTABLEKS R5 R11 K13 ["head"]
  SETTABLEKS R11 R10 K10 ["universeAvatarMinScales"]
  DUPTABLE R11 K14 [{"head"}]
  SETTABLEKS R6 R11 K13 ["head"]
  SETTABLEKS R11 R10 K11 ["universeAvatarMaxScales"]
  NAMECALL R7 R0 K15 ["configurationV2PATCH"]
  CALL R7 3 1
  NAMECALL R7 R7 K16 ["await"]
  CALL R7 1 0
  RETURN R0 0

PROTO_20:
  NAMECALL R1 R0 K0 ["avatarRulesV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["scales"]
  GETTABLEKS R2 R3 K4 ["bodyType"]
  GETIMPORT R3 K7 [NumberRange.new]
  GETTABLEKS R4 R2 K8 ["min"]
  GETTABLEKS R5 R2 K9 ["max"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K10 ["increment"]
  RETURN R3 2

PROTO_21:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOTEQKN R3 K3 [0] [+10]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeBodyType"]
  GETTABLEKS R4 R6 K5 ["Min"]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeBodyType"]
  GETTABLEKS R5 R6 K6 ["Max"]
  JUMP [+19]
  MOVE R8 R3
  NAMECALL R6 R0 K7 ["configurationV2GET"]
  CALL R6 2 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K10 ["universeAvatarMinScales"]
  GETTABLEKS R4 R7 K11 ["bodyType"]
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K12 ["universeAvatarMaxScales"]
  GETTABLEKS R5 R7 K11 ["bodyType"]
  GETIMPORT R6 K15 [NumberRange.new]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_22:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsScaleRangeBodyType"]
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["round"]
  GETTABLEKS R9 R2 K6 ["Min"]
  LOADN R10 2
  CALL R8 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K8 [tostring]
  CALL R7 -1 1
  MOVE R5 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["round"]
  GETTABLEKS R8 R2 K9 ["Max"]
  LOADN R9 2
  CALL R7 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R6 K8 [tostring]
  CALL R6 -1 1
  MOVE R9 R4
  DUPTABLE R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
  DUPTABLE R11 K14 [{"bodyType"}]
  SETTABLEKS R5 R11 K13 ["bodyType"]
  SETTABLEKS R11 R10 K10 ["universeAvatarMinScales"]
  DUPTABLE R11 K14 [{"bodyType"}]
  SETTABLEKS R6 R11 K13 ["bodyType"]
  SETTABLEKS R11 R10 K11 ["universeAvatarMaxScales"]
  NAMECALL R7 R0 K15 ["configurationV2PATCH"]
  CALL R7 3 1
  NAMECALL R7 R7 K16 ["await"]
  CALL R7 1 0
  RETURN R0 0

PROTO_23:
  NAMECALL R1 R0 K0 ["avatarRulesV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["scales"]
  GETTABLEKS R2 R3 K4 ["proportion"]
  GETIMPORT R3 K7 [NumberRange.new]
  GETTABLEKS R4 R2 K8 ["min"]
  GETTABLEKS R5 R2 K9 ["max"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K10 ["increment"]
  RETURN R3 2

PROTO_24:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOTEQKN R3 K3 [0] [+10]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeProportion"]
  GETTABLEKS R4 R6 K5 ["Min"]
  GETTABLEKS R6 R2 K4 ["GameSettingsScaleRangeProportion"]
  GETTABLEKS R5 R6 K6 ["Max"]
  JUMP [+19]
  MOVE R8 R3
  NAMECALL R6 R0 K7 ["configurationV2GET"]
  CALL R6 2 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K10 ["universeAvatarMinScales"]
  GETTABLEKS R4 R7 K11 ["proportion"]
  GETTABLEKS R8 R6 K9 ["responseBody"]
  GETTABLEKS R7 R8 K12 ["universeAvatarMaxScales"]
  GETTABLEKS R5 R7 K11 ["proportion"]
  GETIMPORT R6 K15 [NumberRange.new]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_25:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+4]
  SETTABLEKS R2 R3 K4 ["GameSettingsScaleRangeProportion"]
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["round"]
  GETTABLEKS R9 R2 K6 ["Min"]
  LOADN R10 2
  CALL R8 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K8 [tostring]
  CALL R7 -1 1
  MOVE R5 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["round"]
  GETTABLEKS R8 R2 K9 ["Max"]
  LOADN R9 2
  CALL R7 2 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R6 K8 [tostring]
  CALL R6 -1 1
  MOVE R9 R4
  DUPTABLE R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
  DUPTABLE R11 K14 [{"proportion"}]
  SETTABLEKS R5 R11 K13 ["proportion"]
  SETTABLEKS R11 R10 K10 ["universeAvatarMinScales"]
  DUPTABLE R11 K14 [{"proportion"}]
  SETTABLEKS R6 R11 K13 ["proportion"]
  SETTABLEKS R11 R10 K11 ["universeAvatarMaxScales"]
  NAMECALL R7 R0 K15 ["configurationV2PATCH"]
  CALL R7 3 1
  NAMECALL R7 R7 K16 ["await"]
  CALL R7 1 0
  RETURN R0 0

PROTO_26:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K2 ["GameId"]
  LOADNIL R4
  JUMPIFNOTEQKN R3 K3 [0] [+26]
  NEWTABLE R4 0 0
  GETIMPORT R5 K5 [pairs]
  GETUPVAL R6 0
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLE R10 R2 R9
  DUPTABLE R11 K9 [{"assetTypeID", "assetID", "isPlayerChoice"}]
  GETTABLEKS R12 R8 K10 ["Value"]
  SETTABLEKS R12 R11 K6 ["assetTypeID"]
  SETTABLEKS R10 R11 K7 ["assetID"]
  JUMPIFEQKN R10 K3 [0] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K8 ["isPlayerChoice"]
  SETTABLE R11 R4 R8
  FORGLOOP R5 2 [-16]
  RETURN R4 1
  MOVE R7 R3
  NAMECALL R5 R0 K11 ["configurationV2GET"]
  CALL R5 2 1
  NAMECALL R5 R5 K12 ["await"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["responseBody"]
  GETTABLEKS R4 R6 K14 ["universeAvatarAssetOverrides"]
  RETURN R4 1

PROTO_27:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R4 K3 [0] [+24]
  GETIMPORT R5 K5 [ipairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETUPVAL R11 0
  GETTABLEKS R12 R9 K6 ["assetTypeID"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R9 K7 ["assetID"]
  GETTABLEKS R12 R9 K8 ["isPlayerChoice"]
  GETUPVAL R14 1
  GETTABLE R13 R14 R10
  JUMPIFNOT R12 [+2]
  LOADN R14 0
  JUMP [+1]
  MOVE R14 R11
  SETTABLE R14 R3 R13
  FORGLOOP R5 2 [inext] [-16]
  RETURN R0 0
  MOVE R7 R4
  DUPTABLE R8 K10 [{"universeAvatarAssetOverrides"}]
  SETTABLEKS R2 R8 K9 ["universeAvatarAssetOverrides"]
  NAMECALL R5 R0 K11 ["configurationV2PATCH"]
  CALL R5 3 1
  NAMECALL R5 R5 K12 ["await"]
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["Util"]
  GETTABLEKS R2 R1 K8 ["Math"]
  NEWTABLE R3 32 0
  SETTABLEKS R3 R3 K9 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R5 K11 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K12 ["new"]
  DUPCLOSURE R5 K13 [PROTO_2]
  SETTABLEKS R5 R3 K14 ["avatarRulesV1GET"]
  DUPCLOSURE R5 K15 [PROTO_3]
  SETTABLEKS R5 R3 K16 ["configurationV2GET"]
  DUPCLOSURE R5 K17 [PROTO_4]
  SETTABLEKS R5 R3 K18 ["configurationV2PATCH"]
  DUPCLOSURE R5 K19 [PROTO_5]
  SETTABLEKS R5 R3 K20 ["getAvatarType"]
  DUPCLOSURE R5 K21 [PROTO_6]
  SETTABLEKS R5 R3 K22 ["setAvatarType"]
  DUPCLOSURE R5 K23 [PROTO_7]
  SETTABLEKS R5 R3 K24 ["getAnimationType"]
  DUPCLOSURE R5 K25 [PROTO_8]
  SETTABLEKS R5 R3 K26 ["setAnimationType"]
  DUPCLOSURE R5 K27 [PROTO_9]
  SETTABLEKS R5 R3 K28 ["getCollisionType"]
  DUPCLOSURE R5 K29 [PROTO_10]
  SETTABLEKS R5 R3 K30 ["setCollisionType"]
  DUPCLOSURE R5 K31 [PROTO_11]
  SETTABLEKS R5 R3 K32 ["getHeightRules"]
  DUPCLOSURE R5 K33 [PROTO_12]
  SETTABLEKS R5 R3 K34 ["getHeightRange"]
  DUPCLOSURE R5 K35 [PROTO_13]
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K36 ["setHeightRange"]
  DUPCLOSURE R5 K37 [PROTO_14]
  SETTABLEKS R5 R3 K38 ["getWidthRules"]
  DUPCLOSURE R5 K39 [PROTO_15]
  SETTABLEKS R5 R3 K40 ["getWidthRange"]
  DUPCLOSURE R5 K41 [PROTO_16]
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K42 ["setWidthRange"]
  DUPCLOSURE R5 K43 [PROTO_17]
  SETTABLEKS R5 R3 K44 ["getHeadScaleRules"]
  DUPCLOSURE R5 K45 [PROTO_18]
  SETTABLEKS R5 R3 K46 ["getHeadScaleRange"]
  DUPCLOSURE R5 K47 [PROTO_19]
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K48 ["setHeadScaleRange"]
  DUPCLOSURE R5 K49 [PROTO_20]
  SETTABLEKS R5 R3 K50 ["getBodyTypeRules"]
  DUPCLOSURE R5 K51 [PROTO_21]
  SETTABLEKS R5 R3 K52 ["getBodyTypeRange"]
  DUPCLOSURE R5 K53 [PROTO_22]
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K54 ["setBodyTypeRange"]
  DUPCLOSURE R5 K55 [PROTO_23]
  SETTABLEKS R5 R3 K56 ["getProportionsRules"]
  DUPCLOSURE R5 K57 [PROTO_24]
  SETTABLEKS R5 R3 K58 ["getProportionsRange"]
  DUPCLOSURE R5 K59 [PROTO_25]
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K60 ["setProportionsRange"]
  NEWTABLE R5 16 0
  GETIMPORT R6 K64 [Enum.AssetType.Face]
  LOADK R7 K65 ["GameSettingsAssetIDFace"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K67 [Enum.AssetType.Head]
  LOADK R7 K68 ["GameSettingsAssetIDHead"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K70 [Enum.AssetType.Torso]
  LOADK R7 K71 ["GameSettingsAssetIDTorso"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K73 [Enum.AssetType.LeftArm]
  LOADK R7 K74 ["GameSettingsAssetIDLeftArm"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K76 [Enum.AssetType.RightArm]
  LOADK R7 K77 ["GameSettingsAssetIDRightArm"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K79 [Enum.AssetType.LeftLeg]
  LOADK R7 K80 ["GameSettingsAssetIDLeftLeg"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K82 [Enum.AssetType.RightLeg]
  LOADK R7 K83 ["GameSettingsAssetIDRightLeg"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K85 [Enum.AssetType.Shirt]
  LOADK R7 K86 ["GameSettingsAssetIDShirt"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K88 [Enum.AssetType.Pants]
  LOADK R7 K89 ["GameSettingsAssetIDPants"]
  SETTABLE R7 R5 R6
  GETIMPORT R6 K91 [Enum.AssetType.TShirt]
  LOADK R7 K92 ["GameSettingsAssetIDTeeShirt"]
  SETTABLE R7 R5 R6
  NEWTABLE R6 0 0
  GETIMPORT R7 K94 [pairs]
  GETIMPORT R8 K95 [Enum.AssetType]
  NAMECALL R8 R8 K96 ["GetEnumItems"]
  CALL R8 1 -1
  CALL R7 -1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R11 K97 ["Value"]
  SETTABLE R11 R6 R12
  FORGLOOP R7 2 [-4]
  DUPCLOSURE R7 K98 [PROTO_26]
  CAPTURE VAL R5
  SETTABLEKS R7 R3 K99 ["getAssetOverrides"]
  DUPCLOSURE R7 K100 [PROTO_27]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R7 R3 K101 ["setAssetOverrides"]
  RETURN R3 1
