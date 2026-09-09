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
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R3 K1 ["editing"]
        4 JUMPIFNOT                        R3 ; [+12]
        5 GETTABLEKS                       R3 R2 K1 ["editing"]
        7 JUMPIF                           R3 ; [+9]
        8 GETTABLEKS                       R3 R0 K2 ["textBoxRef"]
       10 NAMECALL                         R3 R3 K3 ["getValue"]
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+3]
       14 NAMECALL                         R4 R3 K4 ["CaptureFocus"]
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

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
        1 GETTABLEKS                       R1 R1 K0 ["textBoxRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R1 ; [+16]
        8 GETIMPORT                        R2 K4 [string.match]
       10 GETTABLEKS                       R3 R1 K5 ["Text"]
       12 LOADK                            R4 K6 ["^[\n\r]+$"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+8]
       15 LOADK                            R2 K7 [""]
       16 SETTABLEKS                       R2 R1 K5 ["Text"]
       18 GETUPVAL                         R2 0
       19 LOADK                            R3 K7 [""]
       20 SETTABLEKS                       R3 R2 K8 ["text"]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R0 R2 K8 ["text"]
       26 RETURN                           R0 0

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
       82 JUMP                             ; [+40]
       83 GETTABLEKS                       R7 R0 K4 ["state"]
       85 GETTABLEKS                       R7 R7 K5 ["editing"]
       87 JUMPIFNOT                        R7 ; [+34]
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
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R10 R9 K25 ["OnTextChanged"]
      116 NEWCLOSURE                       R10 P4
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R10 R9 K27 ["OnFocusLost"]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 GETIMPORT                        R7 K39 [UDim2.fromScale]
      125 LOADN                            R8 1
      126 LOADN                            R9 1
      127 CALL                             R7 2 1
      128 GETUPVAL                         R8 1
      129 GETTABLEKS                       R8 R8 K19 ["createElement"]
      131 GETUPVAL                         R9 4
      132 DUPTABLE                         R10 K43 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      133 SETTABLEKS                       R7 R10 K33 ["Size"]
      135 GETTABLEKS                       R11 R1 K40 ["LayoutOrder"]
      137 SETTABLEKS                       R11 R10 K40 ["LayoutOrder"]
      139 GETIMPORT                        R11 K46 [Enum.FillDirection.Horizontal]
      141 SETTABLEKS                       R11 R10 K41 ["Layout"]
      143 GETIMPORT                        R11 K47 [Enum.HorizontalAlignment.Center]
      145 SETTABLEKS                       R11 R10 K42 ["HorizontalAlignment"]
      147 DUPTABLE                         R11 K50 [{"AddButton", "TextInput"}]
      148 GETTABLEKS                       R13 R0 K4 ["state"]
      150 GETTABLEKS                       R13 R13 K5 ["editing"]
      152 NOT                              R12 R13
      153 JUMPIFNOT                        R12 ; [+30]
      154 GETUPVAL                         R12 1
      155 GETTABLEKS                       R12 R12 K19 ["createElement"]
      157 GETUPVAL                         R13 5
      158 DUPTABLE                         R14 K57 [{["Style"] = "Round", ["Text"], ["StyleModifier"], ["Size"], ["TextWrapped"] = True, ["OnClick"]}]
      159 SETTABLEKS                       R4 R14 K53 ["Text"]
      161 JUMPIFNOT                        R3 ; [+4]
      162 GETUPVAL                         R15 6
      163 GETTABLEKS                       R15 R15 K58 ["Disabled"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R15
      167 SETTABLEKS                       R15 R14 K54 ["StyleModifier"]
      169 GETIMPORT                        R15 K37 [UDim2.new]
      171 LOADN                            R16 1
      172 LOADN                            R17 0
      173 LOADN                            R18 1
      174 LOADN                            R19 -1
      175 CALL                             R15 4 1
      176 SETTABLEKS                       R15 R14 K33 ["Size"]
      178 NEWCLOSURE                       R15 P5
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R1
      181 SETTABLEKS                       R15 R14 K56 ["OnClick"]
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K48 ["AddButton"]
      186 SETTABLEKS                       R6 R11 K49 ["TextInput"]
      188 CALL                             R8 3 -1
      189 RETURN                           R8 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Button"]
       29 GETTABLEKS                       R6 R4 K11 ["Pane"]
       31 GETTABLEKS                       R7 R4 K12 ["DEPRECATED_TextInput"]
       33 GETTABLEKS                       R8 R4 K13 ["TextInput"]
       35 GETTABLEKS                       R9 R2 K14 ["Util"]
       37 GETTABLEKS                       R9 R9 K15 ["StyleModifier"]
       39 GETIMPORT                        R10 K4 [require]
       41 GETIMPORT                        R11 K1 [script]
       43 GETTABLEKS                       R11 R11 K2 ["Parent"]
       45 GETTABLEKS                       R11 R11 K2 ["Parent"]
       47 GETTABLEKS                       R11 R11 K16 ["Constants"]
       49 CALL                             R10 1 1
       50 GETTABLEKS                       R11 R1 K17 ["PureComponent"]
       52 LOADK                            R13 K18 ["AddGroup"]
       53 NAMECALL                         R11 R11 K19 ["extend"]
       55 CALL                             R11 2 1
       56 DUPCLOSURE                       R12 K20 [PROTO_0]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R12 R11 K21 ["init"]
       60 DUPCLOSURE                       R12 K22 [PROTO_1]
       61 SETTABLEKS                       R12 R11 K23 ["didUpdate"]
       63 DUPCLOSURE                       R12 K24 [PROTO_8]
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R9
       71 SETTABLEKS                       R12 R11 K25 ["render"]
       73 GETTABLEKS                       R12 R3 K26 ["withContext"]
       75 DUPTABLE                         R13 K29 [{"Stylizer", "Localization"}]
       76 GETTABLEKS                       R14 R3 K27 ["Stylizer"]
       78 SETTABLEKS                       R14 R13 K27 ["Stylizer"]
       80 GETTABLEKS                       R14 R3 K28 ["Localization"]
       82 SETTABLEKS                       R14 R13 K28 ["Localization"]
       84 CALL                             R12 1 1
       85 MOVE                             R13 R11
       86 CALL                             R12 1 1
       87 MOVE                             R11 R12
       88 RETURN                           R11 1
