PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["setStatePosition"]
        5 MOVE                             R6 R0
        6 GETIMPORT                        R7 K4 [Vector2.new]
        8 GETTABLEKS                       R8 R2 K5 ["x"]
       10 GETTABLEKS                       R9 R2 K6 ["y"]
       12 CALL                             R7 2 -1
       13 CALL                             R5 -1 0
       14 GETUPVAL                         R7 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADB                            R8 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R8
       19 NAMECALL                         R5 R0 K7 ["SetAttribute"]
       21 CALL                             R5 3 0
       22 GETUPVAL                         R7 2
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADB                            R8 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R8
       27 NAMECALL                         R5 R0 K7 ["SetAttribute"]
       29 CALL                             R5 3 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["transitionInstanceName"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R0 K1 ["Name"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R1 K2 ["id"]
       11 SETTABLE                         R5 R0 R4
       12 GETUPVAL                         R4 2
       13 SETTABLE                         R2 R0 R4
       14 GETUPVAL                         R4 3
       15 SETTABLE                         R3 R0 R4
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R5 R1 K3 ["Priority"]
       19 SETTABLE                         R5 R0 R4
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R7 R1 K4 ["TriggerExpression"]
       23 NAMECALL                         R4 R0 K5 ["SetAttribute"]
       25 CALL                             R4 3 0
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R7 R1 K6 ["Length"]
       29 NAMECALL                         R4 R0 K5 ["SetAttribute"]
       31 CALL                             R4 3 0
       32 GETUPVAL                         R6 7
       33 GETTABLEKS                       R7 R1 K7 ["Curve"]
       35 NAMECALL                         R4 R0 K5 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 GETUPVAL                         R6 8
       39 GETTABLEKS                       R7 R1 K8 ["WaitFor"]
       41 NAMECALL                         R4 R0 K5 ["SetAttribute"]
       43 CALL                             R4 3 0
       44 GETUPVAL                         R6 9
       45 GETTABLEKS                       R7 R1 K9 ["When"]
       47 NAMECALL                         R4 R0 K5 ["SetAttribute"]
       49 CALL                             R4 3 0
       50 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R2 K0 ["idToInstance"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKNIL                     R3 ; [+11]
        6 GETTABLEKS                       R4 R3 K1 ["Parent"]
        8 JUMPIFNOTEQ                      R4 R0 ; [+7]
       10 LOADK                            R6 K2 ["ObjectValue"]
       11 NAMECALL                         R4 R3 K3 ["IsA"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+1]
       15 RETURN                           R3 1
       16 LOADNIL                          R4
       17 RETURN                           R4 1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 GETUPVAL                         R9 0
        5 NAMECALL                         R7 R6 K1 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETUPVAL                         R8 1
       10 GETTABLE                         R7 R6 R8
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R6 R1
        1 NOT                              R7 R3
        2 JUMPIFNOT                        R7 ; [+1]
        3 NOT                              R7 R4
        4 JUMPIFNOT                        R7 ; [+21]
        5 NAMECALL                         R8 R0 K0 ["GetOrderedInputPinNames"]
        7 CALL                             R8 1 1
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K1 ["getDynamicInputPinNameFromInputPinIds"]
       11 MOVE                             R10 R8
       12 MOVE                             R11 R1
       13 CALL                             R9 2 1
       14 MOVE                             R6 R9
       15 FASTCALL2                        TABLE_INSERT R8 R6 ; [+5]
       17 MOVE                             R10 R8
       18 MOVE                             R11 R6
       19 GETIMPORT                        R9 K4 [table.insert]
       21 CALL                             R9 2 0
       22 MOVE                             R11 R8
       23 NAMECALL                         R9 R0 K5 ["SetOrderedInputPinNames"]
       25 CALL                             R9 2 0
       26 GETIMPORT                        R8 K8 [Instance.new]
       28 LOADK                            R9 K9 ["ObjectValue"]
       29 CALL                             R8 1 1
       30 MOVE                             R9 R6
       31 SETTABLEKS                       R9 R8 K10 ["Name"]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K11 ["setStatePosition"]
       36 MOVE                             R11 R8
       37 GETIMPORT                        R12 K13 [Vector2.new]
       39 GETTABLEKS                       R13 R2 K14 ["x"]
       41 GETTABLEKS                       R14 R2 K15 ["y"]
       43 CALL                             R12 2 -1
       44 CALL                             R10 -1 0
       45 GETUPVAL                         R12 2
       46 JUMPIFNOT                        R3 ; [+2]
       47 LOADB                            R13 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R13
       50 NAMECALL                         R10 R8 K16 ["SetAttribute"]
       52 CALL                             R10 3 0
       53 GETUPVAL                         R12 3
       54 JUMPIFNOT                        R4 ; [+2]
       55 LOADB                            R13 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R13
       58 NAMECALL                         R10 R8 K16 ["SetAttribute"]
       60 CALL                             R10 3 0
       61 SETTABLEKS                       R0 R8 K17 ["Parent"]
       63 GETUPVAL                         R9 4
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+6]
       66 JUMPIFNOT                        R7 ; [+5]
       67 JUMPIFNOT                        R5 ; [+4]
       68 MOVE                             R11 R8
       69 NAMECALL                         R9 R5 K18 ["ensureInputId"]
       71 CALL                             R9 2 0
       72 RETURN                           R8 1

PROTO_5:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R3
        6 DUPTABLE                         R6 K15 [{["id"], ["fromStateId"] = "", ["toStateId"] = "", ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = "", ["WaitFor"], ["When"]}]
        7 GETUPVAL                         R7 2
        8 LOADB                            R9 0
        9 NAMECALL                         R7 R7 K16 ["GenerateGUID"]
       11 CALL                             R7 2 1
       12 SETTABLEKS                       R7 R6 K3 ["id"]
       14 GETIMPORT                        R7 K20 [Enum.PoseEasingStyle.Linear]
       16 SETTABLEKS                       R7 R6 K9 ["Curve"]
       18 GETIMPORT                        R7 K23 [Enum.AnimationNodeWaitFor.Trigger]
       20 SETTABLEKS                       R7 R6 K13 ["WaitFor"]
       22 GETIMPORT                        R7 K26 [Enum.AnimationNodeTransitionWhen.Finished]
       24 SETTABLEKS                       R7 R6 K14 ["When"]
       26 MOVE                             R7 R1
       27 MOVE                             R8 R2
       28 CALL                             R4 4 0
       29 SETTABLEKS                       R0 R3 K27 ["Parent"]
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R3 R2 K0 ["GetAttribute"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKB                       R3 TRUE ; [+7]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R3 R2 K0 ["GetAttribute"]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R5 0
       14 NAMECALL                         R3 R1 K0 ["GetAttribute"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQKB                    R3 TRUE ; [+10]
       19 GETUPVAL                         R3 2
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+5]
       22 GETUPVAL                         R5 3
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R0 K1 ["SetAttribute"]
       26 CALL                             R3 3 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R6 1
       29 NAMECALL                         R4 R1 K0 ["GetAttribute"]
       31 CALL                             R4 2 1
       32 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
       34 LOADNIL                          R3
       35 JUMP                             ; [+1]
       36 MOVE                             R3 R1
       37 NAMECALL                         R4 R0 K2 ["GetChildren"]
       39 CALL                             R4 1 3
       40 FORGPREP                         R4
       41 GETUPVAL                         R11 4
       42 NAMECALL                         R9 R8 K3 ["IsA"]
       44 CALL                             R9 2 1
       45 JUMPIFNOT                        R9 ; [+9]
       46 GETUPVAL                         R10 5
       47 GETTABLE                         R9 R8 R10
       48 JUMPIFNOTEQ                      R9 R3 ; [+6]
       50 GETUPVAL                         R10 6
       51 GETTABLE                         R9 R8 R10
       52 JUMPIFNOTEQ                      R9 R2 ; [+2]
       54 RETURN                           R0 0
       55 FORGLOOP                         R4 2 ; [-15]
       57 GETUPVAL                         R4 7
       58 MOVE                             R5 R0
       59 MOVE                             R6 R3
       60 MOVE                             R7 R2
       61 CALL                             R4 3 0
       62 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 LOADB                            R8 0
       10 LOADB                            R9 0
       11 MOVE                             R10 R3
       12 CALL                             R4 6 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getDefault"]
        3 CALL                             R4 0 1
        4 MOVE                             R1 R4
        5 GETTABLEKS                       R1 R1 K1 ["states"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R0
       12 GETTABLEKS                       R8 R5 K2 ["name"]
       14 GETTABLEKS                       R9 R5 K3 ["position"]
       16 GETTABLEKS                       R10 R5 K4 ["isStart"]
       18 GETTABLEKS                       R11 R5 K5 ["isAny"]
       20 CALL                             R6 5 0
       21 FORGLOOP                         R1 2 ; [-12]
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R3 K1 ["idToInstance"]
        8 CALL                             R5 2 1
        9 JUMPIFEQKNIL                     R5 ; [+12]
       11 GETTABLEKS                       R6 R5 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+8]
       15 LOADK                            R8 K3 ["ObjectValue"]
       16 NAMECALL                         R6 R5 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["setStatePosition"]
       29 MOVE                             R6 R4
       30 GETIMPORT                        R7 K8 [Vector2.new]
       32 GETTABLEKS                       R8 R2 K9 ["x"]
       34 GETTABLEKS                       R9 R2 K10 ["y"]
       36 CALL                             R7 2 -1
       37 CALL                             R5 -1 0
       38 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 GETUPVAL                         R9 0
        5 NAMECALL                         R7 R6 K1 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+11]
        9 GETUPVAL                         R8 1
       10 GETTABLE                         R7 R6 R8
       11 JUMPIFEQ                         R7 R1 ; [+5]
       13 GETUPVAL                         R8 2
       14 GETTABLE                         R7 R6 R8
       15 JUMPIFNOTEQ                      R7 R1 ; [+4]
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R6 K2 ["Parent"]
       20 FORGLOOP                         R2 2 ; [-17]
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R3 K1 ["idToInstance"]
        8 CALL                             R5 2 1
        9 JUMPIFEQKNIL                     R5 ; [+12]
       11 GETTABLEKS                       R6 R5 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+8]
       15 LOADK                            R8 K3 ["ObjectValue"]
       16 NAMECALL                         R6 R5 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R4 K5 ["Name"]
       28 JUMPIFEQ                         R2 R5 ; [+26]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K6 ["getDynamicInputPinNameFromInputNode"]
       33 MOVE                             R7 R0
       34 MOVE                             R8 R2
       35 MOVE                             R9 R5
       36 GETUPVAL                         R10 2
       37 CALL                             R10 0 -1
       38 CALL                             R6 -1 1
       39 NAMECALL                         R7 R0 K7 ["GetOrderedInputPinNames"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K10 [table.find]
       44 MOVE                             R9 R7
       45 MOVE                             R10 R5
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+5]
       48 SETTABLE                         R6 R7 R8
       49 MOVE                             R11 R7
       50 NAMECALL                         R9 R0 K11 ["SetOrderedInputPinNames"]
       52 CALL                             R9 2 0
       53 SETTABLEKS                       R6 R4 K5 ["Name"]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K12 ["refreshTransitionNamesForState"]
       58 MOVE                             R7 R0
       59 MOVE                             R8 R4
       60 CALL                             R6 2 0
       61 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R2 K1 ["idToInstance"]
        8 CALL                             R4 2 1
        9 JUMPIFEQKNIL                     R4 ; [+12]
       11 GETTABLEKS                       R5 R4 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R5 R0 ; [+8]
       15 LOADK                            R7 K3 ["ObjectValue"]
       16 NAMECALL                         R5 R4 K4 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+2]
       20 MOVE                             R3 R4
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 JUMPIFNOTEQKNIL                  R3 ; [+2]
       25 RETURN                           R0 0
       26 NAMECALL                         R4 R0 K5 ["GetOrderedInputPinNames"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K8 [table.find]
       31 MOVE                             R6 R4
       32 GETTABLEKS                       R7 R3 K9 ["Name"]
       34 CALL                             R5 2 1
       35 JUMPIFNOT                        R5 ; [+9]
       36 GETIMPORT                        R6 K11 [table.remove]
       38 MOVE                             R7 R4
       39 MOVE                             R8 R5
       40 CALL                             R6 2 0
       41 MOVE                             R8 R4
       42 NAMECALL                         R6 R0 K12 ["SetOrderedInputPinNames"]
       44 CALL                             R6 2 0
       45 GETUPVAL                         R6 1
       46 MOVE                             R7 R0
       47 MOVE                             R8 R3
       48 CALL                             R6 2 0
       49 GETUPVAL                         R6 2
       50 CALL                             R6 0 1
       51 JUMPIFNOT                        R6 ; [+15]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K13 ["resolveInstanceAttribute"]
       55 GETUPVAL                         R9 4
       56 NAMECALL                         R7 R0 K14 ["GetAttribute"]
       58 CALL                             R7 2 -1
       59 CALL                             R6 -1 1
       60 JUMPIFNOTEQ                      R6 R3 ; [+6]
       62 GETUPVAL                         R9 4
       63 LOADNIL                          R10
       64 NAMECALL                         R7 R0 K15 ["SetAttribute"]
       66 CALL                             R7 3 0
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R3 K2 ["Parent"]
       70 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R3 K1 ["idToInstance"]
        8 CALL                             R5 2 1
        9 JUMPIFEQKNIL                     R5 ; [+12]
       11 GETTABLEKS                       R6 R5 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R6 R0 ; [+8]
       15 LOADK                            R8 K3 ["ObjectValue"]
       16 NAMECALL                         R6 R5 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 MOVE                             R8 R2
       24 NAMECALL                         R6 R3 K1 ["idToInstance"]
       26 CALL                             R6 2 1
       27 JUMPIFEQKNIL                     R6 ; [+12]
       29 GETTABLEKS                       R7 R6 K2 ["Parent"]
       31 JUMPIFNOTEQ                      R7 R0 ; [+8]
       33 LOADK                            R9 K3 ["ObjectValue"]
       34 NAMECALL                         R7 R6 K4 ["IsA"]
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 MOVE                             R5 R6
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 JUMPIFEQKNIL                     R4 ; [+3]
       43 JUMPIFNOTEQKNIL                  R5 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 1
       47 MOVE                             R7 R0
       48 MOVE                             R8 R4
       49 MOVE                             R9 R5
       50 CALL                             R6 3 0
       51 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["supportsInstances"]
        3 JUMPIF                           R5 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R8 R1
        6 NAMECALL                         R6 R4 K1 ["idToInstance"]
        8 CALL                             R6 2 1
        9 JUMPIFEQKNIL                     R6 ; [+12]
       11 GETTABLEKS                       R7 R6 K2 ["Parent"]
       13 JUMPIFNOTEQ                      R7 R0 ; [+8]
       15 LOADK                            R9 K3 ["ObjectValue"]
       16 NAMECALL                         R7 R6 K4 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+2]
       20 MOVE                             R5 R6
       21 JUMP                             ; [+1]
       22 LOADNIL                          R5
       23 JUMPIFNOTEQKNIL                  R5 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R6 1
       27 MOVE                             R7 R0
       28 MOVE                             R8 R2
       29 MOVE                             R9 R3
       30 LOADB                            R10 0
       31 LOADB                            R11 0
       32 MOVE                             R12 R4
       33 CALL                             R6 6 1
       34 GETUPVAL                         R7 2
       35 MOVE                             R8 R0
       36 MOVE                             R9 R5
       37 MOVE                             R10 R6
       38 CALL                             R7 3 0
       39 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["supportsInstances"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["entry"] ; [+7]
        7 GETUPVAL                         R4 1
        8 LOADNIL                          R5
        9 NAMECALL                         R2 R0 K2 ["SetAttribute"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 RETURN                           R0 0
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K3 ["Parent"]
       23 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["entry"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 2
       16 JUMPIFNOTEQ                      R2 R5 ; [+4]
       18 GETUPVAL                         R5 2
       19 SETTABLE                         R3 R4 R5
       20 RETURN                           R0 0
       21 GETUPVAL                         R6 3
       22 GETTABLE                         R5 R6 R2
       23 JUMPIFEQKNIL                     R5 ; [+6]
       25 MOVE                             R8 R5
       26 MOVE                             R9 R3
       27 NAMECALL                         R6 R4 K2 ["SetAttribute"]
       29 CALL                             R6 3 0
       30 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWTABLE                         R6 0 0
        6 MOVE                             R7 R0
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETTABLEKS                       R12 R11 K0 ["instance"]
       12 GETTABLEKS                       R13 R11 K1 ["id"]
       14 SETTABLE                         R13 R6 R12
       15 GETTABLEKS                       R12 R11 K2 ["isStart"]
       17 JUMPIFNOT                        R12 ; [+2]
       18 GETTABLEKS                       R4 R11 K1 ["id"]
       20 GETTABLEKS                       R12 R11 K3 ["isAny"]
       22 JUMPIFNOT                        R12 ; [+2]
       23 GETTABLEKS                       R5 R11 K1 ["id"]
       25 DUPTABLE                         R14 K6 [{"id", "name", "position", "isStart", "isAny"}]
       26 GETTABLEKS                       R15 R11 K1 ["id"]
       28 SETTABLEKS                       R15 R14 K1 ["id"]
       30 GETTABLEKS                       R15 R11 K4 ["name"]
       32 SETTABLEKS                       R15 R14 K4 ["name"]
       34 GETTABLEKS                       R15 R11 K5 ["position"]
       36 SETTABLEKS                       R15 R14 K5 ["position"]
       38 GETTABLEKS                       R15 R11 K2 ["isStart"]
       40 SETTABLEKS                       R15 R14 K2 ["isStart"]
       42 GETTABLEKS                       R15 R11 K3 ["isAny"]
       44 SETTABLEKS                       R15 R14 K3 ["isAny"]
       46 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       48 MOVE                             R13 R3
       49 GETIMPORT                        R12 K9 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-43]
       54 NEWTABLE                         R7 0 0
       56 MOVE                             R8 R1
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 GETTABLEKS                       R15 R12 K10 ["to"]
       62 FASTCALL1                        TYPEOF R15 ; [+2]
       63 GETIMPORT                        R14 K12 [typeof]
       65 CALL                             R14 1 1
       66 JUMPIFNOTEQKS                    R14 K13 ["Instance"] ; [+5]
       68 GETTABLEKS                       R14 R12 K10 ["to"]
       70 GETTABLE                         R13 R6 R14
       71 JUMP                             ; [+1]
       72 LOADNIL                          R13
       73 JUMPIFEQKNIL                     R13 ; [+55]
       75 GETTABLEKS                       R16 R12 K14 ["from"]
       77 FASTCALL1                        TYPEOF R16 ; [+2]
       78 GETIMPORT                        R15 K12 [typeof]
       80 CALL                             R15 1 1
       81 JUMPIFNOTEQKS                    R15 K13 ["Instance"] ; [+5]
       83 GETTABLEKS                       R15 R12 K14 ["from"]
       85 GETTABLE                         R14 R6 R15
       86 JUMP                             ; [+1]
       87 MOVE                             R14 R5
       88 JUMPIFEQKNIL                     R14 ; [+40]
       90 DUPTABLE                         R17 K23 [{"id", "fromStateId", "toStateId", "Length", "Curve", "Priority", "TriggerExpression", "WaitFor", "When"}]
       91 GETTABLEKS                       R18 R12 K1 ["id"]
       93 SETTABLEKS                       R18 R17 K1 ["id"]
       95 SETTABLEKS                       R14 R17 K15 ["fromStateId"]
       97 SETTABLEKS                       R13 R17 K16 ["toStateId"]
       99 GETTABLEKS                       R18 R12 K17 ["Length"]
      101 SETTABLEKS                       R18 R17 K17 ["Length"]
      103 GETTABLEKS                       R18 R12 K18 ["Curve"]
      105 SETTABLEKS                       R18 R17 K18 ["Curve"]
      107 GETTABLEKS                       R18 R12 K19 ["Priority"]
      109 SETTABLEKS                       R18 R17 K19 ["Priority"]
      111 GETTABLEKS                       R18 R12 K20 ["TriggerExpression"]
      113 SETTABLEKS                       R18 R17 K20 ["TriggerExpression"]
      115 GETTABLEKS                       R18 R12 K21 ["WaitFor"]
      117 SETTABLEKS                       R18 R17 K21 ["WaitFor"]
      119 GETTABLEKS                       R18 R12 K22 ["When"]
      121 SETTABLEKS                       R18 R17 K22 ["When"]
      123 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
      125 MOVE                             R16 R7
      126 GETIMPORT                        R15 K9 [table.insert]
      128 CALL                             R15 2 0
      129 FORGLOOP                         R8 2 ; [-70]
      131 JUMPIFEQKNIL                     R4 ; [+29]
      133 JUMPIFEQKNIL                     R2 ; [+27]
      135 GETTABLE                         R8 R6 R2
      136 JUMPIFEQKNIL                     R8 ; [+24]
      138 DUPTABLE                         R11 K28 [{["id"] = "entry", ["fromStateId"], ["toStateId"], ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = "", ["WaitFor"], ["When"]}]
      139 SETTABLEKS                       R4 R11 K15 ["fromStateId"]
      141 SETTABLEKS                       R8 R11 K16 ["toStateId"]
      143 GETIMPORT                        R12 K32 [Enum.PoseEasingStyle.Linear]
      145 SETTABLEKS                       R12 R11 K18 ["Curve"]
      147 GETIMPORT                        R12 K35 [Enum.AnimationNodeWaitFor.Trigger]
      149 SETTABLEKS                       R12 R11 K21 ["WaitFor"]
      151 GETIMPORT                        R12 K38 [Enum.AnimationNodeTransitionWhen.Finished]
      153 SETTABLEKS                       R12 R11 K22 ["When"]
      155 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      157 MOVE                             R10 R7
      158 GETIMPORT                        R9 K9 [table.insert]
      160 CALL                             R9 2 0
      161 DUPTABLE                         R8 K45 [{["version"], ["startStateId"], ["currentState"] = , ["states"], ["transitions"]}]
      162 GETUPVAL                         R9 0
      163 GETTABLEKS                       R9 R9 K46 ["CURRENT_VERSION"]
      165 SETTABLEKS                       R9 R8 K39 ["version"]
      167 SETTABLEKS                       R4 R8 K40 ["startStateId"]
      169 SETTABLEKS                       R3 R8 K43 ["states"]
      171 SETTABLEKS                       R7 R8 K44 ["transitions"]
      173 RETURN                           R8 1

PROTO_18:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["attributes"]
       11 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R3 R3 K4 ["Position"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K6 [{"instance", "id", "name", "position", "isStart", "isAny"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K0 ["instance"]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["id"]
       13 GETUPVAL                         R4 4
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K2 ["name"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 DUPTABLE                         R4 K9 [{"x", "y"}]
       20 GETTABLEKS                       R5 R2 K10 ["X"]
       22 SETTABLEKS                       R5 R4 K7 ["x"]
       24 GETTABLEKS                       R5 R2 K11 ["Y"]
       26 SETTABLEKS                       R5 R4 K8 ["y"]
       28 JUMP                             ; [+1]
       29 DUPTABLE                         R4 K13 [{["x"] = 0, ["y"] = 0}]
       30 SETTABLEKS                       R4 R3 K3 ["position"]
       32 GETUPVAL                         R6 5
       33 GETTABLE                         R5 R1 R6
       34 JUMPIFEQKB                       R5 TRUE ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K4 ["isStart"]
       40 GETUPVAL                         R6 6
       41 GETTABLE                         R5 R1 R6
       42 JUMPIFEQKB                       R5 TRUE ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K5 ["isAny"]
       48 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["instanceToId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["properties"]
        8 GETTABLEKS                       R2 R2 K2 ["observeString"]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K3 ["Name"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["observeAttributes"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["switchMap"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["observeFirstNamedChild"]
       24 MOVE                             R6 R0
       25 DUPCLOSURE                       R7 K7 [PROTO_18]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K8 ["NODE_CONFIGURATION_NAME"]
       29 CALL                             R5 3 1
       30 DUPCLOSURE                       R6 K9 [PROTO_19]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U3
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CALL                             R5 1 -1
       47 RETURN                           R5 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K9 [{"id", "from", "to", "Length", "Curve", "Priority", "TriggerExpression", "WaitFor", "When"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["id"]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["from"]
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K2 ["to"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K10 ["coerceNumber"]
       20 GETUPVAL                         R5 5
       21 GETTABLE                         R4 R1 R5
       22 LOADK                            R5 K11 [0.2]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K3 ["Length"]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K12 ["coerceCurve"]
       29 GETUPVAL                         R5 6
       30 GETTABLE                         R4 R1 R5
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K4 ["Curve"]
       34 GETUPVAL                         R3 7
       35 MOVE                             R4 R0
       36 CALL                             R3 1 1
       37 SETTABLEKS                       R3 R2 K5 ["Priority"]
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R3 R3 K13 ["coerceString"]
       42 GETUPVAL                         R5 8
       43 GETTABLE                         R4 R1 R5
       44 LOADK                            R5 K14 [""]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K6 ["TriggerExpression"]
       48 GETUPVAL                         R3 9
       49 GETTABLEKS                       R3 R3 K15 ["enum"]
       51 GETUPVAL                         R5 10
       52 GETTABLE                         R4 R1 R5
       53 GETIMPORT                        R5 K19 [Enum.AnimationNodeWaitFor.Trigger]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R2 K7 ["WaitFor"]
       58 GETUPVAL                         R3 9
       59 GETTABLEKS                       R3 R3 K15 ["enum"]
       61 GETUPVAL                         R5 11
       62 GETTABLE                         R4 R1 R5
       63 GETIMPORT                        R5 K22 [Enum.AnimationNodeTransitionWhen.Finished]
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R2 K8 ["When"]
       68 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["instanceToId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["properties"]
        8 GETTABLEKS                       R2 R2 K2 ["observeInstance"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 2
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["properties"]
       16 GETTABLEKS                       R3 R3 K2 ["observeInstance"]
       18 MOVE                             R4 R0
       19 GETUPVAL                         R5 3
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["properties"]
       24 GETTABLEKS                       R4 R4 K3 ["observeNumber"]
       26 MOVE                             R5 R0
       27 GETUPVAL                         R6 4
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R5 R5 K4 ["observeAttributes"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R6 R6 K5 ["createComputed"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U9
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U11
       48 CAPTURE                          UPVAL U12
       49 CAPTURE                          UPVAL U13
       50 CALL                             R6 1 -1
       51 RETURN                           R6 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assembleStateMachineData"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["observeChildrenWhichIsA"]
        6 MOVE                             R4 R0
        7 LOADK                            R5 K2 ["ObjectValue"]
        8 CALL                             R3 2 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["forEach"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["observeChildrenWhichIsA"]
       24 MOVE                             R5 R0
       25 GETUPVAL                         R6 6
       26 CALL                             R4 2 1
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U14
       40 CAPTURE                          UPVAL U15
       41 CAPTURE                          UPVAL U16
       42 CALL                             R3 2 1
       43 GETUPVAL                         R5 17
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+9]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K3 ["attributes"]
       49 GETTABLEKS                       R4 R4 K4 ["observeInstance"]
       51 MOVE                             R5 R0
       52 GETUPVAL                         R6 18
       53 CALL                             R4 2 1
       54 JUMP                             ; [+5]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K5 ["of"]
       58 LOADNIL                          R5
       59 CALL                             R4 1 1
       60 GETUPVAL                         R5 3
       61 GETTABLEKS                       R5 R5 K6 ["createComputed"]
       63 NEWCLOSURE                       R6 P2
       64 CAPTURE                          UPVAL U19
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CALL                             R5 1 -1
       69 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["ExpectType"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Instances"]
       33 GETTABLEKS                       R5 R5 K14 ["InstanceRegistry"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K15 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K16 ["NativeGraphContext"]
       42 GETTABLEKS                       R6 R6 K17 ["NativeGraphUtils"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Util"]
       49 GETTABLEKS                       R7 R7 K18 ["Signals"]
       51 GETTABLEKS                       R7 R7 K19 ["Experimental"]
       53 GETTABLEKS                       R7 R7 K20 ["SignalExperimentalUtils"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R1 K21 ["Parent"]
       60 GETTABLEKS                       R8 R8 K18 ["Signals"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K10 ["Util"]
       67 GETTABLEKS                       R9 R9 K18 ["Signals"]
       69 GETTABLEKS                       R9 R9 K22 ["SignalsInstanceUtils"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K21 ["Parent"]
       76 GETTABLEKS                       R10 R10 K23 ["StateMachineGraphing"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R1 K24 ["Components"]
       83 GETTABLEKS                       R11 R11 K25 ["NodeView"]
       85 GETTABLEKS                       R11 R11 K26 ["StateMachine"]
       87 GETTABLEKS                       R11 R11 K27 ["StateMachineTransitionNaming"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R1 K24 ["Components"]
       94 GETTABLEKS                       R12 R12 K25 ["NodeView"]
       96 GETTABLEKS                       R12 R12 K26 ["StateMachine"]
       98 GETTABLEKS                       R12 R12 K28 ["StateMachineUtils"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K9 [require]
      103 GETTABLEKS                       R13 R1 K10 ["Util"]
      105 GETTABLEKS                       R13 R13 K18 ["Signals"]
      107 GETTABLEKS                       R13 R13 K29 ["TypedInstanceSignals"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K9 [require]
      112 GETTABLEKS                       R14 R1 K30 ["Flags"]
      114 GETTABLEKS                       R14 R14 K31 ["getFFlagAnimGraphUIInputIds"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K9 [require]
      119 GETTABLEKS                       R15 R1 K30 ["Flags"]
      121 GETTABLEKS                       R15 R15 K32 ["getFFlagInstanceAttributes"]
      123 CALL                             R14 1 1
      124 GETTABLEKS                       R15 R9 K33 ["Data"]
      126 NEWTABLE                         R16 16 0
      128 GETTABLEKS                       R17 R2 K34 ["STATE_MACHINE"]
      130 GETTABLEKS                       R17 R17 K35 ["TransitionClassName"]
      132 GETTABLEKS                       R18 R2 K34 ["STATE_MACHINE"]
      134 GETTABLEKS                       R18 R18 K36 ["TransitionProperties"]
      136 GETTABLEKS                       R18 R18 K37 ["Id"]
      138 GETTABLEKS                       R19 R2 K34 ["STATE_MACHINE"]
      140 GETTABLEKS                       R19 R19 K36 ["TransitionProperties"]
      142 GETTABLEKS                       R19 R19 K38 ["From"]
      144 GETTABLEKS                       R20 R2 K34 ["STATE_MACHINE"]
      146 GETTABLEKS                       R20 R20 K36 ["TransitionProperties"]
      148 GETTABLEKS                       R20 R20 K39 ["To"]
      150 GETTABLEKS                       R21 R2 K34 ["STATE_MACHINE"]
      152 GETTABLEKS                       R21 R21 K36 ["TransitionProperties"]
      154 GETTABLEKS                       R21 R21 K40 ["Priority"]
      156 GETTABLEKS                       R22 R2 K34 ["STATE_MACHINE"]
      158 GETTABLEKS                       R22 R22 K41 ["TransitionAttributes"]
      160 GETTABLEKS                       R22 R22 K42 ["Expression"]
      162 GETTABLEKS                       R23 R2 K34 ["STATE_MACHINE"]
      164 GETTABLEKS                       R23 R23 K41 ["TransitionAttributes"]
      166 GETTABLEKS                       R23 R23 K43 ["Duration"]
      168 GETTABLEKS                       R24 R2 K34 ["STATE_MACHINE"]
      170 GETTABLEKS                       R24 R24 K41 ["TransitionAttributes"]
      172 GETTABLEKS                       R24 R24 K44 ["Curve"]
      174 GETTABLEKS                       R25 R2 K34 ["STATE_MACHINE"]
      176 GETTABLEKS                       R25 R25 K41 ["TransitionAttributes"]
      178 GETTABLEKS                       R25 R25 K45 ["WaitFor"]
      180 GETTABLEKS                       R26 R2 K34 ["STATE_MACHINE"]
      182 GETTABLEKS                       R26 R26 K41 ["TransitionAttributes"]
      184 GETTABLEKS                       R26 R26 K46 ["When"]
      186 GETTABLEKS                       R27 R2 K34 ["STATE_MACHINE"]
      188 GETTABLEKS                       R27 R27 K47 ["IsStartAttribute"]
      190 GETTABLEKS                       R28 R2 K34 ["STATE_MACHINE"]
      192 GETTABLEKS                       R28 R28 K48 ["IsAnyAttribute"]
      194 GETTABLEKS                       R29 R2 K34 ["STATE_MACHINE"]
      196 GETTABLEKS                       R29 R29 K49 ["EntryStateAttribute"]
      198 DUPCLOSURE                       R30 K50 [PROTO_0]
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R28
      202 DUPCLOSURE                       R31 K51 [PROTO_1]
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R26
      213 DUPCLOSURE                       R32 K52 [PROTO_2]
      214 DUPCLOSURE                       R33 K53 [PROTO_3]
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R18
      217 DUPCLOSURE                       R34 K54 [PROTO_4]
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R13
      223 DUPCLOSURE                       R35 K55 [PROTO_5]
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R0
      227 DUPCLOSURE                       R36 K56 [PROTO_6]
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R29
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R20
      235 CAPTURE                          VAL R35
      236 DUPCLOSURE                       R37 K57 [PROTO_7]
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R34
      239 SETTABLEKS                       R37 R16 K58 ["createState"]
      241 DUPCLOSURE                       R37 K59 [PROTO_8]
      242 CAPTURE                          VAL R15
      243 CAPTURE                          VAL R34
      244 SETTABLEKS                       R37 R16 K60 ["seedPoseDefaults"]
      246 DUPCLOSURE                       R37 K61 [PROTO_9]
      247 CAPTURE                          VAL R11
      248 SETTABLEKS                       R37 R16 K62 ["moveState"]
      250 DUPCLOSURE                       R37 K63 [PROTO_10]
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R20
      254 DUPCLOSURE                       R38 K64 [PROTO_11]
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R5
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R10
      259 SETTABLEKS                       R38 R16 K65 ["renameState"]
      261 DUPCLOSURE                       R38 K66 [PROTO_12]
      262 CAPTURE                          VAL R11
      263 CAPTURE                          VAL R37
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R29
      267 SETTABLEKS                       R38 R16 K67 ["deleteState"]
      269 DUPCLOSURE                       R38 K68 [PROTO_13]
      270 CAPTURE                          VAL R11
      271 CAPTURE                          VAL R36
      272 SETTABLEKS                       R38 R16 K69 ["createTransition"]
      274 DUPCLOSURE                       R38 K70 [PROTO_14]
      275 CAPTURE                          VAL R11
      276 CAPTURE                          VAL R34
      277 CAPTURE                          VAL R36
      278 SETTABLEKS                       R38 R16 K71 ["createStateAndTransition"]
      280 DUPCLOSURE                       R38 K72 [PROTO_15]
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R29
      283 CAPTURE                          VAL R33
      284 SETTABLEKS                       R38 R16 K73 ["deleteTransition"]
      286 DUPTABLE                         R38 K76 [{"Length", "Curve", "TriggerExpression", "WaitFor", "When"}]
      287 SETTABLEKS                       R23 R38 K74 ["Length"]
      289 SETTABLEKS                       R24 R38 K44 ["Curve"]
      291 SETTABLEKS                       R22 R38 K75 ["TriggerExpression"]
      293 SETTABLEKS                       R25 R38 K45 ["WaitFor"]
      295 SETTABLEKS                       R26 R38 K46 ["When"]
      297 DUPCLOSURE                       R39 K77 [PROTO_16]
      298 CAPTURE                          VAL R11
      299 CAPTURE                          VAL R33
      300 CAPTURE                          VAL R21
      301 CAPTURE                          VAL R38
      302 SETTABLEKS                       R39 R16 K78 ["setTransitionField"]
      304 DUPCLOSURE                       R39 K79 [PROTO_17]
      305 CAPTURE                          VAL R15
      306 SETTABLEKS                       R39 R16 K80 ["assembleStateMachineData"]
      308 DUPCLOSURE                       R39 K81 [PROTO_25]
      309 CAPTURE                          VAL R8
      310 CAPTURE                          VAL R12
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R6
      313 CAPTURE                          VAL R27
      314 CAPTURE                          VAL R28
      315 CAPTURE                          VAL R17
      316 CAPTURE                          VAL R19
      317 CAPTURE                          VAL R20
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R11
      320 CAPTURE                          VAL R23
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R22
      323 CAPTURE                          VAL R3
      324 CAPTURE                          VAL R25
      325 CAPTURE                          VAL R26
      326 CAPTURE                          VAL R14
      327 CAPTURE                          VAL R29
      328 CAPTURE                          VAL R16
      329 SETTABLEKS                       R39 R16 K82 ["observeFromDefinition"]
      331 RETURN                           R16 1
