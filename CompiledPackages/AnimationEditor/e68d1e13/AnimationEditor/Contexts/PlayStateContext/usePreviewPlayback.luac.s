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
       18 JUMPIFEQ                         R9 R8 ; [+44]
       20 GETTABLEKS                       R10 R8 K0 ["key"]
       22 GETTABLE                         R9 R2 R10
       23 GETTABLEKS                       R9 R9 K1 ["compareValue"]
       25 GETTABLEKS                       R10 R8 K1 ["compareValue"]
       27 JUMPIFEQ                         R9 R10 ; [+35]
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
       50 JUMP                             ; [+12]
       51 JUMPIF                           R9 ; [+5]
       52 JUMPIFNOT                        R2 ; [+4]
       53 GETUPVAL                         R12 4
       54 DUPCLOSURE                       R13 K9 [PROTO_15]
       55 CALL                             R12 1 0
       56 JUMP                             ; [+5]
       57 JUMPIFNOT                        R9 ; [+4]
       58 GETUPVAL                         R12 5
       59 CALL                             R12 0 1
       60 JUMPIFNOT                        R12 ; [+1]
       61 LOADB                            R3 1
       62 CLOSEUPVALS                      R9
       63 FORGLOOP                         R4 2 ; [-54]
       65 JUMPIFNOT                        R3 ; [+13]
       66 GETUPVAL                         R4 5
       67 CALL                             R4 0 1
       68 JUMPIFNOT                        R4 ; [+10]
       69 GETUPVAL                         R4 6
       70 NAMECALL                         R4 R4 K10 ["IsRunning"]
       72 CALL                             R4 1 1
       73 JUMPIF                           R4 ; [+5]
       74 GETUPVAL                         R4 7
       75 LOADN                            R6 0
       76 NAMECALL                         R4 R4 K11 ["StepAnimations"]
       78 CALL                             R4 2 0
       79 RETURN                           R0 0

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
       27 JUMPIFNOT                        R10 ; [+115]
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R12 R8 K3 ["NodeType"]
       31 NAMECALL                         R10 R10 K6 ["GetAnimationNodeDefinition"]
       33 CALL                             R10 2 1
       34 MOVE                             R9 R10
       35 JUMP                             ; [+1]
       36 JUMP                             ; [+106]
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
      132 CAPTURE                          UPVAL U13
      133 CAPTURE                          VAL R0
      134 CALL                             R17 1 1
      135 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
      137 MOVE                             R19 R3
      138 MOVE                             R20 R17
      139 GETIMPORT                        R18 K15 [table.insert]
      141 CALL                             R18 2 0
      142 CLOSEUPVALS                      R16
      143 FORGLOOP                         R4 2 ; [-138]
      145 NEWCLOSURE                       R4 P6
      146 CAPTURE                          VAL R3
      147 RETURN                           R4 1

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

