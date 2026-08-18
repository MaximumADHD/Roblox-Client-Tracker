PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R0 K0 ["GetChildren"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["Animator"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+30]
       12 GETIMPORT                        R8 K5 [Instance.fromExisting]
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 MOVE                             R2 R8
       17 NAMECALL                         R8 R7 K0 ["GetChildren"]
       19 CALL                             R8 1 3
       20 FORGPREP                         R8
       21 LOADNIL                          R13
       22 SETTABLEKS                       R13 R12 K6 ["Parent"]
       24 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       26 MOVE                             R14 R1
       27 MOVE                             R15 R12
       28 GETIMPORT                        R13 K9 [table.insert]
       30 CALL                             R13 2 0
       31 FORGLOOP                         R8 2 ; [-11]
       33 GETUPVAL                         R8 0
       34 JUMPIFNOT                        R8 ; [+4]
       35 LOADNIL                          R8
       36 SETTABLEKS                       R8 R7 K6 ["Parent"]
       38 JUMP                             ; [+3]
       39 NAMECALL                         R8 R7 K10 ["Destroy"]
       41 CALL                             R8 1 0
       42 FORGLOOP                         R3 2 ; [-36]
       44 JUMPIF                           R2 ; [+11]
       45 GETIMPORT                        R3 K12 [Instance.new]
       47 LOADK                            R4 K1 ["Animator"]
       48 CALL                             R3 1 1
       49 LOADB                            R4 0
       50 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       52 LOADK                            R4 K1 ["Animator"]
       53 SETTABLEKS                       R4 R3 K14 ["Name"]
       55 MOVE                             R2 R3
       56 MOVE                             R3 R1
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 SETTABLEKS                       R2 R7 K6 ["Parent"]
       62 FORGLOOP                         R3 2 ; [-3]
       64 SETTABLEKS                       R0 R2 K6 ["Parent"]
       66 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["animationTrack"]
        2 LOADN                            R3 0
        3 NAMECALL                         R1 R1 K1 ["Stop"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["animator"]
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R1 K4 ["FindFirstAncestorWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFEQKNIL                     R1 ; [+39]
       14 LOADK                            R4 K5 ["Workspace"]
       15 NAMECALL                         R2 R1 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+33]
       19 NAMECALL                         R2 R1 K7 ["GetDescendants"]
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 LOADK                            R9 K8 ["Motor6D"]
       24 NAMECALL                         R7 R6 K6 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+9]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K9 ["CurrentAngle"]
       31 GETIMPORT                        R7 K12 [CFrame.new]
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R6 K13 ["Transform"]
       36 JUMP                             ; [+13]
       37 GETUPVAL                         R7 0
       38 CALL                             R7 0 1
       39 JUMPIFNOT                        R7 ; [+10]
       40 LOADK                            R9 K14 ["AnimationConstraint"]
       41 NAMECALL                         R7 R6 K6 ["IsA"]
       43 CALL                             R7 2 1
       44 JUMPIFNOT                        R7 ; [+5]
       45 GETIMPORT                        R7 K12 [CFrame.new]
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R6 K13 ["Transform"]
       50 FORGLOOP                         R2 2 ; [-28]
       52 GETUPVAL                         R2 1
       53 NAMECALL                         R2 R2 K15 ["IsRunning"]
       55 CALL                             R2 1 1
       56 JUMPIF                           R2 ; [+6]
       57 GETTABLEKS                       R2 R0 K2 ["animator"]
       59 LOADN                            R4 0
       60 NAMECALL                         R2 R2 K16 ["StepAnimations"]
       62 CALL                             R2 2 0
       63 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 NEWTABLE                         R1 0 0
       10 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       12 CALL                             R2 1 3
       13 FORGPREP                         R2
       14 LOADK                            R9 K3 ["AnimationNodeDefinition"]
       15 NAMECALL                         R7 R6 K1 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+24]
       19 GETTABLEKS                       R7 R6 K4 ["NodeType"]
       21 GETIMPORT                        R8 K8 [Enum.AnimationNodeType.ClipNode]
       23 JUMPIFNOTEQ                      R7 R8 ; [+19]
       25 LOADK                            R9 K9 ["AnimationId"]
       26 NAMECALL                         R7 R6 K10 ["GetAttribute"]
       28 CALL                             R7 2 1
       29 FASTCALL1                        TYPEOF R7 ; [+3]
       30 MOVE                             R9 R7
       31 GETIMPORT                        R8 K12 [typeof]
       33 CALL                             R8 1 1
       34 JUMPIFNOTEQKS                    R8 K13 ["string"] ; [+8]
       36 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K16 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R2 2 ; [-30]
       45 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["sourceAnimationGraph"]
        2 NAMECALL                         R1 R1 K1 ["Clone"]
        4 CALL                             R1 1 1
        5 LOADNIL                          R2
        6 NAMECALL                         R3 R1 K2 ["GetChildren"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 LOADK                            R10 K3 ["AnimationNodeDefinition"]
       11 NAMECALL                         R8 R7 K4 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+8]
       15 GETTABLEKS                       R8 R7 K5 ["NodeType"]
       17 GETIMPORT                        R9 K9 [Enum.AnimationNodeType.GraphOutput]
       19 JUMPIFNOTEQ                      R8 R9 ; [+3]
       21 MOVE                             R2 R7
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R3 2 ; [-14]
       25 JUMPIFNOTEQKNIL                  R2 ; [+12]
       27 GETIMPORT                        R3 K12 [Instance.new]
       29 LOADK                            R4 K3 ["AnimationNodeDefinition"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [Enum.AnimationNodeType.GraphOutput]
       33 SETTABLEKS                       R4 R3 K5 ["NodeType"]
       35 SETTABLEKS                       R1 R3 K13 ["Parent"]
       37 MOVE                             R2 R3
       38 JUMPIFNOTEQKNIL                  R2 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       44 LOADK                            R5 K14 ["graphOutput somehow nil"]
       45 GETIMPORT                        R3 K16 [assert]
       47 CALL                             R3 2 0
       48 LOADK                            R5 K17 ["Pose"]
       49 NAMECALL                         R3 R2 K18 ["FindFirstChild"]
       51 CALL                             R3 2 1
       52 JUMPIFNOTEQKNIL                  R3 ; [+10]
       54 GETIMPORT                        R3 K12 [Instance.new]
       56 LOADK                            R4 K19 ["ObjectValue"]
       57 CALL                             R3 1 1
       58 LOADK                            R4 K17 ["Pose"]
       59 SETTABLEKS                       R4 R3 K20 ["Name"]
       61 SETTABLEKS                       R2 R3 K13 ["Parent"]
       63 GETTABLEKS                       R5 R0 K21 ["spotlightedNode"]
       65 GETTABLEKS                       R5 R5 K20 ["Name"]
       67 NAMECALL                         R3 R1 K18 ["FindFirstChild"]
       69 CALL                             R3 2 1
       70 JUMPIFEQKNIL                     R3 ; [+19]
       72 NAMECALL                         R4 R1 K22 ["GetDescendants"]
       74 CALL                             R4 1 3
       75 FORGPREP                         R4
       76 LOADK                            R11 K19 ["ObjectValue"]
       77 NAMECALL                         R9 R8 K4 ["IsA"]
       79 CALL                             R9 2 1
       80 JUMPIFNOT                        R9 ; [+7]
       81 GETTABLEKS                       R9 R8 K23 ["Value"]
       83 JUMPIFNOTEQ                      R9 R3 ; [+4]
       85 LOADNIL                          R9
       86 SETTABLEKS                       R9 R8 K23 ["Value"]
       88 FORGLOOP                         R4 2 ; [-13]
       90 LOADK                            R6 K17 ["Pose"]
       91 NAMECALL                         R4 R2 K18 ["FindFirstChild"]
       93 CALL                             R4 2 1
       94 SETTABLEKS                       R3 R4 K23 ["Value"]
       96 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+17]
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 DUPTABLE                         R10 K2 [{"key", "value"}]
       11 SETTABLEKS                       R6 R10 K0 ["key"]
       13 SETTABLEKS                       R7 R10 K1 ["value"]
       15 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K5 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-12]
       23 GETIMPORT                        R3 K7 [table.sort]
       25 MOVE                             R4 R1
       26 DUPCLOSURE                       R5 K8 [PROTO_4]
       27 CALL                             R3 2 0
       28 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"datum"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["datum"]
        6 GETIMPORT                        R2 K4 [table.freeze]
        8 DUPTABLE                         R3 K8 [{"key", "value", "compareValue"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K5 ["key"]
       12 SETTABLEKS                       R4 R3 K5 ["key"]
       14 SETTABLEKS                       R1 R3 K6 ["value"]
       16 GETUPVAL                         R4 2
       17 MOVE                             R6 R1
       18 NAMECALL                         R4 R4 K9 ["JSONEncode"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K7 ["compareValue"]
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"datum", "attributes"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["datum"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["attributes"]
       11 GETIMPORT                        R2 K5 [table.freeze]
       13 DUPTABLE                         R3 K9 [{"key", "value", "compareValue"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K6 ["key"]
       17 SETTABLEKS                       R4 R3 K6 ["key"]
       19 SETTABLEKS                       R1 R3 K7 ["value"]
       21 GETUPVAL                         R4 3
       22 MOVE                             R6 R1
       23 NAMECALL                         R4 R4 K10 ["JSONEncode"]
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K8 ["compareValue"]
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["key"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+64]
        5 GETTABLEKS                       R2 R1 K1 ["Type"]
        7 JUMPIFNOTEQKS                    R2 K2 ["Mask"] ; [+61]
        9 GETTABLEKS                       R3 R0 K3 ["value"]
       11 FASTCALL1                        TYPE R3 ; [+2]
       12 GETIMPORT                        R2 K5 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+53]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["instanceRegistry"]
       20 GETTABLEKS                       R4 R0 K3 ["value"]
       22 NAMECALL                         R2 R2 K8 ["idToInstance"]
       24 CALL                             R2 2 1
       25 JUMPIF                           R2 ; [+6]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K9 ["of"]
       29 LOADNIL                          R4
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R2
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K7 ["instanceRegistry"]
       37 CALL                             R3 2 1
       38 GETIMPORT                        R4 K11 [game]
       40 LOADK                            R6 K12 ["AnimGraphMaskFixEnabled"]
       41 NAMECALL                         R4 R4 K13 ["GetEngineFeature"]
       43 CALL                             R4 2 1
       44 JUMPIFNOT                        R4 ; [+9]
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K14 ["createComputed"]
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U5
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K15 ["observeAttributes"]
       57 MOVE                             R5 R2
       58 CALL                             R4 1 1
       59 GETUPVAL                         R5 4
       60 GETTABLEKS                       R5 R5 K14 ["createComputed"]
       62 NEWCLOSURE                       R6 P1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U5
       67 CALL                             R5 1 -1
       68 RETURN                           R5 -1
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R2 R2 K9 ["of"]
       72 DUPTABLE                         R3 K17 [{"key", "value", "compareValue"}]
       73 GETTABLEKS                       R4 R0 K0 ["key"]
       75 SETTABLEKS                       R4 R3 K0 ["key"]
       77 GETTABLEKS                       R4 R0 K3 ["value"]
       79 SETTABLEKS                       R4 R3 K3 ["value"]
       81 GETTABLEKS                       R4 R0 K3 ["value"]
       83 SETTABLEKS                       R4 R3 K16 ["compareValue"]
       85 CALL                             R2 1 -1
       86 RETURN                           R2 -1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+10]
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFNOT                        R7 ; [+3]
       11 GETTABLEKS                       R8 R7 K0 ["key"]
       13 SETTABLE                         R7 R1 R8
       14 FORGLOOP                         R3 2 ; [-5]
       16 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETUPVAL                         R3 3
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R4 R4 K1 ["value"]
        8 NAMECALL                         R0 R0 K2 ["UpdateGraphNodeProperty"]
       10 CALL                             R0 4 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_11:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 SETUPVAL                         R1 1
        5 LOADB                            R3 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 JUMPIFNOT                        R2 ; [+18]
       11 GETTABLEKS                       R10 R8 K0 ["key"]
       13 GETTABLE                         R9 R2 R10
       14 JUMPIFNOT                        R9 ; [+14]
       15 GETTABLEKS                       R10 R8 K0 ["key"]
       17 GETTABLE                         R9 R2 R10
       18 JUMPIFEQ                         R9 R8 ; [+45]
       20 GETTABLEKS                       R10 R8 K0 ["key"]
       22 GETTABLE                         R9 R2 R10
       23 GETTABLEKS                       R9 R9 K1 ["compareValue"]
       25 GETTABLEKS                       R10 R8 K1 ["compareValue"]
       27 JUMPIFEQ                         R9 R10 ; [+36]
       29 LOADNIL                          R9
       30 GETIMPORT                        R10 K3 [pcall]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          REF R9
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R8
       37 CALL                             R10 1 2
       38 JUMPIF                           R10 ; [+13]
       39 GETIMPORT                        R12 K5 [warn]
       41 LOADK                            R14 K6 ["Failed to update graph node property %*: %*"]
       42 GETTABLEKS                       R16 R8 K0 ["key"]
       44 ORK                              R17 R11 K7 ["<no error message>"]
       45 NAMECALL                         R14 R14 K8 ["format"]
       47 CALL                             R14 3 1
       48 MOVE                             R13 R14
       49 CALL                             R12 1 0
       50 CLOSEUPVALS                      R9
       51 JUMP                             ; [+12]
       52 JUMPIF                           R9 ; [+5]
       53 JUMPIFNOT                        R2 ; [+4]
       54 GETUPVAL                         R12 4
       55 DUPCLOSURE                       R13 K9 [PROTO_11]
       56 CALL                             R12 1 0
       57 JUMP                             ; [+5]
       58 JUMPIFNOT                        R9 ; [+4]
       59 GETUPVAL                         R12 5
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+1]
       62 LOADB                            R3 1
       63 CLOSEUPVALS                      R9
       64 FORGLOOP                         R4 2 ; [-55]
       66 JUMPIFNOT                        R3 ; [+13]
       67 GETUPVAL                         R4 5
       68 CALL                             R4 0 1
       69 JUMPIFNOT                        R4 ; [+10]
       70 GETUPVAL                         R4 6
       71 NAMECALL                         R4 R4 K10 ["IsRunning"]
       73 CALL                             R4 1 1
       74 JUMPIF                           R4 ; [+5]
       75 GETUPVAL                         R4 7
       76 LOADN                            R6 0
       77 NAMECALL                         R4 R4 K11 ["StepAnimations"]
       79 CALL                             R4 2 0
       80 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R4 R1 K0 ["GetChildren"]
        4 CALL                             R4 1 3
        5 FORGPREP                         R4
        6 LOADK                            R11 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R9 R8 K2 ["IsA"]
        9 CALL                             R9 2 1
       10 JUMPIFNOT                        R9 ; [+82]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K3 ["instanceRegistry"]
       14 MOVE                             R11 R8
       15 NAMECALL                         R9 R9 K4 ["instanceToId"]
       17 CALL                             R9 2 1
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K5 ["observeNodePropsById"]
       21 MOVE                             R11 R9
       22 CALL                             R10 1 1
       23 GETUPVAL                         R11 2
       24 GETTABLEKS                       R13 R8 K6 ["NodeType"]
       26 NAMECALL                         R11 R11 K7 ["GetAnimationNodeDefinition"]
       28 CALL                             R11 2 1
       29 NEWTABLE                         R12 0 0
       31 JUMPIFEQKNIL                     R11 ; [+15]
       33 GETTABLEKS                       R13 R11 K8 ["Properties"]
       35 JUMPIFEQKNIL                     R13 ; [+11]
       37 GETTABLEKS                       R13 R11 K8 ["Properties"]
       39 LOADNIL                          R14
       40 LOADNIL                          R15
       41 FORGPREP                         R13
       42 GETTABLEKS                       R18 R17 K9 ["Name"]
       44 SETTABLE                         R17 R12 R18
       45 FORGLOOP                         R13 2 ; [-4]
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R13 R13 K10 ["createComputed"]
       50 NEWCLOSURE                       R14 P0
       51 CAPTURE                          VAL R10
       52 CALL                             R13 1 1
       53 GETUPVAL                         R14 4
       54 GETTABLEKS                       R14 R14 K11 ["forEach"]
       56 MOVE                             R15 R13
       57 NEWCLOSURE                       R16 P1
       58 CAPTURE                          VAL R12
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U6
       64 CALL                             R14 2 1
       65 GETUPVAL                         R15 3
       66 GETTABLEKS                       R15 R15 K10 ["createComputed"]
       68 NEWCLOSURE                       R16 P2
       69 CAPTURE                          VAL R14
       70 CALL                             R15 1 1
       71 LOADNIL                          R16
       72 GETUPVAL                         R17 7
       73 GETTABLEKS                       R17 R17 K12 ["createEffect"]
       75 NEWCLOSURE                       R18 P3
       76 CAPTURE                          VAL R15
       77 CAPTURE                          REF R16
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R9
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          VAL R0
       84 CALL                             R17 1 1
       85 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
       87 MOVE                             R19 R3
       88 MOVE                             R20 R17
       89 GETIMPORT                        R18 K15 [table.insert]
       91 CALL                             R18 2 0
       92 CLOSEUPVALS                      R16
       93 FORGLOOP                         R4 2 ; [-88]
       95 NEWCLOSURE                       R4 P4
       96 CAPTURE                          VAL R3
       97 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["StepAnimations"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 3
        9 NAMECALL                         R1 R1 K0 ["Destroy"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 4
       13 LOADN                            R3 0
       14 NAMECALL                         R1 R1 K1 ["Stop"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 5
       18 NAMECALL                         R1 R1 K2 ["IsRunning"]
       20 CALL                             R1 1 1
       21 JUMPIF                           R1 ; [+5]
       22 GETUPVAL                         R1 6
       23 LOADN                            R3 0
       24 NAMECALL                         R1 R1 K3 ["StepAnimations"]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 4
       28 NAMECALL                         R1 R1 K0 ["Destroy"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["isPreviewEnabled"]
        6 JUMPIFNOTEQKB                    R0 FALSE ; [+4]
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1
       11 NEWTABLE                         R0 0 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["animationClipsList"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 FASTCALL1                        TYPEOF R5 ; [+3]
       20 MOVE                             R8 R5
       21 GETIMPORT                        R7 K3 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFNOTEQKS                    R7 K4 ["Instance"] ; [+3]
       26 MOVE                             R6 R5
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R6 R5 K5 ["clip"]
       30 LOADNIL                          R7
       31 GETUPVAL                         R8 3
       32 MOVE                             R9 R6
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K6 ["overrideRig"]
       37 JUMPIF                           R9 ; [+11]
       38 FASTCALL1                        TYPEOF R5 ; [+3]
       39 MOVE                             R10 R5
       40 GETIMPORT                        R9 K3 [typeof]
       42 CALL                             R9 1 1
       43 JUMPIFEQKS                       R9 K4 ["Instance"] ; [+5]
       45 GETTABLEKS                       R9 R5 K7 ["animator"]
       47 JUMPIFNOTEQKNIL                  R9 ; [+34]
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R9 R9 K8 ["findAnimatorParent"]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K6 ["overrideRig"]
       55 OR                               R10 R11 R6
       56 CALL                             R9 1 1
       57 JUMPIF                           R9 ; [+2]
       58 CLOSEUPVALS                      R7
       59 JUMP                             ; [+171]
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K9 ["findAnimatorParentInParent"]
       63 MOVE                             R11 R9
       64 CALL                             R10 1 1
       65 JUMPIFNOT                        R10 ; [+11]
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K10 ["ensureAnimationRigDataInAnimationClip"]
       69 MOVE                             R12 R6
       70 MOVE                             R13 R10
       71 CALL                             R11 2 0
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K11 ["ensureAnimationRigDataInHumanoid"]
       75 MOVE                             R12 R10
       76 CALL                             R11 1 0
       77 GETUPVAL                         R11 5
       78 MOVE                             R12 R9
       79 CALL                             R11 1 1
       80 MOVE                             R7 R11
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R7 R5 K7 ["animator"]
       84 JUMPIFNOTEQKNIL                  R7 ; [+2]
       86 LOADB                            R10 0 +1
       87 LOADB                            R10 1
       88 FASTCALL2K                       ASSERT R10 K12 ; [+4]
       90 LOADK                            R11 K12 ["Luau"]
       91 GETIMPORT                        R9 K14 [assert]
       93 CALL                             R9 2 0
       94 MOVE                             R9 R8
       95 LOADNIL                          R10
       96 LOADNIL                          R11
       97 FORGPREP                         R9
       98 GETIMPORT                        R14 K16 [Instance.new]
      100 LOADK                            R15 K17 ["Animation"]
      101 CALL                             R14 1 1
      102 SETTABLEKS                       R13 R14 K18 ["AnimationId"]
      104 GETIMPORT                        R15 K20 [pcall]
      106 NEWCLOSURE                       R16 P0
      107 CAPTURE                          REF R7
      108 CAPTURE                          VAL R14
      109 CALL                             R15 1 0
      110 NAMECALL                         R15 R14 K21 ["Destroy"]
      112 CALL                             R15 1 0
      113 FORGLOOP                         R9 2 ; [-16]
      115 MOVE                             R9 R6
      116 GETUPVAL                         R10 6
      117 GETTABLEKS                       R10 R10 K22 ["spotlightedNodeId"]
      119 JUMPIFEQKNIL                     R10 ; [+20]
      121 GETUPVAL                         R10 7
      122 GETTABLEKS                       R10 R10 K23 ["instanceRegistry"]
      124 GETUPVAL                         R12 6
      125 GETTABLEKS                       R12 R12 K22 ["spotlightedNodeId"]
      127 NAMECALL                         R10 R10 K24 ["idToInstance"]
      129 CALL                             R10 2 1
      130 JUMPIFEQKNIL                     R10 ; [+9]
      132 GETUPVAL                         R11 8
      133 DUPTABLE                         R12 K27 [{"sourceAnimationGraph", "spotlightedNode"}]
      134 SETTABLEKS                       R6 R12 K25 ["sourceAnimationGraph"]
      136 SETTABLEKS                       R10 R12 K26 ["spotlightedNode"]
      138 CALL                             R11 1 1
      139 MOVE                             R9 R11
      140 GETUPVAL                         R10 9
      141 MOVE                             R12 R9
      142 NAMECALL                         R10 R10 K28 ["RegisterAnimationClip"]
      144 CALL                             R10 2 1
      145 GETIMPORT                        R11 K16 [Instance.new]
      147 LOADK                            R12 K17 ["Animation"]
      148 CALL                             R11 1 1
      149 LOADK                            R13 K29 ["Animation_"]
      150 GETTABLEKS                       R14 R6 K30 ["Name"]
      152 CONCAT                           R12 R13 R14
      153 SETTABLEKS                       R12 R11 K30 ["Name"]
      155 SETTABLEKS                       R10 R11 K18 ["AnimationId"]
      157 MOVE                             R14 R11
      158 NAMECALL                         R12 R7 K31 ["LoadAnimation"]
      160 CALL                             R12 2 1
      161 GETIMPORT                        R13 K35 [Enum.AnimationPriority.Action4]
      163 SETTABLEKS                       R13 R12 K36 ["Priority"]
      165 LOADB                            R13 1
      166 SETTABLEKS                       R13 R12 K37 ["Looped"]
      168 GETUPVAL                         R13 10
      169 MOVE                             R14 R7
      170 MOVE                             R15 R6
      171 MOVE                             R16 R12
      172 CALL                             R13 3 1
      173 LOADN                            R16 0
      174 LOADN                            R17 1
      175 LOADN                            R18 0
      176 NAMECALL                         R14 R12 K38 ["Play"]
      178 CALL                             R14 4 0
      179 GETUPVAL                         R14 1
      180 GETTABLEKS                       R14 R14 K39 ["currentTime"]
      182 SETTABLEKS                       R14 R12 K40 ["TimePosition"]
      184 GETUPVAL                         R14 11
      185 NAMECALL                         R14 R14 K41 ["IsRunning"]
      187 CALL                             R14 1 1
      188 JUMPIF                           R14 ; [+16]
      189 GETIMPORT                        R14 K20 [pcall]
      191 NEWCLOSURE                       R15 P1
      192 CAPTURE                          REF R7
      193 CALL                             R14 1 2
      194 JUMPIF                           R14 ; [+10]
      195 GETIMPORT                        R16 K43 [warn]
      197 LOADK                            R18 K44 ["Failed to step animations for preview: "]
      198 FASTCALL1                        TOSTRING R15 ; [+3]
      199 MOVE                             R20 R15
      200 GETIMPORT                        R19 K46 [tostring]
      202 CALL                             R19 1 1
      203 CONCAT                           R17 R18 R19
      204 CALL                             R16 1 0
      205 DUPTABLE                         R16 K51 [{"animationClip", "animationTrack", "animationId", "animator", "destroy"}]
      206 SETTABLEKS                       R6 R16 K47 ["animationClip"]
      208 SETTABLEKS                       R12 R16 K48 ["animationTrack"]
      210 SETTABLEKS                       R10 R16 K49 ["animationId"]
      212 SETTABLEKS                       R7 R16 K7 ["animator"]
      214 NEWCLOSURE                       R17 P2
      215 CAPTURE                          UPVAL U0
      216 CAPTURE                          UPVAL U12
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R11
      219 CAPTURE                          VAL R12
      220 CAPTURE                          UPVAL U11
      221 CAPTURE                          REF R7
      222 SETTABLEKS                       R17 R16 K50 ["destroy"]
      224 FASTCALL2                        TABLE_INSERT R0 R16 ; [+4]
      226 MOVE                             R15 R0
      227 GETIMPORT                        R14 K54 [table.insert]
      229 CALL                             R14 2 0
      230 CLOSEUPVALS                      R7
      231 FORGLOOP                         R1 2 ; [-213]
      233 GETIMPORT                        R1 K56 [table.freeze]
      235 MOVE                             R2 R0
      236 CALL                             R1 1 -1
      237 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+43]
        3 DUPTABLE                         R0 K6 [{[1] = "edit", ["graphId"], ["rigId"] = "", ["retrievalData"]}]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K7 ["instanceRegistry"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K8 ["animationClip"]
       10 NAMECALL                         R1 R1 K9 ["instanceToId"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K2 ["graphId"]
       15 DUPTABLE                         R1 K14 [{["animationId"], ["graphInstanceId"], ["loadAsEphemeral"] = False}]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K10 ["animationId"]
       19 SETTABLEKS                       R2 R1 K10 ["animationId"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K7 ["instanceRegistry"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K8 ["animationClip"]
       27 NAMECALL                         R2 R2 K9 ["instanceToId"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K11 ["graphInstanceId"]
       32 SETTABLEKS                       R1 R0 K5 ["retrievalData"]
       34 GETUPVAL                         R1 3
       35 GETTABLEKS                       R1 R1 K15 ["setDebugDataAsync"]
       37 MOVE                             R2 R0
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K16 ["animationTrack"]
       41 NAMECALL                         R3 R3 K17 ["GetDebugData"]
       43 CALL                             R3 1 -1
       44 CALL                             R1 -1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 3
       47 GETTABLEKS                       R0 R0 K18 ["setDebugDataAsync_DEPRECATED"]
       49 GETUPVAL                         R1 2
       50 GETTABLEKS                       R1 R1 K16 ["animationTrack"]
       52 NAMECALL                         R1 R1 K17 ["GetDebugData"]
       54 CALL                             R1 1 -1
       55 CALL                             R0 -1 0
       56 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 LOADN                            R2 0
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["animationParameters"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K1 ["previewAnimationParameters"]
       10 JUMPIFEQKNIL                     R6 ; [+4]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K1 ["previewAnimationParameters"]
       15 MOVE                             R6 R5
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 GETUPVAL                         R11 2
       20 CALL                             R11 0 1
       21 JUMPIFNOT                        R11 ; [+22]
       22 GETTABLEKS                       R11 R4 K2 ["animationTrack"]
       24 NAMECALL                         R11 R11 K3 ["GetParameterDefaults"]
       26 CALL                             R11 1 1
       27 GETIMPORT                        R12 K6 [string.find]
       29 MOVE                             R13 R9
       30 LOADK                            R14 K7 ["^RBX_"]
       31 CALL                             R12 2 1
       32 JUMPIF                           R12 ; [+24]
       33 GETTABLE                         R12 R11 R9
       34 JUMPIFEQKNIL                     R12 ; [+22]
       36 GETTABLEKS                       R12 R4 K2 ["animationTrack"]
       38 MOVE                             R14 R9
       39 MOVE                             R15 R10
       40 NAMECALL                         R12 R12 K8 ["SetParameter"]
       42 CALL                             R12 3 0
       43 JUMP                             ; [+13]
       44 GETIMPORT                        R11 K6 [string.find]
       46 MOVE                             R12 R9
       47 LOADK                            R13 K7 ["^RBX_"]
       48 CALL                             R11 2 1
       49 JUMPIF                           R11 ; [+7]
       50 GETTABLEKS                       R11 R4 K2 ["animationTrack"]
       52 MOVE                             R13 R9
       53 MOVE                             R14 R10
       54 NAMECALL                         R11 R11 K8 ["SetParameter"]
       56 CALL                             R11 3 0
       57 FORGLOOP                         R6 2 ; [-39]
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K9 ["currentTime"]
       62 JUMPIFNOTEQKN                    R6 K10 [0] ; [+5]
       64 GETUPVAL                         R6 4
       65 MOVE                             R7 R4
       66 CALL                             R6 1 0
       67 JUMP                             ; [+95]
       68 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
       70 GETTABLEKS                       R6 R6 K11 ["IsPlaying"]
       72 JUMPIF                           R6 ; [+8]
       73 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
       75 LOADN                            R8 0
       76 LOADN                            R9 1
       77 LOADN                            R10 0
       78 NAMECALL                         R6 R6 K12 ["Play"]
       80 CALL                             R6 4 0
       81 GETTABLEKS                       R6 R4 K13 ["animationClip"]
       83 LOADK                            R8 K14 ["AnimationGraphDefinition"]
       84 NAMECALL                         R6 R6 K15 ["IsA"]
       86 CALL                             R6 2 1
       87 JUMPIFNOT                        R6 ; [+47]
       88 GETUPVAL                         R7 3
       89 GETTABLEKS                       R7 R7 K9 ["currentTime"]
       91 GETUPVAL                         R8 5
       92 GETTABLEKS                       R8 R8 K16 ["current"]
       94 SUB                              R6 R7 R8
       95 GETUPVAL                         R7 5
       96 GETUPVAL                         R8 3
       97 GETTABLEKS                       R8 R8 K9 ["currentTime"]
       99 SETTABLEKS                       R8 R7 K16 ["current"]
      101 GETUPVAL                         R7 6
      102 NAMECALL                         R7 R7 K17 ["IsRunning"]
      104 CALL                             R7 1 1
      105 JUMPIF                           R7 ; [+20]
      106 LOADN                            R7 0
      107 JUMPIFNOTLT                      R7 R6 ; [+18]
      109 GETIMPORT                        R7 K19 [pcall]
      111 NEWCLOSURE                       R8 P0
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 CALL                             R7 1 2
      115 JUMPIF                           R7 ; [+10]
      116 GETIMPORT                        R9 K21 [warn]
      118 LOADK                            R11 K22 ["Failed to step animations for preview: "]
      119 FASTCALL1                        TOSTRING R8 ; [+3]
      120 MOVE                             R13 R8
      121 GETIMPORT                        R12 K24 [tostring]
      123 CALL                             R12 1 1
      124 CONCAT                           R10 R11 R12
      125 CALL                             R9 1 0
      126 GETIMPORT                        R7 K27 [task.spawn]
      128 NEWCLOSURE                       R8 P1
      129 CAPTURE                          UPVAL U7
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          VAL R4
      132 CAPTURE                          UPVAL U9
      133 CALL                             R7 1 0
      134 JUMP                             ; [+28]
      135 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
      137 GETUPVAL                         R7 3
      138 GETTABLEKS                       R7 R7 K9 ["currentTime"]
      140 SETTABLEKS                       R7 R6 K28 ["TimePosition"]
      142 GETUPVAL                         R6 6
      143 NAMECALL                         R6 R6 K17 ["IsRunning"]
      145 CALL                             R6 1 1
      146 JUMPIF                           R6 ; [+16]
      147 GETIMPORT                        R6 K19 [pcall]
      149 NEWCLOSURE                       R7 P2
      150 CAPTURE                          VAL R4
      151 CALL                             R6 1 2
      152 JUMPIF                           R6 ; [+10]
      153 GETIMPORT                        R8 K21 [warn]
      155 LOADK                            R10 K22 ["Failed to step animations for preview: "]
      156 FASTCALL1                        TOSTRING R7 ; [+3]
      157 MOVE                             R12 R7
      158 GETIMPORT                        R11 K24 [tostring]
      160 CALL                             R11 1 1
      161 CONCAT                           R9 R10 R11
      162 CALL                             R8 1 0
      163 FORGLOOP                         R0 2 ; [-160]
      165 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["useContext"]
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K1 ["Context"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K0 ["useContext"]
       38 GETUPVAL                         R7 6
       39 GETTABLEKS                       R7 R7 K2 ["SpotlightedNodeContext"]
       41 GETTABLEKS                       R7 R7 K1 ["Context"]
       43 CALL                             R6 1 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K3 ["useState"]
       47 LOADN                            R8 0
       48 CALL                             R7 1 2
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U12
       61 CAPTURE                          VAL R8
       62 CAPTURE                          UPVAL U13
       63 CAPTURE                          UPVAL U14
       64 NEWTABLE                         R11 0 3
       66 GETTABLEKS                       R12 R5 K5 ["instanceRegistry"]
       68 GETTABLEKS                       R13 R4 K6 ["observeNodePropsById"]
       70 MOVE                             R14 R8
       71 SETLIST                          R11 R12 3 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       77 NEWCLOSURE                       R11 P1
       78 CAPTURE                          UPVAL U13
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U15
       82 CAPTURE                          UPVAL U16
       83 CAPTURE                          UPVAL U17
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 CAPTURE                          UPVAL U18
       87 CAPTURE                          UPVAL U19
       88 CAPTURE                          VAL R9
       89 CAPTURE                          UPVAL U14
       90 CAPTURE                          UPVAL U20
       91 NEWTABLE                         R12 0 6
       93 GETTABLEKS                       R13 R1 K8 ["animationClipsList"]
       95 GETUPVAL                         R15 13
       96 CALL                             R15 0 1
       97 JUMPIFNOT                        R15 ; [+3]
       98 GETTABLEKS                       R14 R0 K9 ["isPreviewEnabled"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R14
      102 GETTABLEKS                       R15 R0 K10 ["overrideRig"]
      104 MOVE                             R16 R9
      105 MOVE                             R17 R7
      106 GETTABLEKS                       R18 R6 K11 ["spotlightedNodeId"]
      108 SETLIST                          R12 R13 6 [1]
      110 CALL                             R10 2 1
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K12 ["useEffect"]
      114 NEWCLOSURE                       R12 P2
      115 CAPTURE                          VAL R10
      116 NEWTABLE                         R13 0 1
      118 MOVE                             R14 R10
      119 SETLIST                          R13 R14 1 [1]
      121 CALL                             R11 2 0
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K13 ["useRef"]
      125 GETTABLEKS                       R12 R0 K14 ["currentTime"]
      127 CALL                             R11 1 1
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K12 ["useEffect"]
      131 NEWCLOSURE                       R13 P3
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R2
      134 CAPTURE                          UPVAL U21
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U20
      137 CAPTURE                          VAL R11
      138 CAPTURE                          UPVAL U14
      139 CAPTURE                          UPVAL U13
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R3
      142 NEWTABLE                         R14 0 6
      144 GETTABLEKS                       R15 R0 K15 ["isPlaying"]
      146 GETTABLEKS                       R16 R0 K14 ["currentTime"]
      148 MOVE                             R17 R10
      149 GETTABLEKS                       R18 R2 K16 ["animationParameters"]
      151 GETUPVAL                         R20 13
      152 CALL                             R20 0 1
      153 JUMPIFNOT                        R20 ; [+3]
      154 GETTABLEKS                       R19 R3 K17 ["setDebugDataAsync"]
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R19 R3 K18 ["setDebugDataAsync_DEPRECATED"]
      159 GETUPVAL                         R21 13
      160 CALL                             R21 0 1
      161 JUMPIFNOT                        R21 ; [+3]
      162 GETTABLEKS                       R20 R5 K5 ["instanceRegistry"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R20
      166 SETLIST                          R14 R15 6 [1]
      168 CALL                             R12 2 0
      169 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["RunService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["AnimationNodeWrapper"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       36 GETTABLEKS                       R6 R6 K15 ["AnimationParameterContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Contexts"]
       43 GETTABLEKS                       R7 R7 K16 ["AnimationPreviewClipsContext"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R0 K12 ["Util"]
       50 GETTABLEKS                       R8 R8 K17 ["Rig"]
       52 GETTABLEKS                       R8 R8 K18 ["AnimationRigDataUtils"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K19 ["Flags"]
       59 GETTABLEKS                       R9 R9 K20 ["FFlagAnimGraphUI_NoDestroyForceNewAnimator"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       66 GETTABLEKS                       R10 R10 K21 ["GraphDebugDataContext"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Contexts"]
       73 GETTABLEKS                       R11 R11 K21 ["GraphDebugDataContext"]
       75 GETTABLEKS                       R11 R11 K22 ["GraphDebugDataUtils"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Contexts"]
       82 GETTABLEKS                       R12 R12 K23 ["InstanceRegistryContext"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R13 R0 K14 ["Contexts"]
       89 GETTABLEKS                       R13 R13 K24 ["NativeGraphContext"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R14 R0 K25 ["Parent"]
       96 GETTABLEKS                       R14 R14 K26 ["NodeGraphing"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K11 [require]
      101 GETTABLEKS                       R15 R0 K25 ["Parent"]
      103 GETTABLEKS                       R15 R15 K27 ["React"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R16 R0 K12 ["Util"]
      110 GETTABLEKS                       R16 R16 K28 ["Signals"]
      112 GETTABLEKS                       R16 R16 K29 ["Experimental"]
      114 GETTABLEKS                       R16 R16 K30 ["SignalExperimentalUtils"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K11 [require]
      119 GETTABLEKS                       R17 R0 K25 ["Parent"]
      121 GETTABLEKS                       R17 R17 K28 ["Signals"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K11 [require]
      126 GETTABLEKS                       R18 R0 K12 ["Util"]
      128 GETTABLEKS                       R18 R18 K28 ["Signals"]
      130 GETTABLEKS                       R18 R18 K31 ["SignalsInstanceUtils"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K11 [require]
      135 GETTABLEKS                       R19 R0 K19 ["Flags"]
      137 GETTABLEKS                       R19 R19 K32 ["getFFlagAnimEditorResetAnimationConstraints"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K11 [require]
      142 GETTABLEKS                       R20 R0 K19 ["Flags"]
      144 GETTABLEKS                       R20 R20 K33 ["getFFlagAnimGraphUIFixSetParameterWarningMessage"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K11 [require]
      149 GETTABLEKS                       R21 R0 K19 ["Flags"]
      151 GETTABLEKS                       R21 R21 K34 ["getFFlagAnimGraphUI_RunTimeDebug"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K11 [require]
      156 GETTABLEKS                       R22 R0 K14 ["Contexts"]
      158 GETTABLEKS                       R22 R22 K35 ["MaskEditorContext"]
      160 GETTABLEKS                       R22 R22 K36 ["observeMaskDatum"]
      162 CALL                             R21 1 1
      163 DUPCLOSURE                       R22 K37 [PROTO_0]
      164 CAPTURE                          VAL R8
      165 DUPCLOSURE                       R23 K38 [PROTO_1]
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R3
      168 DUPCLOSURE                       R24 K39 [PROTO_2]
      169 DUPCLOSURE                       R25 K40 [PROTO_3]
      170 DUPCLOSURE                       R26 K41 [PROTO_25]
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R24
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R19
      193 RETURN                           R26 1
