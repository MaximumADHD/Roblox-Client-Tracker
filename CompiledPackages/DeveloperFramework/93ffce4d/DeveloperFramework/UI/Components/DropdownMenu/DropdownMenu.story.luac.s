PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 LOADB                            R4 0
        4 SETTABLE                         R4 R3 R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R3 R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 LOADB                            R4 0
        4 SETTABLE                         R4 R3 R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["DropFromSide"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K5 ["selectItem"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["openMenu"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K7 ["closeMenu"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectItem"]
        3 LOADK                            R1 K1 ["Default"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closeMenu"]
        3 LOADK                            R1 K1 ["Default"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openMenu"]
        3 LOADK                            R1 K1 ["Default"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectItem"]
        3 LOADK                            R1 K1 ["DropFromSide"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closeMenu"]
        3 LOADK                            R1 K1 ["DropFromSide"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openMenu"]
        3 LOADK                            R1 K1 ["DropFromSide"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"AutomaticSize", "Size"}]
        5 GETIMPORT                        R4 K6 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 GETIMPORT                        R4 K9 [UDim2.fromScale]
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K2 ["Size"]
       16 DUPTABLE                         R4 K13 [{"Layout", "Default", "DropFromSide"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 LOADK                            R6 K14 ["UIListLayout"]
       21 DUPTABLE                         R7 K18 [{"SortOrder", "FillDirection", "Padding"}]
       22 GETIMPORT                        R8 K20 [Enum.SortOrder.LayoutOrder]
       24 SETTABLEKS                       R8 R7 K15 ["SortOrder"]
       26 GETIMPORT                        R8 K22 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R8 R7 K16 ["FillDirection"]
       30 GETIMPORT                        R8 K25 [UDim.new]
       32 LOADN                            R9 0
       33 LOADN                            R10 16
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R7 K17 ["Padding"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K10 ["Layout"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["createElement"]
       43 LOADK                            R6 K26 ["Frame"]
       44 DUPTABLE                         R7 K27 [{"Size"}]
       45 GETIMPORT                        R8 K28 [UDim2.new]
       47 LOADN                            R9 0
       48 LOADN                            R10 240
       49 LOADN                            R11 0
       50 LOADN                            R12 32
       51 CALL                             R8 4 1
       52 SETTABLEKS                       R8 R7 K2 ["Size"]
       54 DUPTABLE                         R8 K31 [{"Menu", "Button"}]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K0 ["createElement"]
       58 GETUPVAL                         R10 2
       59 DUPTABLE                         R11 K36 [{"Hide", "Items", "OnItemActivated", "OnFocusLost"}]
       60 GETTABLEKS                       R13 R0 K37 ["state"]
       62 GETTABLEKS                       R13 R13 K11 ["Default"]
       64 NOT                              R12 R13
       65 SETTABLEKS                       R12 R11 K32 ["Hide"]
       67 NEWTABLE                         R12 0 6
       69 LOADK                            R13 K38 ["The first element"]
       70 LOADK                            R14 K39 ["The second"]
       71 LOADK                            R15 K40 ["A really long element"]
       72 LOADK                            R16 K41 ["A tiny one"]
       73 LOADK                            R17 K42 ["The fifth one"]
       74 LOADK                            R18 K43 ["The last one"]
       75 SETLIST                          R12 R13 6 [1]
       77 SETTABLEKS                       R12 R11 K33 ["Items"]
       79 NEWCLOSURE                       R12 P0
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R12 R11 K34 ["OnItemActivated"]
       83 NEWCLOSURE                       R12 P1
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R12 R11 K35 ["OnFocusLost"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K29 ["Menu"]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K0 ["createElement"]
       93 LOADK                            R10 K44 ["TextButton"]
       94 NEWTABLE                         R11 4 0
       96 LOADK                            R12 K45 ["Open"]
       97 SETTABLEKS                       R12 R11 K46 ["Text"]
       99 GETIMPORT                        R12 K28 [UDim2.new]
      101 LOADN                            R13 0
      102 LOADN                            R14 250
      103 LOADN                            R15 0
      104 LOADN                            R16 0
      105 CALL                             R12 4 1
      106 SETTABLEKS                       R12 R11 K47 ["Position"]
      108 GETIMPORT                        R12 K28 [UDim2.new]
      110 LOADN                            R13 0
      111 LOADN                            R14 40
      112 LOADN                            R15 1
      113 LOADN                            R16 0
      114 CALL                             R12 4 1
      115 SETTABLEKS                       R12 R11 K2 ["Size"]
      117 GETUPVAL                         R12 0
      118 GETTABLEKS                       R12 R12 K48 ["Event"]
      120 GETTABLEKS                       R12 R12 K49 ["Activated"]
      122 NEWCLOSURE                       R13 P2
      123 CAPTURE                          VAL R0
      124 SETTABLE                         R13 R11 R12
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K30 ["Button"]
      128 CALL                             R5 3 1
      129 SETTABLEKS                       R5 R4 K11 ["Default"]
      131 GETUPVAL                         R5 0
      132 GETTABLEKS                       R5 R5 K0 ["createElement"]
      134 LOADK                            R6 K26 ["Frame"]
      135 DUPTABLE                         R7 K27 [{"Size"}]
      136 GETIMPORT                        R8 K28 [UDim2.new]
      138 LOADN                            R9 0
      139 LOADN                            R10 240
      140 LOADN                            R11 0
      141 LOADN                            R12 32
      142 CALL                             R8 4 1
      143 SETTABLEKS                       R8 R7 K2 ["Size"]
      145 DUPTABLE                         R8 K31 [{"Menu", "Button"}]
      146 GETUPVAL                         R9 0
      147 GETTABLEKS                       R9 R9 K0 ["createElement"]
      149 GETUPVAL                         R10 2
      150 DUPTABLE                         R11 K51 [{["Hide"], ["Items"], ["OnItemActivated"], ["OnFocusLost"], ["DropFromSide"] = True}]
      151 GETTABLEKS                       R13 R0 K37 ["state"]
      153 GETTABLEKS                       R13 R13 K12 ["DropFromSide"]
      155 NOT                              R12 R13
      156 SETTABLEKS                       R12 R11 K32 ["Hide"]
      158 NEWTABLE                         R12 0 6
      160 LOADK                            R13 K38 ["The first element"]
      161 LOADK                            R14 K39 ["The second"]
      162 LOADK                            R15 K40 ["A really long element"]
      163 LOADK                            R16 K41 ["A tiny one"]
      164 LOADK                            R17 K42 ["The fifth one"]
      165 LOADK                            R18 K43 ["The last one"]
      166 SETLIST                          R12 R13 6 [1]
      168 SETTABLEKS                       R12 R11 K33 ["Items"]
      170 NEWCLOSURE                       R12 P3
      171 CAPTURE                          VAL R0
      172 SETTABLEKS                       R12 R11 K34 ["OnItemActivated"]
      174 NEWCLOSURE                       R12 P4
      175 CAPTURE                          VAL R0
      176 SETTABLEKS                       R12 R11 K35 ["OnFocusLost"]
      178 CALL                             R9 2 1
      179 SETTABLEKS                       R9 R8 K29 ["Menu"]
      181 GETUPVAL                         R9 0
      182 GETTABLEKS                       R9 R9 K0 ["createElement"]
      184 LOADK                            R10 K44 ["TextButton"]
      185 NEWTABLE                         R11 4 0
      187 LOADK                            R12 K52 ["Open to the side"]
      188 SETTABLEKS                       R12 R11 K46 ["Text"]
      190 GETIMPORT                        R12 K28 [UDim2.new]
      192 LOADN                            R13 0
      193 LOADN                            R14 250
      194 LOADN                            R15 0
      195 LOADN                            R16 0
      196 CALL                             R12 4 1
      197 SETTABLEKS                       R12 R11 K47 ["Position"]
      199 GETIMPORT                        R12 K28 [UDim2.new]
      201 LOADN                            R13 0
      202 LOADN                            R14 90
      203 LOADN                            R15 1
      204 LOADN                            R16 0
      205 CALL                             R12 4 1
      206 SETTABLEKS                       R12 R11 K2 ["Size"]
      208 GETUPVAL                         R12 0
      209 GETTABLEKS                       R12 R12 K48 ["Event"]
      211 GETTABLEKS                       R12 R12 K49 ["Activated"]
      213 NEWCLOSURE                       R13 P5
      214 CAPTURE                          VAL R0
      215 SETTABLE                         R13 R11 R12
      216 CALL                             R9 2 1
      217 SETTABLEKS                       R9 R8 K30 ["Button"]
      219 CALL                             R5 3 1
      220 SETTABLEKS                       R5 R4 K12 ["DropFromSide"]
      222 CALL                             R1 3 -1
      223 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["DropdownMenu"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R7 R7 K4 ["Parent"]
       40 GETTABLEKS                       R7 R7 K12 ["Name"]
       42 LOADK                            R8 K13 ["Example"]
       43 CONCAT                           R6 R7 R8
       44 NAMECALL                         R4 R4 K14 ["extend"]
       46 CALL                             R4 2 1
       47 DUPCLOSURE                       R5 K15 [PROTO_3]
       48 SETTABLEKS                       R5 R4 K16 ["init"]
       50 DUPCLOSURE                       R5 K17 [PROTO_10]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R5 R4 K18 ["render"]
       56 RETURN                           R4 1
