PROTO_0:
        0 GETIMPORT                        R2 K2 [OverlapParams.new]
        2 CALL                             R2 0 1
        3 GETIMPORT                        R3 K6 [Enum.RaycastFilterType.Include]
        5 SETTABLEKS                       R3 R2 K7 ["FilterType"]
        7 LOADK                            R3 K8 [0.001]
        8 SETTABLEKS                       R3 R2 K9 ["Tolerance"]
       10 SETTABLEKS                       R1 R2 K10 ["FilterDescendantsInstances"]
       12 LOADB                            R3 0
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 LOADK                            R11 K11 ["BasePart"]
       18 NAMECALL                         R9 R8 K12 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+39]
       22 GETIMPORT                        R9 K14 [workspace]
       24 MOVE                             R11 R8
       25 MOVE                             R12 R2
       26 NAMECALL                         R9 R9 K15 ["GetPartsInPart"]
       28 CALL                             R9 3 1
       29 NAMECALL                         R10 R8 K16 ["GetConnectedParts"]
       31 CALL                             R10 1 1
       32 NEWTABLE                         R11 0 0
       34 MOVE                             R12 R10
       35 LOADNIL                          R13
       36 LOADNIL                          R14
       37 FORGPREP                         R12
       38 LOADB                            R17 1
       39 SETTABLE                         R17 R11 R16
       40 FORGLOOP                         R12 2 ; [-3]
       42 MOVE                             R12 R9
       43 LOADNIL                          R13
       44 LOADNIL                          R14
       45 FORGPREP                         R12
       46 GETTABLE                         R17 R11 R16
       47 JUMPIF                           R17 ; [+11]
       48 GETIMPORT                        R17 K18 [Instance.new]
       50 MOVE                             R18 R0
       51 CALL                             R17 1 1
       52 SETTABLEKS                       R8 R17 K19 ["Part0"]
       54 SETTABLEKS                       R16 R17 K20 ["Part1"]
       56 SETTABLEKS                       R8 R17 K21 ["Parent"]
       58 LOADB                            R3 1
       59 FORGLOOP                         R12 2 ; [-14]
       61 FORGLOOP                         R4 2 ; [-45]
       63 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R1 R3 K3 ["Part0"]
        6 SETTABLEKS                       R2 R3 K4 ["Part1"]
        8 SETTABLEKS                       R1 R3 K5 ["Parent"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [2] ; [+28]
        7 GETTABLEN                        R2 R1 1
        8 LOADK                            R4 K2 ["BasePart"]
        9 NAMECALL                         R2 R2 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+21]
       13 GETTABLEN                        R2 R1 2
       14 LOADK                            R4 K2 ["BasePart"]
       15 NAMECALL                         R2 R2 K3 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+15]
       19 GETTABLEN                        R2 R1 1
       20 GETTABLEN                        R3 R1 2
       21 GETIMPORT                        R4 K6 [Instance.new]
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R2 R4 K7 ["Part0"]
       27 SETTABLEKS                       R3 R4 K8 ["Part1"]
       29 SETTABLEKS                       R2 R4 K9 ["Parent"]
       31 LOADB                            R2 1
       32 LOADB                            R3 1
       33 RETURN                           R2 2
       34 LENGTH                           R2 R1
       35 LOADN                            R3 0
       36 JUMPIFNOTLT                      R3 R2 ; [+58]
       38 JUMPIFEQKS                       R0 K10 ["NoCollisionConstraint"] ; [+56]
       40 NEWTABLE                         R2 0 0
       42 LOADN                            R5 1
       43 LENGTH                           R3 R1
       44 LOADN                            R4 1
       45 FORNPREP                         R3
       46 GETTABLE                         R6 R1 R5
       47 LOADK                            R9 K11 ["Model"]
       48 NAMECALL                         R7 R6 K3 ["IsA"]
       50 CALL                             R7 2 1
       51 JUMPIFNOT                        R7 ; [+19]
       52 NAMECALL                         R7 R6 K12 ["GetDescendants"]
       54 CALL                             R7 1 3
       55 FORGPREP                         R7
       56 LOADK                            R14 K2 ["BasePart"]
       57 NAMECALL                         R12 R11 K3 ["IsA"]
       59 CALL                             R12 2 1
       60 JUMPIFNOT                        R12 ; [+7]
       61 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
       63 MOVE                             R13 R2
       64 MOVE                             R14 R11
       65 GETIMPORT                        R12 K15 [table.insert]
       67 CALL                             R12 2 0
       68 FORGLOOP                         R7 2 ; [-13]
       70 JUMP                             ; [+12]
       71 LOADK                            R9 K2 ["BasePart"]
       72 NAMECALL                         R7 R6 K3 ["IsA"]
       74 CALL                             R7 2 1
       75 JUMPIFNOT                        R7 ; [+7]
       76 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       78 MOVE                             R8 R2
       79 MOVE                             R9 R6
       80 GETIMPORT                        R7 K15 [table.insert]
       82 CALL                             R7 2 0
       83 FORNLOOP                         R3
       84 GETUPVAL                         R3 1
       85 MOVE                             R4 R0
       86 MOVE                             R5 R2
       87 CALL                             R3 2 1
       88 LENGTH                           R4 R2
       89 LOADN                            R5 2
       90 JUMPIFNOTLE                      R5 R4 ; [+4]
       92 LOADB                            R4 1
       93 MOVE                             R5 R3
       94 RETURN                           R4 2
       95 LOADB                            R2 0
       96 LOADB                            R3 0
       97 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 DUPCLOSURE                       R3 K6 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 RETURN                           R3 1
