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
        4 DUPTABLE                         R4 K7 [{"Disabled", "Key", "LayoutOrder", "Selected", "Text", "OnClick"}]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K1 ["Disabled"]
        8 SETTABLEKS                       R0 R4 K2 ["Key"]
       10 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K8 ["AlignmentSpace"]
       15 JUMPIFEQ                         R6 R0 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K4 ["Selected"]
       21 GETUPVAL                         R5 3
       22 LOADK                            R7 K9 ["AxesSettingsFragment"]
       23 MOVE                             R8 R0
       24 NAMECALL                         R5 R5 K10 ["getText"]
       26 CALL                             R5 3 1
       27 SETTABLEKS                       R5 R4 K5 ["Text"]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K11 ["setAlignmentSpace"]
       32 SETTABLEKS                       R5 R4 K6 ["OnClick"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

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
       39 DUPTABLE                         R17 K19 [{"Key", "Checked", "Disabled", "LayoutOrder", "Text", "OnClick"}]
       40 SETTABLEKS                       R12 R17 K13 ["Key"]
       42 SETTABLEKS                       R13 R17 K14 ["Checked"]
       44 LOADB                            R18 0
       45 SETTABLEKS                       R18 R17 K15 ["Disabled"]
       47 NAMECALL                         R18 R5 K20 ["getNextOrder"]
       49 CALL                             R18 1 1
       50 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
       52 SETTABLEKS                       R14 R17 K17 ["Text"]
       54 GETTABLEKS                       R18 R0 K21 ["toggleAxis"]
       56 SETTABLEKS                       R18 R17 K18 ["OnClick"]
       58 CALL                             R15 2 1
       59 SETTABLE                         R15 R6 R12
       60 FORGLOOP                         R8 2 [inext] ; [-35]
       62 NEWCLOSURE                       R8 P0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R0
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K22 ["createFragment"]
       71 DUPTABLE                         R10 K25 [{"AlignmentSpaceButtons", "AxisCheckboxes"}]
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R11 R11 K12 ["createElement"]
       75 GETUPVAL                         R12 4
       76 DUPTABLE                         R13 K30 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
       77 GETUPVAL                         R14 4
       78 GETTABLEKS                       R14 R14 K31 ["Axis"]
       80 GETTABLEKS                       R14 R14 K32 ["Both"]
       82 SETTABLEKS                       R14 R13 K26 ["axis"]
       84 GETTABLEKS                       R14 R4 K33 ["SectionContentPadding"]
       86 SETTABLEKS                       R14 R13 K27 ["contentPadding"]
       88 LOADN                            R14 1
       89 SETTABLEKS                       R14 R13 K28 ["BackgroundTransparency"]
       91 GETIMPORT                        R14 K36 [Enum.FillDirection.Horizontal]
       93 SETTABLEKS                       R14 R13 K29 ["FillDirection"]
       95 LOADN                            R14 1
       96 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       98 DUPTABLE                         R14 K39 [{"WorldSpaceButton", "LocalSpaceButton"}]
       99 MOVE                             R15 R8
      100 GETUPVAL                         R16 5
      101 GETTABLEKS                       R16 R16 K40 ["World"]
      103 LOADN                            R17 1
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K37 ["WorldSpaceButton"]
      107 MOVE                             R15 R8
      108 GETUPVAL                         R16 5
      109 GETTABLEKS                       R16 R16 K41 ["Local"]
      111 LOADN                            R17 2
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K38 ["LocalSpaceButton"]
      115 CALL                             R11 3 1
      116 SETTABLEKS                       R11 R10 K23 ["AlignmentSpaceButtons"]
      118 GETUPVAL                         R11 1
      119 GETTABLEKS                       R11 R11 K12 ["createElement"]
      121 GETUPVAL                         R12 4
      122 DUPTABLE                         R13 K30 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
      123 GETUPVAL                         R14 4
      124 GETTABLEKS                       R14 R14 K31 ["Axis"]
      126 GETTABLEKS                       R14 R14 K32 ["Both"]
      128 SETTABLEKS                       R14 R13 K26 ["axis"]
      130 GETTABLEKS                       R14 R4 K33 ["SectionContentPadding"]
      132 SETTABLEKS                       R14 R13 K27 ["contentPadding"]
      134 LOADN                            R14 1
      135 SETTABLEKS                       R14 R13 K28 ["BackgroundTransparency"]
      137 GETIMPORT                        R14 K36 [Enum.FillDirection.Horizontal]
      139 SETTABLEKS                       R14 R13 K29 ["FillDirection"]
      141 LOADN                            R14 1
      142 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
      144 MOVE                             R14 R6
      145 CALL                             R11 3 1
      146 SETTABLEKS                       R11 R10 K24 ["AxisCheckboxes"]
      148 CALL                             R9 1 -1
      149 RETURN                           R9 -1

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
