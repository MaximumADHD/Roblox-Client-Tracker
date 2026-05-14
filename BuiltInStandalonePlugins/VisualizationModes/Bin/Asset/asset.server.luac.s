PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K2 [require]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["Src"]
        9 GETTABLEKS                       R2 R2 K4 ["Modes"]
       11 GETTABLEKS                       R2 R2 K5 ["StudioVisualizationModeProvider"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K2 [require]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["Src"]
       19 GETTABLEKS                       R3 R3 K6 ["Model"]
       21 GETTABLEKS                       R3 R3 K7 ["VisualizationModeCombinerClient"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K2 [require]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K3 ["Src"]
       29 GETTABLEKS                       R4 R4 K6 ["Model"]
       31 GETTABLEKS                       R4 R4 K8 ["Tracking"]
       33 GETTABLEKS                       R4 R4 K9 ["VisualizationModeServiceTracker"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K2 [require]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K3 ["Src"]
       41 GETTABLEKS                       R5 R5 K10 ["ModesAssetBridge"]
       43 GETTABLEKS                       R5 R5 K11 ["ConstraintScaleBridge"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K2 [require]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K3 ["Src"]
       51 GETTABLEKS                       R6 R6 K10 ["ModesAssetBridge"]
       53 GETTABLEKS                       R6 R6 K12 ["SelectionStyleBridge"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K2 [require]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K3 ["Src"]
       61 GETTABLEKS                       R7 R7 K10 ["ModesAssetBridge"]
       63 GETTABLEKS                       R7 R7 K13 ["CameraSpeedLockedBridge"]
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R9 R3 K0 ["new"]
       68 CALL                             R9 0 -1
       69 NAMECALL                         R7 R0 K14 ["add"]
       71 CALL                             R7 -1 1
       72 GETTABLEKS                       R10 R2 K0 ["new"]
       74 GETIMPORT                        R11 K16 [plugin]
       76 MOVE                             R12 R7
       77 CALL                             R10 2 -1
       78 NAMECALL                         R8 R0 K14 ["add"]
       80 CALL                             R8 -1 0
       81 GETTABLEKS                       R10 R1 K0 ["new"]
       83 GETIMPORT                        R11 K16 [plugin]
       85 CALL                             R10 1 -1
       86 NAMECALL                         R8 R0 K14 ["add"]
       88 CALL                             R8 -1 0
       89 GETTABLEKS                       R10 R4 K0 ["new"]
       91 GETIMPORT                        R11 K16 [plugin]
       93 GETIMPORT                        R12 K16 [plugin]
       95 LOADK                            R14 K17 ["ConstraintGizmoManager"]
       96 NAMECALL                         R12 R12 K18 ["GetPluginComponent"]
       98 CALL                             R12 2 -1
       99 CALL                             R10 -1 -1
      100 NAMECALL                         R8 R0 K14 ["add"]
      102 CALL                             R8 -1 0
      103 GETTABLEKS                       R10 R5 K0 ["new"]
      105 GETIMPORT                        R11 K16 [plugin]
      107 CALL                             R10 1 -1
      108 NAMECALL                         R8 R0 K14 ["add"]
      110 CALL                             R8 -1 0
      111 GETTABLEKS                       R10 R6 K0 ["new"]
      113 GETIMPORT                        R11 K16 [plugin]
      115 GETIMPORT                        R12 K20 [game]
      117 LOADK                            R14 K21 ["StudioCameraService"]
      118 NAMECALL                         R12 R12 K22 ["GetService"]
      120 CALL                             R12 2 -1
      121 CALL                             R10 -1 -1
      122 NAMECALL                         R8 R0 K14 ["add"]
      124 CALL                             R8 -1 0
      125 GETUPVAL                         R8 2
      126 SETTABLEKS                       R0 R8 K23 ["_mount"]
      128 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_mount"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["VisualizationModes"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Bin"]
       15 GETTABLEKS                       R2 R2 K9 ["Common"]
       17 GETTABLEKS                       R2 R2 K10 ["defineLuaFlags"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K7 [require]
       22 GETTABLEKS                       R2 R0 K11 ["Packages"]
       24 GETTABLEKS                       R2 R2 K12 ["TestLoader"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K7 [require]
       29 GETTABLEKS                       R3 R0 K13 ["Src"]
       31 GETTABLEKS                       R3 R3 K14 ["Flags"]
       33 GETTABLEKS                       R3 R3 K15 ["getFFlagDebugStudioRenderVisualizationModesInAsset"]
       35 CALL                             R2 1 1
       36 GETTABLEKS                       R3 R1 K16 ["launch"]
       38 LOADK                            R4 K4 ["VisualizationModes"]
       39 GETTABLEKS                       R5 R0 K13 ["Src"]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R3 R1 K17 ["isCli"]
       44 CALL                             R3 0 1
       45 JUMPIFNOT                        R3 ; [+1]
       46 RETURN                           R0 0
       47 GETIMPORT                        R3 K7 [require]
       49 GETTABLEKS                       R4 R0 K13 ["Src"]
       51 GETTABLEKS                       R4 R4 K18 ["Util"]
       53 GETTABLEKS                       R4 R4 K19 ["Maid"]
       55 CALL                             R3 1 1
       56 GETTABLEKS                       R4 R3 K20 ["new"]
       58 CALL                             R4 0 1
       59 DUPCLOSURE                       R5 K21 [PROTO_0]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R6 K22 [PROTO_1]
       64 CAPTURE                          VAL R4
       65 GETIMPORT                        R7 K1 [plugin]
       67 GETTABLEKS                       R7 R7 K23 ["Unloading"]
       69 MOVE                             R9 R6
       70 NAMECALL                         R7 R7 K24 ["Connect"]
       72 CALL                             R7 2 0
       73 MOVE                             R7 R5
       74 CALL                             R7 0 0
       75 MOVE                             R7 R2
       76 CALL                             R7 0 1
       77 JUMPIFNOT                        R7 ; [+13]
       78 GETIMPORT                        R7 K7 [require]
       80 GETTABLEKS                       R8 R0 K8 ["Bin"]
       82 GETTABLEKS                       R8 R8 K9 ["Common"]
       84 GETTABLEKS                       R8 R8 K25 ["renderStandalone"]
       86 CALL                             R7 1 1
       87 MOVE                             R8 R7
       88 GETIMPORT                        R9 K1 [plugin]
       90 CALL                             R8 1 0
       91 RETURN                           R0 0
