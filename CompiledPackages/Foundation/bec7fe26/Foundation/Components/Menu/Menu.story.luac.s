PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked but menu stays open"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 300
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 DUPTABLE                         R4 K9 [{"Menu"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K17 [{["isOpen"] = True, ["items"], ["size"], ["side"], ["align"], ["onActivated"]}]
       20 GETUPVAL                         R8 3
       21 SETTABLEKS                       R8 R7 K12 ["items"]
       23 GETTABLEKS                       R8 R0 K18 ["controls"]
       25 GETTABLEKS                       R8 R8 K13 ["size"]
       27 SETTABLEKS                       R8 R7 K13 ["size"]
       29 GETTABLEKS                       R8 R0 K18 ["controls"]
       31 GETTABLEKS                       R8 R8 K14 ["side"]
       33 SETTABLEKS                       R8 R7 K14 ["side"]
       35 GETTABLEKS                       R8 R0 K18 ["controls"]
       37 GETTABLEKS                       R8 R8 K15 ["align"]
       39 SETTABLEKS                       R8 R7 K15 ["align"]
       41 DUPCLOSURE                       R8 K19 [PROTO_0]
       42 SETTABLEKS                       R8 R7 K16 ["onActivated"]
       44 DUPTABLE                         R8 K21 [{"Button"}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K0 ["createElement"]
       48 GETUPVAL                         R10 4
       49 DUPTABLE                         R11 K24 [{["text"] = "Always Open Menu", ["size"], ["onActivated"]}]
       50 GETUPVAL                         R12 5
       51 GETTABLEKS                       R12 R12 K25 ["Medium"]
       53 SETTABLEKS                       R12 R11 K13 ["size"]
       55 DUPCLOSURE                       R12 K26 [PROTO_1]
       56 SETTABLEKS                       R12 R11 K16 ["onActivated"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K20 ["Button"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K8 ["Menu"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K5 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       10 GETIMPORT                        R6 K8 [UDim2.new]
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 100
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K2 ["Size"]
       19 DUPTABLE                         R6 K10 [{"Menu"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 2
       24 DUPTABLE                         R9 K18 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       25 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       27 GETUPVAL                         R10 3
       28 SETTABLEKS                       R10 R9 K12 ["items"]
       30 GETTABLEKS                       R10 R0 K19 ["controls"]
       32 GETTABLEKS                       R10 R10 K13 ["size"]
       34 SETTABLEKS                       R10 R9 K13 ["size"]
       36 GETTABLEKS                       R10 R0 K19 ["controls"]
       38 GETTABLEKS                       R10 R10 K14 ["side"]
       40 SETTABLEKS                       R10 R9 K14 ["side"]
       42 GETTABLEKS                       R10 R0 K19 ["controls"]
       44 GETTABLEKS                       R10 R10 K15 ["align"]
       46 SETTABLEKS                       R10 R9 K15 ["align"]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R10 R9 K16 ["onPressedOutside"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R10 R9 K17 ["onActivated"]
       56 DUPTABLE                         R10 K21 [{"Button"}]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K1 ["createElement"]
       60 GETUPVAL                         R12 4
       61 DUPTABLE                         R13 K24 [{["text"] = "Open Menu", ["size"], ["onActivated"]}]
       62 GETUPVAL                         R14 5
       63 GETTABLEKS                       R14 R14 K25 ["Medium"]
       65 SETTABLEKS                       R14 R13 K13 ["size"]
       67 NEWCLOSURE                       R14 P2
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R14 R13 K17 ["onActivated"]
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K20 ["Button"]
       75 CALL                             R7 3 1
       76 SETTABLEKS                       R7 R6 K9 ["Menu"]
       78 CALL                             R3 3 -1
       79 RETURN                           R3 -1

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"id", "text", "isChecked"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["text"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K0 ["id"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["isChecked"]
       18 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 GETUPVAL                         R5 1
        9 GETTABLEN                        R4 R5 1
       10 GETTABLEKS                       R4 R4 K1 ["id"]
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R3
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["createElement"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K7 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       31 GETIMPORT                        R9 K10 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 300
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K4 ["Size"]
       40 DUPTABLE                         R9 K12 [{"Menu"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K3 ["createElement"]
       44 GETUPVAL                         R11 4
       45 DUPTABLE                         R12 K20 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       46 SETTABLEKS                       R1 R12 K13 ["isOpen"]
       48 SETTABLEKS                       R5 R12 K14 ["items"]
       50 GETTABLEKS                       R13 R0 K21 ["controls"]
       52 GETTABLEKS                       R13 R13 K15 ["size"]
       54 SETTABLEKS                       R13 R12 K15 ["size"]
       56 GETTABLEKS                       R13 R0 K21 ["controls"]
       58 GETTABLEKS                       R13 R13 K16 ["side"]
       60 SETTABLEKS                       R13 R12 K16 ["side"]
       62 GETTABLEKS                       R13 R0 K21 ["controls"]
       64 GETTABLEKS                       R13 R13 K17 ["align"]
       66 SETTABLEKS                       R13 R12 K17 ["align"]
       68 NEWCLOSURE                       R13 P1
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R13 R12 K18 ["onPressedOutside"]
       72 NEWCLOSURE                       R13 P2
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       76 DUPTABLE                         R13 K23 [{"Button"}]
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K3 ["createElement"]
       80 GETUPVAL                         R15 5
       81 DUPTABLE                         R16 K26 [{["text"] = "Selection Menu", ["size"], ["onActivated"]}]
       82 GETUPVAL                         R17 6
       83 GETTABLEKS                       R17 R17 K27 ["Medium"]
       85 SETTABLEKS                       R17 R16 K15 ["size"]
       87 NEWCLOSURE                       R17 P3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R17 R16 K19 ["onActivated"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K22 ["Button"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K11 ["Menu"]
       98 CALL                             R6 3 -1
       99 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Button menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Card menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K5 [{["Size"], ["tag"] = "row align-x-center align-y-center gap-large"}]
       15 GETIMPORT                        R8 K8 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 LOADN                            R12 300
       21 CALL                             R8 4 1
       22 SETTABLEKS                       R8 R7 K2 ["Size"]
       24 DUPTABLE                         R8 K11 [{"ButtonMenu", "CardMenu"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K1 ["createElement"]
       28 GETUPVAL                         R10 2
       29 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       30 SETTABLEKS                       R1 R11 K12 ["isOpen"]
       32 GETUPVAL                         R12 3
       33 SETTABLEKS                       R12 R11 K13 ["items"]
       35 GETTABLEKS                       R12 R0 K20 ["controls"]
       37 GETTABLEKS                       R12 R12 K14 ["size"]
       39 SETTABLEKS                       R12 R11 K14 ["size"]
       41 GETTABLEKS                       R12 R0 K20 ["controls"]
       43 GETTABLEKS                       R12 R12 K15 ["side"]
       45 SETTABLEKS                       R12 R11 K15 ["side"]
       47 GETTABLEKS                       R12 R0 K20 ["controls"]
       49 GETTABLEKS                       R12 R12 K16 ["align"]
       51 SETTABLEKS                       R12 R11 K16 ["align"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
       57 NEWCLOSURE                       R12 P1
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R12 R11 K18 ["onActivated"]
       61 DUPTABLE                         R12 K22 [{"IconButton"}]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R13 R13 K1 ["createElement"]
       65 GETUPVAL                         R14 4
       66 DUPTABLE                         R15 K25 [{["icon"] = "icons/common/more", ["size"], ["onActivated"]}]
       67 GETUPVAL                         R16 5
       68 GETTABLEKS                       R16 R16 K26 ["Medium"]
       70 SETTABLEKS                       R16 R15 K14 ["size"]
       72 NEWCLOSURE                       R16 P2
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R16 R15 K18 ["onActivated"]
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K21 ["IconButton"]
       80 CALL                             R9 3 1
       81 SETTABLEKS                       R9 R8 K9 ["ButtonMenu"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K1 ["createElement"]
       86 GETUPVAL                         R10 2
       87 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       88 SETTABLEKS                       R3 R11 K12 ["isOpen"]
       90 GETUPVAL                         R12 3
       91 SETTABLEKS                       R12 R11 K13 ["items"]
       93 GETTABLEKS                       R12 R0 K20 ["controls"]
       95 GETTABLEKS                       R12 R12 K14 ["size"]
       97 SETTABLEKS                       R12 R11 K14 ["size"]
       99 GETTABLEKS                       R12 R0 K20 ["controls"]
      101 GETTABLEKS                       R12 R12 K15 ["side"]
      103 SETTABLEKS                       R12 R11 K15 ["side"]
      105 GETTABLEKS                       R12 R0 K20 ["controls"]
      107 GETTABLEKS                       R12 R12 K16 ["align"]
      109 SETTABLEKS                       R12 R11 K16 ["align"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
      115 NEWCLOSURE                       R12 P4
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R12 R11 K18 ["onActivated"]
      119 DUPTABLE                         R12 K28 [{"Card"}]
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K1 ["createElement"]
      123 GETUPVAL                         R14 1
      124 DUPTABLE                         R15 K30 [{["tag"] = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-medium", ["onActivated"]}]
      125 NEWCLOSURE                       R16 P5
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      130 DUPTABLE                         R16 K33 [{"Title", "Subtitle"}]
      131 GETUPVAL                         R17 0
      132 GETTABLEKS                       R17 R17 K1 ["createElement"]
      134 GETUPVAL                         R18 6
      135 DUPTABLE                         R19 K37 [{["Text"] = "Card with Menu", ["tag"] = "auto-xy text-heading-medium"}]
      136 CALL                             R17 2 1
      137 SETTABLEKS                       R17 R16 K31 ["Title"]
      139 GETUPVAL                         R17 0
      140 GETTABLEKS                       R17 R17 K1 ["createElement"]
      142 GETUPVAL                         R18 6
      143 DUPTABLE                         R19 K40 [{["Text"] = "Click me to open menu", ["tag"] = "auto-xy text-body-small"}]
      144 CALL                             R17 2 1
      145 SETTABLEKS                       R17 R16 K32 ["Subtitle"]
      147 CALL                             R13 3 1
      148 SETTABLEKS                       R13 R12 K27 ["Card"]
      150 CALL                             R9 3 1
      151 SETTABLEKS                       R9 R8 K10 ["CardMenu"]
      153 CALL                             R5 3 -1
      154 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K6 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 300
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K3 ["Size"]
       24 DUPTABLE                         R7 K12 [{"Anchor", "Menu"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K18 [{["text"] = "Anchor outside of the menu component", ["size"], ["ref"], ["onActivated"]}]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R11 R11 K19 ["Medium"]
       33 SETTABLEKS                       R11 R10 K15 ["size"]
       35 SETTABLEKS                       R1 R10 K16 ["ref"]
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K10 ["Anchor"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K2 ["createElement"]
       47 GETUPVAL                         R9 4
       48 DUPTABLE                         R10 K26 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated", "anchorRef"}]
       49 SETTABLEKS                       R2 R10 K20 ["isOpen"]
       51 GETUPVAL                         R11 5
       52 SETTABLEKS                       R11 R10 K21 ["items"]
       54 GETTABLEKS                       R11 R0 K27 ["controls"]
       56 GETTABLEKS                       R11 R11 K15 ["size"]
       58 SETTABLEKS                       R11 R10 K15 ["size"]
       60 GETTABLEKS                       R11 R0 K27 ["controls"]
       62 GETTABLEKS                       R11 R11 K22 ["side"]
       64 SETTABLEKS                       R11 R10 K22 ["side"]
       66 GETTABLEKS                       R11 R0 K27 ["controls"]
       68 GETTABLEKS                       R11 R11 K23 ["align"]
       70 SETTABLEKS                       R11 R10 K23 ["align"]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R11 R10 K24 ["onPressedOutside"]
       76 DUPCLOSURE                       R11 K28 [PROTO_22]
       77 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       79 SETTABLEKS                       R1 R10 K25 ["anchorRef"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K11 ["Menu"]
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADK                            R4 K1 ["a1"]
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 3
       12 DUPTABLE                         R6 K5 [{["title"] = "First title", ["items"]}]
       13 NEWTABLE                         R7 0 2
       15 DUPTABLE                         R8 K12 [{["id"] = "a1", ["icon"] = "icons/common/robux", ["text"] = "Alpha 1", ["isChecked"]}]
       16 JUMPIFEQKS                       R3 K1 ["a1"] ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 SETTABLEKS                       R9 R8 K11 ["isChecked"]
       22 DUPTABLE                         R9 K15 [{["id"] = "a2", ["text"] = "Alpha 2", ["isChecked"]}]
       23 JUMPIFEQKS                       R3 K13 ["a2"] ; [+2]
       25 LOADB                            R10 0 +1
       26 LOADB                            R10 1
       27 SETTABLEKS                       R10 R9 K11 ["isChecked"]
       29 SETLIST                          R7 R8 2 [1]
       31 SETTABLEKS                       R7 R6 K4 ["items"]
       33 DUPTABLE                         R7 K16 [{"items"}]
       34 NEWTABLE                         R8 0 2
       36 DUPTABLE                         R9 K19 [{["id"] = "b1", ["text"] = "Beta 1", ["isChecked"]}]
       37 JUMPIFEQKS                       R3 K17 ["b1"] ; [+2]
       39 LOADB                            R10 0 +1
       40 LOADB                            R10 1
       41 SETTABLEKS                       R10 R9 K11 ["isChecked"]
       43 DUPTABLE                         R10 K24 [{["id"] = "b2", ["isDisabled"] = True, ["text"] = "Beta 2 (disabled)", ["isChecked"]}]
       44 JUMPIFEQKS                       R3 K20 ["b2"] ; [+2]
       46 LOADB                            R11 0 +1
       47 LOADB                            R11 1
       48 SETTABLEKS                       R11 R10 K11 ["isChecked"]
       50 SETLIST                          R8 R9 2 [1]
       52 SETTABLEKS                       R8 R7 K4 ["items"]
       54 DUPTABLE                         R8 K16 [{"items"}]
       55 NEWTABLE                         R9 0 1
       57 DUPTABLE                         R10 K27 [{["id"] = "c1", ["text"] = "Untitled group item", ["isChecked"]}]
       58 JUMPIFEQKS                       R3 K25 ["c1"] ; [+2]
       60 LOADB                            R11 0 +1
       61 LOADB                            R11 1
       62 SETTABLEKS                       R11 R10 K11 ["isChecked"]
       64 SETLIST                          R9 R10 1 [1]
       66 SETTABLEKS                       R9 R8 K4 ["items"]
       68 SETLIST                          R5 R6 3 [1]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K28 ["createElement"]
       73 GETUPVAL                         R7 1
       74 DUPTABLE                         R8 K32 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       75 GETIMPORT                        R9 K35 [UDim2.new]
       77 LOADN                            R10 1
       78 LOADN                            R11 0
       79 LOADN                            R12 0
       80 LOADN                            R13 100
       81 CALL                             R9 4 1
       82 SETTABLEKS                       R9 R8 K29 ["Size"]
       84 DUPTABLE                         R9 K37 [{"Menu"}]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K28 ["createElement"]
       88 GETUPVAL                         R11 2
       89 DUPTABLE                         R12 K44 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       90 SETTABLEKS                       R1 R12 K38 ["isOpen"]
       92 SETTABLEKS                       R5 R12 K4 ["items"]
       94 GETTABLEKS                       R13 R0 K45 ["controls"]
       96 GETTABLEKS                       R13 R13 K39 ["size"]
       98 SETTABLEKS                       R13 R12 K39 ["size"]
      100 GETTABLEKS                       R13 R0 K45 ["controls"]
      102 GETTABLEKS                       R13 R13 K40 ["side"]
      104 SETTABLEKS                       R13 R12 K40 ["side"]
      106 GETTABLEKS                       R13 R0 K45 ["controls"]
      108 GETTABLEKS                       R13 R13 K41 ["align"]
      110 SETTABLEKS                       R13 R12 K41 ["align"]
      112 NEWCLOSURE                       R13 P0
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R13 R12 K42 ["onPressedOutside"]
      116 NEWCLOSURE                       R13 P1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R13 R12 K43 ["onActivated"]
      121 DUPTABLE                         R13 K47 [{"Button"}]
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R14 R14 K28 ["createElement"]
      125 GETUPVAL                         R15 3
      126 DUPTABLE                         R16 K49 [{["text"] = "Open Menu", ["size"], ["onActivated"]}]
      127 GETUPVAL                         R17 4
      128 GETTABLEKS                       R17 R17 K50 ["Medium"]
      130 SETTABLEKS                       R17 R16 K39 ["size"]
      132 NEWCLOSURE                       R17 P2
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R17 R16 K43 ["onActivated"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K46 ["Button"]
      140 CALL                             R10 3 1
      141 SETTABLEKS                       R10 R9 K36 ["Menu"]
      143 CALL                             R6 3 -1
      144 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Menu"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Button"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["IconSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K15 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Enums"]
       72 GETTABLEKS                       R12 R12 K18 ["PopoverSide"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K15 ["Enums"]
       79 GETTABLEKS                       R13 R13 K19 ["PopoverAlign"]
       81 CALL                             R12 1 1
       82 NEWTABLE                         R13 0 4
       84 DUPTABLE                         R14 K26 [{["id"] = "new", ["icon"] = "icons/actions/edit/add", ["text"] = "New"}]
       85 DUPTABLE                         R15 K30 [{["id"] = "edit", ["icon"] = "icons/actions/edit/edit", ["text"] = "Edit"}]
       86 DUPTABLE                         R16 K34 [{["id"] = "copy", ["icon"] = "icons/actions/edit/copy", ["text"] = "Copy"}]
       87 DUPTABLE                         R17 K40 [{["id"] = "delete", ["icon"] = "icons/actions/edit/delete", ["text"] = "Delete", ["isDisabled"] = True}]
       88 SETLIST                          R13 R14 4 [1]
       90 NEWTABLE                         R14 0 3
       92 DUPTABLE                         R15 K43 [{["id"] = "r15", ["text"] = "R15 Only"}]
       93 DUPTABLE                         R16 K46 [{["id"] = "r6", ["text"] = "R6 Only"}]
       94 DUPTABLE                         R17 K49 [{["id"] = "choice", ["text"] = "Player Choice"}]
       95 SETLIST                          R14 R15 3 [1]
       97 DUPTABLE                         R15 K54 [{["summary"] = "Menu - A popover-based menu component that combines Popover with InternalMenu", ["stories"], ["controls"]}]
       98 NEWTABLE                         R16 0 6
      100 DUPTABLE                         R17 K58 [{["name"] = "Always Open", ["story"]}]
      101 DUPCLOSURE                       R18 K59 [PROTO_2]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R10
      108 SETTABLEKS                       R18 R17 K57 ["story"]
      110 DUPTABLE                         R18 K61 [{["name"] = "Basic Menu", ["story"]}]
      111 DUPCLOSURE                       R19 K62 [PROTO_6]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R10
      118 SETTABLEKS                       R19 R18 K57 ["story"]
      120 DUPTABLE                         R19 K64 [{["name"] = "Selection Menu", ["story"]}]
      121 DUPCLOSURE                       R20 K65 [PROTO_12]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R10
      129 SETTABLEKS                       R20 R19 K57 ["story"]
      131 DUPTABLE                         R20 K67 [{["name"] = "Different Anchors", ["story"]}]
      132 DUPCLOSURE                       R21 K68 [PROTO_19]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R8
      140 SETTABLEKS                       R21 R20 K57 ["story"]
      142 DUPTABLE                         R21 K70 [{["name"] = "Reference anchor", ["story"]}]
      143 DUPCLOSURE                       R22 K71 [PROTO_23]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R13
      150 SETTABLEKS                       R22 R21 K57 ["story"]
      152 DUPTABLE                         R22 K73 [{["name"] = "Grouped", ["story"]}]
      153 DUPCLOSURE                       R23 K74 [PROTO_27]
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R10
      159 SETTABLEKS                       R23 R22 K57 ["story"]
      161 SETLIST                          R16 R17 6 [1]
      163 SETTABLEKS                       R16 R15 K52 ["stories"]
      165 DUPTABLE                         R16 K78 [{"size", "side", "align"}]
      166 GETTABLEKS                       R17 R3 K79 ["values"]
      168 MOVE                             R18 R10
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K75 ["size"]
      172 NEWTABLE                         R17 0 4
      174 GETTABLEKS                       R18 R11 K80 ["Bottom"]
      176 GETTABLEKS                       R19 R11 K81 ["Top"]
      178 GETTABLEKS                       R20 R11 K82 ["Left"]
      180 GETTABLEKS                       R21 R11 K83 ["Right"]
      182 SETLIST                          R17 R18 4 [1]
      184 SETTABLEKS                       R17 R16 K76 ["side"]
      186 GETTABLEKS                       R17 R3 K79 ["values"]
      188 MOVE                             R18 R12
      189 CALL                             R17 1 1
      190 SETTABLEKS                       R17 R16 K77 ["align"]
      192 SETTABLEKS                       R16 R15 K53 ["controls"]
      194 RETURN                           R15 1
