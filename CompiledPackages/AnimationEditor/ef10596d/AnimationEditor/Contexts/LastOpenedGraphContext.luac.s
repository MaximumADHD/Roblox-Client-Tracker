PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R3 0 1
        2 DUPTABLE                         R4 K2 [{"placeUUID", "graphId"}]
        3 SETTABLEKS                       R1 R4 K0 ["placeUUID"]
        5 SETTABLEKS                       R2 R4 K1 ["graphId"]
        7 SETLIST                          R3 R4 1 [1]
        9 MOVE                             R4 R0
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K0 ["placeUUID"]
       15 JUMPIFEQ                         R9 R1 ; [+8]
       17 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       19 MOVE                             R10 R3
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K5 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-12]
       26 LENGTH                           R4 R3
       27 LOADN                            R5 10
       28 JUMPIFNOTLT                      R5 R4 ; [+5]
       30 GETIMPORT                        R4 K7 [table.remove]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 -1
        5 FASTCALL                         TOSTRING ; [+2]
        6 GETIMPORT                        R0 K2 [tostring]
        8 CALL                             R0 -1 1
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["placeUUID"]
        6 GETUPVAL                         R6 1
        7 JUMPIFNOTEQ                      R5 R6 ; [+30]
        9 GETTABLEKS                       R6 R4 K1 ["graphId"]
       11 FASTCALL1                        TYPEOF R6 ; [+2]
       12 GETIMPORT                        R5 K3 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+5]
       17 GETTABLEKS                       R5 R4 K1 ["graphId"]
       19 JUMPIFNOTEQKS                    R5 K5 [""] ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R7 R4 K1 ["graphId"]
       26 NAMECALL                         R5 R5 K6 ["GetInstanceByRfc4122String"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+6]
       30 LOADK                            R8 K7 ["AnimationGraphDefinition"]
       31 NAMECALL                         R6 R5 K8 ["IsA"]
       33 CALL                             R6 2 1
       34 JUMPIFNOT                        R6 ; [+1]
       35 RETURN                           R5 1
       36 LOADNIL                          R6
       37 RETURN                           R6 1
       38 FORGLOOP                         R0 2 ; [-35]
       40 LOADNIL                          R0
       41 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K0 ["GetOrCreateUniqueId"]
        7 CALL                             R2 2 -1
        8 FASTCALL                         TOSTRING ; [+2]
        9 GETIMPORT                        R1 K2 [tostring]
       11 CALL                             R1 -1 1
       12 GETUPVAL                         R2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K2 [{"lastOpenedGraph", "setLastOpenedGraph"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["lastOpenedGraph"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setLastOpenedGraph"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 3
       10 LOADK                            R3 K2 ["lastOpenedGraphHistory"]
       11 NEWTABLE                         R4 0 0
       13 GETUPVAL                         R5 4
       14 GETUPVAL                         R6 5
       15 CALL                             R2 4 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 NEWTABLE                         R6 0 2
       25 MOVE                             R7 R2
       26 MOVE                             R8 R1
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R7 0 2
       40 MOVE                             R8 R3
       41 MOVE                             R9 R1
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       48 NEWCLOSURE                       R7 P3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R8 0 2
       53 MOVE                             R9 R4
       54 MOVE                             R10 R5
       55 SETLIST                          R8 R9 2 [1]
       57 CALL                             R6 2 1
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K4 ["createElement"]
       61 GETUPVAL                         R8 7
       62 GETTABLEKS                       R8 R8 K5 ["Provider"]
       64 DUPTABLE                         R9 K7 [{"value"}]
       65 SETTABLEKS                       R6 R9 K6 ["value"]
       67 GETTABLEKS                       R10 R0 K8 ["children"]
       69 CALL                             R7 3 -1
       70 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["UniqueIdLookupService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Workspace"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       37 GETTABLEKS                       R6 R6 K15 ["usePluginSetting"]
       39 CALL                             R5 1 1
       40 DUPTABLE                         R6 K19 [{["lastOpenedGraph"] = , ["setLastOpenedGraph"]}]
       41 GETTABLEKS                       R7 R4 K20 ["createUnimplemented"]
       43 LOADK                            R8 K18 ["setLastOpenedGraph"]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K18 ["setLastOpenedGraph"]
       47 GETTABLEKS                       R7 R3 K21 ["createContext"]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K22 [PROTO_0]
       52 DUPCLOSURE                       R9 K23 [PROTO_1]
       53 DUPCLOSURE                       R10 K24 [PROTO_2]
       54 DUPCLOSURE                       R11 K25 [PROTO_8]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 DUPTABLE                         R12 K29 [{"Context", "EditableDataModelProvider", "test"}]
       64 SETTABLEKS                       R7 R12 K26 ["Context"]
       66 SETTABLEKS                       R11 R12 K27 ["EditableDataModelProvider"]
       68 DUPTABLE                         R13 K33 [{["insertEntry"], ["MAX_HISTORY_LENGTH"] = 10}]
       69 SETTABLEKS                       R10 R13 K30 ["insertEntry"]
       71 SETTABLEKS                       R13 R12 K28 ["test"]
       73 RETURN                           R12 1
