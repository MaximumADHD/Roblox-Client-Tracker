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
       26 DUPTABLE                         R7 K14 [{"Size", "BackgroundTransparency"}]
       27 GETIMPORT                        R8 K17 [UDim2.new]
       29 LOADN                            R9 0
       30 LOADN                            R10 24
       31 LOADN                            R11 0
       32 LOADN                            R12 24
       33 CALL                             R8 4 1
       34 SETTABLEKS                       R8 R7 K12 ["Size"]
       36 LOADN                            R8 1
       37 SETTABLEKS                       R8 R7 K13 ["BackgroundTransparency"]
       39 NEWTABLE                         R8 0 1
       41 MOVE                             R9 R2
       42 LOADK                            R10 K18 ["::UICorner"]
       43 DUPTABLE                         R11 K20 [{"CornerRadius"}]
       44 GETIMPORT                        R12 K22 [UDim.new]
       46 LOADK                            R13 K23 [0.5]
       47 LOADN                            R14 0
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K19 ["CornerRadius"]
       51 CALL                             R9 2 -1
       52 SETLIST                          R8 R9 -1 [1]
       54 CALL                             R5 3 1
       55 MOVE                             R6 R2
       56 LOADK                            R7 K24 [".Button"]
       57 DUPTABLE                         R8 K27 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel"}]
       58 LOADB                            R9 0
       59 SETTABLEKS                       R9 R8 K25 ["AutoButtonColor"]
       61 LOADN                            R9 1
       62 SETTABLEKS                       R9 R8 K13 ["BackgroundTransparency"]
       64 LOADN                            R9 0
       65 SETTABLEKS                       R9 R8 K26 ["BorderSizePixel"]
       67 NEWTABLE                         R9 0 2
       69 MOVE                             R10 R2
       70 LOADK                            R11 K28 [":hover"]
       71 DUPTABLE                         R12 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
       72 LOADK                            R13 K31 ["$BackgroundPaper"]
       73 SETTABLEKS                       R13 R12 K29 ["BackgroundColor3"]
       75 LOADN                            R13 0
       76 SETTABLEKS                       R13 R12 K13 ["BackgroundTransparency"]
       78 CALL                             R10 2 1
       79 MOVE                             R11 R2
       80 LOADK                            R12 K32 [":press"]
       81 DUPTABLE                         R13 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
       82 LOADK                            R14 K33 ["$ActionActivated"]
       83 SETTABLEKS                       R14 R13 K29 ["BackgroundColor3"]
       85 LOADN                            R14 0
       86 SETTABLEKS                       R14 R13 K13 ["BackgroundTransparency"]
       88 CALL                             R11 2 -1
       89 SETLIST                          R9 R10 -1 [1]
       91 CALL                             R6 3 -1
       92 SETLIST                          R4 R5 -1 [1]
       94 NEWTABLE                         R5 0 0
       96 MOVE                             R6 R3
       97 LOADK                            R7 K2 ["SocialPresence"]
       98 MOVE                             R8 R4
       99 MOVE                             R9 R5
      100 CALL                             R6 3 -1
      101 RETURN                           R6 -1
