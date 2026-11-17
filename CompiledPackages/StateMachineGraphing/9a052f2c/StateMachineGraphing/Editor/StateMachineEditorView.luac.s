PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K3 ["getterRef"]
       11 GETTABLEKS                       R3 R1 K4 ["observeViewportRect"]
       13 SETTABLEKS                       R3 R2 K5 ["current"]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["X"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
       11 GETTABLEKS                       R2 R2 K1 ["X"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 LOADK                            R3 K0 ["AbsoluteSize"]
       16 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       18 CALL                             R1 2 1
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K3 ["Connect"]
       22 CALL                             R1 2 1
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R2
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 0
       22 MOVE                             R4 R0
       23 MOVE                             R5 R3
       24 RETURN                           R4 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ParameterPaneBoundsContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["useSignalState"]
       12 GETTABLEKS                       R3 R1 K4 ["observeRightEdge"]
       14 CALL                             R2 1 1
       15 ADDK                             R3 R2 K5 [12]
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 2
       18 GETUPVAL                         R6 3
       19 CALL                             R6 0 2
       20 SUB                              R9 R4 R6
       21 DIVK                             R8 R9 K6 [2]
       22 LOADB                            R9 0
       23 LOADN                            R10 0
       24 JUMPIFNOTLT                      R10 R4 ; [+5]
       26 JUMPIFLT                         R8 R3 ; [+2]
       28 LOADB                            R9 0 +1
       29 LOADB                            R9 1
       30 JUMPIFNOT                        R9 ; [+3]
       31 GETIMPORT                        R10 K9 [Vector2.zero]
       33 JUMP                             ; [+5]
       34 GETIMPORT                        R10 K11 [Vector2.new]
       36 LOADK                            R11 K12 [0.5]
       37 LOADN                            R12 0
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K13 ["createElement"]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K14 ["Fragment"]
       45 LOADNIL                          R13
       46 DUPTABLE                         R14 K17 [{"Measure", "Host"}]
       47 GETUPVAL                         R15 0
       48 GETTABLEKS                       R15 R15 K13 ["createElement"]
       50 LOADK                            R16 K18 ["Frame"]
       51 DUPTABLE                         R17 K23 [{["Size"], ["BackgroundTransparency"] = 1, ["ref"]}]
       52 GETIMPORT                        R18 K26 [UDim2.fromScale]
       54 LOADN                            R19 1
       55 LOADN                            R20 0
       56 CALL                             R18 2 1
       57 SETTABLEKS                       R18 R17 K19 ["Size"]
       59 SETTABLEKS                       R5 R17 K22 ["ref"]
       61 CALL                             R15 2 1
       62 SETTABLEKS                       R15 R14 K15 ["Measure"]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K13 ["createElement"]
       67 LOADK                            R16 K18 ["Frame"]
       68 DUPTABLE                         R17 K32 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
       69 SETTABLEKS                       R10 R17 K27 ["AnchorPoint"]
       71 JUMPIFNOT                        R9 ; [+6]
       72 GETIMPORT                        R18 K34 [UDim2.fromOffset]
       74 MOVE                             R19 R3
       75 LOADN                            R20 12
       76 CALL                             R18 2 1
       77 JUMP                             ; [+7]
       78 GETIMPORT                        R18 K35 [UDim2.new]
       80 LOADK                            R19 K12 [0.5]
       81 LOADN                            R20 0
       82 LOADN                            R21 0
       83 LOADN                            R22 12
       84 CALL                             R18 4 1
       85 SETTABLEKS                       R18 R17 K28 ["Position"]
       87 GETIMPORT                        R18 K34 [UDim2.fromOffset]
       89 LOADN                            R19 2048
       90 LOADN                            R20 0
       91 CALL                             R18 2 1
       92 SETTABLEKS                       R18 R17 K19 ["Size"]
       94 GETIMPORT                        R18 K38 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R18 R17 K29 ["AutomaticSize"]
       98 DUPTABLE                         R18 K40 [{"Content"}]
       99 GETUPVAL                         R19 0
      100 GETTABLEKS                       R19 R19 K13 ["createElement"]
      102 LOADK                            R20 K18 ["Frame"]
      103 DUPTABLE                         R21 K41 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ref"]}]
      104 SETTABLEKS                       R10 R21 K27 ["AnchorPoint"]
      106 JUMPIFNOT                        R9 ; [+6]
      107 GETIMPORT                        R22 K26 [UDim2.fromScale]
      109 LOADN                            R23 0
      110 LOADN                            R24 0
      111 CALL                             R22 2 1
      112 JUMP                             ; [+5]
      113 GETIMPORT                        R22 K26 [UDim2.fromScale]
      115 LOADK                            R23 K12 [0.5]
      116 LOADN                            R24 0
      117 CALL                             R22 2 1
      118 SETTABLEKS                       R22 R21 K28 ["Position"]
      120 GETIMPORT                        R22 K34 [UDim2.fromOffset]
      122 LOADN                            R23 0
      123 LOADN                            R24 0
      124 CALL                             R22 2 1
      125 SETTABLEKS                       R22 R21 K19 ["Size"]
      127 GETIMPORT                        R22 K43 [Enum.AutomaticSize.XY]
      129 SETTABLEKS                       R22 R21 K29 ["AutomaticSize"]
      131 SETTABLEKS                       R7 R21 K22 ["ref"]
      133 GETTABLEKS                       R22 R0 K44 ["children"]
      135 CALL                             R19 3 1
      136 SETTABLEKS                       R19 R18 K39 ["Content"]
      138 CALL                             R15 3 1
      139 SETTABLEKS                       R15 R14 K16 ["Host"]
      141 CALL                             R11 3 -1
      142 RETURN                           R11 -1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"nodeLibrary", "renderProperty"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["NODE_LIBRARY"]
        4 GETTABLEKS                       R1 R1 K0 ["nodeLibrary"]
        6 SETTABLEKS                       R1 R0 K0 ["nodeLibrary"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["renderProperty"]
       11 SETTABLEKS                       R1 R0 K1 ["renderProperty"]
       13 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["getState"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 0
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["isSynthetic"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+3]
       18 GETUPVAL                         R2 0
       19 LOADB                            R3 1
       20 SETTABLE                         R3 R0 R2
       21 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K5 [{[1], ["selectionStyle"] = "emphasis", ["activeStyle"] = "shift400"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeStateIds"]
        4 RETURN                           R0 1

PROTO_9:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["Vector2"] ; [+12]
        8 DUPTABLE                         R2 K5 [{"x", "y"}]
        9 GETTABLEKS                       R3 R0 K6 ["X"]
       11 SETTABLEKS                       R3 R2 K3 ["x"]
       13 GETTABLEKS                       R3 R0 K7 ["Y"]
       15 SETTABLEKS                       R3 R2 K4 ["y"]
       17 MOVE                             R1 R2
       18 JUMP                             ; [+14]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K8 ["current"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K9 ["newStatePosition"]
       25 JUMPIFNOT                        R2 ; [+4]
       26 MOVE                             R4 R2
       27 LOADB                            R5 0
       28 CALL                             R4 1 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 CALL                             R3 1 1
       32 MOVE                             R1 R3
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K10 ["findFreePosition"]
       36 GETUPVAL                         R3 3
       37 MOVE                             R4 R1
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K11 ["createState"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K12 ["nextStateName"]
       46 GETUPVAL                         R4 3
       47 CALL                             R3 1 1
       48 MOVE                             R4 R1
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["getState"]
        9 GETUPVAL                         R8 1
       10 MOVE                             R9 R6
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+13]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K1 ["isSynthetic"]
       16 MOVE                             R9 R7
       17 CALL                             R8 1 1
       18 JUMPIF                           R8 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R6
       23 GETIMPORT                        R8 K4 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R2 2 ; [-21]
       28 LENGTH                           R2 R1
       29 LOADN                            R3 0
       30 JUMPIFNOTLT                      R3 R2 ; [+6]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K5 ["deleteStates"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createTransition"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createStateAndTransition"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["nextStateName"]
        7 GETUPVAL                         R5 2
        8 CALL                             R4 1 1
        9 DUPTABLE                         R5 K4 [{"x", "y"}]
       10 GETTABLEKS                       R6 R1 K5 ["X"]
       12 SETTABLEKS                       R6 R5 K2 ["x"]
       14 GETTABLEKS                       R6 R1 K6 ["Y"]
       16 SETTABLEKS                       R6 R5 K3 ["y"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getState"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["isSynthetic"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["getState"]
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R0
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+12]
       23 GETTABLEKS                       R4 R3 K2 ["isStart"]
       25 JUMPIFNOT                        R4 ; [+9]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K3 ["hasOutgoingTransition"]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R0
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADB                            R4 0
       34 RETURN                           R4 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K4 ["hasTransition"]
       38 GETUPVAL                         R6 1
       39 MOVE                             R7 R0
       40 MOVE                             R8 R1
       41 CALL                             R5 3 1
       42 NOT                              R4 R5
       43 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasTransition"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useContext"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K5 ["NodeLibraryContext"]
       28 GETTABLEKS                       R5 R5 K4 ["Context"]
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 1
       39 GETTABLEKS                       R8 R4 K7 ["renderProperty"]
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 6
       45 GETTABLEKS                       R6 R6 K8 ["useSignalState"]
       47 GETTABLEKS                       R7 R3 K9 ["observeData"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R0 K10 ["debugData"]
       52 JUMPIFNOT                        R7 ; [+3]
       53 GETTABLEKS                       R8 R7 K11 ["activeStateId"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R8
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R6
       64 NEWTABLE                         R11 0 2
       66 MOVE                             R12 R8
       67 MOVE                             R13 R6
       68 SETLIST                          R11 R12 2 [1]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       74 NEWCLOSURE                       R11 P2
       75 CAPTURE                          VAL R9
       76 NEWTABLE                         R12 0 3
       78 MOVE                             R13 R9
       79 LOADK                            R14 K12 ["emphasis"]
       80 LOADK                            R15 K13 ["shift400"]
       81 SETLIST                          R12 R13 3 [1]
       83 CALL                             R10 2 1
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R11 R11 K14 ["useRef"]
       87 LOADNIL                          R12
       88 CALL                             R11 1 1
       89 GETUPVAL                         R12 8
       90 GETTABLEKS                       R12 R12 K15 ["useEventCallback"]
       92 NEWCLOSURE                       R13 P3
       93 CAPTURE                          VAL R11
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R3
       98 CALL                             R12 1 1
       99 GETUPVAL                         R13 8
      100 GETTABLEKS                       R13 R13 K15 ["useEventCallback"]
      102 NEWCLOSURE                       R14 P4
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R3
      106 CALL                             R13 1 1
      107 GETUPVAL                         R14 8
      108 GETTABLEKS                       R14 R14 K15 ["useEventCallback"]
      110 NEWCLOSURE                       R15 P5
      111 CAPTURE                          VAL R3
      112 CALL                             R14 1 1
      113 GETUPVAL                         R15 8
      114 GETTABLEKS                       R15 R15 K15 ["useEventCallback"]
      116 NEWCLOSURE                       R16 P6
      117 CAPTURE                          VAL R3
      118 CAPTURE                          UPVAL U9
      119 CAPTURE                          VAL R6
      120 CALL                             R15 1 1
      121 GETUPVAL                         R16 8
      122 GETTABLEKS                       R16 R16 K15 ["useEventCallback"]
      124 NEWCLOSURE                       R17 P7
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          VAL R6
      127 CALL                             R16 1 1
      128 GETUPVAL                         R17 8
      129 GETTABLEKS                       R17 R17 K15 ["useEventCallback"]
      131 NEWCLOSURE                       R18 P8
      132 CAPTURE                          UPVAL U7
      133 CAPTURE                          VAL R6
      134 CALL                             R17 1 1
      135 DUPTABLE                         R18 K17 [{"Buttons"}]
      136 GETUPVAL                         R19 1
      137 GETTABLEKS                       R19 R19 K18 ["createElement"]
      139 GETUPVAL                         R20 10
      140 GETTABLEKS                       R20 R20 K19 ["View"]
      142 DUPTABLE                         R21 K22 [{["tag"] = "row auto-xy gap-small padding-small radius-small bg-surface-200 stroke-muted"}]
      143 DUPTABLE                         R22 K25 [{"BackButton", "CreateState"}]
      144 GETUPVAL                         R23 1
      145 GETTABLEKS                       R23 R23 K18 ["createElement"]
      147 GETUPVAL                         R24 10
      148 GETTABLEKS                       R24 R24 K26 ["Button"]
      150 DUPTABLE                         R25 K36 [{["tag"] = "auto-xy", ["text"], ["icon"] = "arrow-large-left", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 1}]
      151 GETUPVAL                         R27 11
      152 CALL                             R27 0 1
      153 JUMPIFNOT                        R27 ; [+21]
      154 LOADK                            R28 K37 ["Common"]
      155 LOADK                            R29 K38 ["StateMachineGraphing"]
      156 LOADK                            R30 K39 ["Toolbar"]
      157 LOADK                            R31 K40 ["BackTo"]
      158 DUPTABLE                         R32 K42 [{"graphName"}]
      159 GETTABLEKS                       R33 R0 K43 ["backLabel"]
      161 JUMPIF                           R33 ; [+7]
      162 LOADK                            R35 K37 ["Common"]
      163 LOADK                            R36 K38 ["StateMachineGraphing"]
      164 LOADK                            R37 K39 ["Toolbar"]
      165 LOADK                            R38 K44 ["DefaultGraphName"]
      166 NAMECALL                         R33 R1 K45 ["getExternalText"]
      168 CALL                             R33 5 1
      169 SETTABLEKS                       R33 R32 K41 ["graphName"]
      171 NAMECALL                         R26 R1 K45 ["getExternalText"]
      173 CALL                             R26 6 1
      174 JUMP                             ; [+7]
      175 LOADK                            R26 K46 ["Back to %*"]
      176 GETTABLEKS                       R29 R0 K43 ["backLabel"]
      178 ORK                              R28 R29 K47 ["Graph"]
      179 NAMECALL                         R26 R26 K48 ["format"]
      181 CALL                             R26 2 1
      182 SETTABLEKS                       R26 R25 K28 ["text"]
      184 GETUPVAL                         R26 10
      185 GETTABLEKS                       R26 R26 K49 ["Enums"]
      187 GETTABLEKS                       R26 R26 K50 ["InputSize"]
      189 GETTABLEKS                       R26 R26 K51 ["Small"]
      191 SETTABLEKS                       R26 R25 K31 ["size"]
      193 GETUPVAL                         R26 10
      194 GETTABLEKS                       R26 R26 K49 ["Enums"]
      196 GETTABLEKS                       R26 R26 K52 ["ButtonVariant"]
      198 GETTABLEKS                       R26 R26 K53 ["Standard"]
      200 SETTABLEKS                       R26 R25 K32 ["variant"]
      202 GETTABLEKS                       R26 R2 K54 ["close"]
      204 SETTABLEKS                       R26 R25 K33 ["onActivated"]
      206 CALL                             R23 2 1
      207 SETTABLEKS                       R23 R22 K23 ["BackButton"]
      209 GETUPVAL                         R23 1
      210 GETTABLEKS                       R23 R23 K18 ["createElement"]
      212 GETUPVAL                         R24 10
      213 GETTABLEKS                       R24 R24 K26 ["Button"]
      215 DUPTABLE                         R25 K57 [{["tag"] = "auto-xy", ["text"], ["icon"] = "plus-large", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 2}]
      216 GETUPVAL                         R27 11
      217 CALL                             R27 0 1
      218 JUMPIFNOT                        R27 ; [+8]
      219 LOADK                            R28 K37 ["Common"]
      220 LOADK                            R29 K38 ["StateMachineGraphing"]
      221 LOADK                            R30 K39 ["Toolbar"]
      222 LOADK                            R31 K24 ["CreateState"]
      223 NAMECALL                         R26 R1 K45 ["getExternalText"]
      225 CALL                             R26 5 1
      226 JUMP                             ; [+1]
      227 LOADK                            R26 K58 ["Create State"]
      228 SETTABLEKS                       R26 R25 K28 ["text"]
      230 GETUPVAL                         R26 10
      231 GETTABLEKS                       R26 R26 K49 ["Enums"]
      233 GETTABLEKS                       R26 R26 K50 ["InputSize"]
      235 GETTABLEKS                       R26 R26 K51 ["Small"]
      237 SETTABLEKS                       R26 R25 K31 ["size"]
      239 GETUPVAL                         R26 10
      240 GETTABLEKS                       R26 R26 K49 ["Enums"]
      242 GETTABLEKS                       R26 R26 K52 ["ButtonVariant"]
      244 GETTABLEKS                       R26 R26 K53 ["Standard"]
      246 SETTABLEKS                       R26 R25 K32 ["variant"]
      248 SETTABLEKS                       R12 R25 K33 ["onActivated"]
      250 CALL                             R23 2 1
      251 SETTABLEKS                       R23 R22 K24 ["CreateState"]
      253 CALL                             R19 3 1
      254 SETTABLEKS                       R19 R18 K16 ["Buttons"]
      256 GETUPVAL                         R20 12
      257 CALL                             R20 0 1
      258 JUMPIFNOT                        R20 ; [+8]
      259 GETUPVAL                         R19 1
      260 GETTABLEKS                       R19 R19 K18 ["createElement"]
      262 GETUPVAL                         R20 13
      263 LOADNIL                          R21
      264 MOVE                             R22 R18
      265 CALL                             R19 3 1
      266 JUMP                             ; [+34]
      267 GETUPVAL                         R19 1
      268 GETTABLEKS                       R19 R19 K18 ["createElement"]
      270 LOADK                            R20 K59 ["Frame"]
      271 DUPTABLE                         R21 K67 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      272 GETIMPORT                        R22 K70 [Vector2.new]
      274 LOADK                            R23 K71 [0.5]
      275 LOADN                            R24 0
      276 CALL                             R22 2 1
      277 SETTABLEKS                       R22 R21 K60 ["AnchorPoint"]
      279 GETIMPORT                        R22 K73 [UDim2.new]
      281 LOADK                            R23 K71 [0.5]
      282 LOADN                            R24 0
      283 LOADN                            R25 0
      284 LOADN                            R26 12
      285 CALL                             R22 4 1
      286 SETTABLEKS                       R22 R21 K61 ["Position"]
      288 GETIMPORT                        R22 K75 [UDim2.fromOffset]
      290 LOADN                            R23 0
      291 LOADN                            R24 0
      292 CALL                             R22 2 1
      293 SETTABLEKS                       R22 R21 K62 ["Size"]
      295 GETIMPORT                        R22 K78 [Enum.AutomaticSize.XY]
      297 SETTABLEKS                       R22 R21 K63 ["AutomaticSize"]
      299 MOVE                             R22 R18
      300 CALL                             R19 3 1
      301 GETUPVAL                         R20 1
      302 GETTABLEKS                       R20 R20 K18 ["createElement"]
      304 GETUPVAL                         R21 10
      305 GETTABLEKS                       R21 R21 K19 ["View"]
      307 DUPTABLE                         R22 K80 [{["tag"] = "size-full-full"}]
      308 DUPTABLE                         R23 K82 [{"Contexts"}]
      309 GETUPVAL                         R24 1
      310 GETTABLEKS                       R24 R24 K18 ["createElement"]
      312 GETUPVAL                         R25 14
      313 GETTABLEKS                       R25 R25 K83 ["Provider"]
      315 DUPTABLE                         R26 K85 [{"children"}]
      316 GETUPVAL                         R27 1
      317 GETTABLEKS                       R27 R27 K18 ["createElement"]
      319 GETUPVAL                         R28 15
      320 GETTABLEKS                       R28 R28 K83 ["Provider"]
      322 DUPTABLE                         R29 K90 [{"onCreateTransition", "onCreateStateAndTransition", "isValidTarget", "hasReverseTransition", "children"}]
      323 SETTABLEKS                       R14 R29 K86 ["onCreateTransition"]
      325 SETTABLEKS                       R15 R29 K87 ["onCreateStateAndTransition"]
      327 SETTABLEKS                       R16 R29 K88 ["isValidTarget"]
      329 SETTABLEKS                       R17 R29 K89 ["hasReverseTransition"]
      331 GETUPVAL                         R30 1
      332 GETTABLEKS                       R30 R30 K18 ["createElement"]
      334 GETUPVAL                         R31 8
      335 GETTABLEKS                       R31 R31 K91 ["ContextStack"]
      337 DUPTABLE                         R32 K93 [{"providers"}]
      338 NEWTABLE                         R33 0 5
      340 GETUPVAL                         R34 1
      341 GETTABLEKS                       R34 R34 K18 ["createElement"]
      343 GETUPVAL                         R35 4
      344 GETTABLEKS                       R35 R35 K5 ["NodeLibraryContext"]
      346 GETTABLEKS                       R35 R35 K83 ["Provider"]
      348 DUPTABLE                         R36 K95 [{"value"}]
      349 SETTABLEKS                       R5 R36 K94 ["value"]
      351 CALL                             R34 2 1
      352 GETUPVAL                         R35 1
      353 GETTABLEKS                       R35 R35 K18 ["createElement"]
      355 GETUPVAL                         R36 4
      356 GETTABLEKS                       R36 R36 K96 ["ContextMenuOverrideContext"]
      358 GETTABLEKS                       R36 R36 K4 ["Context"]
      360 GETTABLEKS                       R36 R36 K83 ["Provider"]
      362 DUPTABLE                         R37 K95 [{"value"}]
      363 GETUPVAL                         R38 16
      364 SETTABLEKS                       R38 R37 K94 ["value"]
      366 CALL                             R35 2 1
      367 GETUPVAL                         R36 1
      368 GETTABLEKS                       R36 R36 K18 ["createElement"]
      370 GETUPVAL                         R37 17
      371 GETTABLEKS                       R37 R37 K4 ["Context"]
      373 GETTABLEKS                       R37 R37 K83 ["Provider"]
      375 DUPTABLE                         R38 K95 [{"value"}]
      376 SETTABLEKS                       R10 R38 K94 ["value"]
      378 CALL                             R36 2 1
      379 GETUPVAL                         R37 1
      380 GETTABLEKS                       R37 R37 K18 ["createElement"]
      382 GETUPVAL                         R38 18
      383 DUPTABLE                         R39 K101 [{"onCreateState", "onDeleteStates", "parameters", "parameterGraphContext"}]
      384 SETTABLEKS                       R12 R39 K97 ["onCreateState"]
      386 SETTABLEKS                       R13 R39 K98 ["onDeleteStates"]
      388 GETTABLEKS                       R40 R0 K99 ["parameters"]
      390 SETTABLEKS                       R40 R39 K99 ["parameters"]
      392 GETTABLEKS                       R40 R0 K100 ["parameterGraphContext"]
      394 SETTABLEKS                       R40 R39 K100 ["parameterGraphContext"]
      396 CALL                             R37 2 1
      397 GETUPVAL                         R38 1
      398 GETTABLEKS                       R38 R38 K18 ["createElement"]
      400 GETUPVAL                         R39 19
      401 GETTABLEKS                       R39 R39 K83 ["Provider"]
      403 NEWTABLE                         R40 0 0
      405 CALL                             R38 2 -1
      406 SETLIST                          R33 R34 -1 [1]
      408 SETTABLEKS                       R33 R32 K92 ["providers"]
      410 DUPTABLE                         R33 K102 [{"Graph"}]
      411 GETUPVAL                         R34 1
      412 GETTABLEKS                       R34 R34 K18 ["createElement"]
      414 GETUPVAL                         R35 4
      415 GETTABLEKS                       R35 R35 K103 ["GraphingCanvas"]
      417 DUPTABLE                         R36 K106 [{"initialGraphRect", "childrenBehindNodes"}]
      418 GETUPVAL                         R37 20
      419 SETTABLEKS                       R37 R36 K104 ["initialGraphRect"]
      421 GETUPVAL                         R37 1
      422 GETTABLEKS                       R37 R37 K18 ["createElement"]
      424 GETUPVAL                         R38 21
      425 DUPTABLE                         R39 K109 [{"fillTransitionId", "fillFraction"}]
      426 JUMPIFNOT                        R7 ; [+3]
      427 GETTABLEKS                       R40 R7 K110 ["activeTransitionId"]
      429 JUMP                             ; [+1]
      430 LOADNIL                          R40
      431 SETTABLEKS                       R40 R39 K107 ["fillTransitionId"]
      433 JUMPIFNOT                        R7 ; [+4]
      434 GETTABLEKS                       R41 R7 K112 ["transitionProgress"]
      436 ORK                              R40 R41 K111 [0]
      437 JUMP                             ; [+1]
      438 LOADN                            R40 0
      439 SETTABLEKS                       R40 R39 K108 ["fillFraction"]
      441 CALL                             R37 2 1
      442 SETTABLEKS                       R37 R36 K105 ["childrenBehindNodes"]
      444 GETUPVAL                         R37 1
      445 GETTABLEKS                       R37 R37 K18 ["createElement"]
      447 GETUPVAL                         R38 1
      448 GETTABLEKS                       R38 R38 K113 ["Fragment"]
      450 LOADNIL                          R39
      451 GETTABLEKS                       R40 R0 K84 ["children"]
      453 CALL                             R37 3 1
      454 GETUPVAL                         R38 1
      455 GETTABLEKS                       R38 R38 K18 ["createElement"]
      457 GETUPVAL                         R39 22
      458 DUPTABLE                         R40 K115 [{"getterRef"}]
      459 SETTABLEKS                       R11 R40 K114 ["getterRef"]
      461 CALL                             R38 2 1
      462 MOVE                             R39 R19
      463 CALL                             R34 5 1
      464 SETTABLEKS                       R34 R33 K47 ["Graph"]
      466 CALL                             R30 3 1
      467 SETTABLEKS                       R30 R29 K84 ["children"]
      469 CALL                             R27 2 1
      470 SETTABLEKS                       R27 R26 K84 ["children"]
      472 CALL                             R24 2 1
      473 SETTABLEKS                       R24 R23 K81 ["Contexts"]
      475 CALL                             R20 3 -1
      476 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["Signals"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K13 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K15 ["StateMachineConnectContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Components"]
       67 GETTABLEKS                       R10 R10 K17 ["StateMachineContextMenu"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K18 ["Data"]
       74 GETTABLEKS                       R11 R11 K19 ["StateMachineData"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K14 ["Contexts"]
       81 GETTABLEKS                       R12 R12 K20 ["StateMachineDataContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K16 ["Components"]
       88 GETTABLEKS                       R13 R13 K21 ["StateMachineEdges"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K14 ["Contexts"]
       95 GETTABLEKS                       R14 R14 K22 ["StateMachineGeometryContext"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K14 ["Contexts"]
      102 GETTABLEKS                       R15 R15 K23 ["StateMachineGraphContext"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K14 ["Contexts"]
      109 GETTABLEKS                       R16 R16 K24 ["StateMachineNavContext"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K14 ["Contexts"]
      116 GETTABLEKS                       R17 R17 K25 ["StateMachineNodeLibrary"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K14 ["Contexts"]
      123 GETTABLEKS                       R18 R18 K26 ["StateMachinePreviewContext"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K14 ["Contexts"]
      130 GETTABLEKS                       R19 R19 K27 ["StateMachineSelectionContext"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K18 ["Data"]
      137 GETTABLEKS                       R20 R20 K28 ["StateMachineTypes"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K5 [require]
      142 GETTABLEKS                       R21 R0 K29 ["Util"]
      144 GETTABLEKS                       R21 R21 K30 ["StateMachineUtils"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K5 [require]
      149 GETTABLEKS                       R22 R0 K31 ["Flags"]
      151 GETTABLEKS                       R22 R22 K32 ["getFFlagAnimGraphUI_Localization2"]
      153 CALL                             R21 1 1
      154 GETIMPORT                        R22 K5 [require]
      156 GETTABLEKS                       R23 R0 K31 ["Flags"]
      158 GETTABLEKS                       R23 R23 K33 ["getFFlagAnimGraphUI_ToolbarAvoidParameterPane"]
      160 CALL                             R22 1 1
      161 DUPTABLE                         R23 K35 [{"contextMenuComponent"}]
      162 SETTABLEKS                       R9 R23 K34 ["contextMenuComponent"]
      164 GETIMPORT                        R24 K38 [Rect.new]
      166 LOADN                            R25 0
      167 LOADN                            R26 -60
      168 LOADN                            R27 0
      169 LOADN                            R28 -60
      170 CALL                             R24 4 1
      171 DUPCLOSURE                       R25 K39 [PROTO_0]
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R3
      174 DUPCLOSURE                       R26 K40 [PROTO_4]
      175 CAPTURE                          VAL R4
      176 DUPCLOSURE                       R27 K41 [PROTO_5]
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R26
      181 DUPCLOSURE                       R28 K42 [PROTO_15]
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R27
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R25
      205 RETURN                           R28 1
