MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Widget-Button"]
       20 DUPTABLE                         R5 K18 [{["BorderSizePixel"] = 3, ["BorderMode"], ["Size"], ["AnchorPoint"], ["TextScaled"] = True}]
       21 GETIMPORT                        R6 K21 [Enum.BorderMode.Outline]
       23 SETTABLEKS                       R6 R5 K13 ["BorderMode"]
       25 GETIMPORT                        R6 K24 [UDim2.new]
       27 LOADN                            R7 0
       28 LOADN                            R8 36
       29 LOADN                            R9 0
       30 LOADN                            R10 36
       31 CALL                             R6 4 1
       32 SETTABLEKS                       R6 R5 K14 ["Size"]
       34 GETIMPORT                        R6 K26 [Vector2.new]
       36 LOADK                            R7 K27 [0.5]
       37 LOADK                            R8 K27 [0.5]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K15 ["AnchorPoint"]
       41 NEWTABLE                         R6 0 1
       43 MOVE                             R7 R2
       44 LOADK                            R8 K28 ["::UICorner"]
       45 DUPTABLE                         R9 K30 [{"CornerRadius"}]
       46 GETIMPORT                        R10 K32 [UDim.new]
       48 LOADN                            R11 1
       49 LOADN                            R12 0
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K29 ["CornerRadius"]
       53 CALL                             R7 2 -1
       54 SETLIST                          R6 R7 -1 [1]
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1
