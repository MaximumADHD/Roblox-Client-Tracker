PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["descriptionRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"descriptionWidth"}]
        9 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R4 K5 ["X"]
       13 SETTABLEKS                       R4 R3 K2 ["descriptionWidth"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"descriptionWidth"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["descriptionWidth"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["descriptionRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onResize"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Children"]
        7 GETTABLE                         R3 R1 R4
        8 GETTABLEKS                       R3 R3 K3 ["TeachingCallout"]
       10 GETTABLEKS                       R4 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R4 K5 ["descriptionWidth"]
       14 GETTABLEKS                       R5 R1 K6 ["Description"]
       16 GETTABLEKS                       R6 R1 K7 ["Disabled"]
       18 GETTABLEKS                       R7 R1 K8 ["LayoutOrder"]
       20 GETTABLEKS                       R8 R1 K9 ["Selected"]
       22 GETTABLEKS                       R9 R1 K10 ["Title"]
       24 GETTABLEKS                       R10 R1 K11 ["OnClick"]
       26 GETTABLEKS                       R11 R1 K12 ["LinkProps"]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K13 ["new"]
       31 CALL                             R12 0 1
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K14 ["createElement"]
       35 GETUPVAL                         R14 2
       36 DUPTABLE                         R15 K15 [{"LayoutOrder", "Title"}]
       37 SETTABLEKS                       R7 R15 K8 ["LayoutOrder"]
       39 SETTABLEKS                       R9 R15 K10 ["Title"]
       41 DUPTABLE                         R16 K19 [{"ToggleButton", "Description", "LinkText", "DescriptionWidth"}]
       42 GETUPVAL                         R17 0
       43 GETTABLEKS                       R17 R17 K14 ["createElement"]
       45 GETUPVAL                         R18 3
       46 DUPTABLE                         R19 K21 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
       47 SETTABLEKS                       R6 R19 K7 ["Disabled"]
       49 SETTABLEKS                       R8 R19 K9 ["Selected"]
       51 NAMECALL                         R20 R12 K22 ["getNextOrder"]
       53 CALL                             R20 1 1
       54 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
       56 SETTABLEKS                       R10 R19 K11 ["OnClick"]
       58 GETIMPORT                        R20 K25 [UDim2.fromOffset]
       60 LOADN                            R21 40
       61 LOADN                            R22 24
       62 CALL                             R20 2 1
       63 SETTABLEKS                       R20 R19 K20 ["Size"]
       65 DUPTABLE                         R20 K26 [{"TeachingCallout"}]
       66 SETTABLEKS                       R3 R20 K3 ["TeachingCallout"]
       68 CALL                             R17 3 1
       69 SETTABLEKS                       R17 R16 K16 ["ToggleButton"]
       71 GETTABLEKS                       R17 R1 K6 ["Description"]
       73 JUMPIFNOT                        R17 ; [+53]
       74 GETUPVAL                         R17 0
       75 GETTABLEKS                       R17 R17 K14 ["createElement"]
       77 GETUPVAL                         R18 4
       78 DUPTABLE                         R19 K37 [{"BackgroundTransparency", "LayoutOrder", "TextTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped", "width", "Font", "TextSize", "TextColor3"}]
       79 LOADN                            R20 1
       80 SETTABLEKS                       R20 R19 K27 ["BackgroundTransparency"]
       82 NAMECALL                         R20 R12 K22 ["getNextOrder"]
       84 CALL                             R20 1 1
       85 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
       87 GETTABLEKS                       R21 R1 K7 ["Disabled"]
       89 JUMPIFNOT                        R21 ; [+2]
       90 LOADK                            R20 K38 [0.5]
       91 JUMP                             ; [+1]
       92 LOADN                            R20 0
       93 SETTABLEKS                       R20 R19 K28 ["TextTransparency"]
       95 GETIMPORT                        R20 K41 [Enum.TextXAlignment.Left]
       97 SETTABLEKS                       R20 R19 K29 ["TextXAlignment"]
       99 GETIMPORT                        R20 K43 [Enum.TextYAlignment.Top]
      101 SETTABLEKS                       R20 R19 K30 ["TextYAlignment"]
      103 SETTABLEKS                       R5 R19 K31 ["Text"]
      105 LOADB                            R20 1
      106 SETTABLEKS                       R20 R19 K32 ["TextWrapped"]
      108 GETIMPORT                        R20 K45 [UDim.new]
      110 LOADN                            R21 0
      111 MOVE                             R22 R4
      112 CALL                             R20 2 1
      113 SETTABLEKS                       R20 R19 K33 ["width"]
      115 GETIMPORT                        R20 K47 [Enum.Font.SourceSans]
      117 SETTABLEKS                       R20 R19 K34 ["Font"]
      119 LOADN                            R20 16
      120 SETTABLEKS                       R20 R19 K35 ["TextSize"]
      122 GETTABLEKS                       R20 R2 K48 ["dimmerTextColor"]
      124 SETTABLEKS                       R20 R19 K36 ["TextColor3"]
      126 CALL                             R17 2 1
      127 SETTABLEKS                       R17 R16 K6 ["Description"]
      129 GETTABLEKS                       R17 R1 K12 ["LinkProps"]
      131 JUMPIFNOT                        R17 ; [+57]
      132 GETUPVAL                         R17 0
      133 GETTABLEKS                       R17 R17 K14 ["createElement"]
      135 GETUPVAL                         R18 5
      136 GETUPVAL                         R19 6
      137 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      139 GETTABLEKS                       R19 R19 K50 ["join"]
      141 MOVE                             R20 R11
      142 DUPTABLE                         R21 K55 [{"LinkPlaceholder", "MaxWidth", "LayoutOrder", "TextProps", "HorizontalAlignment"}]
      143 LOADK                            R22 K56 ["[link]"]
      144 SETTABLEKS                       R22 R21 K51 ["LinkPlaceholder"]
      146 GETTABLEKS                       R24 R2 K57 ["textWithInlineLink"]
      148 GETTABLEKS                       R24 R24 K58 ["maxWidth"]
      150 FASTCALL2                        MATH_MAX R4 R24 ; [+4]
      152 MOVE                             R23 R4
      153 GETIMPORT                        R22 K61 [math.max]
      155 CALL                             R22 2 1
      156 SETTABLEKS                       R22 R21 K52 ["MaxWidth"]
      158 NAMECALL                         R22 R12 K22 ["getNextOrder"]
      160 CALL                             R22 1 1
      161 SETTABLEKS                       R22 R21 K8 ["LayoutOrder"]
      163 GETUPVAL                         R22 6
      164 GETTABLEKS                       R22 R22 K49 ["Dictionary"]
      166 GETTABLEKS                       R22 R22 K50 ["join"]
      168 GETTABLEKS                       R23 R2 K62 ["fontStyle"]
      170 GETTABLEKS                       R23 R23 K63 ["Subtext"]
      172 DUPTABLE                         R24 K64 [{"BackgroundTransparency", "TextXAlignment"}]
      173 LOADN                            R25 1
      174 SETTABLEKS                       R25 R24 K27 ["BackgroundTransparency"]
      176 GETIMPORT                        R25 K41 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R25 R24 K29 ["TextXAlignment"]
      180 CALL                             R22 2 1
      181 SETTABLEKS                       R22 R21 K53 ["TextProps"]
      183 GETIMPORT                        R22 K65 [Enum.HorizontalAlignment.Left]
      185 SETTABLEKS                       R22 R21 K54 ["HorizontalAlignment"]
      187 CALL                             R19 2 -1
      188 CALL                             R17 -1 1
      189 SETTABLEKS                       R17 R16 K17 ["LinkText"]
      191 GETUPVAL                         R17 0
      192 GETTABLEKS                       R17 R17 K14 ["createElement"]
      194 LOADK                            R18 K66 ["Frame"]
      195 NEWTABLE                         R19 8 0
      197 LOADN                            R20 1
      198 SETTABLEKS                       R20 R19 K27 ["BackgroundTransparency"]
      200 NAMECALL                         R20 R12 K22 ["getNextOrder"]
      202 CALL                             R20 1 1
      203 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      205 GETIMPORT                        R20 K67 [UDim2.new]
      207 LOADN                            R21 1
      208 LOADN                            R22 0
      209 LOADN                            R23 0
      210 LOADN                            R24 0
      211 CALL                             R20 4 1
      212 SETTABLEKS                       R20 R19 K20 ["Size"]
      214 GETUPVAL                         R20 0
      215 GETTABLEKS                       R20 R20 K68 ["Ref"]
      217 GETTABLEKS                       R21 R0 K69 ["descriptionRef"]
      219 SETTABLE                         R21 R19 R20
      220 GETUPVAL                         R20 0
      221 GETTABLEKS                       R20 R20 K70 ["Change"]
      223 GETTABLEKS                       R20 R20 K71 ["AbsoluteSize"]
      225 GETTABLEKS                       R21 R0 K72 ["onResize"]
      227 SETTABLE                         R21 R19 R20
      228 CALL                             R17 2 1
      229 SETTABLEKS                       R17 R16 K18 ["DescriptionWidth"]
      231 CALL                             R13 3 -1
      232 RETURN                           R13 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["FitFrame"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R7 R4 K12 ["UI"]
       43 GETTABLEKS                       R8 R7 K13 ["TitledFrame"]
       45 GETTABLEKS                       R9 R7 K14 ["ToggleButton"]
       47 GETTABLEKS                       R10 R7 K15 ["TextWithInlineLink"]
       49 GETTABLEKS                       R11 R3 K16 ["FitTextLabel"]
       51 GETTABLEKS                       R12 R4 K17 ["Util"]
       53 GETTABLEKS                       R12 R12 K18 ["LayoutOrderIterator"]
       55 GETTABLEKS                       R13 R1 K19 ["PureComponent"]
       57 LOADK                            R15 K20 ["ToggleButtonWithTitle"]
       58 NAMECALL                         R13 R13 K21 ["extend"]
       60 CALL                             R13 2 1
       61 DUPCLOSURE                       R14 K22 [PROTO_1]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R14 R13 K23 ["init"]
       65 DUPCLOSURE                       R14 K24 [PROTO_2]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R14 R13 K25 ["render"]
       75 MOVE                             R14 R6
       76 DUPTABLE                         R15 K27 [{"Stylizer"}]
       77 GETTABLEKS                       R16 R5 K26 ["Stylizer"]
       79 SETTABLEKS                       R16 R15 K26 ["Stylizer"]
       81 CALL                             R14 1 1
       82 MOVE                             R15 R13
       83 CALL                             R14 1 1
       84 MOVE                             R13 R14
       85 RETURN                           R13 1
