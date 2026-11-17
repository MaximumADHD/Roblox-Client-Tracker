PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["enteredText"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["textBoxRef"]
        8 GETTABLEKS                       R0 R0 K5 ["current"]
       10 JUMPIFNOT                        R0 ; [+8]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["textBoxRef"]
       14 GETTABLEKS                       R0 R0 K5 ["current"]
       16 NAMECALL                         R0 R0 K6 ["CaptureFocus"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Get"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["enteredText"]
       11 NAMECALL                         R2 R2 K3 ["AddTag"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R1 K4 ["openTagMenu"]
       16 LOADNIL                          R3
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K8 [{["editing"] = False, ["enteredText"] = ""}]
       20 NAMECALL                         R2 R2 K9 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 DUPTABLE                         R1 K7 [{["enteredText"] = "", ["editing"] = False, ["hovered"] = False}]
        7 SETTABLEKS                       R1 R0 K8 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K9 ["onTextChanged"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K10 ["beginEditing"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R1 R0 K11 ["endEditing"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["NewTagTextInput"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R6 R1 K6 ["WidthOffset"]
       14 ORK                              R5 R6 K5 [0]
       15 LOADNIL                          R6
       16 GETTABLEKS                       R7 R0 K7 ["state"]
       18 GETTABLEKS                       R7 R7 K8 ["hovered"]
       20 JUMPIFNOT                        R7 ; [+6]
       21 GETTABLEKS                       R7 R0 K7 ["state"]
       23 GETTABLEKS                       R7 R7 K9 ["editing"]
       25 JUMPIF                           R7 ; [+1]
       26 LOADK                            R6 K10 ["ButtonHover"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K11 ["createElement"]
       30 GETUPVAL                         R8 2
       31 DUPTABLE                         R9 K14 [{"Size", "LayoutOrder"}]
       32 GETTABLEKS                       R11 R0 K7 ["state"]
       34 GETTABLEKS                       R11 R11 K9 ["editing"]
       36 JUMPIFNOT                        R11 ; [+3]
       37 GETTABLEKS                       R10 R2 K15 ["EditingSize"]
       39 JUMP                             ; [+8]
       40 GETIMPORT                        R10 K17 [UDim2.new]
       42 LOADN                            R11 1
       43 MINUS                            R12 R5
       44 LOADN                            R13 0
       45 GETTABLEKS                       R14 R2 K18 ["Height"]
       47 CALL                             R10 4 1
       48 SETTABLEKS                       R10 R9 K12 ["Size"]
       50 GETTABLEKS                       R10 R1 K13 ["LayoutOrder"]
       52 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       54 DUPTABLE                         R10 K21 [{"HoverArea", "Pane"}]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R11 R11 K11 ["createElement"]
       58 GETUPVAL                         R12 3
       59 DUPTABLE                         R13 K26 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
       60 NEWCLOSURE                       R14 P0
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R14 R13 K24 ["MouseEnter"]
       64 NEWCLOSURE                       R14 P1
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R14 R13 K25 ["MouseLeave"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K19 ["HoverArea"]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K11 ["createElement"]
       74 GETUPVAL                         R12 2
       75 DUPTABLE                         R13 K34 [{["Layout"], ["HorizontalAlignment"], ["OnClick"], ["Spacing"], ["ClipsDescendants"] = True, ["Style"]}]
       76 GETIMPORT                        R14 K38 [Enum.FillDirection.Horizontal]
       78 SETTABLEKS                       R14 R13 K27 ["Layout"]
       80 GETIMPORT                        R14 K40 [Enum.HorizontalAlignment.Left]
       82 SETTABLEKS                       R14 R13 K28 ["HorizontalAlignment"]
       84 GETTABLEKS                       R14 R0 K41 ["beginEditing"]
       86 SETTABLEKS                       R14 R13 K29 ["OnClick"]
       88 GETTABLEKS                       R14 R2 K30 ["Spacing"]
       90 SETTABLEKS                       R14 R13 K30 ["Spacing"]
       92 SETTABLEKS                       R6 R13 K33 ["Style"]
       94 DUPTABLE                         R14 K45 [{"AddIcon", "TextLabel", "TextInput"}]
       95 GETUPVAL                         R15 1
       96 GETTABLEKS                       R15 R15 K11 ["createElement"]
       98 GETUPVAL                         R16 4
       99 DUPTABLE                         R17 K49 [{["LayoutOrder"], ["Size"], ["Image"] = "rbxasset://textures/TagEditor/Insert.png", ["ImageColor3"]}]
      100 NAMECALL                         R18 R4 K50 ["getNextOrder"]
      102 CALL                             R18 1 1
      103 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      105 GETTABLEKS                       R18 R2 K51 ["IconSize"]
      107 SETTABLEKS                       R18 R17 K12 ["Size"]
      109 GETTABLEKS                       R19 R0 K7 ["state"]
      111 GETTABLEKS                       R19 R19 K8 ["hovered"]
      113 JUMPIFNOT                        R19 ; [+3]
      114 GETTABLEKS                       R18 R2 K52 ["IconColorHover"]
      116 JUMP                             ; [+2]
      117 GETTABLEKS                       R18 R2 K53 ["IconColor"]
      119 SETTABLEKS                       R18 R17 K48 ["ImageColor3"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K42 ["AddIcon"]
      124 GETTABLEKS                       R16 R0 K7 ["state"]
      126 GETTABLEKS                       R16 R16 K9 ["editing"]
      128 NOT                              R15 R16
      129 JUMPIFNOT                        R15 ; [+36]
      130 GETUPVAL                         R15 1
      131 GETTABLEKS                       R15 R15 K11 ["createElement"]
      133 GETUPVAL                         R16 5
      134 DUPTABLE                         R17 K56 [{"Size", "Style", "LayoutOrder", "Text", "TextXAlignment"}]
      135 GETTABLEKS                       R18 R2 K57 ["TextInputSize"]
      137 SETTABLEKS                       R18 R17 K12 ["Size"]
      139 GETTABLEKS                       R19 R0 K7 ["state"]
      141 GETTABLEKS                       R19 R19 K8 ["hovered"]
      143 JUMPIFNOT                        R19 ; [+2]
      144 LOADK                            R18 K58 ["ButtonTextHover"]
      145 JUMP                             ; [+1]
      146 LOADK                            R18 K59 ["ButtonText"]
      147 SETTABLEKS                       R18 R17 K33 ["Style"]
      149 NAMECALL                         R18 R4 K50 ["getNextOrder"]
      151 CALL                             R18 1 1
      152 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      154 LOADK                            R20 K60 ["Info"]
      155 LOADK                            R21 K61 ["CreateNewTag"]
      156 NAMECALL                         R18 R3 K62 ["getText"]
      158 CALL                             R18 3 1
      159 SETTABLEKS                       R18 R17 K54 ["Text"]
      161 GETIMPORT                        R18 K63 [Enum.TextXAlignment.Left]
      163 SETTABLEKS                       R18 R17 K55 ["TextXAlignment"]
      165 CALL                             R15 2 1
      166 SETTABLEKS                       R15 R14 K43 ["TextLabel"]
      168 GETTABLEKS                       R15 R0 K7 ["state"]
      170 GETTABLEKS                       R15 R15 K9 ["editing"]
      172 JUMPIFNOT                        R15 ; [+34]
      173 GETUPVAL                         R15 1
      174 GETTABLEKS                       R15 R15 K11 ["createElement"]
      176 GETUPVAL                         R16 6
      177 DUPTABLE                         R17 K69 [{["Size"], ["LayoutOrder"], ["ShouldFocus"] = True, ["ForwardRef"], ["PlaceholderText"], ["OnTextChanged"], ["OnFocusLost"]}]
      178 GETTABLEKS                       R18 R2 K57 ["TextInputSize"]
      180 SETTABLEKS                       R18 R17 K12 ["Size"]
      182 NAMECALL                         R18 R4 K50 ["getNextOrder"]
      184 CALL                             R18 1 1
      185 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      187 GETTABLEKS                       R18 R0 K70 ["textBoxRef"]
      189 SETTABLEKS                       R18 R17 K65 ["ForwardRef"]
      191 LOADK                            R20 K60 ["Info"]
      192 LOADK                            R21 K61 ["CreateNewTag"]
      193 NAMECALL                         R18 R3 K62 ["getText"]
      195 CALL                             R18 3 1
      196 SETTABLEKS                       R18 R17 K66 ["PlaceholderText"]
      198 GETTABLEKS                       R18 R0 K71 ["onTextChanged"]
      200 SETTABLEKS                       R18 R17 K67 ["OnTextChanged"]
      202 GETTABLEKS                       R18 R0 K72 ["endEditing"]
      204 SETTABLEKS                       R18 R17 K68 ["OnFocusLost"]
      206 CALL                             R15 2 1
      207 SETTABLEKS                       R15 R14 K44 ["TextInput"]
      209 CALL                             R11 3 1
      210 SETTABLEKS                       R11 R10 K20 ["Pane"]
      212 CALL                             R7 3 -1
      213 RETURN                           R7 -1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenTagMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"openTagMenu"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["openTagMenu"]
        6 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["HoverArea"]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 GETTABLEKS                       R8 R5 K13 ["DEPRECATED_TextInput"]
       40 GETTABLEKS                       R9 R5 K14 ["Image"]
       42 GETTABLEKS                       R10 R5 K15 ["TextLabel"]
       44 GETTABLEKS                       R11 R3 K16 ["Util"]
       46 GETTABLEKS                       R12 R11 K17 ["LayoutOrderIterator"]
       48 GETIMPORT                        R13 K4 [require]
       50 GETTABLEKS                       R14 R0 K18 ["Src"]
       52 GETTABLEKS                       R14 R14 K19 ["Actions"]
       54 CALL                             R13 1 1
       55 GETIMPORT                        R14 K4 [require]
       57 GETTABLEKS                       R15 R0 K18 ["Src"]
       59 GETTABLEKS                       R15 R15 K20 ["TagManager"]
       61 CALL                             R14 1 1
       62 GETTABLEKS                       R15 R1 K21 ["Component"]
       64 LOADK                            R17 K22 ["NewTagTextInput"]
       65 NAMECALL                         R15 R15 K23 ["extend"]
       67 CALL                             R15 2 1
       68 DUPCLOSURE                       R16 K24 [PROTO_3]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R14
       71 SETTABLEKS                       R16 R15 K25 ["init"]
       73 DUPCLOSURE                       R16 K26 [PROTO_6]
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R16 R15 K27 ["render"]
       83 GETTABLEKS                       R16 R4 K28 ["withContext"]
       85 DUPTABLE                         R17 K31 [{"Stylizer", "Localization"}]
       86 GETTABLEKS                       R18 R4 K29 ["Stylizer"]
       88 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       90 GETTABLEKS                       R18 R4 K30 ["Localization"]
       92 SETTABLEKS                       R18 R17 K30 ["Localization"]
       94 CALL                             R16 1 1
       95 MOVE                             R17 R15
       96 CALL                             R16 1 1
       97 MOVE                             R15 R16
       98 DUPCLOSURE                       R16 K32 [PROTO_7]
       99 DUPCLOSURE                       R17 K33 [PROTO_9]
      100 CAPTURE                          VAL R13
      101 GETTABLEKS                       R18 R2 K34 ["connect"]
      103 MOVE                             R19 R16
      104 MOVE                             R20 R17
      105 CALL                             R18 2 1
      106 MOVE                             R19 R15
      107 CALL                             R18 1 -1
      108 RETURN                           R18 -1
