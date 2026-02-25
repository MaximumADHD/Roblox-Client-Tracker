MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R2 R3 K10 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R5 K12 ["Flags"]
       29 GETTABLEKS                       R3 R4 K13 ["getFFlagDebugStudioRenderVisualizationModesInAsset"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R1 K14 ["launch"]
       34 LOADK                            R4 K2 ["VisualizationModes"]
       35 GETTABLEKS                       R5 R0 K11 ["Src"]
       37 CALL                             R3 2 0
       38 GETTABLEKS                       R3 R1 K15 ["isCli"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K17 [plugin]
       45 GETTABLEKS                       R4 R0 K18 ["Name"]
       47 SETTABLEKS                       R4 R3 K18 ["Name"]
       49 MOVE                             R3 R2
       50 CALL                             R3 0 1
       51 JUMPIF                           R3 ; [+13]
       52 GETIMPORT                        R3 K5 [require]
       54 GETTABLEKS                       R6 R0 K6 ["Bin"]
       56 GETTABLEKS                       R5 R6 K7 ["Common"]
       58 GETTABLEKS                       R4 R5 K19 ["renderStandalone"]
       60 CALL                             R3 1 1
       61 MOVE                             R4 R3
       62 GETIMPORT                        R5 K17 [plugin]
       64 CALL                             R4 1 0
       65 RETURN                           R0 0
