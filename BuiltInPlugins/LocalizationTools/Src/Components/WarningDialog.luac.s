PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["CancelCallback"]
        8 GETTABLEKS                       R5 R1 K4 ["OkCallback"]
       10 GETTABLEKS                       R6 R1 K5 ["Text"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K14 [{"AutomaticSize", "Layout", "HorizontalAlignment", "BackgroundTransparency", "BackgroundColor3", "Size", "Spacing"}]
       17 GETIMPORT                        R10 K17 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       21 GETIMPORT                        R10 K20 [Enum.FillDirection.Vertical]
       23 SETTABLEKS                       R10 R9 K8 ["Layout"]
       25 GETIMPORT                        R10 K22 [Enum.HorizontalAlignment.Center]
       27 SETTABLEKS                       R10 R9 K9 ["HorizontalAlignment"]
       29 LOADN                            R10 0
       30 SETTABLEKS                       R10 R9 K10 ["BackgroundTransparency"]
       32 GETTABLEKS                       R10 R2 K23 ["MainBackground"]
       34 SETTABLEKS                       R10 R9 K11 ["BackgroundColor3"]
       36 GETIMPORT                        R10 K26 [UDim2.new]
       38 LOADN                            R11 1
       39 LOADN                            R12 0
       40 LOADN                            R13 1
       41 LOADN                            R14 0
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K12 ["Size"]
       45 LOADN                            R10 15
       46 SETTABLEKS                       R10 R9 K13 ["Spacing"]
       48 DUPTABLE                         R10 K29 [{"Message", "Buttons"}]
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K6 ["createElement"]
       52 GETUPVAL                         R12 2
       53 DUPTABLE                         R13 K34 [{"TextXAlignment", "BackgroundTransparency", "Text", "Size", "AutomaticSize", "TextWrapped", "TextColor3", "LayoutOrder"}]
       54 GETIMPORT                        R14 K36 [Enum.TextXAlignment.Left]
       56 SETTABLEKS                       R14 R13 K30 ["TextXAlignment"]
       58 LOADN                            R14 1
       59 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
       61 SETTABLEKS                       R6 R13 K5 ["Text"]
       63 GETIMPORT                        R14 K26 [UDim2.new]
       65 LOADN                            R15 0
       66 LOADN                            R16 144
       67 LOADN                            R17 0
       68 LOADN                            R18 0
       69 CALL                             R14 4 1
       70 SETTABLEKS                       R14 R13 K12 ["Size"]
       72 GETIMPORT                        R14 K17 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
       76 LOADB                            R14 1
       77 SETTABLEKS                       R14 R13 K31 ["TextWrapped"]
       79 GETTABLEKS                       R14 R2 K37 ["WarningText"]
       81 SETTABLEKS                       R14 R13 K32 ["TextColor3"]
       83 LOADN                            R14 1
       84 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K27 ["Message"]
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R11 R12 K6 ["createElement"]
       92 GETUPVAL                         R12 1
       93 DUPTABLE                         R13 K38 [{"AutomaticSize", "Layout", "HorizontalAlignment", "BackgroundTransparency", "BackgroundColor3", "Size", "Spacing", "LayoutOrder"}]
       94 GETIMPORT                        R14 K17 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
       98 GETIMPORT                        R14 K40 [Enum.FillDirection.Horizontal]
      100 SETTABLEKS                       R14 R13 K8 ["Layout"]
      102 GETIMPORT                        R14 K22 [Enum.HorizontalAlignment.Center]
      104 SETTABLEKS                       R14 R13 K9 ["HorizontalAlignment"]
      106 LOADN                            R14 0
      107 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
      109 GETTABLEKS                       R14 R2 K23 ["MainBackground"]
      111 SETTABLEKS                       R14 R13 K11 ["BackgroundColor3"]
      113 GETIMPORT                        R14 K26 [UDim2.new]
      115 LOADN                            R15 1
      116 LOADN                            R16 0
      117 LOADN                            R17 0
      118 LOADN                            R18 0
      119 CALL                             R14 4 1
      120 SETTABLEKS                       R14 R13 K12 ["Size"]
      122 LOADN                            R14 40
      123 SETTABLEKS                       R14 R13 K13 ["Spacing"]
      125 LOADN                            R14 2
      126 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      128 DUPTABLE                         R14 K43 [{"Confirm", "Cancel"}]
      129 GETUPVAL                         R16 0
      130 GETTABLEKS                       R15 R16 K6 ["createElement"]
      132 GETUPVAL                         R16 3
      133 DUPTABLE                         R17 K46 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
      134 LOADN                            R18 1
      135 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      137 SETTABLEKS                       R5 R17 K44 ["OnClick"]
      139 GETIMPORT                        R18 K26 [UDim2.new]
      141 LOADN                            R19 0
      142 GETTABLEKS                       R20 R2 K47 ["ButtonWidth"]
      144 LOADN                            R21 0
      145 GETTABLEKS                       R22 R2 K48 ["ButtonHeight"]
      147 CALL                             R18 4 1
      148 SETTABLEKS                       R18 R17 K12 ["Size"]
      150 LOADK                            R18 K49 ["PrimeTextButton"]
      151 SETTABLEKS                       R18 R17 K45 ["Style"]
      153 LOADK                            R20 K50 ["UploadDialogContent"]
      154 LOADK                            R21 K51 ["ConfirmButton"]
      155 NAMECALL                         R18 R3 K52 ["getText"]
      157 CALL                             R18 3 1
      158 SETTABLEKS                       R18 R17 K5 ["Text"]
      160 NEWTABLE                         R18 0 1
      162 GETUPVAL                         R20 0
      163 GETTABLEKS                       R19 R20 K6 ["createElement"]
      165 GETUPVAL                         R20 4
      166 DUPTABLE                         R21 K54 [{"Cursor"}]
      167 LOADK                            R22 K55 ["PointingHand"]
      168 SETTABLEKS                       R22 R21 K53 ["Cursor"]
      170 CALL                             R19 2 -1
      171 SETLIST                          R18 R19 -1 [1]
      173 CALL                             R15 3 1
      174 SETTABLEKS                       R15 R14 K41 ["Confirm"]
      176 GETUPVAL                         R16 0
      177 GETTABLEKS                       R15 R16 K6 ["createElement"]
      179 GETUPVAL                         R16 3
      180 DUPTABLE                         R17 K46 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
      181 LOADN                            R18 2
      182 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      184 SETTABLEKS                       R4 R17 K44 ["OnClick"]
      186 GETIMPORT                        R18 K26 [UDim2.new]
      188 LOADN                            R19 0
      189 GETTABLEKS                       R20 R2 K47 ["ButtonWidth"]
      191 LOADN                            R21 0
      192 GETTABLEKS                       R22 R2 K48 ["ButtonHeight"]
      194 CALL                             R18 4 1
      195 SETTABLEKS                       R18 R17 K12 ["Size"]
      197 LOADK                            R18 K56 ["TextButton"]
      198 SETTABLEKS                       R18 R17 K45 ["Style"]
      200 LOADK                            R20 K50 ["UploadDialogContent"]
      201 LOADK                            R21 K57 ["CancelButton"]
      202 NAMECALL                         R18 R3 K52 ["getText"]
      204 CALL                             R18 3 1
      205 SETTABLEKS                       R18 R17 K5 ["Text"]
      207 NEWTABLE                         R18 0 1
      209 GETUPVAL                         R20 0
      210 GETTABLEKS                       R19 R20 K6 ["createElement"]
      212 GETUPVAL                         R20 4
      213 DUPTABLE                         R21 K54 [{"Cursor"}]
      214 LOADK                            R22 K55 ["PointingHand"]
      215 SETTABLEKS                       R22 R21 K53 ["Cursor"]
      217 CALL                             R19 2 -1
      218 SETLIST                          R18 R19 -1 [1]
      220 CALL                             R15 3 1
      221 SETTABLEKS                       R15 R14 K42 ["Cancel"]
      223 CALL                             R11 3 1
      224 SETTABLEKS                       R11 R10 K28 ["Buttons"]
      226 CALL                             R7 3 -1
      227 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["HoverArea"]
       33 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R9 R5 K14 ["Pane"]
       37 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       39 LOADK                            R12 K16 ["WarningDialog"]
       40 NAMECALL                         R10 R10 K17 ["extend"]
       42 CALL                             R10 2 1
       43 DUPCLOSURE                       R11 K18 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 SETTABLEKS                       R11 R10 K19 ["render"]
       51 MOVE                             R11 R4
       52 DUPTABLE                         R12 K22 [{"Stylizer", "Localization"}]
       53 GETTABLEKS                       R13 R3 K20 ["Stylizer"]
       55 SETTABLEKS                       R13 R12 K20 ["Stylizer"]
       57 GETTABLEKS                       R13 R3 K21 ["Localization"]
       59 SETTABLEKS                       R13 R12 K21 ["Localization"]
       61 CALL                             R11 1 1
       62 MOVE                             R12 R10
       63 CALL                             R11 1 1
       64 MOVE                             R10 R11
       65 RETURN                           R10 1
