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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Value"]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K8 [{"Disabled", "Key", "LayoutOrder", "Selected", "Text", "OnClick"}]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K2 ["Disabled"]
       15 SETTABLEKS                       R0 R5 K3 ["Key"]
       17 SETTABLEKS                       R1 R5 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R2 R5 K5 ["Selected"]
       21 GETUPVAL                         R6 3
       22 LOADK                            R8 K9 ["RelativeToSection"]
       23 MOVE                             R9 R0
       24 NAMECALL                         R6 R6 K10 ["getText"]
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K6 ["Text"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K11 ["OnValueChanged"]
       32 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["createElement"]
       14 GETUPVAL                         R6 2
       15 DUPTABLE                         R7 K8 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection"}]
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K9 ["Axis"]
       19 GETTABLEKS                       R8 R9 K10 ["Both"]
       21 SETTABLEKS                       R8 R7 K4 ["axis"]
       23 GETTABLEKS                       R8 R3 K11 ["SectionContentPaddingCompact"]
       25 SETTABLEKS                       R8 R7 K5 ["contentPadding"]
       27 LOADN                            R8 1
       28 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       30 GETIMPORT                        R8 K14 [Enum.FillDirection.Vertical]
       32 SETTABLEKS                       R8 R7 K7 ["FillDirection"]
       34 DUPTABLE                         R8 K17 [{"SelectionRadioButton", "ActiveRadioButton"}]
       35 MOVE                             R9 R4
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R10 R11 K18 ["Selection"]
       39 LOADN                            R11 1
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["SelectionRadioButton"]
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R9 R10 K3 ["createElement"]
       46 GETUPVAL                         R10 2
       47 DUPTABLE                         R11 K20 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R13 R14 K9 ["Axis"]
       51 GETTABLEKS                       R12 R13 K10 ["Both"]
       53 SETTABLEKS                       R12 R11 K4 ["axis"]
       55 GETTABLEKS                       R13 R3 K21 ["RelativeToSetting"]
       57 GETTABLEKS                       R12 R13 K22 ["HelpIconPadding"]
       59 SETTABLEKS                       R12 R11 K5 ["contentPadding"]
       61 LOADN                            R12 1
       62 SETTABLEKS                       R12 R11 K6 ["BackgroundTransparency"]
       64 GETIMPORT                        R12 K24 [Enum.FillDirection.Horizontal]
       66 SETTABLEKS                       R12 R11 K7 ["FillDirection"]
       68 LOADN                            R12 2
       69 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       71 DUPTABLE                         R12 K27 [{"RadioButton", "HelpIcon"}]
       72 MOVE                             R13 R4
       73 GETUPVAL                         R15 3
       74 GETTABLEKS                       R14 R15 K28 ["Active"]
       76 LOADN                            R15 1
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K25 ["RadioButton"]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R13 R14 K3 ["createElement"]
       83 GETUPVAL                         R14 4
       84 DUPTABLE                         R15 K30 [{"LayoutOrder", "Size"}]
       85 LOADN                            R16 2
       86 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       88 GETIMPORT                        R16 K33 [UDim2.new]
       90 LOADN                            R17 0
       91 LOADN                            R18 22
       92 LOADN                            R19 1
       93 LOADN                            R20 0
       94 CALL                             R16 4 1
       95 SETTABLEKS                       R16 R15 K29 ["Size"]
       97 DUPTABLE                         R16 K36 [{"Icon", "Tooltip"}]
       98 GETUPVAL                         R18 0
       99 GETTABLEKS                       R17 R18 K3 ["createElement"]
      101 GETUPVAL                         R18 5
      102 DUPTABLE                         R19 K38 [{"Style"}]
      103 LOADK                            R20 K26 ["HelpIcon"]
      104 SETTABLEKS                       R20 R19 K37 ["Style"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K34 ["Icon"]
      109 GETUPVAL                         R18 0
      110 GETTABLEKS                       R17 R18 K3 ["createElement"]
      112 GETUPVAL                         R18 6
      113 DUPTABLE                         R19 K40 [{"Text"}]
      114 LOADK                            R22 K41 ["RelativeToSection"]
      115 LOADK                            R23 K42 ["ActiveObjectTooltip"]
      116 NAMECALL                         R20 R2 K43 ["getText"]
      118 CALL                             R20 3 1
      119 SETTABLEKS                       R20 R19 K39 ["Text"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K35 ["Tooltip"]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K26 ["HelpIcon"]
      127 CALL                             R9 3 1
      128 SETTABLEKS                       R9 R8 K16 ["ActiveRadioButton"]
      130 CALL                             R5 3 -1
      131 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Packages"]
       13 GETTABLEKS                       R3 R4 K6 ["FitFrame"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R1 R2 K7 ["FitFrameOnAxis"]
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K8 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K9 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K11 ["withContext"]
       36 GETTABLEKS                       R6 R3 K12 ["UI"]
       38 GETTABLEKS                       R7 R6 K13 ["Container"]
       40 GETTABLEKS                       R8 R6 K14 ["Image"]
       42 GETTABLEKS                       R9 R6 K15 ["RadioButton"]
       44 GETTABLEKS                       R10 R6 K16 ["Tooltip"]
       46 GETIMPORT                        R11 K4 [require]
       48 GETTABLEKS                       R14 R0 K17 ["Src"]
       50 GETTABLEKS                       R13 R14 K18 ["Utility"]
       52 GETTABLEKS                       R12 R13 K19 ["RelativeTo"]
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
