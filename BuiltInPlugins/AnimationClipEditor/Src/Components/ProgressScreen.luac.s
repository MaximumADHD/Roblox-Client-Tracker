PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["ANIMATION_FROM_VIDEO_STATUS"]
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 JUMPIFNOTEQ                      R6 R1 ; [+2]
        9 RETURN                           R5 1
       10 FORGLOOP                         R2 2 ; [-4]
       12 LOADK                            R2 K3 ["Error"]
       13 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["statusCodeToKey"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 LOADK                            R6 K3 ["AnimationFromVideo"]
        9 MOVE                             R7 R2
       10 NAMECALL                         R4 R3 K4 ["getText"]
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R3 K3 ["OnCancelled"]
       12 GETTABLEKS                       R5 R3 K4 ["OnClose"]
       14 GETTABLEKS                       R6 R1 K5 ["dialogTheme"]
       16 GETTABLEKS                       R7 R1 K6 ["progressBarTheme"]
       18 LOADN                            R9 0
       19 LOADN                            R11 1
       20 GETTABLEKS                       R13 R3 K8 ["Progress"]
       22 DIVK                             R12 R13 K7 [100]
       23 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       25 GETIMPORT                        R10 K11 [math.min]
       27 CALL                             R10 2 1
       28 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       30 GETIMPORT                        R8 K13 [math.max]
       32 CALL                             R8 2 1
       33 GETTABLEKS                       R11 R3 K14 ["Status"]
       35 NAMECALL                         R9 R0 K15 ["statusCodeToString"]
       37 CALL                             R9 2 1
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K16 ["createElement"]
       41 GETUPVAL                         R11 1
       42 DUPTABLE                         R12 K20 [{"Size", "Buttons", "OnButtonClicked", "OnClose"}]
       43 GETIMPORT                        R13 K23 [UDim2.new]
       45 LOADN                            R14 0
       46 LOADN                            R15 380
       47 LOADN                            R16 0
       48 LOADN                            R17 140
       49 CALL                             R13 4 1
       50 SETTABLEKS                       R13 R12 K17 ["Size"]
       52 NEWTABLE                         R13 0 1
       54 DUPTABLE                         R14 K27 [{["Key"] = False, ["Text"]}]
       55 LOADK                            R17 K28 ["Dialog"]
       56 LOADK                            R18 K29 ["Cancel"]
       57 NAMECALL                         R15 R2 K30 ["getText"]
       59 CALL                             R15 3 1
       60 SETTABLEKS                       R15 R14 K26 ["Text"]
       62 SETLIST                          R13 R14 1 [1]
       64 SETTABLEKS                       R13 R12 K18 ["Buttons"]
       66 SETTABLEKS                       R4 R12 K19 ["OnButtonClicked"]
       68 SETTABLEKS                       R5 R12 K4 ["OnClose"]
       70 DUPTABLE                         R13 K34 [{"Layout", "PromptText", "ProgressBarContainer"}]
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R14 R14 K16 ["createElement"]
       74 LOADK                            R15 K35 ["UIListLayout"]
       75 DUPTABLE                         R16 K39 [{"SortOrder", "FillDirection", "Padding"}]
       76 GETIMPORT                        R17 K42 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R17 R16 K36 ["SortOrder"]
       80 GETIMPORT                        R17 K44 [Enum.FillDirection.Vertical]
       82 SETTABLEKS                       R17 R16 K37 ["FillDirection"]
       84 GETIMPORT                        R17 K46 [UDim.new]
       86 LOADN                            R18 0
       87 LOADN                            R19 8
       88 CALL                             R17 2 1
       89 SETTABLEKS                       R17 R16 K38 ["Padding"]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K31 ["Layout"]
       94 GETUPVAL                         R14 0
       95 GETTABLEKS                       R14 R14 K16 ["createElement"]
       97 LOADK                            R15 K47 ["TextLabel"]
       98 DUPTABLE                         R16 K54 [{["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextColor3"], ["Font"], ["Text"], ["TextTruncate"], ["LayoutOrder"] = 1}]
       99 GETIMPORT                        R17 K23 [UDim2.new]
      101 LOADN                            R18 1
      102 LOADN                            R19 0
      103 LOADN                            R20 0
      104 GETUPVAL                         R21 2
      105 GETTABLEKS                       R21 R21 K55 ["TRACK_HEIGHT"]
      107 CALL                             R17 4 1
      108 SETTABLEKS                       R17 R16 K17 ["Size"]
      110 GETTABLEKS                       R17 R6 K56 ["textSize"]
      112 SETTABLEKS                       R17 R16 K50 ["TextSize"]
      114 GETTABLEKS                       R17 R6 K57 ["textColor"]
      116 SETTABLEKS                       R17 R16 K51 ["TextColor3"]
      118 GETTABLEKS                       R17 R1 K58 ["font"]
      120 SETTABLEKS                       R17 R16 K52 ["Font"]
      122 SETTABLEKS                       R9 R16 K26 ["Text"]
      124 GETIMPORT                        R17 K60 [Enum.TextTruncate.AtEnd]
      126 SETTABLEKS                       R17 R16 K53 ["TextTruncate"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K32 ["PromptText"]
      131 GETUPVAL                         R14 0
      132 GETTABLEKS                       R14 R14 K16 ["createElement"]
      134 LOADK                            R15 K61 ["Frame"]
      135 DUPTABLE                         R16 K66 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 1, ["Size"], ["LayoutOrder"] = 2}]
      136 GETTABLEKS                       R17 R1 K67 ["BorderColor"]
      138 SETTABLEKS                       R17 R16 K62 ["BackgroundColor3"]
      140 GETIMPORT                        R17 K23 [UDim2.new]
      142 LOADN                            R18 1
      143 LOADN                            R19 0
      144 LOADN                            R20 0
      145 GETUPVAL                         R21 2
      146 GETTABLEKS                       R21 R21 K55 ["TRACK_HEIGHT"]
      148 CALL                             R17 4 1
      149 SETTABLEKS                       R17 R16 K17 ["Size"]
      151 DUPTABLE                         R17 K69 [{"ProgressBar"}]
      152 GETUPVAL                         R18 0
      153 GETTABLEKS                       R18 R18 K16 ["createElement"]
      155 LOADK                            R19 K61 ["Frame"]
      156 DUPTABLE                         R20 K70 [{"BackgroundColor3", "Size"}]
      157 GETTABLEKS                       R21 R7 K71 ["backgroundColor"]
      159 SETTABLEKS                       R21 R20 K62 ["BackgroundColor3"]
      161 GETIMPORT                        R21 K23 [UDim2.new]
      163 MOVE                             R22 R8
      164 LOADN                            R23 0
      165 LOADN                            R24 0
      166 GETUPVAL                         R25 2
      167 GETTABLEKS                       R25 R25 K55 ["TRACK_HEIGHT"]
      169 CALL                             R21 4 1
      170 SETTABLEKS                       R21 R20 K17 ["Size"]
      172 CALL                             R18 2 1
      173 SETTABLEKS                       R18 R17 K68 ["ProgressBar"]
      175 CALL                             R14 3 1
      176 SETTABLEKS                       R14 R13 K33 ["ProgressBarContainer"]
      178 CALL                             R10 3 -1
      179 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["EditEventsDialog"]
       38 GETTABLEKS                       R5 R5 K14 ["FocusedPrompt"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K16 ["withContext"]
       45 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       47 LOADK                            R9 K18 ["ProgressScreen"]
       48 NAMECALL                         R7 R7 K19 ["extend"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K20 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R8 R7 K21 ["statusCodeToKey"]
       55 DUPCLOSURE                       R8 K22 [PROTO_1]
       56 SETTABLEKS                       R8 R7 K23 ["statusCodeToString"]
       58 DUPCLOSURE                       R8 K24 [PROTO_2]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R8 R7 K25 ["render"]
       64 MOVE                             R8 R6
       65 DUPTABLE                         R9 K28 [{"Stylizer", "Localization"}]
       66 GETTABLEKS                       R10 R5 K26 ["Stylizer"]
       68 SETTABLEKS                       R10 R9 K26 ["Stylizer"]
       70 GETTABLEKS                       R10 R5 K27 ["Localization"]
       72 SETTABLEKS                       R10 R9 K27 ["Localization"]
       74 CALL                             R8 1 1
       75 MOVE                             R9 R7
       76 CALL                             R8 1 1
       77 MOVE                             R7 R8
       78 RETURN                           R7 1
