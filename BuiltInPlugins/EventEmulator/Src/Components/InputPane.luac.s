PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ActiveView"]
        5 LOADK                            R2 K2 ["Frame"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K3 ["RBXEvent"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+2]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["Theme"]
       15 JUMPIFNOTEQ                      R1 R3 ; [+2]
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["MemStorage"]
       21 JUMPIFNOTEQ                      R1 R3 ; [+2]
       23 GETUPVAL                         R2 4
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R3 R4 K6 ["createElement"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 -1
       29 RETURN                           R3 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 SETTABLEKS                       R1 R0 K0 ["getView"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Sizes"]
        6 GETTABLEKS                       R5 R2 K3 ["Layout"]
        8 GETTABLEKS                       R4 R5 K4 ["Vertical"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K5 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K9 [{"Size", "Background", "LayoutOrder"}]
       15 GETIMPORT                        R8 K12 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 GETTABLEKS                       R12 R3 K13 ["InputPaneLength"]
       22 CALL                             R8 4 1
       23 SETTABLEKS                       R8 R7 K6 ["Size"]
       25 GETUPVAL                         R8 2
       26 SETTABLEKS                       R8 R7 K7 ["Background"]
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R8 R9 K14 ["InputPane"]
       31 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       33 DUPTABLE                         R8 K18 [{"Layout", "Dropdown", "Name", "View"}]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K5 ["createElement"]
       37 LOADK                            R10 K19 ["UIListLayout"]
       38 MOVE                             R11 R4
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K3 ["Layout"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K5 ["createElement"]
       45 GETUPVAL                         R10 4
       46 CALL                             R9 1 1
       47 SETTABLEKS                       R9 R8 K15 ["Dropdown"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K5 ["createElement"]
       52 GETUPVAL                         R10 5
       53 CALL                             R9 1 1
       54 SETTABLEKS                       R9 R8 K16 ["Name"]
       56 GETTABLEKS                       R9 R0 K20 ["getView"]
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K17 ["View"]
       61 CALL                             R5 3 -1
       62 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"ActiveView"}]
        1 GETTABLEKS                       R4 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["ActiveView"]
        5 SETTABLEKS                       R3 R2 K0 ["ActiveView"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Container"]
       38 GETTABLEKS                       R8 R6 K13 ["Box"]
       40 GETTABLEKS                       R10 R0 K14 ["Src"]
       42 GETTABLEKS                       R9 R10 K15 ["Components"]
       44 GETIMPORT                        R10 K4 [require]
       46 GETTABLEKS                       R11 R9 K16 ["NameBox"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K4 [require]
       51 GETTABLEKS                       R12 R9 K17 ["Dropdown"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K4 [require]
       56 GETTABLEKS                       R14 R9 K18 ["Views"]
       58 GETTABLEKS                       R13 R14 K19 ["RBXEventView"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K4 [require]
       63 GETTABLEKS                       R15 R9 K18 ["Views"]
       65 GETTABLEKS                       R14 R15 K20 ["ThemeView"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K4 [require]
       70 GETTABLEKS                       R16 R9 K18 ["Views"]
       72 GETTABLEKS                       R15 R16 K21 ["MemStorageEventView"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K4 [require]
       77 GETTABLEKS                       R18 R0 K14 ["Src"]
       79 GETTABLEKS                       R17 R18 K22 ["Util"]
       81 GETTABLEKS                       R16 R17 K23 ["Constants"]
       83 CALL                             R15 1 1
       84 GETTABLEKS                       R16 R15 K24 ["VIEW_ID"]
       86 GETTABLEKS                       R17 R15 K25 ["INPUT_PANE_LAYOUT"]
       88 GETTABLEKS                       R18 R1 K26 ["PureComponent"]
       90 LOADK                            R20 K27 ["InputPane"]
       91 NAMECALL                         R18 R18 K28 ["extend"]
       93 CALL                             R18 2 1
       94 DUPCLOSURE                       R19 K29 [PROTO_1]
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R19 R18 K30 ["init"]
      102 DUPCLOSURE                       R19 K31 [PROTO_2]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R19 R18 K32 ["render"]
      111 MOVE                             R19 R5
      112 DUPTABLE                         R20 K34 [{"Stylizer"}]
      113 GETTABLEKS                       R21 R4 K33 ["Stylizer"]
      115 SETTABLEKS                       R21 R20 K33 ["Stylizer"]
      117 CALL                             R19 1 1
      118 MOVE                             R20 R18
      119 CALL                             R19 1 1
      120 MOVE                             R18 R19
      121 GETTABLEKS                       R19 R2 K35 ["connect"]
      123 DUPCLOSURE                       R20 K36 [PROTO_3]
      124 CALL                             R19 1 1
      125 MOVE                             R20 R18
      126 CALL                             R19 1 -1
      127 RETURN                           R19 -1
