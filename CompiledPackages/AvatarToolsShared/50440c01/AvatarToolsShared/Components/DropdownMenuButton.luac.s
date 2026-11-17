PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["Icons"]
        5 GETTABLEKS                       R5 R3 K2 ["ButtonSize"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K3 ["createElement"]
       10 GETUPVAL                         R7 2
       11 DUPTABLE                         R8 K8 [{"Size", "LayoutOrder", "OnClick", "Tooltip"}]
       12 GETIMPORT                        R9 K11 [UDim2.new]
       14 LOADN                            R10 1
       15 LOADN                            R11 0
       16 LOADN                            R12 0
       17 MOVE                             R13 R5
       18 CALL                             R9 4 1
       19 SETTABLEKS                       R9 R8 K4 ["Size"]
       21 SETTABLEKS                       R1 R8 K5 ["LayoutOrder"]
       23 SETTABLEKS                       R2 R8 K6 ["OnClick"]
       25 GETTABLEKS                       R9 R0 K12 ["tooltip"]
       27 SETTABLEKS                       R9 R8 K7 ["Tooltip"]
       29 DUPTABLE                         R9 K14 [{"Image"}]
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R10 R10 K3 ["createElement"]
       33 GETUPVAL                         R11 3
       34 DUPTABLE                         R12 K18 [{"AnchorPoint", "Position", "Size", "Style"}]
       35 GETIMPORT                        R13 K20 [Vector2.new]
       37 LOADK                            R14 K21 [0.5]
       38 LOADK                            R15 K21 [0.5]
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K15 ["AnchorPoint"]
       42 GETIMPORT                        R13 K23 [UDim2.fromScale]
       44 LOADK                            R14 K21 [0.5]
       45 LOADK                            R15 K21 [0.5]
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K16 ["Position"]
       49 GETIMPORT                        R13 K23 [UDim2.fromScale]
       51 LOADN                            R14 1
       52 LOADN                            R15 1
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K4 ["Size"]
       56 DUPTABLE                         R13 K14 [{"Image"}]
       57 GETTABLEKS                       R14 R0 K24 ["icon"]
       59 SETTABLEKS                       R14 R13 K13 ["Image"]
       61 SETTABLEKS                       R13 R12 K17 ["Style"]
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K13 ["Image"]
       66 CALL                             R6 3 -1
       67 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["IsIconList"]
        5 JUMPIFNOT                        R2 ; [+27]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["Items"]
       11 GETTABLE                         R2 R3 R1
       12 GETUPVAL                         R3 0
       13 DUPTABLE                         R5 K5 [{"icon", "tooltip"}]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R6 R2 K3 ["icon"]
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K6 ["None"]
       21 SETTABLEKS                       R6 R5 K3 ["icon"]
       23 JUMPIFNOT                        R2 ; [+3]
       24 GETTABLEKS                       R6 R2 K4 ["tooltip"]
       26 JUMP                             ; [+1]
       27 LOADK                            R6 K7 [""]
       28 SETTABLEKS                       R6 R5 K4 ["tooltip"]
       30 NAMECALL                         R3 R3 K8 ["setState"]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K0 ["props"]
       36 GETTABLEKS                       R2 R2 K9 ["OnItemActivated"]
       38 MOVE                             R3 R0
       39 MOVE                             R4 R1
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K6 [{[1] = False, ["icon"] = , ["tooltip"] = ""}]
        1 SETTABLEKS                       R1 R0 K7 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K8 ["openMenu"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K9 ["closeMenu"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R1 R0 K10 ["onRenderItem"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K11 ["onItemActivated"]
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["Items"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["Items"]
        6 JUMPIFEQ                         R2 R3 ; [+31]
        8 GETTABLEKS                       R2 R0 K1 ["props"]
       10 GETTABLEKS                       R2 R2 K2 ["IsIconList"]
       12 JUMPIFNOT                        R2 ; [+25]
       13 GETTABLEKS                       R3 R0 K1 ["props"]
       15 GETTABLEKS                       R3 R3 K0 ["Items"]
       17 GETTABLEN                        R2 R3 1
       18 DUPTABLE                         R5 K5 [{"icon", "tooltip"}]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R6 R2 K3 ["icon"]
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K6 ["None"]
       26 SETTABLEKS                       R6 R5 K3 ["icon"]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R6 R2 K4 ["tooltip"]
       31 JUMP                             ; [+1]
       32 LOADK                            R6 K7 [""]
       33 SETTABLEKS                       R6 R5 K4 ["tooltip"]
       35 NAMECALL                         R3 R0 K8 ["setState"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["IsIconList"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Items"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R8 R1 K6 ["Icon"]
       15 GETTABLEKS                       R9 R2 K7 ["icon"]
       17 GETTABLEKS                       R10 R6 K6 ["Icon"]
       19 CALL                             R7 3 1
       20 GETTABLEKS                       R8 R1 K8 ["ButtonSize"]
       22 GETTABLEKS                       R9 R2 K9 ["tooltip"]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K10 ["createElement"]
       27 GETUPVAL                         R11 2
       28 DUPTABLE                         R12 K12 [{"Size", "LayoutOrder"}]
       29 GETIMPORT                        R13 K15 [UDim2.fromOffset]
       31 MOVE                             R14 R8
       32 MOVE                             R15 R8
       33 CALL                             R13 2 1
       34 SETTABLEKS                       R13 R12 K11 ["Size"]
       36 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
       38 DUPTABLE                         R13 K18 [{"MenuButton", "Dropdown"}]
       39 GETUPVAL                         R14 1
       40 GETTABLEKS                       R14 R14 K10 ["createElement"]
       42 GETUPVAL                         R15 3
       43 DUPTABLE                         R16 K23 [{["Style"] = "Round", ["Size"], ["OnClick"], ["Tooltip"]}]
       44 GETIMPORT                        R17 K25 [UDim2.fromScale]
       46 LOADN                            R18 1
       47 LOADN                            R19 1
       48 CALL                             R17 2 1
       49 SETTABLEKS                       R17 R16 K11 ["Size"]
       51 GETTABLEKS                       R17 R0 K26 ["openMenu"]
       53 SETTABLEKS                       R17 R16 K21 ["OnClick"]
       55 SETTABLEKS                       R9 R16 K22 ["Tooltip"]
       57 DUPTABLE                         R17 K28 [{"Settings"}]
       58 GETUPVAL                         R18 1
       59 GETTABLEKS                       R18 R18 K10 ["createElement"]
       61 GETUPVAL                         R19 4
       62 DUPTABLE                         R20 K30 [{"Image"}]
       63 SETTABLEKS                       R7 R20 K29 ["Image"]
       65 CALL                             R18 2 1
       66 SETTABLEKS                       R18 R17 K27 ["Settings"]
       68 CALL                             R14 3 1
       69 SETTABLEKS                       R14 R13 K16 ["MenuButton"]
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K10 ["createElement"]
       74 GETUPVAL                         R15 5
       75 DUPTABLE                         R16 K36 [{"Hide", "Items", "OnItemActivated", "OnFocusLost", "OnRenderItem", "Width"}]
       76 GETTABLEKS                       R18 R0 K1 ["state"]
       78 GETTABLEKS                       R18 R18 K37 ["isOpen"]
       80 NOT                              R17 R18
       81 SETTABLEKS                       R17 R16 K31 ["Hide"]
       83 SETTABLEKS                       R5 R16 K4 ["Items"]
       85 GETTABLEKS                       R17 R0 K38 ["onItemActivated"]
       87 SETTABLEKS                       R17 R16 K32 ["OnItemActivated"]
       89 GETTABLEKS                       R17 R0 K39 ["closeMenu"]
       91 SETTABLEKS                       R17 R16 K33 ["OnFocusLost"]
       93 JUMPIFNOT                        R3 ; [+3]
       94 GETTABLEKS                       R17 R0 K40 ["onRenderItem"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R17
       98 SETTABLEKS                       R17 R16 K34 ["OnRenderItem"]
      100 JUMPIFNOT                        R3 ; [+2]
      101 MOVE                             R17 R8
      102 JUMP                             ; [+1]
      103 LOADNIL                          R17
      104 SETTABLEKS                       R17 R16 K35 ["Width"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K17 ["Dropdown"]
      109 CALL                             R10 3 -1
      110 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["Pane"]
       27 GETTABLEKS                       R7 R5 K11 ["Button"]
       29 GETTABLEKS                       R8 R5 K12 ["DropdownMenu"]
       31 GETTABLEKS                       R9 R5 K13 ["Image"]
       33 GETTABLEKS                       R10 R2 K14 ["Util"]
       35 GETTABLEKS                       R11 R10 K15 ["Typecheck"]
       37 GETTABLEKS                       R12 R10 K16 ["prioritize"]
       39 GETTABLEKS                       R13 R1 K17 ["PureComponent"]
       41 LOADK                            R15 K18 ["DropdownMenuButton"]
       42 NAMECALL                         R13 R13 K19 ["extend"]
       44 CALL                             R13 2 1
       45 GETTABLEKS                       R14 R11 K20 ["wrap"]
       47 MOVE                             R15 R13
       48 GETIMPORT                        R16 K1 [script]
       50 CALL                             R14 2 0
       51 DUPCLOSURE                       R14 K21 [PROTO_4]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R9
       55 SETTABLEKS                       R14 R13 K22 ["init"]
       57 DUPCLOSURE                       R14 K23 [PROTO_5]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R14 R13 K24 ["didUpdate"]
       61 DUPCLOSURE                       R14 K25 [PROTO_6]
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R14 R13 K26 ["render"]
       70 MOVE                             R14 R4
       71 DUPTABLE                         R15 K28 [{"Stylizer"}]
       72 GETTABLEKS                       R16 R3 K27 ["Stylizer"]
       74 SETTABLEKS                       R16 R15 K27 ["Stylizer"]
       76 CALL                             R14 1 1
       77 MOVE                             R15 R13
       78 CALL                             R14 1 1
       79 MOVE                             R13 R14
       80 RETURN                           R13 1
