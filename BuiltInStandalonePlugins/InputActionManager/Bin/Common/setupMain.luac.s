PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["Destroy"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

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
       27 DUPTABLE                         R8 K11 [{"FilterInstances", "Plugin", "PluginLoaderContext"}]
       28 GETUPVAL                         R10 1
       29 CALL                             R10 0 1
       30 JUMPIFNOT                        R10 ; [+2]
       31 MOVE                             R9 R2
       32 JUMP                             ; [+1]
       33 LOADNIL                          R9
       34 SETTABLEKS                       R9 R8 K8 ["FilterInstances"]
       36 SETTABLEKS                       R0 R8 K9 ["Plugin"]
       38 SETTABLEKS                       R1 R8 K10 ["PluginLoaderContext"]
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K14 [Instance.new]
       43 LOADK                            R8 K15 ["Frame"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R4 K16 ["createRoot"]
       47 MOVE                             R9 R7
       48 CALL                             R8 1 1
       49 MOVE                             R11 R6
       50 NAMECALL                         R9 R8 K17 ["render"]
       52 CALL                             R9 2 0
       53 GETIMPORT                        R9 K1 [require]
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K18 ["Bin"]
       58 GETTABLEKS                       R10 R10 K19 ["Common"]
       60 GETTABLEKS                       R10 R10 K20 ["StudioNetworking"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R0 K21 ["Unloading"]
       65 NEWCLOSURE                       R12 P0
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 NAMECALL                         R10 R10 K22 ["Connect"]
       70 CALL                             R10 2 0
       71 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagIAMOpenFromProperties"]
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
