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
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K6 ["createRoot"]
       20 GETIMPORT                        R2 K9 [Instance.new]
       22 LOADK                            R3 K10 ["Frame"]
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 1
       25 SETUPVAL                         R1 3
       26 GETUPVAL                         R1 3
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K11 ["render"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R0 R0 K4 ["Parent"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETTABLEKS                       R2 R0 K7 ["Packages"]
       15 GETTABLEKS                       R2 R2 K8 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K9 ["launch"]
       20 LOADK                            R3 K10 ["MaterialPicker"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K6 [require]
       31 GETTABLEKS                       R3 R0 K7 ["Packages"]
       33 GETTABLEKS                       R3 R3 K13 ["React"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K6 [require]
       38 GETTABLEKS                       R4 R0 K7 ["Packages"]
       40 GETTABLEKS                       R4 R4 K14 ["ReactRoblox"]
       42 CALL                             R3 1 1
       43 GETIMPORT                        R4 K6 [require]
       45 GETTABLEKS                       R5 R0 K11 ["Src"]
       47 GETTABLEKS                       R5 R5 K15 ["MainPlugin"]
       49 CALL                             R4 1 1
       50 LOADNIL                          R5
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          REF R5
       56 CAPTURE                          VAL R3
       57 GETIMPORT                        R7 K1 [plugin]
       59 GETTABLEKS                       R7 R7 K16 ["Unloading"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          REF R5
       63 NAMECALL                         R7 R7 K17 ["Connect"]
       65 CALL                             R7 2 0
       66 MOVE                             R7 R6
       67 CALL                             R7 0 0
       68 CLOSEUPVALS                      R5
       69 RETURN                           R0 0
