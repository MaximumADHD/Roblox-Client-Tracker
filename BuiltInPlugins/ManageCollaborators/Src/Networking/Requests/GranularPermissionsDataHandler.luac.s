PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+11]
        2 DUPTABLE                         R1 K2 [{"permissions"}]
        3 NEWTABLE                         R2 1 0
        5 GETUPVAL                         R4 0
        6 GETTABLEN                        R3 R4 1
        7 DUPTABLE                         R4 K5 [{["isGranted"] = False}]
        8 SETTABLE                         R4 R2 R3
        9 SETTABLEKS                       R2 R1 K1 ["permissions"]
       11 RETURN                           R1 1
       12 DUPTABLE                         R1 K2 [{"permissions"}]
       13 NEWTABLE                         R2 1 0
       15 DUPTABLE                         R3 K7 [{["isGranted"] = True}]
       16 SETTABLE                         R3 R2 R0
       17 SETTABLEKS                       R2 R1 K1 ["permissions"]
       19 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["permissions"]
        2 LOADK                            R5 K1 ["None"]
        3 NEWTABLE                         R6 0 1
        5 LOADK                            R7 K1 ["None"]
        6 SETLIST                          R6 R7 1 [1]
        8 GETUPVAL                         R7 0
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLE                         R12 R4 R11
       13 GETTABLEKS                       R12 R12 K2 ["isGranted"]
       15 JUMPIFNOT                        R12 ; [+9]
       16 MOVE                             R5 R11
       17 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       19 MOVE                             R13 R6
       20 MOVE                             R14 R11
       21 GETIMPORT                        R12 K5 [table.insert]
       23 CALL                             R12 2 0
       24 JUMP                             ; [+11]
       25 GETTABLE                         R12 R4 R11
       26 GETTABLEKS                       R12 R12 K6 ["canEdit"]
       28 JUMPIFNOT                        R12 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       31 MOVE                             R13 R6
       32 MOVE                             R14 R11
       33 GETIMPORT                        R12 K5 [table.insert]
       35 CALL                             R12 2 0
       36 FORGLOOP                         R7 2 ; [-25]
       38 NEWTABLE                         R7 8 0
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K7 ["SubjectNameKey"]
       43 GETTABLEKS                       R9 R1 K8 ["name"]
       45 SETTABLE                         R9 R7 R8
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K9 ["GroupNameKey"]
       49 SETTABLE                         R2 R7 R8
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K10 ["SubjectIdKey"]
       53 GETTABLEKS                       R9 R1 K11 ["id"]
       55 SETTABLE                         R9 R7 R8
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K12 ["SubjectIconColor"]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R11 R1 K13 ["color"]
       62 GETTABLE                         R9 R10 R11
       63 JUMPIF                           R9 ; [+3]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K14 ["default"]
       67 SETTABLE                         R9 R7 R8
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K15 ["ActionKey"]
       71 SETTABLE                         R5 R7 R8
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K16 ["IsEditableKey"]
       75 SETTABLE                         R3 R7 R8
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K17 ["AvailableActionsKey"]
       79 SETTABLE                         R6 R7 R8
       80 RETURN                           R7 1

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
       17 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETIMPORT                        R3 K1 [script]
       24 GETTABLEKS                       R3 R3 K2 ["Parent"]
       26 GETTABLEKS                       R3 R3 K8 ["Constants"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R2 R2 K9 ["granularCollaboratorColorsMap"]
       31 NEWTABLE                         R3 0 3
       33 LOADK                            R4 K10 ["Universe.GranularPlayer"]
       34 LOADK                            R5 K11 ["Universe.GranularEditor"]
       35 LOADK                            R6 K12 ["Universe.GranularPublisher"]
       36 SETLIST                          R3 R4 3 [1]
       38 NEWTABLE                         R4 2 0
       40 DUPCLOSURE                       R5 K13 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K14 ["toRequestBody"]
       44 DUPCLOSURE                       R5 K15 [PROTO_1]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R5 R4 K16 ["fromResponseBody"]
       50 RETURN                           R4 1
