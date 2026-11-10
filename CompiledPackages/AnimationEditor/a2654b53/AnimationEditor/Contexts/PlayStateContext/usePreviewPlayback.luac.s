PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R0 K0 ["GetChildren"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["Animator"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+24]
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
       33 LOADNIL                          R8
       34 SETTABLEKS                       R8 R7 K6 ["Parent"]
       36 FORGLOOP                         R3 2 ; [-30]
       38 JUMPIF                           R2 ; [+11]
       39 GETIMPORT                        R3 K11 [Instance.new]
       41 LOADK                            R4 K1 ["Animator"]
       42 CALL                             R3 1 1
       43 LOADB                            R4 0
       44 SETTABLEKS                       R4 R3 K12 ["Archivable"]
       46 LOADK                            R4 K1 ["Animator"]
       47 SETTABLEKS                       R4 R3 K13 ["Name"]
       49 MOVE                             R2 R3
       50 MOVE                             R3 R1
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 SETTABLEKS                       R2 R7 K6 ["Parent"]
       56 FORGLOOP                         R3 2 ; [-3]
       58 SETTABLEKS                       R0 R2 K6 ["Parent"]
       60 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["animationTrack"]
        2 LOADN                            R3 0
        3 NAMECALL                         R1 R1 K1 ["Stop"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["animator"]
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R1 K4 ["FindFirstAncestorWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFEQKNIL                     R1 ; [+36]
       14 LOADK                            R4 K5 ["Workspace"]
       15 NAMECALL                         R2 R1 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+30]
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
       36 JUMP                             ; [+10]
       37 LOADK                            R9 K14 ["AnimationConstraint"]
       38 NAMECALL                         R7 R6 K6 ["IsA"]
       40 CALL                             R7 2 1
       41 JUMPIFNOT                        R7 ; [+5]
       42 GETIMPORT                        R7 K12 [CFrame.new]
       44 CALL                             R7 0 1
       45 SETTABLEKS                       R7 R6 K13 ["Transform"]
       47 FORGLOOP                         R2 2 ; [-25]
       49 GETUPVAL                         R2 0
       50 NAMECALL                         R2 R2 K15 ["IsRunning"]
       52 CALL                             R2 1 1
       53 JUMPIF                           R2 ; [+6]
       54 GETTABLEKS                       R2 R0 K2 ["animator"]
       56 LOADN                            R4 0
       57 NAMECALL                         R2 R2 K16 ["StepAnimations"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

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
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_4]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
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
       26 DUPCLOSURE                       R5 K8 [PROTO_8]
       27 CALL                             R3 2 0
       28 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_16:
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
       18 JUMPIFEQ                         R9 R8 ; [+41]
       20 GETTABLEKS                       R10 R8 K0 ["key"]
       22 GETTABLE                         R9 R2 R10
       23 GETTABLEKS                       R9 R9 K1 ["compareValue"]
       25 GETTABLEKS                       R10 R8 K1 ["compareValue"]
       27 JUMPIFEQ                         R9 R10 ; [+32]
       29 LOADNIL                          R9
       30 GETIMPORT                        R10 K3 [pcall]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          REF R9
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R8
       37 CALL                             R10 1 2
       38 JUMPIF                           R10 ; [+12]
       39 GETIMPORT                        R12 K5 [warn]
       41 LOADK                            R13 K6 ["Failed to update graph node property %*: %*"]
       42 GETTABLEKS                       R15 R8 K0 ["key"]
       44 ORK                              R16 R11 K7 ["<no error message>"]
       45 NAMECALL                         R13 R13 K8 ["format"]
       47 CALL                             R13 3 1
       48 CALL                             R12 1 0
       49 CLOSEUPVALS                      R9
       50 JUMP                             ; [+9]
       51 JUMPIF                           R9 ; [+5]
       52 JUMPIFNOT                        R2 ; [+4]
       53 GETUPVAL                         R12 4
       54 DUPCLOSURE                       R13 K9 [PROTO_15]
       55 CALL                             R12 1 0
       56 JUMP                             ; [+2]
       57 JUMPIFNOT                        R9 ; [+1]
       58 LOADB                            R3 1
       59 CLOSEUPVALS                      R9
       60 FORGLOOP                         R4 2 ; [-51]
       62 JUMPIFNOT                        R3 ; [+10]
       63 GETUPVAL                         R4 5
       64 NAMECALL                         R4 R4 K10 ["IsRunning"]
       66 CALL                             R4 1 1
       67 JUMPIF                           R4 ; [+5]
       68 GETUPVAL                         R4 6
       69 LOADN                            R6 0
       70 NAMECALL                         R4 R4 K11 ["StepAnimations"]
       72 CALL                             R4 2 0
       73 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R4 R1 K0 ["GetChildren"]
        4 CALL                             R4 1 3
        5 FORGPREP                         R4
        6 LOADNIL                          R9
        7 GETUPVAL                         R10 0
        8 CALL                             R10 0 1
        9 JUMPIFNOT                        R10 ; [+13]
       10 LOADK                            R12 K1 ["AnimationValueNodeDefinition"]
       11 NAMECALL                         R10 R8 K2 ["IsA"]
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+8]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R12 R8 K3 ["NodeType"]
       18 NAMECALL                         R10 R10 K4 ["GetAnimationValueNodeDefinition"]
       20 CALL                             R10 2 1
       21 MOVE                             R9 R10
       22 JUMP                             ; [+14]
       23 LOADK                            R12 K5 ["AnimationNodeDefinition"]
       24 NAMECALL                         R10 R8 K2 ["IsA"]
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+114]
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R12 R8 K3 ["NodeType"]
       31 NAMECALL                         R10 R10 K6 ["GetAnimationNodeDefinition"]
       33 CALL                             R10 2 1
       34 MOVE                             R9 R10
       35 JUMP                             ; [+1]
       36 JUMP                             ; [+105]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K7 ["instanceRegistry"]
       40 MOVE                             R12 R8
       41 NAMECALL                         R10 R10 K8 ["instanceToId"]
       43 CALL                             R10 2 1
       44 GETIMPORT                        R11 K10 [game]
       46 LOADK                            R13 K11 ["AnimGraphUpdateGraphNodeDefinitionAPI"]
       47 NAMECALL                         R11 R11 K12 ["GetEngineFeature"]
       49 CALL                             R11 2 1
       50 JUMPIFNOT                        R11 ; [+23]
       51 LOADK                            R13 K5 ["AnimationNodeDefinition"]
       52 NAMECALL                         R11 R8 K2 ["IsA"]
       54 CALL                             R11 2 1
       55 JUMPIFNOT                        R11 ; [+18]
       56 GETUPVAL                         R11 3
       57 MOVE                             R12 R0
       58 MOVE                             R13 R2
       59 MOVE                             R14 R8
       60 MOVE                             R15 R10
       61 NEWCLOSURE                       R16 P0
       62 CAPTURE                          UPVAL U4
       63 NEWCLOSURE                       R17 P1
       64 CAPTURE                          UPVAL U5
       65 CALL                             R11 6 1
       66 JUMPIFNOT                        R11 ; [+7]
       67 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
       69 MOVE                             R13 R3
       70 MOVE                             R14 R11
       71 GETIMPORT                        R12 K15 [table.insert]
       73 CALL                             R12 2 0
       74 GETUPVAL                         R11 6
       75 GETTABLEKS                       R11 R11 K16 ["observeNodePropsById"]
       77 MOVE                             R12 R10
       78 CALL                             R11 1 1
       79 NEWTABLE                         R12 0 0
       81 JUMPIFEQKNIL                     R9 ; [+15]
       83 GETTABLEKS                       R13 R9 K17 ["Properties"]
       85 JUMPIFEQKNIL                     R13 ; [+11]
       87 GETTABLEKS                       R13 R9 K17 ["Properties"]
       89 LOADNIL                          R14
       90 LOADNIL                          R15
       91 FORGPREP                         R13
       92 GETTABLEKS                       R18 R17 K18 ["Name"]
       94 SETTABLE                         R17 R12 R18
       95 FORGLOOP                         R13 2 ; [-4]
       97 GETUPVAL                         R13 7
       98 GETTABLEKS                       R13 R13 K19 ["createComputed"]
      100 NEWCLOSURE                       R14 P2
      101 CAPTURE                          VAL R11
      102 CALL                             R13 1 1
      103 GETUPVAL                         R14 8
      104 GETTABLEKS                       R14 R14 K20 ["forEach"]
      106 MOVE                             R15 R13
      107 NEWCLOSURE                       R16 P3
      108 CAPTURE                          VAL R12
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          UPVAL U10
      114 CALL                             R14 2 1
      115 GETUPVAL                         R15 7
      116 GETTABLEKS                       R15 R15 K19 ["createComputed"]
      118 NEWCLOSURE                       R16 P4
      119 CAPTURE                          VAL R14
      120 CALL                             R15 1 1
      121 LOADNIL                          R16
      122 GETUPVAL                         R17 11
      123 GETTABLEKS                       R17 R17 K21 ["createEffect"]
      125 NEWCLOSURE                       R18 P5
      126 CAPTURE                          VAL R15
      127 CAPTURE                          REF R16
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R10
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          UPVAL U12
      132 CAPTURE                          VAL R0
      133 CALL                             R17 1 1
      134 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
      136 MOVE                             R19 R3
      137 MOVE                             R20 R17
      138 GETIMPORT                        R18 K15 [table.insert]
      140 CALL                             R18 2 0
      141 CLOSEUPVALS                      R16
      142 FORGLOOP                         R4 2 ; [-137]
      144 NEWCLOSURE                       R4 P6
      145 CAPTURE                          VAL R3
      146 RETURN                           R4 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["StepAnimations"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["Destroy"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 LOADN                            R3 0
       11 NAMECALL                         R1 R1 K1 ["Stop"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 4
       15 NAMECALL                         R1 R1 K2 ["IsRunning"]
       17 CALL                             R1 1 1
       18 JUMPIF                           R1 ; [+5]
       19 GETUPVAL                         R1 5
       20 LOADN                            R3 0
       21 NAMECALL                         R1 R1 K3 ["StepAnimations"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 3
       25 NAMECALL                         R1 R1 K0 ["Destroy"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPreviewEnabled"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+4]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["animationClipsList"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K3 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K4 ["Instance"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R6 R5 K5 ["clip"]
       27 LOADNIL                          R7
       28 GETUPVAL                         R8 2
       29 MOVE                             R9 R6
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K6 ["overrideRig"]
       34 JUMPIF                           R9 ; [+11]
       35 FASTCALL1                        TYPEOF R5 ; [+3]
       36 MOVE                             R10 R5
       37 GETIMPORT                        R9 K3 [typeof]
       39 CALL                             R9 1 1
       40 JUMPIFEQKS                       R9 K4 ["Instance"] ; [+5]
       42 GETTABLEKS                       R9 R5 K7 ["animator"]
       44 JUMPIFNOTEQKNIL                  R9 ; [+34]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K8 ["findAnimatorParent"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K6 ["overrideRig"]
       52 OR                               R10 R11 R6
       53 CALL                             R9 1 1
       54 JUMPIF                           R9 ; [+2]
       55 CLOSEUPVALS                      R7
       56 JUMP                             ; [+170]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K9 ["findAnimatorParentInParent"]
       60 MOVE                             R11 R9
       61 CALL                             R10 1 1
       62 JUMPIFNOT                        R10 ; [+11]
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R11 R11 K10 ["ensureAnimationRigDataInAnimationClip"]
       66 MOVE                             R12 R6
       67 MOVE                             R13 R10
       68 CALL                             R11 2 0
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K11 ["ensureAnimationRigDataInHumanoid"]
       72 MOVE                             R12 R10
       73 CALL                             R11 1 0
       74 GETUPVAL                         R11 4
       75 MOVE                             R12 R9
       76 CALL                             R11 1 1
       77 MOVE                             R7 R11
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R7 R5 K7 ["animator"]
       81 JUMPIFNOTEQKNIL                  R7 ; [+2]
       83 LOADB                            R10 0 +1
       84 LOADB                            R10 1
       85 FASTCALL2K                       ASSERT R10 K12 ; [+4]
       87 LOADK                            R11 K12 ["Luau"]
       88 GETIMPORT                        R9 K14 [assert]
       90 CALL                             R9 2 0
       91 MOVE                             R9 R8
       92 LOADNIL                          R10
       93 LOADNIL                          R11
       94 FORGPREP                         R9
       95 GETIMPORT                        R14 K16 [Instance.new]
       97 LOADK                            R15 K17 ["Animation"]
       98 CALL                             R14 1 1
       99 SETTABLEKS                       R13 R14 K18 ["AnimationId"]
      101 GETIMPORT                        R15 K20 [pcall]
      103 NEWCLOSURE                       R16 P0
      104 CAPTURE                          REF R7
      105 CAPTURE                          VAL R14
      106 CALL                             R15 1 0
      107 NAMECALL                         R15 R14 K21 ["Destroy"]
      109 CALL                             R15 1 0
      110 FORGLOOP                         R9 2 ; [-16]
      112 MOVE                             R9 R6
      113 GETUPVAL                         R10 5
      114 GETTABLEKS                       R10 R10 K22 ["spotlightedNodeId"]
      116 JUMPIFEQKNIL                     R10 ; [+20]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R10 R10 K23 ["instanceRegistry"]
      121 GETUPVAL                         R12 5
      122 GETTABLEKS                       R12 R12 K22 ["spotlightedNodeId"]
      124 NAMECALL                         R10 R10 K24 ["idToInstance"]
      126 CALL                             R10 2 1
      127 JUMPIFEQKNIL                     R10 ; [+9]
      129 GETUPVAL                         R11 7
      130 DUPTABLE                         R12 K27 [{"sourceAnimationGraph", "spotlightedNode"}]
      131 SETTABLEKS                       R6 R12 K25 ["sourceAnimationGraph"]
      133 SETTABLEKS                       R10 R12 K26 ["spotlightedNode"]
      135 CALL                             R11 1 1
      136 MOVE                             R9 R11
      137 GETUPVAL                         R10 8
      138 MOVE                             R12 R9
      139 NAMECALL                         R10 R10 K28 ["RegisterAnimationClip"]
      141 CALL                             R10 2 1
      142 GETIMPORT                        R11 K16 [Instance.new]
      144 LOADK                            R12 K17 ["Animation"]
      145 CALL                             R11 1 1
      146 LOADK                            R13 K29 ["Animation_"]
      147 GETTABLEKS                       R14 R6 K30 ["Name"]
      149 CONCAT                           R12 R13 R14
      150 SETTABLEKS                       R12 R11 K30 ["Name"]
      152 SETTABLEKS                       R10 R11 K18 ["AnimationId"]
      154 MOVE                             R14 R11
      155 NAMECALL                         R12 R7 K31 ["LoadAnimation"]
      157 CALL                             R12 2 1
      158 GETIMPORT                        R13 K35 [Enum.AnimationPriority.Action4]
      160 SETTABLEKS                       R13 R12 K36 ["Priority"]
      162 LOADB                            R13 1
      163 SETTABLEKS                       R13 R12 K37 ["Looped"]
      165 GETUPVAL                         R13 9
      166 MOVE                             R14 R7
      167 MOVE                             R15 R6
      168 MOVE                             R16 R12
      169 CALL                             R13 3 1
      170 LOADN                            R16 0
      171 LOADN                            R17 1
      172 LOADN                            R18 0
      173 NAMECALL                         R14 R12 K38 ["Play"]
      175 CALL                             R14 4 0
      176 GETUPVAL                         R14 10
      177 GETTABLEKS                       R14 R14 K39 ["current"]
      179 SETTABLEKS                       R14 R12 K40 ["TimePosition"]
      181 GETUPVAL                         R14 11
      182 NAMECALL                         R14 R14 K41 ["IsRunning"]
      184 CALL                             R14 1 1
      185 JUMPIF                           R14 ; [+16]
      186 GETIMPORT                        R14 K20 [pcall]
      188 NEWCLOSURE                       R15 P1
      189 CAPTURE                          REF R7
      190 CALL                             R14 1 2
      191 JUMPIF                           R14 ; [+10]
      192 GETIMPORT                        R16 K43 [warn]
      194 LOADK                            R18 K44 ["Failed to step animations for preview: "]
      195 FASTCALL1                        TOSTRING R15 ; [+3]
      196 MOVE                             R20 R15
      197 GETIMPORT                        R19 K46 [tostring]
      199 CALL                             R19 1 1
      200 CONCAT                           R17 R18 R19
      201 CALL                             R16 1 0
      202 DUPTABLE                         R16 K51 [{"animationClip", "animationTrack", "animationId", "animator", "destroy"}]
      203 SETTABLEKS                       R6 R16 K47 ["animationClip"]
      205 SETTABLEKS                       R12 R16 K48 ["animationTrack"]
      207 SETTABLEKS                       R10 R16 K49 ["animationId"]
      209 SETTABLEKS                       R7 R16 K7 ["animator"]
      211 NEWCLOSURE                       R17 P2
      212 CAPTURE                          UPVAL U12
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R12
      216 CAPTURE                          UPVAL U11
      217 CAPTURE                          REF R7
      218 SETTABLEKS                       R17 R16 K50 ["destroy"]
      220 FASTCALL2                        TABLE_INSERT R0 R16 ; [+4]
      222 MOVE                             R15 R0
      223 GETIMPORT                        R14 K54 [table.insert]
      225 CALL                             R14 2 0
      226 CLOSEUPVALS                      R7
      227 FORGLOOP                         R1 2 ; [-212]
      229 GETIMPORT                        R1 K56 [table.freeze]
      231 MOVE                             R2 R0
      232 CALL                             R1 1 -1
      233 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_24:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 GETTABLEKS                       R3 R0 K1 ["animationClip"]
        5 NAMECALL                         R1 R1 K2 ["instanceToId"]
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K9 [{["type"] = "edit", ["graphId"], ["rigId"] = "", ["retrievalData"]}]
        9 SETTABLEKS                       R1 R2 K5 ["graphId"]
       11 DUPTABLE                         R3 K14 [{["animationId"], ["graphInstanceId"], ["loadAsEphemeral"] = False}]
       12 GETTABLEKS                       R4 R0 K10 ["animationId"]
       14 SETTABLEKS                       R4 R3 K10 ["animationId"]
       16 SETTABLEKS                       R1 R3 K11 ["graphInstanceId"]
       18 SETTABLEKS                       R3 R2 K8 ["retrievalData"]
       20 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["current"]
        7 GETTABLE                         R5 R6 R4
        8 JUMPIFNOT                        R5 ; [+13]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K0 ["current"]
       12 LOADNIL                          R7
       13 SETTABLE                         R7 R6 R4
       14 GETIMPORT                        R6 K3 [task.spawn]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["setDebugDataAsync"]
       19 MOVE                             R8 R5
       20 LOADNIL                          R9
       21 CALL                             R6 3 0
       22 FORGLOOP                         R0 2 ; [-19]
       24 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 SETTABLE                         R1 R2 R0
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K1 ["setDebugDataAsync"]
       13 MOVE                             R3 R1
       14 GETTABLEKS                       R4 R0 K2 ["animationTrack"]
       16 NAMECALL                         R4 R4 K3 ["GetDebugData"]
       18 CALL                             R4 1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animationTrack"]
        3 NAMECALL                         R0 R0 K1 ["ResetGraph"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETIMPORT                        R3 K3 [warn]
        8 LOADK                            R5 K4 ["Failed to reset animation graph for preview: "]
        9 FASTCALL1                        TOSTRING R2 ; [+3]
       10 MOVE                             R7 R2
       11 GETIMPORT                        R6 K6 [tostring]
       13 CALL                             R6 1 1
       14 CONCAT                           R4 R5 R6
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K7 ["animationTrack"]
       19 GETTABLEKS                       R3 R3 K8 ["IsPlaying"]
       21 JUMPIF                           R3 ; [+8]
       22 GETTABLEKS                       R3 R0 K7 ["animationTrack"]
       24 LOADN                            R5 0
       25 LOADN                            R6 1
       26 LOADN                            R7 0
       27 NAMECALL                         R3 R3 K9 ["Play"]
       29 CALL                             R3 4 0
       30 GETUPVAL                         R3 0
       31 NAMECALL                         R3 R3 K10 ["IsRunning"]
       33 CALL                             R3 1 1
       34 JUMPIF                           R3 ; [+6]
       35 GETTABLEKS                       R3 R0 K11 ["animator"]
       37 LOADN                            R5 0
       38 NAMECALL                         R3 R3 K12 ["StepAnimations"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETTABLEKS                       R5 R4 K0 ["animationClip"]
        9 LOADK                            R7 K1 ["AnimationGraphDefinition"]
       10 NAMECALL                         R5 R5 K2 ["IsA"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+8]
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R4
       16 CALL                             R5 1 0
       17 GETIMPORT                        R5 K5 [task.spawn]
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R4
       21 CALL                             R5 2 0
       22 FORGLOOP                         R0 2 ; [-16]
       24 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 LOADN                            R2 0
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+19]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETTABLEKS                       R0 R0 K1 ["trackList"]
        8 GETUPVAL                         R1 2
        9 JUMPIFEQ                         R0 R1 ; [+12]
       11 GETUPVAL                         R0 1
       12 DUPTABLE                         R1 K3 [{"trackList", "byTrack"}]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K1 ["trackList"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K2 ["byTrack"]
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 GETUPVAL                         R0 2
       23 LOADNIL                          R1
       24 LOADNIL                          R2
       25 FORGPREP                         R0
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K4 ["animationParameters"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K5 ["previewAnimationParameters"]
       32 JUMPIFEQKNIL                     R6 ; [+4]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R5 R6 K5 ["previewAnimationParameters"]
       37 LOADNIL                          R6
       38 GETUPVAL                         R7 0
       39 CALL                             R7 0 1
       40 JUMPIFNOT                        R7 ; [+15]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K0 ["current"]
       44 GETTABLEKS                       R7 R7 K2 ["byTrack"]
       46 GETTABLE                         R6 R7 R4
       47 JUMPIF                           R6 ; [+8]
       48 NEWTABLE                         R6 0 0
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K0 ["current"]
       53 GETTABLEKS                       R7 R7 K2 ["byTrack"]
       55 SETTABLE                         R6 R7 R4
       56 GETTABLEKS                       R7 R4 K6 ["animationTrack"]
       58 NAMECALL                         R7 R7 K7 ["GetParameterDefaults"]
       60 CALL                             R7 1 1
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R8 R8 K8 ["getParametersToApply"]
       64 MOVE                             R9 R5
       65 MOVE                             R10 R6
       66 MOVE                             R11 R7
       67 CALL                             R8 3 1
       68 MOVE                             R9 R8
       69 LOADNIL                          R10
       70 LOADNIL                          R11
       71 FORGPREP                         R9
       72 GETTABLEKS                       R14 R4 K6 ["animationTrack"]
       74 MOVE                             R16 R12
       75 MOVE                             R17 R13
       76 NAMECALL                         R14 R14 K9 ["SetParameter"]
       78 CALL                             R14 3 0
       79 JUMPIFEQKNIL                     R6 ; [+2]
       81 SETTABLE                         R13 R6 R12
       82 FORGLOOP                         R9 2 ; [-11]
       84 GETTABLEKS                       R9 R4 K10 ["animationClip"]
       86 LOADK                            R11 K11 ["AnimationGraphDefinition"]
       87 NAMECALL                         R9 R9 K12 ["IsA"]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R10 5
       91 GETTABLEKS                       R10 R10 K13 ["currentTime"]
       93 JUMPIFNOTEQKN                    R10 K14 [0] ; [+21]
       95 GETUPVAL                         R10 6
       96 JUMPIFNOT                        R10 ; [+5]
       97 JUMPIFNOT                        R9 ; [+4]
       98 GETUPVAL                         R10 7
       99 MOVE                             R11 R4
      100 CALL                             R10 1 0
      101 JUMP                             ; [+3]
      102 GETUPVAL                         R10 8
      103 MOVE                             R11 R4
      104 CALL                             R10 1 0
      105 JUMPIFEQKNIL                     R6 ; [+95]
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K0 ["current"]
      110 GETTABLEKS                       R10 R10 K2 ["byTrack"]
      112 LOADNIL                          R11
      113 SETTABLE                         R11 R10 R4
      114 JUMP                             ; [+86]
      115 GETTABLEKS                       R10 R4 K6 ["animationTrack"]
      117 GETTABLEKS                       R10 R10 K15 ["IsPlaying"]
      119 JUMPIF                           R10 ; [+8]
      120 GETTABLEKS                       R10 R4 K6 ["animationTrack"]
      122 LOADN                            R12 0
      123 LOADN                            R13 1
      124 LOADN                            R14 0
      125 NAMECALL                         R10 R10 K16 ["Play"]
      127 CALL                             R10 4 0
      128 JUMPIFNOT                        R9 ; [+44]
      129 GETUPVAL                         R11 5
      130 GETTABLEKS                       R11 R11 K13 ["currentTime"]
      132 GETUPVAL                         R12 9
      133 GETTABLEKS                       R12 R12 K0 ["current"]
      135 SUB                              R10 R11 R12
      136 GETUPVAL                         R11 9
      137 GETUPVAL                         R12 5
      138 GETTABLEKS                       R12 R12 K13 ["currentTime"]
      140 SETTABLEKS                       R12 R11 K0 ["current"]
      142 GETUPVAL                         R11 10
      143 NAMECALL                         R11 R11 K17 ["IsRunning"]
      145 CALL                             R11 1 1
      146 JUMPIF                           R11 ; [+20]
      147 LOADN                            R11 0
      148 JUMPIFNOTLT                      R11 R10 ; [+18]
      150 GETIMPORT                        R11 K19 [pcall]
      152 NEWCLOSURE                       R12 P0
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R10
      155 CALL                             R11 1 2
      156 JUMPIF                           R11 ; [+10]
      157 GETIMPORT                        R13 K21 [warn]
      159 LOADK                            R15 K22 ["Failed to step animations for preview: "]
      160 FASTCALL1                        TOSTRING R12 ; [+3]
      161 MOVE                             R17 R12
      162 GETIMPORT                        R16 K24 [tostring]
      164 CALL                             R16 1 1
      165 CONCAT                           R14 R15 R16
      166 CALL                             R13 1 0
      167 GETIMPORT                        R11 K27 [task.spawn]
      169 GETUPVAL                         R12 11
      170 MOVE                             R13 R4
      171 CALL                             R11 2 0
      172 JUMP                             ; [+28]
      173 GETTABLEKS                       R10 R4 K6 ["animationTrack"]
      175 GETUPVAL                         R11 5
      176 GETTABLEKS                       R11 R11 K13 ["currentTime"]
      178 SETTABLEKS                       R11 R10 K28 ["TimePosition"]
      180 GETUPVAL                         R10 10
      181 NAMECALL                         R10 R10 K17 ["IsRunning"]
      183 CALL                             R10 1 1
      184 JUMPIF                           R10 ; [+16]
      185 GETIMPORT                        R10 K19 [pcall]
      187 NEWCLOSURE                       R11 P1
      188 CAPTURE                          VAL R4
      189 CALL                             R10 1 2
      190 JUMPIF                           R10 ; [+10]
      191 GETIMPORT                        R12 K21 [warn]
      193 LOADK                            R14 K22 ["Failed to step animations for preview: "]
      194 FASTCALL1                        TOSTRING R11 ; [+3]
      195 MOVE                             R16 R11
      196 GETIMPORT                        R15 K24 [tostring]
      198 CALL                             R15 1 1
      199 CONCAT                           R13 R14 R15
      200 CALL                             R12 1 0
      201 FORGLOOP                         R0 2 ; [-176]
      203 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETIMPORT                        R5 K3 [task.spawn]
       10 GETUPVAL                         R6 2
       11 MOVE                             R7 R4
       12 CALL                             R5 2 0
       13 FORGLOOP                         R0 2 ; [-6]
       15 RETURN                           R0 0

PROTO_36:
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
       45 GETTABLEKS                       R7 R7 K0 ["useContext"]
       47 GETUPVAL                         R8 7
       48 GETTABLEKS                       R8 R8 K1 ["Context"]
       50 CALL                             R7 1 1
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K3 ["useState"]
       54 LOADN                            R9 0
       55 CALL                             R8 1 2
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K3 ["useState"]
       59 LOADN                            R11 0
       60 CALL                             R10 1 2
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       64 NEWCLOSURE                       R13 P0
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          VAL R5
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R4
       72 CAPTURE                          UPVAL U11
       73 CAPTURE                          UPVAL U12
       74 CAPTURE                          UPVAL U13
       75 CAPTURE                          UPVAL U14
       76 CAPTURE                          UPVAL U15
       77 CAPTURE                          UPVAL U16
       78 NEWTABLE                         R14 0 4
       80 GETTABLEKS                       R15 R5 K5 ["instanceRegistry"]
       82 GETTABLEKS                       R16 R4 K6 ["observeNodePropsById"]
       84 MOVE                             R17 R9
       85 MOVE                             R18 R11
       86 SETLIST                          R14 R15 4 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R13 17
       90 GETTABLEKS                       R13 R13 K7 ["useRefToState"]
       92 GETTABLEKS                       R14 R0 K8 ["currentTime"]
       94 CALL                             R13 1 1
       95 GETUPVAL                         R14 0
       96 GETTABLEKS                       R14 R14 K9 ["useMemo"]
       98 NEWCLOSURE                       R15 P1
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U18
      102 CAPTURE                          UPVAL U19
      103 CAPTURE                          UPVAL U20
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          UPVAL U21
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R13
      110 CAPTURE                          UPVAL U16
      111 CAPTURE                          UPVAL U22
      112 NEWTABLE                         R16 0 9
      114 GETTABLEKS                       R17 R1 K10 ["animationClipsList"]
      116 GETTABLEKS                       R18 R5 K5 ["instanceRegistry"]
      118 MOVE                             R19 R13
      119 GETTABLEKS                       R20 R0 K11 ["isPreviewEnabled"]
      121 GETTABLEKS                       R21 R0 K12 ["overrideRig"]
      123 MOVE                             R22 R12
      124 MOVE                             R23 R8
      125 GETTABLEKS                       R24 R6 K13 ["spotlightedNodeId"]
      127 GETUPVAL                         R26 23
      128 CALL                             R26 0 1
      129 JUMPIFNOT                        R26 ; [+3]
      130 GETTABLEKS                       R25 R7 K14 ["clipReloadVersions"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R25
      134 SETLIST                          R16 R17 9 [1]
      136 CALL                             R14 2 1
      137 GETUPVAL                         R15 0
      138 GETTABLEKS                       R15 R15 K15 ["useEffect"]
      140 NEWCLOSURE                       R16 P2
      141 CAPTURE                          VAL R14
      142 NEWTABLE                         R17 0 1
      144 MOVE                             R18 R14
      145 SETLIST                          R17 R18 1 [1]
      147 CALL                             R15 2 0
      148 GETUPVAL                         R15 0
      149 GETTABLEKS                       R15 R15 K4 ["useCallback"]
      151 NEWCLOSURE                       R16 P3
      152 CAPTURE                          VAL R5
      153 NEWTABLE                         R17 0 1
      155 GETTABLEKS                       R18 R5 K5 ["instanceRegistry"]
      157 SETLIST                          R17 R18 1 [1]
      159 CALL                             R15 2 1
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K16 ["useRef"]
      163 NEWTABLE                         R17 0 0
      165 CALL                             R16 1 1
      166 GETUPVAL                         R17 0
      167 GETTABLEKS                       R17 R17 K15 ["useEffect"]
      169 NEWCLOSURE                       R18 P4
      170 CAPTURE                          UPVAL U24
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R3
      174 NEWTABLE                         R19 0 2
      176 MOVE                             R20 R14
      177 GETTABLEKS                       R21 R3 K17 ["setDebugDataAsync"]
      179 SETLIST                          R19 R20 2 [1]
      181 CALL                             R17 2 0
      182 GETUPVAL                         R17 0
      183 GETTABLEKS                       R17 R17 K4 ["useCallback"]
      185 NEWCLOSURE                       R18 P5
      186 CAPTURE                          VAL R15
      187 CAPTURE                          UPVAL U24
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R3
      190 NEWTABLE                         R19 0 2
      192 GETTABLEKS                       R20 R3 K17 ["setDebugDataAsync"]
      194 MOVE                             R21 R15
      195 SETLIST                          R19 R20 2 [1]
      197 CALL                             R17 2 1
      198 GETUPVAL                         R18 0
      199 GETTABLEKS                       R18 R18 K4 ["useCallback"]
      201 DUPCLOSURE                       R19 K18 [PROTO_30]
      202 CAPTURE                          UPVAL U16
      203 NEWTABLE                         R20 0 0
      205 CALL                             R18 2 1
      206 GETUPVAL                         R19 0
      207 GETTABLEKS                       R19 R19 K4 ["useCallback"]
      209 NEWCLOSURE                       R20 P7
      210 CAPTURE                          UPVAL U25
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R17
      214 NEWTABLE                         R21 0 3
      216 MOVE                             R22 R14
      217 MOVE                             R23 R18
      218 MOVE                             R24 R17
      219 SETLIST                          R21 R22 3 [1]
      221 CALL                             R19 2 1
      222 GETUPVAL                         R20 0
      223 GETTABLEKS                       R20 R20 K16 ["useRef"]
      225 GETTABLEKS                       R21 R0 K8 ["currentTime"]
      227 CALL                             R20 1 1
      228 GETUPVAL                         R21 0
      229 GETTABLEKS                       R21 R21 K16 ["useRef"]
      231 DUPTABLE                         R22 K22 [{["trackList"] = , ["byTrack"]}]
      232 NEWTABLE                         R23 0 0
      234 SETTABLEKS                       R23 R22 K21 ["byTrack"]
      236 CALL                             R21 1 1
      237 GETUPVAL                         R22 0
      238 GETTABLEKS                       R22 R22 K15 ["useEffect"]
      240 NEWCLOSURE                       R23 P8
      241 CAPTURE                          UPVAL U26
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R2
      245 CAPTURE                          UPVAL U27
      246 CAPTURE                          VAL R0
      247 CAPTURE                          UPVAL U25
      248 CAPTURE                          VAL R18
      249 CAPTURE                          UPVAL U22
      250 CAPTURE                          VAL R20
      251 CAPTURE                          UPVAL U16
      252 CAPTURE                          VAL R17
      253 NEWTABLE                         R24 0 6
      255 GETTABLEKS                       R25 R0 K23 ["isPlaying"]
      257 GETTABLEKS                       R26 R0 K8 ["currentTime"]
      259 MOVE                             R27 R14
      260 GETTABLEKS                       R28 R2 K24 ["animationParameters"]
      262 MOVE                             R29 R18
      263 MOVE                             R30 R17
      264 SETLIST                          R24 R25 6 [1]
      266 CALL                             R22 2 0
      267 GETUPVAL                         R22 0
      268 GETTABLEKS                       R22 R22 K15 ["useEffect"]
      270 NEWCLOSURE                       R23 P9
      271 CAPTURE                          VAL R10
      272 CAPTURE                          VAL R14
      273 CAPTURE                          VAL R17
      274 NEWTABLE                         R24 0 3
      276 MOVE                             R25 R10
      277 MOVE                             R26 R14
      278 MOVE                             R27 R17
      279 SETLIST                          R24 R25 3 [1]
      281 CALL                             R22 2 0
      282 RETURN                           R19 1

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
       27 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R5 R5 K13 ["AnimationParameterContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Contexts"]
       36 GETTABLEKS                       R6 R6 K14 ["AnimationPreviewClipsContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["Rig"]
       45 GETTABLEKS                       R7 R7 K17 ["AnimationRigDataUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       52 GETTABLEKS                       R8 R8 K18 ["GraphDebugDataContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K18 ["GraphDebugDataContext"]
       61 GETTABLEKS                       R9 R9 K19 ["GraphDebugDataUtils"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K11 [require]
       66 GETTABLEKS                       R10 R0 K12 ["Contexts"]
       68 GETTABLEKS                       R10 R10 K20 ["InstanceRegistryContext"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Contexts"]
       75 GETTABLEKS                       R11 R11 K21 ["NativeGraphContext"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K22 ["Parent"]
       82 GETTABLEKS                       R12 R12 K23 ["NodeGraphing"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R13 R0 K12 ["Contexts"]
       89 GETTABLEKS                       R13 R13 K24 ["PlayStateContext"]
       91 GETTABLEKS                       R13 R13 K25 ["PreviewParameterUtils"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K11 [require]
       96 GETTABLEKS                       R14 R0 K12 ["Contexts"]
       98 GETTABLEKS                       R14 R14 K26 ["PublishedClipContext"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K11 [require]
      103 GETTABLEKS                       R15 R0 K22 ["Parent"]
      105 GETTABLEKS                       R15 R15 K27 ["React"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K11 [require]
      110 GETTABLEKS                       R16 R0 K22 ["Parent"]
      112 GETTABLEKS                       R16 R16 K28 ["ReactUtils"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K11 [require]
      117 GETTABLEKS                       R17 R0 K15 ["Util"]
      119 GETTABLEKS                       R17 R17 K29 ["Signals"]
      121 GETTABLEKS                       R17 R17 K30 ["Experimental"]
      123 GETTABLEKS                       R17 R17 K31 ["SignalExperimentalUtils"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K11 [require]
      128 GETTABLEKS                       R18 R0 K22 ["Parent"]
      130 GETTABLEKS                       R18 R18 K29 ["Signals"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K11 [require]
      135 GETTABLEKS                       R19 R0 K15 ["Util"]
      137 GETTABLEKS                       R19 R19 K29 ["Signals"]
      139 GETTABLEKS                       R19 R19 K32 ["SignalsInstanceUtils"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K11 [require]
      144 GETIMPORT                        R20 K1 [script]
      146 GETTABLEKS                       R20 R20 K22 ["Parent"]
      148 GETTABLEKS                       R20 R20 K33 ["bindAnimationNodeDefinition"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K11 [require]
      153 GETTABLEKS                       R21 R0 K34 ["Flags"]
      155 GETTABLEKS                       R21 R21 K35 ["getFFlagAnimGraphUIEnableValueNodes"]
      157 CALL                             R20 1 1
      158 GETIMPORT                        R21 K11 [require]
      160 GETTABLEKS                       R22 R0 K34 ["Flags"]
      162 GETTABLEKS                       R22 R22 K36 ["getFFlagAnimGraphUI_ClearStalePreviewDebugData"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K11 [require]
      167 GETTABLEKS                       R23 R0 K34 ["Flags"]
      169 GETTABLEKS                       R23 R23 K37 ["getFFlagAnimGraphUI_OnlySetChangedParams"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K11 [require]
      174 GETTABLEKS                       R24 R0 K34 ["Flags"]
      176 GETTABLEKS                       R24 R24 K38 ["getFFlagAnimGraphUI_ReloadPublishedClips"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K11 [require]
      181 GETTABLEKS                       R25 R0 K12 ["Contexts"]
      183 GETTABLEKS                       R25 R25 K39 ["MaskEditorContext"]
      185 GETTABLEKS                       R25 R25 K40 ["observeMaskDatum"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K5 [game]
      190 LOADK                            R27 K41 ["AnimGraphResetAPI"]
      191 NAMECALL                         R25 R25 K42 ["GetEngineFeature"]
      193 CALL                             R25 2 1
      194 DUPCLOSURE                       R26 K43 [PROTO_0]
      195 DUPCLOSURE                       R27 K44 [PROTO_1]
      196 CAPTURE                          VAL R3
      197 DUPCLOSURE                       R28 K45 [PROTO_2]
      198 DUPCLOSURE                       R29 K46 [PROTO_3]
      199 DUPCLOSURE                       R30 K47 [PROTO_36]
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R26
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R27
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R12
      228 RETURN                           R30 1
