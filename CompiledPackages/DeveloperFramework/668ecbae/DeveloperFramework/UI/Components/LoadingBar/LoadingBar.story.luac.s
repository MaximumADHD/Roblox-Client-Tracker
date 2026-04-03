PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"completed"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["completed"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"progress"}]
        2 SETTABLEKS                       R0 R3 K0 ["progress"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"completed", "progress"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["completed"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["progress"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["finishLoading"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["setProgress"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["completed"]
        4 GETTABLEKS                       R3 R0 K0 ["state"]
        6 GETTABLEKS                       R2 R3 K2 ["progress"]
        8 LOADK                            R3 K3 ["%i%%"]
        9 MULK                             R5 R2 K4 [100]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["createElement"]
       16 GETUPVAL                         R5 1
       17 DUPTABLE                         R6 K11 [{"Layout", "AutomaticSize", "Padding", "Spacing"}]
       18 GETIMPORT                        R7 K15 [Enum.FillDirection.Vertical]
       20 SETTABLEKS                       R7 R6 K7 ["Layout"]
       22 GETIMPORT                        R7 K17 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R7 R6 K8 ["AutomaticSize"]
       26 LOADN                            R7 10
       27 SETTABLEKS                       R7 R6 K9 ["Padding"]
       29 LOADN                            R7 15
       30 SETTABLEKS                       R7 R6 K10 ["Spacing"]
       32 DUPTABLE                         R7 K22 [{"FakeLoadingBar", "LoadingText", "FakeLoadingBar2", "Button"}]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K6 ["createElement"]
       36 GETUPVAL                         R9 2
       37 DUPTABLE                         R10 K27 [{"LayoutOrder", "Size", "LoadingTime", "OnProgressChanged"}]
       38 LOADN                            R11 1
       39 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       41 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       43 LOADN                            R12 125
       44 LOADN                            R13 8
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K24 ["Size"]
       48 LOADN                            R11 5
       49 SETTABLEKS                       R11 R10 K25 ["LoadingTime"]
       51 GETTABLEKS                       R11 R0 K31 ["setProgress"]
       53 SETTABLEKS                       R11 R10 K26 ["OnProgressChanged"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K18 ["FakeLoadingBar"]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K6 ["createElement"]
       61 LOADK                            R9 K32 ["TextLabel"]
       62 DUPTABLE                         R10 K37 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize"}]
       63 LOADN                            R11 2
       64 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       66 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       68 LOADN                            R12 120
       69 LOADN                            R13 16
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K24 ["Size"]
       73 LOADN                            R11 1
       74 SETTABLEKS                       R11 R10 K33 ["BackgroundTransparency"]
       76 SETTABLEKS                       R3 R10 K34 ["Text"]
       78 GETIMPORT                        R11 K39 [Enum.Font.SourceSans]
       80 SETTABLEKS                       R11 R10 K35 ["Font"]
       82 LOADN                            R11 16
       83 SETTABLEKS                       R11 R10 K36 ["TextSize"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K19 ["LoadingText"]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K6 ["createElement"]
       91 GETUPVAL                         R9 2
       92 DUPTABLE                         R10 K42 [{"LayoutOrder", "Size", "LoadingTime", "HoldValue", "Completed"}]
       93 LOADN                            R11 3
       94 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       96 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       98 LOADN                            R12 125
       99 LOADN                            R13 8
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K24 ["Size"]
      103 LOADN                            R11 2
      104 SETTABLEKS                       R11 R10 K25 ["LoadingTime"]
      106 LOADK                            R11 K43 [0.75]
      107 SETTABLEKS                       R11 R10 K40 ["HoldValue"]
      109 SETTABLEKS                       R1 R10 K41 ["Completed"]
      111 CALL                             R8 2 1
      112 SETTABLEKS                       R8 R7 K20 ["FakeLoadingBar2"]
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R8 R9 K6 ["createElement"]
      117 GETUPVAL                         R9 3
      118 DUPTABLE                         R10 K46 [{"LayoutOrder", "Style", "Text", "Size", "OnClick"}]
      119 LOADN                            R11 4
      120 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
      122 LOADK                            R11 K47 ["Round"]
      123 SETTABLEKS                       R11 R10 K44 ["Style"]
      125 LOADK                            R11 K48 ["Complete"]
      126 SETTABLEKS                       R11 R10 K34 ["Text"]
      128 GETIMPORT                        R11 K30 [UDim2.fromOffset]
      130 LOADN                            R12 120
      131 LOADN                            R13 32
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R10 K24 ["Size"]
      135 GETTABLEKS                       R11 R0 K49 ["finishLoading"]
      137 SETTABLEKS                       R11 R10 K45 ["OnClick"]
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K21 ["Button"]
      142 CALL                             R4 3 -1
      143 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["FakeLoadingBar"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["DEPRECATED_Button"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       45 LOADK                            R7 K13 ["ExampleLoadingBar"]
       46 NAMECALL                         R5 R5 K14 ["extend"]
       48 CALL                             R5 2 1
       49 DUPCLOSURE                       R6 K15 [PROTO_2]
       50 SETTABLEKS                       R6 R5 K16 ["init"]
       52 DUPCLOSURE                       R6 K17 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R6 R5 K18 ["render"]
       59 RETURN                           R5 1
