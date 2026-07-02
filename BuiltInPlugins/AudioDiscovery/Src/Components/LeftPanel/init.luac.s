PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["Locations"]
        5 GETTABLEKS                       R4 R0 K2 ["Id"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+15]
        9 LENGTH                           R3 R2
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R4 R3 ; [+12]
       13 GETUPVAL                         R3 1
       14 NEWTABLE                         R5 0 1
       16 GETTABLEN                        R6 R2 1
       17 GETTABLEKS                       R6 R6 K3 ["Instance"]
       19 SETLIST                          R5 R6 1 [1]
       21 NAMECALL                         R3 R3 K4 ["Set"]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["props"]
       27 GETTABLEKS                       R3 R3 K5 ["OnSelectRow"]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 2
       32 NAMECALL                         R3 R3 K6 ["reportSelect"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 NEWTABLE                         R2 0 5
        3 GETIMPORT                        R3 K4 [UDim.new]
        5 LOADK                            R4 K5 [0.1]
        6 LOADN                            R5 0
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K4 [UDim.new]
       10 LOADK                            R5 K6 [0.2]
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 GETIMPORT                        R5 K4 [UDim.new]
       15 LOADK                            R6 K7 [0.3]
       16 LOADN                            R7 0
       17 CALL                             R5 2 1
       18 GETIMPORT                        R6 K4 [UDim.new]
       20 LOADK                            R7 K5 [0.1]
       21 LOADN                            R8 0
       22 CALL                             R6 2 1
       23 GETIMPORT                        R7 K4 [UDim.new]
       25 LOADK                            R8 K7 [0.3]
       26 LOADN                            R9 0
       27 CALL                             R7 2 -1
       28 SETLIST                          R2 R3 -1 [1]
       30 SETTABLEKS                       R2 R1 K0 ["sizes"]
       32 SETTABLEKS                       R1 R0 K8 ["state"]
       34 NEWCLOSURE                       R1 P0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K9 ["onSizesChange"]
       38 NEWCLOSURE                       R1 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U1
       42 SETTABLEKS                       R1 R0 K10 ["onSelectRow"]
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["sizes"]
        6 GETTABLE                         R5 R6 R1
        7 SETTABLEKS                       R5 R4 K0 ["Width"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 0 5
        8 DUPTABLE                         R5 K4 [{"Name"}]
        9 LOADK                            R8 K5 ["Table"]
       10 LOADK                            R9 K6 ["OK"]
       11 NAMECALL                         R6 R3 K7 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K3 ["Name"]
       16 DUPTABLE                         R6 K4 [{"Name"}]
       17 LOADK                            R9 K5 ["Table"]
       18 LOADK                            R10 K8 ["Id"]
       19 NAMECALL                         R7 R3 K7 ["getText"]
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R6 K3 ["Name"]
       24 DUPTABLE                         R7 K4 [{"Name"}]
       25 LOADK                            R10 K5 ["Table"]
       26 LOADK                            R11 K3 ["Name"]
       27 NAMECALL                         R8 R3 K7 ["getText"]
       29 CALL                             R8 3 1
       30 SETTABLEKS                       R8 R7 K3 ["Name"]
       32 DUPTABLE                         R8 K4 [{"Name"}]
       33 LOADK                            R11 K5 ["Table"]
       34 LOADK                            R12 K9 ["Time"]
       35 NAMECALL                         R9 R3 K7 ["getText"]
       37 CALL                             R9 3 1
       38 SETTABLEKS                       R9 R8 K3 ["Name"]
       40 DUPTABLE                         R9 K4 [{"Name"}]
       41 LOADK                            R12 K5 ["Table"]
       42 LOADK                            R13 K10 ["Creator"]
       43 NAMECALL                         R10 R3 K7 ["getText"]
       45 CALL                             R10 3 1
       46 SETTABLEKS                       R10 R9 K3 ["Name"]
       48 SETLIST                          R4 R5 5 [1]
       50 GETUPVAL                         R5 0
       51 MOVE                             R6 R4
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R2
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K11 ["createElement"]
       59 GETUPVAL                         R7 3
       60 DUPTABLE                         R8 K26 [{["Scroll"] = True, ["UseScale"] = True, ["ClampSize"] = True, ["OnColumnSizesChange"], ["SortIndex"], ["SortOrder"], ["OnSortChange"], ["CellComponent"], ["Columns"], ["Rows"], ["SelectedRow"], ["OnSelectRow"], ["CellProps"]}]
       61 GETTABLEKS                       R9 R0 K27 ["onSizesChange"]
       63 SETTABLEKS                       R9 R8 K16 ["OnColumnSizesChange"]
       65 GETTABLEKS                       R9 R1 K17 ["SortIndex"]
       67 SETTABLEKS                       R9 R8 K17 ["SortIndex"]
       69 GETTABLEKS                       R9 R1 K18 ["SortOrder"]
       71 SETTABLEKS                       R9 R8 K18 ["SortOrder"]
       73 GETTABLEKS                       R9 R1 K28 ["Sort"]
       75 SETTABLEKS                       R9 R8 K19 ["OnSortChange"]
       77 GETUPVAL                         R9 4
       78 SETTABLEKS                       R9 R8 K20 ["CellComponent"]
       80 SETTABLEKS                       R5 R8 K21 ["Columns"]
       82 GETTABLEKS                       R9 R1 K22 ["Rows"]
       84 SETTABLEKS                       R9 R8 K22 ["Rows"]
       86 GETTABLEKS                       R9 R1 K23 ["SelectedRow"]
       88 SETTABLEKS                       R9 R8 K23 ["SelectedRow"]
       90 GETTABLEKS                       R9 R0 K29 ["onSelectRow"]
       92 SETTABLEKS                       R9 R8 K24 ["OnSelectRow"]
       94 DUPTABLE                         R9 K31 [{"Locations"}]
       95 GETTABLEKS                       R10 R1 K30 ["Locations"]
       97 SETTABLEKS                       R10 R9 K30 ["Locations"]
       99 SETTABLEKS                       R9 R8 K25 ["CellProps"]
      101 CALL                             R6 2 -1
      102 RETURN                           R6 -1

PROTO_5:
        0 DUPTABLE                         R2 K5 [{"Locations", "Rows", "SelectedRow", "SortIndex", "SortOrder"}]
        1 GETTABLEKS                       R3 R0 K6 ["Audio"]
        3 GETTABLEKS                       R3 R3 K0 ["Locations"]
        5 SETTABLEKS                       R3 R2 K0 ["Locations"]
        7 GETTABLEKS                       R3 R0 K6 ["Audio"]
        9 GETTABLEKS                       R3 R3 K1 ["Rows"]
       11 SETTABLEKS                       R3 R2 K1 ["Rows"]
       13 GETTABLEKS                       R3 R0 K6 ["Audio"]
       15 GETTABLEKS                       R3 R3 K2 ["SelectedRow"]
       17 SETTABLEKS                       R3 R2 K2 ["SelectedRow"]
       19 GETTABLEKS                       R3 R0 K6 ["Audio"]
       21 GETTABLEKS                       R3 R3 K7 ["Left"]
       23 GETTABLEKS                       R3 R3 K3 ["SortIndex"]
       25 SETTABLEKS                       R3 R2 K3 ["SortIndex"]
       27 GETTABLEKS                       R3 R0 K6 ["Audio"]
       29 GETTABLEKS                       R3 R3 K7 ["Left"]
       31 GETTABLEKS                       R3 R3 K4 ["SortOrder"]
       33 SETTABLEKS                       R3 R2 K4 ["SortOrder"]
       35 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["Left"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R3 3 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"OnSelectRow", "Sort"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnSelectRow"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["Sort"]
       11 RETURN                           R1 1

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
       46 GETTABLEKS                       R11 R11 K16 ["Util"]
       48 GETTABLEKS                       R11 R11 K17 ["Analytics"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R12 R0 K15 ["Src"]
       55 GETTABLEKS                       R12 R12 K18 ["Actions"]
       57 GETTABLEKS                       R12 R12 K19 ["SelectRow"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K4 [require]
       62 GETTABLEKS                       R13 R0 K15 ["Src"]
       64 GETTABLEKS                       R13 R13 K18 ["Actions"]
       66 GETTABLEKS                       R13 R13 K20 ["SortTable"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R3 K21 ["Style"]
       71 GETTABLEKS                       R13 R13 K22 ["Stylizer"]
       73 GETIMPORT                        R14 K24 [game]
       75 LOADK                            R16 K25 ["Selection"]
       76 NAMECALL                         R14 R14 K26 ["GetService"]
       78 CALL                             R14 2 1
       79 GETIMPORT                        R15 K4 [require]
       81 GETTABLEKS                       R16 R0 K15 ["Src"]
       83 GETTABLEKS                       R16 R16 K27 ["Components"]
       85 GETTABLEKS                       R16 R16 K28 ["AudioTable"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K4 [require]
       90 GETIMPORT                        R17 K1 [script]
       92 GETTABLEKS                       R17 R17 K29 ["LeftCell"]
       94 CALL                             R16 1 1
       95 GETTABLEKS                       R17 R1 K30 ["PureComponent"]
       97 LOADK                            R19 K31 ["LeftPanel"]
       98 NAMECALL                         R17 R17 K32 ["extend"]
      100 CALL                             R17 2 1
      101 DUPCLOSURE                       R18 K33 [PROTO_2]
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R18 R17 K34 ["init"]
      106 DUPCLOSURE                       R18 K35 [PROTO_4]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R16
      112 SETTABLEKS                       R18 R17 K36 ["render"]
      114 MOVE                             R18 R8
      115 DUPTABLE                         R19 K37 [{"Localization", "Stylizer"}]
      116 SETTABLEKS                       R9 R19 K14 ["Localization"]
      118 SETTABLEKS                       R13 R19 K22 ["Stylizer"]
      120 CALL                             R18 1 1
      121 MOVE                             R19 R17
      122 CALL                             R18 1 1
      123 MOVE                             R17 R18
      124 GETTABLEKS                       R18 R2 K38 ["connect"]
      126 DUPCLOSURE                       R19 K39 [PROTO_5]
      127 DUPCLOSURE                       R20 K40 [PROTO_8]
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 CALL                             R18 2 1
      131 MOVE                             R19 R17
      132 CALL                             R18 1 -1
      133 RETURN                           R18 -1
