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
       54 DUPCLOSURE                       R13 K9 [PROTO_11]
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
       89 GETUPVAL                         R9 6
       90 GETTABLEKS                       R9 R9 K10 ["currentTime"]
       92 JUMPIFNOTEQKN                    R9 K11 [0] ; [+14]
       94 GETUPVAL                         R9 7
       95 MOVE                             R10 R4
       96 CALL                             R9 1 0
       97 JUMPIFEQKNIL                     R6 ; [+104]
       99 GETUPVAL                         R9 1
      100 GETTABLEKS                       R9 R9 K0 ["current"]
      102 GETTABLEKS                       R9 R9 K2 ["byTrack"]
      104 LOADNIL                          R10
      105 SETTABLE                         R10 R9 R4
      106 JUMP                             ; [+95]
      107 GETTABLEKS                       R9 R4 K6 ["animationTrack"]
      109 GETTABLEKS                       R9 R9 K12 ["IsPlaying"]
      111 JUMPIF                           R9 ; [+8]
      112 GETTABLEKS                       R9 R4 K6 ["animationTrack"]
      114 LOADN                            R11 0
      115 LOADN                            R12 1
      116 LOADN                            R13 0
      117 NAMECALL                         R9 R9 K13 ["Play"]
      119 CALL                             R9 4 0
      120 GETTABLEKS                       R9 R4 K14 ["animationClip"]
      122 LOADK                            R11 K15 ["AnimationGraphDefinition"]
      123 NAMECALL                         R9 R9 K16 ["IsA"]
      125 CALL                             R9 2 1
      126 JUMPIFNOT                        R9 ; [+47]
      127 GETUPVAL                         R10 6
      128 GETTABLEKS                       R10 R10 K10 ["currentTime"]
      130 GETUPVAL                         R11 8
      131 GETTABLEKS                       R11 R11 K0 ["current"]
      133 SUB                              R9 R10 R11
      134 GETUPVAL                         R10 8
      135 GETUPVAL                         R11 6
      136 GETTABLEKS                       R11 R11 K10 ["currentTime"]
      138 SETTABLEKS                       R11 R10 K0 ["current"]
      140 GETUPVAL                         R10 9
      141 NAMECALL                         R10 R10 K17 ["IsRunning"]
      143 CALL                             R10 1 1
      144 JUMPIF                           R10 ; [+20]
      145 LOADN                            R10 0
      146 JUMPIFNOTLT                      R10 R9 ; [+18]
      148 GETIMPORT                        R10 K19 [pcall]
      150 NEWCLOSURE                       R11 P0
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R9
      153 CALL                             R10 1 2
      154 JUMPIF                           R10 ; [+10]
      155 GETIMPORT                        R12 K21 [warn]
      157 LOADK                            R14 K22 ["Failed to step animations for preview: "]
      158 FASTCALL1                        TOSTRING R11 ; [+3]
      159 MOVE                             R16 R11
      160 GETIMPORT                        R15 K24 [tostring]
      162 CALL                             R15 1 1
      163 CONCAT                           R13 R14 R15
      164 CALL                             R12 1 0
      165 GETIMPORT                        R10 K27 [task.spawn]
      167 NEWCLOSURE                       R11 P1
      168 CAPTURE                          UPVAL U10
      169 CAPTURE                          UPVAL U11
      170 CAPTURE                          VAL R4
      171 CAPTURE                          UPVAL U12
      172 CALL                             R10 1 0
      173 JUMP                             ; [+28]
      174 GETTABLEKS                       R9 R4 K6 ["animationTrack"]
      176 GETUPVAL                         R10 6
      177 GETTABLEKS                       R10 R10 K10 ["currentTime"]
      179 SETTABLEKS                       R10 R9 K28 ["TimePosition"]
      181 GETUPVAL                         R9 9
      182 NAMECALL                         R9 R9 K17 ["IsRunning"]
      184 CALL                             R9 1 1
      185 JUMPIF                           R9 ; [+16]
      186 GETIMPORT                        R9 K19 [pcall]
      188 NEWCLOSURE                       R10 P2
      189 CAPTURE                          VAL R4
      190 CALL                             R9 1 2
      191 JUMPIF                           R9 ; [+10]
      192 GETIMPORT                        R11 K21 [warn]
      194 LOADK                            R13 K22 ["Failed to step animations for preview: "]
      195 FASTCALL1                        TOSTRING R10 ; [+3]
      196 MOVE                             R15 R10
      197 GETIMPORT                        R14 K24 [tostring]
      199 CALL                             R14 1 1
      200 CONCAT                           R12 R13 R14
      201 CALL                             R11 1 0
      202 FORGLOOP                         R0 2 ; [-177]
      204 RETURN                           R0 0

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
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          VAL R9
       89 CAPTURE                          UPVAL U14
       90 CAPTURE                          UPVAL U19
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
      129 GETTABLEKS                       R12 R12 K13 ["useRef"]
      131 DUPTABLE                         R13 K18 [{["trackList"] = , ["byTrack"]}]
      132 NEWTABLE                         R14 0 0
      134 SETTABLEKS                       R14 R13 K17 ["byTrack"]
      136 CALL                             R12 1 1
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R13 R13 K12 ["useEffect"]
      140 NEWCLOSURE                       R14 P3
      141 CAPTURE                          UPVAL U20
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R2
      145 CAPTURE                          UPVAL U21
      146 CAPTURE                          UPVAL U22
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U19
      149 CAPTURE                          VAL R11
      150 CAPTURE                          UPVAL U14
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R3
      154 NEWTABLE                         R15 0 6
      156 GETTABLEKS                       R16 R0 K19 ["isPlaying"]
      158 GETTABLEKS                       R17 R0 K14 ["currentTime"]
      160 MOVE                             R18 R10
      161 GETTABLEKS                       R19 R2 K20 ["animationParameters"]
      163 GETUPVAL                         R21 13
      164 CALL                             R21 0 1
      165 JUMPIFNOT                        R21 ; [+3]
      166 GETTABLEKS                       R20 R3 K21 ["setDebugDataAsync"]
      168 JUMP                             ; [+2]
      169 GETTABLEKS                       R20 R3 K22 ["setDebugDataAsync_DEPRECATED"]
      171 GETUPVAL                         R22 13
      172 CALL                             R22 0 1
      173 JUMPIFNOT                        R22 ; [+3]
      174 GETTABLEKS                       R21 R5 K5 ["instanceRegistry"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R21
      178 SETLIST                          R15 R16 6 [1]
      180 CALL                             R13 2 0
      181 RETURN                           R0 0

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
      137 GETTABLEKS                       R19 R0 K18 ["Flags"]
      139 GETTABLEKS                       R19 R19 K33 ["getFFlagAnimEditorResetAnimationConstraints"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K11 [require]
      144 GETTABLEKS                       R20 R0 K18 ["Flags"]
      146 GETTABLEKS                       R20 R20 K34 ["getFFlagAnimGraphUIFixSetParameterWarningMessage"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K11 [require]
      151 GETTABLEKS                       R21 R0 K18 ["Flags"]
      153 GETTABLEKS                       R21 R21 K35 ["getFFlagAnimGraphUI_OnlySetChangedParams"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K11 [require]
      158 GETTABLEKS                       R22 R0 K18 ["Flags"]
      160 GETTABLEKS                       R22 R22 K36 ["getFFlagAnimGraphUI_RunTimeDebug"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K11 [require]
      165 GETTABLEKS                       R23 R0 K12 ["Contexts"]
      167 GETTABLEKS                       R23 R23 K37 ["MaskEditorContext"]
      169 GETTABLEKS                       R23 R23 K38 ["observeMaskDatum"]
      171 CALL                             R22 1 1
      172 DUPCLOSURE                       R23 K39 [PROTO_0]
      173 CAPTURE                          VAL R7
      174 DUPCLOSURE                       R24 K40 [PROTO_1]
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R3
      177 DUPCLOSURE                       R25 K41 [PROTO_2]
      178 DUPCLOSURE                       R26 K42 [PROTO_3]
      179 DUPCLOSURE                       R27 K43 [PROTO_25]
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R26
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R13
      203 RETURN                           R27 1
