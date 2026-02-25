MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-CollaboratorRibbon"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> #CollaboratorContainer"]
       26 DUPTABLE                         R9 K13 [{"LayoutOrder"}]
       27 LOADN                            R10 1
       28 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R2
       32 LOADK                            R9 K14 ["> #CollaboratorButton"]
       33 DUPTABLE                         R10 K13 [{"LayoutOrder"}]
       34 LOADN                            R11 2
       35 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       37 CALL                             R8 2 1
       38 MOVE                             R9 R2
       39 LOADK                            R10 K15 [">> .RibbonElement"]
       40 DUPTABLE                         R11 K17 [{"Size"}]
       41 LOADK                            R12 K18 ["$AvatarXS"]
       42 SETTABLEKS                       R12 R11 K16 ["Size"]
       44 NEWTABLE                         R12 0 1
       46 MOVE                             R13 R2
       47 LOADK                            R14 K19 ["::UICorner"]
       48 DUPTABLE                         R15 K21 [{"CornerRadius"}]
       49 LOADK                            R16 K22 ["$GlobalRadiusCircle"]
       50 SETTABLEKS                       R16 R15 K20 ["CornerRadius"]
       52 CALL                             R13 2 -1
       53 SETLIST                          R12 R13 -1 [1]
       55 CALL                             R9 3 1
       56 MOVE                             R10 R2
       57 LOADK                            R11 K23 [">> .Component-OverflowBubble"]
       58 DUPTABLE                         R12 K27 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "ZIndex"}]
       59 LOADK                            R13 K28 ["$Transparency100"]
       60 SETTABLEKS                       R13 R12 K24 ["BackgroundTransparency"]
       62 LOADK                            R13 K29 ["$Gray70"]
       63 SETTABLEKS                       R13 R12 K25 ["BackgroundColor3"]
       65 LOADN                            R13 4
       66 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       68 LOADN                            R13 4
       69 SETTABLEKS                       R13 R12 K26 ["ZIndex"]
       71 NEWTABLE                         R13 0 1
       73 MOVE                             R14 R2
       74 LOADK                            R15 K30 ["> TextLabel"]
       75 DUPTABLE                         R16 K34 [{"TextSize", "TextColor3", "Font", "ZIndex"}]
       76 LOADK                            R17 K35 ["$FontSize75"]
       77 SETTABLEKS                       R17 R16 K31 ["TextSize"]
       79 LOADK                            R17 K36 ["$SemanticColorContentStaticLight"]
       80 SETTABLEKS                       R17 R16 K32 ["TextColor3"]
       82 GETIMPORT                        R17 K39 [Enum.Font.SourceSansBold]
       84 SETTABLEKS                       R17 R16 K33 ["Font"]
       86 LOADN                            R17 5
       87 SETTABLEKS                       R17 R16 K26 ["ZIndex"]
       89 CALL                             R14 2 -1
       90 SETLIST                          R13 R14 -1 [1]
       92 CALL                             R10 3 1
       93 MOVE                             R11 R2
       94 LOADK                            R12 K40 [">> .ThumbnailOverlap"]
       95 DUPTABLE                         R13 K17 [{"Size"}]
       96 GETIMPORT                        R14 K43 [UDim2.fromOffset]
       98 LOADN                            R15 20
       99 LOADN                            R16 24
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K16 ["Size"]
      103 CALL                             R11 2 -1
      104 SETLIST                          R6 R7 -1 [1]
      106 CALL                             R3 3 -1
      107 RETURN                           R3 -1
