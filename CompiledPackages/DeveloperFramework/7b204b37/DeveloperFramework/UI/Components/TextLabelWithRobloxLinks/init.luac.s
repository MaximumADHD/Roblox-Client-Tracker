PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnClickLink"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["OnClickLink"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"linkifyItems"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["linkifyItems"]
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K1 ["Text"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R2 R2 K2 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"linkifyItems"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["linkifyItems"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R1 R0 K3 ["onClickLink"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R1 R0 K4 ["createLinkifiedItems"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["createLinkifiedItems"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Text"]
        4 GETTABLEKS                       R4 R2 K1 ["Text"]
        6 JUMPIFEQ                         R3 R4 ; [+4]
        8 GETTABLEKS                       R3 R0 K2 ["createLinkifiedItems"]
       10 CALL                             R3 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClickLink"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R5 R1 K3 ["Font"]
        9 GETTABLEKS                       R6 R3 K3 ["Font"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R6 R1 K4 ["TextSize"]
       15 GETTABLEKS                       R7 R3 K4 ["TextSize"]
       17 CALL                             R5 2 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R7 R1 K5 ["TextColor"]
       21 GETTABLEKS                       R8 R3 K5 ["TextColor"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R8 R1 K6 ["TextXAlignment"]
       27 GETTABLEKS                       R9 R3 K6 ["TextXAlignment"]
       29 CALL                             R7 2 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R9 R1 K7 ["TextYAlignment"]
       33 GETTABLEKS                       R10 R3 K7 ["TextYAlignment"]
       35 CALL                             R8 2 1
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K8 ["new"]
       39 CALL                             R9 0 1
       40 NEWTABLE                         R10 0 0
       42 GETIMPORT                        R11 K10 [pairs]
       44 GETTABLEKS                       R12 R2 K11 ["linkifyItems"]
       46 CALL                             R11 1 3
       47 FORGPREP_NEXT                    R11
       48 GETTABLEKS                       R16 R15 K12 ["IsLink"]
       50 JUMPIFNOT                        R16 ; [+64]
       51 GETTABLEKS                       R17 R15 K13 ["UrlInfo"]
       53 GETTABLEKS                       R16 R17 K14 ["Link"]
       55 GETUPVAL                         R18 2
       56 GETTABLEKS                       R17 R18 K15 ["createElement"]
       58 GETUPVAL                         R18 3
       59 DUPTABLE                         R19 K23 [{"key", "Font", "LayoutOrder", "Size", "Text", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment", "OnClick"}]
       60 GETUPVAL                         R21 4
       61 JUMPIFNOT                        R21 ; [+8]
       62 GETUPVAL                         R21 5
       63 JUMPIFNOT                        R21 ; [+6]
       64 FASTCALL1                        TOSTRING R14 ; [+3]
       65 MOVE                             R21 R14
       66 GETIMPORT                        R20 K25 [tostring]
       68 CALL                             R20 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R20
       71 SETTABLEKS                       R20 R19 K16 ["key"]
       73 SETTABLEKS                       R4 R19 K3 ["Font"]
       75 NAMECALL                         R20 R9 K26 ["getNextOrder"]
       77 CALL                             R20 1 1
       78 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
       80 GETIMPORT                        R20 K28 [UDim2.new]
       82 LOADN                            R21 1
       83 LOADN                            R22 0
       84 LOADN                            R23 0
       85 LOADN                            R24 0
       86 CALL                             R20 4 1
       87 SETTABLEKS                       R20 R19 K18 ["Size"]
       89 GETTABLEKS                       R20 R15 K19 ["Text"]
       91 SETTABLEKS                       R20 R19 K19 ["Text"]
       93 SETTABLEKS                       R5 R19 K4 ["TextSize"]
       95 GETTABLEKS                       R20 R1 K20 ["TextTruncate"]
       97 SETTABLEKS                       R20 R19 K20 ["TextTruncate"]
       99 GETTABLEKS                       R20 R1 K21 ["TextWrapped"]
      101 SETTABLEKS                       R20 R19 K21 ["TextWrapped"]
      103 SETTABLEKS                       R7 R19 K6 ["TextXAlignment"]
      105 SETTABLEKS                       R8 R19 K7 ["TextYAlignment"]
      107 NEWCLOSURE                       R20 P0
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R16
      110 SETTABLEKS                       R20 R19 K22 ["OnClick"]
      112 CALL                             R17 2 1
      113 SETTABLE                         R17 R10 R14
      114 JUMP                             ; [+64]
      115 GETUPVAL                         R17 2
      116 GETTABLEKS                       R16 R17 K15 ["createElement"]
      118 GETUPVAL                         R17 6
      119 DUPTABLE                         R18 K31 [{"key", "AutomaticSize", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      120 GETUPVAL                         R20 4
      121 JUMPIFNOT                        R20 ; [+8]
      122 GETUPVAL                         R20 5
      123 JUMPIFNOT                        R20 ; [+6]
      124 FASTCALL1                        TOSTRING R14 ; [+3]
      125 MOVE                             R20 R14
      126 GETIMPORT                        R19 K25 [tostring]
      128 CALL                             R19 1 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R19
      131 SETTABLEKS                       R19 R18 K16 ["key"]
      133 GETIMPORT                        R19 K34 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R19 R18 K29 ["AutomaticSize"]
      137 SETTABLEKS                       R4 R18 K3 ["Font"]
      139 NAMECALL                         R19 R9 K26 ["getNextOrder"]
      141 CALL                             R19 1 1
      142 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      144 GETTABLEKS                       R19 R1 K30 ["RichText"]
      146 SETTABLEKS                       R19 R18 K30 ["RichText"]
      148 GETIMPORT                        R19 K28 [UDim2.new]
      150 LOADN                            R20 1
      151 LOADN                            R21 0
      152 LOADN                            R22 0
      153 LOADN                            R23 0
      154 CALL                             R19 4 1
      155 SETTABLEKS                       R19 R18 K18 ["Size"]
      157 GETTABLEKS                       R19 R15 K19 ["Text"]
      159 SETTABLEKS                       R19 R18 K19 ["Text"]
      161 SETTABLEKS                       R6 R18 K5 ["TextColor"]
      163 SETTABLEKS                       R5 R18 K4 ["TextSize"]
      165 GETTABLEKS                       R19 R1 K20 ["TextTruncate"]
      167 SETTABLEKS                       R19 R18 K20 ["TextTruncate"]
      169 GETTABLEKS                       R19 R1 K21 ["TextWrapped"]
      171 SETTABLEKS                       R19 R18 K21 ["TextWrapped"]
      173 SETTABLEKS                       R7 R18 K6 ["TextXAlignment"]
      175 SETTABLEKS                       R8 R18 K7 ["TextYAlignment"]
      177 CALL                             R16 2 1
      178 SETTABLE                         R16 R10 R14
      179 FORGLOOP                         R11 2 ; [-132]
      181 GETUPVAL                         R12 2
      182 GETTABLEKS                       R11 R12 K15 ["createElement"]
      184 GETUPVAL                         R12 7
      185 DUPTABLE                         R13 K41 [{"AutomaticSize", "ClipsDescendants", "HorizontalAlignment", "Layout", "LayoutOrder", "Position", "Size", "Spacing", "VerticalAlignment"}]
      186 GETTABLEKS                       R14 R1 K29 ["AutomaticSize"]
      188 SETTABLEKS                       R14 R13 K29 ["AutomaticSize"]
      190 GETTABLEKS                       R14 R1 K35 ["ClipsDescendants"]
      192 SETTABLEKS                       R14 R13 K35 ["ClipsDescendants"]
      194 GETTABLEKS                       R14 R1 K36 ["HorizontalAlignment"]
      196 SETTABLEKS                       R14 R13 K36 ["HorizontalAlignment"]
      198 GETIMPORT                        R14 K44 [Enum.FillDirection.Vertical]
      200 SETTABLEKS                       R14 R13 K37 ["Layout"]
      202 GETTABLEKS                       R14 R1 K17 ["LayoutOrder"]
      204 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      206 GETTABLEKS                       R14 R1 K38 ["Position"]
      208 SETTABLEKS                       R14 R13 K38 ["Position"]
      210 GETTABLEKS                       R14 R1 K18 ["Size"]
      212 SETTABLEKS                       R14 R13 K18 ["Size"]
      214 GETTABLEKS                       R14 R3 K39 ["Spacing"]
      216 SETTABLEKS                       R14 R13 K39 ["Spacing"]
      218 GETTABLEKS                       R14 R1 K40 ["VerticalAlignment"]
      220 SETTABLEKS                       R14 R13 K40 ["VerticalAlignment"]
      222 MOVE                             R14 R10
      223 CALL                             R11 3 -1
      224 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R5 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R5 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETTABLEKS                       R5 R1 K6 ["UI"]
       33 GETIMPORT                        R6 K10 [require]
       35 GETTABLEKS                       R8 R5 K14 ["Components"]
       37 GETTABLEKS                       R7 R8 K15 ["Pane"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K10 [require]
       42 GETTABLEKS                       R9 R5 K14 ["Components"]
       44 GETTABLEKS                       R8 R9 K16 ["LinkText"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K10 [require]
       49 GETTABLEKS                       R10 R5 K14 ["Components"]
       51 GETTABLEKS                       R9 R10 K17 ["TextLabel"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R1 K18 ["Util"]
       56 GETIMPORT                        R10 K10 [require]
       58 GETTABLEKS                       R11 R9 K19 ["getRobloxLinksFromString"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K10 [require]
       63 GETTABLEKS                       R12 R9 K20 ["LayoutOrderIterator"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K10 [require]
       68 GETTABLEKS                       R13 R9 K21 ["prioritize"]
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R13 R2 K22 ["PureComponent"]
       73 LOADK                            R15 K23 ["TextLabelWithRobloxLinks"]
       74 NAMECALL                         R13 R13 K24 ["extend"]
       76 CALL                             R13 2 1
       77 GETIMPORT                        R14 K10 [require]
       79 GETTABLEKS                       R16 R1 K25 ["SharedFlags"]
       81 GETTABLEKS                       R15 R16 K26 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       83 CALL                             R14 1 1
       84 CALL                             R14 0 1
       85 GETIMPORT                        R15 K10 [require]
       87 GETTABLEKS                       R17 R1 K18 ["Util"]
       89 GETTABLEKS                       R16 R17 K27 ["isRoact17"]
       91 CALL                             R15 1 1
       92 MOVE                             R16 R2
       93 CALL                             R15 1 1
       94 DUPTABLE                         R16 K30 [{"HorizontalAlignment", "TextXAlignment"}]
       95 GETIMPORT                        R17 K33 [Enum.HorizontalAlignment.Left]
       97 SETTABLEKS                       R17 R16 K28 ["HorizontalAlignment"]
       99 GETIMPORT                        R17 K34 [Enum.TextXAlignment.Left]
      101 SETTABLEKS                       R17 R16 K29 ["TextXAlignment"]
      103 SETTABLEKS                       R16 R13 K35 ["defaultProps"]
      105 DUPCLOSURE                       R16 K36 [PROTO_3]
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R10
      108 SETTABLEKS                       R16 R13 K37 ["init"]
      110 DUPCLOSURE                       R16 K38 [PROTO_4]
      111 SETTABLEKS                       R16 R13 K39 ["didMount"]
      113 DUPCLOSURE                       R16 K40 [PROTO_5]
      114 SETTABLEKS                       R16 R13 K41 ["didUpdate"]
      116 DUPCLOSURE                       R16 K42 [PROTO_7]
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R16 R13 K43 ["render"]
      127 MOVE                             R16 R4
      128 DUPTABLE                         R17 K45 [{"Stylizer"}]
      129 GETTABLEKS                       R18 R3 K44 ["Stylizer"]
      131 SETTABLEKS                       R18 R17 K44 ["Stylizer"]
      133 CALL                             R16 1 1
      134 MOVE                             R17 R13
      135 CALL                             R16 1 1
      136 MOVE                             R13 R16
      137 RETURN                           R13 1
