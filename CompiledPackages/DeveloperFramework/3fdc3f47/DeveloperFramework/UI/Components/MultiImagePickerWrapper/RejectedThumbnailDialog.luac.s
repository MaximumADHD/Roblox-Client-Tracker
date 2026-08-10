PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Files"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["Files"]
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R3 R1 K2 ["Localization"]
       13 GETTABLEKS                       R4 R1 K3 ["Theme"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["new"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["createElement"]
       22 GETUPVAL                         R7 2
       23 DUPTABLE                         R8 K15 [{["Buttons"], ["ButtonHorizontalAlignment"], ["Enabled"], ["MinContentSize"], ["OnButtonPressed"], ["OnClose"], ["Style"] = "Alert", ["Title"]}]
       24 NEWTABLE                         R9 0 1
       26 DUPTABLE                         R10 K19 [{["Key"] = "OK", ["Text"]}]
       27 GETUPVAL                         R13 3
       28 LOADK                            R14 K20 ["MultiImagePicker"]
       29 LOADK                            R15 K21 ["ReplyOK"]
       30 NAMECALL                         R11 R3 K22 ["getProjectText"]
       32 CALL                             R11 4 1
       33 SETTABLEKS                       R11 R10 K18 ["Text"]
       35 SETLIST                          R9 R10 1 [1]
       37 SETTABLEKS                       R9 R8 K6 ["Buttons"]
       39 GETIMPORT                        R9 K26 [Enum.HorizontalAlignment.Center]
       41 SETTABLEKS                       R9 R8 K7 ["ButtonHorizontalAlignment"]
       43 GETTABLEKS                       R9 R1 K8 ["Enabled"]
       45 SETTABLEKS                       R9 R8 K8 ["Enabled"]
       47 GETIMPORT                        R9 K28 [Vector2.new]
       49 LOADN                            R10 460
       50 LOADN                            R12 100
       51 LENGTH                           R14 R2
       52 GETTABLEKS                       R15 R4 K29 ["FontStyle"]
       54 GETTABLEKS                       R15 R15 K30 ["SemiBold"]
       56 GETTABLEKS                       R15 R15 K31 ["TextSize"]
       58 MUL                              R13 R14 R15
       59 ADD                              R11 R12 R13
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K9 ["MinContentSize"]
       63 GETTABLEKS                       R9 R1 K11 ["OnClose"]
       65 SETTABLEKS                       R9 R8 K10 ["OnButtonPressed"]
       67 GETTABLEKS                       R9 R1 K11 ["OnClose"]
       69 SETTABLEKS                       R9 R8 K11 ["OnClose"]
       71 GETUPVAL                         R11 3
       72 LOADK                            R12 K20 ["MultiImagePicker"]
       73 LOADK                            R13 K32 ["RejectedDialogHeader"]
       74 NAMECALL                         R9 R3 K22 ["getProjectText"]
       76 CALL                             R9 4 1
       77 SETTABLEKS                       R9 R8 K14 ["Title"]
       79 DUPTABLE                         R9 K36 [{"Layout", "Header", "List"}]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K5 ["createElement"]
       83 LOADK                            R11 K37 ["UIListLayout"]
       84 DUPTABLE                         R12 K40 [{"SortOrder", "Padding"}]
       85 GETIMPORT                        R13 K42 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R13 R12 K38 ["SortOrder"]
       89 GETIMPORT                        R13 K44 [UDim.new]
       91 LOADN                            R14 0
       92 LOADN                            R15 16
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K39 ["Padding"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K33 ["Layout"]
       99 GETUPVAL                         R10 1
      100 GETTABLEKS                       R10 R10 K5 ["createElement"]
      102 GETUPVAL                         R11 4
      103 GETUPVAL                         R12 5
      104 GETTABLEKS                       R13 R4 K29 ["FontStyle"]
      106 GETTABLEKS                       R13 R13 K30 ["SemiBold"]
      108 DUPTABLE                         R14 K49 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
      109 GETIMPORT                        R15 K51 [Enum.AutomaticSize.XY]
      111 SETTABLEKS                       R15 R14 K45 ["AutomaticSize"]
      113 NAMECALL                         R15 R5 K52 ["getNextOrder"]
      115 CALL                             R15 1 1
      116 SETTABLEKS                       R15 R14 K41 ["LayoutOrder"]
      118 GETUPVAL                         R17 3
      119 LOADK                            R18 K20 ["MultiImagePicker"]
      120 LOADK                            R19 K53 ["RejectedDialogBody"]
      121 DUPTABLE                         R20 K55 [{"maxThumbnailSize"}]
      122 GETUPVAL                         R22 6
      123 DIVK                             R21 R22 K56 [1000000]
      124 SETTABLEKS                       R21 R20 K54 ["maxThumbnailSize"]
      126 NAMECALL                         R15 R3 K22 ["getProjectText"]
      128 CALL                             R15 5 1
      129 SETTABLEKS                       R15 R14 K18 ["Text"]
      131 GETIMPORT                        R15 K58 [Enum.TextXAlignment.Left]
      133 SETTABLEKS                       R15 R14 K46 ["TextXAlignment"]
      135 CALL                             R12 2 -1
      136 CALL                             R10 -1 1
      137 SETTABLEKS                       R10 R9 K34 ["Header"]
      139 GETUPVAL                         R10 1
      140 GETTABLEKS                       R10 R10 K5 ["createElement"]
      142 GETUPVAL                         R11 7
      143 DUPTABLE                         R12 K61 [{"Items", "LayoutOrder", "TextTruncate"}]
      144 SETTABLEKS                       R2 R12 K59 ["Items"]
      146 NAMECALL                         R13 R5 K52 ["getNextOrder"]
      148 CALL                             R13 1 1
      149 SETTABLEKS                       R13 R12 K41 ["LayoutOrder"]
      151 GETIMPORT                        R13 K63 [Enum.TextTruncate.AtEnd]
      153 SETTABLEKS                       R13 R12 K60 ["TextTruncate"]
      155 CALL                             R10 2 1
      156 SETTABLEKS                       R10 R9 K35 ["List"]
      158 CALL                             R6 3 -1
      159 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K2 ["UI"]
       23 GETTABLEKS                       R3 R3 K9 ["Components"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R3 K10 ["TextLabel"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R3 K11 ["BulletList"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R3 K12 ["StyledDialog"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Resources"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Util"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R8 K15 ["LayoutOrderIterator"]
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K14 ["Util"]
       56 GETTABLEKS                       R11 R11 K16 ["getFileMaxSizeBytesOrDefault"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R0 K4 ["Parent"]
       63 GETTABLEKS                       R12 R12 K17 ["Dash"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R11 K18 ["join"]
       68 GETIMPORT                        R13 K6 [require]
       70 GETTABLEKS                       R14 R0 K19 ["SharedFlags"]
       72 GETTABLEKS                       R14 R14 K20 ["getFFlagDevFrameworkSettingsCliFix"]
       74 CALL                             R13 1 1
       75 CALL                             R13 0 1
       76 JUMPIFNOT                        R13 ; [+3]
       77 MOVE                             R14 R10
       78 CALL                             R14 0 1
       79 JUMP                             ; [+11]
       80 GETIMPORT                        R15 K22 [settings]
       82 CALL                             R15 0 1
       83 LOADK                            R17 K23 ["FileMaxSizeBytes"]
       84 NAMECALL                         R15 R15 K24 ["GetFVariable"]
       86 CALL                             R15 2 -1
       87 FASTCALL                         TONUMBER ; [+2]
       88 GETIMPORT                        R14 K26 [tonumber]
       90 CALL                             R14 -1 1
       91 GETTABLEKS                       R15 R7 K27 ["LOCALIZATION_PROJECT_NAME"]
       93 GETTABLEKS                       R16 R1 K28 ["Component"]
       95 LOADK                            R18 K29 ["RejectedThumbnailDialog"]
       96 NAMECALL                         R16 R16 K30 ["extend"]
       98 CALL                             R16 2 1
       99 DUPCLOSURE                       R17 K31 [PROTO_0]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R17 R16 K32 ["render"]
      110 GETTABLEKS                       R17 R2 K33 ["withContext"]
      112 DUPTABLE                         R18 K35 [{"Localization"}]
      113 GETTABLEKS                       R19 R2 K34 ["Localization"]
      115 SETTABLEKS                       R19 R18 K34 ["Localization"]
      117 CALL                             R17 1 1
      118 MOVE                             R18 R16
      119 CALL                             R17 1 1
      120 MOVE                             R16 R17
      121 RETURN                           R16 1
