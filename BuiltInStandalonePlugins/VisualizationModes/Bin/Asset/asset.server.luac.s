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
       56 GETTABLEKS                       R8 R3 K0 ["new"]
       58 CALL                             R8 0 -1
       59 NAMECALL                         R6 R0 K13 ["add"]
       61 CALL                             R6 -1 1
       62 GETTABLEKS                       R9 R2 K0 ["new"]
       64 GETIMPORT                        R10 K15 [plugin]
       66 MOVE                             R11 R6
       67 CALL                             R9 2 -1
       68 NAMECALL                         R7 R0 K13 ["add"]
       70 CALL                             R7 -1 0
       71 GETTABLEKS                       R9 R1 K0 ["new"]
       73 GETIMPORT                        R10 K15 [plugin]
       75 CALL                             R9 1 -1
       76 NAMECALL                         R7 R0 K13 ["add"]
       78 CALL                             R7 -1 0
       79 GETTABLEKS                       R9 R4 K0 ["new"]
       81 GETIMPORT                        R10 K15 [plugin]
       83 GETIMPORT                        R11 K15 [plugin]
       85 LOADK                            R13 K16 ["ConstraintGizmoManager"]
       86 NAMECALL                         R11 R11 K17 ["GetPluginComponent"]
       88 CALL                             R11 2 -1
       89 CALL                             R9 -1 -1
       90 NAMECALL                         R7 R0 K13 ["add"]
       92 CALL                             R7 -1 0
       93 GETTABLEKS                       R9 R5 K0 ["new"]
       95 GETIMPORT                        R10 K15 [plugin]
       97 CALL                             R9 1 -1
       98 NAMECALL                         R7 R0 K13 ["add"]
      100 CALL                             R7 -1 0
      101 GETUPVAL                         R7 2
      102 CALL                             R7 0 1
      103 JUMPIF                           R7 ; [+24]
      104 GETIMPORT                        R7 K2 [require]
      106 GETUPVAL                         R8 1
      107 GETTABLEKS                       R8 R8 K3 ["Src"]
      109 GETTABLEKS                       R8 R8 K10 ["ModesAssetBridge"]
      111 GETTABLEKS                       R8 R8 K18 ["CameraSpeedLockedBridge"]
      113 CALL                             R7 1 1
      114 GETTABLEKS                       R10 R7 K0 ["new"]
      116 GETIMPORT                        R11 K15 [plugin]
      118 GETIMPORT                        R12 K20 [game]
      120 LOADK                            R14 K21 ["StudioCameraService"]
      121 NAMECALL                         R12 R12 K22 ["GetService"]
      123 CALL                             R12 2 -1
      124 CALL                             R10 -1 -1
      125 NAMECALL                         R8 R0 K13 ["add"]
      127 CALL                             R8 -1 0
      128 GETUPVAL                         R7 3
      129 SETTABLEKS                       R0 R7 K23 ["_mount"]
      131 RETURN                           R0 0

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
       22 GETTABLEKS                       R2 R0 K11 ["Src"]
       24 GETTABLEKS                       R2 R2 K12 ["Flags"]
       26 GETTABLEKS                       R2 R2 K13 ["getEngineFeatureNewCameraControls_BetaUpdate"]
       28 CALL                             R1 1 1
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K14 ["Packages"]
       33 GETTABLEKS                       R3 R3 K15 ["TestLoader"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K7 [require]
       38 GETTABLEKS                       R4 R0 K11 ["Src"]
       40 GETTABLEKS                       R4 R4 K12 ["Flags"]
       42 GETTABLEKS                       R4 R4 K16 ["getFFlagDebugStudioRenderVisualizationModesInAsset"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R4 R2 K17 ["launch"]
       47 LOADK                            R5 K4 ["VisualizationModes"]
       48 GETTABLEKS                       R6 R0 K11 ["Src"]
       50 CALL                             R4 2 0
       51 GETTABLEKS                       R4 R2 K18 ["isCli"]
       53 CALL                             R4 0 1
       54 JUMPIFNOT                        R4 ; [+1]
       55 RETURN                           R0 0
       56 GETIMPORT                        R4 K7 [require]
       58 GETTABLEKS                       R5 R0 K11 ["Src"]
       60 GETTABLEKS                       R5 R5 K19 ["Util"]
       62 GETTABLEKS                       R5 R5 K20 ["Maid"]
       64 CALL                             R4 1 1
       65 GETTABLEKS                       R5 R4 K21 ["new"]
       67 CALL                             R5 0 1
       68 DUPCLOSURE                       R6 K22 [PROTO_0]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R7 K23 [PROTO_1]
       74 CAPTURE                          VAL R5
       75 GETIMPORT                        R8 K1 [plugin]
       77 GETTABLEKS                       R8 R8 K24 ["Unloading"]
       79 MOVE                             R10 R7
       80 NAMECALL                         R8 R8 K25 ["Connect"]
       82 CALL                             R8 2 0
       83 MOVE                             R8 R6
       84 CALL                             R8 0 0
       85 MOVE                             R8 R3
       86 CALL                             R8 0 1
       87 JUMPIFNOT                        R8 ; [+13]
       88 GETIMPORT                        R8 K7 [require]
       90 GETTABLEKS                       R9 R0 K8 ["Bin"]
       92 GETTABLEKS                       R9 R9 K9 ["Common"]
       94 GETTABLEKS                       R9 R9 K26 ["renderStandalone"]
       96 CALL                             R8 1 1
       97 MOVE                             R9 R8
       98 GETIMPORT                        R10 K1 [plugin]
      100 CALL                             R9 1 0
      101 RETURN                           R0 0
