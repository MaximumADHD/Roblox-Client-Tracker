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
       19 LOADK                            R4 K10 [".Component-CollaboratorThumbnail"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> #ActivityRing"]
       26 DUPTABLE                         R9 K15 [{"AnchorPoint", "Position", "Size"}]
       27 LOADK                            R10 K16 ["$AnchorCenter"]
       28 SETTABLEKS                       R10 R9 K12 ["AnchorPoint"]
       30 LOADK                            R10 K17 ["$PositionCenter"]
       31 SETTABLEKS                       R10 R9 K13 ["Position"]
       33 GETIMPORT                        R10 K20 [UDim2.fromOffset]
       35 LOADN                            R11 22
       36 LOADN                            R12 22
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K14 ["Size"]
       40 NEWTABLE                         R10 0 2
       42 MOVE                             R11 R2
       43 LOADK                            R12 K21 ["::UICorner"]
       44 DUPTABLE                         R13 K23 [{"CornerRadius"}]
       45 LOADK                            R14 K24 ["$GlobalRadiusCircle"]
       46 SETTABLEKS                       R14 R13 K22 ["CornerRadius"]
       48 CALL                             R11 2 1
       49 MOVE                             R12 R2
       50 LOADK                            R13 K25 ["> #RingColor"]
       51 DUPTABLE                         R14 K28 [{"ApplyStrokeMode", "Thickness"}]
       52 GETIMPORT                        R15 K31 [Enum.ApplyStrokeMode.Border]
       54 SETTABLEKS                       R15 R14 K26 ["ApplyStrokeMode"]
       56 LOADK                            R15 K32 ["$BorderMedium"]
       57 SETTABLEKS                       R15 R14 K27 ["Thickness"]
       59 CALL                             R12 2 -1
       60 SETLIST                          R10 R11 -1 [1]
       62 CALL                             R7 3 1
       63 MOVE                             R8 R2
       64 LOADK                            R9 K33 ["> ImageLabel"]
       65 DUPTABLE                         R10 K36 [{"AnchorPoint", "BorderSizePixel", "Position", "Size", "BackgroundColor3"}]
       66 LOADK                            R11 K16 ["$AnchorCenter"]
       67 SETTABLEKS                       R11 R10 K12 ["AnchorPoint"]
       69 LOADK                            R11 K37 ["$BorderNone"]
       70 SETTABLEKS                       R11 R10 K34 ["BorderSizePixel"]
       72 LOADK                            R11 K17 ["$PositionCenter"]
       73 SETTABLEKS                       R11 R10 K13 ["Position"]
       75 GETIMPORT                        R11 K20 [UDim2.fromOffset]
       77 LOADN                            R12 18
       78 LOADN                            R13 18
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K14 ["Size"]
       82 LOADK                            R11 K38 ["$SemanticColorComponentMediaFill"]
       83 SETTABLEKS                       R11 R10 K35 ["BackgroundColor3"]
       85 NEWTABLE                         R11 0 2
       87 MOVE                             R12 R2
       88 LOADK                            R13 K21 ["::UICorner"]
       89 DUPTABLE                         R14 K23 [{"CornerRadius"}]
       90 LOADK                            R15 K24 ["$GlobalRadiusCircle"]
       91 SETTABLEKS                       R15 R14 K22 ["CornerRadius"]
       93 CALL                             R12 2 1
       94 MOVE                             R13 R2
       95 LOADK                            R14 K39 [".Idle"]
       96 DUPTABLE                         R15 K40 [{"Size"}]
       97 LOADK                            R16 K41 ["$AvatarXS"]
       98 SETTABLEKS                       R16 R15 K14 ["Size"]
      100 CALL                             R13 2 -1
      101 SETLIST                          R11 R12 -1 [1]
      103 CALL                             R8 3 -1
      104 SETLIST                          R6 R7 -1 [1]
      106 CALL                             R3 3 -1
      107 RETURN                           R3 -1
