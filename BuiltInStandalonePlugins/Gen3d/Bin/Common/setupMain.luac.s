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
       26 GETIMPORT                        R5 K1 [require]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K5 ["Src"]
       31 GETTABLEKS                       R6 R6 K6 ["Standalone"]
       33 GETTABLEKS                       R6 R6 K8 ["SceneGenModel"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K9 ["tryGet"]
       39 CALL                             R6 0 1
       40 DUPTABLE                         R7 K11 [{"Texture"}]
       41 GETTABLEKS                       R8 R2 K12 ["createElement"]
       43 MOVE                             R9 R4
       44 DUPTABLE                         R10 K16 [{"Plugin", "PluginLoaderContext", "Networking"}]
       45 SETTABLEKS                       R0 R10 K13 ["Plugin"]
       47 SETTABLEKS                       R1 R10 K14 ["PluginLoaderContext"]
       49 SETTABLEKS                       R6 R10 K15 ["Networking"]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K10 ["Texture"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K17 ["getFFlagGen3dSceneGenSurface"]
       57 CALL                             R8 0 1
       58 JUMPIFNOT                        R8 ; [+13]
       59 GETTABLEKS                       R8 R2 K12 ["createElement"]
       61 MOVE                             R9 R5
       62 DUPTABLE                         R10 K16 [{"Plugin", "PluginLoaderContext", "Networking"}]
       63 SETTABLEKS                       R0 R10 K13 ["Plugin"]
       65 SETTABLEKS                       R1 R10 K14 ["PluginLoaderContext"]
       67 SETTABLEKS                       R6 R10 K15 ["Networking"]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K18 ["SceneGen"]
       72 GETTABLEKS                       R8 R2 K12 ["createElement"]
       74 GETTABLEKS                       R9 R2 K19 ["Fragment"]
       76 LOADNIL                          R10
       77 MOVE                             R11 R7
       78 CALL                             R8 3 1
       79 GETIMPORT                        R9 K22 [Instance.new]
       81 LOADK                            R10 K23 ["Frame"]
       82 CALL                             R9 1 1
       83 GETTABLEKS                       R10 R3 K24 ["createRoot"]
       85 MOVE                             R11 R9
       86 CALL                             R10 1 1
       87 MOVE                             R13 R8
       88 NAMECALL                         R11 R10 K25 ["render"]
       90 CALL                             R11 2 0
       91 GETTABLEKS                       R11 R0 K26 ["Unloading"]
       93 NEWCLOSURE                       R13 P0
       94 CAPTURE                          VAL R10
       95 NAMECALL                         R11 R11 K27 ["Connect"]
       97 CALL                             R11 2 0
       98 RETURN                           R0 0

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Bin"]
       20 GETTABLEKS                       R3 R3 K7 ["Common"]
       22 GETTABLEKS                       R3 R3 K9 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 1
