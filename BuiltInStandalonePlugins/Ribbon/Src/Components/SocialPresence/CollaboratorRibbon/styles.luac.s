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
       19 LOADK                            R4 K10 [".Component-CollaboratorRibbon"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> #CollaboratorContainer"]
       26 DUPTABLE                         R9 K14 [{["LayoutOrder"] = 1}]
       27 CALL                             R7 2 1
       28 MOVE                             R8 R2
       29 LOADK                            R9 K15 ["> #CollaboratorButton"]
       30 DUPTABLE                         R10 K17 [{["LayoutOrder"] = 2}]
       31 CALL                             R8 2 1
       32 MOVE                             R9 R2
       33 LOADK                            R10 K18 [">> .RibbonElement"]
       34 DUPTABLE                         R11 K21 [{["Size"] = "$AvatarXS"}]
       35 NEWTABLE                         R12 0 1
       37 MOVE                             R13 R2
       38 LOADK                            R14 K22 ["::UICorner"]
       39 DUPTABLE                         R15 K25 [{["CornerRadius"] = "$GlobalRadiusCircle"}]
       40 CALL                             R13 2 -1
       41 SETLIST                          R12 R13 -1 [1]
       43 CALL                             R9 3 1
       44 MOVE                             R10 R2
       45 LOADK                            R11 K26 [">> .Component-OverflowBubble"]
       46 DUPTABLE                         R12 K33 [{["BackgroundTransparency"] = "$Transparency100", ["BackgroundColor3"] = "$Gray70", ["LayoutOrder"] = 4, ["ZIndex"] = 4}]
       47 NEWTABLE                         R13 0 1
       49 MOVE                             R14 R2
       50 LOADK                            R15 K34 ["> TextLabel"]
       51 DUPTABLE                         R16 K41 [{["TextSize"] = "$FontSize75", ["TextColor3"] = "$SemanticColorContentStaticLight", ["Font"], ["ZIndex"] = 5}]
       52 GETIMPORT                        R17 K44 [Enum.Font.SourceSansBold]
       54 SETTABLEKS                       R17 R16 K39 ["Font"]
       56 CALL                             R14 2 -1
       57 SETLIST                          R13 R14 -1 [1]
       59 CALL                             R10 3 1
       60 MOVE                             R11 R2
       61 LOADK                            R12 K45 [">> .ThumbnailOverlap"]
       62 DUPTABLE                         R13 K46 [{"Size"}]
       63 GETIMPORT                        R14 K49 [UDim2.fromOffset]
       65 LOADN                            R15 20
       66 LOADN                            R16 24
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K19 ["Size"]
       70 CALL                             R11 2 -1
       71 SETLIST                          R6 R7 -1 [1]
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1
