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
       36 DUPTABLE                         R8 K20 [{"Title", "Modal", "Buttons", "ButtonHorizontalAlignment", "OnButtonPressed", "OnClose", "MinContentSize"}]
       37 LOADK                            R11 K21 ["DiscardDialog"]
       38 LOADK                            R12 K13 ["Title"]
       39 NAMECALL                         R9 R1 K22 ["getText"]
       41 CALL                             R9 3 1
       42 SETTABLEKS                       R9 R8 K13 ["Title"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K14 ["Modal"]
       47 NEWTABLE                         R9 0 2
       49 DUPTABLE                         R10 K26 [{"Key", "Text", "Style"}]
       50 LOADB                            R11 1
       51 SETTABLEKS                       R11 R10 K23 ["Key"]
       53 LOADK                            R13 K27 ["Dialog"]
       54 LOADK                            R14 K28 ["Yes"]
       55 NAMECALL                         R11 R1 K22 ["getText"]
       57 CALL                             R11 3 1
       58 SETTABLEKS                       R11 R10 K24 ["Text"]
       60 LOADK                            R11 K29 ["RoundLargeText"]
       61 SETTABLEKS                       R11 R10 K25 ["Style"]
       63 DUPTABLE                         R11 K26 [{"Key", "Text", "Style"}]
       64 LOADB                            R12 0
       65 SETTABLEKS                       R12 R11 K23 ["Key"]
       67 LOADK                            R14 K27 ["Dialog"]
       68 LOADK                            R15 K30 ["No"]
       69 NAMECALL                         R12 R1 K22 ["getText"]
       71 CALL                             R12 3 1
       72 SETTABLEKS                       R12 R11 K24 ["Text"]
       74 LOADK                            R12 K31 ["RoundLargeTextPrimary"]
       75 SETTABLEKS                       R12 R11 K25 ["Style"]
       77 SETLIST                          R9 R10 2 [1]
       79 SETTABLEKS                       R9 R8 K15 ["Buttons"]
       81 GETIMPORT                        R9 K34 [Enum.HorizontalAlignment.Center]
       83 SETTABLEKS                       R9 R8 K16 ["ButtonHorizontalAlignment"]
       85 SETTABLEKS                       R4 R8 K17 ["OnButtonPressed"]
       87 NEWCLOSURE                       R9 P1
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R9 R8 K18 ["OnClose"]
       91 GETUPVAL                         R9 4
       92 SETTABLEKS                       R9 R8 K19 ["MinContentSize"]
       94 DUPTABLE                         R9 K39 [{"Layout", "Padding", "Header", "DraftList"}]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K5 ["createElement"]
       98 LOADK                            R11 K40 ["UIListLayout"]
       99 DUPTABLE                         R12 K44 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      100 GETIMPORT                        R13 K46 [Enum.SortOrder.LayoutOrder]
      102 SETTABLEKS                       R13 R12 K41 ["SortOrder"]
      104 GETIMPORT                        R13 K48 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R13 R12 K42 ["FillDirection"]
      108 GETUPVAL                         R13 5
      109 SETTABLEKS                       R13 R12 K36 ["Padding"]
      111 GETIMPORT                        R13 K34 [Enum.HorizontalAlignment.Center]
      113 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      115 GETIMPORT                        R13 K49 [Enum.VerticalAlignment.Center]
      117 SETTABLEKS                       R13 R12 K43 ["VerticalAlignment"]
      119 CALL                             R10 2 1
      120 SETTABLEKS                       R10 R9 K35 ["Layout"]
      122 GETUPVAL                         R10 0
      123 GETTABLEKS                       R10 R10 K5 ["createElement"]
      125 LOADK                            R11 K50 ["UIPadding"]
      126 GETUPVAL                         R12 6
      127 CALL                             R10 2 1
      128 SETTABLEKS                       R10 R9 K36 ["Padding"]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R10 R10 K5 ["createElement"]
      133 GETUPVAL                         R11 7
      134 DUPTABLE                         R12 K58 [{"LayoutOrder", "AutomaticSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "Text", "TextSize", "Font", "TextColor"}]
      135 LOADN                            R13 1
      136 SETTABLEKS                       R13 R12 K45 ["LayoutOrder"]
      138 GETIMPORT                        R13 K60 [Enum.AutomaticSize.XY]
      140 SETTABLEKS                       R13 R12 K51 ["AutomaticSize"]
      142 GETIMPORT                        R13 K61 [Enum.TextXAlignment.Center]
      144 SETTABLEKS                       R13 R12 K52 ["TextXAlignment"]
      146 GETIMPORT                        R13 K63 [Enum.TextYAlignment.Top]
      148 SETTABLEKS                       R13 R12 K53 ["TextYAlignment"]
      150 LOADB                            R13 1
      151 SETTABLEKS                       R13 R12 K54 ["TextWrapped"]
      153 LOADK                            R15 K21 ["DiscardDialog"]
      154 LOADK                            R16 K64 ["ConfirmQuestion"]
      155 NAMECALL                         R13 R1 K22 ["getText"]
      157 CALL                             R13 3 1
      158 SETTABLEKS                       R13 R12 K24 ["Text"]
      160 LOADN                            R13 22
      161 SETTABLEKS                       R13 R12 K55 ["TextSize"]
      163 GETTABLEKS                       R13 R2 K65 ["dialogUILibrary"]
      165 GETTABLEKS                       R13 R13 K66 ["HeaderFont"]
      167 SETTABLEKS                       R13 R12 K56 ["Font"]
      169 GETTABLEKS                       R13 R2 K65 ["dialogUILibrary"]
      171 GETTABLEKS                       R13 R13 K67 ["HeaderTextColor"]
      173 SETTABLEKS                       R13 R12 K57 ["TextColor"]
      175 CALL                             R10 2 1
      176 SETTABLEKS                       R10 R9 K37 ["Header"]
      178 GETUPVAL                         R10 0
      179 GETTABLEKS                       R10 R10 K5 ["createElement"]
      181 GETUPVAL                         R11 8
      182 DUPTABLE                         R12 K69 [{"AutomaticCanvasSize", "LayoutOrder"}]
      183 GETIMPORT                        R13 K71 [Enum.AutomaticSize.Y]
      185 SETTABLEKS                       R13 R12 K68 ["AutomaticCanvasSize"]
      187 LOADN                            R13 2
      188 SETTABLEKS                       R13 R12 K45 ["LayoutOrder"]
      190 DUPTABLE                         R13 K73 [{"Bullets"}]
      191 SETTABLEKS                       R5 R13 K72 ["Bullets"]
      193 CALL                             R10 3 1
      194 SETTABLEKS                       R10 R9 K38 ["DraftList"]
      196 CALL                             R6 3 -1
      197 RETURN                           R6 -1

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
       43 LOADN                            R13 174
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
