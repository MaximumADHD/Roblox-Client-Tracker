PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K6 ["mount"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 GETUPVAL                         R1 4
       24 JUMPIFNOT                        R1 ; [+21]
       25 GETIMPORT                        R1 K8 [require]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K9 ["Packages"]
       30 GETTABLEKS                       R2 R2 K10 ["DeveloperTools"]
       32 CALL                             R1 1 1
       33 GETTABLEKS                       R1 R1 K11 ["forStandalonePlugin"]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K2 ["Name"]
       38 GETIMPORT                        R3 K1 [plugin]
       40 DUPTABLE                         R4 K13 [{"rootInstance"}]
       41 GETUPVAL                         R5 3
       42 SETTABLEKS                       R5 R4 K12 ["rootInstance"]
       44 CALL                             R1 3 1
       45 SETUPVAL                         R1 5
       46 GETUPVAL                         R1 5
       47 JUMPIFNOT                        R1 ; [+6]
       48 GETUPVAL                         R1 5
       49 LOADK                            R3 K14 ["Roact tree"]
       50 GETUPVAL                         R4 3
       51 NAMECALL                         R1 R1 K15 ["addRoactTree"]
       53 CALL                             R1 3 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Common"]
       11 GETTABLEKS                       R2 R2 K6 ["commonInit"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 CALL                             R2 0 0
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K10 [game]
       25 LOADK                            R5 K11 ["StudioService"]
       26 NAMECALL                         R3 R3 K12 ["GetService"]
       28 CALL                             R3 2 1
       29 NAMECALL                         R3 R3 K13 ["HasInternalPermission"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Plugin"]
       36 GETTABLEKS                       R5 R5 K15 ["MainPlugin"]
       38 CALL                             R4 1 1
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          REF R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          REF R6
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          REF R6
       50 CAPTURE                          REF R5
       51 CAPTURE                          VAL R2
       52 GETIMPORT                        R9 K17 [plugin]
       54 GETTABLEKS                       R9 R9 K18 ["Unloading"]
       56 MOVE                             R11 R8
       57 NAMECALL                         R9 R9 K19 ["Connect"]
       59 CALL                             R9 2 0
       60 MOVE                             R9 R7
       61 CALL                             R9 0 0
       62 CLOSEUPVALS                      R5
       63 RETURN                           R0 0
