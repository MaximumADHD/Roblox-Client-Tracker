PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R1 R2 K6 ["createRoot"]
       20 GETUPVAL                         R2 5
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 GETUPVAL                         R1 3
       24 MOVE                             R3 R0
       25 NAMECALL                         R1 R1 K7 ["render"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K3 ["Common"]
        9 GETIMPORT                        R1 K5 [require]
       11 GETTABLEKS                       R2 R0 K6 ["defineLuaFlags"]
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K8 [plugin]
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K2 ["Parent"]
       22 GETTABLEKS                       R2 R3 K2 ["Parent"]
       24 GETTABLEKS                       R1 R2 K2 ["Parent"]
       26 GETIMPORT                        R2 K5 [require]
       28 GETTABLEKS                       R3 R0 K9 ["commonInit"]
       30 CALL                             R2 1 1
       31 MOVE                             R3 R2
       32 CALL                             R3 0 0
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R5 R1 K10 ["Packages"]
       37 GETTABLEKS                       R4 R5 K11 ["TestLoader"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R3 K12 ["isCli"]
       42 CALL                             R4 0 1
       43 JUMPIFNOT                        R4 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R4 K15 [Instance.new]
       47 LOADK                            R5 K16 ["Frame"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R7 R1 K10 ["Packages"]
       53 GETTABLEKS                       R6 R7 K17 ["React"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R8 R1 K10 ["Packages"]
       60 GETTABLEKS                       R7 R8 K18 ["ReactRoblox"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R9 R1 K19 ["Src"]
       67 GETTABLEKS                       R8 R9 K20 ["MainPlugin"]
       69 CALL                             R7 1 1
       70 LOADNIL                          R8
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          REF R8
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 GETIMPORT                        R11 K8 [plugin]
       80 GETTABLEKS                       R10 R11 K21 ["Unloading"]
       82 NEWCLOSURE                       R12 P1
       83 CAPTURE                          REF R8
       84 NAMECALL                         R10 R10 K22 ["Connect"]
       86 CALL                             R10 2 0
       87 MOVE                             R10 R9
       88 CALL                             R10 0 0
       89 CLOSEUPVALS                      R8
       90 RETURN                           R0 0
