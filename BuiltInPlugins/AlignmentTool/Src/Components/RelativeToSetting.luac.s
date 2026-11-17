PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R5 R1 K0 ["Value"]
        2 FASTCALL1                        TYPE R5 ; [+2]
        3 GETIMPORT                        R4 K2 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["Missing required property Value."]
       13 GETIMPORT                        R2 K6 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R5 R1 K7 ["OnValueChanged"]
       18 FASTCALL1                        TYPE R5 ; [+2]
       19 GETIMPORT                        R4 K2 [type]
       21 CALL                             R4 1 1
       22 JUMPIFEQKS                       R4 K8 ["function"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       28 LOADK                            R4 K9 ["Missing required property OnValueChanged."]
       29 GETIMPORT                        R2 K6 [assert]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Value"]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K9 [{["Disabled"] = False, ["Key"], ["LayoutOrder"], ["Selected"], ["Text"], ["OnClick"]}]
       12 SETTABLEKS                       R0 R5 K4 ["Key"]
       14 SETTABLEKS                       R1 R5 K5 ["LayoutOrder"]
       16 SETTABLEKS                       R2 R5 K6 ["Selected"]
       18 GETUPVAL                         R6 3
       19 LOADK                            R8 K10 ["RelativeToSection"]
       20 MOVE                             R9 R0
       21 NAMECALL                         R6 R6 K11 ["getText"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K7 ["Text"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K12 ["OnValueChanged"]
       29 SETTABLEKS                       R6 R5 K8 ["OnClick"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["createElement"]
       14 GETUPVAL                         R6 2
       15 DUPTABLE                         R7 K9 [{["axis"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"]}]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K10 ["Axis"]
       19 GETTABLEKS                       R8 R8 K11 ["Both"]
       21 SETTABLEKS                       R8 R7 K4 ["axis"]
       23 GETTABLEKS                       R8 R3 K12 ["SectionContentPaddingCompact"]
       25 SETTABLEKS                       R8 R7 K5 ["contentPadding"]
       27 GETIMPORT                        R8 K15 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R8 R7 K8 ["FillDirection"]
       31 DUPTABLE                         R8 K18 [{"SelectionRadioButton", "ActiveRadioButton"}]
       32 MOVE                             R9 R4
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K19 ["Selection"]
       36 LOADN                            R11 1
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K16 ["SelectionRadioButton"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K3 ["createElement"]
       43 GETUPVAL                         R10 2
       44 DUPTABLE                         R11 K22 [{["axis"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"] = 2}]
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K10 ["Axis"]
       48 GETTABLEKS                       R12 R12 K11 ["Both"]
       50 SETTABLEKS                       R12 R11 K4 ["axis"]
       52 GETTABLEKS                       R12 R3 K23 ["RelativeToSetting"]
       54 GETTABLEKS                       R12 R12 K24 ["HelpIconPadding"]
       56 SETTABLEKS                       R12 R11 K5 ["contentPadding"]
       58 GETIMPORT                        R12 K26 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R12 R11 K8 ["FillDirection"]
       62 DUPTABLE                         R12 K29 [{"RadioButton", "HelpIcon"}]
       63 MOVE                             R13 R4
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K30 ["Active"]
       67 LOADN                            R15 1
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K27 ["RadioButton"]
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K3 ["createElement"]
       74 GETUPVAL                         R14 4
       75 DUPTABLE                         R15 K32 [{["LayoutOrder"] = 2, ["Size"]}]
       76 GETIMPORT                        R16 K35 [UDim2.new]
       78 LOADN                            R17 0
       79 LOADN                            R18 22
       80 LOADN                            R19 1
       81 LOADN                            R20 0
       82 CALL                             R16 4 1
       83 SETTABLEKS                       R16 R15 K31 ["Size"]
       85 DUPTABLE                         R16 K38 [{"Icon", "Tooltip"}]
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R17 R17 K3 ["createElement"]
       89 GETUPVAL                         R18 5
       90 DUPTABLE                         R19 K40 [{["Style"] = "HelpIcon"}]
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K36 ["Icon"]
       94 GETUPVAL                         R17 0
       95 GETTABLEKS                       R17 R17 K3 ["createElement"]
       97 GETUPVAL                         R18 6
       98 DUPTABLE                         R19 K42 [{"Text"}]
       99 LOADK                            R22 K43 ["RelativeToSection"]
      100 LOADK                            R23 K44 ["ActiveObjectTooltip"]
      101 NAMECALL                         R20 R2 K45 ["getText"]
      103 CALL                             R20 3 1
      104 SETTABLEKS                       R20 R19 K41 ["Text"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K37 ["Tooltip"]
      109 CALL                             R13 3 1
      110 SETTABLEKS                       R13 R12 K28 ["HelpIcon"]
      112 CALL                             R9 3 1
      113 SETTABLEKS                       R9 R8 K17 ["ActiveRadioButton"]
      115 CALL                             R5 3 -1
      116 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["FitFrame"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["FitFrameOnAxis"]
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K11 ["withContext"]
       36 GETTABLEKS                       R6 R3 K12 ["UI"]
       38 GETTABLEKS                       R7 R6 K13 ["Container"]
       40 GETTABLEKS                       R8 R6 K14 ["Image"]
       42 GETTABLEKS                       R9 R6 K15 ["RadioButton"]
       44 GETTABLEKS                       R10 R6 K16 ["Tooltip"]
       46 GETIMPORT                        R11 K4 [require]
       48 GETTABLEKS                       R12 R0 K17 ["Src"]
       50 GETTABLEKS                       R12 R12 K18 ["Utility"]
       52 GETTABLEKS                       R12 R12 K19 ["RelativeTo"]
       54 CALL                             R11 1 1
       55 GETTABLEKS                       R12 R2 K20 ["PureComponent"]
       57 LOADK                            R14 K21 ["RelativeToSetting"]
       58 NAMECALL                         R12 R12 K22 ["extend"]
       60 CALL                             R12 2 1
       61 DUPTABLE                         R13 K25 [{"Value", "OnValueChanged"}]
       62 GETTABLEKS                       R14 R11 K26 ["Selection"]
       64 SETTABLEKS                       R14 R13 K23 ["Value"]
       66 DUPCLOSURE                       R14 K27 [PROTO_0]
       67 SETTABLEKS                       R14 R13 K24 ["OnValueChanged"]
       69 SETTABLEKS                       R13 R12 K28 ["defaultProps"]
       71 DUPCLOSURE                       R13 K29 [PROTO_1]
       72 SETTABLEKS                       R13 R12 K30 ["init"]
       74 DUPCLOSURE                       R13 K31 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R13 R12 K32 ["render"]
       84 MOVE                             R13 R5
       85 DUPTABLE                         R14 K35 [{"Localization", "Stylizer"}]
       86 GETTABLEKS                       R15 R4 K33 ["Localization"]
       88 SETTABLEKS                       R15 R14 K33 ["Localization"]
       90 GETTABLEKS                       R15 R4 K34 ["Stylizer"]
       92 SETTABLEKS                       R15 R14 K34 ["Stylizer"]
       94 CALL                             R13 1 1
       95 MOVE                             R14 R12
       96 CALL                             R13 1 1
       97 MOVE                             R12 R13
       98 RETURN                           R12 1
