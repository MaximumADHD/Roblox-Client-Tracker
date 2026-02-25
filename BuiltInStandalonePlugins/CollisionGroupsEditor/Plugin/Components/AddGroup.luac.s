PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["text"]
        9 DUPTABLE                         R1 K5 [{"editing"}]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K4 ["editing"]
       13 SETTABLEKS                       R1 R0 K6 ["state"]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [string.gsub]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["text"]
        5 LOADK                            R2 K4 ["^%s+"]
        6 LOADK                            R3 K5 [""]
        7 CALL                             R0 3 1
        8 JUMPIFEQKS                       R0 K6 ["Default"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 JUMPIFEQKS                       R0 K5 [""] ; [+25]
       14 JUMPIF                           R1 ; [+23]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K7 ["OnGroupAdded"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K8 ["textBoxRef"]
       23 NAMECALL                         R2 R2 K9 ["getValue"]
       25 CALL                             R2 1 1
       26 JUMPIFEQKNIL                     R2 ; [+24]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K8 ["textBoxRef"]
       31 NAMECALL                         R2 R2 K9 ["getValue"]
       33 CALL                             R2 1 1
       34 NAMECALL                         R2 R2 K10 ["CaptureFocus"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 0
       39 DUPTABLE                         R4 K12 [{"editing"}]
       40 LOADB                            R5 0
       41 SETTABLEKS                       R5 R4 K11 ["editing"]
       43 NAMECALL                         R2 R2 K13 ["setState"]
       45 CALL                             R2 2 0
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R2 R3 K14 ["OnEditingChanged"]
       49 LOADB                            R3 0
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R1 ; [+13]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K1 [{"editing"}]
        3 LOADB                            R5 0
        4 SETTABLEKS                       R5 R4 K0 ["editing"]
        6 NAMECALL                         R2 R2 K2 ["setState"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["OnEditingChanged"]
       12 LOADB                            R3 0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["text"]
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
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K7 ["OnGroupAdded"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K8 ["textBoxRef"]
       27 NAMECALL                         R3 R3 K9 ["getValue"]
       29 CALL                             R3 1 1
       30 JUMPIFEQKNIL                     R3 ; [+24]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K8 ["textBoxRef"]
       35 NAMECALL                         R3 R3 K9 ["getValue"]
       37 CALL                             R3 1 1
       38 NAMECALL                         R3 R3 K10 ["CaptureFocus"]
       40 CALL                             R3 1 0
       41 JUMP                             ; [+13]
       42 GETUPVAL                         R3 0
       43 DUPTABLE                         R5 K12 [{"editing"}]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K11 ["editing"]
       47 NAMECALL                         R3 R3 K13 ["setState"]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K14 ["OnEditingChanged"]
       53 LOADB                            R4 0
       54 CALL                             R3 1 0
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K8 ["textBoxRef"]
       58 NAMECALL                         R3 R3 K9 ["getValue"]
       60 CALL                             R3 1 1
       61 JUMPIFEQKNIL                     R3 ; [+10]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R3 R4 K8 ["textBoxRef"]
       66 NAMECALL                         R3 R3 K9 ["getValue"]
       68 CALL                             R3 1 1
       69 LOADK                            R4 K5 [""]
       70 SETTABLEKS                       R4 R3 K15 ["Text"]
       72 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"editing"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["editing"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K3 ["textBoxRef"]
       11 NAMECALL                         R0 R0 K4 ["getValue"]
       13 CALL                             R0 1 1
       14 JUMPIFEQKNIL                     R0 ; [+10]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K3 ["textBoxRef"]
       19 NAMECALL                         R0 R0 K4 ["getValue"]
       21 CALL                             R0 1 1
       22 NAMECALL                         R0 R0 K5 ["CaptureFocus"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R0 R1 K6 ["OnEditingChanged"]
       28 LOADB                            R1 1
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R6 R1 K3 ["Groups"]
        8 LENGTH                           R5 R6
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K4 ["GroupCountMax"]
       12 JUMPIFLE                         R6 R5 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 JUMPIFNOT                        R4 ; [+12]
       17 GETTABLEKS                       R6 R0 K5 ["state"]
       19 GETTABLEKS                       R5 R6 K6 ["editing"]
       21 JUMPIFNOT                        R5 ; [+7]
       22 DUPTABLE                         R7 K7 [{"editing"}]
       23 LOADB                            R8 0
       24 SETTABLEKS                       R8 R7 K6 ["editing"]
       26 NAMECALL                         R5 R0 K8 ["setState"]
       28 CALL                             R5 2 0
       29 LOADK                            R6 K9 ["+ "]
       30 LOADK                            R9 K10 ["Actions"]
       31 LOADK                            R10 K11 ["AddGroup"]
       32 NAMECALL                         R7 R2 K12 ["getText"]
       34 CALL                             R7 3 1
       35 CONCAT                           R5 R6 R7
       36 LOADK                            R7 K9 ["+ "]
       37 LOADK                            R10 K13 ["Info"]
       38 LOADK                            R11 K14 ["NewGroupName"]
       39 NAMECALL                         R8 R2 K12 ["getText"]
       41 CALL                             R8 3 1
       42 CONCAT                           R6 R7 R8
       43 LOADNIL                          R7
       44 GETIMPORT                        R8 K16 [game]
       46 LOADK                            R10 K17 ["CGELargeGroupNameEntryFix"]
       47 NAMECALL                         R8 R8 K18 ["GetFastFlag"]
       49 CALL                             R8 2 1
       50 JUMPIFNOT                        R8 ; [+40]
       51 GETTABLEKS                       R9 R0 K5 ["state"]
       53 GETTABLEKS                       R8 R9 K6 ["editing"]
       55 JUMPIFNOT                        R8 ; [+33]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K19 ["createElement"]
       59 GETUPVAL                         R9 2
       60 DUPTABLE                         R10 K27 [{"TextXAlignment", "PlaceholderText", "ForwardRef", "ClearTextOnFocus", "OnTextChanged", "OnEnter", "OnFocusLost"}]
       61 GETIMPORT                        R11 K30 [Enum.TextXAlignment.Center]
       63 SETTABLEKS                       R11 R10 K20 ["TextXAlignment"]
       65 SETTABLEKS                       R6 R10 K21 ["PlaceholderText"]
       67 GETTABLEKS                       R11 R0 K31 ["textBoxRef"]
       69 SETTABLEKS                       R11 R10 K22 ["ForwardRef"]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K23 ["ClearTextOnFocus"]
       74 NEWCLOSURE                       R11 P0
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R11 R10 K24 ["OnTextChanged"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R11 R10 K25 ["OnEnter"]
       83 NEWCLOSURE                       R11 P2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R11 R10 K26 ["OnFocusLost"]
       88 CALL                             R8 2 1
       89 MOVE                             R7 R8
       90 JUMP                             ; [+40]
       91 GETTABLEKS                       R9 R0 K5 ["state"]
       93 GETTABLEKS                       R8 R9 K6 ["editing"]
       95 JUMPIFNOT                        R8 ; [+34]
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R8 R9 K19 ["createElement"]
       99 GETUPVAL                         R9 3
      100 DUPTABLE                         R10 K33 [{"Size", "TextXAlignment", "PlaceholderText", "ForwardRef", "OnTextChanged", "OnFocusLost"}]
      101 GETIMPORT                        R11 K36 [UDim2.new]
      103 LOADN                            R12 1
      104 LOADN                            R13 0
      105 LOADN                            R14 1
      106 LOADN                            R15 0
      107 CALL                             R11 4 1
      108 SETTABLEKS                       R11 R10 K32 ["Size"]
      110 GETIMPORT                        R11 K30 [Enum.TextXAlignment.Center]
      112 SETTABLEKS                       R11 R10 K20 ["TextXAlignment"]
      114 SETTABLEKS                       R6 R10 K21 ["PlaceholderText"]
      116 GETTABLEKS                       R11 R0 K31 ["textBoxRef"]
      118 SETTABLEKS                       R11 R10 K22 ["ForwardRef"]
      120 NEWCLOSURE                       R11 P3
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R11 R10 K24 ["OnTextChanged"]
      124 NEWCLOSURE                       R11 P4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R11 R10 K26 ["OnFocusLost"]
      129 CALL                             R8 2 1
      130 MOVE                             R7 R8
      131 GETTABLEKS                       R8 R3 K37 ["Font"]
      133 GETTABLEKS                       R9 R3 K38 ["TextSize"]
      135 GETUPVAL                         R10 4
      136 MOVE                             R12 R5
      137 MOVE                             R13 R9
      138 MOVE                             R14 R8
      139 GETIMPORT                        R15 K40 [Vector2.new]
      141 LOADN                            R16 0
      142 LOADN                            R17 0
      143 CALL                             R15 2 -1
      144 NAMECALL                         R10 R10 K41 ["GetTextSize"]
      146 CALL                             R10 -1 1
      147 GETUPVAL                         R11 4
      148 MOVE                             R13 R6
      149 MOVE                             R14 R9
      150 MOVE                             R15 R8
      151 GETIMPORT                        R16 K40 [Vector2.new]
      153 LOADN                            R17 0
      154 LOADN                            R18 0
      155 CALL                             R16 2 -1
      156 NAMECALL                         R11 R11 K41 ["GetTextSize"]
      158 CALL                             R11 -1 1
      159 GETTABLEKS                       R14 R10 K43 ["X"]
      161 ADDK                             R13 R14 K42 [2]
      162 FASTCALL1                        MATH_CEIL R13 ; [+2]
      163 GETIMPORT                        R12 K46 [math.ceil]
      165 CALL                             R12 1 1
      166 GETTABLEKS                       R15 R11 K43 ["X"]
      168 ADDK                             R14 R15 K42 [2]
      169 FASTCALL1                        MATH_CEIL R14 ; [+2]
      170 GETIMPORT                        R13 K46 [math.ceil]
      172 CALL                             R13 1 1
      173 GETUPVAL                         R15 0
      174 GETTABLEKS                       R14 R15 K47 ["ControlsHeaderButtonWidth"]
      176 FASTCALL3                        MATH_MAX R14 R12 R13
      178 MOVE                             R16 R14
      179 MOVE                             R17 R12
      180 MOVE                             R18 R13
      181 GETIMPORT                        R15 K49 [math.max]
      183 CALL                             R15 3 1
      184 GETUPVAL                         R17 1
      185 GETTABLEKS                       R16 R17 K19 ["createElement"]
      187 GETUPVAL                         R17 5
      188 DUPTABLE                         R18 K53 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      189 GETIMPORT                        R19 K36 [UDim2.new]
      191 LOADN                            R20 0
      192 MOVE                             R21 R15
      193 LOADN                            R22 1
      194 LOADN                            R23 0
      195 CALL                             R19 4 1
      196 SETTABLEKS                       R19 R18 K32 ["Size"]
      198 GETTABLEKS                       R19 R1 K50 ["LayoutOrder"]
      200 SETTABLEKS                       R19 R18 K50 ["LayoutOrder"]
      202 GETIMPORT                        R19 K56 [Enum.FillDirection.Horizontal]
      204 SETTABLEKS                       R19 R18 K51 ["Layout"]
      206 GETIMPORT                        R19 K57 [Enum.HorizontalAlignment.Center]
      208 SETTABLEKS                       R19 R18 K52 ["HorizontalAlignment"]
      210 DUPTABLE                         R19 K60 [{"AddButton", "TextInput"}]
      211 GETTABLEKS                       R22 R0 K5 ["state"]
      213 GETTABLEKS                       R21 R22 K6 ["editing"]
      215 NOT                              R20 R21
      216 JUMPIFNOT                        R20 ; [+36]
      217 GETUPVAL                         R21 1
      218 GETTABLEKS                       R20 R21 K19 ["createElement"]
      220 GETUPVAL                         R21 6
      221 DUPTABLE                         R22 K66 [{"Style", "Text", "StyleModifier", "Size", "TextWrapped", "OnClick"}]
      222 LOADK                            R23 K67 ["Round"]
      223 SETTABLEKS                       R23 R22 K61 ["Style"]
      225 SETTABLEKS                       R5 R22 K62 ["Text"]
      227 JUMPIFNOT                        R4 ; [+4]
      228 GETUPVAL                         R24 7
      229 GETTABLEKS                       R23 R24 K68 ["Disabled"]
      231 JUMP                             ; [+1]
      232 LOADNIL                          R23
      233 SETTABLEKS                       R23 R22 K63 ["StyleModifier"]
      235 GETIMPORT                        R23 K36 [UDim2.new]
      237 LOADN                            R24 1
      238 LOADN                            R25 0
      239 LOADN                            R26 1
      240 LOADN                            R27 0
      241 CALL                             R23 4 1
      242 SETTABLEKS                       R23 R22 K32 ["Size"]
      244 LOADB                            R23 1
      245 SETTABLEKS                       R23 R22 K64 ["TextWrapped"]
      247 NEWCLOSURE                       R23 P5
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R1
      250 SETTABLEKS                       R23 R22 K65 ["OnClick"]
      252 CALL                             R20 2 1
      253 SETTABLEKS                       R20 R19 K58 ["AddButton"]
      255 SETTABLEKS                       R7 R19 K59 ["TextInput"]
      257 CALL                             R16 3 -1
      258 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R3 K13 ["UI"]
       33 GETTABLEKS                       R6 R5 K14 ["Button"]
       35 GETTABLEKS                       R7 R5 K15 ["Pane"]
       37 GETTABLEKS                       R8 R5 K16 ["DEPRECATED_TextInput"]
       39 GETTABLEKS                       R9 R5 K17 ["TextInput"]
       41 GETTABLEKS                       R11 R3 K18 ["Util"]
       43 GETTABLEKS                       R10 R11 K19 ["StyleModifier"]
       45 GETIMPORT                        R11 K8 [require]
       47 GETIMPORT                        R15 K5 [script]
       49 GETTABLEKS                       R14 R15 K6 ["Parent"]
       51 GETTABLEKS                       R13 R14 K6 ["Parent"]
       53 GETTABLEKS                       R12 R13 K20 ["Constants"]
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
