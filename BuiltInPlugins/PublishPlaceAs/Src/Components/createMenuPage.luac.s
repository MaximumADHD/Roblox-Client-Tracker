PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["StyleModifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["Hover"]
       12 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       14 NAMECALL                         R0 R0 K4 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["StyleModifier"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Hover"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K3 [{"StyleModifier"}]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["None"]
       15 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{[1] = , ["showDialog"] = False}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K6 ["onMouseEnter"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K7 ["onMouseLeave"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["GetPlayerAcceptances"]
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["API"]
        9 NAMECALL                         R1 R1 K3 ["get"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K0 ["props"]
       14 GETTABLEKS                       R2 R2 K1 ["GetPlayerAcceptances"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        5 GETTABLEKS                       R2 R2 K1 ["y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Content"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R2 R1 K1 ["Content"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+2]
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R4 R1 K3 ["AddLayout"]
       16 GETTABLEKS                       R5 R1 K4 ["ContentHeightChanged"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K5 ["createElement"]
       21 LOADK                            R7 K6 ["Frame"]
       22 DUPTABLE                         R8 K11 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
       23 GETIMPORT                        R9 K14 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R9 R8 K7 ["AutomaticSize"]
       27 GETIMPORT                        R9 K17 [UDim2.new]
       29 LOADN                            R10 1
       30 LOADN                            R11 0
       31 LOADN                            R12 1
       32 LOADN                            R13 0
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K10 ["Size"]
       36 SETTABLEKS                       R3 R8 K2 ["LayoutOrder"]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K18 ["Dictionary"]
       41 GETTABLEKS                       R9 R9 K19 ["join"]
       43 MOVE                             R10 R2
       44 DUPTABLE                         R11 K22 [{"Padding", "Layout"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K5 ["createElement"]
       48 LOADK                            R13 K23 ["UIPadding"]
       49 DUPTABLE                         R14 K26 [{"PaddingLeft", "PaddingRight"}]
       50 GETIMPORT                        R15 K28 [UDim.new]
       52 LOADN                            R16 0
       53 LOADN                            R17 20
       54 CALL                             R15 2 1
       55 SETTABLEKS                       R15 R14 K24 ["PaddingLeft"]
       57 GETIMPORT                        R15 K28 [UDim.new]
       59 LOADN                            R16 0
       60 LOADN                            R17 20
       61 CALL                             R15 2 1
       62 SETTABLEKS                       R15 R14 K25 ["PaddingRight"]
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K20 ["Padding"]
       67 MOVE                             R12 R4
       68 JUMPIFNOT                        R12 ; [+26]
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R12 R12 K5 ["createElement"]
       72 LOADK                            R13 K29 ["UIListLayout"]
       73 NEWTABLE                         R14 4 0
       75 GETIMPORT                        R15 K28 [UDim.new]
       77 LOADN                            R16 0
       78 LOADN                            R17 15
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K20 ["Padding"]
       82 GETIMPORT                        R15 K31 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R15 R14 K30 ["SortOrder"]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K32 ["Change"]
       89 GETTABLEKS                       R15 R15 K33 ["AbsoluteContentSize"]
       91 NEWCLOSURE                       R16 P0
       92 CAPTURE                          VAL R5
       93 SETTABLE                         R16 R14 R15
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K21 ["Layout"]
       97 CALL                             R9 2 -1
       98 CALL                             R6 -1 -1
       99 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NewGameSettings"]
        3 GETTABLEKS                       R2 R2 K1 ["changed"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFEQKNIL                     R1 ; [+8]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["NewGameSettings"]
       11 GETTABLEKS                       R2 R2 K1 ["changed"]
       13 GETTABLE                         R1 R2 R0
       14 RETURN                           R1 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["NewGameSettings"]
       18 GETTABLEKS                       R2 R2 K2 ["current"]
       20 GETTABLE                         R1 R2 R0
       21 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PureComponent"]
        3 LOADK                            R4 K1 ["Page"]
        4 NAMECALL                         R2 R2 K2 ["extend"]
        6 CALL                             R2 2 1
        7 DUPCLOSURE                       R3 K3 [PROTO_2]
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R3 R2 K4 ["init"]
       12 DUPCLOSURE                       R3 K5 [PROTO_3]
       13 SETTABLEKS                       R3 R2 K6 ["didMount"]
       15 DUPCLOSURE                       R3 K7 [PROTO_5]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R2 K8 ["render"]
       20 GETUPVAL                         R3 3
       21 DUPTABLE                         R4 K13 [{"Stylizer", "Localization", "Mouse", "API"}]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K9 ["Stylizer"]
       25 SETTABLEKS                       R5 R4 K9 ["Stylizer"]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K10 ["Localization"]
       30 SETTABLEKS                       R5 R4 K10 ["Localization"]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K11 ["Mouse"]
       35 SETTABLEKS                       R5 R4 K11 ["Mouse"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K12 ["API"]
       40 SETTABLEKS                       R5 R4 K12 ["API"]
       42 CALL                             R3 1 1
       43 MOVE                             R4 R2
       44 CALL                             R3 1 1
       45 MOVE                             R2 R3
       46 NEWCLOSURE                       R3 P3
       47 CAPTURE                          VAL R0
       48 NEWCLOSURE                       R4 P4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U5
       51 GETUPVAL                         R5 6
       52 GETTABLEKS                       R5 R5 K14 ["connect"]
       54 MOVE                             R6 R3
       55 MOVE                             R7 R4
       56 CALL                             R5 2 1
       57 MOVE                             R6 R2
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R7 R4 K12 ["Util"]
       43 GETTABLEKS                       R8 R7 K13 ["StyleModifier"]
       45 GETIMPORT                        R9 K4 [require]
       47 GETTABLEKS                       R10 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R10 K15 ["Actions"]
       51 GETTABLEKS                       R10 R10 K16 ["AddChange"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K17 [PROTO_11]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R2
       62 RETURN                           R10 1
