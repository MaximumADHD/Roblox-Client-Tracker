PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R2 K1 ["X"]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K3 [{"maxChildWidth"}]
        6 SETTABLEKS                       R1 R4 K2 ["maxChildWidth"]
        8 NAMECALL                         R2 R2 K4 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"maxChildWidth"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["maxChildWidth"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["updateSize"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["interface"]
        5 DUPTABLE                         R4 K4 [{"content", "onLinkClicked"}]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["interface"]
        9 DUPTABLE                         R6 K8 [{"TextLine1", "TextLine2", "LinkText"}]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K9 ["string"]
       13 SETTABLEKS                       R7 R6 K5 ["TextLine1"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K9 ["string"]
       18 SETTABLEKS                       R7 R6 K6 ["TextLine2"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K9 ["string"]
       23 SETTABLEKS                       R7 R6 K7 ["LinkText"]
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K2 ["content"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K10 ["callback"]
       31 SETTABLEKS                       R5 R4 K3 ["onLinkClicked"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R1
       35 CALL                             R3 1 -1
       36 FASTCALL                         ASSERT ; [+2]
       37 GETIMPORT                        R2 K12 [assert]
       39 CALL                             R2 -1 0
       40 GETTABLEKS                       R2 R1 K13 ["Stylizer"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R3 R4 K14 ["FONT_SIZE_MEDIUM"]
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
       75 DUPTABLE                         R9 K27 [{"TextProps", "LinkPlaceholder", "LinkText", "OnLinkClicked", "MaxWidth"}]
       76 DUPTABLE                         R10 K36 [{"TextColor", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "ClipsDescendants"}]
       77 GETTABLEKS                       R11 R8 K37 ["textColor"]
       79 SETTABLEKS                       R11 R10 K28 ["TextColor"]
       81 LOADN                            R11 1
       82 SETTABLEKS                       R11 R10 K29 ["BackgroundTransparency"]
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R11 R12 K38 ["FONT"]
       87 SETTABLEKS                       R11 R10 K30 ["Font"]
       89 SETTABLEKS                       R3 R10 K31 ["TextSize"]
       91 GETIMPORT                        R11 K41 [Enum.TextXAlignment.Center]
       93 SETTABLEKS                       R11 R10 K32 ["TextXAlignment"]
       95 GETIMPORT                        R11 K42 [Enum.TextYAlignment.Center]
       97 SETTABLEKS                       R11 R10 K33 ["TextYAlignment"]
       99 LOADB                            R11 1
      100 SETTABLEKS                       R11 R10 K34 ["TextWrapped"]
      102 LOADB                            R11 1
      103 SETTABLEKS                       R11 R10 K35 ["ClipsDescendants"]
      105 SETTABLEKS                       R10 R9 K23 ["TextProps"]
      107 LOADK                            R10 K43 ["{link}"]
      108 SETTABLEKS                       R10 R9 K24 ["LinkPlaceholder"]
      110 GETTABLEKS                       R10 R4 K7 ["LinkText"]
      112 SETTABLEKS                       R10 R9 K7 ["LinkText"]
      114 GETTABLEKS                       R10 R1 K3 ["onLinkClicked"]
      116 SETTABLEKS                       R10 R9 K25 ["OnLinkClicked"]
      118 GETTABLEKS                       R11 R0 K44 ["state"]
      120 GETTABLEKS                       R10 R11 K45 ["maxChildWidth"]
      122 SETTABLEKS                       R10 R9 K26 ["MaxWidth"]
      124 GETUPVAL                         R11 2
      125 GETTABLEKS                       R10 R11 K46 ["createElement"]
      127 LOADK                            R11 K47 ["Frame"]
      128 NEWTABLE                         R12 8 0
      130 SETTABLEKS                       R5 R12 K15 ["Position"]
      132 GETIMPORT                        R13 K18 [UDim2.new]
      134 LOADN                            R14 1
      135 LOADN                            R15 0
      136 LOADN                            R16 1
      137 LOADN                            R17 0
      138 CALL                             R13 4 1
      139 SETTABLEKS                       R13 R12 K48 ["Size"]
      141 LOADN                            R13 1
      142 SETTABLEKS                       R13 R12 K29 ["BackgroundTransparency"]
      144 SETTABLEKS                       R6 R12 K20 ["ZIndex"]
      146 SETTABLEKS                       R7 R12 K21 ["Visible"]
      148 GETUPVAL                         R15 2
      149 GETTABLEKS                       R14 R15 K49 ["Change"]
      151 GETTABLEKS                       R13 R14 K50 ["AbsoluteSize"]
      153 GETTABLEKS                       R14 R0 K51 ["updateSize"]
      155 SETTABLE                         R14 R12 R13
      156 DUPTABLE                         R13 K53 [{"Layout", "TextLine1", "TextLine2"}]
      157 GETUPVAL                         R15 2
      158 GETTABLEKS                       R14 R15 K46 ["createElement"]
      160 LOADK                            R15 K54 ["UIListLayout"]
      161 DUPTABLE                         R16 K58 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
      162 GETIMPORT                        R17 K60 [Enum.SortOrder.LayoutOrder]
      164 SETTABLEKS                       R17 R16 K55 ["SortOrder"]
      166 GETIMPORT                        R17 K62 [Enum.FillDirection.Vertical]
      168 SETTABLEKS                       R17 R16 K56 ["FillDirection"]
      170 GETIMPORT                        R17 K63 [Enum.HorizontalAlignment.Center]
      172 SETTABLEKS                       R17 R16 K57 ["HorizontalAlignment"]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K52 ["Layout"]
      177 GETUPVAL                         R15 2
      178 GETTABLEKS                       R14 R15 K46 ["createElement"]
      180 GETUPVAL                         R15 3
      181 GETUPVAL                         R18 4
      182 GETTABLEKS                       R17 R18 K64 ["Dictionary"]
      184 GETTABLEKS                       R16 R17 K65 ["join"]
      186 DUPTABLE                         R17 K67 [{"Text", "LayoutOrder"}]
      187 GETTABLEKS                       R18 R4 K5 ["TextLine1"]
      189 SETTABLEKS                       R18 R17 K66 ["Text"]
      191 LOADN                            R18 1
      192 SETTABLEKS                       R18 R17 K59 ["LayoutOrder"]
      194 MOVE                             R18 R9
      195 CALL                             R16 2 -1
      196 CALL                             R14 -1 1
      197 SETTABLEKS                       R14 R13 K5 ["TextLine1"]
      199 GETUPVAL                         R15 2
      200 GETTABLEKS                       R14 R15 K46 ["createElement"]
      202 GETUPVAL                         R15 3
      203 GETUPVAL                         R18 4
      204 GETTABLEKS                       R17 R18 K64 ["Dictionary"]
      206 GETTABLEKS                       R16 R17 K65 ["join"]
      208 DUPTABLE                         R17 K67 [{"Text", "LayoutOrder"}]
      209 GETTABLEKS                       R18 R4 K6 ["TextLine2"]
      211 SETTABLEKS                       R18 R17 K66 ["Text"]
      213 LOADN                            R18 2
      214 SETTABLEKS                       R18 R17 K59 ["LayoutOrder"]
      216 MOVE                             R18 R9
      217 CALL                             R16 2 -1
      218 CALL                             R14 -1 1
      219 SETTABLEKS                       R14 R13 K6 ["TextLine2"]
      221 CALL                             R10 3 -1
      222 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R7 K5 [require]
       23 GETTABLEKS                       R8 R1 K8 ["Framework"]
       25 CALL                             R7 1 1
       26 GETTABLEKS                       R6 R7 K9 ["Util"]
       28 GETTABLEKS                       R5 R6 K10 ["Typecheck"]
       30 GETTABLEKS                       R4 R5 K11 ["t"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R8 K9 ["Util"]
       38 GETTABLEKS                       R6 R7 K13 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R1 K8 ["Framework"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R7 R8 K14 ["UI"]
       48 GETTABLEKS                       R6 R7 K15 ["TextWithInlineLink"]
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
