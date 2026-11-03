PROTO_0:
        0 JUMPIFNOT                        R0 ; [+8]
        1 LOADK                            R4 K0 ["Attachment"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["Parent"]
        8 JUMP                             ; [+1]
        9 MOVE                             R1 R0
       10 JUMPIFNOT                        R1 ; [+5]
       11 LOADK                            R4 K3 ["Terrain"]
       12 NAMECALL                         R2 R1 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 NEWTABLE                         R2 0 0
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R1 K2 ["Parent"]
       21 LOADK                            R5 K4 ["BasePart"]
       22 NAMECALL                         R3 R1 K1 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+9]
       26 JUMPIFNOT                        R2 ; [+8]
       27 LOADK                            R5 K5 ["Model"]
       28 NAMECALL                         R3 R2 K1 ["IsA"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+3]
       32 GETUPVAL                         R3 0
       33 JUMPIFNOTEQ                      R2 R3 ; [+7]
       35 NEWTABLE                         R3 0 1
       37 MOVE                             R4 R1
       38 SETLIST                          R3 R4 1 [1]
       40 RETURN                           R3 1
       41 NEWTABLE                         R3 0 0
       43 NAMECALL                         R4 R2 K6 ["GetChildren"]
       45 CALL                             R4 1 3
       46 FORGPREP                         R4
       47 LOADK                            R11 K4 ["BasePart"]
       48 NAMECALL                         R9 R8 K1 ["IsA"]
       50 CALL                             R9 2 1
       51 JUMPIFNOT                        R9 ; [+7]
       52 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       54 MOVE                             R10 R3
       55 MOVE                             R11 R8
       56 GETIMPORT                        R9 K9 [table.insert]
       58 CALL                             R9 2 0
       59 FORGLOOP                         R4 2 ; [-13]
       61 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R4 R4 K0 ["GetPlayers"]
        6 CALL                             R4 1 3
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K1 ["Character"]
       10 JUMPIFNOT                        R9 ; [+8]
       11 GETTABLEKS                       R11 R8 K1 ["Character"]
       13 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       15 MOVE                             R10 R3
       16 GETIMPORT                        R9 K4 [table.insert]
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 2 ; [-12]
       21 GETIMPORT                        R4 K7 [RaycastParams.new]
       23 CALL                             R4 0 1
       24 GETIMPORT                        R5 K11 [Enum.RaycastFilterType.Exclude]
       26 SETTABLEKS                       R5 R4 K12 ["FilterType"]
       28 SETTABLEKS                       R3 R4 K13 ["FilterDescendantsInstances"]
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K14 ["IgnoreWater"]
       33 LOADN                            R5 1
       34 LOADN                            R8 1
       35 LOADN                            R6 10
       36 LOADN                            R7 1
       37 FORNPREP                         R6
       38 GETUPVAL                         R9 2
       39 MOVE                             R11 R0
       40 SUB                              R12 R1 R0
       41 MOVE                             R13 R4
       42 NAMECALL                         R9 R9 K15 ["Raycast"]
       44 CALL                             R9 4 1
       45 JUMPIF                           R9 ; [+2]
       46 LOADB                            R10 0
       47 RETURN                           R10 1
       48 GETTABLEKS                       R10 R9 K16 ["Instance"]
       50 GETTABLEKS                       R11 R10 K17 ["Transparency"]
       52 MUL                              R5 R5 R11
       53 SUBRK                            R11 K18 [1] R5
       54 LOADK                            R12 K19 [0.8]
       55 JUMPIFNOTLT                      R12 R11 ; [+3]
       57 LOADB                            R11 1
       58 RETURN                           R11 1
       59 MOVE                             R13 R10
       60 NAMECALL                         R11 R4 K20 ["AddToFilter"]
       62 CALL                             R11 2 0
       63 FORNLOOP                         R6
       64 GETUPVAL                         R7 2
       65 MOVE                             R9 R0
       66 SUB                              R10 R1 R0
       67 MOVE                             R11 R4
       68 NAMECALL                         R7 R7 K15 ["Raycast"]
       70 CALL                             R7 4 1
       71 JUMPIFNOTEQKNIL                  R7 ; [+2]
       73 LOADB                            R6 0 +1
       74 LOADB                            R6 1
       75 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 4 0
       15 LOADK                            R3 K5 [0.8]
       16 SETTABLEKS                       R3 R2 K6 ["OCCLUDING_OPACITY"]
       18 LOADN                            R3 10
       19 SETTABLEKS                       R3 R2 K7 ["MAX_TRANSPARENT_HITS"]
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 DUPCLOSURE                       R4 K9 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R2 K10 ["isOccluded"]
       29 RETURN                           R2 1
