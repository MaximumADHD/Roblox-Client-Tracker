PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useToggleState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       13 LOADNIL                          R5
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K6 [{"tag", "ref", "onActivated"}]
       19 LOADK                            R9 K7 ["auto-xy bg-system-emphasis padding-medium"]
       20 SETTABLEKS                       R9 R8 K3 ["tag"]
       22 GETTABLEKS                       R9 R1 K4 ["ref"]
       24 SETTABLEKS                       R9 R8 K4 ["ref"]
       26 GETTABLEKS                       R9 R2 K8 ["toggle"]
       28 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K1 ["createElement"]
       33 GETUPVAL                         R10 4
       34 DUPTABLE                         R11 K10 [{"tag", "Text"}]
       35 LOADK                            R12 K11 ["auto-xy"]
       36 SETTABLEKS                       R12 R11 K3 ["tag"]
       38 LOADK                            R12 K12 ["Click me to see the menu"]
       39 SETTABLEKS                       R12 R11 K9 ["Text"]
       41 CALL                             R9 2 -1
       42 CALL                             R6 -1 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K1 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K18 [{"isOpen", "onClose", "anchorUri", "side", "align"}]
       48 GETTABLEKS                       R10 R2 K19 ["enabled"]
       50 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       52 GETTABLEKS                       R10 R2 K20 ["disable"]
       54 SETTABLEKS                       R10 R9 K14 ["onClose"]
       56 GETTABLEKS                       R10 R1 K21 ["uri"]
       58 SETTABLEKS                       R10 R9 K15 ["anchorUri"]
       60 DUPTABLE                         R10 K24 [{"position", "offset"}]
       61 GETTABLEKS                       R11 R0 K16 ["side"]
       63 SETTABLEKS                       R11 R10 K22 ["position"]
       65 LOADN                            R11 8
       66 SETTABLEKS                       R11 R10 K23 ["offset"]
       68 SETTABLEKS                       R10 R9 K16 ["side"]
       70 GETTABLEKS                       R10 R0 K17 ["align"]
       72 SETTABLEKS                       R10 R9 K17 ["align"]
       74 GETTABLEKS                       R10 R0 K25 ["children"]
       76 CALL                             R7 3 -1
       77 CALL                             R3 -1 -1
       78 RETURN                           R3 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useToggleState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       13 LOADNIL                          R5
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K6 [{"tag", "onActivated", "ref"}]
       19 LOADK                            R9 K7 ["size-full-0 auto-y padding-medium bg-surface-300"]
       20 SETTABLEKS                       R9 R8 K3 ["tag"]
       22 GETTABLEKS                       R9 R2 K8 ["toggle"]
       24 SETTABLEKS                       R9 R8 K4 ["onActivated"]
       26 GETTABLEKS                       R9 R1 K5 ["ref"]
       28 SETTABLEKS                       R9 R8 K5 ["ref"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K1 ["createElement"]
       33 GETUPVAL                         R10 4
       34 DUPTABLE                         R11 K10 [{"tag", "Text"}]
       35 LOADK                            R12 K11 ["auto-xy"]
       36 SETTABLEKS                       R12 R11 K3 ["tag"]
       38 GETTABLEKS                       R12 R0 K12 ["text"]
       40 SETTABLEKS                       R12 R11 K9 ["Text"]
       42 CALL                             R9 2 -1
       43 CALL                             R6 -1 1
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K1 ["createElement"]
       47 GETUPVAL                         R8 5
       48 DUPTABLE                         R9 K18 [{"isOpen", "onClose", "anchorUri", "side", "align"}]
       49 GETTABLEKS                       R10 R2 K19 ["enabled"]
       51 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       53 GETTABLEKS                       R10 R2 K20 ["disable"]
       55 SETTABLEKS                       R10 R9 K14 ["onClose"]
       57 GETTABLEKS                       R10 R1 K21 ["uri"]
       59 SETTABLEKS                       R10 R9 K15 ["anchorUri"]
       61 DUPTABLE                         R10 K24 [{"position", "offset"}]
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R11 R11 K25 ["Right"]
       65 SETTABLEKS                       R11 R10 K22 ["position"]
       67 LOADN                            R11 8
       68 SETTABLEKS                       R11 R10 K23 ["offset"]
       70 SETTABLEKS                       R10 R9 K16 ["side"]
       72 GETUPVAL                         R10 7
       73 GETTABLEKS                       R10 R10 K26 ["Start"]
       75 SETTABLEKS                       R10 R9 K17 ["align"]
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K1 ["createElement"]
       80 GETUPVAL                         R11 3
       81 DUPTABLE                         R12 K27 [{"tag"}]
       82 LOADK                            R13 K28 ["auto-xy col gap-small bg-surface-300"]
       83 SETTABLEKS                       R13 R12 K3 ["tag"]
       85 GETUPVAL                         R13 2
       86 GETTABLEKS                       R13 R13 K1 ["createElement"]
       88 GETUPVAL                         R14 3
       89 DUPTABLE                         R15 K29 [{"tag", "onActivated"}]
       90 LOADK                            R16 K30 ["size-full-0 auto-y padding-medium"]
       91 SETTABLEKS                       R16 R15 K3 ["tag"]
       93 DUPCLOSURE                       R16 K31 [PROTO_1]
       94 SETTABLEKS                       R16 R15 K4 ["onActivated"]
       96 GETUPVAL                         R16 2
       97 GETTABLEKS                       R16 R16 K1 ["createElement"]
       99 GETUPVAL                         R17 4
      100 DUPTABLE                         R18 K10 [{"tag", "Text"}]
      101 LOADK                            R19 K11 ["auto-xy"]
      102 SETTABLEKS                       R19 R18 K3 ["tag"]
      104 LOADK                            R19 K32 ["A"]
      105 SETTABLEKS                       R19 R18 K9 ["Text"]
      107 CALL                             R16 2 -1
      108 CALL                             R13 -1 1
      109 GETUPVAL                         R14 2
      110 GETTABLEKS                       R14 R14 K1 ["createElement"]
      112 GETUPVAL                         R15 3
      113 DUPTABLE                         R16 K29 [{"tag", "onActivated"}]
      114 LOADK                            R17 K30 ["size-full-0 auto-y padding-medium"]
      115 SETTABLEKS                       R17 R16 K3 ["tag"]
      117 DUPCLOSURE                       R17 K33 [PROTO_2]
      118 SETTABLEKS                       R17 R16 K4 ["onActivated"]
      120 GETUPVAL                         R17 2
      121 GETTABLEKS                       R17 R17 K1 ["createElement"]
      123 GETUPVAL                         R18 4
      124 DUPTABLE                         R19 K10 [{"tag", "Text"}]
      125 LOADK                            R20 K11 ["auto-xy"]
      126 SETTABLEKS                       R20 R19 K3 ["tag"]
      128 LOADK                            R20 K34 ["B"]
      129 SETTABLEKS                       R20 R19 K9 ["Text"]
      131 CALL                             R17 2 -1
      132 CALL                             R14 -1 1
      133 GETUPVAL                         R15 2
      134 GETTABLEKS                       R15 R15 K1 ["createElement"]
      136 GETUPVAL                         R16 8
      137 DUPTABLE                         R17 K35 [{"text"}]
      138 LOADK                            R18 K36 ["I have submenu!"]
      139 SETTABLEKS                       R18 R17 K12 ["text"]
      141 CALL                             R15 2 -1
      142 CALL                             R10 -1 -1
      143 CALL                             R7 -1 -1
      144 CALL                             R3 -1 -1
      145 RETURN                           R3 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useToggleState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       13 LOADNIL                          R5
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K6 [{"tag", "ref", "onActivated"}]
       19 LOADK                            R9 K7 ["auto-xy bg-system-emphasis padding-medium"]
       20 SETTABLEKS                       R9 R8 K3 ["tag"]
       22 GETTABLEKS                       R9 R1 K4 ["ref"]
       24 SETTABLEKS                       R9 R8 K4 ["ref"]
       26 GETTABLEKS                       R9 R2 K8 ["toggle"]
       28 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K1 ["createElement"]
       33 GETUPVAL                         R10 4
       34 DUPTABLE                         R11 K10 [{"tag", "Text"}]
       35 LOADK                            R12 K11 ["auto-xy"]
       36 SETTABLEKS                       R12 R11 K3 ["tag"]
       38 LOADK                            R12 K12 ["Click me to see the menu"]
       39 SETTABLEKS                       R12 R11 K9 ["Text"]
       41 CALL                             R9 2 -1
       42 CALL                             R6 -1 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K1 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K18 [{"isOpen", "onClose", "anchorUri", "side", "align"}]
       48 GETTABLEKS                       R10 R2 K19 ["enabled"]
       50 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       52 GETTABLEKS                       R10 R2 K20 ["disable"]
       54 SETTABLEKS                       R10 R9 K14 ["onClose"]
       56 GETTABLEKS                       R10 R1 K21 ["uri"]
       58 SETTABLEKS                       R10 R9 K15 ["anchorUri"]
       60 DUPTABLE                         R10 K24 [{"position", "offset"}]
       61 GETTABLEKS                       R11 R0 K16 ["side"]
       63 SETTABLEKS                       R11 R10 K22 ["position"]
       65 LOADN                            R11 8
       66 SETTABLEKS                       R11 R10 K23 ["offset"]
       68 SETTABLEKS                       R10 R9 K16 ["side"]
       70 GETTABLEKS                       R10 R0 K17 ["align"]
       72 SETTABLEKS                       R10 R9 K17 ["align"]
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R10 R10 K1 ["createElement"]
       77 GETUPVAL                         R11 3
       78 DUPTABLE                         R12 K25 [{"tag"}]
       79 LOADK                            R13 K26 ["auto-xy col gap-small bg-surface-300"]
       80 SETTABLEKS                       R13 R12 K3 ["tag"]
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R13 R13 K1 ["createElement"]
       85 GETUPVAL                         R14 3
       86 DUPTABLE                         R15 K27 [{"tag", "onActivated"}]
       87 LOADK                            R16 K28 ["size-full-0 auto-y padding-medium"]
       88 SETTABLEKS                       R16 R15 K3 ["tag"]
       90 DUPCLOSURE                       R16 K29 [PROTO_4]
       91 SETTABLEKS                       R16 R15 K5 ["onActivated"]
       93 GETUPVAL                         R16 2
       94 GETTABLEKS                       R16 R16 K1 ["createElement"]
       96 GETUPVAL                         R17 4
       97 DUPTABLE                         R18 K10 [{"tag", "Text"}]
       98 LOADK                            R19 K11 ["auto-xy"]
       99 SETTABLEKS                       R19 R18 K3 ["tag"]
      101 LOADK                            R19 K30 ["A"]
      102 SETTABLEKS                       R19 R18 K9 ["Text"]
      104 CALL                             R16 2 -1
      105 CALL                             R13 -1 1
      106 GETUPVAL                         R14 2
      107 GETTABLEKS                       R14 R14 K1 ["createElement"]
      109 GETUPVAL                         R15 3
      110 DUPTABLE                         R16 K27 [{"tag", "onActivated"}]
      111 LOADK                            R17 K28 ["size-full-0 auto-y padding-medium"]
      112 SETTABLEKS                       R17 R16 K3 ["tag"]
      114 DUPCLOSURE                       R17 K31 [PROTO_5]
      115 SETTABLEKS                       R17 R16 K5 ["onActivated"]
      117 GETUPVAL                         R17 2
      118 GETTABLEKS                       R17 R17 K1 ["createElement"]
      120 GETUPVAL                         R18 4
      121 DUPTABLE                         R19 K10 [{"tag", "Text"}]
      122 LOADK                            R20 K11 ["auto-xy"]
      123 SETTABLEKS                       R20 R19 K3 ["tag"]
      125 LOADK                            R20 K32 ["B"]
      126 SETTABLEKS                       R20 R19 K9 ["Text"]
      128 CALL                             R17 2 -1
      129 CALL                             R14 -1 1
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R15 R15 K1 ["createElement"]
      133 GETUPVAL                         R16 3
      134 DUPTABLE                         R17 K27 [{"tag", "onActivated"}]
      135 LOADK                            R18 K28 ["size-full-0 auto-y padding-medium"]
      136 SETTABLEKS                       R18 R17 K3 ["tag"]
      138 DUPCLOSURE                       R18 K33 [PROTO_6]
      139 SETTABLEKS                       R18 R17 K5 ["onActivated"]
      141 GETUPVAL                         R18 2
      142 GETTABLEKS                       R18 R18 K1 ["createElement"]
      144 GETUPVAL                         R19 4
      145 DUPTABLE                         R20 K10 [{"tag", "Text"}]
      146 LOADK                            R21 K11 ["auto-xy"]
      147 SETTABLEKS                       R21 R20 K3 ["tag"]
      149 LOADK                            R21 K34 ["C"]
      150 SETTABLEKS                       R21 R20 K9 ["Text"]
      152 CALL                             R18 2 -1
      153 CALL                             R15 -1 1
      154 GETUPVAL                         R16 2
      155 GETTABLEKS                       R16 R16 K1 ["createElement"]
      157 GETUPVAL                         R17 6
      158 DUPTABLE                         R18 K36 [{"text", "side", "align"}]
      159 LOADK                            R19 K37 ["I have submenu!"]
      160 SETTABLEKS                       R19 R18 K35 ["text"]
      162 DUPTABLE                         R19 K24 [{"position", "offset"}]
      163 GETTABLEKS                       R20 R0 K16 ["side"]
      165 SETTABLEKS                       R20 R19 K22 ["position"]
      167 LOADN                            R20 8
      168 SETTABLEKS                       R20 R19 K23 ["offset"]
      170 SETTABLEKS                       R19 R18 K16 ["side"]
      172 GETTABLEKS                       R19 R0 K17 ["align"]
      174 SETTABLEKS                       R19 R18 K17 ["align"]
      176 CALL                             R16 2 -1
      177 CALL                             R10 -1 -1
      178 CALL                             R7 -1 -1
      179 CALL                             R3 -1 -1
      180 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["disable"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["A"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["B"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["C"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useToggleState"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R6 0 2
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R1 K3 ["disable"]
       23 SETLIST                          R6 R7 2 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K4 ["createElement"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K5 ["Fragment"]
       32 LOADNIL                          R7
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K4 ["createElement"]
       36 GETUPVAL                         R9 3
       37 DUPTABLE                         R10 K10 [{"tag", "Size", "ref", "onActivated"}]
       38 NEWTABLE                         R11 4 0
       40 LOADB                            R12 1
       41 SETTABLEKS                       R12 R11 K11 ["auto-y padding-medium radius-medium"]
       43 GETTABLEKS                       R13 R1 K12 ["enabled"]
       45 NOT                              R12 R13
       46 SETTABLEKS                       R12 R11 K13 ["stroke-contrast"]
       48 GETTABLEKS                       R12 R1 K12 ["enabled"]
       50 SETTABLEKS                       R12 R11 K14 ["stroke-system-emphasis"]
       52 SETTABLEKS                       R11 R10 K6 ["tag"]
       54 GETIMPORT                        R11 K17 [UDim2.fromOffset]
       56 LOADN                            R12 64
       57 LOADN                            R13 0
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K7 ["Size"]
       61 GETTABLEKS                       R11 R0 K8 ["ref"]
       63 SETTABLEKS                       R11 R10 K8 ["ref"]
       65 GETTABLEKS                       R11 R1 K18 ["toggle"]
       67 SETTABLEKS                       R11 R10 K9 ["onActivated"]
       69 GETUPVAL                         R11 2
       70 GETTABLEKS                       R11 R11 K4 ["createElement"]
       72 GETUPVAL                         R12 4
       73 DUPTABLE                         R13 K20 [{"tag", "Text"}]
       74 LOADK                            R14 K21 ["size-full-0 auto-y"]
       75 SETTABLEKS                       R14 R13 K6 ["tag"]
       77 ORK                              R14 R2 K22 ["Select a value"]
       78 SETTABLEKS                       R14 R13 K19 ["Text"]
       80 CALL                             R11 2 -1
       81 CALL                             R8 -1 1
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K4 ["createElement"]
       85 GETUPVAL                         R10 5
       86 DUPTABLE                         R11 K27 [{"isOpen", "onClose", "anchorUri", "side"}]
       87 GETTABLEKS                       R12 R1 K12 ["enabled"]
       89 SETTABLEKS                       R12 R11 K23 ["isOpen"]
       91 GETTABLEKS                       R12 R1 K3 ["disable"]
       93 SETTABLEKS                       R12 R11 K24 ["onClose"]
       95 GETTABLEKS                       R12 R0 K28 ["uri"]
       97 SETTABLEKS                       R12 R11 K25 ["anchorUri"]
       99 DUPTABLE                         R12 K31 [{"position", "offset"}]
      100 GETUPVAL                         R13 6
      101 GETTABLEKS                       R13 R13 K32 ["Bottom"]
      103 SETTABLEKS                       R13 R12 K29 ["position"]
      105 LOADN                            R13 8
      106 SETTABLEKS                       R13 R12 K30 ["offset"]
      108 SETTABLEKS                       R12 R11 K26 ["side"]
      110 GETUPVAL                         R12 2
      111 GETTABLEKS                       R12 R12 K4 ["createElement"]
      113 GETUPVAL                         R13 3
      114 DUPTABLE                         R14 K33 [{"tag", "Size"}]
      115 LOADK                            R15 K34 ["auto-y col gap-small bg-surface-300"]
      116 SETTABLEKS                       R15 R14 K6 ["tag"]
      118 GETIMPORT                        R15 K17 [UDim2.fromOffset]
      120 LOADN                            R16 64
      121 LOADN                            R17 0
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K7 ["Size"]
      125 GETUPVAL                         R15 2
      126 GETTABLEKS                       R15 R15 K4 ["createElement"]
      128 GETUPVAL                         R16 3
      129 DUPTABLE                         R17 K35 [{"tag", "onActivated"}]
      130 LOADK                            R18 K36 ["size-full-0 auto-y padding-medium"]
      131 SETTABLEKS                       R18 R17 K6 ["tag"]
      133 NEWCLOSURE                       R18 P1
      134 CAPTURE                          VAL R4
      135 SETTABLEKS                       R18 R17 K9 ["onActivated"]
      137 GETUPVAL                         R18 2
      138 GETTABLEKS                       R18 R18 K4 ["createElement"]
      140 GETUPVAL                         R19 4
      141 DUPTABLE                         R20 K20 [{"tag", "Text"}]
      142 LOADK                            R21 K37 ["auto-xy"]
      143 SETTABLEKS                       R21 R20 K6 ["tag"]
      145 LOADK                            R21 K38 ["A"]
      146 SETTABLEKS                       R21 R20 K19 ["Text"]
      148 CALL                             R18 2 -1
      149 CALL                             R15 -1 1
      150 GETUPVAL                         R16 2
      151 GETTABLEKS                       R16 R16 K4 ["createElement"]
      153 GETUPVAL                         R17 3
      154 DUPTABLE                         R18 K35 [{"tag", "onActivated"}]
      155 LOADK                            R19 K36 ["size-full-0 auto-y padding-medium"]
      156 SETTABLEKS                       R19 R18 K6 ["tag"]
      158 NEWCLOSURE                       R19 P2
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R19 R18 K9 ["onActivated"]
      162 GETUPVAL                         R19 2
      163 GETTABLEKS                       R19 R19 K4 ["createElement"]
      165 GETUPVAL                         R20 4
      166 DUPTABLE                         R21 K20 [{"tag", "Text"}]
      167 LOADK                            R22 K37 ["auto-xy"]
      168 SETTABLEKS                       R22 R21 K6 ["tag"]
      170 LOADK                            R22 K39 ["B"]
      171 SETTABLEKS                       R22 R21 K19 ["Text"]
      173 CALL                             R19 2 -1
      174 CALL                             R16 -1 1
      175 GETUPVAL                         R17 2
      176 GETTABLEKS                       R17 R17 K4 ["createElement"]
      178 GETUPVAL                         R18 3
      179 DUPTABLE                         R19 K35 [{"tag", "onActivated"}]
      180 LOADK                            R20 K36 ["size-full-0 auto-y padding-medium"]
      181 SETTABLEKS                       R20 R19 K6 ["tag"]
      183 NEWCLOSURE                       R20 P3
      184 CAPTURE                          VAL R4
      185 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      187 GETUPVAL                         R20 2
      188 GETTABLEKS                       R20 R20 K4 ["createElement"]
      190 GETUPVAL                         R21 4
      191 DUPTABLE                         R22 K20 [{"tag", "Text"}]
      192 LOADK                            R23 K37 ["auto-xy"]
      193 SETTABLEKS                       R23 R22 K6 ["tag"]
      195 LOADK                            R23 K40 ["C"]
      196 SETTABLEKS                       R23 R22 K19 ["Text"]
      198 CALL                             R20 2 -1
      199 CALL                             R17 -1 -1
      200 CALL                             R12 -1 -1
      201 CALL                             R9 -1 -1
      202 CALL                             R5 -1 -1
      203 RETURN                           R5 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R1 R2 ; [+34]
        6 GETUPVAL                         R1 0
        7 GETIMPORT                        R2 K6 [Vector2.new]
        9 GETTABLEKS                       R4 R0 K7 ["Position"]
       11 GETTABLEKS                       R4 R4 K8 ["X"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K9 ["ref"]
       16 GETTABLEKS                       R5 R5 K10 ["current"]
       18 GETTABLEKS                       R5 R5 K11 ["AbsolutePosition"]
       20 GETTABLEKS                       R5 R5 K8 ["X"]
       22 SUB                              R3 R4 R5
       23 GETTABLEKS                       R5 R0 K7 ["Position"]
       25 GETTABLEKS                       R5 R5 K12 ["Y"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K9 ["ref"]
       30 GETTABLEKS                       R6 R6 K10 ["current"]
       32 GETTABLEKS                       R6 R6 K11 ["AbsolutePosition"]
       34 GETTABLEKS                       R6 R6 K12 ["Y"]
       36 SUB                              R4 R5 R6
       37 CALL                             R2 2 -1
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ref"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["ref"]
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETTABLEKS                       R0 R0 K2 ["InputBegan"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 NAMECALL                         R0 R0 K3 ["Connect"]
       19 CALL                             R0 2 1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 NEWTABLE                         R6 0 1
       14 MOVE                             R7 R3
       15 SETLIST                          R6 R7 1 [1]
       17 CALL                             R4 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R8 0 1
       30 GETTABLEKS                       R9 R1 K3 ["ref"]
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K4 ["createElement"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K5 ["Fragment"]
       41 LOADNIL                          R8
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K4 ["createElement"]
       45 GETUPVAL                         R10 2
       46 DUPTABLE                         R11 K8 [{"tag", "Size", "ref"}]
       47 NEWTABLE                         R12 4 0
       49 LOADB                            R13 1
       50 SETTABLEKS                       R13 R12 K9 ["auto-y padding-medium radius-medium"]
       52 NOT                              R13 R5
       53 SETTABLEKS                       R13 R12 K10 ["stroke-contrast"]
       55 SETTABLEKS                       R5 R12 K11 ["stroke-system-emphasis"]
       57 SETTABLEKS                       R12 R11 K6 ["tag"]
       59 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       61 LOADN                            R13 64
       62 LOADN                            R14 0
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K7 ["Size"]
       66 GETTABLEKS                       R12 R1 K3 ["ref"]
       68 SETTABLEKS                       R12 R11 K3 ["ref"]
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R12 R12 K4 ["createElement"]
       73 GETUPVAL                         R13 3
       74 DUPTABLE                         R14 K16 [{"tag", "Text"}]
       75 LOADK                            R15 K17 ["size-full-0 auto-y"]
       76 SETTABLEKS                       R15 R14 K6 ["tag"]
       78 LOADK                            R15 K18 ["Right-click to open the context menu"]
       79 SETTABLEKS                       R15 R14 K15 ["Text"]
       81 CALL                             R12 2 -1
       82 CALL                             R9 -1 1
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R10 R10 K4 ["createElement"]
       86 GETUPVAL                         R11 4
       87 DUPTABLE                         R12 K24 [{"isOpen", "onClose", "anchorUri", "side", "position"}]
       88 SETTABLEKS                       R5 R12 K19 ["isOpen"]
       90 SETTABLEKS                       R4 R12 K20 ["onClose"]
       92 GETTABLEKS                       R13 R1 K25 ["uri"]
       94 SETTABLEKS                       R13 R12 K21 ["anchorUri"]
       96 DUPTABLE                         R13 K27 [{"position", "offset"}]
       97 GETTABLEKS                       R14 R0 K22 ["side"]
       99 SETTABLEKS                       R14 R13 K23 ["position"]
      101 LOADN                            R14 8
      102 SETTABLEKS                       R14 R13 K26 ["offset"]
      104 SETTABLEKS                       R13 R12 K22 ["side"]
      106 SETTABLEKS                       R2 R12 K23 ["position"]
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R13 R13 K4 ["createElement"]
      111 GETUPVAL                         R14 2
      112 DUPTABLE                         R15 K28 [{"tag", "Size"}]
      113 LOADK                            R16 K29 ["auto-y col gap-small bg-surface-300"]
      114 SETTABLEKS                       R16 R15 K6 ["tag"]
      116 GETIMPORT                        R16 K14 [UDim2.fromOffset]
      118 LOADN                            R17 64
      119 LOADN                            R18 0
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K7 ["Size"]
      123 GETUPVAL                         R16 1
      124 GETTABLEKS                       R16 R16 K4 ["createElement"]
      126 GETUPVAL                         R17 2
      127 DUPTABLE                         R18 K31 [{"tag", "onActivated"}]
      128 LOADK                            R19 K32 ["size-full-0 auto-y padding-medium"]
      129 SETTABLEKS                       R19 R18 K6 ["tag"]
      131 NEWCLOSURE                       R19 P2
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R19 R18 K30 ["onActivated"]
      135 GETUPVAL                         R19 1
      136 GETTABLEKS                       R19 R19 K4 ["createElement"]
      138 GETUPVAL                         R20 3
      139 DUPTABLE                         R21 K16 [{"tag", "Text"}]
      140 LOADK                            R22 K33 ["auto-xy"]
      141 SETTABLEKS                       R22 R21 K6 ["tag"]
      143 LOADK                            R22 K34 ["A"]
      144 SETTABLEKS                       R22 R21 K15 ["Text"]
      146 CALL                             R19 2 -1
      147 CALL                             R16 -1 1
      148 GETUPVAL                         R17 1
      149 GETTABLEKS                       R17 R17 K4 ["createElement"]
      151 GETUPVAL                         R18 2
      152 DUPTABLE                         R19 K31 [{"tag", "onActivated"}]
      153 LOADK                            R20 K32 ["size-full-0 auto-y padding-medium"]
      154 SETTABLEKS                       R20 R19 K6 ["tag"]
      156 NEWCLOSURE                       R20 P3
      157 CAPTURE                          VAL R4
      158 SETTABLEKS                       R20 R19 K30 ["onActivated"]
      160 GETUPVAL                         R20 1
      161 GETTABLEKS                       R20 R20 K4 ["createElement"]
      163 GETUPVAL                         R21 3
      164 DUPTABLE                         R22 K16 [{"tag", "Text"}]
      165 LOADK                            R23 K33 ["auto-xy"]
      166 SETTABLEKS                       R23 R22 K6 ["tag"]
      168 LOADK                            R23 K35 ["B"]
      169 SETTABLEKS                       R23 R22 K15 ["Text"]
      171 CALL                             R20 2 -1
      172 CALL                             R17 -1 1
      173 GETUPVAL                         R18 1
      174 GETTABLEKS                       R18 R18 K4 ["createElement"]
      176 GETUPVAL                         R19 2
      177 DUPTABLE                         R20 K31 [{"tag", "onActivated"}]
      178 LOADK                            R21 K32 ["size-full-0 auto-y padding-medium"]
      179 SETTABLEKS                       R21 R20 K6 ["tag"]
      181 NEWCLOSURE                       R21 P4
      182 CAPTURE                          VAL R4
      183 SETTABLEKS                       R21 R20 K30 ["onActivated"]
      185 GETUPVAL                         R21 1
      186 GETTABLEKS                       R21 R21 K4 ["createElement"]
      188 GETUPVAL                         R22 3
      189 DUPTABLE                         R23 K16 [{"tag", "Text"}]
      190 LOADK                            R24 K33 ["auto-xy"]
      191 SETTABLEKS                       R24 R23 K6 ["tag"]
      193 LOADK                            R24 K36 ["C"]
      194 SETTABLEKS                       R24 R23 K15 ["Text"]
      196 CALL                             R21 2 -1
      197 CALL                             R18 -1 -1
      198 CALL                             R13 -1 -1
      199 CALL                             R10 -1 -1
      200 CALL                             R6 -1 -1
      201 RETURN                           R6 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"uriScope"}]
        7 LOADK                            R4 K4 ["BasicStory"]
        8 SETTABLEKS                       R4 R3 K2 ["uriScope"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createElement"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R6 R0 K5 ["controls"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["createElement"]
       19 GETUPVAL                         R8 3
       20 DUPTABLE                         R9 K8 [{"tag", "Text"}]
       21 LOADK                            R10 K9 ["size-2000-2000 bg-system-default"]
       22 SETTABLEKS                       R10 R9 K6 ["tag"]
       24 LOADK                            R10 K10 ["text"]
       25 SETTABLEKS                       R10 R9 K7 ["Text"]
       27 CALL                             R7 2 -1
       28 CALL                             R4 -1 -1
       29 CALL                             R1 -1 -1
       30 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"uriScope"}]
        7 LOADK                            R4 K4 ["SubmenuStory"]
        8 SETTABLEKS                       R4 R3 K2 ["uriScope"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createElement"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R6 R0 K5 ["controls"]
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"uriScope"}]
        7 LOADK                            R4 K4 ["DropdownStory"]
        8 SETTABLEKS                       R4 R3 K2 ["uriScope"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createElement"]
       13 GETUPVAL                         R5 2
       14 CALL                             R4 1 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"uriScope"}]
        7 LOADK                            R4 K4 ["ContextMenuStory"]
        8 SETTABLEKS                       R4 R3 K2 ["uriScope"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createElement"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R6 R0 K5 ["controls"]
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["View"]
       31 GETTABLEKS                       R7 R5 K12 ["Text"]
       33 GETTABLEKS                       R8 R5 K13 ["Enums"]
       35 GETTABLEKS                       R8 R8 K14 ["PopoverSide"]
       37 GETTABLEKS                       R9 R5 K13 ["Enums"]
       39 GETTABLEKS                       R9 R9 K15 ["PopoverAlign"]
       41 GETIMPORT                        R10 K6 [require]
       43 GETTABLEKS                       R11 R0 K16 ["Hooks"]
       45 GETTABLEKS                       R11 R11 K17 ["useUniqueWidget"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K6 [require]
       50 GETTABLEKS                       R12 R0 K18 ["Components"]
       52 GETTABLEKS                       R12 R12 K19 ["Menu"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K20 ["Panels"]
       59 GETTABLEKS                       R13 R13 K21 ["PanelsContext"]
       61 CALL                             R12 1 1
       62 DUPCLOSURE                       R13 K22 [PROTO_0]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R11
       69 DUPCLOSURE                       R14 K23 [PROTO_3]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R14
       79 DUPCLOSURE                       R15 K24 [PROTO_7]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R14
       87 DUPCLOSURE                       R16 K25 [PROTO_12]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R8
       95 DUPCLOSURE                       R17 K26 [PROTO_20]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R11
      101 DUPTABLE                         R18 K30 [{"summary", "stories", "controls"}]
      102 LOADK                            R19 K19 ["Menu"]
      103 SETTABLEKS                       R19 R18 K27 ["summary"]
      105 DUPTABLE                         R19 K35 [{"Basic", "Submenu", "Dropdown", "ContextMenu"}]
      106 DUPTABLE                         R20 K38 [{"name", "story"}]
      107 LOADK                            R21 K31 ["Basic"]
      108 SETTABLEKS                       R21 R20 K36 ["name"]
      110 DUPCLOSURE                       R21 K39 [PROTO_21]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 SETTABLEKS                       R21 R20 K37 ["story"]
      117 SETTABLEKS                       R20 R19 K31 ["Basic"]
      119 DUPTABLE                         R20 K38 [{"name", "story"}]
      120 LOADK                            R21 K32 ["Submenu"]
      121 SETTABLEKS                       R21 R20 K36 ["name"]
      123 DUPCLOSURE                       R21 K40 [PROTO_22]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R15
      127 SETTABLEKS                       R21 R20 K37 ["story"]
      129 SETTABLEKS                       R20 R19 K32 ["Submenu"]
      131 DUPTABLE                         R20 K38 [{"name", "story"}]
      132 LOADK                            R21 K33 ["Dropdown"]
      133 SETTABLEKS                       R21 R20 K36 ["name"]
      135 DUPCLOSURE                       R21 K41 [PROTO_23]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R16
      139 SETTABLEKS                       R21 R20 K37 ["story"]
      141 SETTABLEKS                       R20 R19 K33 ["Dropdown"]
      143 DUPTABLE                         R20 K38 [{"name", "story"}]
      144 LOADK                            R21 K34 ["ContextMenu"]
      145 SETTABLEKS                       R21 R20 K36 ["name"]
      147 DUPCLOSURE                       R21 K42 [PROTO_24]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R17
      151 SETTABLEKS                       R21 R20 K37 ["story"]
      153 SETTABLEKS                       R20 R19 K34 ["ContextMenu"]
      155 SETTABLEKS                       R19 R18 K28 ["stories"]
      157 DUPTABLE                         R19 K45 [{"side", "align"}]
      158 GETTABLEKS                       R20 R3 K46 ["values"]
      160 MOVE                             R21 R8
      161 CALL                             R20 1 1
      162 SETTABLEKS                       R20 R19 K43 ["side"]
      164 GETTABLEKS                       R20 R3 K46 ["values"]
      166 MOVE                             R21 R9
      167 CALL                             R20 1 1
      168 SETTABLEKS                       R20 R19 K44 ["align"]
      170 SETTABLEKS                       R19 R18 K29 ["controls"]
      172 RETURN                           R18 1
