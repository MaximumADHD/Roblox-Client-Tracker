PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Dynamic chip clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"LayoutOrder", "tag"}]
        5 LOADN                            R3 14
        6 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
        8 LOADK                            R3 K4 ["col gap-medium auto-x"]
        9 SETTABLEKS                       R3 R2 K2 ["tag"]
       11 DUPTABLE                         R3 K6 [{"DynamicChip"}]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["createElement"]
       15 GETUPVAL                         R5 2
       16 DUPTABLE                         R6 K9 [{"text", "onActivated"}]
       17 LOADK                            R7 K10 ["Dynamic Chip (focus me!)"]
       18 SETTABLEKS                       R7 R6 K7 ["text"]
       20 DUPCLOSURE                       R7 K11 [PROTO_0]
       21 SETTABLEKS                       R7 R6 K8 ["onActivated"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K5 ["DynamicChip"]
       26 CALL                             R0 3 -1
       27 RETURN                           R0 -1

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
        9 DUPTABLE                         R4 K3 [{"tag"}]
       10 LOADK                            R5 K4 ["col gap-medium auto-x"]
       11 SETTABLEKS                       R5 R4 K2 ["tag"]
       13 DUPTABLE                         R5 K20 [{"TestButton1", "TestButton2", "Divider1", "TestCheckbox1", "TestCheckbox2", "Divider2", "TestMenu", "Divider3", "TestChip1", "TestChip2", "Divider4", "DefaultCursor", "Divider5", "ToggleButton", "DynamicSection"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K24 [{"LayoutOrder", "text", "onActivated"}]
       19 LOADN                            R9 2
       20 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
       22 LOADK                            R9 K25 ["Button Component 1"]
       23 SETTABLEKS                       R9 R8 K22 ["text"]
       25 DUPCLOSURE                       R9 K26 [PROTO_2]
       26 SETTABLEKS                       R9 R8 K23 ["onActivated"]
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K5 ["TestButton1"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K1 ["createElement"]
       34 GETUPVAL                         R7 2
       35 DUPTABLE                         R8 K24 [{"LayoutOrder", "text", "onActivated"}]
       36 LOADN                            R9 3
       37 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
       39 LOADK                            R9 K27 ["Button Component 2"]
       40 SETTABLEKS                       R9 R8 K22 ["text"]
       42 DUPCLOSURE                       R9 K28 [PROTO_3]
       43 SETTABLEKS                       R9 R8 K23 ["onActivated"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K6 ["TestButton2"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K1 ["createElement"]
       51 GETUPVAL                         R7 3
       52 DUPTABLE                         R8 K29 [{"LayoutOrder"}]
       53 LOADN                            R9 4
       54 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K7 ["Divider1"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K1 ["createElement"]
       62 GETUPVAL                         R7 4
       63 DUPTABLE                         R8 K31 [{"LayoutOrder", "label", "onActivated"}]
       64 LOADN                            R9 5
       65 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
       67 LOADK                            R9 K32 ["Checkbox Component 1"]
       68 SETTABLEKS                       R9 R8 K30 ["label"]
       70 DUPCLOSURE                       R9 K33 [PROTO_4]
       71 SETTABLEKS                       R9 R8 K23 ["onActivated"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K8 ["TestCheckbox1"]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K1 ["createElement"]
       79 GETUPVAL                         R7 4
       80 DUPTABLE                         R8 K31 [{"LayoutOrder", "label", "onActivated"}]
       81 LOADN                            R9 6
       82 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
       84 LOADK                            R9 K34 ["Checkbox Component 2"]
       85 SETTABLEKS                       R9 R8 K30 ["label"]
       87 DUPCLOSURE                       R9 K35 [PROTO_5]
       88 SETTABLEKS                       R9 R8 K23 ["onActivated"]
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K9 ["TestCheckbox2"]
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R6 R6 K1 ["createElement"]
       96 GETUPVAL                         R7 3
       97 DUPTABLE                         R8 K29 [{"LayoutOrder"}]
       98 LOADN                            R9 7
       99 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K10 ["Divider2"]
      104 GETUPVAL                         R6 0
      105 GETTABLEKS                       R6 R6 K1 ["createElement"]
      107 GETUPVAL                         R7 5
      108 GETTABLEKS                       R7 R7 K36 ["Root"]
      110 DUPTABLE                         R8 K38 [{"LayoutOrder", "items", "onActivated"}]
      111 LOADN                            R9 8
      112 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      114 NEWTABLE                         R9 0 2
      116 DUPTABLE                         R10 K40 [{"id", "text"}]
      117 LOADK                            R11 K41 ["item1"]
      118 SETTABLEKS                       R11 R10 K39 ["id"]
      120 LOADK                            R11 K42 ["Menu Item 1"]
      121 SETTABLEKS                       R11 R10 K22 ["text"]
      123 DUPTABLE                         R11 K40 [{"id", "text"}]
      124 LOADK                            R12 K43 ["item2"]
      125 SETTABLEKS                       R12 R11 K39 ["id"]
      127 LOADK                            R12 K44 ["Menu Item 2"]
      128 SETTABLEKS                       R12 R11 K22 ["text"]
      130 SETLIST                          R9 R10 2 [1]
      132 SETTABLEKS                       R9 R8 K37 ["items"]
      134 DUPCLOSURE                       R9 K45 [PROTO_6]
      135 SETTABLEKS                       R9 R8 K23 ["onActivated"]
      137 CALL                             R6 2 1
      138 SETTABLEKS                       R6 R5 K11 ["TestMenu"]
      140 GETUPVAL                         R6 0
      141 GETTABLEKS                       R6 R6 K1 ["createElement"]
      143 GETUPVAL                         R7 3
      144 DUPTABLE                         R8 K29 [{"LayoutOrder"}]
      145 LOADN                            R9 9
      146 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      148 CALL                             R6 2 1
      149 SETTABLEKS                       R6 R5 K12 ["Divider3"]
      151 GETUPVAL                         R6 0
      152 GETTABLEKS                       R6 R6 K1 ["createElement"]
      154 GETUPVAL                         R7 6
      155 DUPTABLE                         R8 K24 [{"LayoutOrder", "text", "onActivated"}]
      156 LOADN                            R9 10
      157 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      159 LOADK                            R9 K46 ["Static Chip Component 1"]
      160 SETTABLEKS                       R9 R8 K22 ["text"]
      162 DUPCLOSURE                       R9 K47 [PROTO_7]
      163 SETTABLEKS                       R9 R8 K23 ["onActivated"]
      165 CALL                             R6 2 1
      166 SETTABLEKS                       R6 R5 K13 ["TestChip1"]
      168 GETUPVAL                         R6 0
      169 GETTABLEKS                       R6 R6 K1 ["createElement"]
      171 GETUPVAL                         R7 6
      172 DUPTABLE                         R8 K24 [{"LayoutOrder", "text", "onActivated"}]
      173 LOADN                            R9 11
      174 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      176 LOADK                            R9 K48 ["Static Chip Component 2"]
      177 SETTABLEKS                       R9 R8 K22 ["text"]
      179 DUPCLOSURE                       R9 K49 [PROTO_8]
      180 SETTABLEKS                       R9 R8 K23 ["onActivated"]
      182 CALL                             R6 2 1
      183 SETTABLEKS                       R6 R5 K14 ["TestChip2"]
      185 GETUPVAL                         R6 0
      186 GETTABLEKS                       R6 R6 K1 ["createElement"]
      188 GETUPVAL                         R7 3
      189 DUPTABLE                         R8 K29 [{"LayoutOrder"}]
      190 LOADN                            R9 12
      191 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      193 CALL                             R6 2 1
      194 SETTABLEKS                       R6 R5 K15 ["Divider4"]
      196 GETUPVAL                         R6 0
      197 GETTABLEKS                       R6 R6 K1 ["createElement"]
      199 GETUPVAL                         R7 7
      200 DUPTABLE                         R8 K52 [{"LayoutOrder", "cursor", "Size"}]
      201 LOADN                            R9 13
      202 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      204 NEWTABLE                         R9 0 0
      206 SETTABLEKS                       R9 R8 K50 ["cursor"]
      208 GETIMPORT                        R9 K55 [UDim2.fromOffset]
      210 LOADN                            R10 50
      211 LOADN                            R11 50
      212 CALL                             R9 2 1
      213 SETTABLEKS                       R9 R8 K51 ["Size"]
      215 CALL                             R6 2 1
      216 SETTABLEKS                       R6 R5 K16 ["DefaultCursor"]
      218 GETUPVAL                         R6 0
      219 GETTABLEKS                       R6 R6 K1 ["createElement"]
      221 GETUPVAL                         R7 3
      222 DUPTABLE                         R8 K29 [{"LayoutOrder"}]
      223 LOADN                            R9 14
      224 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      226 CALL                             R6 2 1
      227 SETTABLEKS                       R6 R5 K17 ["Divider5"]
      229 GETUPVAL                         R6 0
      230 GETTABLEKS                       R6 R6 K1 ["createElement"]
      232 GETUPVAL                         R7 2
      233 DUPTABLE                         R8 K24 [{"LayoutOrder", "text", "onActivated"}]
      234 LOADN                            R9 15
      235 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      237 JUMPIFNOT                        R0 ; [+2]
      238 LOADK                            R9 K56 ["Hide Dynamic Component"]
      239 JUMP                             ; [+1]
      240 LOADK                            R9 K57 ["Show Dynamic Component"]
      241 SETTABLEKS                       R9 R8 K22 ["text"]
      243 NEWCLOSURE                       R9 P7
      244 CAPTURE                          VAL R1
      245 CAPTURE                          VAL R0
      246 SETTABLEKS                       R9 R8 K23 ["onActivated"]
      248 CALL                             R6 2 1
      249 SETTABLEKS                       R6 R5 K18 ["ToggleButton"]
      251 JUMPIFNOT                        R0 ; [+8]
      252 GETUPVAL                         R6 0
      253 GETTABLEKS                       R6 R6 K1 ["createElement"]
      255 GETUPVAL                         R7 8
      256 NEWTABLE                         R8 0 0
      258 CALL                             R6 2 1
      259 JUMPIF                           R6 ; [+1]
      260 LOADNIL                          R6
      261 SETTABLEKS                       R6 R5 K19 ["DynamicSection"]
      263 CALL                             R2 3 -1
      264 RETURN                           R2 -1

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
       77 DUPTABLE                         R12 K20 [{"summary", "story"}]
       78 LOADK                            R13 K21 ["useCursor: static & dynamic components"]
       79 SETTABLEKS                       R13 R12 K18 ["summary"]
       81 GETTABLEKS                       R13 R2 K22 ["createElement"]
       83 MOVE                             R14 R11
       84 CALL                             R13 1 1
       85 SETTABLEKS                       R13 R12 K19 ["story"]
       87 RETURN                           R12 1
