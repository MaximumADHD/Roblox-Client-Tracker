PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["enteredText"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"editing"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["editing"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["textBoxRef"]
       11 GETTABLEKS                       R0 R1 K4 ["current"]
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["textBoxRef"]
       17 GETTABLEKS                       R0 R1 K4 ["current"]
       19 NAMECALL                         R0 R0 K5 ["CaptureFocus"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Get"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["enteredText"]
       11 NAMECALL                         R2 R2 K3 ["AddTag"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R1 K4 ["openTagMenu"]
       16 LOADNIL                          R3
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K6 [{"editing", "enteredText"}]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K5 ["editing"]
       23 LOADK                            R5 K7 [""]
       24 SETTABLEKS                       R5 R4 K2 ["enteredText"]
       26 NAMECALL                         R2 R2 K8 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 DUPTABLE                         R1 K5 [{"enteredText", "editing", "hovered"}]
        7 LOADK                            R2 K6 [""]
        8 SETTABLEKS                       R2 R1 K2 ["enteredText"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["editing"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["hovered"]
       16 SETTABLEKS                       R1 R0 K7 ["state"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K8 ["onTextChanged"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K9 ["beginEditing"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K10 ["endEditing"]
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["NewTagTextInput"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R6 R1 K6 ["WidthOffset"]
       14 ORK                              R5 R6 K5 [0]
       15 LOADNIL                          R6
       16 GETTABLEKS                       R8 R0 K7 ["state"]
       18 GETTABLEKS                       R7 R8 K8 ["hovered"]
       20 JUMPIFNOT                        R7 ; [+6]
       21 GETTABLEKS                       R8 R0 K7 ["state"]
       23 GETTABLEKS                       R7 R8 K9 ["editing"]
       25 JUMPIF                           R7 ; [+1]
       26 LOADK                            R6 K10 ["ButtonHover"]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K11 ["createElement"]
       30 GETUPVAL                         R8 2
       31 DUPTABLE                         R9 K14 [{"Size", "LayoutOrder"}]
       32 GETTABLEKS                       R12 R0 K7 ["state"]
       34 GETTABLEKS                       R11 R12 K9 ["editing"]
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
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R11 R12 K11 ["createElement"]
       58 GETUPVAL                         R12 3
       59 DUPTABLE                         R13 K25 [{"Cursor", "MouseEnter", "MouseLeave"}]
       60 LOADK                            R14 K26 ["PointingHand"]
       61 SETTABLEKS                       R14 R13 K22 ["Cursor"]
       63 NEWCLOSURE                       R14 P0
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R14 R13 K23 ["MouseEnter"]
       67 NEWCLOSURE                       R14 P1
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R14 R13 K24 ["MouseLeave"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K19 ["HoverArea"]
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R11 R12 K11 ["createElement"]
       77 GETUPVAL                         R12 2
       78 DUPTABLE                         R13 K33 [{"Layout", "HorizontalAlignment", "OnClick", "Spacing", "ClipsDescendants", "Style"}]
       79 GETIMPORT                        R14 K37 [Enum.FillDirection.Horizontal]
       81 SETTABLEKS                       R14 R13 K27 ["Layout"]
       83 GETIMPORT                        R14 K39 [Enum.HorizontalAlignment.Left]
       85 SETTABLEKS                       R14 R13 K28 ["HorizontalAlignment"]
       87 GETTABLEKS                       R14 R0 K40 ["beginEditing"]
       89 SETTABLEKS                       R14 R13 K29 ["OnClick"]
       91 GETTABLEKS                       R14 R2 K30 ["Spacing"]
       93 SETTABLEKS                       R14 R13 K30 ["Spacing"]
       95 LOADB                            R14 1
       96 SETTABLEKS                       R14 R13 K31 ["ClipsDescendants"]
       98 SETTABLEKS                       R6 R13 K32 ["Style"]
      100 DUPTABLE                         R14 K44 [{"AddIcon", "TextLabel", "TextInput"}]
      101 GETUPVAL                         R16 1
      102 GETTABLEKS                       R15 R16 K11 ["createElement"]
      104 GETUPVAL                         R16 4
      105 DUPTABLE                         R17 K47 [{"LayoutOrder", "Size", "Image", "ImageColor3"}]
      106 NAMECALL                         R18 R4 K48 ["getNextOrder"]
      108 CALL                             R18 1 1
      109 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      111 GETTABLEKS                       R18 R2 K49 ["IconSize"]
      113 SETTABLEKS                       R18 R17 K12 ["Size"]
      115 LOADK                            R18 K50 ["rbxasset://textures/TagEditor/Insert.png"]
      116 SETTABLEKS                       R18 R17 K45 ["Image"]
      118 GETTABLEKS                       R20 R0 K7 ["state"]
      120 GETTABLEKS                       R19 R20 K8 ["hovered"]
      122 JUMPIFNOT                        R19 ; [+3]
      123 GETTABLEKS                       R18 R2 K51 ["IconColorHover"]
      125 JUMP                             ; [+2]
      126 GETTABLEKS                       R18 R2 K52 ["IconColor"]
      128 SETTABLEKS                       R18 R17 K46 ["ImageColor3"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K41 ["AddIcon"]
      133 GETTABLEKS                       R17 R0 K7 ["state"]
      135 GETTABLEKS                       R16 R17 K9 ["editing"]
      137 NOT                              R15 R16
      138 JUMPIFNOT                        R15 ; [+36]
      139 GETUPVAL                         R16 1
      140 GETTABLEKS                       R15 R16 K11 ["createElement"]
      142 GETUPVAL                         R16 5
      143 DUPTABLE                         R17 K55 [{"Size", "Style", "LayoutOrder", "Text", "TextXAlignment"}]
      144 GETTABLEKS                       R18 R2 K56 ["TextInputSize"]
      146 SETTABLEKS                       R18 R17 K12 ["Size"]
      148 GETTABLEKS                       R20 R0 K7 ["state"]
      150 GETTABLEKS                       R19 R20 K8 ["hovered"]
      152 JUMPIFNOT                        R19 ; [+2]
      153 LOADK                            R18 K57 ["ButtonTextHover"]
      154 JUMP                             ; [+1]
      155 LOADK                            R18 K58 ["ButtonText"]
      156 SETTABLEKS                       R18 R17 K32 ["Style"]
      158 NAMECALL                         R18 R4 K48 ["getNextOrder"]
      160 CALL                             R18 1 1
      161 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      163 LOADK                            R20 K59 ["Info"]
      164 LOADK                            R21 K60 ["CreateNewTag"]
      165 NAMECALL                         R18 R3 K61 ["getText"]
      167 CALL                             R18 3 1
      168 SETTABLEKS                       R18 R17 K53 ["Text"]
      170 GETIMPORT                        R18 K62 [Enum.TextXAlignment.Left]
      172 SETTABLEKS                       R18 R17 K54 ["TextXAlignment"]
      174 CALL                             R15 2 1
      175 SETTABLEKS                       R15 R14 K42 ["TextLabel"]
      177 GETTABLEKS                       R16 R0 K7 ["state"]
      179 GETTABLEKS                       R15 R16 K9 ["editing"]
      181 JUMPIFNOT                        R15 ; [+37]
      182 GETUPVAL                         R16 1
      183 GETTABLEKS                       R15 R16 K11 ["createElement"]
      185 GETUPVAL                         R16 6
      186 DUPTABLE                         R17 K68 [{"Size", "LayoutOrder", "ShouldFocus", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
      187 GETTABLEKS                       R18 R2 K56 ["TextInputSize"]
      189 SETTABLEKS                       R18 R17 K12 ["Size"]
      191 NAMECALL                         R18 R4 K48 ["getNextOrder"]
      193 CALL                             R18 1 1
      194 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      196 LOADB                            R18 1
      197 SETTABLEKS                       R18 R17 K63 ["ShouldFocus"]
      199 GETTABLEKS                       R18 R0 K69 ["textBoxRef"]
      201 SETTABLEKS                       R18 R17 K64 ["ForwardRef"]
      203 LOADK                            R20 K59 ["Info"]
      204 LOADK                            R21 K60 ["CreateNewTag"]
      205 NAMECALL                         R18 R3 K61 ["getText"]
      207 CALL                             R18 3 1
      208 SETTABLEKS                       R18 R17 K65 ["PlaceholderText"]
      210 GETTABLEKS                       R18 R0 K70 ["onTextChanged"]
      212 SETTABLEKS                       R18 R17 K66 ["OnTextChanged"]
      214 GETTABLEKS                       R18 R0 K71 ["endEditing"]
      216 SETTABLEKS                       R18 R17 K67 ["OnFocusLost"]
      218 CALL                             R15 2 1
      219 SETTABLEKS                       R15 R14 K43 ["TextInput"]
      221 CALL                             R11 3 1
      222 SETTABLEKS                       R11 R10 K20 ["Pane"]
      224 CALL                             R7 3 -1
      225 RETURN                           R7 -1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["OpenTagMenu"]
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
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
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
       50 GETTABLEKS                       R15 R0 K18 ["Src"]
       52 GETTABLEKS                       R14 R15 K19 ["Actions"]
       54 CALL                             R13 1 1
       55 GETIMPORT                        R14 K4 [require]
       57 GETTABLEKS                       R16 R0 K18 ["Src"]
       59 GETTABLEKS                       R15 R16 K20 ["TagManager"]
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
