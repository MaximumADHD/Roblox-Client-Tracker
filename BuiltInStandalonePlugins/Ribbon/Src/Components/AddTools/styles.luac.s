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
       19 LOADK                            R4 K10 [".Role-AddTools"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> #SearchBar > .Input"]
       26 DUPTABLE                         R9 K16 [{["BackgroundColor3"] = "$SemanticColorComponentInputFill", ["BackgroundTransparency"] = "$SemanticColorComponentInputFillTransparency"}]
       27 NEWTABLE                         R10 0 0
       29 CALL                             R7 3 1
       30 MOVE                             R8 R2
       31 LOADK                            R9 K17 ["> .Component-TreeView >> .Component-ToolRow"]
       32 DUPTABLE                         R10 K22 [{["AutoButtonColor"] = False, ["Text"] = ""}]
       33 NEWTABLE                         R11 0 6
       35 MOVE                             R12 R2
       36 LOADK                            R13 K23 ["> #Icon"]
       37 DUPTABLE                         R14 K31 [{["BorderSizePixel"] = "$BorderNone", ["BackgroundTransparency"] = "$Transparency100", ["LayoutOrder"] = 1, ["Size"] = "$IconLarge"}]
       38 CALL                             R12 2 1
       39 MOVE                             R13 R2
       40 LOADK                            R14 K32 ["> #Text"]
       41 DUPTABLE                         R15 K34 [{"AutomaticSize"}]
       42 GETIMPORT                        R16 K37 [Enum.AutomaticSize.Y]
       44 SETTABLEKS                       R16 R15 K33 ["AutomaticSize"]
       46 NEWTABLE                         R16 0 1
       48 MOVE                             R17 R2
       49 LOADK                            R18 K38 ["::UIFlexItem"]
       50 DUPTABLE                         R19 K42 [{["FlexMode"], ["GrowRatio"] = 1, ["ShrinkRatio"] = 1}]
       51 GETIMPORT                        R20 K45 [Enum.UIFlexMode.Custom]
       53 SETTABLEKS                       R20 R19 K39 ["FlexMode"]
       55 CALL                             R17 2 -1
       56 SETLIST                          R16 R17 -1 [1]
       58 CALL                             R13 3 1
       59 MOVE                             R14 R2
       60 LOADK                            R15 K46 ["> #Arrow > #Button"]
       61 DUPTABLE                         R16 K48 [{["Size"] = "$IconSmall", ["BackgroundTransparency"] = 1}]
       62 CALL                             R14 2 1
       63 MOVE                             R15 R2
       64 LOADK                            R16 K49 [">> TextLabel"]
       65 DUPTABLE                         R17 K58 [{["BackgroundTransparency"] = 1, ["Font"] = "$FontWeight400", ["Text"] = "", ["TextXAlignment"], ["TextSize"] = "$FontSize25", ["LayoutOrder"] = 2, ["TextColor3"] = "$SemanticColorContentStandard"}]
       66 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
       68 SETTABLEKS                       R18 R17 K52 ["TextXAlignment"]
       70 NEWTABLE                         R18 0 2
       72 MOVE                             R19 R2
       73 LOADK                            R20 K61 ["#Title"]
       74 DUPTABLE                         R21 K64 [{["Font"] = "$FontWeight600", ["TextSize"] = "$FontSize75"}]
       75 CALL                             R19 2 1
       76 MOVE                             R20 R2
       77 LOADK                            R21 K65 ["#Description"]
       78 DUPTABLE                         R22 K67 [{"TextTruncate"}]
       79 GETIMPORT                        R23 K69 [Enum.TextTruncate.AtEnd]
       81 SETTABLEKS                       R23 R22 K66 ["TextTruncate"]
       83 CALL                             R20 2 -1
       84 SETLIST                          R18 R19 -1 [1]
       86 CALL                             R15 3 1
       87 MOVE                             R16 R2
       88 LOADK                            R17 K70 [":hover"]
       89 DUPTABLE                         R18 K73 [{["BackgroundColor3"] = "$SemanticColorStatesHover", ["BackgroundTransparency"] = "$SemanticColorStatesHoverTransparency"}]
       90 CALL                             R16 2 1
       91 MOVE                             R17 R2
       92 LOADK                            R18 K74 ["::UIPadding"]
       93 DUPTABLE                         R19 K80 [{["PaddingLeft"], ["PaddingRight"] = "$GlobalSpace100", ["PaddingTop"] = "$GlobalSpace100", ["PaddingBottom"] = "$GlobalSpace100"}]
       94 GETIMPORT                        R20 K83 [UDim.new]
       96 LOADN                            R21 0
       97 LOADN                            R22 0
       98 CALL                             R20 2 1
       99 SETTABLEKS                       R20 R19 K75 ["PaddingLeft"]
      101 CALL                             R17 2 -1
      102 SETLIST                          R11 R12 -1 [1]
      104 CALL                             R8 3 -1
      105 SETLIST                          R6 R7 -1 [1]
      107 CALL                             R3 3 -1
      108 RETURN                           R3 -1
