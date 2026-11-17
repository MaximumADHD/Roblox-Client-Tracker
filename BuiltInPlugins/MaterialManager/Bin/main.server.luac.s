PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
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
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R1 4
       26 LOADK                            R3 K7 ["Roact tree"]
       27 GETUPVAL                         R4 3
       28 NAMECALL                         R1 R1 K8 ["addRoactTree"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_2:
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
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R0 R0 K4 ["Parent"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETIMPORT                        R2 K3 [script]
       15 GETTABLEKS                       R2 R2 K4 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["defineLuaFlags"]
       19 CALL                             R1 1 0
       20 DUPCLOSURE                       R2 K8 [PROTO_0]
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R1 K10 [pcall]
       24 CALL                             R1 1 2
       25 GETIMPORT                        R3 K6 [require]
       27 GETIMPORT                        R4 K3 [script]
       29 GETTABLEKS                       R4 R4 K4 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["commonInit"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R3
       35 CALL                             R4 0 0
       36 GETIMPORT                        R4 K6 [require]
       38 GETTABLEKS                       R5 R0 K12 ["Packages"]
       40 GETTABLEKS                       R5 R5 K13 ["TestLoader"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K14 ["launch"]
       45 GETTABLEKS                       R6 R0 K15 ["Name"]
       47 GETTABLEKS                       R7 R0 K16 ["Src"]
       49 CALL                             R5 2 0
       50 GETTABLEKS                       R5 R4 K17 ["isCli"]
       52 CALL                             R5 0 1
       53 JUMPIFNOT                        R5 ; [+1]
       54 RETURN                           R0 0
       55 GETIMPORT                        R5 K6 [require]
       57 GETTABLEKS                       R6 R0 K12 ["Packages"]
       59 GETTABLEKS                       R6 R6 K18 ["Roact"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K6 [require]
       64 GETTABLEKS                       R7 R0 K16 ["Src"]
       66 GETTABLEKS                       R7 R7 K19 ["MainPlugin"]
       68 CALL                             R6 1 1
       69 LOADNIL                          R7
       70 LOADNIL                          R8
       71 JUMPIFNOT                        R1 ; [+16]
       72 JUMPIFNOT                        R2 ; [+15]
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R10 R0 K12 ["Packages"]
       77 GETTABLEKS                       R10 R10 K20 ["DeveloperTools"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R9 R9 K21 ["forPlugin"]
       82 GETTABLEKS                       R10 R0 K15 ["Name"]
       84 GETIMPORT                        R11 K1 [plugin]
       86 CALL                             R9 2 1
       87 MOVE                             R8 R9
       88 NEWCLOSURE                       R9 P1
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R6
       92 CAPTURE                          REF R7
       93 CAPTURE                          REF R8
       94 GETIMPORT                        R10 K1 [plugin]
       96 GETTABLEKS                       R10 R10 K22 ["Unloading"]
       98 NEWCLOSURE                       R12 P2
       99 CAPTURE                          REF R8
      100 CAPTURE                          REF R7
      101 CAPTURE                          VAL R5
      102 NAMECALL                         R10 R10 K23 ["Connect"]
      104 CALL                             R10 2 0
      105 MOVE                             R10 R9
      106 CALL                             R10 0 0
      107 CLOSEUPVALS                      R7
      108 RETURN                           R0 0
