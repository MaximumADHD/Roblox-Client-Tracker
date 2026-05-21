PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetSelectedRibbonTool"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K4 [Enum.RibbonTool.None]
        8 JUMPIFEQ                         R0 R1 ; [+10]
       10 GETUPVAL                         R0 1
       11 GETIMPORT                        R2 K4 [Enum.RibbonTool.None]
       13 GETIMPORT                        R3 K7 [UDim2.new]
       15 CALL                             R3 0 -1
       16 NAMECALL                         R0 R0 K8 ["SelectRibbonTool"]
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.RibbonTool.None]
        3 JUMPIFEQ                         R0 R1 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETIMPORT                        R3 K6 [UDim2.new]
        9 CALL                             R3 0 -1
       10 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
       12 CALL                             R0 -1 0
       13 GETIMPORT                        R0 K3 [Enum.RibbonTool.None]
       15 SETUPVAL                         R0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K2 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K2 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["StudioCameraUI"]
        1 NAMECALL                         R1 R0 K1 ["CreateToolbar"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["ToggleViewSelector"]
        5 LOADK                            R5 K3 ["Show View Selector"]
        6 LOADK                            R6 K4 [""]
        7 NAMECALL                         R2 R1 K5 ["CreateButton"]
        9 CALL                             R2 4 1
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K6 ["ClickableWhenViewportHidden"]
       13 GETUPVAL                         R3 0
       14 NAMECALL                         R3 R3 K7 ["IsEdit"]
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+9]
       18 GETUPVAL                         R3 0
       19 NAMECALL                         R3 R3 K8 ["IsServer"]
       21 CALL                             R3 1 1
       22 JUMPIF                           R3 ; [+4]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K9 ["Enabled"]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K10 ["createElement"]
       30 GETUPVAL                         R4 2
       31 DUPTABLE                         R5 K13 [{"Plugin", "ViewSelectorToggle"}]
       32 SETTABLEKS                       R0 R5 K11 ["Plugin"]
       34 SETTABLEKS                       R2 R5 K12 ["ViewSelectorToggle"]
       36 CALL                             R3 2 1
       37 GETIMPORT                        R4 K17 [Enum.RibbonTool.None]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K18 ["OnMouseCaptureBegin"]
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          REF R4
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R5 R5 K19 ["Connect"]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K20 ["OnMouseCaptureEnd"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          REF R4
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R6 R6 K19 ["Connect"]
       56 CALL                             R6 2 1
       57 GETIMPORT                        R7 K23 [Instance.new]
       59 LOADK                            R8 K24 ["ScreenGui"]
       60 CALL                             R7 1 1
       61 LOADK                            R8 K0 ["StudioCameraUI"]
       62 SETTABLEKS                       R8 R7 K25 ["Name"]
       64 GETUPVAL                         R8 4
       65 SETTABLEKS                       R8 R7 K26 ["Parent"]
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K27 ["createRoot"]
       70 MOVE                             R9 R7
       71 CALL                             R8 1 1
       72 MOVE                             R11 R3
       73 NAMECALL                         R9 R8 K28 ["render"]
       75 CALL                             R9 2 0
       76 GETTABLEKS                       R9 R0 K29 ["Unloading"]
       78 NEWCLOSURE                       R11 P2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 NAMECALL                         R9 R9 K19 ["Connect"]
       85 CALL                             R9 2 0
       86 CLOSEUPVALS                      R4
       87 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["MainPlugin"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["CoreGui"]
       31 NAMECALL                         R4 R4 K14 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K12 [game]
       36 LOADK                            R7 K15 ["RunService"]
       37 NAMECALL                         R5 R5 K14 ["GetService"]
       39 CALL                             R5 2 1
       40 GETIMPORT                        R6 K12 [game]
       42 LOADK                            R8 K16 ["StudioCameraService"]
       43 NAMECALL                         R6 R6 K14 ["GetService"]
       45 CALL                             R6 2 1
       46 DUPCLOSURE                       R7 K17 [PROTO_3]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 RETURN                           R7 1
