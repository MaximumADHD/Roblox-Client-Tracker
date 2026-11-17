PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["trim"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 [""] ; [+12]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["textInputRef"]
       14 GETTABLEKS                       R3 R3 K4 ["current"]
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
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K3 ["textInputRef"]
       51 GETTABLEKS                       R4 R4 K4 ["current"]
       53 JUMPIFNOT                        R4 ; [+2]
       54 SETTABLEKS                       R3 R4 K6 ["Text"]
       56 GETTABLEKS                       R4 R2 K7 ["OnValueChanged"]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textInputRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K2 ["focusLost"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K6 [{["HorizontalSpacing"] = 16, ["Size"], ["ValueLabelWidth"] = 30}]
        3 GETIMPORT                        R3 K9 [UDim2.new]
        5 LOADN                            R4 1
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 30
        9 CALL                             R3 4 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 GETTABLEKS                       R3 R1 K10 ["Disabled"]
       14 GETTABLEKS                       R4 R2 K1 ["HorizontalSpacing"]
       16 GETTABLEKS                       R5 R1 K11 ["LabelWidth"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R7 R1 K3 ["Size"]
       21 GETTABLEKS                       R8 R2 K3 ["Size"]
       23 CALL                             R6 2 1
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K10 ["Disabled"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 GETTABLEKS                       R8 R1 K12 ["Value"]
       32 ADD                              R9 R5 R4
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K13 ["createElement"]
       36 GETUPVAL                         R11 3
       37 DUPTABLE                         R12 K19 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       38 GETIMPORT                        R13 K22 [Enum.HorizontalAlignment.Left]
       40 SETTABLEKS                       R13 R12 K14 ["HorizontalAlignment"]
       42 GETIMPORT                        R13 K25 [Enum.FillDirection.Horizontal]
       44 SETTABLEKS                       R13 R12 K15 ["Layout"]
       46 GETTABLEKS                       R13 R1 K16 ["LayoutOrder"]
       48 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
       50 SETTABLEKS                       R6 R12 K3 ["Size"]
       52 SETTABLEKS                       R4 R12 K17 ["Spacing"]
       54 GETIMPORT                        R13 K27 [Enum.VerticalAlignment.Center]
       56 SETTABLEKS                       R13 R12 K18 ["VerticalAlignment"]
       58 DUPTABLE                         R13 K30 [{"Label", "TextInput"}]
       59 GETUPVAL                         R14 2
       60 GETTABLEKS                       R14 R14 K13 ["createElement"]
       62 GETUPVAL                         R15 4
       63 DUPTABLE                         R16 K35 [{["LayoutOrder"] = 1, ["Size"], ["StyleModifier"], ["Text"], ["TextXAlignment"]}]
       64 GETIMPORT                        R17 K9 [UDim2.new]
       66 LOADN                            R18 0
       67 MOVE                             R19 R5
       68 LOADN                            R20 1
       69 LOADN                            R21 0
       70 CALL                             R17 4 1
       71 SETTABLEKS                       R17 R16 K3 ["Size"]
       73 SETTABLEKS                       R7 R16 K32 ["StyleModifier"]
       75 GETTABLEKS                       R17 R1 K33 ["Text"]
       77 SETTABLEKS                       R17 R16 K33 ["Text"]
       79 GETIMPORT                        R17 K36 [Enum.TextXAlignment.Left]
       81 SETTABLEKS                       R17 R16 K34 ["TextXAlignment"]
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K28 ["Label"]
       86 GETUPVAL                         R14 2
       87 GETTABLEKS                       R14 R14 K13 ["createElement"]
       89 GETUPVAL                         R15 5
       90 DUPTABLE                         R16 K40 [{["Disabled"], ["ForwardRef"], ["LayoutOrder"] = 2, ["OnFocusLost"], ["Size"], ["Text"]}]
       91 SETTABLEKS                       R3 R16 K10 ["Disabled"]
       93 GETTABLEKS                       R17 R0 K41 ["textInputRef"]
       95 SETTABLEKS                       R17 R16 K37 ["ForwardRef"]
       97 GETTABLEKS                       R17 R0 K42 ["focusLost"]
       99 SETTABLEKS                       R17 R16 K39 ["OnFocusLost"]
      101 GETIMPORT                        R17 K9 [UDim2.new]
      103 LOADN                            R18 1
      104 MINUS                            R19 R9
      105 LOADN                            R20 1
      106 LOADN                            R21 0
      107 CALL                             R17 4 1
      108 SETTABLEKS                       R17 R16 K3 ["Size"]
      110 SETTABLEKS                       R8 R16 K33 ["Text"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K29 ["TextInput"]
      115 CALL                             R10 3 -1
      116 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Dash"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R6 R2 K11 ["Style"]
       38 GETTABLEKS                       R6 R6 K12 ["Stylizer"]
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
       60 DUPTABLE                         R15 K25 [{["Disabled"] = False}]
       61 SETTABLEKS                       R15 R14 K26 ["defaultProps"]
       63 DUPCLOSURE                       R15 K27 [PROTO_1]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R15 R14 K28 ["init"]
       68 DUPCLOSURE                       R15 K29 [PROTO_2]
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R15 R14 K30 ["render"]
       77 MOVE                             R15 R5
       78 DUPTABLE                         R16 K31 [{"Stylizer"}]
       79 SETTABLEKS                       R6 R16 K12 ["Stylizer"]
       81 CALL                             R15 1 1
       82 MOVE                             R16 R14
       83 CALL                             R15 1 -1
       84 RETURN                           R15 -1
