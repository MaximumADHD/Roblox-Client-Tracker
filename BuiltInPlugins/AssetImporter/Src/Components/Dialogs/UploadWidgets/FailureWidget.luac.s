PROTO_0:
        0 DUPTABLE                         R1 K1 [{"uploadErrorsExpanded"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["uploadErrorsExpanded"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["uploadErrorsExpanded"]
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
        4 GETTABLEKS                       R3 R2 K2 ["ErrorWidget"]
        6 GETTABLEKS                       R3 R3 K3 ["Dropdown"]
        8 GETTABLEKS                       R4 R2 K4 ["UploadWidget"]
       10 NEWTABLE                         R5 0 0
       12 LOADN                            R6 1
       13 GETIMPORT                        R7 K6 [pairs]
       15 GETTABLEKS                       R8 R1 K7 ["ErrorMap"]
       17 CALL                             R7 1 3
       18 FORGPREP_NEXT                    R7
       19 MOVE                             R12 R6
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R13 R13 K8 ["createElement"]
       23 GETUPVAL                         R14 1
       24 DUPTABLE                         R15 K17 [{"Expanded", "OnExpandedChanged", "LayoutOrder", "Layout", "AutomaticSize", "VerticalAlignment", "Style", "Text"}]
       25 GETTABLEKS                       R17 R0 K18 ["state"]
       27 GETTABLEKS                       R17 R17 K19 ["uploadErrorsExpanded"]
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
       57 GETUPVAL                         R17 0
       58 GETTABLEKS                       R17 R17 K8 ["createElement"]
       60 GETUPVAL                         R18 3
       61 DUPTABLE                         R19 K36 [{["Text"], ["TextWrapped"] = True, ["TextSelectable"] = True, ["AutomaticSize"], ["TextXAlignment"], ["TextSize"], ["Style"] = "Error"}]
       62 GETUPVAL                         R20 4
       63 MOVE                             R21 R11
       64 GETTABLEKS                       R22 R1 K37 ["Localization"]
       66 CALL                             R20 2 1
       67 SETTABLEKS                       R20 R19 K16 ["Text"]
       69 GETIMPORT                        R20 K39 [Enum.AutomaticSize.XY]
       71 SETTABLEKS                       R20 R19 K13 ["AutomaticSize"]
       73 GETIMPORT                        R20 K41 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R20 R19 K33 ["TextXAlignment"]
       77 GETTABLEKS                       R20 R4 K42 ["SubtextSize"]
       79 SETTABLEKS                       R20 R19 K34 ["TextSize"]
       81 CALL                             R17 2 1
       82 SETTABLEKS                       R17 R16 K28 ["ErrorDetails"]
       84 CALL                             R13 3 1
       85 SETTABLE                         R13 R5 R10
       86 ADDK                             R6 R6 K43 [1]
       87 FORGLOOP                         R7 2 ; [-69]
       89 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Localization"]
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
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K15 ["createElement"]
       40 GETUPVAL                         R9 1
       41 DUPTABLE                         R10 K23 [{["LayoutOrder"] = 1, ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"], ["Size"], ["Padding"]}]
       42 GETIMPORT                        R11 K27 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R11 R10 K18 ["Layout"]
       46 GETIMPORT                        R11 K29 [Enum.VerticalAlignment.Top]
       48 SETTABLEKS                       R11 R10 K19 ["VerticalAlignment"]
       50 GETIMPORT                        R11 K31 [Enum.HorizontalAlignment.Center]
       52 SETTABLEKS                       R11 R10 K20 ["HorizontalAlignment"]
       54 GETIMPORT                        R11 K34 [UDim2.new]
       56 LOADN                            R12 1
       57 LOADN                            R13 0
       58 LOADN                            R14 1
       59 LOADN                            R15 0
       60 CALL                             R11 4 1
       61 SETTABLEKS                       R11 R10 K21 ["Size"]
       63 GETTABLEKS                       R11 R4 K35 ["FailureWidget"]
       65 GETTABLEKS                       R11 R11 K22 ["Padding"]
       67 SETTABLEKS                       R11 R10 K22 ["Padding"]
       69 DUPTABLE                         R11 K38 [{"Title", "Messages"}]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K15 ["createElement"]
       73 GETUPVAL                         R13 1
       74 DUPTABLE                         R14 K40 [{["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"], ["AutomaticSize"], ["LayoutOrder"] = 1}]
       75 GETIMPORT                        R15 K27 [Enum.FillDirection.Vertical]
       77 SETTABLEKS                       R15 R14 K18 ["Layout"]
       79 GETIMPORT                        R15 K29 [Enum.VerticalAlignment.Top]
       81 SETTABLEKS                       R15 R14 K19 ["VerticalAlignment"]
       83 GETIMPORT                        R15 K31 [Enum.HorizontalAlignment.Center]
       85 SETTABLEKS                       R15 R14 K20 ["HorizontalAlignment"]
       87 GETIMPORT                        R15 K42 [Enum.AutomaticSize.Y]
       89 SETTABLEKS                       R15 R14 K39 ["AutomaticSize"]
       91 DUPTABLE                         R15 K45 [{"Text", "Description"}]
       92 GETUPVAL                         R16 0
       93 GETTABLEKS                       R16 R16 K15 ["createElement"]
       95 GETUPVAL                         R17 2
       96 DUPTABLE                         R18 K48 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextColor"]}]
       97 GETTABLEKS                       R19 R4 K49 ["TextLabelSize"]
       99 SETTABLEKS                       R19 R18 K21 ["Size"]
      101 LOADK                            R21 K10 ["Upload"]
      102 LOADK                            R22 K50 ["Failure"]
      103 NAMECALL                         R19 R2 K12 ["getText"]
      105 CALL                             R19 3 1
      106 SETTABLEKS                       R19 R18 K43 ["Text"]
      108 GETTABLEKS                       R19 R4 K5 ["TextSize"]
      110 SETTABLEKS                       R19 R18 K5 ["TextSize"]
      112 GETTABLEKS                       R19 R4 K51 ["TextAlignment"]
      114 SETTABLEKS                       R19 R18 K46 ["TextXAlignment"]
      116 GETTABLEKS                       R19 R4 K52 ["FailureColor"]
      118 SETTABLEKS                       R19 R18 K47 ["TextColor"]
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K43 ["Text"]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K15 ["createElement"]
      126 GETUPVAL                         R17 2
      127 DUPTABLE                         R18 K55 [{["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["Font"]}]
      128 GETTABLEKS                       R19 R4 K49 ["TextLabelSize"]
      130 SETTABLEKS                       R19 R18 K21 ["Size"]
      132 SETTABLEKS                       R6 R18 K43 ["Text"]
      134 GETTABLEKS                       R19 R4 K6 ["SubtextSize"]
      136 SETTABLEKS                       R19 R18 K5 ["TextSize"]
      138 GETTABLEKS                       R19 R4 K51 ["TextAlignment"]
      140 SETTABLEKS                       R19 R18 K46 ["TextXAlignment"]
      142 GETTABLEKS                       R19 R4 K56 ["BoldFont"]
      144 SETTABLEKS                       R19 R18 K54 ["Font"]
      146 CALL                             R16 2 1
      147 SETTABLEKS                       R16 R15 K44 ["Description"]
      149 CALL                             R12 3 1
      150 SETTABLEKS                       R12 R11 K36 ["Title"]
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K15 ["createElement"]
      155 GETUPVAL                         R13 3
      156 DUPTABLE                         R14 K60 [{["LayoutOrder"] = 2, ["Size"], ["CanvasSize"], ["ScrollingDirection"], ["AutomaticCanvasSize"], ["Layout"]}]
      157 GETIMPORT                        R15 K34 [UDim2.new]
      159 LOADN                            R16 1
      160 LOADN                            R17 0
      161 LOADN                            R18 1
      162 MINUS                            R19 R5
      163 CALL                             R15 4 1
      164 SETTABLEKS                       R15 R14 K21 ["Size"]
      166 GETIMPORT                        R15 K34 [UDim2.new]
      168 LOADN                            R16 1
      169 LOADN                            R17 0
      170 LOADN                            R18 1
      171 LOADN                            R19 0
      172 CALL                             R15 4 1
      173 SETTABLEKS                       R15 R14 K57 ["CanvasSize"]
      175 GETIMPORT                        R15 K61 [Enum.ScrollingDirection.Y]
      177 SETTABLEKS                       R15 R14 K58 ["ScrollingDirection"]
      179 GETIMPORT                        R15 K42 [Enum.AutomaticSize.Y]
      181 SETTABLEKS                       R15 R14 K59 ["AutomaticCanvasSize"]
      183 GETIMPORT                        R15 K27 [Enum.FillDirection.Vertical]
      185 SETTABLEKS                       R15 R14 K18 ["Layout"]
      187 MOVE                             R15 R7
      188 CALL                             R12 3 1
      189 SETTABLEKS                       R12 R11 K37 ["Messages"]
      191 CALL                             R8 3 -1
      192 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["join"]
       30 GETTABLEKS                       R5 R1 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R1 K12 ["Style"]
       34 GETTABLEKS                       R6 R6 K13 ["Stylizer"]
       36 GETTABLEKS                       R7 R5 K14 ["withContext"]
       38 GETTABLEKS                       R8 R5 K15 ["Localization"]
       40 GETTABLEKS                       R9 R1 K16 ["UI"]
       42 GETTABLEKS                       R10 R9 K17 ["Pane"]
       44 GETTABLEKS                       R11 R9 K18 ["ScrollingFrame"]
       46 GETTABLEKS                       R12 R9 K19 ["TextLabel"]
       48 GETTABLEKS                       R13 R9 K20 ["ExpandablePane"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R15 R0 K21 ["Src"]
       54 GETTABLEKS                       R15 R15 K22 ["Utility"]
       56 GETTABLEKS                       R15 R15 K23 ["parseErrorTable"]
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
