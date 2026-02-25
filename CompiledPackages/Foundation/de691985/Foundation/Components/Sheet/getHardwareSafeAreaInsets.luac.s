PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R0 2
        6 GETIMPORT                        R1 K2 [Instance.new]
        8 LOADK                            R2 K3 ["ScreenGui"]
        9 CALL                             R1 1 1
       10 LOADK                            R2 K4 ["_FullscreenTestGui"]
       11 SETTABLEKS                       R2 R1 K5 ["Name"]
       13 SETTABLEKS                       R0 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K10 [Enum.ScreenInsets.None]
       17 SETTABLEKS                       R2 R1 K8 ["ScreenInsets"]
       19 GETIMPORT                        R2 K2 [Instance.new]
       21 LOADK                            R3 K3 ["ScreenGui"]
       22 CALL                             R2 1 1
       23 LOADK                            R3 K11 ["_DeviceTestGui"]
       24 SETTABLEKS                       R3 R2 K5 ["Name"]
       26 SETTABLEKS                       R0 R2 K6 ["Parent"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R4 R5 K12 ["FoundationOverlayLuaAppInsetsFix"]
       31 JUMPIFNOT                        R4 ; [+3]
       32 GETIMPORT                        R3 K14 [Enum.ScreenInsets.CoreUISafeInsets]
       34 JUMP                             ; [+2]
       35 GETIMPORT                        R3 K16 [Enum.ScreenInsets.DeviceSafeInsets]
       37 SETTABLEKS                       R3 R2 K8 ["ScreenInsets"]
       39 GETTABLEKS                       R4 R2 K17 ["AbsolutePosition"]
       41 GETTABLEKS                       R5 R1 K17 ["AbsolutePosition"]
       43 SUB                              R3 R4 R5
       44 GETTABLEKS                       R6 R1 K17 ["AbsolutePosition"]
       46 GETTABLEKS                       R7 R1 K18 ["AbsoluteSize"]
       48 ADD                              R5 R6 R7
       49 GETTABLEKS                       R7 R2 K17 ["AbsolutePosition"]
       51 GETTABLEKS                       R8 R2 K18 ["AbsoluteSize"]
       53 ADD                              R6 R7 R8
       54 SUB                              R4 R5 R6
       55 DUPTABLE                         R5 K23 [{"left", "top", "right", "bottom"}]
       56 GETTABLEKS                       R6 R3 K24 ["X"]
       58 SETTABLEKS                       R6 R5 K19 ["left"]
       60 GETTABLEKS                       R6 R3 K25 ["Y"]
       62 SETTABLEKS                       R6 R5 K20 ["top"]
       64 GETTABLEKS                       R6 R4 K24 ["X"]
       66 SETTABLEKS                       R6 R5 K21 ["right"]
       68 GETTABLEKS                       R6 R4 K25 ["Y"]
       70 SETTABLEKS                       R6 R5 K22 ["bottom"]
       72 LOADNIL                          R6
       73 SETTABLEKS                       R6 R1 K6 ["Parent"]
       75 LOADNIL                          R6
       76 SETTABLEKS                       R6 R2 K6 ["Parent"]
       78 NAMECALL                         R6 R1 K26 ["Destroy"]
       80 CALL                             R6 1 0
       81 NAMECALL                         R6 R2 K26 ["Destroy"]
       83 CALL                             R6 1 0
       84 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Utility"]
       18 GETTABLEKS                       R3 R4 K8 ["Wrappers"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Services"]
       23 GETTABLEKS                       R3 R4 K10 ["CoreGui"]
       25 GETTABLEKS                       R5 R2 K9 ["Services"]
       27 GETTABLEKS                       R4 R5 K11 ["RunService"]
       29 GETTABLEKS                       R6 R2 K9 ["Services"]
       31 GETTABLEKS                       R5 R6 K12 ["Players"]
       33 GETTABLEKS                       R7 R5 K13 ["LocalPlayer"]
       35 JUMPIFNOT                        R7 ; [+12]
       36 NAMECALL                         R7 R4 K14 ["IsRunning"]
       38 CALL                             R7 1 1
       39 JUMPIFNOT                        R7 ; [+8]
       40 GETTABLEKS                       R6 R5 K13 ["LocalPlayer"]
       42 LOADK                            R8 K15 ["PlayerGui"]
       43 LOADN                            R9 3
       44 NAMECALL                         R6 R6 K16 ["WaitForChild"]
       46 CALL                             R6 3 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R6
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Utility"]
       53 GETTABLEKS                       R8 R9 K17 ["isPluginSecurity"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K18 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R1
       61 RETURN                           R8 1
