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
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["voice"]
  LOADK R8 K2 ["/v1/settings/universe/chat-group-api/"]
  MOVE R9 R1
  CONCAT R7 R8 R9
  DUPTABLE R8 K4 [{"Body"}]
  SETTABLEKS R2 R8 K3 ["Body"]
  NAMECALL R4 R3 K5 ["post"]
  CALL R4 4 1
  RETURN R4 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["voice"]
  LOADK R7 K2 ["/v1/settings/universe/"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  NAMECALL R3 R2 K3 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["__networking"]
  LOADK R4 K1 ["voice"]
  LOADK R5 K2 ["/v1/settings"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  NAMECALL R1 R0 K0 ["voiceUserSettingsGET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["isAvatarChatEnabled"]
  RETURN R2 1

PROTO_7:
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

PROTO_8:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["voiceUniverseSettingsGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  DUPTABLE R3 K5 [{"audioEnabled", "videoEnabled", "chatGroupApiEnabled"}]
  GETTABLEKS R5 R2 K6 ["responseBody"]
  GETTABLEKS R4 R5 K7 ["isUniverseEnabledForVoice"]
  SETTABLEKS R4 R3 K2 ["audioEnabled"]
  GETTABLEKS R5 R2 K6 ["responseBody"]
  GETTABLEKS R4 R5 K8 ["isUniverseEnabledForAvatarVideo"]
  SETTABLEKS R4 R3 K3 ["videoEnabled"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R2 K6 ["responseBody"]
  GETTABLEKS R4 R5 K9 ["isChatGroupsApiEnabled"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["chatGroupApiEnabled"]
  GETTABLEKS R4 R3 K2 ["audioEnabled"]
  JUMPIFNOT R4 [+17]
  GETIMPORT R4 K11 [game]
  LOADK R6 K12 ["VoiceChatService"]
  NAMECALL R4 R4 K13 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K11 [game]
  LOADK R7 K14 ["ServiceVisibilityService"]
  NAMECALL R5 R5 K13 ["GetService"]
  CALL R5 2 1
  MOVE R8 R4
  LOADB R9 1
  NAMECALL R6 R5 K15 ["SetServiceVisibilityPreference"]
  CALL R6 3 0
  RETURN R3 1

PROTO_9:
  NEWTABLE R5 0 0
  JUMPIFEQKNIL R2 [+29]
  SETTABLEKS R2 R5 K0 ["optIn"]
  JUMPIFNOT R2 [+17]
  GETIMPORT R6 K2 [game]
  LOADK R8 K3 ["VoiceChatService"]
  NAMECALL R6 R6 K4 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K2 [game]
  LOADK R9 K5 ["ServiceVisibilityService"]
  NAMECALL R7 R7 K4 ["GetService"]
  CALL R7 2 1
  MOVE R10 R6
  LOADB R11 1
  NAMECALL R8 R7 K6 ["SetServiceVisibilityPreference"]
  CALL R8 3 0
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K7 ["voiceUniverseSettingsPOST"]
  CALL R6 3 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 0
  JUMPIFEQKNIL R3 [+11]
  SETTABLEKS R3 R5 K0 ["optIn"]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K9 ["avatarVideoUniverseSettingsPOST"]
  CALL R6 3 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 0
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+12]
  JUMPIFEQKNIL R4 [+11]
  SETTABLEKS R4 R5 K0 ["optIn"]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K10 ["chatGroupUniverseSettingsPOST"]
  CALL R6 3 1
  NAMECALL R6 R6 K8 ["await"]
  CALL R6 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagGameSettingsEnableChatGroupApiSetting"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  SETTABLEKS R2 R2 K8 ["__index"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K10 ["new"]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K12 ["voiceUniverseSettingsPOST"]
  DUPCLOSURE R3 K13 [PROTO_2]
  SETTABLEKS R3 R2 K14 ["avatarVideoUniverseSettingsPOST"]
  DUPCLOSURE R3 K15 [PROTO_3]
  SETTABLEKS R3 R2 K16 ["chatGroupUniverseSettingsPOST"]
  DUPCLOSURE R3 K17 [PROTO_4]
  SETTABLEKS R3 R2 K18 ["voiceUniverseSettingsGET"]
  DUPCLOSURE R3 K19 [PROTO_5]
  SETTABLEKS R3 R2 K20 ["voiceUserSettingsGET"]
  DUPCLOSURE R3 K21 [PROTO_6]
  SETTABLEKS R3 R2 K22 ["getAvatarChatEnabled"]
  DUPCLOSURE R3 K23 [PROTO_7]
  DUPCLOSURE R4 K24 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K25 ["getAvatarChatSettings"]
  DUPCLOSURE R4 K26 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K27 ["setAvatarChatSettings"]
  RETURN R2 1
