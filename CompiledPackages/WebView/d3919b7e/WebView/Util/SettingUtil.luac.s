PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R0 K0 ["Dark"]
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K2 [settings]
        7 CALL                             R0 0 1
        8 GETTABLEKS                       R0 R0 K3 ["Studio"]
       10 GETTABLEKS                       R0 R0 K4 ["Theme"]
       12 GETTABLEKS                       R0 R0 K5 ["Name"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["mockThemeChangedSignal"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+8]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["new"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K0 ["mockThemeChangedSignal"]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K0 ["mockThemeChangedSignal"]
       18 RETURN                           R0 1
       19 GETIMPORT                        R0 K3 [settings]
       21 CALL                             R0 0 1
       22 GETTABLEKS                       R0 R0 K4 ["Studio"]
       24 GETTABLEKS                       R0 R0 K5 ["ThemeChanged"]
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R0 K0 [0.5]
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K2 [UserSettings]
        7 CALL                             R0 0 1
        8 LOADK                            R2 K3 ["UserGameSettings"]
        9 NAMECALL                         R0 R0 K4 ["GetService"]
       11 CALL                             R0 2 1
       12 GETTABLEKS                       R0 R0 K5 ["MasterVolumeStudio"]
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["mockVolumeChangedSignal"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+8]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["new"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K0 ["mockVolumeChangedSignal"]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K0 ["mockVolumeChangedSignal"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["isCli"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["MockSignal"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K12 [{["mockThemeChangedSignal"] = , ["mockVolumeChangedSignal"] = }]
       22 DUPCLOSURE                       R4 K13 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R4 R3 K14 ["getStudioThemeName"]
       26 DUPCLOSURE                       R4 K15 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K16 ["getStudioThemeChangedSignal"]
       32 DUPCLOSURE                       R4 K17 [PROTO_2]
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K18 ["getStudioVolumeLevel"]
       36 DUPCLOSURE                       R4 K19 [PROTO_3]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R4 R3 K20 ["getStudioVolumeChangedSignal"]
       42 RETURN                           R3 1
