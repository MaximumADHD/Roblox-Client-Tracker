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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "tag"}]
        5 GETIMPORT                        R4 K6 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 44
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADK                            R4 K7 ["row align-x-center align-y-center"]
       15 SETTABLEKS                       R4 R3 K2 ["tag"]
       17 DUPTABLE                         R4 K9 [{"Menu"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K16 [{"isOpen", "items", "size", "side", "align", "onActivated"}]
       23 LOADB                            R8 1
       24 SETTABLEKS                       R8 R7 K10 ["isOpen"]
       26 GETUPVAL                         R8 3
       27 SETTABLEKS                       R8 R7 K11 ["items"]
       29 GETTABLEKS                       R9 R0 K17 ["controls"]
       31 GETTABLEKS                       R8 R9 K12 ["size"]
       33 SETTABLEKS                       R8 R7 K12 ["size"]
       35 GETTABLEKS                       R9 R0 K17 ["controls"]
       37 GETTABLEKS                       R8 R9 K13 ["side"]
       39 SETTABLEKS                       R8 R7 K13 ["side"]
       41 GETTABLEKS                       R9 R0 K17 ["controls"]
       43 GETTABLEKS                       R8 R9 K14 ["align"]
       45 SETTABLEKS                       R8 R7 K14 ["align"]
       47 DUPCLOSURE                       R8 K18 [PROTO_0]
       48 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       50 DUPTABLE                         R8 K20 [{"Button"}]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R9 R10 K0 ["createElement"]
       54 GETUPVAL                         R10 4
       55 DUPTABLE                         R11 K22 [{"text", "size", "onActivated"}]
       56 LOADK                            R12 K23 ["Always Open Menu"]
       57 SETTABLEKS                       R12 R11 K21 ["text"]
       59 GETUPVAL                         R13 5
       60 GETTABLEKS                       R12 R13 K24 ["Medium"]
       62 SETTABLEKS                       R12 R11 K12 ["size"]
       64 DUPCLOSURE                       R12 K25 [PROTO_1]
       65 SETTABLEKS                       R12 R11 K15 ["onActivated"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K19 ["Button"]
       70 CALL                             R5 3 1
       71 SETTABLEKS                       R5 R4 K8 ["Menu"]
       73 CALL                             R1 3 -1
       74 RETURN                           R1 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K4 [{"Size", "tag"}]
       10 GETIMPORT                        R6 K7 [UDim2.new]
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 100
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K2 ["Size"]
       19 LOADK                            R6 K8 ["row align-x-center align-y-center"]
       20 SETTABLEKS                       R6 R5 K3 ["tag"]
       22 DUPTABLE                         R6 K10 [{"Menu"}]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K1 ["createElement"]
       26 GETUPVAL                         R8 2
       27 DUPTABLE                         R9 K18 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       28 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       30 GETUPVAL                         R10 3
       31 SETTABLEKS                       R10 R9 K12 ["items"]
       33 GETTABLEKS                       R11 R0 K19 ["controls"]
       35 GETTABLEKS                       R10 R11 K13 ["size"]
       37 SETTABLEKS                       R10 R9 K13 ["size"]
       39 GETTABLEKS                       R11 R0 K19 ["controls"]
       41 GETTABLEKS                       R10 R11 K14 ["side"]
       43 SETTABLEKS                       R10 R9 K14 ["side"]
       45 GETTABLEKS                       R11 R0 K19 ["controls"]
       47 GETTABLEKS                       R10 R11 K15 ["align"]
       49 SETTABLEKS                       R10 R9 K15 ["align"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R10 R9 K16 ["onPressedOutside"]
       55 NEWCLOSURE                       R10 P1
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R10 R9 K17 ["onActivated"]
       59 DUPTABLE                         R10 K21 [{"Button"}]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R11 R12 K1 ["createElement"]
       63 GETUPVAL                         R12 4
       64 DUPTABLE                         R13 K23 [{"text", "size", "onActivated"}]
       65 LOADK                            R14 K24 ["Open Menu"]
       66 SETTABLEKS                       R14 R13 K22 ["text"]
       68 GETUPVAL                         R15 5
       69 GETTABLEKS                       R14 R15 K25 ["Medium"]
       71 SETTABLEKS                       R14 R13 K13 ["size"]
       73 NEWCLOSURE                       R14 P2
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R14 R13 K17 ["onActivated"]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K20 ["Button"]
       81 CALL                             R7 3 1
       82 SETTABLEKS                       R7 R6 K9 ["Menu"]
       84 CALL                             R3 3 -1
       85 RETURN                           R3 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["map"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 GETUPVAL                         R6 1
        9 GETTABLEN                        R5 R6 1
       10 GETTABLEKS                       R4 R5 K1 ["id"]
       12 CALL                             R3 1 2
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R3
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K3 ["createElement"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K6 [{"Size", "tag"}]
       31 GETIMPORT                        R9 K9 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 44
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K4 ["Size"]
       40 LOADK                            R9 K10 ["row align-x-center align-y-center"]
       41 SETTABLEKS                       R9 R8 K5 ["tag"]
       43 DUPTABLE                         R9 K12 [{"Menu"}]
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R10 R11 K3 ["createElement"]
       47 GETUPVAL                         R11 4
       48 DUPTABLE                         R12 K20 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       49 SETTABLEKS                       R1 R12 K13 ["isOpen"]
       51 SETTABLEKS                       R5 R12 K14 ["items"]
       53 GETTABLEKS                       R14 R0 K21 ["controls"]
       55 GETTABLEKS                       R13 R14 K15 ["size"]
       57 SETTABLEKS                       R13 R12 K15 ["size"]
       59 GETTABLEKS                       R14 R0 K21 ["controls"]
       61 GETTABLEKS                       R13 R14 K16 ["side"]
       63 SETTABLEKS                       R13 R12 K16 ["side"]
       65 GETTABLEKS                       R14 R0 K21 ["controls"]
       67 GETTABLEKS                       R13 R14 K17 ["align"]
       69 SETTABLEKS                       R13 R12 K17 ["align"]
       71 NEWCLOSURE                       R13 P1
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R13 R12 K18 ["onPressedOutside"]
       75 NEWCLOSURE                       R13 P2
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       79 DUPTABLE                         R13 K23 [{"Button"}]
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R14 R15 K3 ["createElement"]
       83 GETUPVAL                         R15 5
       84 DUPTABLE                         R16 K25 [{"text", "size", "onActivated"}]
       85 LOADK                            R17 K26 ["Selection Menu"]
       86 SETTABLEKS                       R17 R16 K24 ["text"]
       88 GETUPVAL                         R18 6
       89 GETTABLEKS                       R17 R18 K27 ["Medium"]
       91 SETTABLEKS                       R17 R16 K15 ["size"]
       93 NEWCLOSURE                       R17 P3
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R17 R16 K19 ["onActivated"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K22 ["Button"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K11 ["Menu"]
      104 CALL                             R6 3 -1
      105 RETURN                           R6 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K1 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K4 [{"Size", "tag"}]
       15 GETIMPORT                        R8 K7 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 LOADN                            R12 44
       21 CALL                             R8 4 1
       22 SETTABLEKS                       R8 R7 K2 ["Size"]
       24 LOADK                            R8 K8 ["row align-x-center align-y-center gap-large"]
       25 SETTABLEKS                       R8 R7 K3 ["tag"]
       27 DUPTABLE                         R8 K11 [{"ButtonMenu", "CardMenu"}]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K1 ["createElement"]
       31 GETUPVAL                         R10 2
       32 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       33 SETTABLEKS                       R1 R11 K12 ["isOpen"]
       35 GETUPVAL                         R12 3
       36 SETTABLEKS                       R12 R11 K13 ["items"]
       38 GETTABLEKS                       R13 R0 K20 ["controls"]
       40 GETTABLEKS                       R12 R13 K14 ["size"]
       42 SETTABLEKS                       R12 R11 K14 ["size"]
       44 GETTABLEKS                       R13 R0 K20 ["controls"]
       46 GETTABLEKS                       R12 R13 K15 ["side"]
       48 SETTABLEKS                       R12 R11 K15 ["side"]
       50 GETTABLEKS                       R13 R0 K20 ["controls"]
       52 GETTABLEKS                       R12 R13 K16 ["align"]
       54 SETTABLEKS                       R12 R11 K16 ["align"]
       56 NEWCLOSURE                       R12 P0
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R12 R11 K18 ["onActivated"]
       64 DUPTABLE                         R12 K22 [{"IconButton"}]
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R13 R14 K1 ["createElement"]
       68 GETUPVAL                         R14 4
       69 DUPTABLE                         R15 K24 [{"icon", "size", "onActivated"}]
       70 LOADK                            R16 K25 ["icons/common/more"]
       71 SETTABLEKS                       R16 R15 K23 ["icon"]
       73 GETUPVAL                         R17 5
       74 GETTABLEKS                       R16 R17 K26 ["Medium"]
       76 SETTABLEKS                       R16 R15 K14 ["size"]
       78 NEWCLOSURE                       R16 P2
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R16 R15 K18 ["onActivated"]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K21 ["IconButton"]
       86 CALL                             R9 3 1
       87 SETTABLEKS                       R9 R8 K9 ["ButtonMenu"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K1 ["createElement"]
       92 GETUPVAL                         R10 2
       93 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       94 SETTABLEKS                       R3 R11 K12 ["isOpen"]
       96 GETUPVAL                         R12 3
       97 SETTABLEKS                       R12 R11 K13 ["items"]
       99 GETTABLEKS                       R13 R0 K20 ["controls"]
      101 GETTABLEKS                       R12 R13 K14 ["size"]
      103 SETTABLEKS                       R12 R11 K14 ["size"]
      105 GETTABLEKS                       R13 R0 K20 ["controls"]
      107 GETTABLEKS                       R12 R13 K15 ["side"]
      109 SETTABLEKS                       R12 R11 K15 ["side"]
      111 GETTABLEKS                       R13 R0 K20 ["controls"]
      113 GETTABLEKS                       R12 R13 K16 ["align"]
      115 SETTABLEKS                       R12 R11 K16 ["align"]
      117 NEWCLOSURE                       R12 P3
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
      121 NEWCLOSURE                       R12 P4
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R12 R11 K18 ["onActivated"]
      125 DUPTABLE                         R12 K28 [{"Card"}]
      126 GETUPVAL                         R14 0
      127 GETTABLEKS                       R13 R14 K1 ["createElement"]
      129 GETUPVAL                         R14 1
      130 DUPTABLE                         R15 K29 [{"tag", "onActivated"}]
      131 LOADK                            R16 K30 ["bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-medium"]
      132 SETTABLEKS                       R16 R15 K3 ["tag"]
      134 NEWCLOSURE                       R16 P5
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      139 DUPTABLE                         R16 K33 [{"Title", "Subtitle"}]
      140 GETUPVAL                         R18 0
      141 GETTABLEKS                       R17 R18 K1 ["createElement"]
      143 GETUPVAL                         R18 6
      144 DUPTABLE                         R19 K35 [{"Text", "tag"}]
      145 LOADK                            R20 K36 ["Card with Menu"]
      146 SETTABLEKS                       R20 R19 K34 ["Text"]
      148 LOADK                            R20 K37 ["auto-xy text-heading-medium"]
      149 SETTABLEKS                       R20 R19 K3 ["tag"]
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K31 ["Title"]
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R17 R18 K1 ["createElement"]
      157 GETUPVAL                         R18 6
      158 DUPTABLE                         R19 K35 [{"Text", "tag"}]
      159 LOADK                            R20 K38 ["Click me to open menu"]
      160 SETTABLEKS                       R20 R19 K34 ["Text"]
      162 LOADK                            R20 K39 ["auto-xy text-body-small"]
      163 SETTABLEKS                       R20 R19 K3 ["tag"]
      165 CALL                             R17 2 1
      166 SETTABLEKS                       R17 R16 K32 ["Subtitle"]
      168 CALL                             R13 3 1
      169 SETTABLEKS                       R13 R12 K27 ["Card"]
      171 CALL                             R9 3 1
      172 SETTABLEKS                       R9 R8 K10 ["CardMenu"]
      174 CALL                             R5 3 -1
      175 RETURN                           R5 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K5 [{"Size", "tag"}]
       15 GETIMPORT                        R7 K8 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 44
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K3 ["Size"]
       24 LOADK                            R7 K9 ["row align-x-center align-y-center"]
       25 SETTABLEKS                       R7 R6 K4 ["tag"]
       27 DUPTABLE                         R7 K12 [{"Anchor", "Menu"}]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K2 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K17 [{"text", "size", "ref", "onActivated"}]
       33 LOADK                            R11 K18 ["Anchor outside of the menu component"]
       34 SETTABLEKS                       R11 R10 K13 ["text"]
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R11 R12 K19 ["Medium"]
       39 SETTABLEKS                       R11 R10 K14 ["size"]
       41 SETTABLEKS                       R1 R10 K15 ["ref"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K10 ["Anchor"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K2 ["createElement"]
       53 GETUPVAL                         R9 4
       54 DUPTABLE                         R10 K26 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated", "anchorRef"}]
       55 SETTABLEKS                       R2 R10 K20 ["isOpen"]
       57 GETUPVAL                         R11 5
       58 SETTABLEKS                       R11 R10 K21 ["items"]
       60 GETTABLEKS                       R12 R0 K27 ["controls"]
       62 GETTABLEKS                       R11 R12 K14 ["size"]
       64 SETTABLEKS                       R11 R10 K14 ["size"]
       66 GETTABLEKS                       R12 R0 K27 ["controls"]
       68 GETTABLEKS                       R11 R12 K22 ["side"]
       70 SETTABLEKS                       R11 R10 K22 ["side"]
       72 GETTABLEKS                       R12 R0 K27 ["controls"]
       74 GETTABLEKS                       R11 R12 K23 ["align"]
       76 SETTABLEKS                       R11 R10 K23 ["align"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R11 R10 K24 ["onPressedOutside"]
       82 DUPCLOSURE                       R11 K28 [PROTO_22]
       83 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       85 SETTABLEKS                       R1 R10 K25 ["anchorRef"]
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K11 ["Menu"]
       90 CALL                             R4 3 -1
       91 RETURN                           R4 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADK                            R4 K1 ["a1"]
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 3
       12 DUPTABLE                         R6 K4 [{"title", "items"}]
       13 LOADK                            R7 K5 ["First title"]
       14 SETTABLEKS                       R7 R6 K2 ["title"]
       16 NEWTABLE                         R7 0 2
       18 DUPTABLE                         R8 K10 [{"id", "icon", "text", "isChecked"}]
       19 LOADK                            R9 K1 ["a1"]
       20 SETTABLEKS                       R9 R8 K6 ["id"]
       22 LOADK                            R9 K11 ["icons/common/robux"]
       23 SETTABLEKS                       R9 R8 K7 ["icon"]
       25 LOADK                            R9 K12 ["Alpha 1"]
       26 SETTABLEKS                       R9 R8 K8 ["text"]
       28 JUMPIFEQKS                       R3 K1 ["a1"] ; [+2]
       30 LOADB                            R9 0 +1
       31 LOADB                            R9 1
       32 SETTABLEKS                       R9 R8 K9 ["isChecked"]
       34 DUPTABLE                         R9 K13 [{"id", "text", "isChecked"}]
       35 LOADK                            R10 K14 ["a2"]
       36 SETTABLEKS                       R10 R9 K6 ["id"]
       38 LOADK                            R10 K15 ["Alpha 2"]
       39 SETTABLEKS                       R10 R9 K8 ["text"]
       41 JUMPIFEQKS                       R3 K14 ["a2"] ; [+2]
       43 LOADB                            R10 0 +1
       44 LOADB                            R10 1
       45 SETTABLEKS                       R10 R9 K9 ["isChecked"]
       47 SETLIST                          R7 R8 2 [1]
       49 SETTABLEKS                       R7 R6 K3 ["items"]
       51 DUPTABLE                         R7 K16 [{"items"}]
       52 NEWTABLE                         R8 0 2
       54 DUPTABLE                         R9 K13 [{"id", "text", "isChecked"}]
       55 LOADK                            R10 K17 ["b1"]
       56 SETTABLEKS                       R10 R9 K6 ["id"]
       58 LOADK                            R10 K18 ["Beta 1"]
       59 SETTABLEKS                       R10 R9 K8 ["text"]
       61 JUMPIFEQKS                       R3 K17 ["b1"] ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K9 ["isChecked"]
       67 DUPTABLE                         R10 K20 [{"id", "isDisabled", "text", "isChecked"}]
       68 LOADK                            R11 K21 ["b2"]
       69 SETTABLEKS                       R11 R10 K6 ["id"]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K19 ["isDisabled"]
       74 LOADK                            R11 K22 ["Beta 2 (disabled)"]
       75 SETTABLEKS                       R11 R10 K8 ["text"]
       77 JUMPIFEQKS                       R3 K21 ["b2"] ; [+2]
       79 LOADB                            R11 0 +1
       80 LOADB                            R11 1
       81 SETTABLEKS                       R11 R10 K9 ["isChecked"]
       83 SETLIST                          R8 R9 2 [1]
       85 SETTABLEKS                       R8 R7 K3 ["items"]
       87 DUPTABLE                         R8 K16 [{"items"}]
       88 NEWTABLE                         R9 0 1
       90 DUPTABLE                         R10 K13 [{"id", "text", "isChecked"}]
       91 LOADK                            R11 K23 ["c1"]
       92 SETTABLEKS                       R11 R10 K6 ["id"]
       94 LOADK                            R11 K24 ["Untitled group item"]
       95 SETTABLEKS                       R11 R10 K8 ["text"]
       97 JUMPIFEQKS                       R3 K23 ["c1"] ; [+2]
       99 LOADB                            R11 0 +1
      100 LOADB                            R11 1
      101 SETTABLEKS                       R11 R10 K9 ["isChecked"]
      103 SETLIST                          R9 R10 1 [1]
      105 SETTABLEKS                       R9 R8 K3 ["items"]
      107 SETLIST                          R5 R6 3 [1]
      109 GETUPVAL                         R7 0
      110 GETTABLEKS                       R6 R7 K25 ["createElement"]
      112 GETUPVAL                         R7 1
      113 DUPTABLE                         R8 K28 [{"Size", "tag"}]
      114 GETIMPORT                        R9 K31 [UDim2.new]
      116 LOADN                            R10 1
      117 LOADN                            R11 0
      118 LOADN                            R12 0
      119 LOADN                            R13 100
      120 CALL                             R9 4 1
      121 SETTABLEKS                       R9 R8 K26 ["Size"]
      123 LOADK                            R9 K32 ["row align-x-center align-y-center"]
      124 SETTABLEKS                       R9 R8 K27 ["tag"]
      126 DUPTABLE                         R9 K34 [{"Menu"}]
      127 GETUPVAL                         R11 0
      128 GETTABLEKS                       R10 R11 K25 ["createElement"]
      130 GETUPVAL                         R11 2
      131 DUPTABLE                         R12 K41 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      132 SETTABLEKS                       R1 R12 K35 ["isOpen"]
      134 SETTABLEKS                       R5 R12 K3 ["items"]
      136 GETTABLEKS                       R14 R0 K42 ["controls"]
      138 GETTABLEKS                       R13 R14 K36 ["size"]
      140 SETTABLEKS                       R13 R12 K36 ["size"]
      142 GETTABLEKS                       R14 R0 K42 ["controls"]
      144 GETTABLEKS                       R13 R14 K37 ["side"]
      146 SETTABLEKS                       R13 R12 K37 ["side"]
      148 GETTABLEKS                       R14 R0 K42 ["controls"]
      150 GETTABLEKS                       R13 R14 K38 ["align"]
      152 SETTABLEKS                       R13 R12 K38 ["align"]
      154 NEWCLOSURE                       R13 P0
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R13 R12 K39 ["onPressedOutside"]
      158 NEWCLOSURE                       R13 P1
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      163 DUPTABLE                         R13 K44 [{"Button"}]
      164 GETUPVAL                         R15 0
      165 GETTABLEKS                       R14 R15 K25 ["createElement"]
      167 GETUPVAL                         R15 3
      168 DUPTABLE                         R16 K45 [{"text", "size", "onActivated"}]
      169 LOADK                            R17 K46 ["Open Menu"]
      170 SETTABLEKS                       R17 R16 K8 ["text"]
      172 GETUPVAL                         R18 4
      173 GETTABLEKS                       R17 R18 K47 ["Medium"]
      175 SETTABLEKS                       R17 R16 K36 ["size"]
      177 NEWCLOSURE                       R17 P2
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R1
      180 SETTABLEKS                       R17 R16 K40 ["onActivated"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K43 ["Button"]
      185 CALL                             R10 3 1
      186 SETTABLEKS                       R10 R9 K33 ["Menu"]
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Menu"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Button"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K14 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Enums"]
       58 GETTABLEKS                       R10 R11 K16 ["IconSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K15 ["Enums"]
       65 GETTABLEKS                       R11 R12 K17 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K15 ["Enums"]
       72 GETTABLEKS                       R12 R13 K18 ["PopoverSide"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K15 ["Enums"]
       79 GETTABLEKS                       R13 R14 K19 ["PopoverAlign"]
       81 CALL                             R12 1 1
       82 NEWTABLE                         R13 0 4
       84 DUPTABLE                         R14 K23 [{"id", "icon", "text"}]
       85 LOADK                            R15 K24 ["new"]
       86 SETTABLEKS                       R15 R14 K20 ["id"]
       88 LOADK                            R15 K25 ["icons/actions/edit/add"]
       89 SETTABLEKS                       R15 R14 K21 ["icon"]
       91 LOADK                            R15 K26 ["New"]
       92 SETTABLEKS                       R15 R14 K22 ["text"]
       94 DUPTABLE                         R15 K23 [{"id", "icon", "text"}]
       95 LOADK                            R16 K27 ["edit"]
       96 SETTABLEKS                       R16 R15 K20 ["id"]
       98 LOADK                            R16 K28 ["icons/actions/edit/edit"]
       99 SETTABLEKS                       R16 R15 K21 ["icon"]
      101 LOADK                            R16 K29 ["Edit"]
      102 SETTABLEKS                       R16 R15 K22 ["text"]
      104 DUPTABLE                         R16 K23 [{"id", "icon", "text"}]
      105 LOADK                            R17 K30 ["copy"]
      106 SETTABLEKS                       R17 R16 K20 ["id"]
      108 LOADK                            R17 K31 ["icons/actions/edit/copy"]
      109 SETTABLEKS                       R17 R16 K21 ["icon"]
      111 LOADK                            R17 K32 ["Copy"]
      112 SETTABLEKS                       R17 R16 K22 ["text"]
      114 DUPTABLE                         R17 K34 [{"id", "icon", "text", "isDisabled"}]
      115 LOADK                            R18 K35 ["delete"]
      116 SETTABLEKS                       R18 R17 K20 ["id"]
      118 LOADK                            R18 K36 ["icons/actions/edit/delete"]
      119 SETTABLEKS                       R18 R17 K21 ["icon"]
      121 LOADK                            R18 K37 ["Delete"]
      122 SETTABLEKS                       R18 R17 K22 ["text"]
      124 LOADB                            R18 1
      125 SETTABLEKS                       R18 R17 K33 ["isDisabled"]
      127 SETLIST                          R13 R14 4 [1]
      129 NEWTABLE                         R14 0 3
      131 DUPTABLE                         R15 K38 [{"id", "text"}]
      132 LOADK                            R16 K39 ["r15"]
      133 SETTABLEKS                       R16 R15 K20 ["id"]
      135 LOADK                            R16 K40 ["R15 Only"]
      136 SETTABLEKS                       R16 R15 K22 ["text"]
      138 DUPTABLE                         R16 K38 [{"id", "text"}]
      139 LOADK                            R17 K41 ["r6"]
      140 SETTABLEKS                       R17 R16 K20 ["id"]
      142 LOADK                            R17 K42 ["R6 Only"]
      143 SETTABLEKS                       R17 R16 K22 ["text"]
      145 DUPTABLE                         R17 K38 [{"id", "text"}]
      146 LOADK                            R18 K43 ["choice"]
      147 SETTABLEKS                       R18 R17 K20 ["id"]
      149 LOADK                            R18 K44 ["Player Choice"]
      150 SETTABLEKS                       R18 R17 K22 ["text"]
      152 SETLIST                          R14 R15 3 [1]
      154 DUPTABLE                         R15 K48 [{"summary", "stories", "controls"}]
      155 LOADK                            R16 K49 ["Menu - A popover-based menu component that combines Popover with InternalMenu"]
      156 SETTABLEKS                       R16 R15 K45 ["summary"]
      158 NEWTABLE                         R16 0 6
      160 DUPTABLE                         R17 K52 [{"name", "story"}]
      161 LOADK                            R18 K53 ["Always Open"]
      162 SETTABLEKS                       R18 R17 K50 ["name"]
      164 DUPCLOSURE                       R18 K54 [PROTO_2]
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R10
      171 SETTABLEKS                       R18 R17 K51 ["story"]
      173 DUPTABLE                         R18 K52 [{"name", "story"}]
      174 LOADK                            R19 K55 ["Basic Menu"]
      175 SETTABLEKS                       R19 R18 K50 ["name"]
      177 DUPCLOSURE                       R19 K56 [PROTO_6]
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R10
      184 SETTABLEKS                       R19 R18 K51 ["story"]
      186 DUPTABLE                         R19 K52 [{"name", "story"}]
      187 LOADK                            R20 K57 ["Selection Menu"]
      188 SETTABLEKS                       R20 R19 K50 ["name"]
      190 DUPCLOSURE                       R20 K58 [PROTO_12]
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R10
      198 SETTABLEKS                       R20 R19 K51 ["story"]
      200 DUPTABLE                         R20 K52 [{"name", "story"}]
      201 LOADK                            R21 K59 ["Different Anchors"]
      202 SETTABLEKS                       R21 R20 K50 ["name"]
      204 DUPCLOSURE                       R21 K60 [PROTO_19]
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R8
      212 SETTABLEKS                       R21 R20 K51 ["story"]
      214 DUPTABLE                         R21 K52 [{"name", "story"}]
      215 LOADK                            R22 K61 ["Reference anchor"]
      216 SETTABLEKS                       R22 R21 K50 ["name"]
      218 DUPCLOSURE                       R22 K62 [PROTO_23]
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R13
      225 SETTABLEKS                       R22 R21 K51 ["story"]
      227 DUPTABLE                         R22 K52 [{"name", "story"}]
      228 LOADK                            R23 K63 ["Grouped"]
      229 SETTABLEKS                       R23 R22 K50 ["name"]
      231 DUPCLOSURE                       R23 K64 [PROTO_27]
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R10
      237 SETTABLEKS                       R23 R22 K51 ["story"]
      239 SETLIST                          R16 R17 6 [1]
      241 SETTABLEKS                       R16 R15 K46 ["stories"]
      243 DUPTABLE                         R16 K68 [{"size", "side", "align"}]
      244 GETTABLEKS                       R17 R3 K69 ["values"]
      246 MOVE                             R18 R10
      247 CALL                             R17 1 1
      248 SETTABLEKS                       R17 R16 K65 ["size"]
      250 NEWTABLE                         R17 0 4
      252 GETTABLEKS                       R18 R11 K70 ["Bottom"]
      254 GETTABLEKS                       R19 R11 K71 ["Top"]
      256 GETTABLEKS                       R20 R11 K72 ["Left"]
      258 GETTABLEKS                       R21 R11 K73 ["Right"]
      260 SETLIST                          R17 R18 4 [1]
      262 SETTABLEKS                       R17 R16 K66 ["side"]
      264 GETTABLEKS                       R17 R3 K69 ["values"]
      266 MOVE                             R18 R12
      267 CALL                             R17 1 1
      268 SETTABLEKS                       R17 R16 K67 ["align"]
      270 SETTABLEKS                       R16 R15 K47 ["controls"]
      272 RETURN                           R15 1
