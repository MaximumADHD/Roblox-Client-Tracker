PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["DeleteThumbnail"]
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
       16 GETTABLEKS                       R9 R2 K7 ["FontStyle"]
       18 GETTABLEKS                       R9 R9 K8 ["Normal"]
       20 GETTABLEKS                       R9 R9 K9 ["TextSize"]
       22 GETTABLEKS                       R10 R2 K7 ["FontStyle"]
       24 GETTABLEKS                       R10 R10 K8 ["Normal"]
       26 GETTABLEKS                       R10 R10 K10 ["Font"]
       28 GETIMPORT                        R11 K13 [Vector2.new]
       30 GETTABLEKS                       R12 R3 K14 ["MinContentWidth"]
       32 GETTABLEKS                       R13 R3 K15 ["MinContentHeight"]
       34 CALL                             R11 2 -1
       35 NAMECALL                         R6 R6 K16 ["GetTextSize"]
       37 CALL                             R6 -1 1
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K17 ["createElement"]
       41 GETUPVAL                         R8 3
       42 DUPTABLE                         R9 K27 [{["Buttons"], ["ButtonHorizontalAlignment"], ["Enabled"], ["MinContentSize"], ["OnButtonPressed"], ["OnClose"], ["Style"] = "Alert", ["Title"]}]
       43 NEWTABLE                         R10 0 2
       45 DUPTABLE                         R11 K32 [{["Key"] = False, ["Text"], ["Style"] = "RoundLargeText"}]
       46 GETUPVAL                         R14 0
       47 LOADK                            R15 K4 ["MultiImagePicker"]
       48 LOADK                            R16 K33 ["ReplyNo"]
       49 NAMECALL                         R12 R4 K6 ["getProjectText"]
       51 CALL                             R12 4 1
       52 SETTABLEKS                       R12 R11 K30 ["Text"]
       54 DUPTABLE                         R12 K36 [{["Key"] = True, ["Text"], ["Style"] = "RoundLargeTextPrimary"}]
       55 GETUPVAL                         R15 0
       56 LOADK                            R16 K4 ["MultiImagePicker"]
       57 LOADK                            R17 K37 ["ReplyYes"]
       58 NAMECALL                         R13 R4 K6 ["getProjectText"]
       60 CALL                             R13 4 1
       61 SETTABLEKS                       R13 R12 K30 ["Text"]
       63 SETLIST                          R10 R11 2 [1]
       65 SETTABLEKS                       R10 R9 K18 ["Buttons"]
       67 GETIMPORT                        R10 K41 [Enum.HorizontalAlignment.Center]
       69 SETTABLEKS                       R10 R9 K19 ["ButtonHorizontalAlignment"]
       71 GETTABLEKS                       R10 R1 K20 ["Enabled"]
       73 SETTABLEKS                       R10 R9 K20 ["Enabled"]
       75 GETIMPORT                        R10 K13 [Vector2.new]
       77 GETTABLEKS                       R11 R3 K14 ["MinContentWidth"]
       79 GETTABLEKS                       R12 R6 K42 ["Y"]
       81 CALL                             R10 2 1
       82 SETTABLEKS                       R10 R9 K21 ["MinContentSize"]
       84 NEWCLOSURE                       R10 P0
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R10 R9 K22 ["OnButtonPressed"]
       88 GETTABLEKS                       R10 R1 K23 ["OnClose"]
       90 SETTABLEKS                       R10 R9 K23 ["OnClose"]
       92 GETUPVAL                         R12 0
       93 LOADK                            R13 K4 ["MultiImagePicker"]
       94 LOADK                            R14 K43 ["DeleteDialogHeader"]
       95 NAMECALL                         R10 R4 K6 ["getProjectText"]
       97 CALL                             R10 4 1
       98 SETTABLEKS                       R10 R9 K26 ["Title"]
      100 DUPTABLE                         R10 K45 [{"TextLabel"}]
      101 GETUPVAL                         R11 2
      102 GETTABLEKS                       R11 R11 K17 ["createElement"]
      104 GETUPVAL                         R12 4
      105 DUPTABLE                         R13 K51 [{["LayoutOrder"] = 1, ["TextWrapped"] = True, ["Style"] = "Normal", ["Size"], ["AutomaticSize"], ["Text"]}]
      106 GETIMPORT                        R14 K54 [UDim2.fromScale]
      108 LOADN                            R15 1
      109 LOADN                            R16 1
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K49 ["Size"]
      113 GETIMPORT                        R14 K55 [Enum.AutomaticSize.Y]
      115 SETTABLEKS                       R14 R13 K50 ["AutomaticSize"]
      117 SETTABLEKS                       R5 R13 K30 ["Text"]
      119 CALL                             R11 2 1
      120 SETTABLEKS                       R11 R10 K44 ["TextLabel"]
      122 CALL                             R7 3 -1
      123 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [game]
       11 LOADK                            R3 K7 ["TextService"]
       12 NAMECALL                         R1 R1 K8 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R0 K4 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R0 K12 ["ContextServices"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K13 ["Components"]
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
