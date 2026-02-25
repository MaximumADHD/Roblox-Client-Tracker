PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["dispatchSetViewType"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K2 ["dispatchSetMenuHover"]
       12 LOADB                            R3 0
       13 CALL                             R2 1 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["props"]
       17 GETTABLEKS                       R2 R3 K3 ["PluginController"]
       19 MOVE                             R4 R0
       20 NAMECALL                         R2 R2 K4 ["setViewType"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"LayoutOrder", "OnClick", "ViewType"}]
        5 SETTABLEKS                       R1 R5 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R2 R5 K2 ["OnClick"]
        9 SETTABLEKS                       R0 R5 K3 ["ViewType"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["dispatchSetMenuHover"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["dispatchSetMenuHover"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["selectViewType"]
        4 DUPCLOSURE                       R1 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K2 ["onRenderViewType"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       13 NEWCLOSURE                       R1 P3
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       17 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["ViewTypeButton"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["createElement"]
        9 GETUPVAL                         R4 1
       10 DUPTABLE                         R5 K6 [{"LayoutOrder", "Size"}]
       11 GETTABLEKS                       R6 R1 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       15 GETTABLEKS                       R6 R2 K7 ["ViewTypeSize"]
       17 SETTABLEKS                       R6 R5 K5 ["Size"]
       19 DUPTABLE                         R6 K9 [{"SelectInput"}]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K3 ["createElement"]
       23 GETUPVAL                         R8 2
       24 DUPTABLE                         R9 K18 [{"Icons", "Items", "HideText", "OnItemActivated", "OnRenderItem", "OnMouseEnter", "OnMouseLeave", "SelectedIndex", "Size"}]
       25 NEWTABLE                         R10 0 2
       27 GETTABLEKS                       R11 R2 K19 ["Grid"]
       29 GETTABLEKS                       R12 R2 K20 ["List"]
       31 SETLIST                          R10 R11 2 [1]
       33 SETTABLEKS                       R10 R9 K10 ["Icons"]
       35 NEWTABLE                         R10 0 2
       37 GETUPVAL                         R12 3
       38 GETTABLEKS                       R11 R12 K19 ["Grid"]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K20 ["List"]
       43 SETLIST                          R10 R11 2 [1]
       45 SETTABLEKS                       R10 R9 K11 ["Items"]
       47 LOADB                            R10 1
       48 SETTABLEKS                       R10 R9 K12 ["HideText"]
       50 GETTABLEKS                       R10 R0 K21 ["selectViewType"]
       52 SETTABLEKS                       R10 R9 K13 ["OnItemActivated"]
       54 GETTABLEKS                       R10 R0 K22 ["onRenderViewType"]
       56 SETTABLEKS                       R10 R9 K14 ["OnRenderItem"]
       58 GETTABLEKS                       R10 R0 K23 ["onMouseEnter"]
       60 SETTABLEKS                       R10 R9 K15 ["OnMouseEnter"]
       62 GETTABLEKS                       R10 R0 K24 ["onMouseLeave"]
       64 SETTABLEKS                       R10 R9 K16 ["OnMouseLeave"]
       66 GETTABLEKS                       R11 R1 K25 ["ViewType"]
       68 GETUPVAL                         R13 3
       69 GETTABLEKS                       R12 R13 K19 ["Grid"]
       71 JUMPIFNOTEQ                      R11 R12 ; [+3]
       73 LOADN                            R10 1
       74 JUMP                             ; [+1]
       75 LOADN                            R10 2
       76 SETTABLEKS                       R10 R9 K17 ["SelectedIndex"]
       78 GETTABLEKS                       R10 R2 K7 ["ViewTypeSize"]
       80 SETTABLEKS                       R10 R9 K5 ["Size"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K8 ["SelectInput"]
       85 CALL                             R3 3 -1
       86 RETURN                           R3 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"ViewType"}]
        1 GETTABLEKS                       R3 R0 K2 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R2 R3 K0 ["ViewType"]
        5 SETTABLEKS                       R2 R1 K0 ["ViewType"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"dispatchSetViewType", "dispatchSetMenuHover"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetViewType"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSetMenuHover"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R3 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R4 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R6 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K12 ["withContext"]
       45 GETTABLEKS                       R8 R4 K13 ["Style"]
       47 GETTABLEKS                       R7 R8 K14 ["Stylizer"]
       49 GETTABLEKS                       R8 R4 K15 ["UI"]
       51 GETTABLEKS                       R9 R8 K16 ["Pane"]
       53 GETTABLEKS                       R10 R8 K17 ["SelectInput"]
       55 GETIMPORT                        R11 K4 [require]
       57 GETTABLEKS                       R15 R0 K5 ["Src"]
       59 GETTABLEKS                       R14 R15 K18 ["Resources"]
       61 GETTABLEKS                       R13 R14 K19 ["Constants"]
       63 GETTABLEKS                       R12 R13 K20 ["getViewTypes"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K4 [require]
       68 GETTABLEKS                       R15 R0 K5 ["Src"]
       70 GETTABLEKS                       R14 R15 K21 ["Reducers"]
       72 GETTABLEKS                       R13 R14 K22 ["MainReducer"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R16 R0 K5 ["Src"]
       79 GETTABLEKS                       R15 R16 K23 ["Controllers"]
       81 GETTABLEKS                       R14 R15 K24 ["PluginController"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K4 [require]
       86 GETTABLEKS                       R19 R0 K5 ["Src"]
       88 GETTABLEKS                       R18 R19 K25 ["Components"]
       90 GETTABLEKS                       R17 R18 K26 ["MaterialBrowser"]
       92 GETTABLEKS                       R16 R17 K27 ["TopBar"]
       94 GETTABLEKS                       R15 R16 K28 ["ViewTypeButton"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R16 R0 K5 ["Src"]
       99 GETTABLEKS                       R15 R16 K29 ["Actions"]
      101 GETIMPORT                        R16 K4 [require]
      103 GETTABLEKS                       R17 R15 K30 ["SetMenuHover"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K4 [require]
      108 GETTABLEKS                       R18 R15 K31 ["SetViewType"]
      110 CALL                             R17 1 1
      111 MOVE                             R18 R11
      112 CALL                             R18 0 1
      113 GETTABLEKS                       R19 R2 K32 ["PureComponent"]
      115 LOADK                            R21 K33 ["ViewTypeSelector"]
      116 NAMECALL                         R19 R19 K34 ["extend"]
      118 CALL                             R19 2 1
      119 DUPCLOSURE                       R20 K35 [PROTO_4]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R14
      122 SETTABLEKS                       R20 R19 K36 ["init"]
      124 DUPCLOSURE                       R20 K37 [PROTO_5]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R18
      129 SETTABLEKS                       R20 R19 K38 ["render"]
      131 MOVE                             R20 R6
      132 DUPTABLE                         R21 K39 [{"PluginController", "Stylizer"}]
      133 SETTABLEKS                       R13 R21 K24 ["PluginController"]
      135 SETTABLEKS                       R7 R21 K14 ["Stylizer"]
      137 CALL                             R20 1 1
      138 MOVE                             R21 R19
      139 CALL                             R20 1 1
      140 MOVE                             R19 R20
      141 GETTABLEKS                       R20 R3 K40 ["connect"]
      143 DUPCLOSURE                       R21 K41 [PROTO_6]
      144 DUPCLOSURE                       R22 K42 [PROTO_9]
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R16
      147 CALL                             R20 2 1
      148 MOVE                             R21 R19
      149 CALL                             R20 1 -1
      150 RETURN                           R20 -1
