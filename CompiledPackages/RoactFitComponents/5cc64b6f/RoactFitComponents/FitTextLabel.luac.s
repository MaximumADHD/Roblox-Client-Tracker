PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextBoundsRoundUp"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+15]
        2 GETUPVAL                         R4 1
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 GETIMPORT                        R9 K2 [Vector2.new]
        8 MOVE                             R10 R3
        9 LOADN                            R11 10000
       10 CALL                             R9 2 -1
       11 NAMECALL                         R4 R4 K3 ["GetTextSize"]
       13 CALL                             R4 -1 1
       14 GETTABLEKS                       R4 R4 K4 ["Y"]
       16 RETURN                           R4 1
       17 GETUPVAL                         R5 1
       18 MOVE                             R7 R0
       19 MOVE                             R8 R1
       20 MOVE                             R9 R2
       21 GETIMPORT                        R10 K2 [Vector2.new]
       23 MOVE                             R11 R3
       24 LOADN                            R12 10000
       25 CALL                             R10 2 -1
       26 NAMECALL                         R5 R5 K3 ["GetTextSize"]
       28 CALL                             R5 -1 1
       29 GETTABLEKS                       R5 R5 K4 ["Y"]
       31 ADDK                             R4 R5 K5 [2]
       32 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+15]
        2 GETUPVAL                         R3 1
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETIMPORT                        R8 K2 [Vector2.new]
        8 LOADN                            R9 10000
        9 LOADN                            R10 10000
       10 CALL                             R8 2 -1
       11 NAMECALL                         R3 R3 K3 ["GetTextSize"]
       13 CALL                             R3 -1 1
       14 GETTABLEKS                       R3 R3 K4 ["X"]
       16 RETURN                           R3 1
       17 GETUPVAL                         R4 1
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 GETIMPORT                        R9 K2 [Vector2.new]
       23 LOADN                            R10 10000
       24 LOADN                            R11 10000
       25 CALL                             R9 2 -1
       26 NAMECALL                         R4 R4 K3 ["GetTextSize"]
       28 CALL                             R4 -1 1
       29 GETTABLEKS                       R4 R4 K4 ["X"]
       31 ADDK                             R3 R4 K5 [2]
       32 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["frameRef"]
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["frameRef"]
       16 GETTABLEKS                       R3 R3 K1 ["current"]
       18 NAMECALL                         R1 R1 K2 ["__getSize"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K3 ["Size"]
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Ref"]
        3 JUMPIFNOTEQKS                    R1 K1 ["ref"] ; [+13]
        5 GETTABLEKS                       R1 R0 K2 ["props"]
        7 GETTABLEKS                       R1 R1 K3 ["forwardedRef"]
        9 JUMPIF                           R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["createRef"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K5 ["frameRef"]
       16 JUMP                             ; [+13]
       17 GETTABLEKS                       R2 R0 K2 ["props"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["Ref"]
       22 GETTABLE                         R1 R2 R3
       23 JUMPIF                           R1 ; [+4]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K4 ["createRef"]
       27 CALL                             R1 0 1
       28 SETTABLEKS                       R1 R0 K5 ["frameRef"]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K6 ["onResize"]
       34 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["onActivated"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R1 K2 ["TextButton"]
        6 JUMP                             ; [+1]
        7 LOADK                            R1 K3 ["TextLabel"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["createElement"]
       11 MOVE                             R3 R1
       12 NAMECALL                         R4 R0 K5 ["__getFilteredProps"]
       14 CALL                             R4 1 -1
       15 CALL                             R2 -1 -1
       16 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["onResize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["onResize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Change"]
        6 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+11]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["Change"]
       16 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
       18 GETTABLE                         R1 R2 R3
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K3 ["onResize"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 SETTABLEKS                       R2 R1 K1 ["width"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["None"]
       10 SETTABLEKS                       R2 R1 K2 ["maximumWidth"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["None"]
       15 SETTABLEKS                       R2 R1 K3 ["onActivated"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["None"]
       20 SETTABLEKS                       R2 R1 K4 ["forwardedRef"]
       22 GETIMPORT                        R2 K7 [UDim2.new]
       24 GETTABLEKS                       R3 R0 K8 ["props"]
       26 GETTABLEKS                       R3 R3 K1 ["width"]
       28 GETIMPORT                        R4 K10 [UDim.new]
       30 LOADN                            R5 0
       31 LOADN                            R6 0
       32 CALL                             R4 2 -1
       33 CALL                             R2 -1 1
       34 SETTABLEKS                       R2 R1 K11 ["Size"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K12 ["Ref"]
       39 GETTABLEKS                       R3 R0 K13 ["frameRef"]
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K14 ["Children"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K15 ["Dictionary"]
       48 GETTABLEKS                       R3 R3 K16 ["join"]
       50 GETTABLEKS                       R5 R0 K8 ["props"]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K14 ["Children"]
       55 GETTABLE                         R4 R5 R6
       56 JUMPIF                           R4 ; [+2]
       57 NEWTABLE                         R4 0 0
       59 DUPTABLE                         R5 K18 [{"sizeConstraint"}]
       60 LOADB                            R6 0
       61 GETTABLEKS                       R7 R0 K8 ["props"]
       63 GETTABLEKS                       R7 R7 K2 ["maximumWidth"]
       65 LOADK                            R8 K19 [∞]
       66 JUMPIFNOTLT                      R7 R8 ; [+17]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K20 ["createElement"]
       71 LOADK                            R7 K21 ["UISizeConstraint"]
       72 DUPTABLE                         R8 K23 [{"MaxSize"}]
       73 GETIMPORT                        R9 K25 [Vector2.new]
       75 GETTABLEKS                       R10 R0 K8 ["props"]
       77 GETTABLEKS                       R10 R10 K2 ["maximumWidth"]
       79 LOADK                            R11 K19 [∞]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K22 ["MaxSize"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K17 ["sizeConstraint"]
       86 CALL                             R3 2 1
       87 SETTABLE                         R3 R1 R2
       88 GETUPVAL                         R2 1
       89 GETTABLEKS                       R2 R2 K26 ["Event"]
       91 GETTABLEKS                       R2 R2 K27 ["Activated"]
       93 GETTABLEKS                       R3 R0 K8 ["props"]
       95 GETTABLEKS                       R3 R3 K3 ["onActivated"]
       97 SETTABLE                         R3 R1 R2
       98 GETUPVAL                         R2 1
       99 GETTABLEKS                       R2 R2 K28 ["Change"]
      101 GETTABLEKS                       R2 R2 K29 ["AbsoluteSize"]
      103 NEWCLOSURE                       R3 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U1
      106 SETTABLE                         R3 R1 R2
      107 GETUPVAL                         R2 0
      108 GETTABLEKS                       R2 R2 K15 ["Dictionary"]
      110 GETTABLEKS                       R2 R2 K16 ["join"]
      112 GETTABLEKS                       R3 R0 K8 ["props"]
      114 MOVE                             R4 R1
      115 CALL                             R2 2 -1
      116 RETURN                           R2 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["maximumWidth"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["width"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["FitToText"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+27]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R5 R0 K0 ["props"]
       16 GETTABLEKS                       R5 R5 K4 ["Text"]
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R6 R6 K5 ["TextSize"]
       22 GETTABLEKS                       R7 R0 K0 ["props"]
       24 GETTABLEKS                       R7 R7 K6 ["Font"]
       26 CALL                             R4 3 1
       27 GETIMPORT                        R5 K9 [UDim.new]
       29 LOADN                            R6 0
       30 FASTCALL2                        MATH_MIN R4 R2 ; [+5]
       32 MOVE                             R8 R4
       33 MOVE                             R9 R2
       34 GETIMPORT                        R7 K12 [math.min]
       36 CALL                             R7 2 1
       37 CALL                             R5 2 1
       38 MOVE                             R3 R5
       39 LOADK                            R6 K13 [∞]
       40 JUMPIFNOTLT                      R2 R6 ; [+3]
       42 MOVE                             R5 R2
       43 JUMPIF                           R5 ; [+1]
       44 LOADN                            R5 0
       45 GETTABLEKS                       R6 R1 K14 ["AbsoluteSize"]
       47 GETTABLEKS                       R6 R6 K15 ["X"]
       49 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       51 GETIMPORT                        R4 K17 [math.max]
       53 CALL                             R4 2 1
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R6 R0 K0 ["props"]
       57 GETTABLEKS                       R6 R6 K4 ["Text"]
       59 GETTABLEKS                       R7 R0 K0 ["props"]
       61 GETTABLEKS                       R7 R7 K5 ["TextSize"]
       63 GETTABLEKS                       R8 R0 K0 ["props"]
       65 GETTABLEKS                       R8 R8 K6 ["Font"]
       67 MOVE                             R9 R4
       68 CALL                             R5 4 1
       69 GETIMPORT                        R6 K19 [UDim2.new]
       71 MOVE                             R7 R3
       72 GETIMPORT                        R8 K9 [UDim.new]
       74 LOADN                            R9 0
       75 MOVE                             R10 R5
       76 CALL                             R8 2 -1
       77 CALL                             R6 -1 -1
       78 RETURN                           R6 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K2 ["join"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K4 [{"forwardedRef"}]
       11 SETTABLEKS                       R1 R6 K3 ["forwardedRef"]
       13 CALL                             R4 2 -1
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Cryo"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["Roact"]
       16 CALL                             R3 1 1
       17 LOADNIL                          R4
       18 GETIMPORT                        R5 K8 [pcall]
       20 DUPCLOSURE                       R6 K9 [PROTO_0]
       21 CALL                             R5 1 2
       22 AND                              R4 R5 R6
       23 GETIMPORT                        R5 K11 [game]
       25 LOADK                            R7 K12 ["TextService"]
       26 NAMECALL                         R5 R5 K13 ["GetService"]
       28 CALL                             R5 2 1
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          REF R4
       31 CAPTURE                          VAL R5
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R5
       35 DUPTABLE                         R8 K15 [{"FitToText"}]
       36 NEWTABLE                         R9 0 0
       38 SETTABLEKS                       R9 R8 K14 ["FitToText"]
       40 GETTABLEKS                       R9 R3 K16 ["PureComponent"]
       42 LOADK                            R11 K17 ["FitTextLabel"]
       43 NAMECALL                         R9 R9 K18 ["extend"]
       45 CALL                             R9 2 1
       46 DUPTABLE                         R10 K28 [{["Font"], ["Text"] = "Label", ["TextSize"] = 12, ["TextWrapped"] = True, ["maximumWidth"] = ∞}]
       47 GETIMPORT                        R11 K31 [Enum.Font.SourceSans]
       49 SETTABLEKS                       R11 R10 K19 ["Font"]
       51 SETTABLEKS                       R10 R9 K32 ["defaultProps"]
       53 DUPCLOSURE                       R10 K33 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R10 R9 K34 ["init"]
       57 DUPCLOSURE                       R10 K35 [PROTO_5]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R10 R9 K36 ["render"]
       61 DUPCLOSURE                       R10 K37 [PROTO_6]
       62 SETTABLEKS                       R10 R9 K38 ["didMount"]
       64 DUPCLOSURE                       R10 K39 [PROTO_7]
       65 SETTABLEKS                       R10 R9 K40 ["didUpdate"]
       67 DUPCLOSURE                       R10 K41 [PROTO_9]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R10 R9 K42 ["__getFilteredProps"]
       72 DUPCLOSURE                       R10 K43 [PROTO_10]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R10 R9 K44 ["__getSize"]
       78 LOADNIL                          R10
       79 GETTABLEKS                       R11 R3 K45 ["Ref"]
       81 JUMPIFNOTEQKS                    R11 K46 ["ref"] ; [+10]
       83 GETTABLEKS                       R11 R3 K47 ["forwardRef"]
       85 DUPCLOSURE                       R12 K48 [PROTO_11]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R2
       89 CALL                             R11 1 1
       90 MOVE                             R10 R11
       91 JUMP                             ; [+1]
       92 MOVE                             R10 R9
       93 SETTABLEKS                       R8 R10 K49 ["Width"]
       95 CLOSEUPVALS                      R4
       96 RETURN                           R10 1
