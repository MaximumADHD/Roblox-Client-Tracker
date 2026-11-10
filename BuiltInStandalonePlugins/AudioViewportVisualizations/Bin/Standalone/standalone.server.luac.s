PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Resources"]
        7 GETTABLEKS                       R1 R1 K4 ["Telemetry"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K5 ["init"]
       12 GETIMPORT                        R1 K7 [plugin]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K4 [warn]
        8 LOADK                            R3 K5 ["AudioViewportVisualizations telemetry failed to start: %*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K6 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableAudioViewportVisualizations"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R3 R0 K10 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["isCli"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETIMPORT                        R3 K14 [error]
       34 LOADK                            R4 K15 ["roblox-cli should not be loading standalone plugins"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETIMPORT                        R3 K5 [require]
       39 GETTABLEKS                       R4 R0 K16 ["Src"]
       41 GETTABLEKS                       R4 R4 K17 ["Util"]
       43 GETTABLEKS                       R4 R4 K18 ["DMCoordinator"]
       45 CALL                             R3 1 1
       46 GETTABLEKS                       R4 R3 K19 ["Standalone"]
       48 GETTABLEKS                       R4 R4 K20 ["init"]
       50 GETIMPORT                        R5 K22 [plugin]
       52 CALL                             R4 1 0
       53 GETIMPORT                        R4 K5 [require]
       55 GETTABLEKS                       R5 R0 K6 ["Bin"]
       57 GETTABLEKS                       R5 R5 K7 ["Common"]
       59 GETTABLEKS                       R5 R5 K23 ["pluginType"]
       61 CALL                             R4 1 1
       62 GETTABLEKS                       R5 R4 K24 ["get"]
       64 CALL                             R5 0 1
       65 GETTABLEKS                       R6 R4 K19 ["Standalone"]
       67 JUMPIFEQ                         R5 R6 ; [+2]
       69 RETURN                           R0 0
       70 GETIMPORT                        R5 K5 [require]
       72 GETTABLEKS                       R6 R0 K6 ["Bin"]
       74 GETTABLEKS                       R6 R6 K7 ["Common"]
       76 GETTABLEKS                       R6 R6 K25 ["setup"]
       78 CALL                             R5 1 1
       79 DUPCLOSURE                       R6 K26 [PROTO_1]
       80 CAPTURE                          VAL R0
       81 GETTABLEKS                       R7 R1 K27 ["getFFlagEnableAudioViewportVisualizationsTelemetry"]
       83 CALL                             R7 0 1
       84 JUMPIFNOT                        R7 ; [+8]
       85 MOVE                             R7 R5
       86 GETIMPORT                        R8 K22 [plugin]
       88 DUPTABLE                         R9 K29 [{"onActionsCreated"}]
       89 SETTABLEKS                       R6 R9 K28 ["onActionsCreated"]
       91 CALL                             R7 2 0
       92 RETURN                           R0 0
       93 MOVE                             R7 R5
       94 GETIMPORT                        R8 K22 [plugin]
       96 CALL                             R7 1 0
       97 RETURN                           R0 0
