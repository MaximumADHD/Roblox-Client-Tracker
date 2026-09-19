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
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 LOADNIL                          R1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["transitions"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["fromStateId"]
       12 JUMPIFNOTEQ                      R7 R0 ; [+3]
       14 MOVE                             R1 R6
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R2 2 ; [-7]
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 1
       22 LOADN                            R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R3 R1 K2 ["id"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["startStateId"]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 4
       18 LOADNIL                          R2
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 LOADN                            R2 0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTransition"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 DIV                              R2 R3 R4
        6 FASTCALL2K                       MATH_MIN R2 K0 ; [+4]
        8 LOADK                            R3 K0 [1]
        9 GETIMPORT                        R1 K3 [math.min]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 LOADN                            R2 1
       16 JUMPIFNOTLE                      R2 R1 ; [+13]
       18 GETUPVAL                         R2 3
       19 LOADNIL                          R3
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 LOADN                            R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 4
       25 JUMPIFEQKNIL                     R2 ; [+4]
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R3 4
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETTABLEKS                       R2 R0 K0 ["Length"]
       10 JUMP                             ; [+1]
       11 LOADN                            R2 0
       12 FASTCALL2K                       MATH_MAX R2 K1 ; [+4]
       14 LOADK                            R3 K1 [0.001]
       15 GETIMPORT                        R1 K4 [math.max]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R0 ; [+3]
       19 GETTABLEKS                       R2 R0 K5 ["toStateId"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 LOADN                            R3 0
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K6 ["Heartbeat"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U5
       34 NAMECALL                         R4 R4 K7 ["Connect"]
       36 CALL                             R4 2 1
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R4
       39 CLOSEUPVALS                      R3
       40 RETURN                           R5 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 JUMPIFEQKNIL                     R2 ; [+11]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["getTransition"]
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 2
       14 CALL                             R2 2 1
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 GETTABLEKS                       R1 R2 K1 ["toStateId"]
       19 JUMPIFEQKNIL                     R1 ; [+3]
       21 LOADB                            R2 1
       22 SETTABLE                         R2 R0 R1
       23 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R0 K5 [{[1], ["selectionStyle"] = "emphasis", ["activeStyle"] = "shift400"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeStateIds"]
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["newStatePosition"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 MOVE                             R2 R0
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["findFreePosition"]
       16 GETUPVAL                         R3 3
       17 MOVE                             R4 R1
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R2 R2 K3 ["createState"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K4 ["nextStateName"]
       26 GETUPVAL                         R4 3
       27 CALL                             R3 1 1
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createTransition"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasTransition"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       17 GETTABLEKS                       R4 R2 K3 ["observeData"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useState"]
       23 LOADB                            R5 0
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["useState"]
       28 LOADNIL                          R7
       29 CALL                             R6 1 2
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K4 ["useState"]
       33 LOADNIL                          R9
       34 CALL                             R8 1 2
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K4 ["useState"]
       38 LOADN                            R11 0
       39 CALL                             R10 1 2
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R12 R12 K5 ["useEventCallback"]
       43 NEWCLOSURE                       R13 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R11
       46 CAPTURE                          VAL R9
       47 CALL                             R12 1 1
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R13 R13 K5 ["useEventCallback"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R12
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R11
       58 CALL                             R13 1 1
       59 GETUPVAL                         R14 4
       60 GETTABLEKS                       R14 R14 K5 ["useEventCallback"]
       62 NEWCLOSURE                       R15 P2
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R6
       65 CALL                             R14 1 1
       66 GETUPVAL                         R15 4
       67 GETTABLEKS                       R15 R15 K5 ["useEventCallback"]
       69 NEWCLOSURE                       R16 P3
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R3
       72 CALL                             R15 1 1
       73 GETUPVAL                         R16 0
       74 GETTABLEKS                       R16 R16 K6 ["useEffect"]
       76 NEWCLOSURE                       R17 P4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R15
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R7
       83 NEWTABLE                         R18 0 2
       85 MOVE                             R19 R8
       86 MOVE                             R20 R15
       87 SETLIST                          R18 R19 2 [1]
       89 CALL                             R16 2 0
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R16 R16 K7 ["useMemo"]
       93 NEWCLOSURE                       R17 P5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R8
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R18 0 4
      101 MOVE                             R19 R4
      102 MOVE                             R20 R6
      103 MOVE                             R21 R8
      104 MOVE                             R22 R3
      105 SETLIST                          R18 R19 4 [1]
      107 CALL                             R16 2 1
      108 GETUPVAL                         R17 0
      109 GETTABLEKS                       R17 R17 K7 ["useMemo"]
      111 NEWCLOSURE                       R18 P6
      112 CAPTURE                          VAL R16
      113 NEWTABLE                         R19 0 3
      115 MOVE                             R20 R16
      116 LOADK                            R21 K8 ["emphasis"]
      117 LOADK                            R22 K9 ["shift400"]
      118 SETLIST                          R19 R20 3 [1]
      120 CALL                             R17 2 1
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K10 ["useRef"]
      124 LOADNIL                          R19
      125 CALL                             R18 1 1
      126 GETUPVAL                         R19 4
      127 GETTABLEKS                       R19 R19 K5 ["useEventCallback"]
      129 NEWCLOSURE                       R20 P7
      130 CAPTURE                          VAL R18
      131 CAPTURE                          UPVAL U7
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R2
      135 CALL                             R19 1 1
      136 GETUPVAL                         R20 4
      137 GETTABLEKS                       R20 R20 K5 ["useEventCallback"]
      139 NEWCLOSURE                       R21 P8
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R2
      143 CALL                             R20 1 1
      144 GETUPVAL                         R21 4
      145 GETTABLEKS                       R21 R21 K5 ["useEventCallback"]
      147 NEWCLOSURE                       R22 P9
      148 CAPTURE                          VAL R2
      149 CALL                             R21 1 1
      150 GETUPVAL                         R22 4
      151 GETTABLEKS                       R22 R22 K5 ["useEventCallback"]
      153 NEWCLOSURE                       R23 P10
      154 CAPTURE                          VAL R2
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          VAL R3
      157 CALL                             R22 1 1
      158 GETUPVAL                         R23 4
      159 GETTABLEKS                       R23 R23 K5 ["useEventCallback"]
      161 NEWCLOSURE                       R24 P11
      162 CAPTURE                          UPVAL U5
      163 CAPTURE                          VAL R3
      164 CALL                             R23 1 1
      165 GETUPVAL                         R24 4
      166 GETTABLEKS                       R24 R24 K5 ["useEventCallback"]
      168 NEWCLOSURE                       R25 P12
      169 CAPTURE                          UPVAL U5
      170 CAPTURE                          VAL R3
      171 CALL                             R24 1 1
      172 GETUPVAL                         R25 0
      173 GETTABLEKS                       R25 R25 K11 ["createElement"]
      175 LOADK                            R26 K12 ["Frame"]
      176 DUPTABLE                         R27 K21 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      177 GETIMPORT                        R28 K24 [Vector2.new]
      179 LOADK                            R29 K25 [0.5]
      180 LOADN                            R30 0
      181 CALL                             R28 2 1
      182 SETTABLEKS                       R28 R27 K13 ["AnchorPoint"]
      184 GETIMPORT                        R28 K27 [UDim2.new]
      186 LOADK                            R29 K25 [0.5]
      187 LOADN                            R30 0
      188 LOADN                            R31 0
      189 LOADN                            R32 12
      190 CALL                             R28 4 1
      191 SETTABLEKS                       R28 R27 K14 ["Position"]
      193 GETIMPORT                        R28 K29 [UDim2.fromOffset]
      195 LOADN                            R29 0
      196 LOADN                            R30 0
      197 CALL                             R28 2 1
      198 SETTABLEKS                       R28 R27 K15 ["Size"]
      200 GETIMPORT                        R28 K32 [Enum.AutomaticSize.XY]
      202 SETTABLEKS                       R28 R27 K16 ["AutomaticSize"]
      204 DUPTABLE                         R28 K34 [{"Buttons"}]
      205 GETUPVAL                         R29 0
      206 GETTABLEKS                       R29 R29 K11 ["createElement"]
      208 GETUPVAL                         R30 8
      209 GETTABLEKS                       R30 R30 K35 ["View"]
      211 DUPTABLE                         R31 K38 [{["tag"] = "row auto-xy gap-small padding-small radius-small bg-surface-200 stroke-muted"}]
      212 DUPTABLE                         R32 K41 [{"BackButton", "CreateState"}]
      213 GETUPVAL                         R33 0
      214 GETTABLEKS                       R33 R33 K11 ["createElement"]
      216 GETUPVAL                         R34 8
      217 GETTABLEKS                       R34 R34 K42 ["Button"]
      219 DUPTABLE                         R35 K51 [{["tag"] = "auto-xy", ["text"], ["icon"] = "arrow-large-left", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 1}]
      220 LOADK                            R36 K52 ["Back to %*"]
      221 GETTABLEKS                       R39 R0 K54 ["backLabel"]
      223 ORK                              R38 R39 K53 ["Graph"]
      224 NAMECALL                         R36 R36 K55 ["format"]
      226 CALL                             R36 2 1
      227 SETTABLEKS                       R36 R35 K44 ["text"]
      229 GETUPVAL                         R36 8
      230 GETTABLEKS                       R36 R36 K56 ["Enums"]
      232 GETTABLEKS                       R36 R36 K57 ["InputSize"]
      234 GETTABLEKS                       R36 R36 K58 ["Small"]
      236 SETTABLEKS                       R36 R35 K47 ["size"]
      238 GETUPVAL                         R36 8
      239 GETTABLEKS                       R36 R36 K56 ["Enums"]
      241 GETTABLEKS                       R36 R36 K59 ["ButtonVariant"]
      243 GETTABLEKS                       R36 R36 K60 ["Standard"]
      245 SETTABLEKS                       R36 R35 K48 ["variant"]
      247 GETTABLEKS                       R36 R1 K61 ["close"]
      249 SETTABLEKS                       R36 R35 K49 ["onActivated"]
      251 CALL                             R33 2 1
      252 SETTABLEKS                       R33 R32 K39 ["BackButton"]
      254 GETUPVAL                         R33 0
      255 GETTABLEKS                       R33 R33 K11 ["createElement"]
      257 GETUPVAL                         R34 8
      258 GETTABLEKS                       R34 R34 K42 ["Button"]
      260 DUPTABLE                         R35 K65 [{["tag"] = "auto-xy", ["text"] = "Create State", ["icon"] = "plus-large", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 2}]
      261 GETUPVAL                         R36 8
      262 GETTABLEKS                       R36 R36 K56 ["Enums"]
      264 GETTABLEKS                       R36 R36 K57 ["InputSize"]
      266 GETTABLEKS                       R36 R36 K58 ["Small"]
      268 SETTABLEKS                       R36 R35 K47 ["size"]
      270 GETUPVAL                         R36 8
      271 GETTABLEKS                       R36 R36 K56 ["Enums"]
      273 GETTABLEKS                       R36 R36 K59 ["ButtonVariant"]
      275 GETTABLEKS                       R36 R36 K60 ["Standard"]
      277 SETTABLEKS                       R36 R35 K48 ["variant"]
      279 SETTABLEKS                       R19 R35 K49 ["onActivated"]
      281 CALL                             R33 2 1
      282 SETTABLEKS                       R33 R32 K40 ["CreateState"]
      284 CALL                             R29 3 1
      285 SETTABLEKS                       R29 R28 K33 ["Buttons"]
      287 CALL                             R25 3 1
      288 GETUPVAL                         R26 0
      289 GETTABLEKS                       R26 R26 K11 ["createElement"]
      291 LOADK                            R27 K12 ["Frame"]
      292 DUPTABLE                         R28 K21 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      293 GETIMPORT                        R29 K24 [Vector2.new]
      295 LOADN                            R30 1
      296 LOADN                            R31 0
      297 CALL                             R29 2 1
      298 SETTABLEKS                       R29 R28 K13 ["AnchorPoint"]
      300 GETIMPORT                        R29 K27 [UDim2.new]
      302 LOADN                            R30 1
      303 LOADN                            R31 -12
      304 LOADN                            R32 0
      305 LOADN                            R33 12
      306 CALL                             R29 4 1
      307 SETTABLEKS                       R29 R28 K14 ["Position"]
      309 GETIMPORT                        R29 K29 [UDim2.fromOffset]
      311 LOADN                            R30 0
      312 LOADN                            R31 0
      313 CALL                             R29 2 1
      314 SETTABLEKS                       R29 R28 K15 ["Size"]
      316 GETIMPORT                        R29 K32 [Enum.AutomaticSize.XY]
      318 SETTABLEKS                       R29 R28 K16 ["AutomaticSize"]
      320 DUPTABLE                         R29 K67 [{"Backing"}]
      321 GETUPVAL                         R30 0
      322 GETTABLEKS                       R30 R30 K11 ["createElement"]
      324 GETUPVAL                         R31 8
      325 GETTABLEKS                       R31 R31 K35 ["View"]
      327 DUPTABLE                         R32 K70 [{["tag"] = "col auto-xy gap-small padding-small radius-small stroke-muted", ["backgroundStyle"]}]
      328 DUPTABLE                         R33 K74 [{["Color3"], ["Transparency"] = 0}]
      329 GETIMPORT                        R34 K76 [Color3.fromRGB]
      331 LOADN                            R35 61
      332 LOADN                            R36 40
      333 LOADN                            R37 51
      334 CALL                             R34 3 1
      335 SETTABLEKS                       R34 R33 K71 ["Color3"]
      337 SETTABLEKS                       R33 R32 K69 ["backgroundStyle"]
      339 DUPTABLE                         R33 K79 [{"DebugFeedback", "Trigger"}]
      340 GETUPVAL                         R34 0
      341 GETTABLEKS                       R34 R34 K11 ["createElement"]
      343 GETUPVAL                         R35 8
      344 GETTABLEKS                       R35 R35 K80 ["Checkbox"]
      346 DUPTABLE                         R36 K84 [{["label"] = "Debug Runtime Feedback", ["isChecked"], ["onActivated"], ["size"], ["LayoutOrder"] = 1}]
      347 SETTABLEKS                       R4 R36 K83 ["isChecked"]
      349 SETTABLEKS                       R13 R36 K49 ["onActivated"]
      351 GETUPVAL                         R37 8
      352 GETTABLEKS                       R37 R37 K56 ["Enums"]
      354 GETTABLEKS                       R37 R37 K57 ["InputSize"]
      356 GETTABLEKS                       R37 R37 K58 ["Small"]
      358 SETTABLEKS                       R37 R36 K47 ["size"]
      360 CALL                             R34 2 1
      361 SETTABLEKS                       R34 R33 K77 ["DebugFeedback"]
      363 GETUPVAL                         R34 0
      364 GETTABLEKS                       R34 R34 K11 ["createElement"]
      366 GETUPVAL                         R35 8
      367 GETTABLEKS                       R35 R35 K42 ["Button"]
      369 DUPTABLE                         R36 K88 [{["width"], ["text"] = "Trigger Transition", ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2}]
      370 GETIMPORT                        R37 K90 [UDim.new]
      372 LOADN                            R38 1
      373 LOADN                            R39 0
      374 CALL                             R37 2 1
      375 SETTABLEKS                       R37 R36 K85 ["width"]
      377 GETUPVAL                         R37 8
      378 GETTABLEKS                       R37 R37 K56 ["Enums"]
      380 GETTABLEKS                       R37 R37 K57 ["InputSize"]
      382 GETTABLEKS                       R37 R37 K58 ["Small"]
      384 SETTABLEKS                       R37 R36 K47 ["size"]
      386 GETUPVAL                         R37 8
      387 GETTABLEKS                       R37 R37 K56 ["Enums"]
      389 GETTABLEKS                       R37 R37 K59 ["ButtonVariant"]
      391 GETTABLEKS                       R37 R37 K60 ["Standard"]
      393 SETTABLEKS                       R37 R36 K48 ["variant"]
      395 NOT                              R37 R4
      396 JUMPIF                           R37 ; [+4]
      397 JUMPIFNOTEQKNIL                  R8 ; [+2]
      399 LOADB                            R37 0 +1
      400 LOADB                            R37 1
      401 SETTABLEKS                       R37 R36 K87 ["isDisabled"]
      403 SETTABLEKS                       R14 R36 K49 ["onActivated"]
      405 CALL                             R34 2 1
      406 SETTABLEKS                       R34 R33 K78 ["Trigger"]
      408 CALL                             R30 3 1
      409 SETTABLEKS                       R30 R29 K66 ["Backing"]
      411 CALL                             R26 3 1
      412 GETUPVAL                         R27 0
      413 GETTABLEKS                       R27 R27 K11 ["createElement"]
      415 GETUPVAL                         R28 8
      416 GETTABLEKS                       R28 R28 K35 ["View"]
      418 DUPTABLE                         R29 K92 [{["tag"] = "size-full-full"}]
      419 DUPTABLE                         R30 K94 [{"Contexts"}]
      420 GETUPVAL                         R31 0
      421 GETTABLEKS                       R31 R31 K11 ["createElement"]
      423 GETUPVAL                         R32 9
      424 GETTABLEKS                       R32 R32 K95 ["Provider"]
      426 DUPTABLE                         R33 K97 [{"children"}]
      427 GETUPVAL                         R34 0
      428 GETTABLEKS                       R34 R34 K11 ["createElement"]
      430 GETUPVAL                         R35 10
      431 GETTABLEKS                       R35 R35 K95 ["Provider"]
      433 DUPTABLE                         R36 K102 [{"onCreateTransition", "onCreateStateAndTransition", "isValidTarget", "hasReverseTransition", "children"}]
      434 SETTABLEKS                       R21 R36 K98 ["onCreateTransition"]
      436 SETTABLEKS                       R22 R36 K99 ["onCreateStateAndTransition"]
      438 SETTABLEKS                       R23 R36 K100 ["isValidTarget"]
      440 SETTABLEKS                       R24 R36 K101 ["hasReverseTransition"]
      442 GETUPVAL                         R37 0
      443 GETTABLEKS                       R37 R37 K11 ["createElement"]
      445 GETUPVAL                         R38 4
      446 GETTABLEKS                       R38 R38 K103 ["ContextStack"]
      448 DUPTABLE                         R39 K105 [{"providers"}]
      449 NEWTABLE                         R40 0 5
      451 GETUPVAL                         R41 0
      452 GETTABLEKS                       R41 R41 K11 ["createElement"]
      454 GETUPVAL                         R42 11
      455 GETTABLEKS                       R42 R42 K106 ["NodeLibraryContext"]
      457 GETTABLEKS                       R42 R42 K95 ["Provider"]
      459 DUPTABLE                         R43 K108 [{"value"}]
      460 GETUPVAL                         R44 12
      461 GETTABLEKS                       R44 R44 K109 ["NODE_LIBRARY"]
      463 SETTABLEKS                       R44 R43 K107 ["value"]
      465 CALL                             R41 2 1
      466 GETUPVAL                         R42 0
      467 GETTABLEKS                       R42 R42 K11 ["createElement"]
      469 GETUPVAL                         R43 11
      470 GETTABLEKS                       R43 R43 K110 ["ContextMenuOverrideContext"]
      472 GETTABLEKS                       R43 R43 K1 ["Context"]
      474 GETTABLEKS                       R43 R43 K95 ["Provider"]
      476 DUPTABLE                         R44 K108 [{"value"}]
      477 GETUPVAL                         R45 13
      478 SETTABLEKS                       R45 R44 K107 ["value"]
      480 CALL                             R42 2 1
      481 GETUPVAL                         R43 0
      482 GETTABLEKS                       R43 R43 K11 ["createElement"]
      484 GETUPVAL                         R44 14
      485 GETTABLEKS                       R44 R44 K1 ["Context"]
      487 GETTABLEKS                       R44 R44 K95 ["Provider"]
      489 DUPTABLE                         R45 K108 [{"value"}]
      490 SETTABLEKS                       R17 R45 K107 ["value"]
      492 CALL                             R43 2 1
      493 GETUPVAL                         R44 0
      494 GETTABLEKS                       R44 R44 K11 ["createElement"]
      496 GETUPVAL                         R45 15
      497 DUPTABLE                         R46 K114 [{"onCreateState", "onDeleteStates", "parameters"}]
      498 SETTABLEKS                       R19 R46 K111 ["onCreateState"]
      500 SETTABLEKS                       R20 R46 K112 ["onDeleteStates"]
      502 GETTABLEKS                       R47 R0 K113 ["parameters"]
      504 SETTABLEKS                       R47 R46 K113 ["parameters"]
      506 CALL                             R44 2 1
      507 GETUPVAL                         R45 0
      508 GETTABLEKS                       R45 R45 K11 ["createElement"]
      510 GETUPVAL                         R46 16
      511 GETTABLEKS                       R46 R46 K95 ["Provider"]
      513 NEWTABLE                         R47 0 0
      515 CALL                             R45 2 -1
      516 SETLIST                          R40 R41 -1 [1]
      518 SETTABLEKS                       R40 R39 K104 ["providers"]
      520 DUPTABLE                         R40 K115 [{"Graph"}]
      521 GETUPVAL                         R41 0
      522 GETTABLEKS                       R41 R41 K11 ["createElement"]
      524 GETUPVAL                         R42 11
      525 GETTABLEKS                       R42 R42 K116 ["GraphingCanvas"]
      527 DUPTABLE                         R43 K119 [{"initialGraphRect", "childrenBehindNodes"}]
      528 GETUPVAL                         R44 17
      529 SETTABLEKS                       R44 R43 K117 ["initialGraphRect"]
      531 GETUPVAL                         R44 0
      532 GETTABLEKS                       R44 R44 K11 ["createElement"]
      534 GETUPVAL                         R45 18
      535 DUPTABLE                         R46 K122 [{"fillTransitionId", "fillFraction"}]
      536 SETTABLEKS                       R8 R46 K120 ["fillTransitionId"]
      538 SETTABLEKS                       R10 R46 K121 ["fillFraction"]
      540 CALL                             R44 2 1
      541 SETTABLEKS                       R44 R43 K118 ["childrenBehindNodes"]
      543 GETUPVAL                         R44 0
      544 GETTABLEKS                       R44 R44 K11 ["createElement"]
      546 GETUPVAL                         R45 0
      547 GETTABLEKS                       R45 R45 K123 ["Fragment"]
      549 LOADNIL                          R46
      550 GETTABLEKS                       R47 R0 K96 ["children"]
      552 CALL                             R44 3 1
      553 GETUPVAL                         R45 0
      554 GETTABLEKS                       R45 R45 K11 ["createElement"]
      556 GETUPVAL                         R46 19
      557 DUPTABLE                         R47 K125 [{"getterRef"}]
      558 SETTABLEKS                       R18 R47 K124 ["getterRef"]
      560 CALL                             R45 2 1
      561 MOVE                             R46 R25
      562 MOVE                             R47 R26
      563 CALL                             R41 6 1
      564 SETTABLEKS                       R41 R40 K53 ["Graph"]
      566 CALL                             R37 3 1
      567 SETTABLEKS                       R37 R36 K96 ["children"]
      569 CALL                             R34 2 1
      570 SETTABLEKS                       R34 R33 K96 ["children"]
      572 CALL                             R31 2 1
      573 SETTABLEKS                       R31 R30 K93 ["Contexts"]
      575 CALL                             R27 3 -1
      576 RETURN                           R27 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K14 ["StateMachineConnectContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["StateMachineContextMenu"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Data"]
       67 GETTABLEKS                       R10 R10 K18 ["StateMachineData"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K19 ["StateMachineDataContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K15 ["Components"]
       81 GETTABLEKS                       R12 R12 K20 ["StateMachineEdges"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Contexts"]
       88 GETTABLEKS                       R13 R13 K21 ["StateMachineGeometryContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Contexts"]
       95 GETTABLEKS                       R14 R14 K22 ["StateMachineGraphContext"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K13 ["Contexts"]
      102 GETTABLEKS                       R15 R15 K23 ["StateMachineNavContext"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K13 ["Contexts"]
      109 GETTABLEKS                       R16 R16 K24 ["StateMachineNodeLibrary"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K13 ["Contexts"]
      116 GETTABLEKS                       R17 R17 K25 ["StateMachinePreviewContext"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K13 ["Contexts"]
      123 GETTABLEKS                       R18 R18 K26 ["StateMachineSelectionContext"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K17 ["Data"]
      130 GETTABLEKS                       R19 R19 K27 ["StateMachineTypes"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K28 ["Util"]
      137 GETTABLEKS                       R20 R20 K29 ["StateMachineUtils"]
      139 CALL                             R19 1 1
      140 DUPTABLE                         R20 K31 [{"contextMenuComponent"}]
      141 SETTABLEKS                       R8 R20 K30 ["contextMenuComponent"]
      143 GETIMPORT                        R21 K33 [game]
      145 LOADK                            R23 K34 ["RunService"]
      146 NAMECALL                         R21 R21 K35 ["GetService"]
      148 CALL                             R21 2 1
      149 GETIMPORT                        R22 K38 [Rect.new]
      151 LOADN                            R23 0
      152 LOADN                            R24 -60
      153 LOADN                            R25 0
      154 LOADN                            R26 -60
      155 CALL                             R22 4 1
      156 DUPCLOSURE                       R23 K39 [PROTO_0]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R2
      159 DUPCLOSURE                       R24 K40 [PROTO_16]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R23
      180 RETURN                           R24 1