PROTO_22:
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
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 SETTABLE                         R1 R2 R0
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K1 ["setDebugDataAsync"]
       16 MOVE                             R3 R1
       17 GETTABLEKS                       R4 R0 K2 ["animationTrack"]
       19 NAMECALL                         R4 R4 K3 ["GetDebugData"]
       21 CALL                             R4 1 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 4
       25 GETTABLEKS                       R1 R1 K4 ["setDebugDataAsync_DEPRECATED"]
       27 GETTABLEKS                       R2 R0 K2 ["animationTrack"]
       29 NAMECALL                         R2 R2 K3 ["GetDebugData"]
       31 CALL                             R2 1 -1
       32 CALL                             R1 -1 0
       33 RETURN                           R0 0

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
       56 GETUPVAL                         R8 4
       57 CALL                             R8 0 1
       58 JUMPIFNOT                        R8 ; [+6]
       59 GETTABLEKS                       R7 R4 K6 ["animationTrack"]
       61 NAMECALL                         R7 R7 K7 ["GetParameterDefaults"]
       63 CALL                             R7 1 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R7
       66 GETUPVAL                         R8 5
       67 GETTABLEKS                       R8 R8 K8 ["getParametersToApply"]
       69 MOVE                             R9 R5
       70 MOVE                             R10 R6
       71 MOVE                             R11 R7
       72 CALL                             R8 3 1
       73 MOVE                             R9 R8
       74 LOADNIL                          R10
       75 LOADNIL                          R11
       76 FORGPREP                         R9
       77 GETTABLEKS                       R14 R4 K6 ["animationTrack"]
       79 MOVE                             R16 R12
       80 MOVE                             R17 R13
       81 NAMECALL                         R14 R14 K9 ["SetParameter"]
       83 CALL                             R14 3 0
       84 JUMPIFEQKNIL                     R6 ; [+2]
       86 SETTABLE                         R13 R6 R12
       87 FORGLOOP                         R9 2 ; [-11]
       89 GETTABLEKS                       R9 R4 K10 ["animationClip"]
       91 LOADK                            R11 K11 ["AnimationGraphDefinition"]
       92 NAMECALL                         R9 R9 K12 ["IsA"]
       94 CALL                             R9 2 1
       95 GETUPVAL                         R10 6
       96 GETTABLEKS                       R10 R10 K13 ["currentTime"]
       98 JUMPIFNOTEQKN                    R10 K14 [0] ; [+21]
      100 GETUPVAL                         R10 7
      101 JUMPIFNOT                        R10 ; [+5]
      102 JUMPIFNOT                        R9 ; [+4]
      103 GETUPVAL                         R10 8
      104 MOVE                             R11 R4
      105 CALL                             R10 1 0
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R10 9
      108 MOVE                             R11 R4
      109 CALL                             R10 1 0
      110 JUMPIFEQKNIL                     R6 ; [+95]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K0 ["current"]
      115 GETTABLEKS                       R10 R10 K2 ["byTrack"]
      117 LOADNIL                          R11
      118 SETTABLE                         R11 R10 R4
      119 JUMP                             ; [+86]
      120 GETTABLEKS                       R10 R4 K6 ["animationTrack"]
      122 GETTABLEKS                       R10 R10 K15 ["IsPlaying"]
      124 JUMPIF                           R10 ; [+8]
      125 GETTABLEKS                       R10 R4 K6 ["animationTrack"]
      127 LOADN                            R12 0
      128 LOADN                            R13 1
      129 LOADN                            R14 0
      130 NAMECALL                         R10 R10 K16 ["Play"]
      132 CALL                             R10 4 0
      133 JUMPIFNOT                        R9 ; [+44]
      134 GETUPVAL                         R11 6
      135 GETTABLEKS                       R11 R11 K13 ["currentTime"]
      137 GETUPVAL                         R12 10
      138 GETTABLEKS                       R12 R12 K0 ["current"]
      140 SUB                              R10 R11 R12
      141 GETUPVAL                         R11 10
      142 GETUPVAL                         R12 6
      143 GETTABLEKS                       R12 R12 K13 ["currentTime"]
      145 SETTABLEKS                       R12 R11 K0 ["current"]
      147 GETUPVAL                         R11 11
      148 NAMECALL                         R11 R11 K17 ["IsRunning"]
      150 CALL                             R11 1 1
      151 JUMPIF                           R11 ; [+20]
      152 LOADN                            R11 0
      153 JUMPIFNOTLT                      R11 R10 ; [+18]
      155 GETIMPORT                        R11 K19 [pcall]
      157 NEWCLOSURE                       R12 P0
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R10
      160 CALL                             R11 1 2
      161 JUMPIF                           R11 ; [+10]
      162 GETIMPORT                        R13 K21 [warn]
      164 LOADK                            R15 K22 ["Failed to step animations for preview: "]
      165 FASTCALL1                        TOSTRING R12 ; [+3]
      166 MOVE                             R17 R12
      167 GETIMPORT                        R16 K24 [tostring]
      169 CALL                             R16 1 1
      170 CONCAT                           R14 R15 R16
      171 CALL                             R13 1 0
      172 GETIMPORT                        R11 K27 [task.spawn]
      174 GETUPVAL                         R12 12
      175 MOVE                             R13 R4
      176 CALL                             R11 2 0
      177 JUMP                             ; [+28]
      178 GETTABLEKS                       R10 R4 K6 ["animationTrack"]
      180 GETUPVAL                         R11 6
      181 GETTABLEKS                       R11 R11 K13 ["currentTime"]
      183 SETTABLEKS                       R11 R10 K28 ["TimePosition"]
      185 GETUPVAL                         R10 11
      186 NAMECALL                         R10 R10 K17 ["IsRunning"]
      188 CALL                             R10 1 1
      189 JUMPIF                           R10 ; [+16]
      190 GETIMPORT                        R10 K19 [pcall]
      192 NEWCLOSURE                       R11 P1
      193 CAPTURE                          VAL R4
      194 CALL                             R10 1 2
      195 JUMPIF                           R10 ; [+10]
      196 GETIMPORT                        R12 K21 [warn]
      198 LOADK                            R14 K22 ["Failed to step animations for preview: "]
      199 FASTCALL1                        TOSTRING R11 ; [+3]
      200 MOVE                             R16 R11
      201 GETIMPORT                        R15 K24 [tostring]
      203 CALL                             R15 1 1
      204 CONCAT                           R13 R14 R15
      205 CALL                             R12 1 0
      206 FORGLOOP                         R0 2 ; [-181]
      208 RETURN                           R0 0

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
       45 GETTABLEKS                       R7 R7 K3 ["useState"]
       47 LOADN                            R8 0
       48 CALL                             R7 1 2
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K3 ["useState"]
       52 LOADN                            R10 0
       53 CALL                             R9 1 2
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       57 NEWCLOSURE                       R12 P0
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 CAPTURE                          VAL R5
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R4
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          UPVAL U11
       67 CAPTURE                          UPVAL U12
       68 CAPTURE                          UPVAL U13
       69 CAPTURE                          UPVAL U14
       70 CAPTURE                          UPVAL U15
       71 CAPTURE                          UPVAL U16
       72 NEWTABLE                         R13 0 4
       74 GETTABLEKS                       R14 R5 K5 ["instanceRegistry"]
       76 GETTABLEKS                       R15 R4 K6 ["observeNodePropsById"]
       78 MOVE                             R16 R8
       79 MOVE                             R17 R10
       80 SETLIST                          R13 R14 4 [1]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K7 ["useMemo"]
       86 NEWCLOSURE                       R13 P1
       87 CAPTURE                          UPVAL U15
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U17
       91 CAPTURE                          UPVAL U18
       92 CAPTURE                          UPVAL U19
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          UPVAL U20
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          UPVAL U16
       99 CAPTURE                          UPVAL U21
      100 NEWTABLE                         R14 0 6
      102 GETTABLEKS                       R15 R1 K8 ["animationClipsList"]
      104 GETUPVAL                         R17 15
      105 CALL                             R17 0 1
      106 JUMPIFNOT                        R17 ; [+3]
      107 GETTABLEKS                       R16 R0 K9 ["isPreviewEnabled"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R16
      111 GETTABLEKS                       R17 R0 K10 ["overrideRig"]
      113 MOVE                             R18 R11
      114 MOVE                             R19 R7
      115 GETTABLEKS                       R20 R6 K11 ["spotlightedNodeId"]
      117 SETLIST                          R14 R15 6 [1]
      119 CALL                             R12 2 1
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K12 ["useEffect"]
      123 NEWCLOSURE                       R14 P2
      124 CAPTURE                          VAL R12
      125 NEWTABLE                         R15 0 1
      127 MOVE                             R16 R12
      128 SETLIST                          R15 R16 1 [1]
      130 CALL                             R13 2 0
      131 GETUPVAL                         R13 0
      132 GETTABLEKS                       R13 R13 K4 ["useCallback"]
      134 NEWCLOSURE                       R14 P3
      135 CAPTURE                          VAL R5
      136 NEWTABLE                         R15 0 1
      138 GETTABLEKS                       R16 R5 K5 ["instanceRegistry"]
      140 SETLIST                          R15 R16 1 [1]
      142 CALL                             R13 2 1
      143 GETUPVAL                         R14 0
      144 GETTABLEKS                       R14 R14 K13 ["useRef"]
      146 NEWTABLE                         R15 0 0
      148 CALL                             R14 1 1
      149 GETUPVAL                         R15 0
      150 GETTABLEKS                       R15 R15 K12 ["useEffect"]
      152 NEWCLOSURE                       R16 P4
      153 CAPTURE                          UPVAL U15
      154 CAPTURE                          UPVAL U22
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R3
      158 NEWTABLE                         R17 0 2
      160 MOVE                             R18 R12
      161 GETTABLEKS                       R19 R3 K14 ["setDebugDataAsync"]
      163 SETLIST                          R17 R18 2 [1]
      165 CALL                             R15 2 0
      166 GETUPVAL                         R15 0
      167 GETTABLEKS                       R15 R15 K4 ["useCallback"]
      169 NEWCLOSURE                       R16 P5
      170 CAPTURE                          UPVAL U15
      171 CAPTURE                          VAL R13
      172 CAPTURE                          UPVAL U22
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R3
      175 NEWTABLE                         R17 0 2
      177 GETUPVAL                         R19 15
      178 CALL                             R19 0 1
      179 JUMPIFNOT                        R19 ; [+3]
      180 GETTABLEKS                       R18 R3 K14 ["setDebugDataAsync"]
      182 JUMP                             ; [+2]
      183 GETTABLEKS                       R18 R3 K15 ["setDebugDataAsync_DEPRECATED"]
      185 GETUPVAL                         R20 15
      186 CALL                             R20 0 1
      187 JUMPIFNOT                        R20 ; [+2]
      188 MOVE                             R19 R13
      189 JUMP                             ; [+1]
      190 LOADNIL                          R19
      191 SETLIST                          R17 R18 2 [1]
      193 CALL                             R15 2 1
      194 GETUPVAL                         R16 0
      195 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      197 DUPCLOSURE                       R17 K16 [PROTO_30]
      198 CAPTURE                          UPVAL U16
      199 NEWTABLE                         R18 0 0
      201 CALL                             R16 2 1
      202 GETUPVAL                         R17 0
      203 GETTABLEKS                       R17 R17 K4 ["useCallback"]
      205 NEWCLOSURE                       R18 P7
      206 CAPTURE                          UPVAL U23
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R15
      210 NEWTABLE                         R19 0 3
      212 MOVE                             R20 R12
      213 MOVE                             R21 R16
      214 MOVE                             R22 R15
      215 SETLIST                          R19 R20 3 [1]
      217 CALL                             R17 2 1
      218 GETUPVAL                         R18 0
      219 GETTABLEKS                       R18 R18 K13 ["useRef"]
      221 GETTABLEKS                       R19 R0 K17 ["currentTime"]
      223 CALL                             R18 1 1
      224 GETUPVAL                         R19 0
      225 GETTABLEKS                       R19 R19 K13 ["useRef"]
      227 DUPTABLE                         R20 K21 [{["trackList"] = , ["byTrack"]}]
      228 NEWTABLE                         R21 0 0
      230 SETTABLEKS                       R21 R20 K20 ["byTrack"]
      232 CALL                             R19 1 1
      233 GETUPVAL                         R20 0
      234 GETTABLEKS                       R20 R20 K12 ["useEffect"]
      236 NEWCLOSURE                       R21 P8
      237 CAPTURE                          UPVAL U24
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R12
      240 CAPTURE                          VAL R2
      241 CAPTURE                          UPVAL U25
      242 CAPTURE                          UPVAL U26
      243 CAPTURE                          VAL R0
      244 CAPTURE                          UPVAL U23
      245 CAPTURE                          VAL R16
      246 CAPTURE                          UPVAL U21
      247 CAPTURE                          VAL R18
      248 CAPTURE                          UPVAL U16
      249 CAPTURE                          VAL R15
      250 NEWTABLE                         R22 0 6
      252 GETTABLEKS                       R23 R0 K22 ["isPlaying"]
      254 GETTABLEKS                       R24 R0 K17 ["currentTime"]
      256 MOVE                             R25 R12
      257 GETTABLEKS                       R26 R2 K23 ["animationParameters"]
      259 MOVE                             R27 R16
      260 MOVE                             R28 R15
      261 SETLIST                          R22 R23 6 [1]
      263 CALL                             R20 2 0
      264 GETUPVAL                         R20 0
      265 GETTABLEKS                       R20 R20 K12 ["useEffect"]
      267 NEWCLOSURE                       R21 P9
      268 CAPTURE                          VAL R9
      269 CAPTURE                          VAL R12
      270 CAPTURE                          VAL R15
      271 NEWTABLE                         R22 0 3
      273 MOVE                             R23 R9
      274 MOVE                             R24 R12
      275 MOVE                             R25 R15
      276 SETLIST                          R22 R23 3 [1]
      278 CALL                             R20 2 0
      279 RETURN                           R17 1

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
       50 GETTABLEKS                       R8 R0 K18 ["Flags"]
       52 GETTABLEKS                       R8 R8 K19 ["FFlagAnimGraphUI_NoDestroyForceNewAnimator"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K20 ["GraphDebugDataContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K12 ["Contexts"]
       66 GETTABLEKS                       R10 R10 K20 ["GraphDebugDataContext"]
       68 GETTABLEKS                       R10 R10 K21 ["GraphDebugDataUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K11 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Contexts"]
       75 GETTABLEKS                       R11 R11 K22 ["InstanceRegistryContext"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K12 ["Contexts"]
       82 GETTABLEKS                       R12 R12 K23 ["NativeGraphContext"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R13 R0 K24 ["Parent"]
       89 GETTABLEKS                       R13 R13 K25 ["NodeGraphing"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R14 R0 K12 ["Contexts"]
       96 GETTABLEKS                       R14 R14 K26 ["PlayStateContext"]
       98 GETTABLEKS                       R14 R14 K27 ["PreviewParameterUtils"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K11 [require]
      103 GETTABLEKS                       R15 R0 K24 ["Parent"]
      105 GETTABLEKS                       R15 R15 K28 ["React"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K11 [require]
      110 GETTABLEKS                       R16 R0 K15 ["Util"]
      112 GETTABLEKS                       R16 R16 K29 ["Signals"]
      114 GETTABLEKS                       R16 R16 K30 ["Experimental"]
      116 GETTABLEKS                       R16 R16 K31 ["SignalExperimentalUtils"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K11 [require]
      121 GETTABLEKS                       R17 R0 K24 ["Parent"]
      123 GETTABLEKS                       R17 R17 K29 ["Signals"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K11 [require]
      128 GETTABLEKS                       R18 R0 K15 ["Util"]
      130 GETTABLEKS                       R18 R18 K29 ["Signals"]
      132 GETTABLEKS                       R18 R18 K32 ["SignalsInstanceUtils"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K11 [require]
      137 GETIMPORT                        R19 K1 [script]
      139 GETTABLEKS                       R19 R19 K24 ["Parent"]
      141 GETTABLEKS                       R19 R19 K33 ["bindAnimationNodeDefinition"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K11 [require]
      146 GETTABLEKS                       R20 R0 K18 ["Flags"]
      148 GETTABLEKS                       R20 R20 K34 ["getFFlagAnimEditorResetAnimationConstraints"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K11 [require]
      153 GETTABLEKS                       R21 R0 K18 ["Flags"]
      155 GETTABLEKS                       R21 R21 K35 ["getFFlagAnimGraphUIEnableValueNodes"]
      157 CALL                             R20 1 1
      158 GETIMPORT                        R21 K11 [require]
      160 GETTABLEKS                       R22 R0 K18 ["Flags"]
      162 GETTABLEKS                       R22 R22 K36 ["getFFlagAnimGraphUIFixSetParameterWarningMessage"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K11 [require]
      167 GETTABLEKS                       R23 R0 K18 ["Flags"]
      169 GETTABLEKS                       R23 R23 K37 ["getFFlagAnimGraphUI_ClearStalePreviewDebugData"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K11 [require]
      174 GETTABLEKS                       R24 R0 K18 ["Flags"]
      176 GETTABLEKS                       R24 R24 K38 ["getFFlagAnimGraphUI_OnlySetChangedParams"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K11 [require]
      181 GETTABLEKS                       R25 R0 K18 ["Flags"]
      183 GETTABLEKS                       R25 R25 K39 ["getFFlagAnimGraphUI_RunTimeDebug"]
      185 CALL                             R24 1 1
      186 GETIMPORT                        R25 K11 [require]
      188 GETTABLEKS                       R26 R0 K12 ["Contexts"]
      190 GETTABLEKS                       R26 R26 K40 ["MaskEditorContext"]
      192 GETTABLEKS                       R26 R26 K41 ["observeMaskDatum"]
      194 CALL                             R25 1 1
      195 GETIMPORT                        R26 K5 [game]
      197 LOADK                            R28 K42 ["AnimGraphResetAPI"]
      198 NAMECALL                         R26 R26 K43 ["GetEngineFeature"]
      200 CALL                             R26 2 1
      201 DUPCLOSURE                       R27 K44 [PROTO_0]
      202 CAPTURE                          VAL R7
      203 DUPCLOSURE                       R28 K45 [PROTO_1]
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R3
      206 DUPCLOSURE                       R29 K46 [PROTO_2]
      207 DUPCLOSURE                       R30 K47 [PROTO_3]
      208 DUPCLOSURE                       R31 K48 [PROTO_36]
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R20
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R29
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R30
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R26
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R21
      235 CAPTURE                          VAL R13
      236 RETURN                           R31 1
