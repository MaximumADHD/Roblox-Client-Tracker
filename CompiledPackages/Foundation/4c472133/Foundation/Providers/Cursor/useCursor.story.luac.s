PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Dynamic chip clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["LayoutOrder"] = 14, ["tag"] = "col gap-medium auto-x"}]
        5 DUPTABLE                         R3 K7 [{"DynamicChip"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K11 [{["text"] = "Dynamic Chip (focus me!)", ["onActivated"]}]
       11 DUPCLOSURE                       R7 K12 [PROTO_0]
       12 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K6 ["DynamicChip"]
       17 CALL                             R0 3 -1
       18 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button 1 clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button 2 clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Checkbox 1 toggled:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Checkbox 2 toggled:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item clicked:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Static Chip 1 clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Static Chip 2 clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K1 [print]
        6 LOADK                            R1 K2 ["Dynamic component toggled:"]
        7 GETUPVAL                         R3 1
        8 NOT                              R2 R3
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K4 [{["tag"] = "col gap-medium auto-x"}]
       10 DUPTABLE                         R5 K20 [{"TestButton1", "TestButton2", "Divider1", "TestCheckbox1", "TestCheckbox2", "Divider2", "TestMenu", "Divider3", "TestChip1", "TestChip2", "Divider4", "DefaultCursor", "Divider5", "ToggleButton", "DynamicSection"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K26 [{["LayoutOrder"] = 2, ["text"] = "Button Component 1", ["onActivated"]}]
       16 DUPCLOSURE                       R9 K27 [PROTO_2]
       17 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K5 ["TestButton1"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K1 ["createElement"]
       25 GETUPVAL                         R7 2
       26 DUPTABLE                         R8 K30 [{["LayoutOrder"] = 3, ["text"] = "Button Component 2", ["onActivated"]}]
       27 DUPCLOSURE                       R9 K31 [PROTO_3]
       28 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K6 ["TestButton2"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["createElement"]
       36 GETUPVAL                         R7 3
       37 DUPTABLE                         R8 K33 [{["LayoutOrder"] = 4}]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K7 ["Divider1"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K1 ["createElement"]
       44 GETUPVAL                         R7 4
       45 DUPTABLE                         R8 K37 [{["LayoutOrder"] = 5, ["label"] = "Checkbox Component 1", ["onActivated"]}]
       46 DUPCLOSURE                       R9 K38 [PROTO_4]
       47 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K8 ["TestCheckbox1"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K1 ["createElement"]
       55 GETUPVAL                         R7 4
       56 DUPTABLE                         R8 K41 [{["LayoutOrder"] = 6, ["label"] = "Checkbox Component 2", ["onActivated"]}]
       57 DUPCLOSURE                       R9 K42 [PROTO_5]
       58 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K9 ["TestCheckbox2"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K1 ["createElement"]
       66 GETUPVAL                         R7 3
       67 DUPTABLE                         R8 K44 [{["LayoutOrder"] = 7}]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K10 ["Divider2"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K1 ["createElement"]
       74 GETUPVAL                         R7 5
       75 GETTABLEKS                       R7 R7 K45 ["Root"]
       77 DUPTABLE                         R8 K48 [{["LayoutOrder"] = 8, ["items"], ["onActivated"]}]
       78 NEWTABLE                         R9 0 2
       80 DUPTABLE                         R10 K52 [{["id"] = "item1", ["text"] = "Menu Item 1"}]
       81 DUPTABLE                         R11 K55 [{["id"] = "item2", ["text"] = "Menu Item 2"}]
       82 SETLIST                          R9 R10 2 [1]
       84 SETTABLEKS                       R9 R8 K47 ["items"]
       86 DUPCLOSURE                       R9 K56 [PROTO_6]
       87 SETTABLEKS                       R9 R8 K25 ["onActivated"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K11 ["TestMenu"]
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R6 R6 K1 ["createElement"]
       95 GETUPVAL                         R7 3
       96 DUPTABLE                         R8 K58 [{["LayoutOrder"] = 9}]
       97 CALL                             R6 2 1
       98 SETTABLEKS                       R6 R5 K12 ["Divider3"]
      100 GETUPVAL                         R6 0
      101 GETTABLEKS                       R6 R6 K1 ["createElement"]
      103 GETUPVAL                         R7 6
      104 DUPTABLE                         R8 K61 [{["LayoutOrder"] = 10, ["text"] = "Static Chip Component 1", ["onActivated"]}]
      105 DUPCLOSURE                       R9 K62 [PROTO_7]
      106 SETTABLEKS                       R9 R8 K25 ["onActivated"]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R5 K13 ["TestChip1"]
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R6 R6 K1 ["createElement"]
      114 GETUPVAL                         R7 6
      115 DUPTABLE                         R8 K65 [{["LayoutOrder"] = 11, ["text"] = "Static Chip Component 2", ["onActivated"]}]
      116 DUPCLOSURE                       R9 K66 [PROTO_8]
      117 SETTABLEKS                       R9 R8 K25 ["onActivated"]
      119 CALL                             R6 2 1
      120 SETTABLEKS                       R6 R5 K14 ["TestChip2"]
      122 GETUPVAL                         R6 0
      123 GETTABLEKS                       R6 R6 K1 ["createElement"]
      125 GETUPVAL                         R7 3
      126 DUPTABLE                         R8 K68 [{["LayoutOrder"] = 12}]
      127 CALL                             R6 2 1
      128 SETTABLEKS                       R6 R5 K15 ["Divider4"]
      130 GETUPVAL                         R6 0
      131 GETTABLEKS                       R6 R6 K1 ["createElement"]
      133 GETUPVAL                         R7 7
      134 DUPTABLE                         R8 K72 [{["LayoutOrder"] = 13, ["cursor"], ["Size"]}]
      135 NEWTABLE                         R9 0 0
      137 SETTABLEKS                       R9 R8 K70 ["cursor"]
      139 GETIMPORT                        R9 K75 [UDim2.fromOffset]
      141 LOADN                            R10 50
      142 LOADN                            R11 50
      143 CALL                             R9 2 1
      144 SETTABLEKS                       R9 R8 K71 ["Size"]
      146 CALL                             R6 2 1
      147 SETTABLEKS                       R6 R5 K16 ["DefaultCursor"]
      149 GETUPVAL                         R6 0
      150 GETTABLEKS                       R6 R6 K1 ["createElement"]
      152 GETUPVAL                         R7 3
      153 DUPTABLE                         R8 K77 [{["LayoutOrder"] = 14}]
      154 CALL                             R6 2 1
      155 SETTABLEKS                       R6 R5 K17 ["Divider5"]
      157 GETUPVAL                         R6 0
      158 GETTABLEKS                       R6 R6 K1 ["createElement"]
      160 GETUPVAL                         R7 2
      161 DUPTABLE                         R8 K79 [{["LayoutOrder"] = 15, ["text"], ["onActivated"]}]
      162 JUMPIFNOT                        R0 ; [+2]
      163 LOADK                            R9 K80 ["Hide Dynamic Component"]
      164 JUMP                             ; [+1]
      165 LOADK                            R9 K81 ["Show Dynamic Component"]
      166 SETTABLEKS                       R9 R8 K23 ["text"]
      168 NEWCLOSURE                       R9 P7
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R9 R8 K25 ["onActivated"]
      173 CALL                             R6 2 1
      174 SETTABLEKS                       R6 R5 K18 ["ToggleButton"]
      176 JUMPIFNOT                        R0 ; [+8]
      177 GETUPVAL                         R6 0
      178 GETTABLEKS                       R6 R6 K1 ["createElement"]
      180 GETUPVAL                         R7 8
      181 NEWTABLE                         R8 0 0
      183 CALL                             R6 2 1
      184 JUMPIF                           R6 ; [+1]
      185 LOADNIL                          R6
      186 SETTABLEKS                       R6 R5 K19 ["DynamicSection"]
      188 CALL                             R2 3 -1
      189 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["BaseMenu"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Button"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Checkbox"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Chip"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Divider"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K14 ["Interactable"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K15 ["View"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K16 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R11 K17 [PROTO_10]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 DUPTABLE                         R12 K21 [{["summary"] = "useCursor: static & dynamic components", ["story"]}]
       78 GETTABLEKS                       R13 R2 K22 ["createElement"]
       80 MOVE                             R14 R11
       81 CALL                             R13 1 1
       82 SETTABLEKS                       R13 R12 K20 ["story"]
       84 RETURN                           R12 1
