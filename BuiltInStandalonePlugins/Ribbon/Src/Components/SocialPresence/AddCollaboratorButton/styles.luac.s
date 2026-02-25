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
       19 LOADK                            R4 K10 [".Component-AddCollaboratorButton"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
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
       59 LOADK                            R9 K12 ["> #StateLayer"]
       60 NEWTABLE                         R10 0 0
       62 NEWTABLE                         R11 0 3
       64 MOVE                             R12 R2
       65 LOADK                            R13 K20 ["::UICorner"]
       66 DUPTABLE                         R14 K22 [{"CornerRadius"}]
       67 LOADK                            R15 K23 ["$GlobalRadiusXSmall"]
       68 SETTABLEKS                       R15 R14 K21 ["CornerRadius"]
       70 CALL                             R12 2 1
       71 MOVE                             R13 R2
       72 LOADK                            R14 K24 ["> #ButtonIcon"]
       73 DUPTABLE                         R15 K26 [{"LayoutOrder"}]
       74 LOADN                            R16 1
       75 SETTABLEKS                       R16 R15 K25 ["LayoutOrder"]
       77 CALL                             R13 2 1
       78 MOVE                             R14 R2
       79 LOADK                            R15 K27 ["> #ButtonText"]
       80 DUPTABLE                         R16 K26 [{"LayoutOrder"}]
       81 LOADN                            R17 2
       82 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
       84 CALL                             R14 2 -1
       85 SETLIST                          R11 R12 -1 [1]
       87 CALL                             R8 3 -1
       88 SETLIST                          R6 R7 -1 [1]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1
