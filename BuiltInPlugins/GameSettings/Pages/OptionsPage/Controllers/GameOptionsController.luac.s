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
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["isUniverseEnabledForVoice"]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Src"]
       15 GETTABLEKS                       R4 R5 K6 ["Util"]
       17 GETTABLEKS                       R3 R4 K7 ["GameSettingsUtilities"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R1 R2 K8 ["isTeamCreateEnabled"]
       22 NEWTABLE                         R2 16 0
       24 SETTABLEKS                       R2 R2 K9 ["__index"]
       26 DUPCLOSURE                       R3 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R2 K11 ["new"]
       30 DUPCLOSURE                       R3 K12 [PROTO_1]
       31 SETTABLEKS                       R3 R2 K13 ["universesShutdownV2POST"]
       33 DUPCLOSURE                       R3 K14 [PROTO_2]
       34 SETTABLEKS                       R3 R2 K15 ["voiceUniverseSettingsPOST"]
       36 DUPCLOSURE                       R3 K16 [PROTO_3]
       37 SETTABLEKS                       R3 R2 K17 ["voiceUniverseSettingsGET"]
       39 DUPCLOSURE                       R3 K18 [PROTO_4]
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K19 ["getScriptCollaborationEnabledOnServer"]
       43 DUPCLOSURE                       R3 K20 [PROTO_5]
       44 SETTABLEKS                       R3 R2 K21 ["getScriptCollaborationEnabled"]
       46 DUPCLOSURE                       R3 K22 [PROTO_6]
       47 SETTABLEKS                       R3 R2 K23 ["setScriptCollaborationEnabled"]
       49 DUPCLOSURE                       R3 K24 [PROTO_7]
       50 SETTABLEKS                       R3 R2 K25 ["shutdownAllServers"]
       52 DUPCLOSURE                       R3 K26 [PROTO_8]
       53 SETTABLEKS                       R3 R2 K27 ["getVoiceChatEnabled"]
       55 DUPCLOSURE                       R3 K28 [PROTO_9]
       56 SETTABLEKS                       R3 R2 K29 ["setVoiceChatEnabled"]
       58 DUPCLOSURE                       R3 K30 [PROTO_10]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R3 R2 K31 ["getIsTeamCreateEnabled"]
       62 RETURN                           R2 1
