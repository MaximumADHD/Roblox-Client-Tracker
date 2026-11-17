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

PROTO_1:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 GETIMPORT                        R3 K4 [require]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K5 ["Packages"]
        8 GETTABLEKS                       R4 R4 K6 ["React"]
       10 CALL                             R3 1 1
       11 GETIMPORT                        R4 K4 [require]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["Packages"]
       16 GETTABLEKS                       R5 R5 K7 ["ReactRoblox"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K8 ["Src"]
       24 GETTABLEKS                       R6 R6 K9 ["MainPlugin"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R3 K10 ["createElement"]
       29 MOVE                             R7 R5
       30 DUPTABLE                         R8 K14 [{"Plugin", "PluginLoaderContext", "LoadStartTimestamp"}]
       31 SETTABLEKS                       R0 R8 K11 ["Plugin"]
       33 SETTABLEKS                       R1 R8 K12 ["PluginLoaderContext"]
       35 SETTABLEKS                       R2 R8 K13 ["LoadStartTimestamp"]
       37 CALL                             R6 2 1
       38 GETIMPORT                        R7 K17 [Instance.new]
       40 LOADK                            R8 K18 ["Frame"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R4 K19 ["createRoot"]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 1
       46 MOVE                             R11 R6
       47 NAMECALL                         R9 R8 K20 ["render"]
       49 CALL                             R9 2 0
       50 GETTABLEKS                       R9 R0 K21 ["Unloading"]
       52 NEWCLOSURE                       R11 P0
       53 CAPTURE                          REF R8
       54 NAMECALL                         R9 R9 K22 ["Connect"]
       56 CALL                             R9 2 0
       57 CLOSEUPVALS                      R8
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 DUPCLOSURE                       R1 K3 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
