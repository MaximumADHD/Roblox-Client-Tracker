PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["voice"]
  LOADK R8 K2 ["/v1/settings/universe/"]
  MOVE R9 R1
  CONCAT R7 R8 R9
  DUPTABLE R8 K4 [{"Body"}]
  SETTABLEKS R2 R8 K3 ["Body"]
  NAMECALL R4 R3 K5 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["voice"]
  LOADK R8 K2 ["/v1/settings/universe/avatarvideo/"]
  MOVE R9 R1
  CONCAT R7 R8 R9
  DUPTABLE R8 K4 [{"Body"}]
  SETTABLEKS R2 R8 K3 ["Body"]
  NAMECALL R4 R3 K5 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["voice"]
  LOADK R7 K2 ["/v1/settings/universe/"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  NAMECALL R3 R2 K3 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["__networking"]
  LOADK R4 K1 ["voice"]
  LOADK R5 K2 ["/v1/settings"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  NAMECALL R1 R0 K0 ["voiceUserSettingsGET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["isAvatarChatEnabled"]
  RETURN R2 1

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VoiceChatService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ServiceVisibilityService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  MOVE R4 R0
  LOADB R5 1
  NAMECALL R2 R1 K5 ["SetServiceVisibilityPreference"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["voiceUniverseSettingsGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  DUPTABLE R3 K4 [{"audioEnabled", "videoEnabled"}]
  GETTABLEKS R5 R2 K5 ["responseBody"]
  GETTABLEKS R4 R5 K6 ["isUniverseEnabledForVoice"]
  SETTABLEKS R4 R3 K2 ["audioEnabled"]
  GETTABLEKS R5 R2 K5 ["responseBody"]
  GETTABLEKS R4 R5 K7 ["isUniverseEnabledForAvatarVideo"]
  SETTABLEKS R4 R3 K3 ["videoEnabled"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+20]
  GETTABLEKS R4 R3 K2 ["audioEnabled"]
  JUMPIFNOT R4 [+17]
  GETIMPORT R4 K9 [game]
  LOADK R6 K10 ["VoiceChatService"]
  NAMECALL R4 R4 K11 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [game]
  LOADK R7 K12 ["ServiceVisibilityService"]
  NAMECALL R5 R5 K11 ["GetService"]
  CALL R5 2 1
  MOVE R8 R4
  LOADB R9 1
  NAMECALL R6 R5 K13 ["SetServiceVisibilityPreference"]
  CALL R6 3 0
  RETURN R3 1

PROTO_8:
  NEWTABLE R4 0 0
  JUMPIFEQKNIL R2 [+31]
  SETTABLEKS R2 R4 K0 ["optIn"]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+18]
  JUMPIFNOT R2 [+17]
  GETIMPORT R5 K2 [game]
  LOADK R7 K3 ["VoiceChatService"]
  NAMECALL R5 R5 K4 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K2 [game]
  LOADK R8 K5 ["ServiceVisibilityService"]
  NAMECALL R6 R6 K4 ["GetService"]
  CALL R6 2 1
  MOVE R9 R5
  LOADB R10 1
  NAMECALL R7 R6 K6 ["SetServiceVisibilityPreference"]
  CALL R7 3 0
  MOVE R7 R1
  MOVE R8 R4
  NAMECALL R5 R0 K7 ["voiceUniverseSettingsPOST"]
  CALL R5 3 1
  NAMECALL R5 R5 K8 ["await"]
  CALL R5 1 0
  JUMPIFEQKNIL R3 [+11]
  SETTABLEKS R3 R4 K0 ["optIn"]
  MOVE R7 R1
  MOVE R8 R4
  NAMECALL R5 R0 K9 ["avatarVideoUniverseSettingsPOST"]
  CALL R5 3 1
  NAMECALL R5 R5 K8 ["await"]
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["InsertVoiceChatServiceOnceEnabled"]
  LOADB R4 0
  NAMECALL R1 R1 K4 ["DefineFastFlag"]
  CALL R1 3 1
  DUPCLOSURE R2 K5 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["new"]
  DUPCLOSURE R2 K7 [PROTO_1]
  SETTABLEKS R2 R0 K8 ["voiceUniverseSettingsPOST"]
  DUPCLOSURE R2 K9 [PROTO_2]
  SETTABLEKS R2 R0 K10 ["avatarVideoUniverseSettingsPOST"]
  DUPCLOSURE R2 K11 [PROTO_3]
  SETTABLEKS R2 R0 K12 ["voiceUniverseSettingsGET"]
  DUPCLOSURE R2 K13 [PROTO_4]
  SETTABLEKS R2 R0 K14 ["voiceUserSettingsGET"]
  DUPCLOSURE R2 K15 [PROTO_5]
  SETTABLEKS R2 R0 K16 ["getAvatarChatEnabled"]
  DUPCLOSURE R2 K17 [PROTO_6]
  DUPCLOSURE R3 K18 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R3 R0 K19 ["getAvatarChatSettings"]
  DUPCLOSURE R3 K20 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R3 R0 K21 ["setAvatarChatSettings"]
  RETURN R0 1
