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
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/shutdown"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 NEWTABLE                         R8 0 0
       10 SETTABLEKS                       R8 R7 K4 ["Body"]
       12 NAMECALL                         R3 R2 K6 ["post"]
       14 CALL                             R3 4 -1
       15 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["voice"]
        3 LOADK                            R8 K2 ["/v1/settings/universe/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Body"}]
        7 DUPTABLE                         R9 K6 [{"optIn"}]
        8 SETTABLEKS                       R2 R9 K5 ["optIn"]
       10 SETTABLEKS                       R9 R8 K3 ["Body"]
       12 NAMECALL                         R4 R3 K7 ["post"]
       14 CALL                             R4 4 -1
       15 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["voice"]
        3 LOADK                            R7 K2 ["/v1/settings/universe/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 LOADK                            R4 K0 ["VersionControlService"]
        6 NAMECALL                         R2 R1 K1 ["GetService"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R2 K2 ["ScriptCollabEnabled"]
       11 RETURN                           R3 1

PROTO_5:
        0 LOADK                            R4 K0 ["StudioData"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["EnableScriptCollabByDefaultOnLoad"]
        6 RETURN                           R3 1

PROTO_6:
        0 LOADK                            R5 K0 ["StudioData"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["EnableScriptCollabByDefaultOnLoad"]
        6 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["universesShutdownV2POST"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["voiceUniverseSettingsGET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["isUniverseEnabledForVoice"]
       11 RETURN                           R3 1

PROTO_9:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["voiceUniverseSettingsPOST"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOTEQ                      R2 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R2 K1 [game]
       10 LOADK                            R4 K2 ["CollaboratorsService"]
       11 NAMECALL                         R2 R2 K3 ["GetService"]
       13 CALL                             R2 2 1
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K4 ["ToggleTeamCreate"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["GameSettingsUtilities"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R1 R1 K8 ["isTeamCreateEnabled"]
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K9 ["Flags"]
       28 GETTABLEKS                       R3 R3 K10 ["getFFlagPruneGameSettings"]
       30 CALL                             R2 1 1
       31 CALL                             R2 0 1
       32 NEWTABLE                         R3 16 0
       34 SETTABLEKS                       R3 R3 K11 ["__index"]
       36 DUPCLOSURE                       R4 K12 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R4 R3 K13 ["new"]
       40 DUPCLOSURE                       R4 K14 [PROTO_1]
       41 SETTABLEKS                       R4 R3 K15 ["universesShutdownV2POST"]
       43 DUPCLOSURE                       R4 K16 [PROTO_2]
       44 SETTABLEKS                       R4 R3 K17 ["voiceUniverseSettingsPOST"]
       46 DUPCLOSURE                       R4 K18 [PROTO_3]
       47 SETTABLEKS                       R4 R3 K19 ["voiceUniverseSettingsGET"]
       49 DUPCLOSURE                       R4 K20 [PROTO_4]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R4 R3 K21 ["getScriptCollaborationEnabledOnServer"]
       53 DUPCLOSURE                       R4 K22 [PROTO_5]
       54 SETTABLEKS                       R4 R3 K23 ["getScriptCollaborationEnabled"]
       56 DUPCLOSURE                       R4 K24 [PROTO_6]
       57 SETTABLEKS                       R4 R3 K25 ["setScriptCollaborationEnabled"]
       59 DUPCLOSURE                       R4 K26 [PROTO_7]
       60 SETTABLEKS                       R4 R3 K27 ["shutdownAllServers"]
       62 DUPCLOSURE                       R4 K28 [PROTO_8]
       63 SETTABLEKS                       R4 R3 K29 ["getVoiceChatEnabled"]
       65 DUPCLOSURE                       R4 K30 [PROTO_9]
       66 SETTABLEKS                       R4 R3 K31 ["setVoiceChatEnabled"]
       68 DUPCLOSURE                       R4 K32 [PROTO_10]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R4 R3 K33 ["getIsTeamCreateEnabled"]
       72 DUPCLOSURE                       R4 K34 [PROTO_11]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R4 R3 K35 ["setIsTeamCreateEnabled"]
       77 RETURN                           R3 1
