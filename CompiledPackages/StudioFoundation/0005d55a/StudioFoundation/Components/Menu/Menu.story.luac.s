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
       18 DUPTABLE                         R8 K7 [{["tag"] = "auto-xy bg-system-emphasis padding-medium", ["ref"], ["onActivated"]}]
       19 GETTABLEKS                       R9 R1 K5 ["ref"]
       21 SETTABLEKS                       R9 R8 K5 ["ref"]
       23 GETTABLEKS                       R9 R2 K8 ["toggle"]
       25 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K1 ["createElement"]
       30 GETUPVAL                         R10 4
       31 DUPTABLE                         R11 K12 [{["tag"] = "auto-xy", ["Text"] = "Click me to see the menu"}]
       32 CALL                             R9 2 -1
       33 CALL                             R6 -1 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K1 ["createElement"]
       37 GETUPVAL                         R8 5
       38 DUPTABLE                         R9 K18 [{"isOpen", "onClose", "anchorUri", "side", "align"}]
       39 GETTABLEKS                       R10 R2 K19 ["enabled"]
       41 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       43 GETTABLEKS                       R10 R2 K20 ["disable"]
       45 SETTABLEKS                       R10 R9 K14 ["onClose"]
       47 GETTABLEKS                       R10 R1 K21 ["uri"]
       49 SETTABLEKS                       R10 R9 K15 ["anchorUri"]
       51 DUPTABLE                         R10 K25 [{["position"], ["offset"] = 8}]
       52 GETTABLEKS                       R11 R0 K16 ["side"]
       54 SETTABLEKS                       R11 R10 K22 ["position"]
       56 SETTABLEKS                       R10 R9 K16 ["side"]
       58 GETTABLEKS                       R10 R0 K17 ["align"]
       60 SETTABLEKS                       R10 R9 K17 ["align"]
       62 GETTABLEKS                       R10 R0 K26 ["children"]
       64 CALL                             R7 3 -1
       65 CALL                             R3 -1 -1
       66 RETURN                           R3 -1

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
       18 DUPTABLE                         R8 K7 [{["tag"] = "size-full-0 auto-y padding-medium bg-surface-300", ["onActivated"], ["ref"]}]
       19 GETTABLEKS                       R9 R2 K8 ["toggle"]
       21 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       23 GETTABLEKS                       R9 R1 K6 ["ref"]
       25 SETTABLEKS                       R9 R8 K6 ["ref"]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K1 ["createElement"]
       30 GETUPVAL                         R10 4
       31 DUPTABLE                         R11 K11 [{["tag"] = "auto-xy", ["Text"]}]
       32 GETTABLEKS                       R12 R0 K12 ["text"]
       34 SETTABLEKS                       R12 R11 K10 ["Text"]
       36 CALL                             R9 2 -1
       37 CALL                             R6 -1 1
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K1 ["createElement"]
       41 GETUPVAL                         R8 5
       42 DUPTABLE                         R9 K18 [{"isOpen", "onClose", "anchorUri", "side", "align"}]
       43 GETTABLEKS                       R10 R2 K19 ["enabled"]
       45 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       47 GETTABLEKS                       R10 R2 K20 ["disable"]
       49 SETTABLEKS                       R10 R9 K14 ["onClose"]
       51 GETTABLEKS                       R10 R1 K21 ["uri"]
       53 SETTABLEKS                       R10 R9 K15 ["anchorUri"]
       55 DUPTABLE                         R10 K25 [{["position"], ["offset"] = 8}]
       56 GETUPVAL                         R11 6
       57 GETTABLEKS                       R11 R11 K26 ["Right"]
       59 SETTABLEKS                       R11 R10 K22 ["position"]
       61 SETTABLEKS                       R10 R9 K16 ["side"]
       63 GETUPVAL                         R10 7
       64 GETTABLEKS                       R10 R10 K27 ["Start"]
       66 SETTABLEKS                       R10 R9 K17 ["align"]
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K1 ["createElement"]
       71 GETUPVAL                         R11 3
       72 DUPTABLE                         R12 K29 [{["tag"] = "auto-xy col gap-small bg-surface-300"}]
       73 GETUPVAL                         R13 2
       74 GETTABLEKS                       R13 R13 K1 ["createElement"]
       76 GETUPVAL                         R14 3
       77 DUPTABLE                         R15 K31 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
       78 DUPCLOSURE                       R16 K32 [PROTO_1]
       79 SETTABLEKS                       R16 R15 K5 ["onActivated"]
       81 GETUPVAL                         R16 2
       82 GETTABLEKS                       R16 R16 K1 ["createElement"]
       84 GETUPVAL                         R17 4
       85 DUPTABLE                         R18 K34 [{["tag"] = "auto-xy", ["Text"] = "A"}]
       86 CALL                             R16 2 -1
       87 CALL                             R13 -1 1
       88 GETUPVAL                         R14 2
       89 GETTABLEKS                       R14 R14 K1 ["createElement"]
       91 GETUPVAL                         R15 3
       92 DUPTABLE                         R16 K31 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
       93 DUPCLOSURE                       R17 K35 [PROTO_2]
       94 SETTABLEKS                       R17 R16 K5 ["onActivated"]
       96 GETUPVAL                         R17 2
       97 GETTABLEKS                       R17 R17 K1 ["createElement"]
       99 GETUPVAL                         R18 4
      100 DUPTABLE                         R19 K37 [{["tag"] = "auto-xy", ["Text"] = "B"}]
      101 CALL                             R17 2 -1
      102 CALL                             R14 -1 1
      103 GETUPVAL                         R15 2
      104 GETTABLEKS                       R15 R15 K1 ["createElement"]
      106 GETUPVAL                         R16 8
      107 DUPTABLE                         R17 K39 [{["text"] = "I have submenu!"}]
      108 CALL                             R15 2 -1
      109 CALL                             R10 -1 -1
      110 CALL                             R7 -1 -1
      111 CALL                             R3 -1 -1
      112 RETURN                           R3 -1

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
       18 DUPTABLE                         R8 K7 [{["tag"] = "auto-xy bg-system-emphasis padding-medium", ["ref"], ["onActivated"]}]
       19 GETTABLEKS                       R9 R1 K5 ["ref"]
       21 SETTABLEKS                       R9 R8 K5 ["ref"]
       23 GETTABLEKS                       R9 R2 K8 ["toggle"]
       25 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K1 ["createElement"]
       30 GETUPVAL                         R10 4
       31 DUPTABLE                         R11 K12 [{["tag"] = "auto-xy", ["Text"] = "Click me to see the menu"}]
       32 CALL                             R9 2 -1
       33 CALL                             R6 -1 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K1 ["createElement"]
       37 GETUPVAL                         R8 5
       38 DUPTABLE                         R9 K18 [{"isOpen", "onClose", "anchorUri", "side", "align"}]
       39 GETTABLEKS                       R10 R2 K19 ["enabled"]
       41 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       43 GETTABLEKS                       R10 R2 K20 ["disable"]
       45 SETTABLEKS                       R10 R9 K14 ["onClose"]
       47 GETTABLEKS                       R10 R1 K21 ["uri"]
       49 SETTABLEKS                       R10 R9 K15 ["anchorUri"]
       51 DUPTABLE                         R10 K25 [{["position"], ["offset"] = 8}]
       52 GETTABLEKS                       R11 R0 K16 ["side"]
       54 SETTABLEKS                       R11 R10 K22 ["position"]
       56 SETTABLEKS                       R10 R9 K16 ["side"]
       58 GETTABLEKS                       R10 R0 K17 ["align"]
       60 SETTABLEKS                       R10 R9 K17 ["align"]
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K1 ["createElement"]
       65 GETUPVAL                         R11 3
       66 DUPTABLE                         R12 K27 [{["tag"] = "auto-xy col gap-small bg-surface-300"}]
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K1 ["createElement"]
       70 GETUPVAL                         R14 3
       71 DUPTABLE                         R15 K29 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
       72 DUPCLOSURE                       R16 K30 [PROTO_4]
       73 SETTABLEKS                       R16 R15 K6 ["onActivated"]
       75 GETUPVAL                         R16 2
       76 GETTABLEKS                       R16 R16 K1 ["createElement"]
       78 GETUPVAL                         R17 4
       79 DUPTABLE                         R18 K32 [{["tag"] = "auto-xy", ["Text"] = "A"}]
       80 CALL                             R16 2 -1
       81 CALL                             R13 -1 1
       82 GETUPVAL                         R14 2
       83 GETTABLEKS                       R14 R14 K1 ["createElement"]
       85 GETUPVAL                         R15 3
       86 DUPTABLE                         R16 K29 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
       87 DUPCLOSURE                       R17 K33 [PROTO_5]
       88 SETTABLEKS                       R17 R16 K6 ["onActivated"]
       90 GETUPVAL                         R17 2
       91 GETTABLEKS                       R17 R17 K1 ["createElement"]
       93 GETUPVAL                         R18 4
       94 DUPTABLE                         R19 K35 [{["tag"] = "auto-xy", ["Text"] = "B"}]
       95 CALL                             R17 2 -1
       96 CALL                             R14 -1 1
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R15 R15 K1 ["createElement"]
      100 GETUPVAL                         R16 3
      101 DUPTABLE                         R17 K29 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      102 DUPCLOSURE                       R18 K36 [PROTO_6]
      103 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      105 GETUPVAL                         R18 2
      106 GETTABLEKS                       R18 R18 K1 ["createElement"]
      108 GETUPVAL                         R19 4
      109 DUPTABLE                         R20 K38 [{["tag"] = "auto-xy", ["Text"] = "C"}]
      110 CALL                             R18 2 -1
      111 CALL                             R15 -1 1
      112 GETUPVAL                         R16 2
      113 GETTABLEKS                       R16 R16 K1 ["createElement"]
      115 GETUPVAL                         R17 6
      116 DUPTABLE                         R18 K41 [{["text"] = "I have submenu!", ["side"], ["align"]}]
      117 DUPTABLE                         R19 K25 [{["position"], ["offset"] = 8}]
      118 GETTABLEKS                       R20 R0 K16 ["side"]
      120 SETTABLEKS                       R20 R19 K22 ["position"]
      122 SETTABLEKS                       R19 R18 K16 ["side"]
      124 GETTABLEKS                       R19 R0 K17 ["align"]
      126 SETTABLEKS                       R19 R18 K17 ["align"]
      128 CALL                             R16 2 -1
      129 CALL                             R10 -1 -1
      130 CALL                             R7 -1 -1
      131 CALL                             R3 -1 -1
      132 RETURN                           R3 -1

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
       56 LOADN                            R12 320
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
       73 DUPTABLE                         R13 K21 [{["tag"] = "size-full-0 auto-y", ["Text"]}]
       74 ORK                              R14 R2 K22 ["Select a value"]
       75 SETTABLEKS                       R14 R13 K20 ["Text"]
       77 CALL                             R11 2 -1
       78 CALL                             R8 -1 1
       79 GETUPVAL                         R9 2
       80 GETTABLEKS                       R9 R9 K4 ["createElement"]
       82 GETUPVAL                         R10 5
       83 DUPTABLE                         R11 K27 [{"isOpen", "onClose", "anchorUri", "side"}]
       84 GETTABLEKS                       R12 R1 K12 ["enabled"]
       86 SETTABLEKS                       R12 R11 K23 ["isOpen"]
       88 GETTABLEKS                       R12 R1 K3 ["disable"]
       90 SETTABLEKS                       R12 R11 K24 ["onClose"]
       92 GETTABLEKS                       R12 R0 K28 ["uri"]
       94 SETTABLEKS                       R12 R11 K25 ["anchorUri"]
       96 DUPTABLE                         R12 K32 [{["position"], ["offset"] = 8}]
       97 GETUPVAL                         R13 6
       98 GETTABLEKS                       R13 R13 K33 ["Bottom"]
      100 SETTABLEKS                       R13 R12 K29 ["position"]
      102 SETTABLEKS                       R12 R11 K26 ["side"]
      104 GETUPVAL                         R12 2
      105 GETTABLEKS                       R12 R12 K4 ["createElement"]
      107 GETUPVAL                         R13 3
      108 DUPTABLE                         R14 K35 [{["tag"] = "auto-y col gap-small bg-surface-300", ["Size"]}]
      109 GETIMPORT                        R15 K17 [UDim2.fromOffset]
      111 LOADN                            R16 320
      112 LOADN                            R17 0
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K7 ["Size"]
      116 GETUPVAL                         R15 2
      117 GETTABLEKS                       R15 R15 K4 ["createElement"]
      119 GETUPVAL                         R16 3
      120 DUPTABLE                         R17 K37 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      121 NEWCLOSURE                       R18 P1
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R18 R17 K9 ["onActivated"]
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R18 R18 K4 ["createElement"]
      128 GETUPVAL                         R19 4
      129 DUPTABLE                         R20 K40 [{["tag"] = "auto-xy", ["Text"] = "A"}]
      130 CALL                             R18 2 -1
      131 CALL                             R15 -1 1
      132 GETUPVAL                         R16 2
      133 GETTABLEKS                       R16 R16 K4 ["createElement"]
      135 GETUPVAL                         R17 3
      136 DUPTABLE                         R18 K37 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      137 NEWCLOSURE                       R19 P2
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R19 R18 K9 ["onActivated"]
      141 GETUPVAL                         R19 2
      142 GETTABLEKS                       R19 R19 K4 ["createElement"]
      144 GETUPVAL                         R20 4
      145 DUPTABLE                         R21 K42 [{["tag"] = "auto-xy", ["Text"] = "B"}]
      146 CALL                             R19 2 -1
      147 CALL                             R16 -1 1
      148 GETUPVAL                         R17 2
      149 GETTABLEKS                       R17 R17 K4 ["createElement"]
      151 GETUPVAL                         R18 3
      152 DUPTABLE                         R19 K37 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      153 NEWCLOSURE                       R20 P3
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      157 GETUPVAL                         R20 2
      158 GETTABLEKS                       R20 R20 K4 ["createElement"]
      160 GETUPVAL                         R21 4
      161 DUPTABLE                         R22 K44 [{["tag"] = "auto-xy", ["Text"] = "C"}]
      162 CALL                             R20 2 -1
      163 CALL                             R17 -1 -1
      164 CALL                             R12 -1 -1
      165 CALL                             R9 -1 -1
      166 CALL                             R5 -1 -1
      167 RETURN                           R5 -1

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
       61 LOADN                            R13 320
       62 LOADN                            R14 0
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K7 ["Size"]
       66 GETTABLEKS                       R12 R1 K3 ["ref"]
       68 SETTABLEKS                       R12 R11 K3 ["ref"]
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R12 R12 K4 ["createElement"]
       73 GETUPVAL                         R13 3
       74 DUPTABLE                         R14 K18 [{["tag"] = "size-full-0 auto-y", ["Text"] = "Right-click to open the context menu"}]
       75 CALL                             R12 2 -1
       76 CALL                             R9 -1 1
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K4 ["createElement"]
       80 GETUPVAL                         R11 4
       81 DUPTABLE                         R12 K24 [{"isOpen", "onClose", "anchorUri", "side", "position"}]
       82 SETTABLEKS                       R5 R12 K19 ["isOpen"]
       84 SETTABLEKS                       R4 R12 K20 ["onClose"]
       86 GETTABLEKS                       R13 R1 K25 ["uri"]
       88 SETTABLEKS                       R13 R12 K21 ["anchorUri"]
       90 DUPTABLE                         R13 K28 [{["position"], ["offset"] = 8}]
       91 GETTABLEKS                       R14 R0 K22 ["side"]
       93 SETTABLEKS                       R14 R13 K23 ["position"]
       95 SETTABLEKS                       R13 R12 K22 ["side"]
       97 SETTABLEKS                       R2 R12 K23 ["position"]
       99 GETUPVAL                         R13 1
      100 GETTABLEKS                       R13 R13 K4 ["createElement"]
      102 GETUPVAL                         R14 2
      103 DUPTABLE                         R15 K30 [{["tag"] = "auto-y col gap-small bg-surface-300", ["Size"]}]
      104 GETIMPORT                        R16 K14 [UDim2.fromOffset]
      106 LOADN                            R17 320
      107 LOADN                            R18 0
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K7 ["Size"]
      111 GETUPVAL                         R16 1
      112 GETTABLEKS                       R16 R16 K4 ["createElement"]
      114 GETUPVAL                         R17 2
      115 DUPTABLE                         R18 K33 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      116 NEWCLOSURE                       R19 P2
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R19 R18 K32 ["onActivated"]
      120 GETUPVAL                         R19 1
      121 GETTABLEKS                       R19 R19 K4 ["createElement"]
      123 GETUPVAL                         R20 3
      124 DUPTABLE                         R21 K36 [{["tag"] = "auto-xy", ["Text"] = "A"}]
      125 CALL                             R19 2 -1
      126 CALL                             R16 -1 1
      127 GETUPVAL                         R17 1
      128 GETTABLEKS                       R17 R17 K4 ["createElement"]
      130 GETUPVAL                         R18 2
      131 DUPTABLE                         R19 K33 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      132 NEWCLOSURE                       R20 P3
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R20 R19 K32 ["onActivated"]
      136 GETUPVAL                         R20 1
      137 GETTABLEKS                       R20 R20 K4 ["createElement"]
      139 GETUPVAL                         R21 3
      140 DUPTABLE                         R22 K38 [{["tag"] = "auto-xy", ["Text"] = "B"}]
      141 CALL                             R20 2 -1
      142 CALL                             R17 -1 1
      143 GETUPVAL                         R18 1
      144 GETTABLEKS                       R18 R18 K4 ["createElement"]
      146 GETUPVAL                         R19 2
      147 DUPTABLE                         R20 K33 [{["tag"] = "size-full-0 auto-y padding-medium", ["onActivated"]}]
      148 NEWCLOSURE                       R21 P4
      149 CAPTURE                          VAL R4
      150 SETTABLEKS                       R21 R20 K32 ["onActivated"]
      152 GETUPVAL                         R21 1
      153 GETTABLEKS                       R21 R21 K4 ["createElement"]
      155 GETUPVAL                         R22 3
      156 DUPTABLE                         R23 K40 [{["tag"] = "auto-xy", ["Text"] = "C"}]
      157 CALL                             R21 2 -1
      158 CALL                             R18 -1 -1
      159 CALL                             R13 -1 -1
      160 CALL                             R10 -1 -1
      161 CALL                             R6 -1 -1
      162 RETURN                           R6 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{["uriScope"] = "BasicStory"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R6 R0 K5 ["controls"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["createElement"]
       16 GETUPVAL                         R8 3
       17 DUPTABLE                         R9 K10 [{["tag"] = "size-2000-2000 bg-system-default", ["Text"] = "text"}]
       18 CALL                             R7 2 -1
       19 CALL                             R4 -1 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{["uriScope"] = "SubmenuStory"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R6 R0 K5 ["controls"]
       13 CALL                             R4 2 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{["uriScope"] = "DropdownStory"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{["uriScope"] = "ContextMenuStory"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R6 R0 K5 ["controls"]
       13 CALL                             R4 2 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

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
      101 DUPTABLE                         R18 K30 [{["summary"] = "Menu", ["stories"], ["controls"]}]
      102 DUPTABLE                         R19 K35 [{"Basic", "Submenu", "Dropdown", "ContextMenu"}]
      103 DUPTABLE                         R20 K38 [{["name"] = "Basic", ["story"]}]
      104 DUPCLOSURE                       R21 K39 [PROTO_21]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R7
      109 SETTABLEKS                       R21 R20 K37 ["story"]
      111 SETTABLEKS                       R20 R19 K31 ["Basic"]
      113 DUPTABLE                         R20 K40 [{["name"] = "Submenu", ["story"]}]
      114 DUPCLOSURE                       R21 K41 [PROTO_22]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R15
      118 SETTABLEKS                       R21 R20 K37 ["story"]
      120 SETTABLEKS                       R20 R19 K32 ["Submenu"]
      122 DUPTABLE                         R20 K42 [{["name"] = "Dropdown", ["story"]}]
      123 DUPCLOSURE                       R21 K43 [PROTO_23]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R16
      127 SETTABLEKS                       R21 R20 K37 ["story"]
      129 SETTABLEKS                       R20 R19 K33 ["Dropdown"]
      131 DUPTABLE                         R20 K44 [{["name"] = "ContextMenu", ["story"]}]
      132 DUPCLOSURE                       R21 K45 [PROTO_24]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R17
      136 SETTABLEKS                       R21 R20 K37 ["story"]
      138 SETTABLEKS                       R20 R19 K34 ["ContextMenu"]
      140 SETTABLEKS                       R19 R18 K28 ["stories"]
      142 DUPTABLE                         R19 K48 [{"side", "align"}]
      143 GETTABLEKS                       R20 R3 K49 ["values"]
      145 MOVE                             R21 R8
      146 CALL                             R20 1 1
      147 SETTABLEKS                       R20 R19 K46 ["side"]
      149 GETTABLEKS                       R20 R3 K49 ["values"]
      151 MOVE                             R21 R9
      152 CALL                             R20 1 1
      153 SETTABLEKS                       R20 R19 K47 ["align"]
      155 SETTABLEKS                       R19 R18 K29 ["controls"]
      157 RETURN                           R18 1
