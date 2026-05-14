PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["voice"]
        3 LOADK                            R8 K2 ["/v1/settings/universe/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Body"}]
        7 SETTABLEKS                       R2 R8 K3 ["Body"]
        9 NAMECALL                         R4 R3 K5 ["post"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["voice"]
        3 LOADK                            R8 K2 ["/v1/settings/universe/avatarvideo/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Body"}]
        7 SETTABLEKS                       R2 R8 K3 ["Body"]
        9 NAMECALL                         R4 R3 K5 ["post"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["voice"]
        3 LOADK                            R8 K2 ["/v1/settings/universe/chat-group-api/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Body"}]
        7 SETTABLEKS                       R2 R8 K3 ["Body"]
        9 NAMECALL                         R4 R3 K5 ["post"]
       11 CALL                             R4 4 1
       12 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["voice"]
        3 LOADK                            R7 K2 ["/v1/settings/universe/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["voice"]
        3 LOADK                            R5 K2 ["/v1/settings"]
        4 NAMECALL                         R2 R1 K3 ["get"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["voiceUserSettingsGET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R2 R2 K3 ["isAvatarChatEnabled"]
       10 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["VoiceChatService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K1 [game]
        8 LOADK                            R3 K4 ["ServiceVisibilityService"]
        9 NAMECALL                         R1 R1 K3 ["GetService"]
       11 CALL                             R1 2 1
       12 MOVE                             R4 R0
       13 LOADB                            R5 1
       14 NAMECALL                         R2 R1 K5 ["SetServiceVisibilityPreference"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["voiceUniverseSettingsGET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 DUPTABLE                         R3 K5 [{"audioEnabled", "videoEnabled", "chatGroupApiEnabled"}]
        8 GETTABLEKS                       R4 R2 K6 ["responseBody"]
       10 GETTABLEKS                       R4 R4 K7 ["isUniverseEnabledForVoice"]
       12 SETTABLEKS                       R4 R3 K2 ["audioEnabled"]
       14 GETTABLEKS                       R4 R2 K6 ["responseBody"]
       16 GETTABLEKS                       R4 R4 K8 ["isUniverseEnabledForAvatarVideo"]
       18 SETTABLEKS                       R4 R3 K3 ["videoEnabled"]
       20 GETUPVAL                         R5 0
       21 CALL                             R5 0 1
       22 JUMPIFNOT                        R5 ; [+5]
       23 GETTABLEKS                       R4 R2 K6 ["responseBody"]
       25 GETTABLEKS                       R4 R4 K9 ["isChatGroupsApiEnabled"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K4 ["chatGroupApiEnabled"]
       31 GETTABLEKS                       R4 R3 K2 ["audioEnabled"]
       33 JUMPIFNOT                        R4 ; [+17]
       34 GETIMPORT                        R4 K11 [game]
       36 LOADK                            R6 K12 ["VoiceChatService"]
       37 NAMECALL                         R4 R4 K13 ["GetService"]
       39 CALL                             R4 2 1
       40 GETIMPORT                        R5 K11 [game]
       42 LOADK                            R7 K14 ["ServiceVisibilityService"]
       43 NAMECALL                         R5 R5 K13 ["GetService"]
       45 CALL                             R5 2 1
       46 MOVE                             R8 R4
       47 LOADB                            R9 1
       48 NAMECALL                         R6 R5 K15 ["SetServiceVisibilityPreference"]
       50 CALL                             R6 3 0
       51 RETURN                           R3 1

PROTO_9:
        0 NEWTABLE                         R5 0 0
        2 JUMPIFEQKNIL                     R2 ; [+29]
        4 SETTABLEKS                       R2 R5 K0 ["optIn"]
        6 JUMPIFNOT                        R2 ; [+17]
        7 GETIMPORT                        R6 K2 [game]
        9 LOADK                            R8 K3 ["VoiceChatService"]
       10 NAMECALL                         R6 R6 K4 ["GetService"]
       12 CALL                             R6 2 1
       13 GETIMPORT                        R7 K2 [game]
       15 LOADK                            R9 K5 ["ServiceVisibilityService"]
       16 NAMECALL                         R7 R7 K4 ["GetService"]
       18 CALL                             R7 2 1
       19 MOVE                             R10 R6
       20 LOADB                            R11 1
       21 NAMECALL                         R8 R7 K6 ["SetServiceVisibilityPreference"]
       23 CALL                             R8 3 0
       24 MOVE                             R8 R1
       25 MOVE                             R9 R5
       26 NAMECALL                         R6 R0 K7 ["voiceUniverseSettingsPOST"]
       28 CALL                             R6 3 1
       29 NAMECALL                         R6 R6 K8 ["await"]
       31 CALL                             R6 1 0
       32 JUMPIFEQKNIL                     R3 ; [+11]
       34 SETTABLEKS                       R3 R5 K0 ["optIn"]
       36 MOVE                             R8 R1
       37 MOVE                             R9 R5
       38 NAMECALL                         R6 R0 K9 ["avatarVideoUniverseSettingsPOST"]
       40 CALL                             R6 3 1
       41 NAMECALL                         R6 R6 K8 ["await"]
       43 CALL                             R6 1 0
       44 GETUPVAL                         R6 0
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+12]
       47 JUMPIFEQKNIL                     R4 ; [+11]
       49 SETTABLEKS                       R4 R5 K0 ["optIn"]
       51 MOVE                             R8 R1
       52 MOVE                             R9 R5
       53 NAMECALL                         R6 R0 K10 ["chatGroupUniverseSettingsPOST"]
       55 CALL                             R6 3 1
       56 NAMECALL                         R6 R6 K8 ["await"]
       58 CALL                             R6 1 0
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagGameSettingsEnableChatGroupApiSetting"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 16 0
       22 SETTABLEKS                       R2 R2 K8 ["__index"]
       24 DUPCLOSURE                       R3 K9 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K10 ["new"]
       28 DUPCLOSURE                       R3 K11 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K12 ["voiceUniverseSettingsPOST"]
       31 DUPCLOSURE                       R3 K13 [PROTO_2]
       32 SETTABLEKS                       R3 R2 K14 ["avatarVideoUniverseSettingsPOST"]
       34 DUPCLOSURE                       R3 K15 [PROTO_3]
       35 SETTABLEKS                       R3 R2 K16 ["chatGroupUniverseSettingsPOST"]
       37 DUPCLOSURE                       R3 K17 [PROTO_4]
       38 SETTABLEKS                       R3 R2 K18 ["voiceUniverseSettingsGET"]
       40 DUPCLOSURE                       R3 K19 [PROTO_5]
       41 SETTABLEKS                       R3 R2 K20 ["voiceUserSettingsGET"]
       43 DUPCLOSURE                       R3 K21 [PROTO_6]
       44 SETTABLEKS                       R3 R2 K22 ["getAvatarChatEnabled"]
       46 DUPCLOSURE                       R3 K23 [PROTO_7]
       47 DUPCLOSURE                       R4 K24 [PROTO_8]
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R4 R2 K25 ["getAvatarChatSettings"]
       51 DUPCLOSURE                       R4 K26 [PROTO_9]
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R4 R2 K27 ["setAvatarChatSettings"]
       55 RETURN                           R2 1
