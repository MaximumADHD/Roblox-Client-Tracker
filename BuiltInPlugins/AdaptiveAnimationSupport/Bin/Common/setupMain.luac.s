PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K1 ["AdaptiveAnimationSupportRoot"]
        8 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+3]
       12 NAMECALL                         R1 R0 K3 ["Destroy"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

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
       33 GETIMPORT                        R6 K12 [game]
       35 LOADK                            R8 K13 ["CoreGui"]
       36 NAMECALL                         R6 R6 K14 ["GetService"]
       38 CALL                             R6 2 1
       39 LOADK                            R9 K15 ["AdaptiveAnimationSupportRoot"]
       40 NAMECALL                         R7 R6 K16 ["FindFirstChild"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+3]
       44 NAMECALL                         R8 R7 K17 ["Destroy"]
       46 CALL                             R8 1 0
       47 GETIMPORT                        R8 K20 [Instance.new]
       49 LOADK                            R9 K21 ["Folder"]
       50 CALL                             R8 1 1
       51 LOADK                            R9 K15 ["AdaptiveAnimationSupportRoot"]
       52 SETTABLEKS                       R9 R8 K22 ["Name"]
       54 SETTABLEKS                       R6 R8 K23 ["Parent"]
       56 GETTABLEKS                       R9 R3 K24 ["createRoot"]
       58 MOVE                             R10 R8
       59 CALL                             R9 1 1
       60 MOVE                             R12 R5
       61 NAMECALL                         R10 R9 K25 ["render"]
       63 CALL                             R10 2 0
       64 GETTABLEKS                       R10 R0 K26 ["Unloading"]
       66 NEWCLOSURE                       R12 P0
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 NAMECALL                         R10 R10 K27 ["Connect"]
       71 CALL                             R10 2 0
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
