MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-AddCollaboratorButton"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 3
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [".TeamCreate"]
       26 NEWTABLE                         R9 0 0
       28 NEWTABLE                         R10 0 1
       30 MOVE                             R11 R2
       31 LOADK                            R12 K12 ["> #StateLayer"]
       32 NEWTABLE                         R13 0 0
       34 NEWTABLE                         R14 0 1
       36 MOVE                             R15 R2
       37 LOADK                            R16 K13 ["::UIPadding"]
       38 DUPTABLE                         R17 K18 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       39 LOADK                            R18 K19 ["$GlobalSpace50"]
       40 SETTABLEKS                       R18 R17 K14 ["PaddingLeft"]
       42 LOADK                            R18 K19 ["$GlobalSpace50"]
       43 SETTABLEKS                       R18 R17 K15 ["PaddingRight"]
       45 LOADK                            R18 K19 ["$GlobalSpace50"]
       46 SETTABLEKS                       R18 R17 K16 ["PaddingTop"]
       48 LOADK                            R18 K19 ["$GlobalSpace50"]
       49 SETTABLEKS                       R18 R17 K17 ["PaddingBottom"]
       51 CALL                             R15 2 -1
       52 SETLIST                          R14 R15 -1 [1]
       54 CALL                             R11 3 -1
       55 SETLIST                          R10 R11 -1 [1]
       57 CALL                             R7 3 1
       58 MOVE                             R8 R2
       59 LOADK                            R9 K20 [".CollaborateAlternateColor"]
       60 DUPTABLE                         R10 K23 [{"BackgroundColor3", "BackgroundTransparency"}]
       61 LOADK                            R11 K24 ["$SemanticColorSurface300"]
       62 SETTABLEKS                       R11 R10 K21 ["BackgroundColor3"]
       64 LOADK                            R11 K25 ["$Transparency0"]
       65 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
       67 NEWTABLE                         R11 0 2
       69 MOVE                             R12 R2
       70 LOADK                            R13 K26 [">> #ButtonIcon"]
       71 DUPTABLE                         R14 K28 [{"ImageColor3"}]
       72 LOADK                            R15 K29 ["$SemanticColorContentStandard"]
       73 SETTABLEKS                       R15 R14 K27 ["ImageColor3"]
       75 CALL                             R12 2 1
       76 MOVE                             R13 R2
       77 LOADK                            R14 K30 [">> #ButtonText"]
       78 DUPTABLE                         R15 K33 [{"TextColor3", "TextTransparency"}]
       79 LOADK                            R16 K29 ["$SemanticColorContentStandard"]
       80 SETTABLEKS                       R16 R15 K31 ["TextColor3"]
       82 LOADK                            R16 K25 ["$Transparency0"]
       83 SETTABLEKS                       R16 R15 K32 ["TextTransparency"]
       85 CALL                             R13 2 -1
       86 SETLIST                          R11 R12 -1 [1]
       88 CALL                             R8 3 1
       89 MOVE                             R9 R2
       90 LOADK                            R10 K12 ["> #StateLayer"]
       91 NEWTABLE                         R11 0 0
       93 NEWTABLE                         R12 0 3
       95 MOVE                             R13 R2
       96 LOADK                            R14 K34 ["::UICorner"]
       97 DUPTABLE                         R15 K36 [{"CornerRadius"}]
       98 LOADK                            R16 K37 ["$GlobalRadiusXSmall"]
       99 SETTABLEKS                       R16 R15 K35 ["CornerRadius"]
      101 CALL                             R13 2 1
      102 MOVE                             R14 R2
      103 LOADK                            R15 K38 ["> #ButtonIcon"]
      104 DUPTABLE                         R16 K40 [{"LayoutOrder"}]
      105 LOADN                            R17 1
      106 SETTABLEKS                       R17 R16 K39 ["LayoutOrder"]
      108 CALL                             R14 2 1
      109 MOVE                             R15 R2
      110 LOADK                            R16 K41 ["> #ButtonText"]
      111 DUPTABLE                         R17 K40 [{"LayoutOrder"}]
      112 LOADN                            R18 2
      113 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      115 CALL                             R15 2 -1
      116 SETLIST                          R12 R13 -1 [1]
      118 CALL                             R9 3 -1
      119 SETLIST                          R6 R7 -1 [1]
      121 CALL                             R3 3 -1
      122 RETURN                           R3 -1
