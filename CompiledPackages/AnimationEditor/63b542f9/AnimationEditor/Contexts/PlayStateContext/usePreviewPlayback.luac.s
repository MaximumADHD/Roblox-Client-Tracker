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
       33 NAMECALL                         R8 R7 K10 ["Destroy"]
       35 CALL                             R8 1 0
       36 FORGLOOP                         R3 2 ; [-30]
       38 JUMPIF                           R2 ; [+11]
       39 GETIMPORT                        R3 K12 [Instance.new]
       41 LOADK                            R4 K1 ["Animator"]
       42 CALL                             R3 1 1
       43 LOADB                            R4 0
       44 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       46 LOADK                            R4 K1 ["Animator"]
       47 SETTABLEKS                       R4 R3 K14 ["Name"]
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
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
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
       26 DUPCLOSURE                       R5 K8 [PROTO_3]
       27 CALL                             R3 2 0
       28 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K0 ["key"]
       12 SETTABLE                         R7 R1 R8
       13 FORGLOOP                         R3 2 ; [-4]
       15 RETURN                           R1 1

PROTO_9:
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

PROTO_10:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 SETUPVAL                         R1 1
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFNOT                        R2 ; [+18]
       10 GETTABLEKS                       R9 R7 K0 ["key"]
       12 GETTABLE                         R8 R2 R9
       13 JUMPIFNOT                        R8 ; [+14]
       14 GETTABLEKS                       R9 R7 K0 ["key"]
       16 GETTABLE                         R8 R2 R9
       17 JUMPIFEQ                         R8 R7 ; [+39]
       19 GETTABLEKS                       R9 R7 K0 ["key"]
       21 GETTABLE                         R8 R2 R9
       22 GETTABLEKS                       R8 R8 K1 ["compareValue"]
       24 GETTABLEKS                       R9 R7 K1 ["compareValue"]
       26 JUMPIFEQ                         R8 R9 ; [+30]
       28 LOADNIL                          R8
       29 GETIMPORT                        R9 K3 [pcall]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          REF R8
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R7
       36 CALL                             R9 1 2
       37 JUMPIF                           R9 ; [+13]
       38 GETIMPORT                        R11 K5 [warn]
       40 LOADK                            R13 K6 ["Failed to update graph node property %*: %*"]
       41 GETTABLEKS                       R15 R7 K0 ["key"]
       43 ORK                              R16 R10 K7 ["<no error message>"]
       44 NAMECALL                         R13 R13 K8 ["format"]
       46 CALL                             R13 3 1
       47 MOVE                             R12 R13
       48 CALL                             R11 1 0
       49 CLOSEUPVALS                      R8
       50 JUMP                             ; [+6]
       51 JUMPIF                           R8 ; [+4]
       52 JUMPIFNOT                        R2 ; [+3]
       53 GETUPVAL                         R11 4
       54 DUPCLOSURE                       R12 K9 [PROTO_10]
       55 CALL                             R11 1 0
       56 CLOSEUPVALS                      R8
       57 FORGLOOP                         R3 2 ; [-49]
       59 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetChildren"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 LOADK                            R10 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K2 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+79]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K3 ["instanceRegistry"]
       14 MOVE                             R10 R7
       15 NAMECALL                         R8 R8 K4 ["instanceToId"]
       17 CALL                             R8 2 1
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R9 R9 K5 ["observeNodePropsById"]
       21 MOVE                             R10 R8
       22 CALL                             R9 1 1
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R12 R7 K6 ["NodeType"]
       26 NAMECALL                         R10 R10 K7 ["GetAnimationNodeDefinition"]
       28 CALL                             R10 2 1
       29 NEWTABLE                         R11 0 0
       31 JUMPIFEQKNIL                     R10 ; [+15]
       33 GETTABLEKS                       R12 R10 K8 ["Properties"]
       35 JUMPIFEQKNIL                     R12 ; [+11]
       37 GETTABLEKS                       R12 R10 K8 ["Properties"]
       39 LOADNIL                          R13
       40 LOADNIL                          R14
       41 FORGPREP                         R12
       42 GETTABLEKS                       R17 R16 K9 ["Name"]
       44 SETTABLE                         R16 R11 R17
       45 FORGLOOP                         R12 2 ; [-4]
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K10 ["createComputed"]
       50 NEWCLOSURE                       R13 P0
       51 CAPTURE                          VAL R9
       52 CALL                             R12 1 1
       53 GETUPVAL                         R13 4
       54 GETTABLEKS                       R13 R13 K11 ["forEach"]
       56 MOVE                             R14 R12
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          VAL R11
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U6
       64 CALL                             R13 2 1
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R14 R14 K10 ["createComputed"]
       68 NEWCLOSURE                       R15 P2
       69 CAPTURE                          VAL R13
       70 CALL                             R14 1 1
       71 LOADNIL                          R15
       72 GETUPVAL                         R16 7
       73 GETTABLEKS                       R16 R16 K12 ["createEffect"]
       75 NEWCLOSURE                       R17 P3
       76 CAPTURE                          VAL R14
       77 CAPTURE                          REF R15
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R8
       80 CAPTURE                          UPVAL U8
       81 CALL                             R16 1 1
       82 FASTCALL2                        TABLE_INSERT R2 R16 ; [+5]
       84 MOVE                             R18 R2
       85 MOVE                             R19 R16
       86 GETIMPORT                        R17 K15 [table.insert]
       88 CALL                             R17 2 0
       89 CLOSEUPVALS                      R15
       90 FORGLOOP                         R3 2 ; [-85]
       92 NEWCLOSURE                       R3 P4
       93 CAPTURE                          VAL R2
       94 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["StepAnimations"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADN                            R2 0
        8 NAMECALL                         R0 R0 K1 ["Stop"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 3
       12 NAMECALL                         R0 R0 K2 ["IsRunning"]
       14 CALL                             R0 1 1
       15 JUMPIF                           R0 ; [+5]
       16 GETUPVAL                         R0 4
       17 LOADN                            R2 0
       18 NAMECALL                         R0 R0 K3 ["StepAnimations"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 2
       22 NAMECALL                         R0 R0 K0 ["Destroy"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["animationClipsList"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPEOF R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K2 [typeof]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K3 ["Instance"] ; [+3]
       15 MOVE                             R6 R5
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R5 K4 ["clip"]
       19 LOADNIL                          R7
       20 GETUPVAL                         R8 1
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K5 ["overrideRig"]
       26 JUMPIF                           R9 ; [+11]
       27 FASTCALL1                        TYPEOF R5 ; [+3]
       28 MOVE                             R10 R5
       29 GETIMPORT                        R9 K2 [typeof]
       31 CALL                             R9 1 1
       32 JUMPIFEQKS                       R9 K3 ["Instance"] ; [+5]
       34 GETTABLEKS                       R9 R5 K6 ["animator"]
       36 JUMPIFNOTEQKNIL                  R9 ; [+34]
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R9 R9 K7 ["findAnimatorParent"]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K5 ["overrideRig"]
       44 OR                               R10 R11 R6
       45 CALL                             R9 1 1
       46 JUMPIF                           R9 ; [+2]
       47 CLOSEUPVALS                      R7
       48 JUMP                             ; [+141]
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R10 R10 K8 ["findAnimatorParentInParent"]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 JUMPIFNOT                        R10 ; [+11]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K9 ["ensureAnimationRigDataInAnimationClip"]
       58 MOVE                             R12 R6
       59 MOVE                             R13 R10
       60 CALL                             R11 2 0
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R11 R11 K10 ["ensureAnimationRigDataInHumanoid"]
       64 MOVE                             R12 R10
       65 CALL                             R11 1 0
       66 GETUPVAL                         R11 4
       67 MOVE                             R12 R9
       68 CALL                             R11 1 1
       69 MOVE                             R7 R11
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R7 R5 K6 ["animator"]
       73 JUMPIFNOTEQKNIL                  R7 ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 FASTCALL2K                       ASSERT R10 K11 ; [+4]
       79 LOADK                            R11 K11 ["Luau"]
       80 GETIMPORT                        R9 K13 [assert]
       82 CALL                             R9 2 0
       83 MOVE                             R9 R8
       84 LOADNIL                          R10
       85 LOADNIL                          R11
       86 FORGPREP                         R9
       87 GETIMPORT                        R14 K15 [Instance.new]
       89 LOADK                            R15 K16 ["Animation"]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R13 R14 K17 ["AnimationId"]
       93 GETIMPORT                        R15 K19 [pcall]
       95 NEWCLOSURE                       R16 P0
       96 CAPTURE                          REF R7
       97 CAPTURE                          VAL R14
       98 CALL                             R15 1 0
       99 NAMECALL                         R15 R14 K20 ["Destroy"]
      101 CALL                             R15 1 0
      102 FORGLOOP                         R9 2 ; [-16]
      104 GETUPVAL                         R9 5
      105 MOVE                             R11 R6
      106 NAMECALL                         R9 R9 K21 ["RegisterAnimationClip"]
      108 CALL                             R9 2 1
      109 GETIMPORT                        R10 K15 [Instance.new]
      111 LOADK                            R11 K16 ["Animation"]
      112 CALL                             R10 1 1
      113 LOADK                            R12 K22 ["Animation_"]
      114 GETTABLEKS                       R13 R6 K23 ["Name"]
      116 CONCAT                           R11 R12 R13
      117 SETTABLEKS                       R11 R10 K23 ["Name"]
      119 SETTABLEKS                       R9 R10 K17 ["AnimationId"]
      121 MOVE                             R13 R10
      122 NAMECALL                         R11 R7 K24 ["LoadAnimation"]
      124 CALL                             R11 2 1
      125 GETIMPORT                        R12 K28 [Enum.AnimationPriority.Action4]
      127 SETTABLEKS                       R12 R11 K29 ["Priority"]
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R11 K30 ["Looped"]
      132 GETUPVAL                         R12 6
      133 MOVE                             R13 R6
      134 MOVE                             R14 R11
      135 CALL                             R12 2 1
      136 LOADN                            R15 0
      137 LOADN                            R16 1
      138 LOADN                            R17 0
      139 NAMECALL                         R13 R11 K31 ["Play"]
      141 CALL                             R13 4 0
      142 GETUPVAL                         R13 2
      143 GETTABLEKS                       R13 R13 K32 ["currentTime"]
      145 SETTABLEKS                       R13 R11 K33 ["TimePosition"]
      147 GETUPVAL                         R13 7
      148 NAMECALL                         R13 R13 K34 ["IsRunning"]
      150 CALL                             R13 1 1
      151 JUMPIF                           R13 ; [+16]
      152 GETIMPORT                        R13 K19 [pcall]
      154 NEWCLOSURE                       R14 P1
      155 CAPTURE                          REF R7
      156 CALL                             R13 1 2
      157 JUMPIF                           R13 ; [+10]
      158 GETIMPORT                        R15 K36 [warn]
      160 LOADK                            R17 K37 ["Failed to step animations for preview: "]
      161 FASTCALL1                        TOSTRING R14 ; [+3]
      162 MOVE                             R19 R14
      163 GETIMPORT                        R18 K39 [tostring]
      165 CALL                             R18 1 1
      166 CONCAT                           R16 R17 R18
      167 CALL                             R15 1 0
      168 DUPTABLE                         R15 K43 [{"animationClip", "animationTrack", "animator", "destroy"}]
      169 SETTABLEKS                       R6 R15 K40 ["animationClip"]
      171 SETTABLEKS                       R11 R15 K41 ["animationTrack"]
      173 SETTABLEKS                       R7 R15 K6 ["animator"]
      175 NEWCLOSURE                       R16 P2
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R11
      179 CAPTURE                          UPVAL U7
      180 CAPTURE                          REF R7
      181 SETTABLEKS                       R16 R15 K42 ["destroy"]
      183 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
      185 MOVE                             R14 R0
      186 GETIMPORT                        R13 K46 [table.insert]
      188 CALL                             R13 2 0
      189 CLOSEUPVALS                      R7
      190 FORGLOOP                         R1 2 ; [-183]
      192 GETIMPORT                        R1 K48 [table.freeze]
      194 MOVE                             R2 R0
      195 CALL                             R1 1 -1
      196 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["destroy"]
        6 CALL                             R5 0 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["animationTrack"]
        6 NAMECALL                         R1 R1 K2 ["GetDebugData"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 LOADN                            R2 0
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_23:
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
       19 GETTABLEKS                       R11 R4 K2 ["animationTrack"]
       21 MOVE                             R13 R9
       22 MOVE                             R14 R10
       23 NAMECALL                         R11 R11 K3 ["SetParameter"]
       25 CALL                             R11 3 0
       26 FORGLOOP                         R6 2 ; [-8]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["currentTime"]
       31 JUMPIFNOTEQKN                    R6 K5 [0] ; [+5]
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R4
       35 CALL                             R6 1 0
       36 JUMP                             ; [+93]
       37 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
       39 GETTABLEKS                       R6 R6 K6 ["IsPlaying"]
       41 JUMPIF                           R6 ; [+8]
       42 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
       44 LOADN                            R8 0
       45 LOADN                            R9 1
       46 LOADN                            R10 0
       47 NAMECALL                         R6 R6 K7 ["Play"]
       49 CALL                             R6 4 0
       50 GETTABLEKS                       R6 R4 K8 ["animationClip"]
       52 LOADK                            R8 K9 ["AnimationGraphDefinition"]
       53 NAMECALL                         R6 R6 K10 ["IsA"]
       55 CALL                             R6 2 1
       56 JUMPIFNOT                        R6 ; [+45]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K4 ["currentTime"]
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R8 R8 K11 ["current"]
       63 SUB                              R6 R7 R8
       64 GETUPVAL                         R7 4
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R8 R8 K4 ["currentTime"]
       68 SETTABLEKS                       R8 R7 K11 ["current"]
       70 GETUPVAL                         R7 5
       71 NAMECALL                         R7 R7 K12 ["IsRunning"]
       73 CALL                             R7 1 1
       74 JUMPIF                           R7 ; [+20]
       75 LOADN                            R7 0
       76 JUMPIFNOTLT                      R7 R6 ; [+18]
       78 GETIMPORT                        R7 K14 [pcall]
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 CALL                             R7 1 2
       84 JUMPIF                           R7 ; [+10]
       85 GETIMPORT                        R9 K16 [warn]
       87 LOADK                            R11 K17 ["Failed to step animations for preview: "]
       88 FASTCALL1                        TOSTRING R8 ; [+3]
       89 MOVE                             R13 R8
       90 GETIMPORT                        R12 K19 [tostring]
       92 CALL                             R12 1 1
       93 CONCAT                           R10 R11 R12
       94 CALL                             R9 1 0
       95 GETIMPORT                        R7 K22 [task.spawn]
       97 NEWCLOSURE                       R8 P1
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R4
      100 CALL                             R7 1 0
      101 JUMP                             ; [+28]
      102 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
      104 GETUPVAL                         R7 2
      105 GETTABLEKS                       R7 R7 K4 ["currentTime"]
      107 SETTABLEKS                       R7 R6 K23 ["TimePosition"]
      109 GETUPVAL                         R6 5
      110 NAMECALL                         R6 R6 K12 ["IsRunning"]
      112 CALL                             R6 1 1
      113 JUMPIF                           R6 ; [+16]
      114 GETIMPORT                        R6 K14 [pcall]
      116 NEWCLOSURE                       R7 P2
      117 CAPTURE                          VAL R4
      118 CALL                             R6 1 2
      119 JUMPIF                           R6 ; [+10]
      120 GETIMPORT                        R8 K16 [warn]
      122 LOADK                            R10 K17 ["Failed to step animations for preview: "]
      123 FASTCALL1                        TOSTRING R7 ; [+3]
      124 MOVE                             R12 R7
      125 GETIMPORT                        R11 K19 [tostring]
      127 CALL                             R11 1 1
      128 CONCAT                           R9 R10 R11
      129 CALL                             R8 1 0
      130 FORGLOOP                         R0 2 ; [-127]
      132 RETURN                           R0 0

PROTO_24:
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
       36 GETTABLEKS                       R6 R6 K2 ["useState"]
       38 LOADN                            R7 0
       39 CALL                             R6 1 2
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          VAL R7
       53 NEWTABLE                         R10 0 3
       55 GETTABLEKS                       R11 R5 K4 ["instanceRegistry"]
       57 GETTABLEKS                       R12 R4 K5 ["observeNodePropsById"]
       59 MOVE                             R13 R7
       60 SETLIST                          R10 R11 3 [1]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       66 NEWCLOSURE                       R10 P1
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U12
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U13
       71 CAPTURE                          UPVAL U14
       72 CAPTURE                          UPVAL U15
       73 CAPTURE                          VAL R8
       74 CAPTURE                          UPVAL U16
       75 NEWTABLE                         R11 0 4
       77 GETTABLEKS                       R12 R1 K7 ["animationClipsList"]
       79 GETTABLEKS                       R13 R0 K8 ["overrideRig"]
       81 MOVE                             R14 R8
       82 MOVE                             R15 R6
       83 SETLIST                          R11 R12 4 [1]
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K9 ["useEffect"]
       89 NEWCLOSURE                       R11 P2
       90 CAPTURE                          VAL R9
       91 NEWTABLE                         R12 0 1
       93 MOVE                             R13 R9
       94 SETLIST                          R12 R13 1 [1]
       96 CALL                             R10 2 0
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K10 ["useRef"]
      100 GETTABLEKS                       R11 R0 K11 ["currentTime"]
      102 CALL                             R10 1 1
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K9 ["useEffect"]
      106 NEWCLOSURE                       R12 P3
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U17
      111 CAPTURE                          VAL R10
      112 CAPTURE                          UPVAL U16
      113 CAPTURE                          VAL R3
      114 NEWTABLE                         R13 0 5
      116 GETTABLEKS                       R14 R0 K12 ["isPlaying"]
      118 GETTABLEKS                       R15 R0 K11 ["currentTime"]
      120 MOVE                             R16 R9
      121 GETTABLEKS                       R17 R2 K13 ["animationParameters"]
      123 GETTABLEKS                       R18 R3 K14 ["setDebugDataAsync"]
      125 SETLIST                          R13 R14 5 [1]
      127 CALL                             R11 2 0
      128 RETURN                           R0 0

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
       57 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K19 ["GraphDebugDataContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       66 GETTABLEKS                       R10 R10 K20 ["InstanceRegistryContext"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Contexts"]
       73 GETTABLEKS                       R11 R11 K21 ["NativeGraphContext"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K11 [require]
       78 GETTABLEKS                       R12 R0 K22 ["Parent"]
       80 GETTABLEKS                       R12 R12 K23 ["React"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K11 [require]
       85 GETIMPORT                        R13 K1 [script]
       87 GETTABLEKS                       R13 R13 K22 ["Parent"]
       89 GETTABLEKS                       R13 R13 K22 ["Parent"]
       91 GETTABLEKS                       R13 R13 K22 ["Parent"]
       93 GETTABLEKS                       R13 R13 K12 ["Util"]
       95 GETTABLEKS                       R13 R13 K24 ["Signals"]
       97 GETTABLEKS                       R13 R13 K25 ["Experimental"]
       99 GETTABLEKS                       R13 R13 K26 ["SignalExperimentalUtils"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K11 [require]
      104 GETTABLEKS                       R14 R0 K22 ["Parent"]
      106 GETTABLEKS                       R14 R14 K24 ["Signals"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K11 [require]
      111 GETIMPORT                        R15 K1 [script]
      113 GETTABLEKS                       R15 R15 K22 ["Parent"]
      115 GETTABLEKS                       R15 R15 K22 ["Parent"]
      117 GETTABLEKS                       R15 R15 K22 ["Parent"]
      119 GETTABLEKS                       R15 R15 K12 ["Util"]
      121 GETTABLEKS                       R15 R15 K24 ["Signals"]
      123 GETTABLEKS                       R15 R15 K27 ["SignalsInstanceUtils"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K11 [require]
      128 GETTABLEKS                       R16 R0 K28 ["Flags"]
      130 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimEditorResetAnimationConstraints"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K11 [require]
      135 GETTABLEKS                       R17 R0 K14 ["Contexts"]
      137 GETTABLEKS                       R17 R17 K30 ["MaskEditorContext"]
      139 GETTABLEKS                       R17 R17 K31 ["observeMaskDatum"]
      141 CALL                             R16 1 1
      142 DUPCLOSURE                       R17 K32 [PROTO_0]
      143 DUPCLOSURE                       R18 K33 [PROTO_1]
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R3
      146 DUPCLOSURE                       R19 K34 [PROTO_2]
      147 DUPCLOSURE                       R20 K35 [PROTO_24]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R18
      166 RETURN                           R20 1
