PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETGLOBAL                        R1 K4 ["MainPlugin"]
       12 DUPTABLE                         R2 K6 [{"Plugin"}]
       13 GETIMPORT                        R3 K1 [plugin]
       15 SETTABLEKS                       R3 R2 K5 ["Plugin"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K7 ["mount"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 SETUPVAL                         R1 2
       24 GETUPVAL                         R1 3
       25 JUMPIFNOT                        R1 ; [+21]
       26 GETIMPORT                        R1 K9 [require]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K10 ["Packages"]
       31 GETTABLEKS                       R2 R2 K11 ["DeveloperTools"]
       33 CALL                             R1 1 1
       34 GETTABLEKS                       R1 R1 K12 ["forStandalonePlugin"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K2 ["Name"]
       39 GETIMPORT                        R3 K1 [plugin]
       41 DUPTABLE                         R4 K14 [{"rootInstance"}]
       42 GETUPVAL                         R5 2
       43 SETTABLEKS                       R5 R4 K13 ["rootInstance"]
       45 CALL                             R1 3 1
       46 SETUPVAL                         R1 4
       47 GETUPVAL                         R1 4
       48 JUMPIFNOT                        R1 ; [+6]
       49 GETUPVAL                         R1 4
       50 LOADK                            R3 K15 ["Roact tree"]
       51 GETUPVAL                         R4 2
       52 NAMECALL                         R1 R1 K16 ["addRoactTree"]
       54 CALL                             R1 3 0
       55 RETURN                           R0 0

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
       39 SETGLOBAL                        R4 K15 ["MainPlugin"]
       41 LOADNIL                          R4
       42 LOADNIL                          R5
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          REF R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          REF R5
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          REF R5
       51 CAPTURE                          REF R4
       52 CAPTURE                          VAL R2
       53 GETIMPORT                        R8 K17 [plugin]
       55 GETTABLEKS                       R8 R8 K18 ["Unloading"]
       57 MOVE                             R10 R7
       58 NAMECALL                         R8 R8 K19 ["connect"]
       60 CALL                             R8 2 0
       61 MOVE                             R8 R6
       62 CALL                             R8 0 0
       63 CLOSEUPVALS                      R4
       64 RETURN                           R0 0
