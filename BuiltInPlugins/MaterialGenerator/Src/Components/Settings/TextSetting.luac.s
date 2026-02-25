PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["trim"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 [""] ; [+12]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["textInputRef"]
       14 GETTABLEKS                       R3 R4 K4 ["current"]
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETTABLEKS                       R4 R2 K5 ["Value"]
       19 SETTABLEKS                       R4 R3 K6 ["Text"]
       21 RETURN                           R0 0
       22 MOVE                             R3 R0
       23 GETTABLEKS                       R4 R2 K7 ["OnValueChanged"]
       25 JUMPIFNOT                        R4 ; [+34]
       26 GETTABLEKS                       R4 R2 K8 ["MaxLength"]
       28 JUMPIFNOT                        R4 ; [+27]
       29 FASTCALL1                        STRING_LEN R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K11 [string.len]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K8 ["MaxLength"]
       36 JUMPIFNOTLT                      R5 R4 ; [+19]
       38 LOADN                            R6 1
       39 GETTABLEKS                       R7 R2 K8 ["MaxLength"]
       41 FASTCALL3                        STRING_SUB R3 R6 R7
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K13 [string.sub]
       46 CALL                             R4 3 1
       47 MOVE                             R3 R4
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K3 ["textInputRef"]
       51 GETTABLEKS                       R4 R5 K4 ["current"]
       53 JUMPIFNOT                        R4 ; [+2]
       54 SETTABLEKS                       R3 R4 K6 ["Text"]
       56 GETTABLEKS                       R4 R2 K7 ["OnValueChanged"]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textInputRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K2 ["focusLost"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K4 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
        3 LOADN                            R3 16
        4 SETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
        6 GETIMPORT                        R3 K7 [UDim2.new]
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 LOADN                            R7 30
       12 CALL                             R3 4 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 LOADN                            R3 30
       16 SETTABLEKS                       R3 R2 K3 ["ValueLabelWidth"]
       18 GETTABLEKS                       R3 R1 K8 ["Disabled"]
       20 GETTABLEKS                       R4 R2 K1 ["HorizontalSpacing"]
       22 GETTABLEKS                       R5 R1 K9 ["LabelWidth"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R7 R1 K2 ["Size"]
       27 GETTABLEKS                       R8 R2 K2 ["Size"]
       29 CALL                             R6 2 1
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K8 ["Disabled"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 GETTABLEKS                       R8 R1 K10 ["Value"]
       38 ADD                              R9 R5 R4
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R10 R11 K11 ["createElement"]
       42 GETUPVAL                         R11 3
       43 DUPTABLE                         R12 K17 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       44 GETIMPORT                        R13 K20 [Enum.HorizontalAlignment.Left]
       46 SETTABLEKS                       R13 R12 K12 ["HorizontalAlignment"]
       48 GETIMPORT                        R13 K23 [Enum.FillDirection.Horizontal]
       50 SETTABLEKS                       R13 R12 K13 ["Layout"]
       52 GETTABLEKS                       R13 R1 K14 ["LayoutOrder"]
       54 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       56 SETTABLEKS                       R6 R12 K2 ["Size"]
       58 SETTABLEKS                       R4 R12 K15 ["Spacing"]
       60 GETIMPORT                        R13 K25 [Enum.VerticalAlignment.Center]
       62 SETTABLEKS                       R13 R12 K16 ["VerticalAlignment"]
       64 DUPTABLE                         R13 K28 [{"Label", "TextInput"}]
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R14 R15 K11 ["createElement"]
       68 GETUPVAL                         R15 4
       69 DUPTABLE                         R16 K32 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
       70 LOADN                            R17 1
       71 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       73 GETIMPORT                        R17 K7 [UDim2.new]
       75 LOADN                            R18 0
       76 MOVE                             R19 R5
       77 LOADN                            R20 1
       78 LOADN                            R21 0
       79 CALL                             R17 4 1
       80 SETTABLEKS                       R17 R16 K2 ["Size"]
       82 SETTABLEKS                       R7 R16 K29 ["StyleModifier"]
       84 GETTABLEKS                       R17 R1 K30 ["Text"]
       86 SETTABLEKS                       R17 R16 K30 ["Text"]
       88 GETIMPORT                        R17 K33 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R17 R16 K31 ["TextXAlignment"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K26 ["Label"]
       95 GETUPVAL                         R15 2
       96 GETTABLEKS                       R14 R15 K11 ["createElement"]
       98 GETUPVAL                         R15 5
       99 DUPTABLE                         R16 K36 [{"Disabled", "ForwardRef", "LayoutOrder", "OnFocusLost", "Size", "Text"}]
      100 SETTABLEKS                       R3 R16 K8 ["Disabled"]
      102 GETTABLEKS                       R17 R0 K37 ["textInputRef"]
      104 SETTABLEKS                       R17 R16 K34 ["ForwardRef"]
      106 LOADN                            R17 2
      107 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      109 GETTABLEKS                       R17 R0 K38 ["focusLost"]
      111 SETTABLEKS                       R17 R16 K35 ["OnFocusLost"]
      113 GETIMPORT                        R17 K7 [UDim2.new]
      115 LOADN                            R18 1
      116 MINUS                            R19 R9
      117 LOADN                            R20 1
      118 LOADN                            R21 0
      119 CALL                             R17 4 1
      120 SETTABLEKS                       R17 R16 K2 ["Size"]
      122 SETTABLEKS                       R8 R16 K30 ["Text"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K27 ["TextInput"]
      127 CALL                             R10 3 -1
      128 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Dash"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R7 R2 K11 ["Style"]
       38 GETTABLEKS                       R6 R7 K12 ["Stylizer"]
       40 GETTABLEKS                       R7 R2 K13 ["UI"]
       42 GETTABLEKS                       R8 R7 K14 ["Pane"]
       44 GETTABLEKS                       R9 R7 K15 ["TextInput"]
       46 GETTABLEKS                       R10 R7 K16 ["TextLabel"]
       48 GETTABLEKS                       R11 R2 K17 ["Util"]
       50 GETTABLEKS                       R12 R11 K18 ["StyleModifier"]
       52 GETTABLEKS                       R13 R11 K19 ["prioritize"]
       54 GETTABLEKS                       R14 R3 K20 ["PureComponent"]
       56 LOADK                            R16 K21 ["TextSetting"]
       57 NAMECALL                         R14 R14 K22 ["extend"]
       59 CALL                             R14 2 1
       60 DUPTABLE                         R15 K24 [{"Disabled"}]
       61 LOADB                            R16 0
       62 SETTABLEKS                       R16 R15 K23 ["Disabled"]
       64 SETTABLEKS                       R15 R14 K25 ["defaultProps"]
       66 DUPCLOSURE                       R15 K26 [PROTO_1]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R15 R14 K27 ["init"]
       71 DUPCLOSURE                       R15 K28 [PROTO_2]
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R15 R14 K29 ["render"]
       80 MOVE                             R15 R5
       81 DUPTABLE                         R16 K30 [{"Stylizer"}]
       82 SETTABLEKS                       R6 R16 K12 ["Stylizer"]
       84 CALL                             R15 1 1
       85 MOVE                             R16 R14
       86 CALL                             R15 1 -1
       87 RETURN                           R15 -1
