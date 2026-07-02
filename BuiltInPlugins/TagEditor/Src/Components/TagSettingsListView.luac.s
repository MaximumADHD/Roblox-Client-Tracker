PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["tag"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Get"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLEKS                       R5 R0 K4 ["ShowText"]
       13 NOT                              R4 R5
       14 NAMECALL                         R1 R1 K5 ["SetShowText"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["tag"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Get"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLEKS                       R5 R0 K4 ["AlwaysOnTop"]
       13 NOT                              R4 R5
       14 NAMECALL                         R1 R1 K5 ["SetAlwaysOnTop"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["openColorPicker"]
        5 GETTABLEKS                       R2 R0 K2 ["tag"]
        7 GETTABLEKS                       R2 R2 K3 ["Name"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["openIconPicker"]
        5 GETTABLEKS                       R2 R0 K2 ["tag"]
        7 GETTABLEKS                       R2 R2 K3 ["Name"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["tag"]
        9 GETTABLEKS                       R2 R2 K3 ["Name"]
       11 NAMECALL                         R0 R0 K4 ["SelectAll"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_7]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_9]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R1 R0 K0 ["onShowTextRowClicked"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R1 R0 K1 ["onAlwaysOntopRowClicked"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K2 ["onColorRowClicked"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K3 ["onIconRowClicked"]
       20 NEWCLOSURE                       R1 P4
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K4 ["onTaggedInstancesRowClicked"]
       25 NEWCLOSURE                       R1 P5
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K5 ["onVisualizeRowClicked"]
       29 NEWCLOSURE                       R1 P6
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K6 ["onGroupRowClicked"]
       33 NEWCLOSURE                       R1 P7
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K7 ["onVisualizeDropdownItemCloseMenu"]
       37 NEWCLOSURE                       R1 P8
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K8 ["onGroupDropdownItemCloseMenu"]
       41 DUPTABLE                         R3 K12 [{["VisualizeAsDropdownHidden"] = True, ["GroupDropdownHidden"] = True}]
       42 NAMECALL                         R1 R0 K13 ["setState"]
       44 CALL                             R1 2 0
       45 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"RightIcon", "OnClick"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["TaggedInstancesRow"]
        8 GETTABLEKS                       R3 R3 K5 ["Icon"]
       10 SETTABLEKS                       R3 R2 K1 ["RightIcon"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K6 ["onTaggedInstancesRowClicked"]
       15 SETTABLEKS                       R3 R2 K2 ["OnClick"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Name", "OnClick"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["Icon"]
        8 SETTABLEKS                       R3 R2 K1 ["Name"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K5 ["onIconRowClicked"]
       13 SETTABLEKS                       R3 R2 K2 ["OnClick"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_14:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+37]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Group"]
        5 JUMPIFNOT                        R2 ; [+12]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Get"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Name"]
       13 LOADK                            R5 K4 [""]
       14 NAMECALL                         R2 R2 K5 ["SetGroup"]
       16 CALL                             R2 3 0
       17 JUMP                             ; [+31]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 LOADK                            R5 K6 ["Info"]
       21 LOADK                            R6 K7 ["NewGroup"]
       22 NAMECALL                         R3 R3 K8 ["getText"]
       24 CALL                             R3 3 -1
       25 CALL                             R2 -1 1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K2 ["Get"]
       29 CALL                             R3 0 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K3 ["Name"]
       33 MOVE                             R6 R2
       34 NAMECALL                         R3 R3 K5 ["SetGroup"]
       36 CALL                             R3 3 0
       37 JUMP                             ; [+11]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K2 ["Get"]
       41 CALL                             R2 0 1
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K3 ["Name"]
       45 MOVE                             R5 R0
       46 NAMECALL                         R2 R2 K5 ["SetGroup"]
       48 CALL                             R2 3 0
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K9 ["onGroupDropdownItemCloseMenu"]
       52 CALL                             R2 0 0
       53 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Size"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["GroupRow"]
        8 GETTABLEKS                       R3 R3 K1 ["Size"]
       10 SETTABLEKS                       R3 R2 K1 ["Size"]
       12 DUPTABLE                         R3 K6 [{"Button", "DropdownMenu"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["createElement"]
       16 GETUPVAL                         R5 3
       17 DUPTABLE                         R6 K9 [{"RightIcon", "OnClick"}]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K3 ["GroupRow"]
       21 GETTABLEKS                       R7 R7 K10 ["Icon"]
       23 SETTABLEKS                       R7 R6 K7 ["RightIcon"]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K11 ["onGroupRowClicked"]
       28 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K4 ["Button"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K0 ["createElement"]
       36 GETUPVAL                         R5 5
       37 DUPTABLE                         R6 K23 [{["Hide"], ["OnItemActivated"], ["OnFocusLost"], ["PlaceholderText"], ["Width"], ["ItemHeight"], ["MaxHeight"], ["Icons"], ["Items"], ["Priority"] = 2}]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K24 ["state"]
       41 GETTABLEKS                       R7 R7 K25 ["GroupDropdownHidden"]
       43 SETTABLEKS                       R7 R6 K12 ["Hide"]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U4
       51 SETTABLEKS                       R7 R6 K13 ["OnItemActivated"]
       53 GETUPVAL                         R7 4
       54 GETTABLEKS                       R7 R7 K26 ["onGroupDropdownItemCloseMenu"]
       56 SETTABLEKS                       R7 R6 K14 ["OnFocusLost"]
       58 GETUPVAL                         R7 6
       59 GETTABLEKS                       R7 R7 K27 ["Group"]
       61 SETTABLEKS                       R7 R6 K15 ["PlaceholderText"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K3 ["GroupRow"]
       66 GETTABLEKS                       R7 R7 K28 ["DropDownWidth"]
       68 SETTABLEKS                       R7 R6 K16 ["Width"]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R7 R7 K3 ["GroupRow"]
       73 GETTABLEKS                       R7 R7 K17 ["ItemHeight"]
       75 SETTABLEKS                       R7 R6 K17 ["ItemHeight"]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K3 ["GroupRow"]
       80 GETTABLEKS                       R7 R7 K18 ["MaxHeight"]
       82 SETTABLEKS                       R7 R6 K18 ["MaxHeight"]
       84 NEWTABLE                         R7 0 1
       86 GETUPVAL                         R9 6
       87 GETTABLEKS                       R9 R9 K27 ["Group"]
       89 JUMPIFNOT                        R9 ; [+6]
       90 GETUPVAL                         R8 2
       91 GETTABLEKS                       R8 R8 K3 ["GroupRow"]
       93 GETTABLEKS                       R8 R8 K29 ["UnassignIcon"]
       95 JUMP                             ; [+5]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K3 ["GroupRow"]
       99 GETTABLEKS                       R8 R8 K30 ["NewGroupIcon"]
      101 SETLIST                          R7 R8 1 [1]
      103 SETTABLEKS                       R7 R6 K19 ["Icons"]
      105 GETUPVAL                         R7 10
      106 GETTABLEKS                       R7 R7 K31 ["append"]
      108 NEWTABLE                         R8 0 1
      110 GETUPVAL                         R10 6
      111 GETTABLEKS                       R10 R10 K27 ["Group"]
      113 JUMPIFNOT                        R10 ; [+2]
      114 GETUPVAL                         R9 11
      115 JUMP                             ; [+1]
      116 GETUPVAL                         R9 12
      117 SETLIST                          R8 R9 1 [1]
      119 GETUPVAL                         R9 13
      120 GETTABLEKS                       R9 R9 K32 ["groups"]
      122 CALL                             R7 2 1
      123 SETTABLEKS                       R7 R6 K20 ["Items"]
      125 CALL                             R4 2 1
      126 SETTABLEKS                       R4 R3 K5 ["DropdownMenu"]
      128 CALL                             R0 3 -1
      129 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"RightIcon", "IconColor", "OnClick"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K5 ["ColorRow"]
        8 GETTABLEKS                       R3 R3 K6 ["Icon"]
       10 SETTABLEKS                       R3 R2 K1 ["RightIcon"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K7 ["Color"]
       15 SETTABLEKS                       R3 R2 K2 ["IconColor"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K8 ["onColorRowClicked"]
       20 SETTABLEKS                       R3 R2 K3 ["OnClick"]
       22 CALL                             R0 2 -1
       23 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Checked", "OnClick"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["ShowText"]
        8 SETTABLEKS                       R3 R2 K1 ["Checked"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K5 ["onShowTextRowClicked"]
       13 SETTABLEKS                       R3 R2 K2 ["OnClick"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Checked", "OnClick"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["AlwaysOnTop"]
        8 SETTABLEKS                       R3 R2 K1 ["Checked"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K5 ["onAlwaysOntopRowClicked"]
       13 SETTABLEKS                       R3 R2 K2 ["OnClick"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["DrawType"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Get"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["Name"]
        7 GETUPVAL                         R6 2
        8 GETTABLE                         R5 R6 R1
        9 NAMECALL                         R2 R2 K2 ["SetDrawType"]
       11 CALL                             R2 3 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["onVisualizeDropdownItemCloseMenu"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_21:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+11]
        3 NEWTABLE                         R1 0 5
        5 LOADK                            R2 K0 ["Box"]
        6 LOADK                            R3 K1 ["Sphere"]
        7 LOADK                            R4 K2 ["Outline"]
        8 LOADK                            R5 K3 ["Icon"]
        9 LOADK                            R6 K4 ["None"]
       10 SETLIST                          R1 R2 5 [1]
       12 MOVE                             R0 R1
       13 JUMP                             ; [+10]
       14 NEWTABLE                         R1 0 5
       16 LOADK                            R2 K0 ["Box"]
       17 LOADK                            R3 K1 ["Sphere"]
       18 LOADK                            R4 K2 ["Outline"]
       19 LOADK                            R5 K5 ["Text"]
       20 LOADK                            R6 K3 ["Icon"]
       21 SETLIST                          R1 R2 5 [1]
       23 MOVE                             R0 R1
       24 LOADNIL                          R1
       25 GETUPVAL                         R2 0
       26 JUMPIFNOT                        R2 ; [+36]
       27 NEWTABLE                         R2 0 5
       29 GETUPVAL                         R3 1
       30 LOADK                            R5 K6 ["VisualizeOptions"]
       31 LOADK                            R6 K0 ["Box"]
       32 NAMECALL                         R3 R3 K7 ["getText"]
       34 CALL                             R3 3 1
       35 GETUPVAL                         R4 1
       36 LOADK                            R6 K6 ["VisualizeOptions"]
       37 LOADK                            R7 K1 ["Sphere"]
       38 NAMECALL                         R4 R4 K7 ["getText"]
       40 CALL                             R4 3 1
       41 GETUPVAL                         R5 1
       42 LOADK                            R7 K6 ["VisualizeOptions"]
       43 LOADK                            R8 K2 ["Outline"]
       44 NAMECALL                         R5 R5 K7 ["getText"]
       46 CALL                             R5 3 1
       47 GETUPVAL                         R6 1
       48 LOADK                            R8 K6 ["VisualizeOptions"]
       49 LOADK                            R9 K3 ["Icon"]
       50 NAMECALL                         R6 R6 K7 ["getText"]
       52 CALL                             R6 3 1
       53 GETUPVAL                         R7 1
       54 LOADK                            R9 K6 ["VisualizeOptions"]
       55 LOADK                            R10 K4 ["None"]
       56 NAMECALL                         R7 R7 K7 ["getText"]
       58 CALL                             R7 3 -1
       59 SETLIST                          R2 R3 -1 [1]
       61 MOVE                             R1 R2
       62 JUMP                             ; [+35]
       63 NEWTABLE                         R2 0 5
       65 GETUPVAL                         R3 1
       66 LOADK                            R5 K6 ["VisualizeOptions"]
       67 LOADK                            R6 K0 ["Box"]
       68 NAMECALL                         R3 R3 K7 ["getText"]
       70 CALL                             R3 3 1
       71 GETUPVAL                         R4 1
       72 LOADK                            R6 K6 ["VisualizeOptions"]
       73 LOADK                            R7 K1 ["Sphere"]
       74 NAMECALL                         R4 R4 K7 ["getText"]
       76 CALL                             R4 3 1
       77 GETUPVAL                         R5 1
       78 LOADK                            R7 K6 ["VisualizeOptions"]
       79 LOADK                            R8 K2 ["Outline"]
       80 NAMECALL                         R5 R5 K7 ["getText"]
       82 CALL                             R5 3 1
       83 GETUPVAL                         R6 1
       84 LOADK                            R8 K6 ["VisualizeOptions"]
       85 LOADK                            R9 K5 ["Text"]
       86 NAMECALL                         R6 R6 K7 ["getText"]
       88 CALL                             R6 3 1
       89 GETUPVAL                         R7 1
       90 LOADK                            R9 K6 ["VisualizeOptions"]
       91 LOADK                            R10 K3 ["Icon"]
       92 NAMECALL                         R7 R7 K7 ["getText"]
       94 CALL                             R7 3 -1
       95 SETLIST                          R2 R3 -1 [1]
       97 MOVE                             R1 R2
       98 NEWCLOSURE                       R2 P0
       99 CAPTURE                          UPVAL U2
      100 GETUPVAL                         R3 3
      101 GETTABLEKS                       R3 R3 K8 ["findIndex"]
      103 MOVE                             R4 R0
      104 MOVE                             R5 R2
      105 CALL                             R3 2 1
      106 JUMPIFNOT                        R3 ; [+2]
      107 GETTABLE                         R4 R1 R3
      108 JUMP                             ; [+1]
      109 LOADK                            R4 K9 [""]
      110 GETUPVAL                         R5 4
      111 GETTABLEKS                       R5 R5 K10 ["createElement"]
      113 GETUPVAL                         R6 5
      114 DUPTABLE                         R7 K14 [{["Size"], ["Style"] = "BorderBox"}]
      115 GETUPVAL                         R8 6
      116 GETTABLEKS                       R8 R8 K15 ["VisualizeAsRow"]
      118 GETTABLEKS                       R8 R8 K11 ["Size"]
      120 SETTABLEKS                       R8 R7 K11 ["Size"]
      122 DUPTABLE                         R8 K18 [{"Button", "DropdownMenu"}]
      123 GETUPVAL                         R9 4
      124 GETTABLEKS                       R9 R9 K10 ["createElement"]
      126 GETUPVAL                         R10 7
      127 DUPTABLE                         R11 K21 [{"Text", "RightIcon", "OnClick", "Size"}]
      128 SETTABLEKS                       R4 R11 K5 ["Text"]
      130 GETUPVAL                         R12 6
      131 GETTABLEKS                       R12 R12 K15 ["VisualizeAsRow"]
      133 GETTABLEKS                       R12 R12 K3 ["Icon"]
      135 SETTABLEKS                       R12 R11 K19 ["RightIcon"]
      137 GETUPVAL                         R12 8
      138 GETTABLEKS                       R12 R12 K22 ["onVisualizeRowClicked"]
      140 SETTABLEKS                       R12 R11 K20 ["OnClick"]
      142 GETUPVAL                         R12 6
      143 GETTABLEKS                       R12 R12 K15 ["VisualizeAsRow"]
      145 GETTABLEKS                       R12 R12 K11 ["Size"]
      147 SETTABLEKS                       R12 R11 K11 ["Size"]
      149 CALL                             R9 2 1
      150 SETTABLEKS                       R9 R8 K16 ["Button"]
      152 GETUPVAL                         R9 4
      153 GETTABLEKS                       R9 R9 K10 ["createElement"]
      155 GETUPVAL                         R10 9
      156 DUPTABLE                         R11 K33 [{["Hide"], ["OnItemActivated"], ["OnFocusLost"], ["PlaceholderText"], ["Width"], ["ItemHeight"], ["MaxHeight"], ["Priority"] = 2, ["Items"]}]
      157 GETUPVAL                         R12 8
      158 GETTABLEKS                       R12 R12 K34 ["state"]
      160 GETTABLEKS                       R12 R12 K35 ["VisualizeAsDropdownHidden"]
      162 SETTABLEKS                       R12 R11 K23 ["Hide"]
      164 NEWCLOSURE                       R12 P1
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          REF R0
      168 CAPTURE                          UPVAL U8
      169 SETTABLEKS                       R12 R11 K24 ["OnItemActivated"]
      171 GETUPVAL                         R12 8
      172 GETTABLEKS                       R12 R12 K36 ["onVisualizeDropdownItemCloseMenu"]
      174 SETTABLEKS                       R12 R11 K25 ["OnFocusLost"]
      176 SETTABLEKS                       R4 R11 K26 ["PlaceholderText"]
      178 GETUPVAL                         R12 6
      179 GETTABLEKS                       R12 R12 K15 ["VisualizeAsRow"]
      181 GETTABLEKS                       R12 R12 K37 ["DropDownWidth"]
      183 SETTABLEKS                       R12 R11 K27 ["Width"]
      185 GETUPVAL                         R12 6
      186 GETTABLEKS                       R12 R12 K15 ["VisualizeAsRow"]
      188 GETTABLEKS                       R12 R12 K28 ["ItemHeight"]
      190 SETTABLEKS                       R12 R11 K28 ["ItemHeight"]
      192 GETUPVAL                         R12 6
      193 GETTABLEKS                       R12 R12 K15 ["VisualizeAsRow"]
      195 GETTABLEKS                       R12 R12 K29 ["MaxHeight"]
      197 SETTABLEKS                       R12 R11 K29 ["MaxHeight"]
      199 SETTABLEKS                       R1 R11 K32 ["Items"]
      201 CALL                             R9 2 1
      202 SETTABLEKS                       R9 R8 K17 ["DropdownMenu"]
      204 CALL                             R5 3 -1
      205 CLOSEUPVALS                      R0
      206 RETURN                           R5 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TagSettingsListView"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R5 R1 K5 ["tag"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 LOADK                            R9 K6 ["Groups"]
       19 LOADK                            R10 K7 ["None"]
       20 NAMECALL                         R7 R2 K8 ["getText"]
       22 CALL                             R7 3 1
       23 LOADK                            R10 K6 ["Groups"]
       24 LOADK                            R11 K9 ["NewGroup"]
       25 NAMECALL                         R8 R2 K8 ["getText"]
       27 CALL                             R8 3 1
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R11 P2
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R1
       53 NEWCLOSURE                       R12 P3
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R0
       59 GETUPVAL                         R14 9
       60 JUMPIFNOT                        R14 ; [+6]
       61 NEWCLOSURE                       R13 P4
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R0
       66 JUMP                             ; [+1]
       67 LOADNIL                          R13
       68 NEWCLOSURE                       R14 P5
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R0
       73 NEWCLOSURE                       R15 P6
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U6
       85 JUMPIFNOT                        R6 ; [+323]
       86 GETUPVAL                         R16 1
       87 GETTABLEKS                       R16 R16 K10 ["createElement"]
       89 GETUPVAL                         R17 11
       90 DUPTABLE                         R18 K18 [{"CanvasSize", "Size", "LayoutOrder", "Layout", "AutomaticCanvasSize", "Padding", "Spacing"}]
       91 GETTABLEKS                       R19 R3 K11 ["CanvasSize"]
       93 SETTABLEKS                       R19 R18 K11 ["CanvasSize"]
       95 GETTABLEKS                       R19 R3 K12 ["Size"]
       97 SETTABLEKS                       R19 R18 K12 ["Size"]
       99 GETTABLEKS                       R19 R1 K13 ["LayoutOrder"]
      101 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      103 GETIMPORT                        R19 K22 [Enum.FillDirection.Vertical]
      105 SETTABLEKS                       R19 R18 K14 ["Layout"]
      107 GETIMPORT                        R19 K24 [Enum.AutomaticSize.None]
      109 SETTABLEKS                       R19 R18 K15 ["AutomaticCanvasSize"]
      111 GETTABLEKS                       R19 R3 K16 ["Padding"]
      113 SETTABLEKS                       R19 R18 K16 ["Padding"]
      115 GETTABLEKS                       R19 R3 K17 ["Spacing"]
      117 SETTABLEKS                       R19 R18 K17 ["Spacing"]
      119 DUPTABLE                         R19 K32 [{"TaggedInstancesRow", "IconRow", "GroupRow", "ColorRow", "AlwaysOnTopRow", "ShowTextRow", "VisualizeAsRow"}]
      120 GETUPVAL                         R20 1
      121 GETTABLEKS                       R20 R20 K10 ["createElement"]
      123 GETUPVAL                         R21 12
      124 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      125 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      127 CALL                             R23 1 1
      128 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      130 GETTABLEKS                       R23 R3 K25 ["TaggedInstancesRow"]
      132 GETTABLEKS                       R23 R23 K12 ["Size"]
      134 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      136 LOADK                            R25 K40 ["Info"]
      137 LOADK                            R26 K41 ["SelectInExplorer"]
      138 NAMECALL                         R23 R2 K8 ["getText"]
      140 CALL                             R23 3 1
      141 SETTABLEKS                       R23 R22 K34 ["Text"]
      143 LOADK                            R25 K42 ["Tooltip"]
      144 LOADK                            R26 K41 ["SelectInExplorer"]
      145 NAMECALL                         R23 R2 K8 ["getText"]
      147 CALL                             R23 3 1
      148 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      150 GETTABLEKS                       R23 R0 K43 ["onTaggedInstancesRowClicked"]
      152 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      154 SETTABLEKS                       R9 R22 K37 ["Control"]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K25 ["TaggedInstancesRow"]
      159 GETUPVAL                         R20 1
      160 GETTABLEKS                       R20 R20 K10 ["createElement"]
      162 GETUPVAL                         R21 12
      163 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      164 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      166 CALL                             R23 1 1
      167 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      169 GETTABLEKS                       R23 R3 K26 ["IconRow"]
      171 GETTABLEKS                       R23 R23 K12 ["Size"]
      173 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      175 LOADK                            R25 K40 ["Info"]
      176 LOADK                            R26 K44 ["Icon"]
      177 NAMECALL                         R23 R2 K8 ["getText"]
      179 CALL                             R23 3 1
      180 SETTABLEKS                       R23 R22 K34 ["Text"]
      182 LOADK                            R25 K42 ["Tooltip"]
      183 LOADK                            R26 K45 ["IconPicker"]
      184 NAMECALL                         R23 R2 K8 ["getText"]
      186 CALL                             R23 3 1
      187 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      189 GETTABLEKS                       R23 R0 K46 ["onIconRowClicked"]
      191 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      193 SETTABLEKS                       R10 R22 K37 ["Control"]
      195 CALL                             R20 2 1
      196 SETTABLEKS                       R20 R19 K26 ["IconRow"]
      198 GETUPVAL                         R20 1
      199 GETTABLEKS                       R20 R20 K10 ["createElement"]
      201 GETUPVAL                         R21 12
      202 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      203 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      205 CALL                             R23 1 1
      206 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      208 GETTABLEKS                       R23 R3 K27 ["GroupRow"]
      210 GETTABLEKS                       R23 R23 K12 ["Size"]
      212 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      214 LOADK                            R29 K40 ["Info"]
      215 LOADK                            R30 K47 ["Group"]
      216 NAMECALL                         R27 R2 K8 ["getText"]
      218 CALL                             R27 3 1
      219 MOVE                             R24 R27
      220 LOADK                            R25 K48 [": "]
      221 GETTABLEKS                       R27 R5 K47 ["Group"]
      223 JUMPIFNOT                        R27 ; [+3]
      224 GETTABLEKS                       R26 R5 K47 ["Group"]
      226 JUMP                             ; [+1]
      227 MOVE                             R26 R7
      228 CONCAT                           R23 R24 R26
      229 SETTABLEKS                       R23 R22 K34 ["Text"]
      231 LOADK                            R25 K42 ["Tooltip"]
      232 LOADK                            R26 K49 ["GroupPicker"]
      233 NAMECALL                         R23 R2 K8 ["getText"]
      235 CALL                             R23 3 1
      236 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      238 GETTABLEKS                       R23 R0 K50 ["onGroupRowClicked"]
      240 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      242 SETTABLEKS                       R11 R22 K37 ["Control"]
      244 CALL                             R20 2 1
      245 SETTABLEKS                       R20 R19 K27 ["GroupRow"]
      247 GETUPVAL                         R20 1
      248 GETTABLEKS                       R20 R20 K10 ["createElement"]
      250 GETUPVAL                         R21 12
      251 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      252 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      254 CALL                             R23 1 1
      255 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      257 GETTABLEKS                       R23 R3 K28 ["ColorRow"]
      259 GETTABLEKS                       R23 R23 K12 ["Size"]
      261 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      263 LOADK                            R25 K40 ["Info"]
      264 LOADK                            R26 K51 ["Color"]
      265 NAMECALL                         R23 R2 K8 ["getText"]
      267 CALL                             R23 3 1
      268 SETTABLEKS                       R23 R22 K34 ["Text"]
      270 LOADK                            R25 K42 ["Tooltip"]
      271 LOADK                            R26 K52 ["ColorPicker"]
      272 NAMECALL                         R23 R2 K8 ["getText"]
      274 CALL                             R23 3 1
      275 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      277 GETTABLEKS                       R23 R0 K53 ["onColorRowClicked"]
      279 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      281 SETTABLEKS                       R12 R22 K37 ["Control"]
      283 CALL                             R20 2 1
      284 SETTABLEKS                       R20 R19 K28 ["ColorRow"]
      286 GETUPVAL                         R20 1
      287 GETTABLEKS                       R20 R20 K10 ["createElement"]
      289 GETUPVAL                         R21 12
      290 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      291 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      293 CALL                             R23 1 1
      294 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      296 GETTABLEKS                       R23 R3 K29 ["AlwaysOnTopRow"]
      298 GETTABLEKS                       R23 R23 K12 ["Size"]
      300 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      302 LOADK                            R25 K40 ["Info"]
      303 LOADK                            R26 K54 ["AlwaysOnTop"]
      304 NAMECALL                         R23 R2 K8 ["getText"]
      306 CALL                             R23 3 1
      307 SETTABLEKS                       R23 R22 K34 ["Text"]
      309 LOADK                            R25 K42 ["Tooltip"]
      310 LOADK                            R26 K54 ["AlwaysOnTop"]
      311 NAMECALL                         R23 R2 K8 ["getText"]
      313 CALL                             R23 3 1
      314 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      316 GETTABLEKS                       R23 R0 K55 ["onAlwaysOntopRowClicked"]
      318 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      320 SETTABLEKS                       R14 R22 K37 ["Control"]
      322 CALL                             R20 2 1
      323 SETTABLEKS                       R20 R19 K29 ["AlwaysOnTopRow"]
      325 GETUPVAL                         R21 9
      326 JUMPIFNOT                        R21 ; [+38]
      327 GETUPVAL                         R20 1
      328 GETTABLEKS                       R20 R20 K10 ["createElement"]
      330 GETUPVAL                         R21 12
      331 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      332 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      334 CALL                             R23 1 1
      335 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      337 GETTABLEKS                       R23 R3 K30 ["ShowTextRow"]
      339 GETTABLEKS                       R23 R23 K12 ["Size"]
      341 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      343 LOADK                            R25 K40 ["Info"]
      344 LOADK                            R26 K56 ["ShowText"]
      345 NAMECALL                         R23 R2 K8 ["getText"]
      347 CALL                             R23 3 1
      348 SETTABLEKS                       R23 R22 K34 ["Text"]
      350 LOADK                            R25 K42 ["Tooltip"]
      351 LOADK                            R26 K56 ["ShowText"]
      352 NAMECALL                         R23 R2 K8 ["getText"]
      354 CALL                             R23 3 1
      355 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      357 GETTABLEKS                       R23 R0 K57 ["onShowTextRowClicked"]
      359 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      361 SETTABLEKS                       R13 R22 K37 ["Control"]
      363 CALL                             R20 2 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R20
      366 SETTABLEKS                       R20 R19 K30 ["ShowTextRow"]
      368 GETUPVAL                         R20 1
      369 GETTABLEKS                       R20 R20 K10 ["createElement"]
      371 GETUPVAL                         R21 12
      372 DUPTABLE                         R22 K38 [{"LayoutOrder", "ControlSize", "Text", "TooltipText", "OnClick", "Control"}]
      373 NAMECALL                         R23 R4 K39 ["getNextOrder"]
      375 CALL                             R23 1 1
      376 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      378 GETTABLEKS                       R23 R3 K31 ["VisualizeAsRow"]
      380 GETTABLEKS                       R23 R23 K12 ["Size"]
      382 SETTABLEKS                       R23 R22 K33 ["ControlSize"]
      384 LOADK                            R25 K40 ["Info"]
      385 LOADK                            R26 K58 ["VisualizeAs"]
      386 NAMECALL                         R23 R2 K8 ["getText"]
      388 CALL                             R23 3 1
      389 SETTABLEKS                       R23 R22 K34 ["Text"]
      391 LOADK                            R25 K42 ["Tooltip"]
      392 LOADK                            R26 K58 ["VisualizeAs"]
      393 NAMECALL                         R23 R2 K8 ["getText"]
      395 CALL                             R23 3 1
      396 SETTABLEKS                       R23 R22 K35 ["TooltipText"]
      398 GETTABLEKS                       R23 R0 K59 ["onVisualizeRowClicked"]
      400 SETTABLEKS                       R23 R22 K36 ["OnClick"]
      402 SETTABLEKS                       R15 R22 K37 ["Control"]
      404 CALL                             R20 2 1
      405 SETTABLEKS                       R20 R19 K31 ["VisualizeAsRow"]
      407 CALL                             R16 3 1
      408 RETURN                           R16 1
      409 LOADNIL                          R16
      410 RETURN                           R16 1

PROTO_23:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [pairs]
        3 GETTABLEKS                       R4 R0 K2 ["TagData"]
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLEKS                       R8 R7 K3 ["Name"]
        9 GETTABLEKS                       R9 R0 K4 ["TagMenu"]
       11 JUMPIFNOTEQ                      R8 R9 ; [+3]
       13 MOVE                             R2 R7
       14 JUMP                             ; [+2]
       15 FORGLOOP                         R3 2 ; [-9]
       17 GETIMPORT                        R3 K1 [pairs]
       19 GETTABLEKS                       R4 R0 K5 ["UnknownTags"]
       21 CALL                             R3 1 3
       22 FORGPREP_NEXT                    R3
       23 GETTABLEKS                       R8 R7 K3 ["Name"]
       25 GETTABLEKS                       R9 R0 K4 ["TagMenu"]
       27 JUMPIFNOTEQ                      R8 R9 ; [+3]
       29 MOVE                             R2 R7
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R3 2 ; [-9]
       33 DUPTABLE                         R3 K8 [{"groups", "tag"}]
       34 GETTABLEKS                       R4 R0 K9 ["GroupData"]
       36 SETTABLEKS                       R4 R3 K6 ["groups"]
       38 SETTABLEKS                       R2 R3 K7 ["tag"]
       40 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ToggleColorPicker"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ToggleIconPicker"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K2 [{"openColorPicker", "openIconPicker"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["openColorPicker"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["openIconPicker"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K7 ["Packages"]
       41 GETTABLEKS                       R6 R6 K11 ["Dash"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K13 ["withContext"]
       48 GETTABLEKS                       R8 R6 K14 ["Analytics"]
       50 GETTABLEKS                       R9 R6 K15 ["Localization"]
       52 GETTABLEKS                       R10 R4 K16 ["Style"]
       54 GETTABLEKS                       R10 R10 K17 ["Stylizer"]
       56 GETTABLEKS                       R11 R4 K18 ["UI"]
       58 GETTABLEKS                       R12 R11 K19 ["Checkbox"]
       60 GETTABLEKS                       R13 R11 K20 ["DropdownMenu"]
       62 GETTABLEKS                       R14 R11 K21 ["IconButton"]
       64 GETTABLEKS                       R15 R11 K22 ["Pane"]
       66 GETTABLEKS                       R16 R11 K23 ["ScrollingFrame"]
       68 GETTABLEKS                       R17 R4 K24 ["Util"]
       70 GETTABLEKS                       R18 R17 K25 ["LayoutOrderIterator"]
       72 GETIMPORT                        R19 K4 [require]
       74 GETTABLEKS                       R20 R0 K5 ["Src"]
       76 GETTABLEKS                       R20 R20 K26 ["Actions"]
       78 CALL                             R19 1 1
       79 GETIMPORT                        R20 K4 [require]
       81 GETTABLEKS                       R21 R0 K5 ["Src"]
       83 GETTABLEKS                       R21 R21 K24 ["Util"]
       85 GETTABLEKS                       R21 R21 K27 ["GetUniqueGroupName"]
       87 CALL                             R20 1 1
       88 GETIMPORT                        R21 K4 [require]
       90 GETIMPORT                        R22 K1 [script]
       92 GETTABLEKS                       R22 R22 K2 ["Parent"]
       94 GETTABLEKS                       R22 R22 K28 ["Icon"]
       96 CALL                             R21 1 1
       97 GETIMPORT                        R22 K4 [require]
       99 GETTABLEKS                       R23 R0 K5 ["Src"]
      101 GETTABLEKS                       R23 R23 K29 ["TagManager"]
      103 CALL                             R22 1 1
      104 GETIMPORT                        R23 K4 [require]
      106 GETIMPORT                        R24 K1 [script]
      108 GETTABLEKS                       R24 R24 K2 ["Parent"]
      110 GETTABLEKS                       R24 R24 K30 ["TagSettingRow"]
      112 CALL                             R23 1 1
      113 GETIMPORT                        R24 K32 [game]
      115 LOADK                            R26 K33 ["TagEditorShowTextSeparately"]
      116 NAMECALL                         R24 R24 K34 ["GetFastFlag"]
      118 CALL                             R24 2 1
      119 GETTABLEKS                       R25 R2 K35 ["PureComponent"]
      121 LOADK                            R27 K36 ["TagSettingsListView"]
      122 NAMECALL                         R25 R25 K37 ["extend"]
      124 CALL                             R25 2 1
      125 DUPCLOSURE                       R26 K38 [PROTO_11]
      126 CAPTURE                          VAL R24
      127 CAPTURE                          VAL R22
      128 SETTABLEKS                       R26 R25 K39 ["init"]
      130 DUPCLOSURE                       R26 K40 [PROTO_22]
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R21
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R22
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R24
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R23
      144 SETTABLEKS                       R26 R25 K41 ["render"]
      146 MOVE                             R26 R7
      147 DUPTABLE                         R27 K42 [{"Analytics", "Localization", "Stylizer"}]
      148 SETTABLEKS                       R8 R27 K14 ["Analytics"]
      150 SETTABLEKS                       R9 R27 K15 ["Localization"]
      152 SETTABLEKS                       R10 R27 K17 ["Stylizer"]
      154 CALL                             R26 1 1
      155 MOVE                             R27 R25
      156 CALL                             R26 1 1
      157 MOVE                             R25 R26
      158 DUPCLOSURE                       R26 K43 [PROTO_23]
      159 DUPCLOSURE                       R27 K44 [PROTO_26]
      160 CAPTURE                          VAL R19
      161 GETTABLEKS                       R28 R3 K45 ["connect"]
      163 MOVE                             R29 R26
      164 MOVE                             R30 R27
      165 CALL                             R28 2 1
      166 MOVE                             R29 R25
      167 CALL                             R28 1 -1
      168 RETURN                           R28 -1
