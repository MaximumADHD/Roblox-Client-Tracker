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
       16 GETIMPORT                        R4 K1 [require]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K5 ["Src"]
       21 GETTABLEKS                       R5 R5 K6 ["Standalone"]
       23 GETTABLEKS                       R5 R5 K7 ["StandaloneModel"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R2 K8 ["createElement"]
       28 MOVE                             R6 R4
       29 DUPTABLE                         R7 K12 [{"Plugin", "PluginLoaderContext", "Networking"}]
       30 SETTABLEKS                       R0 R7 K9 ["Plugin"]
       32 SETTABLEKS                       R1 R7 K10 ["PluginLoaderContext"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K13 ["tryGet"]
       37 CALL                             R8 0 1
       38 SETTABLEKS                       R8 R7 K11 ["Networking"]
       40 CALL                             R5 2 1
       41 GETIMPORT                        R6 K16 [Instance.new]
       43 LOADK                            R7 K17 ["Frame"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R3 K18 ["createRoot"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 MOVE                             R10 R5
       50 NAMECALL                         R8 R7 K19 ["render"]
       52 CALL                             R8 2 0
       53 GETTABLEKS                       R8 R0 K20 ["Unloading"]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          VAL R7
       57 NAMECALL                         R8 R8 K21 ["Connect"]
       59 CALL                             R8 2 0
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["StudioNetworking"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1
