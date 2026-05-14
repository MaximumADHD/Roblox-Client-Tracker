PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 NEWTABLE                         R2 0 2
        3 GETIMPORT                        R3 K4 [UDim.new]
        5 LOADK                            R4 K5 [0.333333333333333]
        6 LOADN                            R5 0
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K4 [UDim.new]
       10 LOADK                            R5 K6 [0.666666666666667]
       11 LOADN                            R6 0
       12 CALL                             R4 2 -1
       13 SETLIST                          R2 R3 -1 [1]
       15 SETTABLEKS                       R2 R1 K0 ["sizes"]
       17 SETTABLEKS                       R1 R0 K7 ["state"]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K8 ["onSizesChange"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["sizes"]
        6 GETTABLE                         R5 R6 R1
        7 SETTABLEKS                       R5 R4 K0 ["Width"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETTABLEKS                       R4 R0 K0 ["Instance"]
        5 SETLIST                          R3 R4 1 [1]
        7 NAMECALL                         R1 R1 K1 ["Set"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 0 2
        8 DUPTABLE                         R5 K4 [{"Name"}]
        9 LOADK                            R8 K5 ["Table"]
       10 LOADK                            R9 K6 ["Instance"]
       11 NAMECALL                         R6 R3 K7 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K3 ["Name"]
       16 DUPTABLE                         R6 K4 [{"Name"}]
       17 LOADK                            R9 K5 ["Table"]
       18 LOADK                            R10 K8 ["Path"]
       19 NAMECALL                         R7 R3 K7 ["getText"]
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R6 K3 ["Name"]
       24 SETLIST                          R4 R5 2 [1]
       26 GETUPVAL                         R5 0
       27 MOVE                             R6 R4
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R2
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R6 R1 K9 ["Rows"]
       34 JUMPIFNOT                        R6 ; [+51]
       35 GETTABLEKS                       R7 R1 K9 ["Rows"]
       37 LENGTH                           R6 R7
       38 LOADN                            R7 0
       39 JUMPIFNOTLT                      R7 R6 ; [+46]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K10 ["createElement"]
       44 GETUPVAL                         R7 3
       45 DUPTABLE                         R8 K21 [{"Scroll", "UseScale", "ClampSize", "OnColumnSizesChange", "SortIndex", "SortOrder", "OnSortChange", "Columns", "Rows", "CellComponent", "OnSelectRow"}]
       46 LOADB                            R9 1
       47 SETTABLEKS                       R9 R8 K11 ["Scroll"]
       49 LOADB                            R9 1
       50 SETTABLEKS                       R9 R8 K12 ["UseScale"]
       52 LOADB                            R9 1
       53 SETTABLEKS                       R9 R8 K13 ["ClampSize"]
       55 GETTABLEKS                       R9 R0 K22 ["onSizesChange"]
       57 SETTABLEKS                       R9 R8 K14 ["OnColumnSizesChange"]
       59 GETTABLEKS                       R9 R1 K15 ["SortIndex"]
       61 SETTABLEKS                       R9 R8 K15 ["SortIndex"]
       63 GETTABLEKS                       R9 R1 K16 ["SortOrder"]
       65 SETTABLEKS                       R9 R8 K16 ["SortOrder"]
       67 GETTABLEKS                       R9 R1 K23 ["Sort"]
       69 SETTABLEKS                       R9 R8 K17 ["OnSortChange"]
       71 SETTABLEKS                       R5 R8 K18 ["Columns"]
       73 GETTABLEKS                       R9 R1 K9 ["Rows"]
       75 SETTABLEKS                       R9 R8 K9 ["Rows"]
       77 GETUPVAL                         R9 4
       78 SETTABLEKS                       R9 R8 K19 ["CellComponent"]
       80 DUPCLOSURE                       R9 K24 [PROTO_3]
       81 CAPTURE                          UPVAL U5
       82 SETTABLEKS                       R9 R8 K20 ["OnSelectRow"]
       84 CALL                             R6 2 -1
       85 RETURN                           R6 -1
       86 GETUPVAL                         R6 2
       87 GETTABLEKS                       R6 R6 K10 ["createElement"]
       89 GETUPVAL                         R7 6
       90 DUPTABLE                         R8 K26 [{"Padding"}]
       91 LOADN                            R9 5
       92 SETTABLEKS                       R9 R8 K25 ["Padding"]
       94 DUPTABLE                         R9 K28 [{"Child"}]
       95 GETUPVAL                         R10 2
       96 GETTABLEKS                       R10 R10 K10 ["createElement"]
       98 GETUPVAL                         R11 7
       99 DUPTABLE                         R12 K35 [{"TextXAlignment", "TextYAlignment", "TextWrapped", "Size", "RichText", "Text"}]
      100 GETIMPORT                        R13 K38 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R13 R12 K29 ["TextXAlignment"]
      104 GETIMPORT                        R13 K40 [Enum.TextYAlignment.Top]
      106 SETTABLEKS                       R13 R12 K30 ["TextYAlignment"]
      108 LOADB                            R13 1
      109 SETTABLEKS                       R13 R12 K31 ["TextWrapped"]
      111 GETIMPORT                        R13 K43 [UDim2.fromScale]
      113 LOADN                            R14 1
      114 LOADN                            R15 1
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K32 ["Size"]
      118 LOADB                            R13 1
      119 SETTABLEKS                       R13 R12 K33 ["RichText"]
      121 LOADK                            R15 K44 ["Plugin"]
      122 LOADK                            R16 K45 ["Info"]
      123 NAMECALL                         R13 R3 K7 ["getText"]
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K34 ["Text"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K27 ["Child"]
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Audio"]
        2 GETTABLEKS                       R3 R3 K1 ["SelectedRow"]
        4 JUMPIFNOT                        R3 ; [+10]
        5 GETTABLEKS                       R3 R0 K0 ["Audio"]
        7 GETTABLEKS                       R3 R3 K2 ["Rows"]
        9 GETTABLEKS                       R4 R0 K0 ["Audio"]
       11 GETTABLEKS                       R4 R4 K1 ["SelectedRow"]
       13 GETTABLE                         R2 R3 R4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 DUPTABLE                         R3 K5 [{"Rows", "SortOrder", "SortIndex"}]
       17 JUMPIFNOT                        R2 ; [+8]
       18 GETTABLEKS                       R5 R0 K0 ["Audio"]
       20 GETTABLEKS                       R5 R5 K6 ["Locations"]
       22 GETTABLEKS                       R6 R2 K7 ["Id"]
       24 GETTABLE                         R4 R5 R6
       25 JUMP                             ; [+2]
       26 NEWTABLE                         R4 0 0
       28 SETTABLEKS                       R4 R3 K2 ["Rows"]
       30 GETTABLEKS                       R4 R0 K0 ["Audio"]
       32 GETTABLEKS                       R4 R4 K8 ["Right"]
       34 GETTABLEKS                       R4 R4 K3 ["SortOrder"]
       36 SETTABLEKS                       R4 R3 K3 ["SortOrder"]
       38 GETTABLEKS                       R4 R0 K0 ["Audio"]
       40 GETTABLEKS                       R4 R4 K8 ["Right"]
       42 GETTABLEKS                       R4 R4 K4 ["SortIndex"]
       44 SETTABLEKS                       R4 R3 K4 ["SortIndex"]
       46 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["Right"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R3 3 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"Sort"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["Sort"]
        6 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["Dash"]
       32 GETTABLEKS                       R5 R4 K10 ["map"]
       34 GETTABLEKS                       R6 R4 K11 ["join"]
       36 GETTABLEKS                       R7 R3 K12 ["ContextServices"]
       38 GETTABLEKS                       R8 R7 K13 ["withContext"]
       40 GETTABLEKS                       R9 R7 K14 ["Localization"]
       42 GETIMPORT                        R10 K4 [require]
       44 GETTABLEKS                       R11 R0 K15 ["Src"]
       46 GETTABLEKS                       R11 R11 K16 ["Actions"]
       48 GETTABLEKS                       R11 R11 K17 ["SortTable"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K19 [game]
       53 LOADK                            R13 K20 ["Selection"]
       54 NAMECALL                         R11 R11 K21 ["GetService"]
       56 CALL                             R11 2 1
       57 GETTABLEKS                       R12 R3 K22 ["Style"]
       59 GETTABLEKS                       R12 R12 K23 ["Stylizer"]
       61 GETTABLEKS                       R13 R3 K24 ["UI"]
       63 GETTABLEKS                       R14 R13 K25 ["Pane"]
       65 GETTABLEKS                       R15 R13 K26 ["TextLabel"]
       67 GETIMPORT                        R16 K4 [require]
       69 GETTABLEKS                       R17 R0 K15 ["Src"]
       71 GETTABLEKS                       R17 R17 K27 ["Components"]
       73 GETTABLEKS                       R17 R17 K28 ["AudioTable"]
       75 CALL                             R16 1 1
       76 GETIMPORT                        R17 K4 [require]
       78 GETIMPORT                        R18 K1 [script]
       80 GETTABLEKS                       R18 R18 K29 ["RightCell"]
       82 CALL                             R17 1 1
       83 GETTABLEKS                       R18 R1 K30 ["PureComponent"]
       85 LOADK                            R20 K31 ["RightPanel"]
       86 NAMECALL                         R18 R18 K32 ["extend"]
       88 CALL                             R18 2 1
       89 DUPCLOSURE                       R19 K33 [PROTO_1]
       90 SETTABLEKS                       R19 R18 K34 ["init"]
       92 DUPCLOSURE                       R19 K35 [PROTO_4]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R15
      101 SETTABLEKS                       R19 R18 K36 ["render"]
      103 MOVE                             R19 R8
      104 DUPTABLE                         R20 K37 [{"Localization", "Stylizer"}]
      105 SETTABLEKS                       R9 R20 K14 ["Localization"]
      107 SETTABLEKS                       R12 R20 K23 ["Stylizer"]
      109 CALL                             R19 1 1
      110 MOVE                             R20 R18
      111 CALL                             R19 1 1
      112 MOVE                             R18 R19
      113 GETTABLEKS                       R19 R2 K38 ["connect"]
      115 DUPCLOSURE                       R20 K39 [PROTO_5]
      116 DUPCLOSURE                       R21 K40 [PROTO_7]
      117 CAPTURE                          VAL R10
      118 CALL                             R19 2 1
      119 MOVE                             R20 R18
      120 CALL                             R19 1 -1
      121 RETURN                           R19 -1
