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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K6 [require]
       14 GETIMPORT                        R1 K8 [script]
       16 GETTABLEKS                       R1 R1 K9 ["Parent"]
       18 GETTABLEKS                       R1 R1 K10 ["defineLuaFlags"]
       20 CALL                             R0 1 0
       21 GETIMPORT                        R0 K12 [plugin]
       23 JUMPIF                           R0 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R0 K8 [script]
       27 GETTABLEKS                       R0 R0 K9 ["Parent"]
       29 GETTABLEKS                       R0 R0 K9 ["Parent"]
       31 GETIMPORT                        R1 K6 [require]
       33 GETTABLEKS                       R2 R0 K13 ["Packages"]
       35 GETTABLEKS                       R2 R2 K14 ["TestLoader"]
       37 CALL                             R1 1 1
       38 GETTABLEKS                       R2 R1 K15 ["launch"]
       40 LOADK                            R3 K16 ["TextureViewer"]
       41 GETTABLEKS                       R4 R0 K17 ["Src"]
       43 CALL                             R2 2 0
       44 GETTABLEKS                       R2 R1 K18 ["isCli"]
       46 CALL                             R2 0 1
       47 JUMPIFNOT                        R2 ; [+1]
       48 RETURN                           R0 0
       49 GETIMPORT                        R2 K1 [game]
       51 LOADK                            R4 K19 ["EnableTextureViewer"]
       52 NAMECALL                         R2 R2 K20 ["GetFastFlag"]
       54 CALL                             R2 2 1
       55 JUMPIF                           R2 ; [+1]
       56 RETURN                           R0 0
       57 GETIMPORT                        R2 K6 [require]
       59 GETTABLEKS                       R3 R0 K13 ["Packages"]
       61 GETTABLEKS                       R3 R3 K21 ["React"]
       63 CALL                             R2 1 1
       64 GETIMPORT                        R3 K6 [require]
       66 GETTABLEKS                       R4 R0 K13 ["Packages"]
       68 GETTABLEKS                       R4 R4 K22 ["ReactRoblox"]
       70 CALL                             R3 1 1
       71 GETIMPORT                        R4 K6 [require]
       73 GETTABLEKS                       R5 R0 K17 ["Src"]
       75 GETTABLEKS                       R5 R5 K23 ["MainPlugin"]
       77 CALL                             R4 1 1
       78 LOADNIL                          R5
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          REF R5
       84 CAPTURE                          VAL R3
       85 GETIMPORT                        R7 K12 [plugin]
       87 GETTABLEKS                       R7 R7 K24 ["Unloading"]
       89 NEWCLOSURE                       R9 P1
       90 CAPTURE                          REF R5
       91 NAMECALL                         R7 R7 K25 ["Connect"]
       93 CALL                             R7 2 0
       94 MOVE                             R7 R6
       95 CALL                             R7 0 0
       96 CLOSEUPVALS                      R5
       97 RETURN                           R0 0
