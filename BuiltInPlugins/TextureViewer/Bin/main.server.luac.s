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
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Packages"]
       20 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K8 ["launch"]
       25 LOADK                            R3 K9 ["TextureViewer"]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K11 ["isCli"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R2 R1 K12 ["hasInternalPermission"]
       36 CALL                             R2 0 1
       37 JUMPIF                           R2 ; [+1]
       38 RETURN                           R0 0
       39 GETIMPORT                        R2 K14 [plugin]
       41 JUMPIF                           R2 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R2 K16 [game]
       45 LOADK                            R4 K17 ["EnableTextureViewer"]
       46 NAMECALL                         R2 R2 K18 ["GetFastFlag"]
       48 CALL                             R2 2 1
       49 JUMPIF                           R2 ; [+1]
       50 RETURN                           R0 0
       51 GETIMPORT                        R2 K1 [require]
       53 GETTABLEKS                       R3 R0 K6 ["Packages"]
       55 GETTABLEKS                       R3 R3 K19 ["React"]
       57 CALL                             R2 1 1
       58 GETIMPORT                        R3 K1 [require]
       60 GETTABLEKS                       R4 R0 K6 ["Packages"]
       62 GETTABLEKS                       R4 R4 K20 ["ReactRoblox"]
       64 CALL                             R3 1 1
       65 GETIMPORT                        R4 K1 [require]
       67 GETTABLEKS                       R5 R0 K10 ["Src"]
       69 GETTABLEKS                       R5 R5 K21 ["MainPlugin"]
       71 CALL                             R4 1 1
       72 LOADNIL                          R5
       73 NEWCLOSURE                       R6 P0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          REF R5
       78 CAPTURE                          VAL R3
       79 GETIMPORT                        R7 K14 [plugin]
       81 GETTABLEKS                       R7 R7 K22 ["Unloading"]
       83 NEWCLOSURE                       R9 P1
       84 CAPTURE                          REF R5
       85 NAMECALL                         R7 R7 K23 ["Connect"]
       87 CALL                             R7 2 0
       88 MOVE                             R7 R6
       89 CALL                             R7 0 0
       90 CLOSEUPVALS                      R5
       91 RETURN                           R0 0
