PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["Destroy"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["React"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K1 [require]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["Packages"]
       13 GETTABLEKS                       R4 R5 K4 ["ReactRoblox"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K1 [require]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K5 ["Src"]
       21 GETTABLEKS                       R5 R6 K6 ["MainPlugin"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K7 ["createElement"]
       26 MOVE                             R6 R4
       27 DUPTABLE                         R7 K10 [{"Plugin", "PluginLoaderContext"}]
       28 SETTABLEKS                       R0 R7 K8 ["Plugin"]
       30 SETTABLEKS                       R1 R7 K9 ["PluginLoaderContext"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K13 [Instance.new]
       35 LOADK                            R7 K14 ["Frame"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R3 K15 ["createRoot"]
       39 MOVE                             R8 R6
       40 CALL                             R7 1 1
       41 MOVE                             R10 R5
       42 NAMECALL                         R8 R7 K16 ["render"]
       44 CALL                             R8 2 0
       45 GETIMPORT                        R8 K1 [require]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R11 R12 K17 ["Bin"]
       50 GETTABLEKS                       R10 R11 K18 ["Common"]
       52 GETTABLEKS                       R9 R10 K19 ["StudioNetworking"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R0 K20 ["Unloading"]
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 NAMECALL                         R9 R9 K21 ["Connect"]
       62 CALL                             R9 2 0
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
