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
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K4 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K5 ["descriptionRef"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K6 ["onResize"]
       13 RETURN                           R0 0

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
       73 JUMPIFNOT                        R17 ; [+44]
       74 GETUPVAL                         R17 0
       75 GETTABLEKS                       R17 R17 K14 ["createElement"]
       77 GETUPVAL                         R18 4
       78 DUPTABLE                         R19 K40 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True, ["width"], ["Font"], ["TextSize"] = 16, ["TextColor3"]}]
       79 NAMECALL                         R20 R12 K22 ["getNextOrder"]
       81 CALL                             R20 1 1
       82 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
       84 GETTABLEKS                       R21 R1 K7 ["Disabled"]
       86 JUMPIFNOT                        R21 ; [+2]
       87 LOADK                            R20 K41 [0.5]
       88 JUMP                             ; [+1]
       89 LOADN                            R20 0
       90 SETTABLEKS                       R20 R19 K29 ["TextTransparency"]
       92 GETIMPORT                        R20 K44 [Enum.TextXAlignment.Left]
       94 SETTABLEKS                       R20 R19 K30 ["TextXAlignment"]
       96 GETIMPORT                        R20 K46 [Enum.TextYAlignment.Top]
       98 SETTABLEKS                       R20 R19 K31 ["TextYAlignment"]
      100 SETTABLEKS                       R5 R19 K32 ["Text"]
      102 GETIMPORT                        R20 K48 [UDim.new]
      104 LOADN                            R21 0
      105 MOVE                             R22 R4
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K35 ["width"]
      109 GETIMPORT                        R20 K50 [Enum.Font.SourceSans]
      111 SETTABLEKS                       R20 R19 K36 ["Font"]
      113 GETTABLEKS                       R20 R2 K51 ["dimmerTextColor"]
      115 SETTABLEKS                       R20 R19 K39 ["TextColor3"]
      117 CALL                             R17 2 1
      118 SETTABLEKS                       R17 R16 K6 ["Description"]
      120 GETTABLEKS                       R17 R1 K12 ["LinkProps"]
      122 JUMPIFNOT                        R17 ; [+51]
      123 GETUPVAL                         R17 0
      124 GETTABLEKS                       R17 R17 K14 ["createElement"]
      126 GETUPVAL                         R18 5
      127 GETUPVAL                         R19 6
      128 GETTABLEKS                       R19 R19 K52 ["Dictionary"]
      130 GETTABLEKS                       R19 R19 K53 ["join"]
      132 MOVE                             R20 R11
      133 DUPTABLE                         R21 K59 [{["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["LayoutOrder"], ["TextProps"], ["HorizontalAlignment"]}]
      134 GETTABLEKS                       R24 R2 K60 ["textWithInlineLink"]
      136 GETTABLEKS                       R24 R24 K61 ["maxWidth"]
      138 FASTCALL2                        MATH_MAX R4 R24 ; [+4]
      140 MOVE                             R23 R4
      141 GETIMPORT                        R22 K64 [math.max]
      143 CALL                             R22 2 1
      144 SETTABLEKS                       R22 R21 K56 ["MaxWidth"]
      146 NAMECALL                         R22 R12 K22 ["getNextOrder"]
      148 CALL                             R22 1 1
      149 SETTABLEKS                       R22 R21 K8 ["LayoutOrder"]
      151 GETUPVAL                         R22 6
      152 GETTABLEKS                       R22 R22 K52 ["Dictionary"]
      154 GETTABLEKS                       R22 R22 K53 ["join"]
      156 GETTABLEKS                       R23 R2 K65 ["fontStyle"]
      158 GETTABLEKS                       R23 R23 K66 ["Subtext"]
      160 DUPTABLE                         R24 K67 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      161 GETIMPORT                        R25 K44 [Enum.TextXAlignment.Left]
      163 SETTABLEKS                       R25 R24 K30 ["TextXAlignment"]
      165 CALL                             R22 2 1
      166 SETTABLEKS                       R22 R21 K57 ["TextProps"]
      168 GETIMPORT                        R22 K68 [Enum.HorizontalAlignment.Left]
      170 SETTABLEKS                       R22 R21 K58 ["HorizontalAlignment"]
      172 CALL                             R19 2 -1
      173 CALL                             R17 -1 1
      174 SETTABLEKS                       R17 R16 K17 ["LinkText"]
      176 GETUPVAL                         R17 0
      177 GETTABLEKS                       R17 R17 K14 ["createElement"]
      179 LOADK                            R18 K69 ["Frame"]
      180 NEWTABLE                         R19 8 0
      182 LOADN                            R20 1
      183 SETTABLEKS                       R20 R19 K27 ["BackgroundTransparency"]
      185 NAMECALL                         R20 R12 K22 ["getNextOrder"]
      187 CALL                             R20 1 1
      188 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      190 GETIMPORT                        R20 K70 [UDim2.new]
      192 LOADN                            R21 1
      193 LOADN                            R22 0
      194 LOADN                            R23 0
      195 LOADN                            R24 0
      196 CALL                             R20 4 1
      197 SETTABLEKS                       R20 R19 K20 ["Size"]
      199 GETUPVAL                         R20 0
      200 GETTABLEKS                       R20 R20 K71 ["Ref"]
      202 GETTABLEKS                       R21 R0 K72 ["descriptionRef"]
      204 SETTABLE                         R21 R19 R20
      205 GETUPVAL                         R20 0
      206 GETTABLEKS                       R20 R20 K73 ["Change"]
      208 GETTABLEKS                       R20 R20 K74 ["AbsoluteSize"]
      210 GETTABLEKS                       R21 R0 K75 ["onResize"]
      212 SETTABLE                         R21 R19 R20
      213 CALL                             R17 2 1
      214 SETTABLEKS                       R17 R16 K18 ["DescriptionWidth"]
      216 CALL                             R13 3 -1
      217 RETURN                           R13 -1

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
