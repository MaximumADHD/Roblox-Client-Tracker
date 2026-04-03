PROTO_0:
        0 GETIMPORT                        R1 K2 [Enum.CollisionFidelity]
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R0 R1 R2
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 LOADN                            R5 1
        4 FASTCALL3                        TABLE_INSERT R2 R5 R0
        6 MOVE                             R4 R2
        7 MOVE                             R6 R0
        8 GETIMPORT                        R3 K3 [table.insert]
       10 CALL                             R3 3 0
       11 GETIMPORT                        R3 K7 [Enum.CollisionFidelity.Default]
       13 GETIMPORT                        R4 K9 [pcall]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          REF R3
       17 CAPTURE                          UPVAL U0
       18 CALL                             R4 1 0
       19 NEWTABLE                         R4 0 0
       21 MOVE                             R5 R2
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 LOADK                            R12 K10 ["MeshPart"]
       26 NAMECALL                         R10 R9 K11 ["IsA"]
       28 CALL                             R10 2 1
       29 JUMPIFNOT                        R10 ; [+20]
       30 GETTABLEKS                       R10 R9 K5 ["CollisionFidelity"]
       32 JUMPIFEQ                         R10 R3 ; [+17]
       34 LOADK                            R13 K12 ["Expected %*.CollisionFidelity to be %*"]
       35 NAMECALL                         R15 R9 K13 ["GetFullName"]
       37 CALL                             R15 1 1
       38 GETTABLEKS                       R16 R3 K14 ["Name"]
       40 NAMECALL                         R13 R13 K15 ["format"]
       42 CALL                             R13 3 1
       43 MOVE                             R12 R13
       44 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       46 MOVE                             R11 R4
       47 GETIMPORT                        R10 K3 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R5 2 ; [-26]
       52 LENGTH                           R5 R4
       53 JUMPIFNOTEQKN                    R5 K16 [0] ; [+4]
       55 LOADB                            R5 1
       56 CLOSEUPVALS                      R3
       57 RETURN                           R5 1
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R5 R6 K17 ["reportFailure"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R7 R8 K18 ["ErrorType"]
       64 GETTABLEKS                       R6 R7 K19 ["validateBodyPartCollisionFidelity"]
       66 LOADNIL                          R7
       67 MOVE                             R8 R1
       68 CALL                             R5 3 0
       69 LOADB                            R5 0
       70 MOVE                             R6 R4
       71 CLOSEUPVALS                      R3
       72 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K9 [game]
       21 LOADK                            R5 K10 ["UGCValidationBodyPartCollisionFidelity"]
       22 LOADK                            R6 K11 ["Default"]
       23 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       25 CALL                             R3 3 1
       26 DUPCLOSURE                       R4 K13 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
