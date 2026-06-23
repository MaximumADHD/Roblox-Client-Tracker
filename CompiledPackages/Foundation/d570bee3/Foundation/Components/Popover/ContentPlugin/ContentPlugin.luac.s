PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["PopoverPluginContainer"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADN                            R1 1
        8 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K7 ["BorderSizePixel"]
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K8 ["ClipsDescendants"]
       16 GETIMPORT                        R1 K11 [UDim2.fromOffset]
       18 LOADN                            R2 240
       19 LOADN                            R3 240
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K12 ["Position"]
       23 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        5 GETTABLEKS                       R2 R1 K1 ["X"]
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+9]
       10 GETTABLEKS                       R2 R1 K2 ["Y"]
       12 LOADN                            R3 0
       13 JUMPIFNOTLT                      R3 R2 ; [+4]
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["FoundationPopoverPluginOverlayMeasurement"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 2
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["side"]
       10 JUMPIF                           R1 ; [+3]
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R1 R1 K2 ["Bottom"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K3 ["align"]
       17 JUMPIF                           R2 ; [+3]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R2 R2 K4 ["Start"]
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 6
       23 GETUPVAL                         R6 7
       24 JUMPIFNOT                        R6 ; [+2]
       25 GETUPVAL                         R5 8
       26 JUMP                             ; [+1]
       27 LOADN                            R5 0
       28 CALL                             R0 5 -1
       29 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["FoundationPopoverPluginDepthPool"]
        3 JUMPIFNOT                        R5 ; [+2]
        4 GETUPVAL                         R4 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K1 ["registerPopoverAsync"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 MOVE                             R10 R4
       15 CALL                             R5 5 -1
       16 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPressedOutside"]
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIF                           R0 ; [+9]
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K2 ["PopoverContent rendered in a plugin context without onPressedOutside. In Studio, the QWidget popup will close on focus loss, but the parent's isOpen state will not update. Provide onPressedOutside to stay in sync."]
       14 NAMECALL                         R0 R0 K3 ["warning"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPressedOutside"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onPressedOutside"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        9 GETTABLEKS                       R1 R0 K1 ["X"]
       11 LOADN                            R2 0
       12 JUMPIFNOTLT                      R2 R1 ; [+9]
       14 GETTABLEKS                       R1 R0 K2 ["Y"]
       16 LOADN                            R2 0
       17 JUMPIFNOTLT                      R2 R1 ; [+4]
       19 GETUPVAL                         R1 2
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["calculatePopoverBounds"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 GETUPVAL                         R5 5
       11 JUMPIFNOT                        R5 ; [+2]
       12 GETUPVAL                         R4 6
       13 JUMP                             ; [+1]
       14 LOADN                            R4 0
       15 GETUPVAL                         R5 0
       16 CALL                             R0 5 1
       17 GETIMPORT                        R2 K3 [Vector2.new]
       19 GETUPVAL                         R4 7
       20 MULK                             R3 R4 K4 [2]
       21 GETUPVAL                         R5 7
       22 MULK                             R4 R5 K4 [2]
       23 CALL                             R2 2 1
       24 ADD                              R1 R0 R2
       25 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+12]
        6 GETUPVAL                         R0 2
        7 GETIMPORT                        R1 K2 [UDim2.new]
        9 CALL                             R1 0 -1
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 3
       12 GETIMPORT                        R1 K2 [UDim2.new]
       14 CALL                             R1 0 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 2
       18 GETIMPORT                        R1 K4 [UDim2.fromOffset]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["X"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K6 ["Y"]
       26 CALL                             R1 2 -1
       27 CALL                             R0 -1 0
       28 GETUPVAL                         R0 3
       29 GETIMPORT                        R1 K4 [UDim2.fromOffset]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K5 ["X"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K6 ["Y"]
       37 CALL                             R1 2 -1
       38 CALL                             R0 -1 0
       39 GETUPVAL                         R0 4
       40 JUMPIFNOT                        R0 ; [+5]
       41 GETUPVAL                         R0 4
       42 GETTABLEKS                       R0 R0 K7 ["setSizeAsync"]
       44 GETUPVAL                         R1 1
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["Parent"]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+32]
        9 GETUPVAL                         R0 3
       10 JUMPIFNOT                        R0 ; [+30]
       11 GETUPVAL                         R0 1
       12 GETIMPORT                        R1 K4 [Enum.AutomaticSize.None]
       14 SETTABLEKS                       R1 R0 K2 ["AutomaticSize"]
       16 GETUPVAL                         R0 1
       17 GETIMPORT                        R1 K7 [UDim2.fromOffset]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K8 ["X"]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K9 ["Y"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K10 ["Size"]
       28 GETUPVAL                         R0 1
       29 GETIMPORT                        R1 K12 [UDim2.new]
       31 CALL                             R1 0 1
       32 SETTABLEKS                       R1 R0 K13 ["Position"]
       34 GETUPVAL                         R0 1
       35 GETUPVAL                         R1 2
       36 GETTABLEKS                       R1 R1 K14 ["container"]
       38 SETTABLEKS                       R1 R0 K0 ["Parent"]
       40 RETURN                           R0 0
       41 GETUPVAL                         R0 1
       42 GETIMPORT                        R1 K16 [Enum.AutomaticSize.XY]
       44 SETTABLEKS                       R1 R0 K2 ["AutomaticSize"]
       46 GETUPVAL                         R0 1
       47 GETIMPORT                        R1 K12 [UDim2.new]
       49 CALL                             R1 0 1
       50 SETTABLEKS                       R1 R0 K10 ["Size"]
       52 GETUPVAL                         R0 1
       53 GETIMPORT                        R1 K7 [UDim2.fromOffset]
       55 LOADN                            R2 240
       56 LOADN                            R3 240
       57 CALL                             R1 2 1
       58 SETTABLEKS                       R1 R0 K13 ["Position"]
       60 GETUPVAL                         R0 1
       61 GETUPVAL                         R1 4
       62 SETTABLEKS                       R1 R0 K0 ["Parent"]
       64 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R0 K2 [{"id", "ready"}]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K3 ["popoverId"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["id"]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K1 ["ready"]
       13 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K0 ["FoundationPopoverPluginOverlayMeasurement"]
        9 JUMPIFNOT                        R5 ; [+6]
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 5
       14 CALL                             R4 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K0 ["FoundationPopoverPluginOverlayMeasurement"]
       20 JUMPIFNOT                        R6 ; [+3]
       21 GETTABLEKS                       R5 R4 K2 ["id"]
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["useContext"]
       27 GETUPVAL                         R6 5
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K1 ["useContext"]
       32 GETUPVAL                         R7 6
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 7
       35 CALL                             R7 0 1
       36 GETUPVAL                         R8 8
       37 CALL                             R8 0 1
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R11 R11 K3 ["FoundationPopoverPluginDepthPool"]
       43 JUMPIFNOT                        R11 ; [+16]
       44 GETUPVAL                         R11 9
       45 GETUPVAL                         R12 10
       46 GETTABLEKS                       R12 R12 K4 ["Popover"]
       48 DUPTABLE                         R13 K6 [{"stackAboveOwner"}]
       49 LOADB                            R14 1
       50 SETTABLEKS                       R14 R13 K5 ["stackAboveOwner"]
       52 CALL                             R11 2 1
       53 MOVE                             R10 R11
       54 GETUPVAL                         R11 11
       55 GETTABLEKS                       R11 R11 K7 ["getRelativeIndex"]
       57 MOVE                             R12 R10
       58 CALL                             R11 1 1
       59 MOVE                             R9 R11
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R11 R11 K8 ["useState"]
       63 LOADNIL                          R12
       64 CALL                             R11 1 2
       65 GETUPVAL                         R13 4
       66 GETTABLEKS                       R13 R13 K9 ["useImperativeHandle"]
       68 MOVE                             R14 R1
       69 NEWCLOSURE                       R15 P0
       70 CAPTURE                          VAL R11
       71 NEWTABLE                         R16 0 1
       73 MOVE                             R17 R11
       74 SETLIST                          R16 R17 1 [1]
       76 CALL                             R13 3 0
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R14 R14 K0 ["FoundationPopoverPluginOverlayMeasurement"]
       80 JUMPIFNOT                        R14 ; [+3]
       81 GETUPVAL                         R13 12
       82 CALL                             R13 0 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R13
       85 GETUPVAL                         R15 3
       86 GETTABLEKS                       R15 R15 K0 ["FoundationPopoverPluginOverlayMeasurement"]
       88 JUMPIFNOT                        R15 ; [+8]
       89 GETUPVAL                         R14 4
       90 GETTABLEKS                       R14 R14 K10 ["useMemo"]
       92 DUPCLOSURE                       R15 K11 [PROTO_1]
       93 NEWTABLE                         R16 0 0
       95 CALL                             R14 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R14
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R15 R15 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      101 JUMPIFNOT                        R15 ; [+11]
      102 GETUPVAL                         R15 4
      103 GETTABLEKS                       R15 R15 K12 ["useEffect"]
      105 NEWCLOSURE                       R16 P2
      106 CAPTURE                          VAL R14
      107 NEWTABLE                         R17 0 1
      109 MOVE                             R18 R14
      110 SETLIST                          R17 R18 1 [1]
      112 CALL                             R15 2 0
      113 LOADNIL                          R15
      114 LOADNIL                          R16
      115 LOADNIL                          R17
      116 LOADNIL                          R18
      117 LOADNIL                          R19
      118 LOADNIL                          R20
      119 GETUPVAL                         R21 3
      120 GETTABLEKS                       R21 R21 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      122 JUMPIFNOT                        R21 ; [+25]
      123 GETUPVAL                         R21 4
      124 GETTABLEKS                       R21 R21 K13 ["useBinding"]
      126 GETIMPORT                        R22 K16 [UDim2.new]
      128 CALL                             R22 0 -1
      129 CALL                             R21 -1 2
      130 MOVE                             R15 R21
      131 MOVE                             R16 R22
      132 GETUPVAL                         R21 4
      133 GETTABLEKS                       R21 R21 K13 ["useBinding"]
      135 GETIMPORT                        R22 K16 [UDim2.new]
      137 CALL                             R22 0 -1
      138 CALL                             R21 -1 2
      139 MOVE                             R17 R21
      140 MOVE                             R18 R22
      141 GETUPVAL                         R21 4
      142 GETTABLEKS                       R21 R21 K8 ["useState"]
      144 LOADNIL                          R22
      145 CALL                             R21 1 2
      146 MOVE                             R19 R21
      147 MOVE                             R20 R22
      148 GETTABLEKS                       R21 R8 K17 ["Size"]
      150 GETTABLEKS                       R21 R21 K18 ["Size_200"]
      152 MULK                             R22 R21 K19 [1.4142135623731]
      153 DIVK                             R23 R22 K20 [2]
      154 GETTABLEKS                       R24 R2 K21 ["backgroundStyle"]
      156 JUMPIF                           R24 ; [+6]
      157 GETTABLEKS                       R24 R8 K22 ["Color"]
      159 GETTABLEKS                       R24 R24 K23 ["Surface"]
      161 GETTABLEKS                       R24 R24 K24 ["Surface_100"]
      163 LOADNIL                          R25
      164 LOADNIL                          R26
      165 LOADNIL                          R27
      166 LOADNIL                          R28
      167 GETUPVAL                         R29 3
      168 GETTABLEKS                       R29 R29 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      170 JUMPIFNOT                        R29 ; [+40]
      171 GETTABLEKS                       R29 R2 K25 ["side"]
      173 JUMPIFNOT                        R29 ; [+3]
      174 GETTABLEKS                       R25 R2 K25 ["side"]
      176 JUMP                             ; [+3]
      177 GETUPVAL                         R29 13
      178 GETTABLEKS                       R25 R29 K26 ["Bottom"]
      180 GETTABLEKS                       R29 R2 K27 ["align"]
      182 JUMPIFNOT                        R29 ; [+3]
      183 GETTABLEKS                       R26 R2 K27 ["align"]
      185 JUMP                             ; [+3]
      186 GETUPVAL                         R29 14
      187 GETTABLEKS                       R26 R29 K28 ["Center"]
      189 FASTCALL1                        TYPE R25 ; [+3]
      190 MOVE                             R30 R25
      191 GETIMPORT                        R29 K30 [type]
      193 CALL                             R29 1 1
      194 JUMPIFNOTEQKS                    R29 K31 ["table"] ; [+4]
      196 GETTABLEKS                       R27 R25 K32 ["offset"]
      198 JUMP                             ; [+1]
      199 LOADN                            R27 0
      200 FASTCALL1                        TYPE R26 ; [+3]
      201 MOVE                             R30 R26
      202 GETIMPORT                        R29 K30 [type]
      204 CALL                             R29 1 1
      205 JUMPIFNOTEQKS                    R29 K31 ["table"] ; [+4]
      207 GETTABLEKS                       R28 R26 K32 ["offset"]
      209 JUMP                             ; [+1]
      210 LOADN                            R28 0
      211 LOADNIL                          R29
      212 LOADNIL                          R30
      213 GETUPVAL                         R31 3
      214 GETTABLEKS                       R31 R31 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      216 JUMPIFNOT                        R31 ; [+23]
      217 FASTCALL1                        TYPE R25 ; [+3]
      218 MOVE                             R32 R25
      219 GETIMPORT                        R31 K30 [type]
      221 CALL                             R31 1 1
      222 JUMPIFNOTEQKS                    R31 K31 ["table"] ; [+4]
      224 GETTABLEKS                       R29 R25 K33 ["position"]
      226 JUMP                             ; [+1]
      227 MOVE                             R29 R25
      228 FASTCALL1                        TYPE R26 ; [+3]
      229 MOVE                             R32 R26
      230 GETIMPORT                        R31 K30 [type]
      232 CALL                             R31 1 1
      233 JUMPIFNOTEQKS                    R31 K31 ["table"] ; [+4]
      235 GETTABLEKS                       R30 R26 K33 ["position"]
      237 JUMP                             ; [+42]
      238 MOVE                             R30 R26
      239 JUMP                             ; [+40]
      240 GETTABLEKS                       R32 R2 K25 ["side"]
      242 FASTCALL1                        TYPE R32 ; [+2]
      243 GETIMPORT                        R31 K30 [type]
      245 CALL                             R31 1 1
      246 JUMPIFNOTEQKS                    R31 K31 ["table"] ; [+6]
      248 GETTABLEKS                       R31 R2 K25 ["side"]
      250 GETTABLEKS                       R29 R31 K33 ["position"]
      252 JUMP                             ; [+7]
      253 GETTABLEKS                       R31 R2 K25 ["side"]
      255 JUMPIF                           R31 ; [+3]
      256 GETUPVAL                         R31 13
      257 GETTABLEKS                       R31 R31 K26 ["Bottom"]
      259 MOVE                             R29 R31
      260 GETTABLEKS                       R32 R2 K27 ["align"]
      262 FASTCALL1                        TYPE R32 ; [+2]
      263 GETIMPORT                        R31 K30 [type]
      265 CALL                             R31 1 1
      266 JUMPIFNOTEQKS                    R31 K31 ["table"] ; [+6]
      268 GETTABLEKS                       R31 R2 K27 ["align"]
      270 GETTABLEKS                       R30 R31 K33 ["position"]
      272 JUMP                             ; [+7]
      273 GETTABLEKS                       R31 R2 K27 ["align"]
      275 JUMPIF                           R31 ; [+3]
      276 GETUPVAL                         R31 14
      277 GETTABLEKS                       R31 R31 K28 ["Center"]
      279 MOVE                             R30 R31
      280 LOADN                            R31 0
      281 GETUPVAL                         R32 14
      282 GETTABLEKS                       R32 R32 K28 ["Center"]
      284 JUMPIFNOTEQ                      R30 R32 ; [+3]
      286 LOADK                            R31 K34 [0.5]
      287 JUMP                             ; [+6]
      288 GETUPVAL                         R32 14
      289 GETTABLEKS                       R32 R32 K35 ["End"]
      291 JUMPIFNOTEQ                      R30 R32 ; [+2]
      293 LOADN                            R31 1
      294 GETUPVAL                         R32 15
      295 GETTABLEKS                       R33 R6 K36 ["anchor"]
      297 CALL                             R32 1 1
      298 GETTABLEKS                       R33 R32 K37 ["widget"]
      300 GETTABLEKS                       R34 R32 K38 ["element"]
      302 GETTABLEKS                       R35 R32 K39 ["isVirtual"]
      304 GETTABLEKS                       R36 R32 K40 ["isReady"]
      306 JUMPIFNOT                        R35 ; [+2]
      307 LOADB                            R37 0
      308 JUMP                             ; [+2]
      309 GETTABLEKS                       R37 R2 K41 ["hasArrow"]
      311 LOADNIL                          R38
      312 LOADNIL                          R39
      313 LOADNIL                          R40
      314 GETUPVAL                         R41 3
      315 GETTABLEKS                       R41 R41 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      317 JUMPIFNOT                        R41 ; [+35]
      318 GETTABLEKS                       R41 R4 K42 ["ready"]
      320 GETTABLEKS                       R42 R6 K43 ["isOpen"]
      322 JUMPIFNOT                        R42 ; [+3]
      323 MOVE                             R42 R36
      324 JUMPIFNOT                        R42 ; [+1]
      325 MOVE                             R42 R41
      326 MOVE                             R38 R42
      327 MOVE                             R42 R38
      328 JUMPIFNOT                        R42 ; [+4]
      329 JUMPIFNOTEQKNIL                  R13 ; [+2]
      331 LOADB                            R42 0 +1
      332 LOADB                            R42 1
      333 MOVE                             R39 R42
      334 MOVE                             R42 R39
      335 JUMPIFNOT                        R42 ; [+4]
      336 JUMPIFEQKNIL                     R19 ; [+2]
      338 LOADB                            R42 0 +1
      339 LOADB                            R42 1
      340 MOVE                             R40 R42
      341 GETUPVAL                         R42 4
      342 GETTABLEKS                       R42 R42 K12 ["useEffect"]
      344 NEWCLOSURE                       R43 P3
      345 CAPTURE                          REF R38
      346 CAPTURE                          REF R20
      347 NEWTABLE                         R44 0 1
      349 MOVE                             R45 R38
      350 SETLIST                          R44 R45 1 [1]
      352 CALL                             R42 2 0
      353 GETUPVAL                         R42 3
      354 GETTABLEKS                       R42 R42 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      356 JUMPIFNOT                        R42 ; [+13]
      357 GETUPVAL                         R41 4
      358 GETTABLEKS                       R41 R41 K44 ["useCallback"]
      360 NEWCLOSURE                       R42 P4
      361 CAPTURE                          REF R40
      362 CAPTURE                          REF R20
      363 NEWTABLE                         R43 0 1
      365 MOVE                             R44 R40
      366 SETLIST                          R43 R44 1 [1]
      368 CALL                             R41 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R41
      371 GETUPVAL                         R42 4
      372 GETTABLEKS                       R42 R42 K10 ["useMemo"]
      374 NEWCLOSURE                       R43 P5
      375 CAPTURE                          UPVAL U16
      376 CAPTURE                          UPVAL U3
      377 CAPTURE                          REF R25
      378 CAPTURE                          VAL R2
      379 CAPTURE                          UPVAL U13
      380 CAPTURE                          UPVAL U14
      381 CAPTURE                          UPVAL U17
      382 CAPTURE                          VAL R37
      383 CAPTURE                          VAL R23
      384 NEWTABLE                         R44 0 4
      386 GETUPVAL                         R46 3
      387 GETTABLEKS                       R46 R46 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      389 JUMPIFNOT                        R46 ; [+2]
      390 MOVE                             R45 R25
      391 JUMP                             ; [+2]
      392 GETTABLEKS                       R45 R2 K25 ["side"]
      394 GETTABLEKS                       R46 R2 K27 ["align"]
      396 MOVE                             R47 R37
      397 MOVE                             R48 R23
      398 SETLIST                          R44 R45 4 [1]
      400 CALL                             R42 2 1
      401 GETUPVAL                         R43 4
      402 GETTABLEKS                       R43 R43 K44 ["useCallback"]
      404 NEWCLOSURE                       R44 P6
      405 CAPTURE                          UPVAL U3
      406 CAPTURE                          VAL R5
      407 CAPTURE                          VAL R3
      408 NEWTABLE                         R45 0 2
      410 GETTABLEKS                       R46 R3 K45 ["registerPopoverAsync"]
      412 MOVE                             R47 R5
      413 SETLIST                          R45 R46 2 [1]
      415 CALL                             R43 2 1
      416 GETUPVAL                         R44 4
      417 GETTABLEKS                       R44 R44 K46 ["useRef"]
      419 LOADB                            R45 0
      420 CALL                             R44 1 1
      421 GETUPVAL                         R45 4
      422 GETTABLEKS                       R45 R45 K12 ["useEffect"]
      424 NEWCLOSURE                       R46 P7
      425 CAPTURE                          VAL R2
      426 CAPTURE                          VAL R44
      427 CAPTURE                          UPVAL U18
      428 NEWTABLE                         R47 0 1
      430 GETTABLEKS                       R48 R2 K47 ["onPressedOutside"]
      432 SETLIST                          R47 R48 1 [1]
      434 CALL                             R45 2 0
      435 GETUPVAL                         R45 4
      436 GETTABLEKS                       R45 R45 K44 ["useCallback"]
      438 NEWCLOSURE                       R46 P8
      439 CAPTURE                          VAL R2
      440 NEWTABLE                         R47 0 1
      442 GETTABLEKS                       R48 R2 K47 ["onPressedOutside"]
      444 SETLIST                          R47 R48 1 [1]
      446 CALL                             R45 2 1
      447 GETUPVAL                         R47 3
      448 GETTABLEKS                       R47 R47 K3 ["FoundationPopoverPluginDepthPool"]
      450 JUMPIFNOT                        R47 ; [+6]
      451 JUMPIFEQKNIL                     R9 ; [+3]
      453 MOVE                             R46 R9
      454 JUMP                             ; [+3]
      455 LOADN                            R46 0
      456 JUMP                             ; [+1]
      457 MOVE                             R46 R9
      458 GETUPVAL                         R47 19
      459 DUPTABLE                         R48 K53 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position", "depth", "parentPopoverId"}]
      460 GETUPVAL                         R50 3
      461 GETTABLEKS                       R50 R50 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      463 JUMPIFNOT                        R50 ; [+2]
      464 MOVE                             R49 R38
      465 JUMP                             ; [+3]
      466 GETTABLEKS                       R50 R6 K43 ["isOpen"]
      468 AND                              R49 R50 R36
      469 SETTABLEKS                       R49 R48 K43 ["isOpen"]
      471 SETTABLEKS                       R45 R48 K48 ["onClose"]
      473 GETTABLEKS                       R49 R33 K54 ["uri"]
      475 SETTABLEKS                       R49 R48 K49 ["anchorUri"]
      477 SETTABLEKS                       R43 R48 K50 ["registerPanelAsync"]
      479 SETTABLEKS                       R42 R48 K33 ["position"]
      481 SETTABLEKS                       R46 R48 K51 ["depth"]
      483 GETUPVAL                         R50 3
      484 GETTABLEKS                       R50 R50 K3 ["FoundationPopoverPluginDepthPool"]
      486 JUMPIFNOT                        R50 ; [+2]
      487 MOVE                             R49 R5
      488 JUMP                             ; [+1]
      489 LOADNIL                          R49
      490 SETTABLEKS                       R49 R48 K52 ["parentPopoverId"]
      492 CALL                             R47 1 1
      493 LOADNIL                          R48
      494 LOADNIL                          R49
      495 GETUPVAL                         R50 3
      496 GETTABLEKS                       R50 R50 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      498 JUMPIFNOT                        R50 ; [+3]
      499 MOVE                             R48 R15
      500 MOVE                             R49 R17
      501 JUMP                             ; [+14]
      502 GETUPVAL                         R50 20
      503 GETTABLEKS                       R51 R2 K25 ["side"]
      505 GETTABLEKS                       R52 R2 K27 ["align"]
      507 MOVE                             R53 R11
      508 JUMPIFNOT                        R37 ; [+2]
      509 MOVE                             R54 R23
      510 JUMP                             ; [+1]
      511 LOADN                            R54 0
      512 MOVE                             R55 R47
      513 CALL                             R50 5 2
      514 MOVE                             R48 R50
      515 MOVE                             R49 R51
      516 GETUPVAL                         R50 3
      517 GETTABLEKS                       R50 R50 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      519 JUMPIFNOT                        R50 ; [+14]
      520 GETUPVAL                         R50 4
      521 GETTABLEKS                       R50 R50 K55 ["useLayoutEffect"]
      523 NEWCLOSURE                       R51 P9
      524 CAPTURE                          REF R40
      525 CAPTURE                          VAL R11
      526 CAPTURE                          REF R20
      527 NEWTABLE                         R52 0 2
      529 MOVE                             R53 R40
      530 MOVE                             R54 R11
      531 SETLIST                          R52 R53 2 [1]
      533 CALL                             R50 2 0
      534 GETUPVAL                         R51 3
      535 GETTABLEKS                       R51 R51 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      537 JUMPIFNOT                        R51 ; [+24]
      538 GETUPVAL                         R50 4
      539 GETTABLEKS                       R50 R50 K10 ["useMemo"]
      541 NEWCLOSURE                       R51 P10
      542 CAPTURE                          REF R19
      543 CAPTURE                          UPVAL U21
      544 CAPTURE                          REF R29
      545 CAPTURE                          REF R27
      546 CAPTURE                          REF R28
      547 CAPTURE                          VAL R37
      548 CAPTURE                          VAL R23
      549 CAPTURE                          UPVAL U17
      550 NEWTABLE                         R52 0 6
      552 MOVE                             R53 R19
      553 MOVE                             R54 R29
      554 MOVE                             R55 R27
      555 MOVE                             R56 R28
      556 MOVE                             R57 R37
      557 MOVE                             R58 R23
      558 SETLIST                          R52 R53 6 [1]
      560 CALL                             R50 2 1
      561 JUMP                             ; [+1]
      562 LOADNIL                          R50
      563 GETUPVAL                         R51 3
      564 GETTABLEKS                       R51 R51 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      566 JUMPIFNOT                        R51 ; [+36]
      567 GETUPVAL                         R51 4
      568 GETTABLEKS                       R51 R51 K55 ["useLayoutEffect"]
      570 NEWCLOSURE                       R52 P11
      571 CAPTURE                          REF R19
      572 CAPTURE                          VAL R50
      573 CAPTURE                          REF R18
      574 CAPTURE                          REF R16
      575 CAPTURE                          VAL R47
      576 NEWTABLE                         R53 0 3
      578 MOVE                             R54 R19
      579 MOVE                             R55 R50
      580 MOVE                             R56 R47
      581 SETLIST                          R53 R54 3 [1]
      583 CALL                             R51 2 0
      584 GETUPVAL                         R51 4
      585 GETTABLEKS                       R51 R51 K55 ["useLayoutEffect"]
      587 NEWCLOSURE                       R52 P12
      588 CAPTURE                          REF R39
      589 CAPTURE                          VAL R14
      590 CAPTURE                          VAL R47
      591 CAPTURE                          VAL R50
      592 CAPTURE                          VAL R13
      593 NEWTABLE                         R53 0 5
      595 MOVE                             R54 R39
      596 MOVE                             R55 R13
      597 MOVE                             R56 R47
      598 MOVE                             R57 R50
      599 MOVE                             R58 R14
      600 SETLIST                          R53 R54 5 [1]
      602 CALL                             R51 2 0
      603 JUMPIF                           R35 ; [+8]
      604 GETTABLEKS                       R53 R6 K36 ["anchor"]
      606 FASTCALL1                        TYPEOF R53 ; [+2]
      607 GETIMPORT                        R52 K57 [typeof]
      609 CALL                             R52 1 1
      610 JUMPIFEQKS                       R52 K58 ["Instance"] ; [+3]
      612 LOADNIL                          R51
      613 JUMP                             ; [+2]
      614 GETTABLEKS                       R51 R6 K36 ["anchor"]
      616 GETUPVAL                         R52 22
      617 MOVE                             R53 R49
      618 MOVE                             R54 R29
      619 GETTABLEKS                       R55 R2 K59 ["radius"]
      621 MOVE                             R56 R31
      622 MOVE                             R57 R23
      623 MOVE                             R58 R51
      624 CALL                             R52 6 1
      625 GETUPVAL                         R54 3
      626 GETTABLEKS                       R54 R54 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      628 JUMPIFNOT                        R54 ; [+8]
      629 LOADB                            R53 0
      630 JUMPIFEQKNIL                     R47 ; [+7]
      632 JUMPIFNOTEQKNIL                  R50 ; [+2]
      634 LOADB                            R53 0 +1
      635 LOADB                            R53 1
      636 JUMP                             ; [+1]
      637 LOADB                            R53 1
      638 GETUPVAL                         R55 3
      639 GETTABLEKS                       R55 R55 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      641 JUMPIFNOT                        R55 ; [+2]
      642 MOVE                             R54 R39
      643 JUMP                             ; [+4]
      644 JUMPIFNOTEQKNIL                  R47 ; [+2]
      646 LOADB                            R54 0 +1
      647 LOADB                            R54 1
      648 GETUPVAL                         R56 3
      649 GETTABLEKS                       R56 R56 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      651 JUMPIFNOT                        R56 ; [+2]
      652 MOVE                             R55 R14
      653 JUMP                             ; [+5]
      654 JUMPIFNOT                        R47 ; [+3]
      655 GETTABLEKS                       R55 R47 K60 ["container"]
      657 JUMP                             ; [+1]
      658 LOADNIL                          R55
      659 GETUPVAL                         R57 3
      660 GETTABLEKS                       R57 R57 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      662 JUMPIFNOT                        R57 ; [+14]
      663 GETUPVAL                         R56 4
      664 GETTABLEKS                       R56 R56 K10 ["useMemo"]
      666 NEWCLOSURE                       R57 P13
      667 CAPTURE                          VAL R47
      668 CAPTURE                          VAL R53
      669 NEWTABLE                         R58 0 2
      671 MOVE                             R59 R47
      672 MOVE                             R60 R53
      673 SETLIST                          R58 R59 2 [1]
      675 CALL                             R56 2 1
      676 JUMP                             ; [+1]
      677 LOADNIL                          R56
      678 JUMPIFNOT                        R54 ; [+224]
      679 JUMPIFNOT                        R55 ; [+223]
      680 GETUPVAL                         R57 23
      681 GETTABLEKS                       R57 R57 K61 ["createPortal"]
      683 GETUPVAL                         R58 4
      684 GETTABLEKS                       R58 R58 K62 ["createElement"]
      686 GETUPVAL                         R59 4
      687 GETTABLEKS                       R59 R59 K63 ["Fragment"]
      689 LOADNIL                          R60
      690 DUPTABLE                         R61 K66 [{"StyleLink", "Container"}]
      691 GETUPVAL                         R62 4
      692 GETTABLEKS                       R62 R62 K62 ["createElement"]
      694 LOADK                            R63 K64 ["StyleLink"]
      695 DUPTABLE                         R64 K68 [{"StyleSheet"}]
      696 SETTABLEKS                       R7 R64 K67 ["StyleSheet"]
      698 CALL                             R62 2 1
      699 SETTABLEKS                       R62 R61 K64 ["StyleLink"]
      701 GETUPVAL                         R62 4
      702 GETTABLEKS                       R62 R62 K62 ["createElement"]
      704 GETUPVAL                         R63 24
      705 DUPTABLE                         R64 K71 [{"AutomaticSize", "Size", "testId"}]
      706 GETUPVAL                         R66 3
      707 GETTABLEKS                       R66 R66 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      709 JUMPIFNOT                        R66 ; [+5]
      710 JUMPIFNOTEQKNIL                  R50 ; [+4]
      712 GETIMPORT                        R65 K74 [Enum.AutomaticSize.XY]
      714 JUMP                             ; [+1]
      715 LOADNIL                          R65
      716 SETTABLEKS                       R65 R64 K69 ["AutomaticSize"]
      718 GETUPVAL                         R66 3
      719 GETTABLEKS                       R66 R66 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      721 JUMPIFNOT                        R66 ; [+4]
      722 JUMPIFNOTEQKNIL                  R50 ; [+3]
      724 LOADNIL                          R65
      725 JUMP                             ; [+1]
      726 MOVE                             R65 R48
      727 SETTABLEKS                       R65 R64 K17 ["Size"]
      729 LOADK                            R66 K75 ["%*--container"]
      730 GETTABLEKS                       R68 R6 K70 ["testId"]
      732 NAMECALL                         R66 R66 K76 ["format"]
      734 CALL                             R66 2 1
      735 MOVE                             R65 R66
      736 SETTABLEKS                       R65 R64 K70 ["testId"]
      738 DUPTABLE                         R65 K80 [{"Shadow", "Arrow", "Content"}]
      739 GETUPVAL                         R66 4
      740 GETTABLEKS                       R66 R66 K62 ["createElement"]
      742 GETUPVAL                         R67 25
      743 DUPTABLE                         R68 K83 [{"contentSize", "position", "ZIndex", "testId"}]
      744 SETTABLEKS                       R49 R68 K81 ["contentSize"]
      746 GETIMPORT                        R69 K85 [UDim2.fromOffset]
      748 GETUPVAL                         R71 17
      749 DIVK                             R70 R71 K20 [2]
      750 GETUPVAL                         R73 17
      751 DIVK                             R72 R73 K20 [2]
      752 ADDK                             R71 R72 K20 [2]
      753 CALL                             R69 2 1
      754 SETTABLEKS                       R69 R68 K33 ["position"]
      756 LOADN                            R69 1
      757 SETTABLEKS                       R69 R68 K82 ["ZIndex"]
      759 LOADK                            R70 K86 ["%*--shadow"]
      760 GETTABLEKS                       R72 R6 K70 ["testId"]
      762 NAMECALL                         R70 R70 K76 ["format"]
      764 CALL                             R70 2 1
      765 MOVE                             R69 R70
      766 SETTABLEKS                       R69 R68 K70 ["testId"]
      768 CALL                             R66 2 1
      769 SETTABLEKS                       R66 R65 K77 ["Shadow"]
      771 JUMPIFNOT                        R37 ; [+25]
      772 GETUPVAL                         R66 4
      773 GETTABLEKS                       R66 R66 K62 ["createElement"]
      775 GETUPVAL                         R67 26
      776 DUPTABLE                         R68 K88 [{"size", "position", "ZIndex", "backgroundStyle", "testId"}]
      777 SETTABLEKS                       R21 R68 K87 ["size"]
      779 SETTABLEKS                       R52 R68 K33 ["position"]
      781 LOADN                            R69 2
      782 SETTABLEKS                       R69 R68 K82 ["ZIndex"]
      784 SETTABLEKS                       R24 R68 K21 ["backgroundStyle"]
      786 LOADK                            R70 K89 ["%*--arrow"]
      787 GETTABLEKS                       R72 R6 K70 ["testId"]
      789 NAMECALL                         R70 R70 K76 ["format"]
      791 CALL                             R70 2 1
      792 MOVE                             R69 R70
      793 SETTABLEKS                       R69 R68 K70 ["testId"]
      795 CALL                             R66 2 1
      796 JUMP                             ; [+1]
      797 LOADNIL                          R66
      798 SETTABLEKS                       R66 R65 K78 ["Arrow"]
      800 GETUPVAL                         R66 4
      801 GETTABLEKS                       R66 R66 K62 ["createElement"]
      803 GETUPVAL                         R67 24
      804 DUPTABLE                         R68 K94 [{"tag", "Position", "ref", "onAbsoluteSizeChanged", "backgroundStyle", "ZIndex", "testId"}]
      805 LOADK                            R70 K95 ["auto-xy %*"]
      806 GETUPVAL                         R73 27
      807 GETTABLEKS                       R74 R2 K59 ["radius"]
      809 GETTABLE                         R72 R73 R74
      810 NAMECALL                         R70 R70 K76 ["format"]
      812 CALL                             R70 2 1
      813 MOVE                             R69 R70
      814 SETTABLEKS                       R69 R68 K90 ["tag"]
      816 GETIMPORT                        R69 K85 [UDim2.fromOffset]
      818 GETUPVAL                         R70 17
      819 GETUPVAL                         R71 17
      820 CALL                             R69 2 1
      821 SETTABLEKS                       R69 R68 K91 ["Position"]
      823 SETTABLEKS                       R12 R68 K92 ["ref"]
      825 GETUPVAL                         R70 3
      826 GETTABLEKS                       R70 R70 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      828 JUMPIFNOT                        R70 ; [+2]
      829 MOVE                             R69 R41
      830 JUMP                             ; [+1]
      831 LOADNIL                          R69
      832 SETTABLEKS                       R69 R68 K93 ["onAbsoluteSizeChanged"]
      834 SETTABLEKS                       R24 R68 K21 ["backgroundStyle"]
      836 LOADN                            R69 3
      837 SETTABLEKS                       R69 R68 K82 ["ZIndex"]
      839 LOADK                            R70 K96 ["%*--content"]
      840 GETTABLEKS                       R72 R6 K70 ["testId"]
      842 NAMECALL                         R70 R70 K76 ["format"]
      844 CALL                             R70 2 1
      845 MOVE                             R69 R70
      846 SETTABLEKS                       R69 R68 K70 ["testId"]
      848 GETUPVAL                         R70 3
      849 GETTABLEKS                       R70 R70 K3 ["FoundationPopoverPluginDepthPool"]
      851 JUMPIFNOT                        R70 ; [+32]
      852 GETUPVAL                         R69 4
      853 GETTABLEKS                       R69 R69 K62 ["createElement"]
      855 GETUPVAL                         R70 5
      856 GETTABLEKS                       R70 R70 K97 ["Provider"]
      858 DUPTABLE                         R71 K99 [{"value"}]
      859 GETUPVAL                         R73 3
      860 GETTABLEKS                       R73 R73 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      862 JUMPIFNOT                        R73 ; [+2]
      863 MOVE                             R72 R56
      864 JUMP                             ; [+2]
      865 GETTABLEKS                       R72 R47 K100 ["popoverId"]
      867 SETTABLEKS                       R72 R71 K98 ["value"]
      869 DUPTABLE                         R72 K102 [{"Nested"}]
      870 GETUPVAL                         R73 4
      871 GETTABLEKS                       R73 R73 K62 ["createElement"]
      873 GETUPVAL                         R74 28
      874 DUPTABLE                         R75 K104 [{"owner"}]
      875 SETTABLEKS                       R10 R75 K103 ["owner"]
      877 GETTABLEKS                       R76 R2 K105 ["children"]
      879 CALL                             R73 3 1
      880 SETTABLEKS                       R73 R72 K101 ["Nested"]
      882 CALL                             R69 3 1
      883 JUMP                             ; [+2]
      884 GETTABLEKS                       R69 R2 K105 ["children"]
      886 CALL                             R66 3 1
      887 SETTABLEKS                       R66 R65 K79 ["Content"]
      889 CALL                             R62 3 1
      890 SETTABLEKS                       R62 R61 K65 ["Container"]
      892 CALL                             R58 3 1
      893 GETUPVAL                         R60 3
      894 GETTABLEKS                       R60 R60 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      896 JUMPIFNOT                        R60 ; [+2]
      897 MOVE                             R59 R55
      898 JUMP                             ; [+2]
      899 GETTABLEKS                       R59 R47 K60 ["container"]
      901 CALL                             R57 2 1
      902 JUMP                             ; [+1]
      903 LOADNIL                          R57
      904 GETUPVAL                         R58 4
      905 GETTABLEKS                       R58 R58 K62 ["createElement"]
      907 GETUPVAL                         R59 4
      908 GETTABLEKS                       R59 R59 K63 ["Fragment"]
      910 LOADNIL                          R60
      911 DUPTABLE                         R61 K108 [{"Anchor", "Panel"}]
      912 SETTABLEKS                       R34 R61 K106 ["Anchor"]
      914 SETTABLEKS                       R57 R61 K107 ["Panel"]
      916 CALL                             R58 3 -1
      917 CLOSEUPVALS                      R16
      918 RETURN                           R58 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["ElevationLayer"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Providers"]
       30 GETTABLEKS                       R6 R6 K12 ["StudioPanels"]
       32 GETTABLEKS                       R6 R6 K13 ["PluginPopoverParentContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Enums"]
       39 GETTABLEKS                       R7 R7 K14 ["PopoverAlign"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K15 ["PopoverArrow"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K4 ["Parent"]
       61 GETTABLEKS                       R9 R9 K16 ["Content"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETIMPORT                        R10 K1 [script]
       68 GETTABLEKS                       R10 R10 K4 ["Parent"]
       70 GETTABLEKS                       R10 R10 K4 ["Parent"]
       72 GETTABLEKS                       R10 R10 K17 ["PopoverContext"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K4 ["Parent"]
       81 GETTABLEKS                       R11 R11 K4 ["Parent"]
       83 GETTABLEKS                       R11 R11 K18 ["PopoverShadow"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K6 [require]
       88 GETTABLEKS                       R12 R0 K9 ["Enums"]
       90 GETTABLEKS                       R12 R12 K19 ["PopoverSide"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K6 [require]
       95 GETIMPORT                        R13 K1 [script]
       97 GETTABLEKS                       R13 R13 K4 ["Parent"]
       99 GETTABLEKS                       R13 R13 K20 ["getPanelPosition"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K6 [require]
      104 GETTABLEKS                       R14 R0 K11 ["Providers"]
      106 GETTABLEKS                       R14 R14 K21 ["Overlay"]
      108 GETTABLEKS                       R14 R14 K22 ["useOverlay"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K6 [require]
      113 GETTABLEKS                       R15 R0 K11 ["Providers"]
      115 GETTABLEKS                       R15 R15 K12 ["StudioPanels"]
      117 GETTABLEKS                       R15 R15 K23 ["usePanel"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K6 [require]
      122 GETTABLEKS                       R16 R0 K11 ["Providers"]
      124 GETTABLEKS                       R16 R16 K12 ["StudioPanels"]
      126 GETTABLEKS                       R16 R16 K24 ["usePanelsContext"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K6 [require]
      131 GETTABLEKS                       R17 R0 K11 ["Providers"]
      133 GETTABLEKS                       R17 R17 K25 ["Style"]
      135 GETTABLEKS                       R17 R17 K26 ["StyleSheetContext"]
      137 CALL                             R16 1 1
      138 GETTABLEKS                       R16 R16 K27 ["useStyleSheet"]
      140 GETIMPORT                        R17 K6 [require]
      142 GETTABLEKS                       R18 R0 K28 ["Constants"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K6 [require]
      147 GETTABLEKS                       R19 R0 K29 ["Utility"]
      149 GETTABLEKS                       R19 R19 K30 ["Flags"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K6 [require]
      154 GETTABLEKS                       R20 R0 K29 ["Utility"]
      156 GETTABLEKS                       R20 R20 K31 ["Logger"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K6 [require]
      161 GETTABLEKS                       R21 R0 K9 ["Enums"]
      163 GETTABLEKS                       R21 R21 K32 ["Radius"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K6 [require]
      168 GETTABLEKS                       R22 R0 K29 ["Utility"]
      170 GETTABLEKS                       R22 R22 K33 ["Plugin"]
      172 GETTABLEKS                       R22 R22 K34 ["StudioUri"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K6 [require]
      177 GETTABLEKS                       R23 R0 K35 ["Components"]
      179 GETTABLEKS                       R23 R23 K36 ["View"]
      181 CALL                             R22 1 1
      182 GETIMPORT                        R23 K6 [require]
      184 GETTABLEKS                       R24 R0 K11 ["Providers"]
      186 GETTABLEKS                       R24 R24 K37 ["Elevation"]
      188 GETTABLEKS                       R24 R24 K38 ["elevation"]
      190 CALL                             R23 1 1
      191 GETIMPORT                        R24 K6 [require]
      193 GETIMPORT                        R25 K1 [script]
      195 GETTABLEKS                       R25 R25 K4 ["Parent"]
      197 GETTABLEKS                       R25 R25 K4 ["Parent"]
      199 GETTABLEKS                       R25 R25 K39 ["positioning"]
      201 CALL                             R24 1 1
      202 GETIMPORT                        R25 K6 [require]
      204 GETIMPORT                        R26 K1 [script]
      206 GETTABLEKS                       R26 R26 K4 ["Parent"]
      208 GETTABLEKS                       R26 R26 K40 ["useArrowPosition"]
      210 CALL                             R25 1 1
      211 GETIMPORT                        R26 K6 [require]
      213 GETTABLEKS                       R27 R0 K11 ["Providers"]
      215 GETTABLEKS                       R27 R27 K37 ["Elevation"]
      217 GETTABLEKS                       R27 R27 K41 ["useElevation"]
      219 CALL                             R26 1 1
      220 GETIMPORT                        R27 K6 [require]
      222 GETTABLEKS                       R28 R0 K35 ["Components"]
      224 GETTABLEKS                       R28 R28 K42 ["Popover"]
      226 GETTABLEKS                       R28 R28 K43 ["useFloating"]
      228 CALL                             R27 1 1
      229 GETIMPORT                        R28 K6 [require]
      231 GETIMPORT                        R29 K1 [script]
      233 GETTABLEKS                       R29 R29 K4 ["Parent"]
      235 GETTABLEKS                       R29 R29 K44 ["usePanelSizing"]
      237 CALL                             R28 1 1
      238 GETIMPORT                        R29 K6 [require]
      240 GETIMPORT                        R30 K1 [script]
      242 GETTABLEKS                       R30 R30 K4 ["Parent"]
      244 GETTABLEKS                       R30 R30 K45 ["usePluginAnchor"]
      246 CALL                             R29 1 1
      247 GETIMPORT                        R30 K6 [require]
      249 GETTABLEKS                       R31 R0 K11 ["Providers"]
      251 GETTABLEKS                       R31 R31 K25 ["Style"]
      253 GETTABLEKS                       R31 R31 K46 ["useTokens"]
      255 CALL                             R30 1 1
      256 GETIMPORT                        R31 K6 [require]
      258 GETTABLEKS                       R32 R0 K29 ["Utility"]
      260 GETTABLEKS                       R32 R32 K47 ["withDefaults"]
      262 CALL                             R31 1 1
      263 GETIMPORT                        R32 K6 [require]
      265 GETTABLEKS                       R33 R0 K11 ["Providers"]
      267 GETTABLEKS                       R33 R33 K37 ["Elevation"]
      269 GETTABLEKS                       R33 R33 K48 ["ElevationProvider"]
      271 CALL                             R32 1 1
      272 GETTABLEKS                       R32 R32 K49 ["ElevationOwnerScope"]
      274 GETIMPORT                        R33 K6 [require]
      276 GETTABLEKS                       R34 R0 K11 ["Providers"]
      278 GETTABLEKS                       R34 R34 K12 ["StudioPanels"]
      280 GETTABLEKS                       R34 R34 K50 ["Types"]
      282 CALL                             R33 1 1
      283 GETTABLEKS                       R34 R17 K51 ["SHADOW_SIZE"]
      285 DUPTABLE                         R35 K56 [{"side", "align", "hasArrow", "radius"}]
      286 GETTABLEKS                       R36 R11 K57 ["Bottom"]
      288 SETTABLEKS                       R36 R35 K52 ["side"]
      290 GETTABLEKS                       R36 R6 K58 ["Center"]
      292 SETTABLEKS                       R36 R35 K53 ["align"]
      294 LOADB                            R36 1
      295 SETTABLEKS                       R36 R35 K54 ["hasArrow"]
      297 GETTABLEKS                       R36 R20 K59 ["Medium"]
      299 SETTABLEKS                       R36 R35 K55 ["radius"]
      301 NEWTABLE                         R36 4 0
      303 GETTABLEKS                       R37 R20 K60 ["Small"]
      305 LOADK                            R38 K61 ["radius-small"]
      306 SETTABLE                         R38 R36 R37
      307 GETTABLEKS                       R37 R20 K59 ["Medium"]
      309 LOADK                            R38 K62 ["radius-medium"]
      310 SETTABLE                         R38 R36 R37
      311 GETTABLEKS                       R37 R20 K63 ["Circle"]
      313 LOADK                            R38 K64 ["radius-circle"]
      314 SETTABLE                         R38 R36 R37
      315 DUPCLOSURE                       R37 K65 [PROTO_15]
      316 CAPTURE                          VAL R31
      317 CAPTURE                          VAL R35
      318 CAPTURE                          VAL R15
      319 CAPTURE                          VAL R18
      320 CAPTURE                          VAL R2
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R9
      323 CAPTURE                          VAL R16
      324 CAPTURE                          VAL R30
      325 CAPTURE                          VAL R26
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R23
      328 CAPTURE                          VAL R13
      329 CAPTURE                          VAL R11
      330 CAPTURE                          VAL R6
      331 CAPTURE                          VAL R29
      332 CAPTURE                          VAL R12
      333 CAPTURE                          VAL R34
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R14
      336 CAPTURE                          VAL R28
      337 CAPTURE                          VAL R24
      338 CAPTURE                          VAL R25
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R22
      341 CAPTURE                          VAL R10
      342 CAPTURE                          VAL R7
      343 CAPTURE                          VAL R36
      344 CAPTURE                          VAL R32
      345 GETTABLEKS                       R38 R2 K66 ["forwardRef"]
      347 MOVE                             R39 R37
      348 CALL                             R38 1 -1
      349 RETURN                           R38 -1
