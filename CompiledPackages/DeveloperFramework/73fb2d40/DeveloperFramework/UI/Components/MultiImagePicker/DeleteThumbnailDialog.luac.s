PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["DeleteThumbnail"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["DeleteThumbnailDialog"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETUPVAL                         R7 0
        9 LOADK                            R8 K4 ["MultiImagePicker"]
       10 LOADK                            R9 K5 ["DeleteDialogBody"]
       11 NAMECALL                         R5 R4 K6 ["getProjectText"]
       13 CALL                             R5 4 1
       14 GETUPVAL                         R6 1
       15 MOVE                             R8 R5
       16 GETTABLEKS                       R11 R2 K7 ["FontStyle"]
       18 GETTABLEKS                       R10 R11 K8 ["Normal"]
       20 GETTABLEKS                       R9 R10 K9 ["TextSize"]
       22 GETTABLEKS                       R12 R2 K7 ["FontStyle"]
       24 GETTABLEKS                       R11 R12 K8 ["Normal"]
       26 GETTABLEKS                       R10 R11 K10 ["Font"]
       28 GETIMPORT                        R11 K13 [Vector2.new]
       30 GETTABLEKS                       R12 R3 K14 ["MinContentWidth"]
       32 GETTABLEKS                       R13 R3 K15 ["MinContentHeight"]
       34 CALL                             R11 2 -1
       35 NAMECALL                         R6 R6 K16 ["GetTextSize"]
       37 CALL                             R6 -1 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K17 ["createElement"]
       41 GETUPVAL                         R8 3
       42 DUPTABLE                         R9 K26 [{"Buttons", "ButtonHorizontalAlignment", "Enabled", "MinContentSize", "OnButtonPressed", "OnClose", "Style", "Title"}]
       43 NEWTABLE                         R10 0 2
       45 DUPTABLE                         R11 K29 [{"Key", "Text", "Style"}]
       46 LOADB                            R12 0
       47 SETTABLEKS                       R12 R11 K27 ["Key"]
       49 GETUPVAL                         R14 0
       50 LOADK                            R15 K4 ["MultiImagePicker"]
       51 LOADK                            R16 K30 ["ReplyNo"]
       52 NAMECALL                         R12 R4 K6 ["getProjectText"]
       54 CALL                             R12 4 1
       55 SETTABLEKS                       R12 R11 K28 ["Text"]
       57 LOADK                            R12 K31 ["RoundLargeText"]
       58 SETTABLEKS                       R12 R11 K24 ["Style"]
       60 DUPTABLE                         R12 K29 [{"Key", "Text", "Style"}]
       61 LOADB                            R13 1
       62 SETTABLEKS                       R13 R12 K27 ["Key"]
       64 GETUPVAL                         R15 0
       65 LOADK                            R16 K4 ["MultiImagePicker"]
       66 LOADK                            R17 K32 ["ReplyYes"]
       67 NAMECALL                         R13 R4 K6 ["getProjectText"]
       69 CALL                             R13 4 1
       70 SETTABLEKS                       R13 R12 K28 ["Text"]
       72 LOADK                            R13 K33 ["RoundLargeTextPrimary"]
       73 SETTABLEKS                       R13 R12 K24 ["Style"]
       75 SETLIST                          R10 R11 2 [1]
       77 SETTABLEKS                       R10 R9 K18 ["Buttons"]
       79 GETIMPORT                        R10 K37 [Enum.HorizontalAlignment.Center]
       81 SETTABLEKS                       R10 R9 K19 ["ButtonHorizontalAlignment"]
       83 GETTABLEKS                       R10 R1 K20 ["Enabled"]
       85 SETTABLEKS                       R10 R9 K20 ["Enabled"]
       87 GETIMPORT                        R10 K13 [Vector2.new]
       89 GETTABLEKS                       R11 R3 K14 ["MinContentWidth"]
       91 GETTABLEKS                       R12 R6 K38 ["Y"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K21 ["MinContentSize"]
       96 NEWCLOSURE                       R10 P0
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R10 R9 K22 ["OnButtonPressed"]
      100 GETTABLEKS                       R10 R1 K23 ["OnClose"]
      102 SETTABLEKS                       R10 R9 K23 ["OnClose"]
      104 LOADK                            R10 K39 ["Alert"]
      105 SETTABLEKS                       R10 R9 K24 ["Style"]
      107 GETUPVAL                         R12 0
      108 LOADK                            R13 K4 ["MultiImagePicker"]
      109 LOADK                            R14 K40 ["DeleteDialogHeader"]
      110 NAMECALL                         R10 R4 K6 ["getProjectText"]
      112 CALL                             R10 4 1
      113 SETTABLEKS                       R10 R9 K25 ["Title"]
      115 DUPTABLE                         R10 K42 [{"TextLabel"}]
      116 GETUPVAL                         R12 2
      117 GETTABLEKS                       R11 R12 K17 ["createElement"]
      119 GETUPVAL                         R12 4
      120 DUPTABLE                         R13 K47 [{"LayoutOrder", "TextWrapped", "Style", "Size", "AutomaticSize", "Text"}]
      121 LOADN                            R14 1
      122 SETTABLEKS                       R14 R13 K43 ["LayoutOrder"]
      124 LOADB                            R14 1
      125 SETTABLEKS                       R14 R13 K44 ["TextWrapped"]
      127 LOADK                            R14 K8 ["Normal"]
      128 SETTABLEKS                       R14 R13 K24 ["Style"]
      130 GETIMPORT                        R14 K50 [UDim2.fromScale]
      132 LOADN                            R15 1
      133 LOADN                            R16 1
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K45 ["Size"]
      137 GETIMPORT                        R14 K51 [Enum.AutomaticSize.Y]
      139 SETTABLEKS                       R14 R13 K46 ["AutomaticSize"]
      141 SETTABLEKS                       R5 R13 K28 ["Text"]
      143 CALL                             R11 2 1
      144 SETTABLEKS                       R11 R10 K41 ["TextLabel"]
      146 CALL                             R7 3 -1
      147 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [game]
       11 LOADK                            R3 K7 ["TextService"]
       12 NAMECALL                         R1 R1 K8 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R0 K4 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R0 K12 ["ContextServices"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R5 K13 ["Components"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R4 K14 ["TextLabel"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K10 [require]
       38 GETTABLEKS                       R7 R4 K15 ["StyledDialog"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K16 ["Resources"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K17 ["LOCALIZATION_PROJECT_NAME"]
       48 GETTABLEKS                       R9 R2 K18 ["Component"]
       50 LOADK                            R11 K19 ["DeleteThumbnailDialog"]
       51 NAMECALL                         R9 R9 K20 ["extend"]
       53 CALL                             R9 2 1
       54 DUPCLOSURE                       R10 K21 [PROTO_1]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R10 R9 K22 ["render"]
       62 GETTABLEKS                       R10 R3 K23 ["withContext"]
       64 DUPTABLE                         R11 K25 [{"Localization"}]
       65 GETTABLEKS                       R12 R3 K24 ["Localization"]
       67 SETTABLEKS                       R12 R11 K24 ["Localization"]
       69 CALL                             R10 1 1
       70 MOVE                             R11 R9
       71 CALL                             R10 1 1
       72 MOVE                             R9 R10
       73 RETURN                           R9 1
