PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Packages"]
        5 GETTABLEKS                       R3 R3 K3 ["React"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K1 [require]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Packages"]
       13 GETTABLEKS                       R4 R4 K4 ["ReactRoblox"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K6 [game]
       18 LOADK                            R6 K7 ["DebugExplorerProfileEverything"]
       19 LOADB                            R7 0
       20 NAMECALL                         R4 R4 K8 ["DefineFastFlag"]
       22 CALL                             R4 3 1
       23 GETIMPORT                        R5 K1 [require]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K9 ["Src"]
       28 GETTABLEKS                       R6 R6 K10 ["Util"]
       30 GETTABLEKS                       R6 R6 K11 ["profileEverythingInReact"]
       32 CALL                             R5 1 1
       33 JUMPIFNOT                        R4 ; [+2]
       34 MOVE                             R6 R5
       35 CALL                             R6 0 0
       36 GETIMPORT                        R6 K1 [require]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K9 ["Src"]
       41 GETTABLEKS                       R7 R7 K12 ["MainPlugin"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R2 K13 ["createElement"]
       46 MOVE                             R8 R6
       47 DUPTABLE                         R9 K16 [{"Plugin", "PluginLoaderContext"}]
       48 SETTABLEKS                       R0 R9 K14 ["Plugin"]
       50 SETTABLEKS                       R1 R9 K15 ["PluginLoaderContext"]
       52 CALL                             R7 2 1
       53 GETIMPORT                        R8 K19 [Instance.new]
       55 LOADK                            R9 K20 ["Frame"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R3 K21 ["createRoot"]
       59 MOVE                             R10 R8
       60 CALL                             R9 1 1
       61 MOVE                             R12 R7
       62 NAMECALL                         R10 R9 K22 ["render"]
       64 CALL                             R10 2 0
       65 GETTABLEKS                       R10 R0 K23 ["Unloading"]
       67 NEWCLOSURE                       R12 P0
       68 CAPTURE                          VAL R9
       69 NAMECALL                         R10 R10 K24 ["Connect"]
       71 CALL                             R10 2 0
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
