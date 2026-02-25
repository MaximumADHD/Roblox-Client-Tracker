PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+39]
        2 NEWTABLE                         R0 4 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["XSmall"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["Size"]
       10 GETTABLEKS                       R2 R3 K2 ["Size_150"]
       12 SETTABLE                         R2 R0 R1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K3 ["Small"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K1 ["Size"]
       19 GETTABLEKS                       R2 R3 K4 ["Size_200"]
       21 SETTABLE                         R2 R0 R1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K5 ["Medium"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K1 ["Size"]
       28 GETTABLEKS                       R2 R3 K6 ["Size_250"]
       30 SETTABLE                         R2 R0 R1
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R1 R2 K7 ["Large"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K1 ["Size"]
       37 GETTABLEKS                       R2 R3 K8 ["Size_350"]
       39 SETTABLE                         R2 R0 R1
       40 RETURN                           R0 1
       41 NEWTABLE                         R0 8 0
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R1 R2 K0 ["XSmall"]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K1 ["Size"]
       49 GETTABLEKS                       R2 R3 K9 ["Size_50"]
       51 SETTABLE                         R2 R0 R1
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R1 R2 K3 ["Small"]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R3 R4 K1 ["Size"]
       58 GETTABLEKS                       R2 R3 K9 ["Size_50"]
       60 SETTABLE                         R2 R0 R1
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R1 R2 K5 ["Medium"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R3 R4 K1 ["Size"]
       67 GETTABLEKS                       R2 R3 K10 ["Size_100"]
       69 SETTABLE                         R2 R0 R1
       70 GETUPVAL                         R2 1
       71 GETTABLEKS                       R1 R2 K7 ["Large"]
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R3 R4 K1 ["Size"]
       76 GETTABLEKS                       R2 R3 K2 ["Size_150"]
       78 SETTABLE                         R2 R0 R1
       79 GETUPVAL                         R2 1
       80 GETTABLEKS                       R1 R2 K11 ["XLarge"]
       82 GETUPVAL                         R4 2
       83 GETTABLEKS                       R3 R4 K1 ["Size"]
       85 GETTABLEKS                       R2 R3 K4 ["Size_200"]
       87 SETTABLE                         R2 R0 R1
       88 GETUPVAL                         R2 1
       89 GETTABLEKS                       R1 R2 K12 ["XXLarge"]
       91 GETUPVAL                         R4 2
       92 GETTABLEKS                       R3 R4 K1 ["Size"]
       94 GETTABLEKS                       R2 R3 K6 ["Size_250"]
       96 SETTABLE                         R2 R0 R1
       97 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 NEWTABLE                         R5 0 2
       11 MOVE                             R6 R2
       12 MOVE                             R7 R1
       13 SETLIST                          R5 R6 2 [1]
       15 CALL                             R3 2 1
       16 GETTABLE                         R4 R3 R0
       17 JUMPIFNOTEQKNIL                  R4 ; [+7]
       19 GETIMPORT                        R5 K2 [error]
       21 LOADK                            R7 K3 ["Invalid icon button size: "]
       22 MOVE                             R8 R0
       23 CONCAT                           R6 R7 R8
       24 CALL                             R5 1 0
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["IconSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Style"]
       27 GETTABLEKS                       R5 R6 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_1]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
