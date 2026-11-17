PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R1 R0 K0 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Drafts"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["ChoiceSelected"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["createElement"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K8 [{"TextTruncate", "Items"}]
       21 GETIMPORT                        R8 K11 [Enum.TextTruncate.AtEnd]
       23 SETTABLEKS                       R8 R7 K6 ["TextTruncate"]
       25 GETUPVAL                         R8 2
       26 MOVE                             R9 R3
       27 DUPCLOSURE                       R10 K12 [PROTO_1]
       28 CALL                             R8 2 1
       29 SETTABLEKS                       R8 R7 K7 ["Items"]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K5 ["createElement"]
       35 GETUPVAL                         R7 3
       36 DUPTABLE                         R8 K21 [{["Title"], ["Modal"] = True, ["Buttons"], ["ButtonHorizontalAlignment"], ["OnButtonPressed"], ["OnClose"], ["MinContentSize"]}]
       37 LOADK                            R11 K22 ["DiscardDialog"]
       38 LOADK                            R12 K13 ["Title"]
       39 NAMECALL                         R9 R1 K23 ["getText"]
       41 CALL                             R9 3 1
       42 SETTABLEKS                       R9 R8 K13 ["Title"]
       44 NEWTABLE                         R9 0 2
       46 DUPTABLE                         R10 K28 [{["Key"] = True, ["Text"], ["Style"] = "RoundLargeText"}]
       47 LOADK                            R13 K29 ["Dialog"]
       48 LOADK                            R14 K30 ["Yes"]
       49 NAMECALL                         R11 R1 K23 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K25 ["Text"]
       54 DUPTABLE                         R11 K33 [{["Key"] = False, ["Text"], ["Style"] = "RoundLargeTextPrimary"}]
       55 LOADK                            R14 K29 ["Dialog"]
       56 LOADK                            R15 K34 ["No"]
       57 NAMECALL                         R12 R1 K23 ["getText"]
       59 CALL                             R12 3 1
       60 SETTABLEKS                       R12 R11 K25 ["Text"]
       62 SETLIST                          R9 R10 2 [1]
       64 SETTABLEKS                       R9 R8 K16 ["Buttons"]
       66 GETIMPORT                        R9 K37 [Enum.HorizontalAlignment.Center]
       68 SETTABLEKS                       R9 R8 K17 ["ButtonHorizontalAlignment"]
       70 SETTABLEKS                       R4 R8 K18 ["OnButtonPressed"]
       72 NEWCLOSURE                       R9 P1
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R9 R8 K19 ["OnClose"]
       76 GETUPVAL                         R9 4
       77 SETTABLEKS                       R9 R8 K20 ["MinContentSize"]
       79 DUPTABLE                         R9 K42 [{"Layout", "Padding", "Header", "DraftList"}]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K5 ["createElement"]
       83 LOADK                            R11 K43 ["UIListLayout"]
       84 DUPTABLE                         R12 K47 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       85 GETIMPORT                        R13 K49 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R13 R12 K44 ["SortOrder"]
       89 GETIMPORT                        R13 K51 [Enum.FillDirection.Vertical]
       91 SETTABLEKS                       R13 R12 K45 ["FillDirection"]
       93 GETUPVAL                         R13 5
       94 SETTABLEKS                       R13 R12 K39 ["Padding"]
       96 GETIMPORT                        R13 K37 [Enum.HorizontalAlignment.Center]
       98 SETTABLEKS                       R13 R12 K35 ["HorizontalAlignment"]
      100 GETIMPORT                        R13 K52 [Enum.VerticalAlignment.Center]
      102 SETTABLEKS                       R13 R12 K46 ["VerticalAlignment"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K38 ["Layout"]
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R10 R10 K5 ["createElement"]
      110 LOADK                            R11 K53 ["UIPadding"]
      111 GETUPVAL                         R12 6
      112 CALL                             R10 2 1
      113 SETTABLEKS                       R10 R9 K39 ["Padding"]
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R10 R10 K5 ["createElement"]
      118 GETUPVAL                         R11 7
      119 DUPTABLE                         R12 K63 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["Text"], ["TextSize"] = 22, ["Font"], ["TextColor"]}]
      120 GETIMPORT                        R13 K65 [Enum.AutomaticSize.XY]
      122 SETTABLEKS                       R13 R12 K55 ["AutomaticSize"]
      124 GETIMPORT                        R13 K66 [Enum.TextXAlignment.Center]
      126 SETTABLEKS                       R13 R12 K56 ["TextXAlignment"]
      128 GETIMPORT                        R13 K68 [Enum.TextYAlignment.Top]
      130 SETTABLEKS                       R13 R12 K57 ["TextYAlignment"]
      132 LOADK                            R15 K22 ["DiscardDialog"]
      133 LOADK                            R16 K69 ["ConfirmQuestion"]
      134 NAMECALL                         R13 R1 K23 ["getText"]
      136 CALL                             R13 3 1
      137 SETTABLEKS                       R13 R12 K25 ["Text"]
      139 GETTABLEKS                       R13 R2 K70 ["dialogUILibrary"]
      141 GETTABLEKS                       R13 R13 K71 ["HeaderFont"]
      143 SETTABLEKS                       R13 R12 K61 ["Font"]
      145 GETTABLEKS                       R13 R2 K70 ["dialogUILibrary"]
      147 GETTABLEKS                       R13 R13 K72 ["HeaderTextColor"]
      149 SETTABLEKS                       R13 R12 K62 ["TextColor"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K40 ["Header"]
      154 GETUPVAL                         R10 0
      155 GETTABLEKS                       R10 R10 K5 ["createElement"]
      157 GETUPVAL                         R11 8
      158 DUPTABLE                         R12 K75 [{["AutomaticCanvasSize"], ["LayoutOrder"] = 2}]
      159 GETIMPORT                        R13 K77 [Enum.AutomaticSize.Y]
      161 SETTABLEKS                       R13 R12 K73 ["AutomaticCanvasSize"]
      163 DUPTABLE                         R13 K79 [{"Bullets"}]
      164 SETTABLEKS                       R5 R13 K78 ["Bullets"]
      166 CALL                             R10 3 1
      167 SETTABLEKS                       R10 R9 K41 ["DraftList"]
      169 CALL                             R6 3 -1
      170 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["BulletList"]
       27 GETTABLEKS                       R5 R2 K10 ["Dash"]
       29 GETTABLEKS                       R6 R5 K11 ["map"]
       31 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       33 GETTABLEKS                       R8 R7 K13 ["withContext"]
       35 GETTABLEKS                       R9 R3 K14 ["StyledDialog"]
       37 GETTABLEKS                       R10 R3 K15 ["ScrollingFrame"]
       39 GETTABLEKS                       R11 R3 K16 ["TextLabel"]
       41 GETIMPORT                        R12 K19 [Vector2.new]
       43 LOADN                            R13 430
       44 LOADN                            R14 200
       45 CALL                             R12 2 1
       46 GETIMPORT                        R13 K21 [UDim.new]
       48 LOADN                            R14 0
       49 LOADN                            R15 32
       50 CALL                             R13 2 1
       51 DUPTABLE                         R14 K26 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       52 GETIMPORT                        R15 K21 [UDim.new]
       54 LOADN                            R16 0
       55 LOADN                            R17 16
       56 CALL                             R15 2 1
       57 SETTABLEKS                       R15 R14 K22 ["PaddingLeft"]
       59 GETIMPORT                        R15 K21 [UDim.new]
       61 LOADN                            R16 0
       62 LOADN                            R17 16
       63 CALL                             R15 2 1
       64 SETTABLEKS                       R15 R14 K23 ["PaddingRight"]
       66 GETIMPORT                        R15 K21 [UDim.new]
       68 LOADN                            R16 0
       69 LOADN                            R17 48
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K24 ["PaddingTop"]
       73 GETIMPORT                        R15 K21 [UDim.new]
       75 LOADN                            R16 0
       76 LOADN                            R17 48
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K25 ["PaddingBottom"]
       80 GETTABLEKS                       R15 R1 K27 ["PureComponent"]
       82 LOADK                            R17 K28 ["DraftDiscardDialog"]
       83 NAMECALL                         R15 R15 K29 ["extend"]
       85 CALL                             R15 2 1
       86 DUPCLOSURE                       R16 K30 [PROTO_0]
       87 SETTABLEKS                       R16 R15 K31 ["init"]
       89 DUPCLOSURE                       R16 K32 [PROTO_3]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R10
       99 SETTABLEKS                       R16 R15 K33 ["render"]
      101 MOVE                             R16 R8
      102 DUPTABLE                         R17 K36 [{"Localization", "Stylizer"}]
      103 GETTABLEKS                       R18 R7 K34 ["Localization"]
      105 SETTABLEKS                       R18 R17 K34 ["Localization"]
      107 GETTABLEKS                       R18 R7 K35 ["Stylizer"]
      109 SETTABLEKS                       R18 R17 K35 ["Stylizer"]
      111 CALL                             R16 1 1
      112 MOVE                             R17 R15
      113 CALL                             R16 1 1
      114 MOVE                             R15 R16
      115 RETURN                           R15 1
