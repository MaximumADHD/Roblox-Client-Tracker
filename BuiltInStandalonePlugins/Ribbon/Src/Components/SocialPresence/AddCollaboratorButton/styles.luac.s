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
       38 DUPTABLE                         R17 K19 [{["PaddingLeft"] = "$GlobalSpace50", ["PaddingRight"] = "$GlobalSpace50", ["PaddingTop"] = "$GlobalSpace50", ["PaddingBottom"] = "$GlobalSpace50"}]
       39 CALL                             R15 2 -1
       40 SETLIST                          R14 R15 -1 [1]
       42 CALL                             R11 3 -1
       43 SETLIST                          R10 R11 -1 [1]
       45 CALL                             R7 3 1
       46 MOVE                             R8 R2
       47 LOADK                            R9 K20 [".CollaborateAlternateColor"]
       48 DUPTABLE                         R10 K25 [{["BackgroundColor3"] = "$SemanticColorSurface300", ["BackgroundTransparency"] = "$Transparency0"}]
       49 NEWTABLE                         R11 0 2
       51 MOVE                             R12 R2
       52 LOADK                            R13 K26 [">> #ButtonIcon"]
       53 DUPTABLE                         R14 K29 [{["ImageColor3"] = "$SemanticColorContentStandard"}]
       54 CALL                             R12 2 1
       55 MOVE                             R13 R2
       56 LOADK                            R14 K30 [">> #ButtonText"]
       57 DUPTABLE                         R15 K33 [{["TextColor3"] = "$SemanticColorContentStandard", ["TextTransparency"] = "$Transparency0"}]
       58 CALL                             R13 2 -1
       59 SETLIST                          R11 R12 -1 [1]
       61 CALL                             R8 3 1
       62 MOVE                             R9 R2
       63 LOADK                            R10 K12 ["> #StateLayer"]
       64 NEWTABLE                         R11 0 0
       66 NEWTABLE                         R12 0 3
       68 MOVE                             R13 R2
       69 LOADK                            R14 K34 ["::UICorner"]
       70 DUPTABLE                         R15 K37 [{["CornerRadius"] = "$GlobalRadiusXSmall"}]
       71 CALL                             R13 2 1
       72 MOVE                             R14 R2
       73 LOADK                            R15 K38 ["> #ButtonIcon"]
       74 DUPTABLE                         R16 K41 [{["LayoutOrder"] = 1}]
       75 CALL                             R14 2 1
       76 MOVE                             R15 R2
       77 LOADK                            R16 K42 ["> #ButtonText"]
       78 DUPTABLE                         R17 K44 [{["LayoutOrder"] = 2}]
       79 CALL                             R15 2 -1
       80 SETLIST                          R12 R13 -1 [1]
       82 CALL                             R9 3 -1
       83 SETLIST                          R6 R7 -1 [1]
       85 CALL                             R3 3 -1
       86 RETURN                           R3 -1
