PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetDocked"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetDocked"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPoppedOut"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onWidgetClosed"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Docked"]
        4 GETTABLEKS                       R3 R1 K2 ["SetDocked"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 NEWTABLE                         R6 4 0
       12 GETTABLEKS                       R7 R0 K0 ["props"]
       14 GETTABLEKS                       R7 R7 K5 ["UpdatePreviewAssetsSelected"]
       16 SETTABLEKS                       R7 R6 K6 ["OnCapacityReached"]
       18 JUMPIFNOT                        R2 ; [+34]
       19 SETTABLEKS                       R2 R6 K7 ["ShowPopoutButton"]
       21 GETTABLEKS                       R7 R0 K8 ["onPoppedOut"]
       23 SETTABLEKS                       R7 R6 K9 ["OnPopoutClicked"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K10 ["createElement"]
       28 GETUPVAL                         R8 1
       29 DUPTABLE                         R9 K12 [{"Size", "LayoutOrder"}]
       30 GETIMPORT                        R10 K15 [UDim2.new]
       32 LOADN                            R11 1
       33 LOADN                            R12 0
       34 LOADN                            R13 0
       35 GETTABLEKS                       R14 R5 K16 ["PreviewViewportFrameHeight"]
       37 CALL                             R10 4 1
       38 SETTABLEKS                       R10 R9 K11 ["Size"]
       40 SETTABLEKS                       R4 R9 K3 ["LayoutOrder"]
       42 DUPTABLE                         R10 K18 [{"PreviewViewportFrame"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K10 ["createElement"]
       46 GETUPVAL                         R12 2
       47 MOVE                             R13 R6
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K17 ["PreviewViewportFrame"]
       51 CALL                             R7 3 -1
       52 RETURN                           R7 -1
       53 GETTABLEKS                       R7 R0 K19 ["onWidgetClosed"]
       55 SETTABLEKS                       R7 R6 K20 ["OnClose"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K10 ["createElement"]
       60 GETUPVAL                         R8 3
       61 MOVE                             R9 R6
       62 CALL                             R7 2 -1
       63 RETURN                           R7 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["previewStatus"]
        2 GETTABLEKS                       R3 R0 K1 ["animation"]
        4 DUPTABLE                         R4 K3 [{"Docked"}]
        5 GETTABLEKS                       R5 R2 K4 ["docked"]
        7 SETTABLEKS                       R5 R4 K2 ["Docked"]
        9 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"SetDocked", "UpdatePreviewAssetsSelected"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetDocked"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["UpdatePreviewAssetsSelected"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Actions"]
       38 GETTABLEKS                       R5 R5 K11 ["SetDocked"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K13 ["UpdatePreviewAssetsSelected"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K5 ["Packages"]
       54 GETTABLEKS                       R7 R7 K14 ["Framework"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K16 ["withContext"]
       61 GETTABLEKS                       R9 R6 K17 ["Util"]
       63 GETTABLEKS                       R10 R9 K18 ["LayoutOrderIterator"]
       65 GETTABLEKS                       R11 R9 K19 ["Typecheck"]
       67 GETTABLEKS                       R12 R6 K20 ["UI"]
       69 GETTABLEKS                       R13 R12 K21 ["Pane"]
       71 GETTABLEKS                       R14 R3 K22 ["Components"]
       73 GETTABLEKS                       R15 R14 K23 ["PreviewDockWidget"]
       75 GETTABLEKS                       R16 R14 K24 ["PreviewViewportFrame"]
       77 GETTABLEKS                       R17 R3 K17 ["Util"]
       79 GETTABLEKS                       R17 R17 K25 ["AccessoryAndBodyToolShared"]
       81 GETTABLEKS                       R18 R17 K26 ["PreviewingInfo"]
       83 GETTABLEKS                       R19 R1 K27 ["PureComponent"]
       85 LOADK                            R21 K28 ["PreviewViewportFrameContainer"]
       86 NAMECALL                         R19 R19 K29 ["extend"]
       88 CALL                             R19 2 1
       89 GETTABLEKS                       R20 R11 K30 ["wrap"]
       91 MOVE                             R21 R19
       92 GETIMPORT                        R22 K1 [script]
       94 CALL                             R20 2 0
       95 DUPCLOSURE                       R20 K31 [PROTO_2]
       96 SETTABLEKS                       R20 R19 K32 ["init"]
       98 DUPCLOSURE                       R20 K33 [PROTO_3]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R15
      103 SETTABLEKS                       R20 R19 K34 ["render"]
      105 MOVE                             R20 R8
      106 DUPTABLE                         R21 K36 [{"Stylizer"}]
      107 GETTABLEKS                       R22 R7 K35 ["Stylizer"]
      109 SETTABLEKS                       R22 R21 K35 ["Stylizer"]
      111 CALL                             R20 1 1
      112 MOVE                             R21 R19
      113 CALL                             R20 1 1
      114 MOVE                             R19 R20
      115 DUPCLOSURE                       R20 K37 [PROTO_4]
      116 DUPCLOSURE                       R21 K38 [PROTO_7]
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
      119 GETTABLEKS                       R22 R2 K39 ["connect"]
      121 MOVE                             R23 R20
      122 MOVE                             R24 R21
      123 CALL                             R22 2 1
      124 MOVE                             R23 R19
      125 CALL                             R22 1 -1
      126 RETURN                           R22 -1
