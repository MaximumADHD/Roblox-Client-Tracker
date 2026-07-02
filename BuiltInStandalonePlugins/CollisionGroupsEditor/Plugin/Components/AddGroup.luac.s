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
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R6 R1 K3 ["Groups"]
        8 LENGTH                           R5 R6
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K4 ["GroupCountMax"]
       12 JUMPIFLE                         R6 R5 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETTABLEKS                       R5 R0 K5 ["state"]
       19 GETTABLEKS                       R5 R5 K6 ["editing"]
       21 JUMPIFNOT                        R5 ; [+4]
       22 DUPTABLE                         R7 K8 [{["editing"] = False}]
       23 NAMECALL                         R5 R0 K9 ["setState"]
       25 CALL                             R5 2 0
       26 LOADK                            R6 K10 ["+ "]
       27 LOADK                            R9 K11 ["Actions"]
       28 LOADK                            R10 K12 ["AddGroup"]
       29 NAMECALL                         R7 R2 K13 ["getText"]
       31 CALL                             R7 3 1
       32 CONCAT                           R5 R6 R7
       33 LOADK                            R7 K10 ["+ "]
       34 LOADK                            R10 K14 ["Info"]
       35 LOADK                            R11 K15 ["NewGroupName"]
       36 NAMECALL                         R8 R2 K13 ["getText"]
       38 CALL                             R8 3 1
       39 CONCAT                           R6 R7 R8
       40 LOADNIL                          R7
       41 GETIMPORT                        R8 K17 [game]
       43 LOADK                            R10 K18 ["CGELargeGroupNameEntryFix"]
       44 NAMECALL                         R8 R8 K19 ["GetFastFlag"]
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+37]
       48 GETTABLEKS                       R8 R0 K5 ["state"]
       50 GETTABLEKS                       R8 R8 K6 ["editing"]
       52 JUMPIFNOT                        R8 ; [+30]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K20 ["createElement"]
       56 GETUPVAL                         R9 2
       57 DUPTABLE                         R10 K29 [{["TextXAlignment"], ["PlaceholderText"], ["ForwardRef"], ["ClearTextOnFocus"] = True, ["OnTextChanged"], ["OnEnter"], ["OnFocusLost"]}]
       58 GETIMPORT                        R11 K32 [Enum.TextXAlignment.Center]
       60 SETTABLEKS                       R11 R10 K21 ["TextXAlignment"]
       62 SETTABLEKS                       R6 R10 K22 ["PlaceholderText"]
       64 GETTABLEKS                       R11 R0 K33 ["textBoxRef"]
       66 SETTABLEKS                       R11 R10 K23 ["ForwardRef"]
       68 NEWCLOSURE                       R11 P0
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R11 R10 K26 ["OnTextChanged"]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R11 R10 K27 ["OnEnter"]
       77 NEWCLOSURE                       R11 P2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R11 R10 K28 ["OnFocusLost"]
       82 CALL                             R8 2 1
       83 MOVE                             R7 R8
       84 JUMP                             ; [+40]
       85 GETTABLEKS                       R8 R0 K5 ["state"]
       87 GETTABLEKS                       R8 R8 K6 ["editing"]
       89 JUMPIFNOT                        R8 ; [+34]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K20 ["createElement"]
       93 GETUPVAL                         R9 3
       94 DUPTABLE                         R10 K35 [{"Size", "TextXAlignment", "PlaceholderText", "ForwardRef", "OnTextChanged", "OnFocusLost"}]
       95 GETIMPORT                        R11 K38 [UDim2.new]
       97 LOADN                            R12 1
       98 LOADN                            R13 0
       99 LOADN                            R14 1
      100 LOADN                            R15 0
      101 CALL                             R11 4 1
      102 SETTABLEKS                       R11 R10 K34 ["Size"]
      104 GETIMPORT                        R11 K32 [Enum.TextXAlignment.Center]
      106 SETTABLEKS                       R11 R10 K21 ["TextXAlignment"]
      108 SETTABLEKS                       R6 R10 K22 ["PlaceholderText"]
      110 GETTABLEKS                       R11 R0 K33 ["textBoxRef"]
      112 SETTABLEKS                       R11 R10 K23 ["ForwardRef"]
      114 NEWCLOSURE                       R11 P3
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R11 R10 K26 ["OnTextChanged"]
      118 NEWCLOSURE                       R11 P4
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R11 R10 K28 ["OnFocusLost"]
      123 CALL                             R8 2 1
      124 MOVE                             R7 R8
      125 GETTABLEKS                       R8 R3 K39 ["Font"]
      127 GETTABLEKS                       R9 R3 K40 ["TextSize"]
      129 GETUPVAL                         R10 4
      130 MOVE                             R12 R5
      131 MOVE                             R13 R9
      132 MOVE                             R14 R8
      133 GETIMPORT                        R15 K42 [Vector2.new]
      135 LOADN                            R16 0
      136 LOADN                            R17 0
      137 CALL                             R15 2 -1
      138 NAMECALL                         R10 R10 K43 ["GetTextSize"]
      140 CALL                             R10 -1 1
      141 GETUPVAL                         R11 4
      142 MOVE                             R13 R6
      143 MOVE                             R14 R9
      144 MOVE                             R15 R8
      145 GETIMPORT                        R16 K42 [Vector2.new]
      147 LOADN                            R17 0
      148 LOADN                            R18 0
      149 CALL                             R16 2 -1
      150 NAMECALL                         R11 R11 K43 ["GetTextSize"]
      152 CALL                             R11 -1 1
      153 GETTABLEKS                       R14 R10 K45 ["X"]
      155 ADDK                             R13 R14 K44 [2]
      156 FASTCALL1                        MATH_CEIL R13 ; [+2]
      157 GETIMPORT                        R12 K48 [math.ceil]
      159 CALL                             R12 1 1
      160 GETTABLEKS                       R15 R11 K45 ["X"]
      162 ADDK                             R14 R15 K44 [2]
      163 FASTCALL1                        MATH_CEIL R14 ; [+2]
      164 GETIMPORT                        R13 K48 [math.ceil]
      166 CALL                             R13 1 1
      167 GETUPVAL                         R14 0
      168 GETTABLEKS                       R14 R14 K49 ["ControlsHeaderButtonWidth"]
      170 FASTCALL3                        MATH_MAX R14 R12 R13
      172 MOVE                             R16 R14
      173 MOVE                             R17 R12
      174 MOVE                             R18 R13
      175 GETIMPORT                        R15 K51 [math.max]
      177 CALL                             R15 3 1
      178 GETUPVAL                         R16 1
      179 GETTABLEKS                       R16 R16 K20 ["createElement"]
      181 GETUPVAL                         R17 5
      182 DUPTABLE                         R18 K55 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      183 GETIMPORT                        R19 K38 [UDim2.new]
      185 LOADN                            R20 0
      186 MOVE                             R21 R15
      187 LOADN                            R22 1
      188 LOADN                            R23 0
      189 CALL                             R19 4 1
      190 SETTABLEKS                       R19 R18 K34 ["Size"]
      192 GETTABLEKS                       R19 R1 K52 ["LayoutOrder"]
      194 SETTABLEKS                       R19 R18 K52 ["LayoutOrder"]
      196 GETIMPORT                        R19 K58 [Enum.FillDirection.Horizontal]
      198 SETTABLEKS                       R19 R18 K53 ["Layout"]
      200 GETIMPORT                        R19 K59 [Enum.HorizontalAlignment.Center]
      202 SETTABLEKS                       R19 R18 K54 ["HorizontalAlignment"]
      204 DUPTABLE                         R19 K62 [{"AddButton", "TextInput"}]
      205 GETTABLEKS                       R21 R0 K5 ["state"]
      207 GETTABLEKS                       R21 R21 K6 ["editing"]
      209 NOT                              R20 R21
      210 JUMPIFNOT                        R20 ; [+30]
      211 GETUPVAL                         R20 1
      212 GETTABLEKS                       R20 R20 K20 ["createElement"]
      214 GETUPVAL                         R21 6
      215 DUPTABLE                         R22 K69 [{["Style"] = "Round", ["Text"], ["StyleModifier"], ["Size"], ["TextWrapped"] = True, ["OnClick"]}]
      216 SETTABLEKS                       R5 R22 K65 ["Text"]
      218 JUMPIFNOT                        R4 ; [+4]
      219 GETUPVAL                         R23 7
      220 GETTABLEKS                       R23 R23 K70 ["Disabled"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R23
      224 SETTABLEKS                       R23 R22 K66 ["StyleModifier"]
      226 GETIMPORT                        R23 K38 [UDim2.new]
      228 LOADN                            R24 1
      229 LOADN                            R25 0
      230 LOADN                            R26 1
      231 LOADN                            R27 0
      232 CALL                             R23 4 1
      233 SETTABLEKS                       R23 R22 K34 ["Size"]
      235 NEWCLOSURE                       R23 P5
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R1
      238 SETTABLEKS                       R23 R22 K68 ["OnClick"]
      240 CALL                             R20 2 1
      241 SETTABLEKS                       R20 R19 K60 ["AddButton"]
      243 SETTABLEKS                       R7 R19 K61 ["TextInput"]
      245 CALL                             R16 3 -1
      246 RETURN                           R16 -1

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
       56 GETTABLEKS                       R12 R2 K21 ["PureComponent"]
       58 LOADK                            R14 K22 ["AddGroup"]
       59 NAMECALL                         R12 R12 K23 ["extend"]
       61 CALL                             R12 2 1
       62 DUPCLOSURE                       R13 K24 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R13 R12 K25 ["init"]
       66 DUPCLOSURE                       R13 K26 [PROTO_7]
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R10
       75 SETTABLEKS                       R13 R12 K27 ["render"]
       77 GETTABLEKS                       R13 R4 K28 ["withContext"]
       79 DUPTABLE                         R14 K31 [{"Stylizer", "Localization"}]
       80 GETTABLEKS                       R15 R4 K29 ["Stylizer"]
       82 SETTABLEKS                       R15 R14 K29 ["Stylizer"]
       84 GETTABLEKS                       R15 R4 K30 ["Localization"]
       86 SETTABLEKS                       R15 R14 K30 ["Localization"]
       88 CALL                             R13 1 1
       89 MOVE                             R14 R12
       90 CALL                             R13 1 1
       91 MOVE                             R12 R13
       92 RETURN                           R12 1
