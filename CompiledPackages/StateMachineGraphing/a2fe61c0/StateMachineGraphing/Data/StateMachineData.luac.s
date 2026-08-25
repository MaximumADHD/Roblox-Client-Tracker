PROTO_0:
        0 LOADK                            R2 K0 ["%*_%*"]
        1 MOVE                             R4 R0
        2 GETUPVAL                         R5 0
        3 LOADB                            R7 0
        4 NAMECALL                         R5 R5 K1 ["GenerateGUID"]
        6 CALL                             R5 2 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 ["state_%*"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 DUPTABLE                         R1 K9 [{["version"], ["startStateId"], ["currentState"] = , ["states"], ["transitions"]}]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K10 ["CURRENT_VERSION"]
       14 SETTABLEKS                       R2 R1 K3 ["version"]
       16 SETTABLEKS                       R0 R1 K4 ["startStateId"]
       18 NEWTABLE                         R2 0 2
       20 DUPTABLE                         R3 K19 [{["id"], ["name"] = "(Entry)", ["position"], ["isStart"] = True, ["isAny"] = False}]
       21 SETTABLEKS                       R0 R3 K11 ["id"]
       23 DUPTABLE                         R4 K24 [{["x"] = -300, ["y"] = -10}]
       24 SETTABLEKS                       R4 R3 K14 ["position"]
       26 DUPTABLE                         R4 K26 [{["id"], ["name"] = "(Any)", ["position"], ["isStart"] = False, ["isAny"] = True}]
       27 LOADK                            R6 K0 ["state_%*"]
       28 GETUPVAL                         R8 0
       29 LOADB                            R10 0
       30 NAMECALL                         R8 R8 K1 ["GenerateGUID"]
       32 CALL                             R8 2 1
       33 NAMECALL                         R6 R6 K2 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 SETTABLEKS                       R5 R4 K11 ["id"]
       39 DUPTABLE                         R5 K28 [{["x"] = -300, ["y"] = -110}]
       40 SETTABLEKS                       R5 R4 K14 ["position"]
       42 SETLIST                          R2 R3 2 [1]
       44 SETTABLEKS                       R2 R1 K7 ["states"]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K8 ["transitions"]
       50 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+4]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 RETURN                           R1 1
       10 DUPTABLE                         R1 K8 [{"version", "startStateId", "currentState", "states", "transitions"}]
       11 GETTABLEKS                       R4 R0 K3 ["version"]
       13 FASTCALL1                        TYPEOF R4 ; [+2]
       14 GETIMPORT                        R3 K1 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+4]
       19 GETTABLEKS                       R2 R0 K3 ["version"]
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K10 ["CURRENT_VERSION"]
       25 SETTABLEKS                       R2 R1 K3 ["version"]
       27 GETTABLEKS                       R2 R0 K4 ["startStateId"]
       29 SETTABLEKS                       R2 R1 K4 ["startStateId"]
       31 GETTABLEKS                       R2 R0 K5 ["currentState"]
       33 SETTABLEKS                       R2 R1 K5 ["currentState"]
       35 GETTABLEKS                       R4 R0 K6 ["states"]
       37 FASTCALL1                        TYPEOF R4 ; [+2]
       38 GETIMPORT                        R3 K1 [typeof]
       40 CALL                             R3 1 1
       41 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       43 GETTABLEKS                       R2 R0 K6 ["states"]
       45 JUMP                             ; [+2]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K6 ["states"]
       50 GETTABLEKS                       R4 R0 K7 ["transitions"]
       52 FASTCALL1                        TYPEOF R4 ; [+2]
       53 GETIMPORT                        R3 K1 [typeof]
       55 CALL                             R3 1 1
       56 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       58 GETTABLEKS                       R2 R0 K7 ["transitions"]
       60 JUMP                             ; [+2]
       61 NEWTABLE                         R2 0 0
       63 SETTABLEKS                       R2 R1 K7 ["transitions"]
       65 RETURN                           R1 1

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [pcall]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["JSONDecode"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 CALL                             R1 3 2
       15 JUMPIF                           R1 ; [+3]
       16 GETUPVAL                         R3 0
       17 CALL                             R3 0 1
       18 RETURN                           R3 1
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONEncode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 MOVE                             R5 R3
        4 JUMPIF                           R5 ; [+10]
        5 LOADK                            R6 K0 ["state_%*"]
        6 GETUPVAL                         R8 1
        7 LOADB                            R10 0
        8 NAMECALL                         R8 R8 K1 ["GenerateGUID"]
       10 CALL                             R8 2 1
       11 NAMECALL                         R6 R6 K2 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 GETTABLEKS                       R7 R4 K3 ["states"]
       17 DUPTABLE                         R8 K10 [{["id"], ["name"], ["position"], ["isStart"] = False, ["isAny"] = False}]
       18 SETTABLEKS                       R5 R8 K4 ["id"]
       20 ORK                              R9 R1 K11 ["New State"]
       21 SETTABLEKS                       R9 R8 K5 ["name"]
       23 MOVE                             R9 R2
       24 JUMPIF                           R9 ; [+1]
       25 DUPTABLE                         R9 K15 [{["x"] = 0, ["y"] = 0}]
       26 SETTABLEKS                       R9 R8 K6 ["position"]
       28 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       30 GETIMPORT                        R6 K18 [table.insert]
       32 CALL                             R6 2 0
       33 RETURN                           R4 2

PROTO_9:
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

PROTO_10:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["isStart"]
        3 JUMPIFEQKB                       R2 TRUE ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["isAny"]
        7 JUMPIFEQKB                       R2 TRUE ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 ["position"]
        4 MOVE                             R7 R2
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 ["name"]
        4 MOVE                             R7 R2
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       22 LOADK                            R5 K4 ["transition_%*"]
       23 GETUPVAL                         R7 1
       24 LOADB                            R9 0
       25 NAMECALL                         R7 R7 K5 ["GenerateGUID"]
       27 CALL                             R7 2 1
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 GETIMPORT                        R5 K9 [table.clone]
       34 GETUPVAL                         R6 2
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R4 R5 K3 ["id"]
       38 SETTABLEKS                       R1 R5 K1 ["fromStateId"]
       40 SETTABLEKS                       R2 R5 K2 ["toStateId"]
       42 GETTABLEKS                       R7 R3 K0 ["transitions"]
       44 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       46 MOVE                             R8 R5
       47 GETIMPORT                        R6 K11 [table.insert]
       49 CALL                             R6 2 0
       50 RETURN                           R3 2

PROTO_18:
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

PROTO_19:
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
       25 DUPTABLE                         R4 K20 [{["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = ""}]
       26 GETIMPORT                        R5 K24 [Enum.PoseEasingStyle.Linear]
       28 GETTABLEKS                       R5 R5 K25 ["Value"]
       30 SETTABLEKS                       R5 R4 K15 ["Curve"]
       32 DUPCLOSURE                       R5 K26 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R6 K27 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R6 R3 K28 ["getDefault"]
       39 DUPCLOSURE                       R7 K29 [PROTO_2]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R8 K30 [PROTO_3]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R7
       46 SETTABLEKS                       R8 R3 K31 ["decode"]
       48 DUPCLOSURE                       R8 K32 [PROTO_4]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R8 R3 K33 ["encode"]
       52 DUPCLOSURE                       R8 K34 [PROTO_5]
       53 DUPCLOSURE                       R9 K35 [PROTO_6]
       54 SETTABLEKS                       R9 R3 K36 ["getState"]
       56 DUPCLOSURE                       R9 K37 [PROTO_7]
       57 SETTABLEKS                       R9 R3 K38 ["getTransition"]
       59 DUPCLOSURE                       R9 K39 [PROTO_8]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R9 R3 K40 ["addState"]
       64 DUPCLOSURE                       R9 K41 [PROTO_9]
       65 SETTABLEKS                       R9 R3 K42 ["findFreePosition"]
       67 DUPCLOSURE                       R9 K43 [PROTO_10]
       68 SETTABLEKS                       R9 R3 K44 ["isSynthetic"]
       70 DUPCLOSURE                       R9 K45 [PROTO_11]
       71 CAPTURE                          VAL R8
       72 DUPCLOSURE                       R10 K46 [PROTO_12]
       73 CAPTURE                          VAL R9
       74 SETTABLEKS                       R10 R3 K47 ["moveState"]
       76 DUPCLOSURE                       R10 K48 [PROTO_13]
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R10 R3 K49 ["renameState"]
       80 DUPCLOSURE                       R10 K50 [PROTO_14]
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R10 R3 K51 ["deleteState"]
       84 DUPCLOSURE                       R10 K52 [PROTO_15]
       85 SETTABLEKS                       R10 R3 K53 ["hasTransition"]
       87 DUPCLOSURE                       R10 K54 [PROTO_16]
       88 SETTABLEKS                       R10 R3 K55 ["hasOutgoingTransition"]
       90 DUPCLOSURE                       R10 K56 [PROTO_17]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R10 R3 K57 ["addTransition"]
       96 DUPCLOSURE                       R10 K58 [PROTO_18]
       97 CAPTURE                          VAL R8
       98 SETTABLEKS                       R10 R3 K59 ["deleteTransition"]
      100 DUPCLOSURE                       R10 K60 [PROTO_19]
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R10 R3 K61 ["setTransitionField"]
      104 RETURN                           R3 1
