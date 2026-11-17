PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
        0 LOADK                            R4 K0 ["StudioData"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["EnableScriptCollabByDefaultOnLoad"]
        6 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R5 K0 ["StudioData"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["EnableScriptCollabByDefaultOnLoad"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K1 [game]
        7 LOADK                            R4 K2 ["CollaboratorsService"]
        8 NAMECALL                         R2 R2 K3 ["GetService"]
       10 CALL                             R2 2 1
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R2 K4 ["ToggleTeamCreate"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["GameSettingsUtilities"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R1 R1 K8 ["isTeamCreateEnabled"]
       20 NEWTABLE                         R2 8 0
       22 SETTABLEKS                       R2 R2 K9 ["__index"]
       24 DUPCLOSURE                       R3 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K11 ["new"]
       28 DUPCLOSURE                       R3 K12 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R3 R2 K13 ["getScriptCollaborationEnabledOnServer"]
       32 DUPCLOSURE                       R3 K14 [PROTO_2]
       33 SETTABLEKS                       R3 R2 K15 ["getScriptCollaborationEnabled"]
       35 DUPCLOSURE                       R3 K16 [PROTO_3]
       36 SETTABLEKS                       R3 R2 K17 ["setScriptCollaborationEnabled"]
       38 DUPCLOSURE                       R3 K18 [PROTO_4]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K19 ["getIsTeamCreateEnabled"]
       42 DUPCLOSURE                       R3 K20 [PROTO_5]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R3 R2 K21 ["setIsTeamCreateEnabled"]
       46 RETURN                           R2 1
