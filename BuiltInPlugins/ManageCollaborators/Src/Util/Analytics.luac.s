PROTO_0:
        0 DUPTABLE                         R0 K3 [{"studioSid", "placeId", "machineTimeStamp"}]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K4 ["GetSessionId"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["studioSid"]
        7 GETIMPORT                        R1 K6 [game]
        9 GETTABLEKS                       R1 R1 K7 ["PlaceId"]
       11 SETTABLEKS                       R1 R0 K1 ["placeId"]
       13 GETIMPORT                        R1 K10 [os.time]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K2 ["machineTimeStamp"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETGLOBAL                        R0 K0 ["getCommonArgs"]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K1 ["isTeamCreate"]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["studio"]
        9 LOADK                            R4 K3 ["ManageCollaborators"]
       10 LOADK                            R5 K4 ["CollaborateButtonPressed"]
       11 MOVE                             R6 R0
       12 NAMECALL                         R1 R1 K5 ["SendEventDeferred"]
       14 CALL                             R1 5 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETGLOBAL                        R0 K0 ["getCommonArgs"]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K1 ["studio"]
        5 LOADK                            R4 K2 ["ManageCollaborators"]
        6 LOADK                            R5 K3 ["SaveToRobloxPressed"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R1 R1 K4 ["SendEventDeferred"]
       10 CALL                             R1 5 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETGLOBAL                        R1 K0 ["getCommonArgs"]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K1 ["isTeamCreate"]
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADK                            R2 K2 ["group"]
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K3 ["user"]
       11 SETTABLEKS                       R2 R1 K4 ["gameType"]
       13 GETUPVAL                         R2 1
       14 LOADK                            R4 K5 ["studio"]
       15 LOADK                            R5 K6 ["ManageCollaborators"]
       16 LOADK                            R6 K7 ["CancelButtonPressed"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R2 R2 K8 ["SendEventDeferred"]
       20 CALL                             R2 5 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 1
        6 FASTCALL1                        ASSERT R3 ; [+2]
        7 GETIMPORT                        R2 K1 [assert]
        9 CALL                             R2 1 0
       10 GETGLOBAL                        R2 K2 ["getCommonArgs"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R0 R2 K3 ["currentPermission"]
       15 SETTABLEKS                       R1 R2 K4 ["availablePermissions"]
       17 GETUPVAL                         R3 2
       18 LOADK                            R5 K5 ["studio"]
       19 LOADK                            R6 K6 ["ManageCollaborators"]
       20 LOADK                            R7 K7 ["MissingPermission"]
       21 MOVE                             R8 R2
       22 NAMECALL                         R3 R3 K8 ["SendEventDeferred"]
       24 CALL                             R3 5 0
       25 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 [""]
        1 LOADK                            R4 K0 [""]
        2 LOADK                            R5 K0 [""]
        3 LOADK                            R6 K0 [""]
        4 MOVE                             R7 R1
        5 LOADNIL                          R8
        6 LOADNIL                          R9
        7 FORGPREP                         R7
        8 FASTCALL1                        STRING_LEN R3 ; [+3]
        9 MOVE                             R13 R3
       10 GETIMPORT                        R12 K3 [string.len]
       12 CALL                             R12 1 1
       13 LOADN                            R13 0
       14 JUMPIFNOTLT                      R13 R12 ; [+13]
       16 MOVE                             R12 R3
       17 LOADK                            R13 K4 [","]
       18 CONCAT                           R3 R12 R13
       19 MOVE                             R12 R4
       20 LOADK                            R13 K4 [","]
       21 CONCAT                           R4 R12 R13
       22 MOVE                             R12 R5
       23 LOADK                            R13 K4 [","]
       24 CONCAT                           R5 R12 R13
       25 MOVE                             R12 R6
       26 LOADK                            R13 K4 [","]
       27 CONCAT                           R6 R12 R13
       28 MOVE                             R12 R3
       29 LOADK                            R13 K5 ["add"]
       30 CONCAT                           R3 R12 R13
       31 MOVE                             R12 R4
       32 GETTABLEKS                       R13 R11 K6 ["subjectId"]
       34 CONCAT                           R4 R12 R13
       35 MOVE                             R12 R5
       36 GETTABLEKS                       R13 R11 K7 ["action"]
       38 CONCAT                           R5 R12 R13
       39 MOVE                             R12 R6
       40 GETTABLEKS                       R13 R11 K8 ["subjectType"]
       42 CONCAT                           R6 R12 R13
       43 FORGLOOP                         R7 2 ; [-36]
       45 MOVE                             R7 R2
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 FASTCALL1                        STRING_LEN R3 ; [+3]
       50 MOVE                             R13 R3
       51 GETIMPORT                        R12 K3 [string.len]
       53 CALL                             R12 1 1
       54 LOADN                            R13 0
       55 JUMPIFNOTLT                      R13 R12 ; [+13]
       57 MOVE                             R12 R3
       58 LOADK                            R13 K4 [","]
       59 CONCAT                           R3 R12 R13
       60 MOVE                             R12 R4
       61 LOADK                            R13 K4 [","]
       62 CONCAT                           R4 R12 R13
       63 MOVE                             R12 R5
       64 LOADK                            R13 K4 [","]
       65 CONCAT                           R5 R12 R13
       66 MOVE                             R12 R6
       67 LOADK                            R13 K4 [","]
       68 CONCAT                           R6 R12 R13
       69 MOVE                             R12 R3
       70 LOADK                            R13 K9 ["delete"]
       71 CONCAT                           R3 R12 R13
       72 MOVE                             R12 R4
       73 GETTABLEKS                       R13 R11 K6 ["subjectId"]
       75 CONCAT                           R4 R12 R13
       76 MOVE                             R12 R5
       77 GETTABLEKS                       R13 R11 K7 ["action"]
       79 CONCAT                           R5 R12 R13
       80 MOVE                             R12 R6
       81 GETTABLEKS                       R13 R11 K8 ["subjectType"]
       83 CONCAT                           R6 R12 R13
       84 FORGLOOP                         R7 2 ; [-36]
       86 GETGLOBAL                        R7 K10 ["getCommonArgs"]
       88 CALL                             R7 0 1
       89 GETUPVAL                         R8 0
       90 CALL                             R8 0 1
       91 SETTABLEKS                       R8 R7 K11 ["isTeamCreate"]
       93 JUMPIFNOT                        R0 ; [+2]
       94 LOADK                            R8 K12 ["group"]
       95 JUMP                             ; [+1]
       96 LOADK                            R8 K13 ["user"]
       97 SETTABLEKS                       R8 R7 K14 ["gameType"]
       99 SETTABLEKS                       R3 R7 K15 ["actions"]
      101 SETTABLEKS                       R4 R7 K16 ["ids_str"]
      103 SETTABLEKS                       R5 R7 K17 ["permissionLevels"]
      105 SETTABLEKS                       R6 R7 K18 ["types"]
      107 GETUPVAL                         R8 1
      108 LOADK                            R10 K19 ["studio"]
      109 LOADK                            R11 K20 ["ManageCollaborators"]
      110 LOADK                            R12 K21 ["SaveCollaboratorsButtonPressed"]
      111 MOVE                             R13 R7
      112 NAMECALL                         R8 R8 K22 ["SendEventDeferred"]
      114 CALL                             R8 5 0
      115 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab7855_HandleUnknownPermission2"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Collab7855_LogUnknownPermissions"]
       10 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["IsTeamCreateEnabled"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K1 [game]
       32 LOADK                            R6 K13 ["RbxAnalyticsService"]
       33 NAMECALL                         R4 R4 K14 ["GetService"]
       35 CALL                             R4 2 1
       36 DUPCLOSURE                       R5 K15 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 SETGLOBAL                        R5 K16 ["getCommonArgs"]
       40 NEWTABLE                         R5 8 0
       42 DUPCLOSURE                       R6 K17 [PROTO_1]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R6 R5 K18 ["reportCollaborateButtonPressed"]
       47 DUPCLOSURE                       R6 K19 [PROTO_2]
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R6 R5 K20 ["reportSaveToRobloxPressed"]
       51 DUPCLOSURE                       R6 K21 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R6 R5 K22 ["reportCancelPressed"]
       56 DUPCLOSURE                       R6 K23 [PROTO_4]
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R5 K24 ["reportUnknownPermission"]
       62 DUPCLOSURE                       R6 K25 [PROTO_5]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R6 R5 K26 ["reportSaveCollaboratorsPressed"]
       67 RETURN                           R5 1
