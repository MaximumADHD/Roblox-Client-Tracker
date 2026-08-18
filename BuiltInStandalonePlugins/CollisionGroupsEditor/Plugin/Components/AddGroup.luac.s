PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["text"]
        9 DUPTABLE                         R1 K6 [{["editing"] = False}]
       10 SETTABLEKS                       R1 R0 K7 ["state"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+17]
        2 GETTABLEKS                       R3 R0 K0 ["state"]
        4 GETTABLEKS                       R3 R3 K1 ["editing"]
        6 JUMPIFNOT                        R3 ; [+12]
        7 GETTABLEKS                       R3 R2 K1 ["editing"]
        9 JUMPIF                           R3 ; [+9]
       10 GETTABLEKS                       R3 R0 K2 ["textBoxRef"]
       12 NAMECALL                         R3 R3 K3 ["getValue"]
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 NAMECALL                         R4 R3 K4 ["CaptureFocus"]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [string.gsub]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["text"]
        5 LOADK                            R2 K4 ["^%s+"]
        6 LOADK                            R3 K5 [""]
        7 CALL                             R0 3 1
        8 JUMPIFEQKS                       R0 K6 ["Default"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 JUMPIFEQKS                       R0 K5 [""] ; [+25]
       14 JUMPIF                           R1 ; [+23]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K7 ["OnGroupAdded"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K8 ["textBoxRef"]
       23 NAMECALL                         R2 R2 K9 ["getValue"]
       25 CALL                             R2 1 1
       26 JUMPIFEQKNIL                     R2 ; [+21]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K8 ["textBoxRef"]
       31 NAMECALL                         R2 R2 K9 ["getValue"]
       33 CALL                             R2 1 1
       34 NAMECALL                         R2 R2 K10 ["CaptureFocus"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 0
       39 DUPTABLE                         R4 K13 [{["editing"] = False}]
       40 NAMECALL                         R2 R2 K14 ["setState"]
       42 CALL                             R2 2 0
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K15 ["OnEditingChanged"]
       46 LOADB                            R3 0
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R1 ; [+10]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K2 [{[1] = False}]
        3 NAMECALL                         R2 R2 K3 ["setState"]
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["OnEditingChanged"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["textBoxRef"]
        5 NAMECALL                         R1 R1 K1 ["getValue"]
        7 CALL                             R1 1 1
        8 JUMPIFEQKNIL                     R1 ; [+16]
       10 GETIMPORT                        R2 K4 [string.match]
       12 GETTABLEKS                       R3 R1 K5 ["Text"]
       14 LOADK                            R4 K6 ["^[\n\r]+$"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+8]
       17 LOADK                            R2 K7 [""]
       18 SETTABLEKS                       R2 R1 K5 ["Text"]
       20 GETUPVAL                         R2 1
       21 LOADK                            R3 K7 [""]
       22 SETTABLEKS                       R3 R2 K8 ["text"]
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 1
       26 SETTABLEKS                       R0 R1 K8 ["text"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["text"]
        3 GETIMPORT                        R2 K3 [string.gsub]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K4 ["^%s+"]
        7 LOADK                            R5 K5 [""]
        8 CALL                             R2 3 1
        9 MOVE                             R1 R2
       10 LOADB                            R2 0
       11 JUMPIFEQKS                       R1 K6 ["Default"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIFNOT                        R0 ; [+26]
       16 JUMPIFEQKS                       R1 K5 [""] ; [+25]
       18 JUMPIF                           R2 ; [+23]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K7 ["OnGroupAdded"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K8 ["textBoxRef"]
       27 NAMECALL                         R3 R3 K9 ["getValue"]
       29 CALL                             R3 1 1
       30 JUMPIFEQKNIL                     R3 ; [+21]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K8 ["textBoxRef"]
       35 NAMECALL                         R3 R3 K9 ["getValue"]
       37 CALL                             R3 1 1
       38 NAMECALL                         R3 R3 K10 ["CaptureFocus"]
       40 CALL                             R3 1 0
       41 JUMP                             ; [+10]
       42 GETUPVAL                         R3 0
       43 DUPTABLE                         R5 K13 [{["editing"] = False}]
       44 NAMECALL                         R3 R3 K14 ["setState"]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K15 ["OnEditingChanged"]
       50 LOADB                            R4 0
       51 CALL                             R3 1 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K8 ["textBoxRef"]
       55 NAMECALL                         R3 R3 K9 ["getValue"]
       57 CALL                             R3 1 1
       58 JUMPIFEQKNIL                     R3 ; [+10]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K8 ["textBoxRef"]
       63 NAMECALL                         R3 R3 K9 ["getValue"]
       65 CALL                             R3 1 1
       66 LOADK                            R4 K5 [""]
       67 SETTABLEKS                       R4 R3 K16 ["Text"]
       69 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["textBoxRef"]
        8 NAMECALL                         R0 R0 K5 ["getValue"]
       10 CALL                             R0 1 1
       11 JUMPIFEQKNIL                     R0 ; [+10]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K4 ["textBoxRef"]
       16 NAMECALL                         R0 R0 K5 ["getValue"]
       18 CALL                             R0 1 1
       19 NAMECALL                         R0 R0 K6 ["CaptureFocus"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K7 ["OnEditingChanged"]
       25 LOADB                            R1 1
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R5 R1 K2 ["Groups"]
        6 LENGTH                           R4 R5
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["GroupCountMax"]
       10 JUMPIFLE                         R5 R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 JUMPIFNOT                        R3 ; [+9]
       15 GETTABLEKS                       R4 R0 K4 ["state"]
       17 GETTABLEKS                       R4 R4 K5 ["editing"]
       19 JUMPIFNOT                        R4 ; [+4]
       20 DUPTABLE                         R6 K7 [{["editing"] = False}]
       21 NAMECALL                         R4 R0 K8 ["setState"]
       23 CALL                             R4 2 0
       24 LOADK                            R5 K9 ["+ "]
       25 LOADK                            R8 K10 ["Actions"]
       26 LOADK                            R9 K11 ["AddGroup"]
       27 NAMECALL                         R6 R2 K12 ["getText"]
       29 CALL                             R6 3 1
       30 CONCAT                           R4 R5 R6
       31 LOADK                            R6 K9 ["+ "]
       32 LOADK                            R9 K13 ["Info"]
       33 LOADK                            R10 K14 ["NewGroupName"]
       34 NAMECALL                         R7 R2 K12 ["getText"]
       36 CALL                             R7 3 1
       37 CONCAT                           R5 R6 R7
       38 LOADNIL                          R6
       39 GETIMPORT                        R7 K16 [game]
       41 LOADK                            R9 K17 ["CGELargeGroupNameEntryFix"]
       42 NAMECALL                         R7 R7 K18 ["GetFastFlag"]
       44 CALL                             R7 2 1
       45 JUMPIFNOT                        R7 ; [+37]
       46 GETTABLEKS                       R7 R0 K4 ["state"]
       48 GETTABLEKS                       R7 R7 K5 ["editing"]
       50 JUMPIFNOT                        R7 ; [+30]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K19 ["createElement"]
       54 GETUPVAL                         R8 2
       55 DUPTABLE                         R9 K28 [{["TextXAlignment"], ["PlaceholderText"], ["ForwardRef"], ["ClearTextOnFocus"] = True, ["OnTextChanged"], ["OnEnter"], ["OnFocusLost"]}]
       56 GETIMPORT                        R10 K31 [Enum.TextXAlignment.Center]
       58 SETTABLEKS                       R10 R9 K20 ["TextXAlignment"]
       60 SETTABLEKS                       R5 R9 K21 ["PlaceholderText"]
       62 GETTABLEKS                       R10 R0 K32 ["textBoxRef"]
       64 SETTABLEKS                       R10 R9 K22 ["ForwardRef"]
       66 NEWCLOSURE                       R10 P0
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R10 R9 K25 ["OnTextChanged"]
       70 NEWCLOSURE                       R10 P1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R10 R9 K26 ["OnEnter"]
       75 NEWCLOSURE                       R10 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R10 R9 K27 ["OnFocusLost"]
       80 CALL                             R7 2 1
       81 MOVE                             R6 R7
       82 JUMP                             ; [+41]
       83 GETTABLEKS                       R7 R0 K4 ["state"]
       85 GETTABLEKS                       R7 R7 K5 ["editing"]
       87 JUMPIFNOT                        R7 ; [+35]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K19 ["createElement"]
       91 GETUPVAL                         R8 3
       92 DUPTABLE                         R9 K34 [{"Size", "TextXAlignment", "PlaceholderText", "ForwardRef", "OnTextChanged", "OnFocusLost"}]
       93 GETIMPORT                        R10 K37 [UDim2.new]
       95 LOADN                            R11 1
       96 LOADN                            R12 0
       97 LOADN                            R13 1
       98 LOADN                            R14 0
       99 CALL                             R10 4 1
      100 SETTABLEKS                       R10 R9 K33 ["Size"]
      102 GETIMPORT                        R10 K31 [Enum.TextXAlignment.Center]
      104 SETTABLEKS                       R10 R9 K20 ["TextXAlignment"]
      106 SETTABLEKS                       R5 R9 K21 ["PlaceholderText"]
      108 GETTABLEKS                       R10 R0 K32 ["textBoxRef"]
      110 SETTABLEKS                       R10 R9 K22 ["ForwardRef"]
      112 NEWCLOSURE                       R10 P3
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R10 R9 K25 ["OnTextChanged"]
      117 NEWCLOSURE                       R10 P4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R10 R9 K27 ["OnFocusLost"]
      122 CALL                             R7 2 1
      123 MOVE                             R6 R7
      124 LOADNIL                          R7
      125 GETUPVAL                         R8 5
      126 JUMPIFNOT                        R8 ; [+7]
      127 GETIMPORT                        R8 K39 [UDim2.fromScale]
      129 LOADN                            R9 1
      130 LOADN                            R10 1
      131 CALL                             R8 2 1
      132 MOVE                             R7 R8
      133 JUMP                             ; [+62]
      134 GETTABLEKS                       R8 R1 K40 ["Stylizer"]
      136 GETTABLEKS                       R9 R8 K41 ["Font"]
      138 GETTABLEKS                       R10 R8 K42 ["TextSize"]
      140 GETUPVAL                         R11 6
      141 MOVE                             R13 R4
      142 MOVE                             R14 R10
      143 MOVE                             R15 R9
      144 GETIMPORT                        R16 K44 [Vector2.new]
      146 LOADN                            R17 0
      147 LOADN                            R18 0
      148 CALL                             R16 2 -1
      149 NAMECALL                         R11 R11 K45 ["GetTextSize"]
      151 CALL                             R11 -1 1
      152 GETUPVAL                         R12 6
      153 MOVE                             R14 R5
      154 MOVE                             R15 R10
      155 MOVE                             R16 R9
      156 GETIMPORT                        R17 K44 [Vector2.new]
      158 LOADN                            R18 0
      159 LOADN                            R19 0
      160 CALL                             R17 2 -1
      161 NAMECALL                         R12 R12 K45 ["GetTextSize"]
      163 CALL                             R12 -1 1
      164 GETTABLEKS                       R15 R11 K47 ["X"]
      166 ADDK                             R14 R15 K46 [2]
      167 FASTCALL1                        MATH_CEIL R14 ; [+2]
      168 GETIMPORT                        R13 K50 [math.ceil]
      170 CALL                             R13 1 1
      171 GETTABLEKS                       R16 R12 K47 ["X"]
      173 ADDK                             R15 R16 K46 [2]
      174 FASTCALL1                        MATH_CEIL R15 ; [+2]
      175 GETIMPORT                        R14 K50 [math.ceil]
      177 CALL                             R14 1 1
      178 GETUPVAL                         R15 0
      179 GETTABLEKS                       R15 R15 K51 ["ControlsHeaderButtonWidth"]
      181 GETIMPORT                        R16 K37 [UDim2.new]
      183 LOADN                            R17 0
      184 FASTCALL3                        MATH_MAX R15 R13 R14
      186 MOVE                             R19 R15
      187 MOVE                             R20 R13
      188 MOVE                             R21 R14
      189 GETIMPORT                        R18 K53 [math.max]
      191 CALL                             R18 3 1
      192 LOADN                            R19 1
      193 LOADN                            R20 0
      194 CALL                             R16 4 1
      195 MOVE                             R7 R16
      196 GETUPVAL                         R8 1
      197 GETTABLEKS                       R8 R8 K19 ["createElement"]
      199 GETUPVAL                         R9 7
      200 DUPTABLE                         R10 K57 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      201 SETTABLEKS                       R7 R10 K33 ["Size"]
      203 GETTABLEKS                       R11 R1 K54 ["LayoutOrder"]
      205 SETTABLEKS                       R11 R10 K54 ["LayoutOrder"]
      207 GETIMPORT                        R11 K60 [Enum.FillDirection.Horizontal]
      209 SETTABLEKS                       R11 R10 K55 ["Layout"]
      211 GETIMPORT                        R11 K61 [Enum.HorizontalAlignment.Center]
      213 SETTABLEKS                       R11 R10 K56 ["HorizontalAlignment"]
      215 DUPTABLE                         R11 K64 [{"AddButton", "TextInput"}]
      216 GETTABLEKS                       R13 R0 K4 ["state"]
      218 GETTABLEKS                       R13 R13 K5 ["editing"]
      220 NOT                              R12 R13
      221 JUMPIFNOT                        R12 ; [+30]
      222 GETUPVAL                         R12 1
      223 GETTABLEKS                       R12 R12 K19 ["createElement"]
      225 GETUPVAL                         R13 8
      226 DUPTABLE                         R14 K71 [{["Style"] = "Round", ["Text"], ["StyleModifier"], ["Size"], ["TextWrapped"] = True, ["OnClick"]}]
      227 SETTABLEKS                       R4 R14 K67 ["Text"]
      229 JUMPIFNOT                        R3 ; [+4]
      230 GETUPVAL                         R15 9
      231 GETTABLEKS                       R15 R15 K72 ["Disabled"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R15
      235 SETTABLEKS                       R15 R14 K68 ["StyleModifier"]
      237 GETIMPORT                        R15 K37 [UDim2.new]
      239 LOADN                            R16 1
      240 LOADN                            R17 0
      241 LOADN                            R18 1
      242 LOADN                            R19 -1
      243 CALL                             R15 4 1
      244 SETTABLEKS                       R15 R14 K33 ["Size"]
      246 NEWCLOSURE                       R15 P5
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R1
      249 SETTABLEKS                       R15 R14 K70 ["OnClick"]
      251 CALL                             R12 2 1
      252 SETTABLEKS                       R12 R11 K62 ["AddButton"]
      254 SETTABLEKS                       R6 R11 K63 ["TextInput"]
      256 CALL                             R8 3 -1
      257 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R3 K13 ["UI"]
       33 GETTABLEKS                       R6 R5 K14 ["Button"]
       35 GETTABLEKS                       R7 R5 K15 ["Pane"]
       37 GETTABLEKS                       R8 R5 K16 ["DEPRECATED_TextInput"]
       39 GETTABLEKS                       R9 R5 K17 ["TextInput"]
       41 GETTABLEKS                       R10 R3 K18 ["Util"]
       43 GETTABLEKS                       R10 R10 K19 ["StyleModifier"]
       45 GETIMPORT                        R11 K8 [require]
       47 GETIMPORT                        R12 K5 [script]
       49 GETTABLEKS                       R12 R12 K6 ["Parent"]
       51 GETTABLEKS                       R12 R12 K6 ["Parent"]
       53 GETTABLEKS                       R12 R12 K20 ["Constants"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K1 [game]
       58 LOADK                            R14 K21 ["CGEControlsRowPolish"]
       59 NAMECALL                         R12 R12 K22 ["GetFastFlag"]
       61 CALL                             R12 2 1
       62 GETIMPORT                        R13 K1 [game]
       64 LOADK                            R15 K23 ["CGENewGroupNamePlaceholderFix"]
       65 NAMECALL                         R13 R13 K22 ["GetFastFlag"]
       67 CALL                             R13 2 1
       68 GETTABLEKS                       R14 R2 K24 ["PureComponent"]
       70 LOADK                            R16 K25 ["AddGroup"]
       71 NAMECALL                         R14 R14 K26 ["extend"]
       73 CALL                             R14 2 1
       74 DUPCLOSURE                       R15 K27 [PROTO_0]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R15 R14 K28 ["init"]
       78 DUPCLOSURE                       R15 K29 [PROTO_1]
       79 CAPTURE                          VAL R12
       80 SETTABLEKS                       R15 R14 K30 ["didUpdate"]
       82 DUPCLOSURE                       R15 K31 [PROTO_8]
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R10
       93 SETTABLEKS                       R15 R14 K32 ["render"]
       95 GETTABLEKS                       R15 R4 K33 ["withContext"]
       97 DUPTABLE                         R16 K36 [{"Stylizer", "Localization"}]
       98 GETTABLEKS                       R17 R4 K34 ["Stylizer"]
      100 SETTABLEKS                       R17 R16 K34 ["Stylizer"]
      102 GETTABLEKS                       R17 R4 K35 ["Localization"]
      104 SETTABLEKS                       R17 R16 K35 ["Localization"]
      106 CALL                             R15 1 1
      107 MOVE                             R16 R14
      108 CALL                             R15 1 1
      109 MOVE                             R14 R15
      110 RETURN                           R14 1
