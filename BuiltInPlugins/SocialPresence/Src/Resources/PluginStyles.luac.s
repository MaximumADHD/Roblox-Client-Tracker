MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".RibbonElement"]
       26 DUPTABLE                         R7 K15 [{["Size"], ["BackgroundTransparency"] = 1}]
       27 GETIMPORT                        R8 K18 [UDim2.new]
       29 LOADN                            R9 0
       30 LOADN                            R10 24
       31 LOADN                            R11 0
       32 LOADN                            R12 24
       33 CALL                             R8 4 1
       34 SETTABLEKS                       R8 R7 K12 ["Size"]
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R2
       39 LOADK                            R10 K19 ["::UICorner"]
       40 DUPTABLE                         R11 K21 [{"CornerRadius"}]
       41 GETIMPORT                        R12 K23 [UDim.new]
       43 LOADK                            R13 K24 [0.5]
       44 LOADN                            R14 0
       45 CALL                             R12 2 1
       46 SETTABLEKS                       R12 R11 K20 ["CornerRadius"]
       48 CALL                             R9 2 -1
       49 SETLIST                          R8 R9 -1 [1]
       51 CALL                             R5 3 1
       52 MOVE                             R6 R2
       53 LOADK                            R7 K25 [".Button"]
       54 DUPTABLE                         R8 K30 [{["AutoButtonColor"] = False, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       55 NEWTABLE                         R9 0 2
       57 MOVE                             R10 R2
       58 LOADK                            R11 K31 [":hover"]
       59 DUPTABLE                         R12 K34 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
       60 CALL                             R10 2 1
       61 MOVE                             R11 R2
       62 LOADK                            R12 K35 [":press"]
       63 DUPTABLE                         R13 K37 [{["BackgroundColor3"] = "$ActionActivated", ["BackgroundTransparency"] = 0}]
       64 CALL                             R11 2 -1
       65 SETLIST                          R9 R10 -1 [1]
       67 CALL                             R6 3 -1
       68 SETLIST                          R4 R5 -1 [1]
       70 NEWTABLE                         R5 0 0
       72 MOVE                             R6 R3
       73 LOADK                            R7 K2 ["SocialPresence"]
       74 MOVE                             R8 R4
       75 MOVE                             R9 R5
       76 CALL                             R6 3 -1
       77 RETURN                           R6 -1
