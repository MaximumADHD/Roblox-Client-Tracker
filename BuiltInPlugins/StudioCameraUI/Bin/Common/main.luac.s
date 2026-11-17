PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
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
       37 GETIMPORT                        R4 K16 [Instance.new]
       39 LOADK                            R5 K17 ["ScreenGui"]
       40 CALL                             R4 1 1
       41 LOADK                            R5 K0 ["StudioCameraUI"]
       42 SETTABLEKS                       R5 R4 K18 ["Name"]
       44 GETUPVAL                         R5 3
       45 SETTABLEKS                       R5 R4 K19 ["Parent"]
       47 GETUPVAL                         R5 4
       48 GETTABLEKS                       R5 R5 K20 ["createRoot"]
       50 MOVE                             R6 R4
       51 CALL                             R5 1 1
       52 MOVE                             R8 R3
       53 NAMECALL                         R6 R5 K21 ["render"]
       55 CALL                             R6 2 0
       56 GETTABLEKS                       R6 R0 K22 ["Unloading"]
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 NAMECALL                         R6 R6 K23 ["Connect"]
       63 CALL                             R6 2 0
       64 RETURN                           R0 0

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
       40 DUPCLOSURE                       R6 K16 [PROTO_1]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 RETURN                           R6 1
