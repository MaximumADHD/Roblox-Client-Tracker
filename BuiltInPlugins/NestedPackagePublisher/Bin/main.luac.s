PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "pluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["pluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K5 ["mount"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 SETUPVAL                         R1 5
       24 GETUPVAL                         R1 6
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 6
       27 LOADK                            R3 K6 ["Roact tree"]
       28 GETUPVAL                         R4 5
       29 NAMECALL                         R1 R1 K7 ["addRoactTree"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["commonInit"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 GETIMPORT                        R5 K3 [script]
       15 GETTABLEKS                       R4 R5 K4 ["Parent"]
       17 GETTABLEKS                       R3 R4 K4 ["Parent"]
       19 GETIMPORT                        R4 K1 [require]
       21 GETTABLEKS                       R6 R3 K6 ["Packages"]
       23 GETTABLEKS                       R5 R6 K7 ["Roact"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K1 [require]
       28 GETTABLEKS                       R7 R3 K8 ["Src"]
       30 GETTABLEKS                       R6 R7 K9 ["MainPlugin"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K1 [require]
       35 GETTABLEKS                       R9 R3 K8 ["Src"]
       37 GETTABLEKS                       R8 R9 K10 ["Util"]
       39 GETTABLEKS                       R7 R8 K11 ["hasInternalPermission"]
       41 CALL                             R6 1 1
       42 CALL                             R6 0 1
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 JUMPIFNOT                        R6 ; [+14]
       46 GETIMPORT                        R10 K1 [require]
       48 GETTABLEKS                       R12 R3 K6 ["Packages"]
       50 GETTABLEKS                       R11 R12 K12 ["DeveloperTools"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R9 R10 K13 ["forPlugin"]
       55 GETTABLEKS                       R10 R3 K14 ["Name"]
       57 MOVE                             R11 R0
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 NEWCLOSURE                       R9 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          REF R7
       67 CAPTURE                          REF R8
       68 GETTABLEKS                       R10 R0 K15 ["Unloading"]
       70 NEWCLOSURE                       R12 P1
       71 CAPTURE                          REF R8
       72 CAPTURE                          REF R7
       73 CAPTURE                          VAL R4
       74 NAMECALL                         R10 R10 K16 ["Connect"]
       76 CALL                             R10 2 0
       77 MOVE                             R10 R9
       78 CALL                             R10 0 0
       79 CLOSEUPVALS                      R7
       80 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
