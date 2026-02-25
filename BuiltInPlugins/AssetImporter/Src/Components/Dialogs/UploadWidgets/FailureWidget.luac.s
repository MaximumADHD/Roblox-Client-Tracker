PROTO_0:
        0 DUPTABLE                         R1 K1 [{"uploadErrorsExpanded"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["uploadErrorsExpanded"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["uploadErrorsExpanded"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"uploadErrorsExpanded"}]
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 NEWTABLE                         R6 1 0
       11 GETUPVAL                         R7 2
       12 GETUPVAL                         R10 2
       13 GETTABLE                         R9 R0 R10
       14 NOT                              R8 R9
       15 SETTABLE                         R8 R6 R7
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["uploadErrorsExpanded"]
       19 NAMECALL                         R1 R1 K3 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R2 K2 ["ErrorWidget"]
        6 GETTABLEKS                       R3 R4 K3 ["Dropdown"]
        8 GETTABLEKS                       R4 R2 K4 ["UploadWidget"]
       10 NEWTABLE                         R5 0 0
       12 LOADN                            R6 1
       13 GETIMPORT                        R7 K6 [pairs]
       15 GETTABLEKS                       R8 R1 K7 ["ErrorMap"]
       17 CALL                             R7 1 3
       18 FORGPREP_NEXT                    R7
       19 MOVE                             R12 R6
       20 GETUPVAL                         R14 0
       21 GETTABLEKS                       R13 R14 K8 ["createElement"]
       23 GETUPVAL                         R14 1
       24 DUPTABLE                         R15 K17 [{"Expanded", "OnExpandedChanged", "LayoutOrder", "Layout", "AutomaticSize", "VerticalAlignment", "Style", "Text"}]
       25 GETTABLEKS                       R18 R0 K18 ["state"]
       27 GETTABLEKS                       R17 R18 K19 ["uploadErrorsExpanded"]
       29 GETTABLE                         R16 R17 R12
       30 SETTABLEKS                       R16 R15 K9 ["Expanded"]
       32 NEWCLOSURE                       R16 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R12
       36 SETTABLEKS                       R16 R15 K10 ["OnExpandedChanged"]
       38 SETTABLEKS                       R6 R15 K11 ["LayoutOrder"]
       40 GETIMPORT                        R16 K23 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R16 R15 K12 ["Layout"]
       44 GETIMPORT                        R16 K25 [Enum.AutomaticSize.Y]
       46 SETTABLEKS                       R16 R15 K13 ["AutomaticSize"]
       48 GETIMPORT                        R16 K27 [Enum.VerticalAlignment.Top]
       50 SETTABLEKS                       R16 R15 K14 ["VerticalAlignment"]
       52 SETTABLEKS                       R3 R15 K15 ["Style"]
       54 SETTABLEKS                       R10 R15 K16 ["Text"]
       56 DUPTABLE                         R16 K29 [{"ErrorDetails"}]
       57 GETUPVAL                         R18 0
       58 GETTABLEKS                       R17 R18 K8 ["createElement"]
       60 GETUPVAL                         R18 3
       61 DUPTABLE                         R19 K34 [{"Text", "TextWrapped", "TextSelectable", "AutomaticSize", "TextXAlignment", "TextSize", "Style"}]
       62 GETUPVAL                         R20 4
       63 MOVE                             R21 R11
       64 GETTABLEKS                       R22 R1 K35 ["Localization"]
       66 CALL                             R20 2 1
       67 SETTABLEKS                       R20 R19 K16 ["Text"]
       69 LOADB                            R20 1
       70 SETTABLEKS                       R20 R19 K30 ["TextWrapped"]
       72 LOADB                            R20 1
       73 SETTABLEKS                       R20 R19 K31 ["TextSelectable"]
       75 GETIMPORT                        R20 K37 [Enum.AutomaticSize.XY]
       77 SETTABLEKS                       R20 R19 K13 ["AutomaticSize"]
       79 GETIMPORT                        R20 K39 [Enum.TextXAlignment.Left]
       81 SETTABLEKS                       R20 R19 K32 ["TextXAlignment"]
       83 GETTABLEKS                       R20 R4 K40 ["SubtextSize"]
       85 SETTABLEKS                       R20 R19 K33 ["TextSize"]
       87 LOADK                            R20 K41 ["Error"]
       88 SETTABLEKS                       R20 R19 K15 ["Style"]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K28 ["ErrorDetails"]
       93 CALL                             R13 3 1
       94 SETTABLE                         R13 R5 R10
       95 ADDK                             R6 R6 K42 [1]
       96 FORGLOOP                         R7 2 ; [-78]
       98 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Localization"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R3 K3 ["UploadWidget"]
       10 GETTABLEKS                       R7 R4 K5 ["TextSize"]
       12 GETTABLEKS                       R8 R4 K6 ["SubtextSize"]
       14 ADD                              R6 R7 R8
       15 ADDK                             R5 R6 K4 [10]
       16 GETIMPORT                        R7 K8 [next]
       18 GETTABLEKS                       R8 R1 K9 ["ErrorMap"]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKNIL                  R7 ; [+7]
       23 LOADK                            R8 K10 ["Upload"]
       24 LOADK                            R9 K11 ["FailureDescriptionNoError"]
       25 NAMECALL                         R6 R2 K12 ["getText"]
       27 CALL                             R6 3 1
       28 JUMP                             ; [+5]
       29 LOADK                            R8 K10 ["Upload"]
       30 LOADK                            R9 K13 ["FailureDescription"]
       31 NAMECALL                         R6 R2 K12 ["getText"]
       33 CALL                             R6 3 1
       34 NAMECALL                         R7 R0 K14 ["_getErrorSections"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K15 ["createElement"]
       40 GETUPVAL                         R9 1
       41 DUPTABLE                         R10 K22 [{"LayoutOrder", "Layout", "VerticalAlignment", "HorizontalAlignment", "Size", "Padding"}]
       42 LOADN                            R11 1
       43 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       45 GETIMPORT                        R11 K26 [Enum.FillDirection.Vertical]
       47 SETTABLEKS                       R11 R10 K17 ["Layout"]
       49 GETIMPORT                        R11 K28 [Enum.VerticalAlignment.Top]
       51 SETTABLEKS                       R11 R10 K18 ["VerticalAlignment"]
       53 GETIMPORT                        R11 K30 [Enum.HorizontalAlignment.Center]
       55 SETTABLEKS                       R11 R10 K19 ["HorizontalAlignment"]
       57 GETIMPORT                        R11 K33 [UDim2.new]
       59 LOADN                            R12 1
       60 LOADN                            R13 0
       61 LOADN                            R14 1
       62 LOADN                            R15 0
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K20 ["Size"]
       66 GETTABLEKS                       R12 R4 K34 ["FailureWidget"]
       68 GETTABLEKS                       R11 R12 K21 ["Padding"]
       70 SETTABLEKS                       R11 R10 K21 ["Padding"]
       72 DUPTABLE                         R11 K37 [{"Title", "Messages"}]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K15 ["createElement"]
       76 GETUPVAL                         R13 1
       77 DUPTABLE                         R14 K39 [{"Layout", "VerticalAlignment", "HorizontalAlignment", "AutomaticSize", "LayoutOrder"}]
       78 GETIMPORT                        R15 K26 [Enum.FillDirection.Vertical]
       80 SETTABLEKS                       R15 R14 K17 ["Layout"]
       82 GETIMPORT                        R15 K28 [Enum.VerticalAlignment.Top]
       84 SETTABLEKS                       R15 R14 K18 ["VerticalAlignment"]
       86 GETIMPORT                        R15 K30 [Enum.HorizontalAlignment.Center]
       88 SETTABLEKS                       R15 R14 K19 ["HorizontalAlignment"]
       90 GETIMPORT                        R15 K41 [Enum.AutomaticSize.Y]
       92 SETTABLEKS                       R15 R14 K38 ["AutomaticSize"]
       94 LOADN                            R15 1
       95 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       97 DUPTABLE                         R15 K44 [{"Text", "Description"}]
       98 GETUPVAL                         R17 0
       99 GETTABLEKS                       R16 R17 K15 ["createElement"]
      101 GETUPVAL                         R17 2
      102 DUPTABLE                         R18 K47 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
      103 LOADN                            R19 1
      104 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      106 GETTABLEKS                       R19 R4 K48 ["TextLabelSize"]
      108 SETTABLEKS                       R19 R18 K20 ["Size"]
      110 LOADK                            R21 K10 ["Upload"]
      111 LOADK                            R22 K49 ["Failure"]
      112 NAMECALL                         R19 R2 K12 ["getText"]
      114 CALL                             R19 3 1
      115 SETTABLEKS                       R19 R18 K42 ["Text"]
      117 GETTABLEKS                       R19 R4 K5 ["TextSize"]
      119 SETTABLEKS                       R19 R18 K5 ["TextSize"]
      121 GETTABLEKS                       R19 R4 K50 ["TextAlignment"]
      123 SETTABLEKS                       R19 R18 K45 ["TextXAlignment"]
      125 GETTABLEKS                       R19 R4 K51 ["FailureColor"]
      127 SETTABLEKS                       R19 R18 K46 ["TextColor"]
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K42 ["Text"]
      132 GETUPVAL                         R17 0
      133 GETTABLEKS                       R16 R17 K15 ["createElement"]
      135 GETUPVAL                         R17 2
      136 DUPTABLE                         R18 K53 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "Font"}]
      137 LOADN                            R19 2
      138 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      140 GETTABLEKS                       R19 R4 K48 ["TextLabelSize"]
      142 SETTABLEKS                       R19 R18 K20 ["Size"]
      144 SETTABLEKS                       R6 R18 K42 ["Text"]
      146 GETTABLEKS                       R19 R4 K6 ["SubtextSize"]
      148 SETTABLEKS                       R19 R18 K5 ["TextSize"]
      150 GETTABLEKS                       R19 R4 K50 ["TextAlignment"]
      152 SETTABLEKS                       R19 R18 K45 ["TextXAlignment"]
      154 GETTABLEKS                       R19 R4 K54 ["BoldFont"]
      156 SETTABLEKS                       R19 R18 K52 ["Font"]
      158 CALL                             R16 2 1
      159 SETTABLEKS                       R16 R15 K43 ["Description"]
      161 CALL                             R12 3 1
      162 SETTABLEKS                       R12 R11 K35 ["Title"]
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R12 R13 K15 ["createElement"]
      167 GETUPVAL                         R13 3
      168 DUPTABLE                         R14 K58 [{"LayoutOrder", "Size", "CanvasSize", "ScrollingDirection", "AutomaticCanvasSize", "Layout"}]
      169 LOADN                            R15 2
      170 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      172 GETIMPORT                        R15 K33 [UDim2.new]
      174 LOADN                            R16 1
      175 LOADN                            R17 0
      176 LOADN                            R18 1
      177 MINUS                            R19 R5
      178 CALL                             R15 4 1
      179 SETTABLEKS                       R15 R14 K20 ["Size"]
      181 GETIMPORT                        R15 K33 [UDim2.new]
      183 LOADN                            R16 1
      184 LOADN                            R17 0
      185 LOADN                            R18 1
      186 LOADN                            R19 0
      187 CALL                             R15 4 1
      188 SETTABLEKS                       R15 R14 K55 ["CanvasSize"]
      190 GETIMPORT                        R15 K59 [Enum.ScrollingDirection.Y]
      192 SETTABLEKS                       R15 R14 K56 ["ScrollingDirection"]
      194 GETIMPORT                        R15 K41 [Enum.AutomaticSize.Y]
      196 SETTABLEKS                       R15 R14 K57 ["AutomaticCanvasSize"]
      198 GETIMPORT                        R15 K26 [Enum.FillDirection.Vertical]
      200 SETTABLEKS                       R15 R14 K17 ["Layout"]
      202 MOVE                             R15 R7
      203 CALL                             R12 3 1
      204 SETTABLEKS                       R12 R11 K36 ["Messages"]
      206 CALL                             R8 3 -1
      207 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["join"]
       30 GETTABLEKS                       R5 R1 K11 ["ContextServices"]
       32 GETTABLEKS                       R7 R1 K12 ["Style"]
       34 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
       36 GETTABLEKS                       R7 R5 K14 ["withContext"]
       38 GETTABLEKS                       R8 R5 K15 ["Localization"]
       40 GETTABLEKS                       R9 R1 K16 ["UI"]
       42 GETTABLEKS                       R10 R9 K17 ["Pane"]
       44 GETTABLEKS                       R11 R9 K18 ["ScrollingFrame"]
       46 GETTABLEKS                       R12 R9 K19 ["TextLabel"]
       48 GETTABLEKS                       R13 R9 K20 ["ExpandablePane"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R17 R0 K21 ["Src"]
       54 GETTABLEKS                       R16 R17 K22 ["Utility"]
       56 GETTABLEKS                       R15 R16 K23 ["parseErrorTable"]
       58 CALL                             R14 1 1
       59 GETTABLEKS                       R15 R2 K24 ["PureComponent"]
       61 LOADK                            R17 K25 ["FailureWidget"]
       62 NAMECALL                         R15 R15 K26 ["extend"]
       64 CALL                             R15 2 1
       65 DUPCLOSURE                       R16 K27 [PROTO_0]
       66 SETTABLEKS                       R16 R15 K28 ["init"]
       68 DUPCLOSURE                       R16 K29 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R14
       74 SETTABLEKS                       R16 R15 K30 ["_getErrorSections"]
       76 DUPCLOSURE                       R16 K31 [PROTO_3]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R16 R15 K32 ["render"]
       83 MOVE                             R16 R7
       84 DUPTABLE                         R17 K33 [{"Localization", "Stylizer"}]
       85 SETTABLEKS                       R8 R17 K15 ["Localization"]
       87 SETTABLEKS                       R6 R17 K13 ["Stylizer"]
       89 CALL                             R16 1 1
       90 MOVE                             R17 R15
       91 CALL                             R16 1 1
       92 MOVE                             R15 R16
       93 RETURN                           R15 1
