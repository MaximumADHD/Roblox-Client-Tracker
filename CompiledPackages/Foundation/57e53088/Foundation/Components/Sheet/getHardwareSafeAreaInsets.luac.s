PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationUseGetInsetArea"]
        3 JUMPIFNOT                        R0 ; [+58]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K4 [Enum.ScreenInsets.DeviceSafeInsets]
        7 NAMECALL                         R0 R0 K5 ["GetInsetArea"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 1
       11 GETIMPORT                        R3 K7 [Enum.ScreenInsets.None]
       13 NAMECALL                         R1 R1 K5 ["GetInsetArea"]
       15 CALL                             R1 2 1
       16 DUPTABLE                         R2 K12 [{"left", "top", "right", "bottom"}]
       17 GETTABLEKS                       R5 R0 K13 ["Min"]
       19 GETTABLEKS                       R4 R5 K14 ["X"]
       21 GETTABLEKS                       R6 R1 K13 ["Min"]
       23 GETTABLEKS                       R5 R6 K14 ["X"]
       25 SUB                              R3 R4 R5
       26 SETTABLEKS                       R3 R2 K8 ["left"]
       28 GETTABLEKS                       R5 R0 K13 ["Min"]
       30 GETTABLEKS                       R4 R5 K15 ["Y"]
       32 GETTABLEKS                       R6 R1 K13 ["Min"]
       34 GETTABLEKS                       R5 R6 K15 ["Y"]
       36 SUB                              R3 R4 R5
       37 SETTABLEKS                       R3 R2 K9 ["top"]
       39 GETTABLEKS                       R5 R1 K16 ["Max"]
       41 GETTABLEKS                       R4 R5 K14 ["X"]
       43 GETTABLEKS                       R6 R0 K16 ["Max"]
       45 GETTABLEKS                       R5 R6 K14 ["X"]
       47 SUB                              R3 R4 R5
       48 SETTABLEKS                       R3 R2 K10 ["right"]
       50 GETTABLEKS                       R5 R1 K16 ["Max"]
       52 GETTABLEKS                       R4 R5 K15 ["Y"]
       54 GETTABLEKS                       R6 R0 K16 ["Max"]
       56 GETTABLEKS                       R5 R6 K15 ["Y"]
       58 SUB                              R3 R4 R5
       59 SETTABLEKS                       R3 R2 K11 ["bottom"]
       61 RETURN                           R2 1
       62 GETUPVAL                         R1 2
       63 CALL                             R1 0 1
       64 JUMPIFNOT                        R1 ; [+2]
       65 GETUPVAL                         R0 3
       66 JUMP                             ; [+1]
       67 GETUPVAL                         R0 4
       68 GETIMPORT                        R1 K19 [Instance.new]
       70 LOADK                            R2 K20 ["ScreenGui"]
       71 CALL                             R1 1 1
       72 LOADK                            R2 K21 ["_FullscreenTestGui"]
       73 SETTABLEKS                       R2 R1 K22 ["Name"]
       75 SETTABLEKS                       R0 R1 K23 ["Parent"]
       77 GETIMPORT                        R2 K7 [Enum.ScreenInsets.None]
       79 SETTABLEKS                       R2 R1 K2 ["ScreenInsets"]
       81 GETIMPORT                        R2 K19 [Instance.new]
       83 LOADK                            R3 K20 ["ScreenGui"]
       84 CALL                             R2 1 1
       85 LOADK                            R3 K24 ["_DeviceTestGui"]
       86 SETTABLEKS                       R3 R2 K22 ["Name"]
       88 SETTABLEKS                       R0 R2 K23 ["Parent"]
       90 GETIMPORT                        R3 K4 [Enum.ScreenInsets.DeviceSafeInsets]
       92 SETTABLEKS                       R3 R2 K2 ["ScreenInsets"]
       94 GETTABLEKS                       R4 R2 K25 ["AbsolutePosition"]
       96 GETTABLEKS                       R5 R1 K25 ["AbsolutePosition"]
       98 SUB                              R3 R4 R5
       99 GETTABLEKS                       R6 R1 K25 ["AbsolutePosition"]
      101 GETTABLEKS                       R7 R1 K26 ["AbsoluteSize"]
      103 ADD                              R5 R6 R7
      104 GETTABLEKS                       R7 R2 K25 ["AbsolutePosition"]
      106 GETTABLEKS                       R8 R2 K26 ["AbsoluteSize"]
      108 ADD                              R6 R7 R8
      109 SUB                              R4 R5 R6
      110 DUPTABLE                         R5 K12 [{"left", "top", "right", "bottom"}]
      111 GETTABLEKS                       R6 R3 K14 ["X"]
      113 SETTABLEKS                       R6 R5 K8 ["left"]
      115 GETTABLEKS                       R6 R3 K15 ["Y"]
      117 SETTABLEKS                       R6 R5 K9 ["top"]
      119 GETTABLEKS                       R6 R4 K14 ["X"]
      121 SETTABLEKS                       R6 R5 K10 ["right"]
      123 GETTABLEKS                       R6 R4 K15 ["Y"]
      125 SETTABLEKS                       R6 R5 K11 ["bottom"]
      127 LOADNIL                          R6
      128 SETTABLEKS                       R6 R1 K23 ["Parent"]
      130 LOADNIL                          R6
      131 SETTABLEKS                       R6 R2 K23 ["Parent"]
      133 NAMECALL                         R6 R1 K27 ["Destroy"]
      135 CALL                             R6 1 0
      136 NAMECALL                         R6 R2 K27 ["Destroy"]
      138 CALL                             R6 1 0
      139 RETURN                           R5 1

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
       23 GETTABLEKS                       R3 R4 K10 ["GuiService"]
       25 GETTABLEKS                       R5 R2 K9 ["Services"]
       27 GETTABLEKS                       R4 R5 K11 ["CoreGui"]
       29 GETTABLEKS                       R6 R2 K9 ["Services"]
       31 GETTABLEKS                       R5 R6 K12 ["RunService"]
       33 GETTABLEKS                       R7 R2 K9 ["Services"]
       35 GETTABLEKS                       R6 R7 K13 ["Players"]
       37 GETTABLEKS                       R8 R6 K14 ["LocalPlayer"]
       39 JUMPIFNOT                        R8 ; [+12]
       40 NAMECALL                         R8 R5 K15 ["IsRunning"]
       42 CALL                             R8 1 1
       43 JUMPIFNOT                        R8 ; [+8]
       44 GETTABLEKS                       R7 R6 K14 ["LocalPlayer"]
       46 LOADK                            R9 K16 ["PlayerGui"]
       47 LOADN                            R10 3
       48 NAMECALL                         R7 R7 K17 ["WaitForChild"]
       50 CALL                             R7 3 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R7
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Utility"]
       57 GETTABLEKS                       R9 R10 K18 ["isPluginSecurity"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K19 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 RETURN                           R9 1
