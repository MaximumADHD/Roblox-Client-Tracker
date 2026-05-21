PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationUseGetInsetArea"]
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
       17 GETTABLEKS                       R4 R0 K13 ["Min"]
       19 GETTABLEKS                       R4 R4 K14 ["X"]
       21 GETTABLEKS                       R5 R1 K13 ["Min"]
       23 GETTABLEKS                       R5 R5 K14 ["X"]
       25 SUB                              R3 R4 R5
       26 SETTABLEKS                       R3 R2 K8 ["left"]
       28 GETTABLEKS                       R4 R0 K13 ["Min"]
       30 GETTABLEKS                       R4 R4 K15 ["Y"]
       32 GETTABLEKS                       R5 R1 K13 ["Min"]
       34 GETTABLEKS                       R5 R5 K15 ["Y"]
       36 SUB                              R3 R4 R5
       37 SETTABLEKS                       R3 R2 K9 ["top"]
       39 GETTABLEKS                       R4 R1 K16 ["Max"]
       41 GETTABLEKS                       R4 R4 K14 ["X"]
       43 GETTABLEKS                       R5 R0 K16 ["Max"]
       45 GETTABLEKS                       R5 R5 K14 ["X"]
       47 SUB                              R3 R4 R5
       48 SETTABLEKS                       R3 R2 K10 ["right"]
       50 GETTABLEKS                       R4 R1 K16 ["Max"]
       52 GETTABLEKS                       R4 R4 K15 ["Y"]
       54 GETTABLEKS                       R5 R0 K16 ["Max"]
       56 GETTABLEKS                       R5 R5 K15 ["Y"]
       58 SUB                              R3 R4 R5
       59 SETTABLEKS                       R3 R2 K11 ["bottom"]
       61 RETURN                           R2 1
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K17 ["FoundationUseMainGuiUtility"]
       65 JUMPIFNOT                        R1 ; [+3]
       66 GETUPVAL                         R0 2
       67 CALL                             R0 0 1
       68 JUMP                             ; [+6]
       69 GETUPVAL                         R1 3
       70 CALL                             R1 0 1
       71 JUMPIFNOT                        R1 ; [+2]
       72 GETUPVAL                         R0 4
       73 JUMP                             ; [+1]
       74 GETUPVAL                         R0 5
       75 GETIMPORT                        R1 K20 [Instance.new]
       77 LOADK                            R2 K21 ["ScreenGui"]
       78 CALL                             R1 1 1
       79 LOADK                            R2 K22 ["_FullscreenTestGui"]
       80 SETTABLEKS                       R2 R1 K23 ["Name"]
       82 SETTABLEKS                       R0 R1 K24 ["Parent"]
       84 GETIMPORT                        R2 K7 [Enum.ScreenInsets.None]
       86 SETTABLEKS                       R2 R1 K2 ["ScreenInsets"]
       88 GETIMPORT                        R2 K20 [Instance.new]
       90 LOADK                            R3 K21 ["ScreenGui"]
       91 CALL                             R2 1 1
       92 LOADK                            R3 K25 ["_DeviceTestGui"]
       93 SETTABLEKS                       R3 R2 K23 ["Name"]
       95 SETTABLEKS                       R0 R2 K24 ["Parent"]
       97 GETIMPORT                        R3 K4 [Enum.ScreenInsets.DeviceSafeInsets]
       99 SETTABLEKS                       R3 R2 K2 ["ScreenInsets"]
      101 GETTABLEKS                       R4 R2 K26 ["AbsolutePosition"]
      103 GETTABLEKS                       R5 R1 K26 ["AbsolutePosition"]
      105 SUB                              R3 R4 R5
      106 GETTABLEKS                       R6 R1 K26 ["AbsolutePosition"]
      108 GETTABLEKS                       R7 R1 K27 ["AbsoluteSize"]
      110 ADD                              R5 R6 R7
      111 GETTABLEKS                       R7 R2 K26 ["AbsolutePosition"]
      113 GETTABLEKS                       R8 R2 K27 ["AbsoluteSize"]
      115 ADD                              R6 R7 R8
      116 SUB                              R4 R5 R6
      117 DUPTABLE                         R5 K12 [{"left", "top", "right", "bottom"}]
      118 GETTABLEKS                       R6 R3 K14 ["X"]
      120 SETTABLEKS                       R6 R5 K8 ["left"]
      122 GETTABLEKS                       R6 R3 K15 ["Y"]
      124 SETTABLEKS                       R6 R5 K9 ["top"]
      126 GETTABLEKS                       R6 R4 K14 ["X"]
      128 SETTABLEKS                       R6 R5 K10 ["right"]
      130 GETTABLEKS                       R6 R4 K15 ["Y"]
      132 SETTABLEKS                       R6 R5 K11 ["bottom"]
      134 LOADNIL                          R6
      135 SETTABLEKS                       R6 R1 K24 ["Parent"]
      137 LOADNIL                          R6
      138 SETTABLEKS                       R6 R2 K24 ["Parent"]
      140 NAMECALL                         R6 R1 K28 ["Destroy"]
      142 CALL                             R6 1 0
      143 NAMECALL                         R6 R2 K28 ["Destroy"]
      145 CALL                             R6 1 0
      146 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Utility"]
       18 GETTABLEKS                       R3 R3 K8 ["Wrappers"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Utility"]
       25 GETTABLEKS                       R4 R4 K9 ["getMainGui"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Services"]
       30 GETTABLEKS                       R4 R4 K11 ["GuiService"]
       32 GETTABLEKS                       R5 R2 K10 ["Services"]
       34 GETTABLEKS                       R5 R5 K12 ["CoreGui"]
       36 GETTABLEKS                       R6 R2 K10 ["Services"]
       38 GETTABLEKS                       R6 R6 K13 ["RunService"]
       40 GETTABLEKS                       R7 R2 K10 ["Services"]
       42 GETTABLEKS                       R7 R7 K14 ["Players"]
       44 LOADNIL                          R8
       45 GETTABLEKS                       R9 R1 K15 ["FoundationUseMainGuiUtility"]
       47 JUMPIF                           R9 ; [+17]
       48 GETTABLEKS                       R9 R7 K16 ["LocalPlayer"]
       50 JUMPIFNOT                        R9 ; [+13]
       51 NAMECALL                         R9 R6 K17 ["IsRunning"]
       53 CALL                             R9 1 1
       54 JUMPIFNOT                        R9 ; [+9]
       55 GETTABLEKS                       R9 R7 K16 ["LocalPlayer"]
       57 LOADK                            R11 K18 ["PlayerGui"]
       58 LOADN                            R12 3
       59 NAMECALL                         R9 R9 K19 ["WaitForChild"]
       61 CALL                             R9 3 1
       62 MOVE                             R8 R9
       63 JUMP                             ; [+1]
       64 LOADNIL                          R8
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Utility"]
       69 GETTABLEKS                       R10 R10 K20 ["isPluginSecurity"]
       71 CALL                             R9 1 1
       72 NEWCLOSURE                       R10 P0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          REF R8
       79 CLOSEUPVALS                      R8
       80 RETURN                           R10 1
