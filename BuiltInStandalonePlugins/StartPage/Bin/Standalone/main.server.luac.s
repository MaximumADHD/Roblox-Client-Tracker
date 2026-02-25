PROTO_0:
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["SharedFlags"]
       20 GETTABLEKS                       R3 R4 K10 ["getFFlagLuaStartPageUnloadPluginUi"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 GETTABLEKS                       R3 R1 K11 ["launch"]
       26 LOADK                            R4 K2 ["StartPage"]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 CALL                             R3 2 0
       30 GETTABLEKS                       R3 R1 K12 ["isCli"]
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R3 K5 [require]
       37 GETTABLEKS                       R5 R0 K6 ["Packages"]
       39 GETTABLEKS                       R4 R5 K13 ["React"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Packages"]
       46 GETTABLEKS                       R5 R6 K14 ["ReactRoblox"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R7 R0 K8 ["Src"]
       53 GETTABLEKS                       R6 R7 K15 ["MainPlugin"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R3 K16 ["createElement"]
       58 MOVE                             R7 R5
       59 DUPTABLE                         R8 K18 [{"Plugin"}]
       60 GETIMPORT                        R9 K20 [plugin]
       62 SETTABLEKS                       R9 R8 K17 ["Plugin"]
       64 CALL                             R6 2 1
       65 GETIMPORT                        R7 K23 [Instance.new]
       67 LOADK                            R8 K24 ["Frame"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R8 R4 K25 ["createRoot"]
       71 MOVE                             R9 R7
       72 CALL                             R8 1 1
       73 MOVE                             R11 R6
       74 NAMECALL                         R9 R8 K26 ["render"]
       76 CALL                             R9 2 0
       77 JUMPIFNOT                        R2 ; [+9]
       78 GETIMPORT                        R10 K20 [plugin]
       80 GETTABLEKS                       R9 R10 K27 ["Unloading"]
       82 NEWCLOSURE                       R11 P0
       83 CAPTURE                          REF R8
       84 NAMECALL                         R9 R9 K28 ["Connect"]
       86 CALL                             R9 2 0
       87 CLOSEUPVALS                      R8
       88 RETURN                           R0 0
