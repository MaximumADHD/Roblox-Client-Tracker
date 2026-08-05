PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["areConstraintDetailsShown"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 NEWTABLE                         R5 0 0
       12 GETIMPORT                        R6 K2 [workspace]
       14 NAMECALL                         R6 R6 K3 ["GetDescendants"]
       16 CALL                             R6 1 1
       17 MOVE                             R7 R6
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 LOADK                            R14 K4 ["BasePart"]
       22 NAMECALL                         R12 R11 K5 ["IsA"]
       24 CALL                             R12 2 1
       25 JUMPIFNOT                        R12 ; [+49]
       26 GETTABLEKS                       R12 R11 K6 ["Locked"]
       28 JUMPIF                           R12 ; [+68]
       29 GETUPVAL                         R12 1
       30 MOVE                             R13 R11
       31 MOVE                             R14 R3
       32 MOVE                             R15 R4
       33 CALL                             R12 3 1
       34 JUMPIFNOT                        R12 ; [+62]
       35 GETTABLE                         R13 R5 R12
       36 JUMPIF                           R13 ; [+60]
       37 LOADNIL                          R13
       38 LOADK                            R16 K7 ["Tool"]
       39 NAMECALL                         R14 R12 K5 ["IsA"]
       41 CALL                             R14 2 1
       42 JUMPIFNOT                        R14 ; [+3]
       43 GETTABLEKS                       R13 R11 K8 ["Position"]
       45 JUMP                             ; [+15]
       46 LOADK                            R16 K9 ["Model"]
       47 NAMECALL                         R14 R12 K5 ["IsA"]
       49 CALL                             R14 2 1
       50 JUMPIFNOT                        R14 ; [+6]
       51 NAMECALL                         R14 R12 K10 ["GetBoundingBox"]
       53 CALL                             R14 1 1
       54 GETTABLEKS                       R13 R14 K8 ["Position"]
       56 JUMP                             ; [+4]
       57 GETTABLEKS                       R14 R12 K11 ["ExtentsCFrame"]
       59 GETTABLEKS                       R13 R14 K8 ["Position"]
       61 LOADB                            R14 1
       62 SETTABLE                         R14 R5 R12
       63 DUPTABLE                         R16 K14 [{"Center", "Selectable"}]
       64 SETTABLEKS                       R13 R16 K12 ["Center"]
       66 SETTABLEKS                       R12 R16 K13 ["Selectable"]
       68 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       70 MOVE                             R15 R1
       71 GETIMPORT                        R14 K17 [table.insert]
       73 CALL                             R14 2 0
       74 JUMP                             ; [+22]
       75 LOADK                            R14 K18 ["Attachment"]
       76 NAMECALL                         R12 R11 K5 ["IsA"]
       78 CALL                             R12 2 1
       79 JUMPIFNOT                        R12 ; [+17]
       80 GETTABLEKS                       R12 R11 K19 ["Visible"]
       82 JUMPIF                           R12 ; [+1]
       83 JUMPIFNOT                        R2 ; [+13]
       84 DUPTABLE                         R14 K14 [{"Center", "Selectable"}]
       85 GETTABLEKS                       R15 R11 K20 ["WorldPosition"]
       87 SETTABLEKS                       R15 R14 K12 ["Center"]
       89 SETTABLEKS                       R11 R14 K13 ["Selectable"]
       91 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       93 MOVE                             R13 R1
       94 GETIMPORT                        R12 K17 [table.insert]
       96 CALL                             R12 2 0
       97 FORGLOOP                         R7 2 ; [-77]
       99 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R4 R2 K6 ["Types"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R5 R5 K2 ["Parent"]
       20 GETTABLEKS                       R5 R5 K7 ["getSelectableWithCache"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R6 R6 K2 ["Parent"]
       29 GETTABLEKS                       R6 R6 K8 ["shouldSelectSubPart"]
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K9 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R4
       35 RETURN                           R6 1
