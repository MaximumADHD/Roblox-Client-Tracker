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
       19 LOADK                            R4 K10 [".Component-CollaboratorThumbnail"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> #ActivityRing"]
       26 DUPTABLE                         R9 K17 [{["AnchorPoint"] = "$AnchorCenter", ["Position"] = "$PositionCenter", ["Size"]}]
       27 GETIMPORT                        R10 K20 [UDim2.fromOffset]
       29 LOADN                            R11 22
       30 LOADN                            R12 22
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K16 ["Size"]
       34 NEWTABLE                         R10 0 2
       36 MOVE                             R11 R2
       37 LOADK                            R12 K21 ["::UICorner"]
       38 DUPTABLE                         R13 K24 [{["CornerRadius"] = "$GlobalRadiusCircle"}]
       39 CALL                             R11 2 1
       40 MOVE                             R12 R2
       41 LOADK                            R13 K25 ["> #RingColor"]
       42 DUPTABLE                         R14 K29 [{["ApplyStrokeMode"], ["Thickness"] = "$BorderMedium"}]
       43 GETIMPORT                        R15 K32 [Enum.ApplyStrokeMode.Border]
       45 SETTABLEKS                       R15 R14 K26 ["ApplyStrokeMode"]
       47 CALL                             R12 2 -1
       48 SETLIST                          R10 R11 -1 [1]
       50 CALL                             R7 3 1
       51 MOVE                             R8 R2
       52 LOADK                            R9 K33 ["> ImageLabel"]
       53 DUPTABLE                         R10 K38 [{["AnchorPoint"] = "$AnchorCenter", ["BorderSizePixel"] = "$BorderNone", ["Position"] = "$PositionCenter", ["Size"], ["BackgroundColor3"] = "$SemanticColorComponentMediaFill"}]
       54 GETIMPORT                        R11 K20 [UDim2.fromOffset]
       56 LOADN                            R12 18
       57 LOADN                            R13 18
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K16 ["Size"]
       61 NEWTABLE                         R11 0 2
       63 MOVE                             R12 R2
       64 LOADK                            R13 K21 ["::UICorner"]
       65 DUPTABLE                         R14 K24 [{["CornerRadius"] = "$GlobalRadiusCircle"}]
       66 CALL                             R12 2 1
       67 MOVE                             R13 R2
       68 LOADK                            R14 K39 [".Idle"]
       69 DUPTABLE                         R15 K41 [{["Size"] = "$AvatarXS"}]
       70 CALL                             R13 2 -1
       71 SETLIST                          R11 R12 -1 [1]
       73 CALL                             R8 3 -1
       74 SETLIST                          R6 R7 -1 [1]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1
