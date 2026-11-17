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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K7 [plugin]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R0 K3 [script]
       16 GETTABLEKS                       R0 R0 K4 ["Parent"]
       18 GETTABLEKS                       R0 R0 K4 ["Parent"]
       20 GETIMPORT                        R1 K1 [require]
       22 GETTABLEKS                       R2 R0 K8 ["Packages"]
       24 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K10 ["launch"]
       29 LOADK                            R3 K11 ["PathEditor"]
       30 GETTABLEKS                       R4 R0 K12 ["Src"]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R1 K13 ["isCli"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K1 [require]
       40 GETTABLEKS                       R3 R0 K12 ["Src"]
       42 GETTABLEKS                       R3 R3 K14 ["Util"]
       44 GETTABLEKS                       R3 R3 K15 ["shouldPluginRun"]
       46 CALL                             R2 1 1
       47 MOVE                             R3 R2
       48 CALL                             R3 0 1
       49 JUMPIF                           R3 ; [+1]
       50 RETURN                           R0 0
       51 GETIMPORT                        R3 K1 [require]
       53 GETTABLEKS                       R4 R0 K8 ["Packages"]
       55 GETTABLEKS                       R4 R4 K16 ["React"]
       57 CALL                             R3 1 1
       58 GETIMPORT                        R4 K1 [require]
       60 GETTABLEKS                       R5 R0 K8 ["Packages"]
       62 GETTABLEKS                       R5 R5 K17 ["ReactRoblox"]
       64 CALL                             R4 1 1
       65 GETIMPORT                        R5 K1 [require]
       67 GETTABLEKS                       R6 R0 K12 ["Src"]
       69 GETTABLEKS                       R6 R6 K18 ["MainPlugin"]
       71 CALL                             R5 1 1
       72 LOADNIL                          R6
       73 NEWCLOSURE                       R7 P0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          REF R6
       78 CAPTURE                          VAL R4
       79 GETIMPORT                        R8 K7 [plugin]
       81 GETTABLEKS                       R8 R8 K19 ["Unloading"]
       83 NEWCLOSURE                       R10 P1
       84 CAPTURE                          REF R6
       85 NAMECALL                         R8 R8 K20 ["Connect"]
       87 CALL                             R8 2 0
       88 MOVE                             R8 R7
       89 CALL                             R8 0 0
       90 CLOSEUPVALS                      R6
       91 RETURN                           R0 0
