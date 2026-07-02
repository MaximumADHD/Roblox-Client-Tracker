PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K3 [{"maxChildWidth"}]
        6 SETTABLEKS                       R1 R4 K2 ["maxChildWidth"]
        8 NAMECALL                         R2 R2 K4 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["updateSize"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["interface"]
        5 DUPTABLE                         R4 K4 [{"content", "onLinkClicked"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["interface"]
        9 DUPTABLE                         R6 K8 [{"TextLine1", "TextLine2", "LinkText"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K9 ["string"]
       13 SETTABLEKS                       R7 R6 K5 ["TextLine1"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K9 ["string"]
       18 SETTABLEKS                       R7 R6 K6 ["TextLine2"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K9 ["string"]
       23 SETTABLEKS                       R7 R6 K7 ["LinkText"]
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K2 ["content"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K10 ["callback"]
       31 SETTABLEKS                       R5 R4 K3 ["onLinkClicked"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R1
       35 CALL                             R3 1 -1
       36 FASTCALL                         ASSERT ; [+2]
       37 GETIMPORT                        R2 K12 [assert]
       39 CALL                             R2 -1 0
       40 GETTABLEKS                       R2 R1 K13 ["Stylizer"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K14 ["FONT_SIZE_MEDIUM"]
       45 GETTABLEKS                       R4 R1 K2 ["content"]
       47 GETTABLEKS                       R5 R1 K15 ["Position"]
       49 JUMPIF                           R5 ; [+7]
       50 GETIMPORT                        R5 K18 [UDim2.new]
       52 LOADN                            R6 0
       53 LOADN                            R7 0
       54 LOADN                            R8 0
       55 LOADN                            R9 0
       56 CALL                             R5 4 1
       57 GETTABLEKS                       R7 R1 K20 ["ZIndex"]
       59 ORK                              R6 R7 K19 [0]
       60 GETTABLEKS                       R8 R1 K21 ["Visible"]
       62 JUMPIFEQKNIL                     R8 ; [+4]
       64 GETTABLEKS                       R7 R1 K21 ["Visible"]
       66 JUMPIF                           R7 ; [+6]
       67 GETTABLEKS                       R8 R1 K21 ["Visible"]
       69 JUMPIFEQKNIL                     R8 ; [+2]
       71 LOADB                            R7 0 +1
       72 LOADB                            R7 1
       73 GETTABLEKS                       R8 R2 K22 ["infoBanner"]
       75 DUPTABLE                         R9 K28 [{["TextProps"], ["LinkPlaceholder"] = "{link}", ["LinkText"], ["OnLinkClicked"], ["MaxWidth"]}]
       76 DUPTABLE                         R10 K39 [{["TextColor"], ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["ClipsDescendants"] = True}]
       77 GETTABLEKS                       R11 R8 K40 ["textColor"]
       79 SETTABLEKS                       R11 R10 K29 ["TextColor"]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R11 R11 K41 ["FONT"]
       84 SETTABLEKS                       R11 R10 K32 ["Font"]
       86 SETTABLEKS                       R3 R10 K33 ["TextSize"]
       88 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Center]
       90 SETTABLEKS                       R11 R10 K34 ["TextXAlignment"]
       92 GETIMPORT                        R11 K45 [Enum.TextYAlignment.Center]
       94 SETTABLEKS                       R11 R10 K35 ["TextYAlignment"]
       96 SETTABLEKS                       R10 R9 K23 ["TextProps"]
       98 GETTABLEKS                       R10 R4 K7 ["LinkText"]
      100 SETTABLEKS                       R10 R9 K7 ["LinkText"]
      102 GETTABLEKS                       R10 R1 K3 ["onLinkClicked"]
      104 SETTABLEKS                       R10 R9 K26 ["OnLinkClicked"]
      106 GETTABLEKS                       R10 R0 K46 ["state"]
      108 GETTABLEKS                       R10 R10 K47 ["maxChildWidth"]
      110 SETTABLEKS                       R10 R9 K27 ["MaxWidth"]
      112 GETUPVAL                         R10 2
      113 GETTABLEKS                       R10 R10 K48 ["createElement"]
      115 LOADK                            R11 K49 ["Frame"]
      116 NEWTABLE                         R12 8 0
      118 SETTABLEKS                       R5 R12 K15 ["Position"]
      120 GETIMPORT                        R13 K18 [UDim2.new]
      122 LOADN                            R14 1
      123 LOADN                            R15 0
      124 LOADN                            R16 1
      125 LOADN                            R17 0
      126 CALL                             R13 4 1
      127 SETTABLEKS                       R13 R12 K50 ["Size"]
      129 LOADN                            R13 1
      130 SETTABLEKS                       R13 R12 K30 ["BackgroundTransparency"]
      132 SETTABLEKS                       R6 R12 K20 ["ZIndex"]
      134 SETTABLEKS                       R7 R12 K21 ["Visible"]
      136 GETUPVAL                         R13 2
      137 GETTABLEKS                       R13 R13 K51 ["Change"]
      139 GETTABLEKS                       R13 R13 K52 ["AbsoluteSize"]
      141 GETTABLEKS                       R14 R0 K53 ["updateSize"]
      143 SETTABLE                         R14 R12 R13
      144 DUPTABLE                         R13 K55 [{"Layout", "TextLine1", "TextLine2"}]
      145 GETUPVAL                         R14 2
      146 GETTABLEKS                       R14 R14 K48 ["createElement"]
      148 LOADK                            R15 K56 ["UIListLayout"]
      149 DUPTABLE                         R16 K60 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
      150 GETIMPORT                        R17 K62 [Enum.SortOrder.LayoutOrder]
      152 SETTABLEKS                       R17 R16 K57 ["SortOrder"]
      154 GETIMPORT                        R17 K64 [Enum.FillDirection.Vertical]
      156 SETTABLEKS                       R17 R16 K58 ["FillDirection"]
      158 GETIMPORT                        R17 K65 [Enum.HorizontalAlignment.Center]
      160 SETTABLEKS                       R17 R16 K59 ["HorizontalAlignment"]
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R13 K54 ["Layout"]
      165 GETUPVAL                         R14 2
      166 GETTABLEKS                       R14 R14 K48 ["createElement"]
      168 GETUPVAL                         R15 3
      169 GETUPVAL                         R16 4
      170 GETTABLEKS                       R16 R16 K66 ["Dictionary"]
      172 GETTABLEKS                       R16 R16 K67 ["join"]
      174 DUPTABLE                         R17 K69 [{["Text"], ["LayoutOrder"] = 1}]
      175 GETTABLEKS                       R18 R4 K5 ["TextLine1"]
      177 SETTABLEKS                       R18 R17 K68 ["Text"]
      179 MOVE                             R18 R9
      180 CALL                             R16 2 -1
      181 CALL                             R14 -1 1
      182 SETTABLEKS                       R14 R13 K5 ["TextLine1"]
      184 GETUPVAL                         R14 2
      185 GETTABLEKS                       R14 R14 K48 ["createElement"]
      187 GETUPVAL                         R15 3
      188 GETUPVAL                         R16 4
      189 GETTABLEKS                       R16 R16 K66 ["Dictionary"]
      191 GETTABLEKS                       R16 R16 K67 ["join"]
      193 DUPTABLE                         R17 K71 [{["Text"], ["LayoutOrder"] = 2}]
      194 GETTABLEKS                       R18 R4 K6 ["TextLine2"]
      196 SETTABLEKS                       R18 R17 K68 ["Text"]
      198 MOVE                             R18 R9
      199 CALL                             R16 2 -1
      200 CALL                             R14 -1 1
      201 SETTABLEKS                       R14 R13 K6 ["TextLine2"]
      203 CALL                             R10 3 -1
      204 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K8 ["Framework"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K9 ["Util"]
       28 GETTABLEKS                       R4 R4 K10 ["Typecheck"]
       30 GETTABLEKS                       R4 R4 K11 ["t"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K9 ["Util"]
       38 GETTABLEKS                       R6 R6 K13 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R1 K8 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R6 R6 K14 ["UI"]
       48 GETTABLEKS                       R6 R6 K15 ["TextWithInlineLink"]
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R1 K8 ["Framework"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       57 GETTABLEKS                       R9 R8 K17 ["withContext"]
       59 GETTABLEKS                       R10 R2 K18 ["PureComponent"]
       61 LOADK                            R12 K19 ["NoResultsDetail"]
       62 NAMECALL                         R10 R10 K20 ["extend"]
       64 CALL                             R10 2 1
       65 DUPCLOSURE                       R11 K21 [PROTO_1]
       66 SETTABLEKS                       R11 R10 K22 ["init"]
       68 DUPCLOSURE                       R11 K23 [PROTO_2]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R11 R10 K24 ["render"]
       76 MOVE                             R11 R9
       77 DUPTABLE                         R12 K26 [{"Stylizer"}]
       78 GETTABLEKS                       R13 R8 K25 ["Stylizer"]
       80 SETTABLEKS                       R13 R12 K25 ["Stylizer"]
       82 CALL                             R11 1 1
       83 MOVE                             R12 R10
       84 CALL                             R11 1 1
       85 MOVE                             R10 R11
       86 RETURN                           R10 1
