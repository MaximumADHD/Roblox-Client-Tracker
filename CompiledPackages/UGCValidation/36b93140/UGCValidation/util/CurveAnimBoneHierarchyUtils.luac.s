PROTO_0:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["ClassName"]
        6 JUMPIFNOTEQKS                    R8 K1 ["Bone"] ; [+46]
        8 GETUPVAL                         R8 0
        9 LOADB                            R9 1
       10 SETTABLE                         R9 R8 R6
       11 JUMPIFNOTEQKNIL                  R1 ; [+17]
       13 GETUPVAL                         R9 1
       14 GETTABLE                         R8 R9 R2
       15 JUMPIF                           R8 ; [+4]
       16 GETUPVAL                         R8 1
       17 NEWTABLE                         R9 0 0
       19 SETTABLE                         R9 R8 R2
       20 GETUPVAL                         R10 1
       21 GETTABLE                         R9 R10 R2
       22 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       24 MOVE                             R10 R6
       25 GETIMPORT                        R8 K4 [table.insert]
       27 CALL                             R8 2 0
       28 JUMP                             ; [+15]
       29 GETUPVAL                         R9 2
       30 GETTABLE                         R8 R9 R1
       31 JUMPIF                           R8 ; [+4]
       32 GETUPVAL                         R8 2
       33 NEWTABLE                         R9 0 0
       35 SETTABLE                         R9 R8 R1
       36 GETUPVAL                         R10 2
       37 GETTABLE                         R9 R10 R1
       38 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       40 MOVE                             R10 R6
       41 GETIMPORT                        R8 K4 [table.insert]
       43 CALL                             R8 2 0
       44 GETTABLEKS                       R8 R7 K5 ["_children"]
       46 JUMPIFNOT                        R8 ; [+6]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R9 R7 K5 ["_children"]
       50 MOVE                             R10 R6
       51 MOVE                             R11 R2
       52 CALL                             R8 3 0
       53 FORGLOOP                         R3 2 ; [-50]
       55 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R0 0 0
        5 NEWTABLE                         R1 0 0
        7 NEWTABLE                         R2 0 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 GETUPVAL                         R4 1
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K0 ["getAvatarBoneSchema"]
       21 MOVE                             R10 R8
       22 CALL                             R9 1 1
       23 MOVE                             R10 R3
       24 MOVE                             R11 R9
       25 LOADNIL                          R12
       26 MOVE                             R13 R8
       27 CALL                             R10 3 0
       28 FORGLOOP                         R4 2 ; [-11]
       30 SETUPVAL                         R1 3
       31 SETUPVAL                         R2 4
       32 SETUPVAL                         R0 0
       33 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Folder"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+9]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["isBoneFolderName"]
       12 GETTABLEKS                       R7 R5 K4 ["Name"]
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 LOADB                            R6 1
       17 RETURN                           R6 1
       18 FORGLOOP                         R1 2 ; [-15]
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R3 1
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["R15plusUtils"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 NEWTABLE                         R3 0 6
       18 LOADK                            R4 K7 ["Head"]
       19 LOADK                            R5 K8 ["UpperTorso"]
       20 LOADK                            R6 K9 ["LeftFoot"]
       21 LOADK                            R7 K10 ["RightFoot"]
       22 LOADK                            R8 K11 ["LeftHand"]
       23 LOADK                            R9 K12 ["RightHand"]
       24 SETLIST                          R3 R4 6 [1]
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          REF R6
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          REF R4
       34 CAPTURE                          REF R5
       35 DUPCLOSURE                       R8 K13 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R8 R2 K14 ["hasBoneFolders"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          VAL R7
       41 CAPTURE                          REF R6
       42 SETTABLEKS                       R8 R2 K15 ["isBoneFolderName"]
       44 NEWCLOSURE                       R8 P3
       45 CAPTURE                          VAL R7
       46 CAPTURE                          REF R4
       47 SETTABLEKS                       R8 R2 K16 ["getRootBoneNamesForBodyPart"]
       49 NEWCLOSURE                       R8 P4
       50 CAPTURE                          VAL R7
       51 CAPTURE                          REF R5
       52 SETTABLEKS                       R8 R2 K17 ["getChildBoneNames"]
       54 CLOSEUPVALS                      R4
       55 RETURN                           R2 1
