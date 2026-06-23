PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["Packages"]
        5 GETTABLEKS                       R4 R4 K3 ["React"]
        7 CALL                             R3 1 1
        8 GETIMPORT                        R4 K1 [require]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["Packages"]
       13 GETTABLEKS                       R5 R5 K4 ["ReactRoblox"]
       15 CALL                             R4 1 1
       16 GETIMPORT                        R5 K1 [require]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K5 ["Src"]
       21 GETTABLEKS                       R6 R6 K6 ["MainPlugin"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R3 K7 ["createElement"]
       26 MOVE                             R7 R5
       27 DUPTABLE                         R8 K11 [{"Plugin", "PluginLoaderContext", "Args"}]
       28 SETTABLEKS                       R0 R8 K8 ["Plugin"]
       30 SETTABLEKS                       R1 R8 K9 ["PluginLoaderContext"]
       32 SETTABLEKS                       R2 R8 K10 ["Args"]
       34 CALL                             R6 2 1
       35 GETIMPORT                        R7 K14 [Instance.new]
       37 LOADK                            R8 K15 ["Frame"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R4 K16 ["createRoot"]
       41 MOVE                             R9 R7
       42 CALL                             R8 1 1
       43 MOVE                             R11 R6
       44 NAMECALL                         R9 R8 K17 ["render"]
       46 CALL                             R9 2 0
       47 GETTABLEKS                       R9 R0 K18 ["Unloading"]
       49 NEWCLOSURE                       R11 P0
       50 CAPTURE                          VAL R8
       51 NAMECALL                         R9 R9 K19 ["Connect"]
       53 CALL                             R9 2 0
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
