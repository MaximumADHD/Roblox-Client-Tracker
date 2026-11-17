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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnValueChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Value"]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K8 [{["LayoutOrder"], ["Size"], ["StyleModifier"], ["Style"] = "Selectable", ["OnClick"]}]
       12 GETUPVAL                         R6 3
       13 NAMECALL                         R6 R6 K9 ["getNextOrder"]
       15 CALL                             R6 1 1
       16 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       18 GETIMPORT                        R6 K12 [UDim2.fromOffset]
       20 LOADN                            R7 32
       21 LOADN                            R8 32
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K3 ["Size"]
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K13 ["Selected"]
       29 JUMPIF                           R6 ; [+1]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K4 ["StyleModifier"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       38 DUPTABLE                         R6 K16 [{"Image", "Tooltip"}]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K1 ["createElement"]
       42 GETUPVAL                         R8 5
       43 DUPTABLE                         R9 K17 [{"Style"}]
       44 DUPTABLE                         R10 K20 [{"AnchorPoint", "Image", "Position", "Size"}]
       45 GETIMPORT                        R11 K23 [Vector2.new]
       47 LOADK                            R12 K24 [0.5]
       48 LOADK                            R13 K24 [0.5]
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K18 ["AnchorPoint"]
       52 SETTABLEKS                       R1 R10 K14 ["Image"]
       54 GETIMPORT                        R11 K25 [UDim2.new]
       56 LOADK                            R12 K24 [0.5]
       57 LOADN                            R13 0
       58 LOADK                            R14 K24 [0.5]
       59 LOADN                            R15 0
       60 CALL                             R11 4 1
       61 SETTABLEKS                       R11 R10 K19 ["Position"]
       63 GETIMPORT                        R11 K12 [UDim2.fromOffset]
       65 LOADN                            R12 24
       66 LOADN                            R13 24
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K3 ["Size"]
       70 SETTABLEKS                       R10 R9 K5 ["Style"]
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K14 ["Image"]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K1 ["createElement"]
       78 GETUPVAL                         R8 6
       79 DUPTABLE                         R9 K27 [{"Text"}]
       80 GETUPVAL                         R10 7
       81 LOADK                            R12 K28 ["ModeSection"]
       82 MOVE                             R13 R0
       83 NAMECALL                         R10 R10 K29 ["getText"]
       85 CALL                             R10 3 1
       86 SETTABLEKS                       R10 R9 K26 ["Text"]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K15 ["Tooltip"]
       91 CALL                             R3 3 -1
       92 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["new"]
        9 CALL                             R4 0 1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R6 0 0
       21 GETIMPORT                        R7 K5 [ipairs]
       23 GETTABLEKS                       R8 R3 K6 ["ModeButtons"]
       25 CALL                             R7 1 3
       26 FORGPREP_INEXT                   R7
       27 GETTABLEKS                       R12 R11 K7 ["Mode"]
       29 GETTABLEKS                       R13 R11 K8 ["Image"]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R15 R12
       33 GETIMPORT                        R14 K10 [tostring]
       35 CALL                             R14 1 1
       36 MOVE                             R15 R5
       37 MOVE                             R16 R12
       38 MOVE                             R17 R13
       39 CALL                             R15 2 1
       40 SETTABLE                         R15 R6 R14
       41 FORGLOOP                         R7 2 [inext] ; [-15]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K11 ["createElement"]
       46 GETUPVAL                         R8 6
       47 DUPTABLE                         R9 K18 [{["axis"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"]}]
       48 GETUPVAL                         R10 6
       49 GETTABLEKS                       R10 R10 K19 ["Axis"]
       51 GETTABLEKS                       R10 R10 K20 ["Both"]
       53 SETTABLEKS                       R10 R9 K12 ["axis"]
       55 GETIMPORT                        R10 K22 [UDim.new]
       57 LOADN                            R11 0
       58 LOADN                            R12 2
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K13 ["contentPadding"]
       62 GETIMPORT                        R10 K25 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R10 R9 K16 ["FillDirection"]
       66 GETTABLEKS                       R10 R1 K17 ["LayoutOrder"]
       68 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       70 MOVE                             R10 R6
       71 CALL                             R7 3 -1
       72 RETURN                           R7 -1

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
       38 GETTABLEKS                       R7 R6 K13 ["Button"]
       40 GETTABLEKS                       R8 R6 K14 ["Image"]
       42 GETTABLEKS                       R9 R6 K15 ["Tooltip"]
       44 GETTABLEKS                       R10 R3 K16 ["Util"]
       46 GETTABLEKS                       R11 R10 K17 ["StyleModifier"]
       48 GETTABLEKS                       R12 R10 K18 ["LayoutOrderIterator"]
       50 GETIMPORT                        R13 K4 [require]
       52 GETTABLEKS                       R14 R0 K19 ["Src"]
       54 GETTABLEKS                       R14 R14 K20 ["Utility"]
       56 GETTABLEKS                       R14 R14 K21 ["AlignmentMode"]
       58 CALL                             R13 1 1
       59 GETTABLEKS                       R14 R2 K22 ["PureComponent"]
       61 LOADK                            R16 K23 ["ModeSetting"]
       62 NAMECALL                         R14 R14 K24 ["extend"]
       64 CALL                             R14 2 1
       65 DUPTABLE                         R15 K29 [{["LayoutOrder"] = 1, ["Value"], ["OnValueChanged"]}]
       66 GETTABLEKS                       R16 R13 K30 ["Center"]
       68 SETTABLEKS                       R16 R15 K27 ["Value"]
       70 DUPCLOSURE                       R16 K31 [PROTO_0]
       71 SETTABLEKS                       R16 R15 K28 ["OnValueChanged"]
       73 SETTABLEKS                       R15 R14 K32 ["defaultProps"]
       75 DUPCLOSURE                       R15 K33 [PROTO_1]
       76 SETTABLEKS                       R15 R14 K34 ["init"]
       78 DUPCLOSURE                       R15 K35 [PROTO_4]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R15 R14 K36 ["render"]
       88 MOVE                             R15 R5
       89 DUPTABLE                         R16 K39 [{"Localization", "Stylizer"}]
       90 GETTABLEKS                       R17 R4 K37 ["Localization"]
       92 SETTABLEKS                       R17 R16 K37 ["Localization"]
       94 GETTABLEKS                       R17 R4 K38 ["Stylizer"]
       96 SETTABLEKS                       R17 R16 K38 ["Stylizer"]
       98 CALL                             R15 1 1
       99 MOVE                             R16 R14
      100 CALL                             R15 1 1
      101 MOVE                             R14 R15
      102 RETURN                           R14 1
