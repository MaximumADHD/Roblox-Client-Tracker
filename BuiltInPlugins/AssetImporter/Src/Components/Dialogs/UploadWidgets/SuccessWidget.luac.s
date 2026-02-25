PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["https://create.roblox.com/dashboard/creations/store/%d/configure"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["props"]
        5 GETTABLEKS                       R4 R5 K2 ["AssetId"]
        7 NAMECALL                         R2 R2 K3 ["format"]
        9 CALL                             R2 2 -1
       10 NAMECALL                         R0 R0 K4 ["OpenBrowserWindow"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R1 R0 K0 ["viewCreatorHubCallback"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Localization"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R3 K3 ["UploadWidget"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K4 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K10 [{"LayoutOrder", "Layout", "VerticalAlignment", "HorizontalAlignment", "Size"}]
       15 LOADN                            R8 1
       16 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       18 GETIMPORT                        R8 K14 [Enum.FillDirection.Vertical]
       20 SETTABLEKS                       R8 R7 K6 ["Layout"]
       22 GETIMPORT                        R8 K16 [Enum.VerticalAlignment.Center]
       24 SETTABLEKS                       R8 R7 K7 ["VerticalAlignment"]
       26 GETIMPORT                        R8 K17 [Enum.HorizontalAlignment.Center]
       28 SETTABLEKS                       R8 R7 K8 ["HorizontalAlignment"]
       30 GETIMPORT                        R8 K20 [UDim2.new]
       32 LOADN                            R9 0
       33 GETTABLEKS                       R10 R4 K21 ["Width"]
       35 LOADN                            R11 0
       36 GETTABLEKS                       R12 R4 K22 ["Height"]
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K9 ["Size"]
       41 DUPTABLE                         R8 K26 [{"Title", "Description", "ViewCreatorHubLink"}]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K4 ["createElement"]
       45 GETUPVAL                         R10 2
       46 DUPTABLE                         R11 K31 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
       47 LOADN                            R12 1
       48 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       50 GETTABLEKS                       R12 R4 K32 ["TextLabelSize"]
       52 SETTABLEKS                       R12 R11 K9 ["Size"]
       54 LOADK                            R14 K33 ["Upload"]
       55 LOADK                            R15 K34 ["Success"]
       56 NAMECALL                         R12 R2 K35 ["getText"]
       58 CALL                             R12 3 1
       59 SETTABLEKS                       R12 R11 K27 ["Text"]
       61 GETTABLEKS                       R12 R4 K28 ["TextSize"]
       63 SETTABLEKS                       R12 R11 K28 ["TextSize"]
       65 GETTABLEKS                       R12 R4 K36 ["TextAlignment"]
       67 SETTABLEKS                       R12 R11 K29 ["TextXAlignment"]
       69 GETTABLEKS                       R12 R4 K37 ["SuccessColor"]
       71 SETTABLEKS                       R12 R11 K30 ["TextColor"]
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K23 ["Title"]
       76 GETTABLEKS                       R10 R1 K38 ["AddedToInventory"]
       78 JUMPIFNOT                        R10 ; [+29]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R9 R10 K4 ["createElement"]
       82 GETUPVAL                         R10 2
       83 DUPTABLE                         R11 K39 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
       84 LOADN                            R12 2
       85 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       87 GETTABLEKS                       R12 R4 K32 ["TextLabelSize"]
       89 SETTABLEKS                       R12 R11 K9 ["Size"]
       91 LOADK                            R14 K33 ["Upload"]
       92 LOADK                            R15 K40 ["SuccessDescription"]
       93 NAMECALL                         R12 R2 K35 ["getText"]
       95 CALL                             R12 3 1
       96 SETTABLEKS                       R12 R11 K27 ["Text"]
       98 GETTABLEKS                       R12 R4 K41 ["SubtextSize"]
      100 SETTABLEKS                       R12 R11 K28 ["TextSize"]
      102 GETTABLEKS                       R12 R4 K36 ["TextAlignment"]
      104 SETTABLEKS                       R12 R11 K29 ["TextXAlignment"]
      106 CALL                             R9 2 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R9
      109 SETTABLEKS                       R9 R8 K24 ["Description"]
      111 GETTABLEKS                       R10 R1 K42 ["AssetId"]
      113 JUMPIFNOT                        R10 ; [+40]
      114 GETUPVAL                         R10 0
      115 GETTABLEKS                       R9 R10 K4 ["createElement"]
      117 GETUPVAL                         R10 3
      118 DUPTABLE                         R11 K46 [{"LayoutOrder", "TextWrapped", "Text", "TextProps", "LinkMap"}]
      119 LOADN                            R12 3
      120 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      122 LOADB                            R12 1
      123 SETTABLEKS                       R12 R11 K43 ["TextWrapped"]
      125 LOADK                            R12 K47 ["[ViewCreatorHub]"]
      126 SETTABLEKS                       R12 R11 K27 ["Text"]
      128 GETTABLEKS                       R13 R4 K48 ["SuccessWidget"]
      130 GETTABLEKS                       R12 R13 K44 ["TextProps"]
      132 SETTABLEKS                       R12 R11 K44 ["TextProps"]
      134 NEWTABLE                         R12 1 0
      136 DUPTABLE                         R13 K51 [{"LinkText", "LinkCallback"}]
      137 LOADK                            R16 K33 ["Upload"]
      138 LOADK                            R17 K52 ["ViewCreatorHub"]
      139 NAMECALL                         R14 R2 K35 ["getText"]
      141 CALL                             R14 3 1
      142 SETTABLEKS                       R14 R13 K49 ["LinkText"]
      144 GETTABLEKS                       R14 R0 K53 ["viewCreatorHubCallback"]
      146 SETTABLEKS                       R14 R13 K50 ["LinkCallback"]
      148 SETTABLEKS                       R13 R12 K47 ["[ViewCreatorHub]"]
      150 SETTABLEKS                       R12 R11 K45 ["LinkMap"]
      152 CALL                             R9 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R9
      155 SETTABLEKS                       R9 R8 K25 ["ViewCreatorHubLink"]
      157 CALL                             R5 3 -1
      158 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["BrowserService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["RoactCompat"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["withContext"]
       38 GETTABLEKS                       R7 R5 K16 ["Localization"]
       40 GETTABLEKS                       R9 R3 K17 ["Style"]
       42 GETTABLEKS                       R8 R9 K18 ["Stylizer"]
       44 GETTABLEKS                       R9 R3 K19 ["UI"]
       46 GETTABLEKS                       R10 R9 K20 ["Pane"]
       48 GETTABLEKS                       R11 R9 K21 ["TextLabel"]
       50 GETTABLEKS                       R12 R9 K22 ["TextWithLinks"]
       52 GETTABLEKS                       R13 R4 K23 ["PureComponent"]
       54 LOADK                            R15 K24 ["SuccessWidget"]
       55 NAMECALL                         R13 R13 K25 ["extend"]
       57 CALL                             R13 2 1
       58 DUPCLOSURE                       R14 K26 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R14 R13 K27 ["init"]
       62 DUPCLOSURE                       R14 K28 [PROTO_2]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R12
       67 SETTABLEKS                       R14 R13 K29 ["render"]
       69 MOVE                             R14 R6
       70 DUPTABLE                         R15 K30 [{"Localization", "Stylizer"}]
       71 SETTABLEKS                       R7 R15 K16 ["Localization"]
       73 SETTABLEKS                       R8 R15 K18 ["Stylizer"]
       75 CALL                             R14 1 1
       76 MOVE                             R15 R13
       77 CALL                             R14 1 1
       78 MOVE                             R13 R14
       79 RETURN                           R13 1
