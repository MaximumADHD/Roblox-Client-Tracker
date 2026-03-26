PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R0 K0 ["Dark"]
        4 RETURN                           R0 1
        5 GETIMPORT                        R3 K2 [settings]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R2 R3 K3 ["Studio"]
       10 GETTABLEKS                       R1 R2 K4 ["Theme"]
       12 GETTABLEKS                       R0 R1 K5 ["Name"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["mockThemeChangedSignal"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+8]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["new"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K0 ["mockThemeChangedSignal"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K0 ["mockThemeChangedSignal"]
       18 RETURN                           R0 1
       19 GETIMPORT                        R2 K3 [settings]
       21 CALL                             R2 0 1
       22 GETTABLEKS                       R1 R2 K4 ["Studio"]
       24 GETTABLEKS                       R0 R1 K5 ["ThemeChanged"]
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R0 K0 [0.5]
        4 RETURN                           R0 1
        5 GETIMPORT                        R1 K2 [UserSettings]
        7 CALL                             R1 0 1
        8 LOADK                            R3 K3 ["UserGameSettings"]
        9 NAMECALL                         R1 R1 K4 ["GetService"]
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R0 R1 K5 ["MasterVolumeStudio"]
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["mockVolumeChangedSignal"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+8]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["new"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K0 ["mockVolumeChangedSignal"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K0 ["mockVolumeChangedSignal"]
       18 RETURN                           R0 1
       19 GETIMPORT                        R0 K3 [UserSettings]
       21 CALL                             R0 0 1
       22 LOADK                            R2 K4 ["UserGameSettings"]
       23 NAMECALL                         R0 R0 K5 ["GetService"]
       25 CALL                             R0 2 1
       26 LOADK                            R2 K6 ["MasterVolumeStudio"]
       27 NAMECALL                         R0 R0 K7 ["GetPropertyChangedSignal"]
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["isCli"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["MockSignal"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K11 [{"mockThemeChangedSignal", "mockVolumeChangedSignal"}]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K9 ["mockThemeChangedSignal"]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K10 ["mockVolumeChangedSignal"]
       28 DUPCLOSURE                       R4 K12 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R3 K13 ["getStudioThemeName"]
       32 DUPCLOSURE                       R4 K14 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K15 ["getStudioThemeChangedSignal"]
       38 DUPCLOSURE                       R4 K16 [PROTO_2]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R3 K17 ["getStudioVolumeLevel"]
       42 DUPCLOSURE                       R4 K18 [PROTO_3]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R4 R3 K19 ["getStudioVolumeChangedSignal"]
       48 RETURN                           R3 1
