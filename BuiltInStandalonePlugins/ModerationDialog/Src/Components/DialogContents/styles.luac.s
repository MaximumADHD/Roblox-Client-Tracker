MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-DialogContents"]
       20 DUPTABLE                         R5 K15 [{["BackgroundColor3"] = "$ForegroundMain", ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 3
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["> UIListLayout"]
       25 DUPTABLE                         R9 K18 [{"Padding"}]
       26 GETIMPORT                        R10 K21 [UDim.new]
       28 LOADN                            R11 0
       29 LOADN                            R12 16
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K17 ["Padding"]
       33 CALL                             R7 2 1
       34 MOVE                             R8 R2
       35 LOADK                            R9 K22 [">> Frame"]
       36 DUPTABLE                         R10 K25 [{["BackgroundTransparency"] = 1}]
       37 CALL                             R8 2 1
       38 MOVE                             R9 R2
       39 LOADK                            R10 K26 [">> .Separator"]
       40 DUPTABLE                         R11 K30 [{["Size"], ["BackgroundColor3"] = "$Divider", ["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 0}]
       41 GETIMPORT                        R12 K32 [UDim2.new]
       43 LOADN                            R13 1
       44 LOADN                            R14 0
       45 LOADN                            R15 0
       46 LOADN                            R16 1
       47 CALL                             R12 4 1
       48 SETTABLEKS                       R12 R11 K27 ["Size"]
       50 GETIMPORT                        R12 K34 [Vector2.new]
       52 LOADK                            R13 K35 [0.5]
       53 LOADK                            R14 K35 [0.5]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K29 ["AnchorPoint"]
       57 CALL                             R9 2 -1
       58 SETLIST                          R6 R7 -1 [1]
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1
