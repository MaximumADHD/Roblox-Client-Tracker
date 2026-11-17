PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnAlignmentSpaceChanged"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["OnAlignmentSpaceChanged"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnEnabledAxesChanged"]
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R1 K2 ["EnabledAxes"]
        9 NEWTABLE                         R4 1 0
       11 GETTABLEKS                       R7 R1 K2 ["EnabledAxes"]
       13 GETTABLE                         R6 R7 R0
       14 NOT                              R5 R6
       15 SETTABLE                         R5 R4 R0
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R3 R1 K1 ["OnEnabledAxesChanged"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["AlignmentSpace"]
        2 FASTCALL1                        TYPE R5 ; [+2]
        3 GETIMPORT                        R4 K2 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["Missing required property AlignmentSpace."]
       13 GETIMPORT                        R2 K6 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R5 R1 K7 ["EnabledAxes"]
       18 FASTCALL1                        TYPE R5 ; [+2]
       19 GETIMPORT                        R4 K2 [type]
       21 CALL                             R4 1 1
       22 JUMPIFEQKS                       R4 K8 ["table"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       28 LOADK                            R4 K9 ["Missing required property EnabledAxes."]
       29 GETIMPORT                        R2 K6 [assert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R5 R1 K10 ["OnAlignmentSpaceChanged"]
       34 FASTCALL1                        TYPE R5 ; [+2]
       35 GETIMPORT                        R4 K2 [type]
       37 CALL                             R4 1 1
       38 JUMPIFEQKS                       R4 K11 ["function"] ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       44 LOADK                            R4 K12 ["Missing required property OnAlignmentSpaceChanged."]
       45 GETIMPORT                        R2 K6 [assert]
       47 CALL                             R2 2 0
       48 GETTABLEKS                       R5 R1 K13 ["OnEnabledAxesChanged"]
       50 FASTCALL1                        TYPE R5 ; [+2]
       51 GETIMPORT                        R4 K2 [type]
       53 CALL                             R4 1 1
       54 JUMPIFEQKS                       R4 K11 ["function"] ; [+2]
       56 LOADB                            R3 0 +1
       57 LOADB                            R3 1
       58 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       60 LOADK                            R4 K14 ["Missing required property OnEnabledAxesChanged."]
       61 GETIMPORT                        R2 K6 [assert]
       63 CALL                             R2 2 0
       64 NEWCLOSURE                       R2 P0
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R2 R0 K15 ["setAlignmentSpace"]
       68 NEWCLOSURE                       R2 P1
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U0
       71 SETTABLEKS                       R2 R0 K16 ["toggleAxis"]
       73 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{["Disabled"] = False, ["Key"], ["LayoutOrder"], ["Selected"], ["Text"], ["OnClick"]}]
        5 SETTABLEKS                       R0 R4 K3 ["Key"]
        7 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K9 ["AlignmentSpace"]
       12 JUMPIFEQ                         R6 R0 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K5 ["Selected"]
       18 GETUPVAL                         R5 3
       19 LOADK                            R7 K10 ["AxesSettingsFragment"]
       20 MOVE                             R8 R0
       21 NAMECALL                         R5 R5 K11 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K6 ["Text"]
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K12 ["setAlignmentSpace"]
       29 SETTABLEKS                       R5 R4 K7 ["OnClick"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EnabledAxes"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 NEWTABLE                         R6 0 0
       14 NEWTABLE                         R7 0 3
       16 LOADK                            R8 K5 ["X"]
       17 LOADK                            R9 K6 ["Y"]
       18 LOADK                            R10 K7 ["Z"]
       19 SETLIST                          R7 R8 3 [1]
       21 GETIMPORT                        R8 K9 [ipairs]
       23 MOVE                             R9 R7
       24 CALL                             R8 1 3
       25 FORGPREP_INEXT                   R8
       26 JUMPIFNOT                        R2 ; [+2]
       27 GETTABLE                         R13 R2 R12
       28 JUMPIF                           R13 ; [+1]
       29 LOADB                            R13 0
       30 LOADK                            R16 K10 ["AxesSettingsFragment"]
       31 MOVE                             R17 R12
       32 NAMECALL                         R14 R3 K11 ["getText"]
       34 CALL                             R14 3 1
       35 GETUPVAL                         R15 1
       36 GETTABLEKS                       R15 R15 K12 ["createElement"]
       38 GETUPVAL                         R16 2
       39 DUPTABLE                         R17 K20 [{["Key"], ["Checked"], ["Disabled"] = False, ["LayoutOrder"], ["Text"], ["OnClick"]}]
       40 SETTABLEKS                       R12 R17 K13 ["Key"]
       42 SETTABLEKS                       R13 R17 K14 ["Checked"]
       44 NAMECALL                         R18 R5 K21 ["getNextOrder"]
       46 CALL                             R18 1 1
       47 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
       49 SETTABLEKS                       R14 R17 K18 ["Text"]
       51 GETTABLEKS                       R18 R0 K22 ["toggleAxis"]
       53 SETTABLEKS                       R18 R17 K19 ["OnClick"]
       55 CALL                             R15 2 1
       56 SETTABLE                         R15 R6 R12
       57 FORGLOOP                         R8 2 [inext] ; [-32]
       59 NEWCLOSURE                       R8 P0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R0
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K23 ["createFragment"]
       68 DUPTABLE                         R10 K26 [{"AlignmentSpaceButtons", "AxisCheckboxes"}]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K12 ["createElement"]
       72 GETUPVAL                         R12 4
       73 DUPTABLE                         R13 K32 [{["axis"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"] = 1}]
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R14 R14 K33 ["Axis"]
       77 GETTABLEKS                       R14 R14 K34 ["Both"]
       79 SETTABLEKS                       R14 R13 K27 ["axis"]
       81 GETTABLEKS                       R14 R4 K35 ["SectionContentPadding"]
       83 SETTABLEKS                       R14 R13 K28 ["contentPadding"]
       85 GETIMPORT                        R14 K38 [Enum.FillDirection.Horizontal]
       87 SETTABLEKS                       R14 R13 K31 ["FillDirection"]
       89 DUPTABLE                         R14 K41 [{"WorldSpaceButton", "LocalSpaceButton"}]
       90 MOVE                             R15 R8
       91 GETUPVAL                         R16 5
       92 GETTABLEKS                       R16 R16 K42 ["World"]
       94 LOADN                            R17 1
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K39 ["WorldSpaceButton"]
       98 MOVE                             R15 R8
       99 GETUPVAL                         R16 5
      100 GETTABLEKS                       R16 R16 K43 ["Local"]
      102 LOADN                            R17 2
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K40 ["LocalSpaceButton"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K24 ["AlignmentSpaceButtons"]
      109 GETUPVAL                         R11 1
      110 GETTABLEKS                       R11 R11 K12 ["createElement"]
      112 GETUPVAL                         R12 4
      113 DUPTABLE                         R13 K32 [{["axis"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"] = 1}]
      114 GETUPVAL                         R14 4
      115 GETTABLEKS                       R14 R14 K33 ["Axis"]
      117 GETTABLEKS                       R14 R14 K34 ["Both"]
      119 SETTABLEKS                       R14 R13 K27 ["axis"]
      121 GETTABLEKS                       R14 R4 K35 ["SectionContentPadding"]
      123 SETTABLEKS                       R14 R13 K28 ["contentPadding"]
      125 GETIMPORT                        R14 K38 [Enum.FillDirection.Horizontal]
      127 SETTABLEKS                       R14 R13 K31 ["FillDirection"]
      129 MOVE                             R14 R6
      130 CALL                             R11 3 1
      131 SETTABLEKS                       R11 R10 K25 ["AxisCheckboxes"]
      133 CALL                             R9 1 -1
      134 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["FitFrame"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K8 ["FitFrameOnAxis"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Roact"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K10 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K12 ["withContext"]
       43 GETTABLEKS                       R7 R4 K13 ["UI"]
       45 GETTABLEKS                       R8 R7 K14 ["Checkbox"]
       47 GETTABLEKS                       R9 R7 K15 ["RadioButton"]
       49 GETTABLEKS                       R10 R4 K16 ["Util"]
       51 GETTABLEKS                       R11 R10 K17 ["LayoutOrderIterator"]
       53 GETIMPORT                        R12 K4 [require]
       55 GETTABLEKS                       R13 R0 K18 ["Src"]
       57 GETTABLEKS                       R13 R13 K19 ["Utility"]
       59 GETTABLEKS                       R13 R13 K20 ["AlignmentSpace"]
       61 CALL                             R12 1 1
       62 GETTABLEKS                       R13 R1 K21 ["join"]
       64 GETTABLEKS                       R14 R3 K22 ["PureComponent"]
       66 LOADK                            R16 K23 ["AxesSettingsFragment"]
       67 NAMECALL                         R14 R14 K24 ["extend"]
       69 CALL                             R14 2 1
       70 DUPCLOSURE                       R15 K25 [PROTO_2]
       71 CAPTURE                          VAL R13
       72 SETTABLEKS                       R15 R14 K26 ["init"]
       74 DUPCLOSURE                       R15 K27 [PROTO_4]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R12
       81 SETTABLEKS                       R15 R14 K28 ["render"]
       83 MOVE                             R15 R6
       84 DUPTABLE                         R16 K31 [{"Localization", "Stylizer"}]
       85 GETTABLEKS                       R17 R5 K29 ["Localization"]
       87 SETTABLEKS                       R17 R16 K29 ["Localization"]
       89 GETTABLEKS                       R17 R5 K30 ["Stylizer"]
       91 SETTABLEKS                       R17 R16 K30 ["Stylizer"]
       93 CALL                             R15 1 1
       94 MOVE                             R16 R14
       95 CALL                             R15 1 1
       96 MOVE                             R14 R15
       97 RETURN                           R14 1
