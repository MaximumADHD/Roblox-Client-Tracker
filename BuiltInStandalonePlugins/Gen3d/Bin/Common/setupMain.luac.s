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
       36 GETIMPORT                        R6 K1 [require]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K5 ["Src"]
       41 GETTABLEKS                       R7 R7 K6 ["Standalone"]
       43 GETTABLEKS                       R7 R7 K9 ["MeshGenModel"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K10 ["tryGet"]
       49 CALL                             R7 0 1
       50 DUPTABLE                         R8 K12 [{"Texture"}]
       51 GETTABLEKS                       R9 R2 K13 ["createElement"]
       53 MOVE                             R10 R4
       54 DUPTABLE                         R11 K17 [{"Plugin", "PluginLoaderContext", "Networking"}]
       55 SETTABLEKS                       R0 R11 K14 ["Plugin"]
       57 SETTABLEKS                       R1 R11 K15 ["PluginLoaderContext"]
       59 SETTABLEKS                       R7 R11 K16 ["Networking"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K11 ["Texture"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K18 ["getFFlagGen3dSceneGenSurface"]
       67 CALL                             R9 0 1
       68 JUMPIFNOT                        R9 ; [+13]
       69 GETTABLEKS                       R9 R2 K13 ["createElement"]
       71 MOVE                             R10 R5
       72 DUPTABLE                         R11 K17 [{"Plugin", "PluginLoaderContext", "Networking"}]
       73 SETTABLEKS                       R0 R11 K14 ["Plugin"]
       75 SETTABLEKS                       R1 R11 K15 ["PluginLoaderContext"]
       77 SETTABLEKS                       R7 R11 K16 ["Networking"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K19 ["SceneGen"]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K20 ["getFFlagGen3dMeshGen"]
       85 CALL                             R9 0 1
       86 JUMPIFNOT                        R9 ; [+11]
       87 GETTABLEKS                       R9 R2 K13 ["createElement"]
       89 MOVE                             R10 R6
       90 DUPTABLE                         R11 K21 [{"Plugin", "Networking"}]
       91 SETTABLEKS                       R0 R11 K14 ["Plugin"]
       93 SETTABLEKS                       R7 R11 K16 ["Networking"]
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K22 ["MeshGen"]
       98 GETTABLEKS                       R9 R2 K13 ["createElement"]
      100 GETTABLEKS                       R10 R2 K23 ["Fragment"]
      102 LOADNIL                          R11
      103 MOVE                             R12 R8
      104 CALL                             R9 3 1
      105 GETIMPORT                        R10 K26 [Instance.new]
      107 LOADK                            R11 K27 ["Frame"]
      108 CALL                             R10 1 1
      109 GETTABLEKS                       R11 R3 K28 ["createRoot"]
      111 MOVE                             R12 R10
      112 CALL                             R11 1 1
      113 MOVE                             R14 R9
      114 NAMECALL                         R12 R11 K29 ["render"]
      116 CALL                             R12 2 0
      117 GETTABLEKS                       R12 R0 K30 ["Unloading"]
      119 NEWCLOSURE                       R14 P0
      120 CAPTURE                          VAL R11
      121 NAMECALL                         R12 R12 K31 ["Connect"]
      123 CALL                             R12 2 0
      124 RETURN                           R0 0

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
