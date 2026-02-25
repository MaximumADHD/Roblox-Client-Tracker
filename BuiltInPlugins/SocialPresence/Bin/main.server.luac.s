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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K7 [plugin]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R1 R2 K4 ["Parent"]
       18 GETTABLEKS                       R0 R1 K4 ["Parent"]
       20 GETIMPORT                        R1 K1 [require]
       22 GETTABLEKS                       R3 R0 K8 ["Packages"]
       24 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K10 ["launch"]
       29 LOADK                            R3 K11 ["SocialPresence"]
       30 GETTABLEKS                       R4 R0 K12 ["Src"]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R1 K13 ["isCli"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K1 [require]
       40 GETTABLEKS                       R4 R0 K8 ["Packages"]
       42 GETTABLEKS                       R3 R4 K14 ["React"]
       44 CALL                             R2 1 1
       45 GETIMPORT                        R3 K1 [require]
       47 GETTABLEKS                       R5 R0 K8 ["Packages"]
       49 GETTABLEKS                       R4 R5 K15 ["ReactRoblox"]
       51 CALL                             R3 1 1
       52 GETIMPORT                        R4 K1 [require]
       54 GETTABLEKS                       R6 R0 K12 ["Src"]
       56 GETTABLEKS                       R5 R6 K16 ["MainPlugin"]
       58 CALL                             R4 1 1
       59 LOADNIL                          R5
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          REF R5
       65 CAPTURE                          VAL R3
       66 GETIMPORT                        R8 K7 [plugin]
       68 GETTABLEKS                       R7 R8 K17 ["Unloading"]
       70 NEWCLOSURE                       R9 P1
       71 CAPTURE                          REF R5
       72 NAMECALL                         R7 R7 K18 ["Connect"]
       74 CALL                             R7 2 0
       75 MOVE                             R7 R6
       76 CALL                             R7 0 0
       77 CLOSEUPVALS                      R5
       78 RETURN                           R0 0
