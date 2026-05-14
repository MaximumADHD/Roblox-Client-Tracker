PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+69]
        7 GETIMPORT                        R1 K5 [string.find]
        9 GETTABLEKS                       R2 R0 K6 ["error"]
       11 LOADK                            R3 K7 ["429"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K8 ["TooManyRequests"]
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K5 [string.find]
       20 GETTABLEKS                       R2 R0 K6 ["error"]
       22 LOADK                            R3 K9 ["500"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+4]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K10 ["ServerError500"]
       28 RETURN                           R1 1
       29 GETIMPORT                        R1 K5 [string.find]
       31 GETTABLEKS                       R2 R0 K6 ["error"]
       33 LOADK                            R3 K11 ["504"]
       34 CALL                             R1 2 1
       35 JUMPIFNOT                        R1 ; [+4]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K12 ["ServerError504"]
       39 RETURN                           R1 1
       40 GETIMPORT                        R1 K5 [string.find]
       42 GETTABLEKS                       R2 R0 K6 ["error"]
       44 LOADK                            R3 K13 ["TextFullyFiltered"]
       45 CALL                             R1 2 1
       46 JUMPIFNOT                        R1 ; [+4]
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K13 ["TextFullyFiltered"]
       50 RETURN                           R1 1
       51 GETIMPORT                        R1 K5 [string.find]
       53 GETTABLEKS                       R2 R0 K6 ["error"]
       55 LOADK                            R3 K14 ["AccountingFailed"]
       56 CALL                             R1 2 1
       57 JUMPIFNOT                        R1 ; [+11]
       58 GETIMPORT                        R1 K5 [string.find]
       60 GETTABLEKS                       R2 R0 K6 ["error"]
       62 LOADK                            R3 K15 ["Decrementing account failed"]
       63 CALL                             R1 2 1
       64 JUMPIFNOT                        R1 ; [+4]
       65 GETUPVAL                         R1 0
       66 GETTABLEKS                       R1 R1 K16 ["AccountingFailedDecrement"]
       68 RETURN                           R1 1
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R1 R1 K17 ["CustomMessage"]
       72 GETTABLEKS                       R2 R0 K6 ["error"]
       74 RETURN                           R1 2
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R1 R1 K18 ["Unknown"]
       78 LOADNIL                          R2
       79 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Enum"]
       13 GETTABLEKS                       R2 R2 K8 ["GenerationErrorType"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
