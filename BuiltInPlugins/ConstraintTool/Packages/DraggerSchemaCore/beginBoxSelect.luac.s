PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["areConstraintDetailsShown"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 NEWTABLE                         R5 0 0
       12 GETUPVAL                         R6 1
       13 NAMECALL                         R6 R6 K1 ["GetDescendants"]
       15 CALL                             R6 1 1
       16 MOVE                             R7 R6
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 LOADK                            R14 K2 ["BasePart"]
       21 NAMECALL                         R12 R11 K3 ["IsA"]
       23 CALL                             R12 2 1
       24 JUMPIFNOT                        R12 ; [+49]
       25 GETTABLEKS                       R12 R11 K4 ["Locked"]
       27 JUMPIF                           R12 ; [+68]
       28 GETUPVAL                         R12 2
       29 MOVE                             R13 R11
       30 MOVE                             R14 R3
       31 MOVE                             R15 R4
       32 CALL                             R12 3 1
       33 JUMPIFNOT                        R12 ; [+62]
       34 GETTABLE                         R13 R5 R12
       35 JUMPIF                           R13 ; [+60]
       36 LOADNIL                          R13
       37 LOADK                            R16 K5 ["Tool"]
       38 NAMECALL                         R14 R12 K3 ["IsA"]
       40 CALL                             R14 2 1
       41 JUMPIFNOT                        R14 ; [+3]
       42 GETTABLEKS                       R13 R11 K6 ["Position"]
       44 JUMP                             ; [+15]
       45 LOADK                            R16 K7 ["Model"]
       46 NAMECALL                         R14 R12 K3 ["IsA"]
       48 CALL                             R14 2 1
       49 JUMPIFNOT                        R14 ; [+6]
       50 NAMECALL                         R14 R12 K8 ["GetBoundingBox"]
       52 CALL                             R14 1 1
       53 GETTABLEKS                       R13 R14 K6 ["Position"]
       55 JUMP                             ; [+4]
       56 GETTABLEKS                       R14 R12 K9 ["ExtentsCFrame"]
       58 GETTABLEKS                       R13 R14 K6 ["Position"]
       60 LOADB                            R14 1
       61 SETTABLE                         R14 R5 R12
       62 DUPTABLE                         R16 K12 [{"Center", "Selectable"}]
       63 SETTABLEKS                       R13 R16 K10 ["Center"]
       65 SETTABLEKS                       R12 R16 K11 ["Selectable"]
       67 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       69 MOVE                             R15 R1
       70 GETIMPORT                        R14 K15 [table.insert]
       72 CALL                             R14 2 0
       73 JUMP                             ; [+22]
       74 LOADK                            R14 K16 ["Attachment"]
       75 NAMECALL                         R12 R11 K3 ["IsA"]
       77 CALL                             R12 2 1
       78 JUMPIFNOT                        R12 ; [+17]
       79 GETTABLEKS                       R12 R11 K17 ["Visible"]
       81 JUMPIF                           R12 ; [+1]
       82 JUMPIFNOT                        R2 ; [+13]
       83 DUPTABLE                         R14 K12 [{"Center", "Selectable"}]
       84 GETTABLEKS                       R15 R11 K18 ["WorldPosition"]
       86 SETTABLEKS                       R15 R14 K10 ["Center"]
       88 SETTABLEKS                       R11 R14 K11 ["Selectable"]
       90 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       92 MOVE                             R13 R1
       93 GETIMPORT                        R12 K15 [table.insert]
       95 CALL                             R12 2 0
       96 FORGLOOP                         R7 2 ; [-77]
       98 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["getSelectableWithCache"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K7 [script]
       20 GETTABLEKS                       R3 R3 K8 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["shouldSelectSubPart"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 RETURN                           R3 1
