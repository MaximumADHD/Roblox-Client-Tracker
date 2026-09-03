PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R1 K7 [{["version"], ["startStateId"], ["currentState"] = , ["states"], ["transitions"]}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K8 ["CURRENT_VERSION"]
        9 SETTABLEKS                       R2 R1 K1 ["version"]
       11 SETTABLEKS                       R0 R1 K2 ["startStateId"]
       13 NEWTABLE                         R2 0 2
       15 DUPTABLE                         R3 K16 [{["id"], ["name"], ["position"], ["isStart"] = True, ["isAny"] = False}]
       16 SETTABLEKS                       R0 R3 K9 ["id"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K17 ["ENTRY_STATE_NAME"]
       21 SETTABLEKS                       R4 R3 K10 ["name"]
       23 DUPTABLE                         R4 K22 [{["x"] = -300, ["y"] = -10}]
       24 SETTABLEKS                       R4 R3 K11 ["position"]
       26 DUPTABLE                         R4 K23 [{["id"], ["name"], ["position"], ["isStart"] = False, ["isAny"] = True}]
       27 GETUPVAL                         R5 0
       28 LOADB                            R7 0
       29 NAMECALL                         R5 R5 K0 ["GenerateGUID"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K9 ["id"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K24 ["ANY_STATE_NAME"]
       37 SETTABLEKS                       R5 R4 K10 ["name"]
       39 DUPTABLE                         R5 K26 [{["x"] = -300, ["y"] = -110}]
       40 SETTABLEKS                       R5 R4 K11 ["position"]
       42 SETLIST                          R2 R3 2 [1]
       44 SETTABLEKS                       R2 R1 K5 ["states"]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K6 ["transitions"]
       50 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K5 [{"version", "startStateId", "currentState", "states", "transitions"}]
        1 GETTABLEKS                       R2 R0 K0 ["version"]
        3 SETTABLEKS                       R2 R1 K0 ["version"]
        5 GETTABLEKS                       R2 R0 K1 ["startStateId"]
        7 SETTABLEKS                       R2 R1 K1 ["startStateId"]
        9 GETTABLEKS                       R2 R0 K2 ["currentState"]
       11 SETTABLEKS                       R2 R1 K2 ["currentState"]
       13 GETIMPORT                        R2 K8 [table.clone]
       15 GETTABLEKS                       R3 R0 K3 ["states"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K3 ["states"]
       20 GETIMPORT                        R2 K8 [table.clone]
       22 GETTABLEKS                       R3 R0 K4 ["transitions"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K4 ["transitions"]
       27 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["states"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["id"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["transitions"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["id"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 MOVE                             R5 R3
        4 JUMPIF                           R5 ; [+5]
        5 GETUPVAL                         R5 1
        6 LOADB                            R7 0
        7 NAMECALL                         R5 R5 K0 ["GenerateGUID"]
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R7 R4 K1 ["states"]
       12 DUPTABLE                         R8 K8 [{["id"], ["name"], ["position"], ["isStart"] = False, ["isAny"] = False}]
       13 SETTABLEKS                       R5 R8 K2 ["id"]
       15 ORK                              R9 R1 K9 ["New State"]
       16 SETTABLEKS                       R9 R8 K3 ["name"]
       18 MOVE                             R9 R2
       19 JUMPIF                           R9 ; [+1]
       20 DUPTABLE                         R9 K13 [{["x"] = 0, ["y"] = 0}]
       21 SETTABLEKS                       R9 R8 K4 ["position"]
       23 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       25 GETIMPORT                        R6 K16 [table.insert]
       27 CALL                             R6 2 0
       28 RETURN                           R4 2

PROTO_6:
        0 MOVE                             R2 R1
        1 LOADB                            R3 1
        2 JUMPIFNOT                        R3 ; [+39]
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R0 K0 ["states"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETTABLEKS                       R9 R8 K1 ["position"]
       11 GETTABLEKS                       R9 R9 K2 ["x"]
       13 GETTABLEKS                       R10 R2 K2 ["x"]
       15 JUMPIFNOTEQ                      R9 R10 ; [+23]
       17 GETTABLEKS                       R9 R8 K1 ["position"]
       19 GETTABLEKS                       R9 R9 K3 ["y"]
       21 GETTABLEKS                       R10 R2 K3 ["y"]
       23 JUMPIFNOTEQ                      R9 R10 ; [+15]
       25 DUPTABLE                         R9 K4 [{"x", "y"}]
       26 GETTABLEKS                       R11 R2 K2 ["x"]
       28 ADDK                             R10 R11 K5 [20]
       29 SETTABLEKS                       R10 R9 K2 ["x"]
       31 GETTABLEKS                       R11 R2 K3 ["y"]
       33 SUBK                             R10 R11 K5 [20]
       34 SETTABLEKS                       R10 R9 K3 ["y"]
       36 MOVE                             R2 R9
       37 LOADB                            R3 1
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R4 2 ; [-31]
       41 JUMPBACK                         ; [-40]
       42 RETURN                           R2 1

PROTO_7:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["isStart"]
        3 JUMPIFEQKB                       R2 TRUE ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["isAny"]
        7 JUMPIFEQKB                       R2 TRUE ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R5 R4 K0 ["states"]
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R9 K1 ["id"]
       10 JUMPIFNOTEQ                      R10 R1 ; [+10]
       12 GETIMPORT                        R10 K4 [table.clone]
       14 MOVE                             R11 R9
       15 CALL                             R10 1 1
       16 SETTABLE                         R3 R10 R2
       17 GETTABLEKS                       R11 R4 K0 ["states"]
       19 SETTABLE                         R10 R11 R8
       20 RETURN                           R4 1
       21 FORGLOOP                         R5 2 ; [-14]
       23 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 ["position"]
        4 MOVE                             R7 R2
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 ["name"]
        4 MOVE                             R7 R2
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R2 K0 ["states"]
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K1 ["id"]
       12 JUMPIFEQ                         R9 R1 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       16 MOVE                             R10 R3
       17 MOVE                             R11 R8
       18 GETIMPORT                        R9 K4 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R4 2 ; [-12]
       23 SETTABLEKS                       R3 R2 K0 ["states"]
       25 NEWTABLE                         R4 0 0
       27 GETTABLEKS                       R5 R2 K5 ["transitions"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETTABLEKS                       R10 R9 K6 ["fromStateId"]
       34 JUMPIFEQ                         R10 R1 ; [+12]
       36 GETTABLEKS                       R10 R9 K7 ["toStateId"]
       38 JUMPIFEQ                         R10 R1 ; [+8]
       40 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       42 MOVE                             R11 R4
       43 MOVE                             R12 R9
       44 GETIMPORT                        R10 K4 [table.insert]
       46 CALL                             R10 2 0
       47 FORGLOOP                         R5 2 ; [-16]
       49 SETTABLEKS                       R4 R2 K5 ["transitions"]
       51 GETTABLEKS                       R5 R2 K8 ["startStateId"]
       53 JUMPIFNOTEQ                      R5 R1 ; [+4]
       55 LOADNIL                          R5
       56 SETTABLEKS                       R5 R2 K8 ["startStateId"]
       58 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["transitions"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K1 ["fromStateId"]
        7 JUMPIFNOTEQ                      R8 R1 ; [+7]
        9 GETTABLEKS                       R8 R7 K2 ["toStateId"]
       11 JUMPIFNOTEQ                      R8 R2 ; [+3]
       13 LOADB                            R8 1
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 ; [-11]
       17 LOADB                            R3 0
       18 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["transitions"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["fromStateId"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+3]
        9 LOADB                            R7 1
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-7]
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["transitions"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K1 ["fromStateId"]
        7 JUMPIFNOTEQ                      R8 R1 ; [+9]
        9 GETTABLEKS                       R8 R7 K2 ["toStateId"]
       11 JUMPIFNOTEQ                      R8 R2 ; [+5]
       13 MOVE                             R8 R0
       14 GETTABLEKS                       R9 R7 K3 ["id"]
       16 RETURN                           R8 2
       17 FORGLOOP                         R3 2 ; [-13]
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 LOADB                            R6 0
       24 NAMECALL                         R4 R4 K4 ["GenerateGUID"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K7 [table.clone]
       29 GETUPVAL                         R6 2
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R4 R5 K3 ["id"]
       33 SETTABLEKS                       R1 R5 K1 ["fromStateId"]
       35 SETTABLEKS                       R2 R5 K2 ["toStateId"]
       37 GETTABLEKS                       R7 R3 K0 ["transitions"]
       39 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       41 MOVE                             R8 R5
       42 GETIMPORT                        R6 K9 [table.insert]
       44 CALL                             R6 2 0
       45 RETURN                           R3 2

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R2 K0 ["transitions"]
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K1 ["id"]
       12 JUMPIFEQ                         R9 R1 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       16 MOVE                             R10 R3
       17 MOVE                             R11 R8
       18 GETIMPORT                        R9 K4 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R4 2 ; [-12]
       23 SETTABLEKS                       R3 R2 K0 ["transitions"]
       25 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R5 R4 K0 ["transitions"]
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R9 K1 ["id"]
       10 JUMPIFNOTEQ                      R10 R1 ; [+10]
       12 GETIMPORT                        R10 K4 [table.clone]
       14 MOVE                             R11 R9
       15 CALL                             R10 1 1
       16 SETTABLE                         R3 R10 R2
       17 GETTABLEKS                       R11 R4 K0 ["transitions"]
       19 SETTABLE                         R10 R11 R8
       20 RETURN                           R4 1
       21 FORGLOOP                         R5 2 ; [-14]
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Data"]
       17 GETTABLEKS                       R3 R3 K11 ["StateMachineTypes"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 32 0
       22 LOADN                            R4 1
       23 SETTABLEKS                       R4 R3 K12 ["CURRENT_VERSION"]
       25 LOADK                            R4 K13 ["(Entry)"]
       26 SETTABLEKS                       R4 R3 K14 ["ENTRY_STATE_NAME"]
       28 LOADK                            R4 K15 ["(Any)"]
       29 SETTABLEKS                       R4 R3 K16 ["ANY_STATE_NAME"]
       31 DUPTABLE                         R4 K24 [{["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = ""}]
       32 GETIMPORT                        R5 K28 [Enum.PoseEasingStyle.Linear]
       34 SETTABLEKS                       R5 R4 K19 ["Curve"]
       36 DUPCLOSURE                       R5 K29 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 DUPCLOSURE                       R6 K30 [PROTO_1]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R6 R3 K31 ["getDefault"]
       43 DUPCLOSURE                       R7 K32 [PROTO_2]
       44 DUPCLOSURE                       R8 K33 [PROTO_3]
       45 SETTABLEKS                       R8 R3 K34 ["getState"]
       47 DUPCLOSURE                       R8 K35 [PROTO_4]
       48 SETTABLEKS                       R8 R3 K36 ["getTransition"]
       50 DUPCLOSURE                       R8 K37 [PROTO_5]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R8 R3 K38 ["addState"]
       55 DUPCLOSURE                       R8 K39 [PROTO_6]
       56 SETTABLEKS                       R8 R3 K40 ["findFreePosition"]
       58 DUPCLOSURE                       R8 K41 [PROTO_7]
       59 SETTABLEKS                       R8 R3 K42 ["isSynthetic"]
       61 DUPCLOSURE                       R8 K43 [PROTO_8]
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R9 K44 [PROTO_9]
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R9 R3 K45 ["moveState"]
       67 DUPCLOSURE                       R9 K46 [PROTO_10]
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R9 R3 K47 ["renameState"]
       71 DUPCLOSURE                       R9 K48 [PROTO_11]
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R9 R3 K49 ["deleteState"]
       75 DUPCLOSURE                       R9 K50 [PROTO_12]
       76 SETTABLEKS                       R9 R3 K51 ["hasTransition"]
       78 DUPCLOSURE                       R9 K52 [PROTO_13]
       79 SETTABLEKS                       R9 R3 K53 ["hasOutgoingTransition"]
       81 DUPCLOSURE                       R9 K54 [PROTO_14]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R9 R3 K55 ["addTransition"]
       87 DUPCLOSURE                       R9 K56 [PROTO_15]
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R9 R3 K57 ["deleteTransition"]
       91 DUPCLOSURE                       R9 K58 [PROTO_16]
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R9 R3 K59 ["setTransitionField"]
       95 RETURN                           R3 1
