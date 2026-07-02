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
       18 LOADN                            R2 -10000
       19 LOADN                            R3 -10000
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
       55 LOADN                            R2 -10000
       56 LOADN                            R3 -10000
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
       43 JUMPIFNOT                        R11 ; [+13]
       44 GETUPVAL                         R11 9
       45 GETUPVAL                         R12 10
       46 GETTABLEKS                       R12 R12 K4 ["Popover"]
       48 DUPTABLE                         R13 K7 [{["stackAboveOwner"] = True}]
       49 CALL                             R11 2 1
       50 MOVE                             R10 R11
       51 GETUPVAL                         R11 11
       52 GETTABLEKS                       R11 R11 K8 ["getRelativeIndex"]
       54 MOVE                             R12 R10
       55 CALL                             R11 1 1
       56 MOVE                             R9 R11
       57 GETUPVAL                         R11 4
       58 GETTABLEKS                       R11 R11 K9 ["useState"]
       60 LOADNIL                          R12
       61 CALL                             R11 1 2
       62 GETUPVAL                         R13 4
       63 GETTABLEKS                       R13 R13 K10 ["useImperativeHandle"]
       65 MOVE                             R14 R1
       66 NEWCLOSURE                       R15 P0
       67 CAPTURE                          VAL R11
       68 NEWTABLE                         R16 0 1
       70 MOVE                             R17 R11
       71 SETLIST                          R16 R17 1 [1]
       73 CALL                             R13 3 0
       74 GETUPVAL                         R14 3
       75 GETTABLEKS                       R14 R14 K0 ["FoundationPopoverPluginOverlayMeasurement"]
       77 JUMPIFNOT                        R14 ; [+3]
       78 GETUPVAL                         R13 12
       79 CALL                             R13 0 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R13
       82 GETUPVAL                         R15 3
       83 GETTABLEKS                       R15 R15 K0 ["FoundationPopoverPluginOverlayMeasurement"]
       85 JUMPIFNOT                        R15 ; [+8]
       86 GETUPVAL                         R14 4
       87 GETTABLEKS                       R14 R14 K11 ["useMemo"]
       89 DUPCLOSURE                       R15 K12 [PROTO_1]
       90 NEWTABLE                         R16 0 0
       92 CALL                             R14 2 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R14
       95 GETUPVAL                         R15 3
       96 GETTABLEKS                       R15 R15 K0 ["FoundationPopoverPluginOverlayMeasurement"]
       98 JUMPIFNOT                        R15 ; [+11]
       99 GETUPVAL                         R15 4
      100 GETTABLEKS                       R15 R15 K13 ["useEffect"]
      102 NEWCLOSURE                       R16 P2
      103 CAPTURE                          VAL R14
      104 NEWTABLE                         R17 0 1
      106 MOVE                             R18 R14
      107 SETLIST                          R17 R18 1 [1]
      109 CALL                             R15 2 0
      110 LOADNIL                          R15
      111 LOADNIL                          R16
      112 LOADNIL                          R17
      113 LOADNIL                          R18
      114 LOADNIL                          R19
      115 LOADNIL                          R20
      116 GETUPVAL                         R21 3
      117 GETTABLEKS                       R21 R21 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      119 JUMPIFNOT                        R21 ; [+25]
      120 GETUPVAL                         R21 4
      121 GETTABLEKS                       R21 R21 K14 ["useBinding"]
      123 GETIMPORT                        R22 K17 [UDim2.new]
      125 CALL                             R22 0 -1
      126 CALL                             R21 -1 2
      127 MOVE                             R15 R21
      128 MOVE                             R16 R22
      129 GETUPVAL                         R21 4
      130 GETTABLEKS                       R21 R21 K14 ["useBinding"]
      132 GETIMPORT                        R22 K17 [UDim2.new]
      134 CALL                             R22 0 -1
      135 CALL                             R21 -1 2
      136 MOVE                             R17 R21
      137 MOVE                             R18 R22
      138 GETUPVAL                         R21 4
      139 GETTABLEKS                       R21 R21 K9 ["useState"]
      141 LOADNIL                          R22
      142 CALL                             R21 1 2
      143 MOVE                             R19 R21
      144 MOVE                             R20 R22
      145 GETTABLEKS                       R21 R8 K18 ["Size"]
      147 GETTABLEKS                       R21 R21 K19 ["Size_200"]
      149 MULK                             R22 R21 K20 [1.4142135623731]
      150 DIVK                             R23 R22 K21 [2]
      151 GETTABLEKS                       R24 R2 K22 ["backgroundStyle"]
      153 JUMPIF                           R24 ; [+6]
      154 GETTABLEKS                       R24 R8 K23 ["Color"]
      156 GETTABLEKS                       R24 R24 K24 ["Surface"]
      158 GETTABLEKS                       R24 R24 K25 ["Surface_100"]
      160 LOADNIL                          R25
      161 LOADNIL                          R26
      162 LOADNIL                          R27
      163 LOADNIL                          R28
      164 GETUPVAL                         R29 3
      165 GETTABLEKS                       R29 R29 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      167 JUMPIFNOT                        R29 ; [+40]
      168 GETTABLEKS                       R29 R2 K26 ["side"]
      170 JUMPIFNOT                        R29 ; [+3]
      171 GETTABLEKS                       R25 R2 K26 ["side"]
      173 JUMP                             ; [+3]
      174 GETUPVAL                         R29 13
      175 GETTABLEKS                       R25 R29 K27 ["Bottom"]
      177 GETTABLEKS                       R29 R2 K28 ["align"]
      179 JUMPIFNOT                        R29 ; [+3]
      180 GETTABLEKS                       R26 R2 K28 ["align"]
      182 JUMP                             ; [+3]
      183 GETUPVAL                         R29 14
      184 GETTABLEKS                       R26 R29 K29 ["Center"]
      186 FASTCALL1                        TYPE R25 ; [+3]
      187 MOVE                             R30 R25
      188 GETIMPORT                        R29 K31 [type]
      190 CALL                             R29 1 1
      191 JUMPIFNOTEQKS                    R29 K32 ["table"] ; [+4]
      193 GETTABLEKS                       R27 R25 K33 ["offset"]
      195 JUMP                             ; [+1]
      196 LOADN                            R27 0
      197 FASTCALL1                        TYPE R26 ; [+3]
      198 MOVE                             R30 R26
      199 GETIMPORT                        R29 K31 [type]
      201 CALL                             R29 1 1
      202 JUMPIFNOTEQKS                    R29 K32 ["table"] ; [+4]
      204 GETTABLEKS                       R28 R26 K33 ["offset"]
      206 JUMP                             ; [+1]
      207 LOADN                            R28 0
      208 LOADNIL                          R29
      209 LOADNIL                          R30
      210 GETUPVAL                         R31 3
      211 GETTABLEKS                       R31 R31 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      213 JUMPIFNOT                        R31 ; [+23]
      214 FASTCALL1                        TYPE R25 ; [+3]
      215 MOVE                             R32 R25
      216 GETIMPORT                        R31 K31 [type]
      218 CALL                             R31 1 1
      219 JUMPIFNOTEQKS                    R31 K32 ["table"] ; [+4]
      221 GETTABLEKS                       R29 R25 K34 ["position"]
      223 JUMP                             ; [+1]
      224 MOVE                             R29 R25
      225 FASTCALL1                        TYPE R26 ; [+3]
      226 MOVE                             R32 R26
      227 GETIMPORT                        R31 K31 [type]
      229 CALL                             R31 1 1
      230 JUMPIFNOTEQKS                    R31 K32 ["table"] ; [+4]
      232 GETTABLEKS                       R30 R26 K34 ["position"]
      234 JUMP                             ; [+42]
      235 MOVE                             R30 R26
      236 JUMP                             ; [+40]
      237 GETTABLEKS                       R32 R2 K26 ["side"]
      239 FASTCALL1                        TYPE R32 ; [+2]
      240 GETIMPORT                        R31 K31 [type]
      242 CALL                             R31 1 1
      243 JUMPIFNOTEQKS                    R31 K32 ["table"] ; [+6]
      245 GETTABLEKS                       R31 R2 K26 ["side"]
      247 GETTABLEKS                       R29 R31 K34 ["position"]
      249 JUMP                             ; [+7]
      250 GETTABLEKS                       R31 R2 K26 ["side"]
      252 JUMPIF                           R31 ; [+3]
      253 GETUPVAL                         R31 13
      254 GETTABLEKS                       R31 R31 K27 ["Bottom"]
      256 MOVE                             R29 R31
      257 GETTABLEKS                       R32 R2 K28 ["align"]
      259 FASTCALL1                        TYPE R32 ; [+2]
      260 GETIMPORT                        R31 K31 [type]
      262 CALL                             R31 1 1
      263 JUMPIFNOTEQKS                    R31 K32 ["table"] ; [+6]
      265 GETTABLEKS                       R31 R2 K28 ["align"]
      267 GETTABLEKS                       R30 R31 K34 ["position"]
      269 JUMP                             ; [+7]
      270 GETTABLEKS                       R31 R2 K28 ["align"]
      272 JUMPIF                           R31 ; [+3]
      273 GETUPVAL                         R31 14
      274 GETTABLEKS                       R31 R31 K29 ["Center"]
      276 MOVE                             R30 R31
      277 LOADN                            R31 0
      278 GETUPVAL                         R32 14
      279 GETTABLEKS                       R32 R32 K29 ["Center"]
      281 JUMPIFNOTEQ                      R30 R32 ; [+3]
      283 LOADK                            R31 K35 [0.5]
      284 JUMP                             ; [+6]
      285 GETUPVAL                         R32 14
      286 GETTABLEKS                       R32 R32 K36 ["End"]
      288 JUMPIFNOTEQ                      R30 R32 ; [+2]
      290 LOADN                            R31 1
      291 GETUPVAL                         R32 15
      292 GETTABLEKS                       R33 R6 K37 ["anchor"]
      294 CALL                             R32 1 1
      295 GETTABLEKS                       R33 R32 K38 ["widget"]
      297 GETTABLEKS                       R34 R32 K39 ["element"]
      299 GETTABLEKS                       R35 R32 K40 ["isVirtual"]
      301 GETTABLEKS                       R36 R32 K41 ["isReady"]
      303 JUMPIFNOT                        R35 ; [+2]
      304 LOADB                            R37 0
      305 JUMP                             ; [+2]
      306 GETTABLEKS                       R37 R2 K42 ["hasArrow"]
      308 LOADNIL                          R38
      309 LOADNIL                          R39
      310 LOADNIL                          R40
      311 GETUPVAL                         R41 3
      312 GETTABLEKS                       R41 R41 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      314 JUMPIFNOT                        R41 ; [+35]
      315 GETTABLEKS                       R41 R4 K43 ["ready"]
      317 GETTABLEKS                       R42 R6 K44 ["isOpen"]
      319 JUMPIFNOT                        R42 ; [+3]
      320 MOVE                             R42 R36
      321 JUMPIFNOT                        R42 ; [+1]
      322 MOVE                             R42 R41
      323 MOVE                             R38 R42
      324 MOVE                             R42 R38
      325 JUMPIFNOT                        R42 ; [+4]
      326 JUMPIFNOTEQKNIL                  R13 ; [+2]
      328 LOADB                            R42 0 +1
      329 LOADB                            R42 1
      330 MOVE                             R39 R42
      331 MOVE                             R42 R39
      332 JUMPIFNOT                        R42 ; [+4]
      333 JUMPIFEQKNIL                     R19 ; [+2]
      335 LOADB                            R42 0 +1
      336 LOADB                            R42 1
      337 MOVE                             R40 R42
      338 GETUPVAL                         R42 4
      339 GETTABLEKS                       R42 R42 K13 ["useEffect"]
      341 NEWCLOSURE                       R43 P3
      342 CAPTURE                          REF R38
      343 CAPTURE                          REF R20
      344 NEWTABLE                         R44 0 1
      346 MOVE                             R45 R38
      347 SETLIST                          R44 R45 1 [1]
      349 CALL                             R42 2 0
      350 GETUPVAL                         R42 3
      351 GETTABLEKS                       R42 R42 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      353 JUMPIFNOT                        R42 ; [+13]
      354 GETUPVAL                         R41 4
      355 GETTABLEKS                       R41 R41 K45 ["useCallback"]
      357 NEWCLOSURE                       R42 P4
      358 CAPTURE                          REF R40
      359 CAPTURE                          REF R20
      360 NEWTABLE                         R43 0 1
      362 MOVE                             R44 R40
      363 SETLIST                          R43 R44 1 [1]
      365 CALL                             R41 2 1
      366 JUMP                             ; [+1]
      367 LOADNIL                          R41
      368 GETUPVAL                         R42 4
      369 GETTABLEKS                       R42 R42 K11 ["useMemo"]
      371 NEWCLOSURE                       R43 P5
      372 CAPTURE                          UPVAL U16
      373 CAPTURE                          UPVAL U3
      374 CAPTURE                          REF R25
      375 CAPTURE                          VAL R2
      376 CAPTURE                          UPVAL U13
      377 CAPTURE                          UPVAL U14
      378 CAPTURE                          UPVAL U17
      379 CAPTURE                          VAL R37
      380 CAPTURE                          VAL R23
      381 NEWTABLE                         R44 0 4
      383 GETUPVAL                         R46 3
      384 GETTABLEKS                       R46 R46 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      386 JUMPIFNOT                        R46 ; [+2]
      387 MOVE                             R45 R25
      388 JUMP                             ; [+2]
      389 GETTABLEKS                       R45 R2 K26 ["side"]
      391 GETTABLEKS                       R46 R2 K28 ["align"]
      393 MOVE                             R47 R37
      394 MOVE                             R48 R23
      395 SETLIST                          R44 R45 4 [1]
      397 CALL                             R42 2 1
      398 GETUPVAL                         R43 4
      399 GETTABLEKS                       R43 R43 K45 ["useCallback"]
      401 NEWCLOSURE                       R44 P6
      402 CAPTURE                          UPVAL U3
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R3
      405 NEWTABLE                         R45 0 2
      407 GETTABLEKS                       R46 R3 K46 ["registerPopoverAsync"]
      409 MOVE                             R47 R5
      410 SETLIST                          R45 R46 2 [1]
      412 CALL                             R43 2 1
      413 GETUPVAL                         R44 4
      414 GETTABLEKS                       R44 R44 K47 ["useRef"]
      416 LOADB                            R45 0
      417 CALL                             R44 1 1
      418 GETUPVAL                         R45 4
      419 GETTABLEKS                       R45 R45 K13 ["useEffect"]
      421 NEWCLOSURE                       R46 P7
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R44
      424 CAPTURE                          UPVAL U18
      425 NEWTABLE                         R47 0 1
      427 GETTABLEKS                       R48 R2 K48 ["onPressedOutside"]
      429 SETLIST                          R47 R48 1 [1]
      431 CALL                             R45 2 0
      432 GETUPVAL                         R45 4
      433 GETTABLEKS                       R45 R45 K45 ["useCallback"]
      435 NEWCLOSURE                       R46 P8
      436 CAPTURE                          VAL R2
      437 NEWTABLE                         R47 0 1
      439 GETTABLEKS                       R48 R2 K48 ["onPressedOutside"]
      441 SETLIST                          R47 R48 1 [1]
      443 CALL                             R45 2 1
      444 GETUPVAL                         R47 3
      445 GETTABLEKS                       R47 R47 K3 ["FoundationPopoverPluginDepthPool"]
      447 JUMPIFNOT                        R47 ; [+6]
      448 JUMPIFEQKNIL                     R9 ; [+3]
      450 MOVE                             R46 R9
      451 JUMP                             ; [+3]
      452 LOADN                            R46 0
      453 JUMP                             ; [+1]
      454 MOVE                             R46 R9
      455 GETUPVAL                         R47 19
      456 DUPTABLE                         R48 K54 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position", "depth", "parentPopoverId"}]
      457 GETUPVAL                         R50 3
      458 GETTABLEKS                       R50 R50 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      460 JUMPIFNOT                        R50 ; [+2]
      461 MOVE                             R49 R38
      462 JUMP                             ; [+3]
      463 GETTABLEKS                       R50 R6 K44 ["isOpen"]
      465 AND                              R49 R50 R36
      466 SETTABLEKS                       R49 R48 K44 ["isOpen"]
      468 SETTABLEKS                       R45 R48 K49 ["onClose"]
      470 GETTABLEKS                       R49 R33 K55 ["uri"]
      472 SETTABLEKS                       R49 R48 K50 ["anchorUri"]
      474 SETTABLEKS                       R43 R48 K51 ["registerPanelAsync"]
      476 SETTABLEKS                       R42 R48 K34 ["position"]
      478 SETTABLEKS                       R46 R48 K52 ["depth"]
      480 GETUPVAL                         R50 3
      481 GETTABLEKS                       R50 R50 K3 ["FoundationPopoverPluginDepthPool"]
      483 JUMPIFNOT                        R50 ; [+2]
      484 MOVE                             R49 R5
      485 JUMP                             ; [+1]
      486 LOADNIL                          R49
      487 SETTABLEKS                       R49 R48 K53 ["parentPopoverId"]
      489 CALL                             R47 1 1
      490 LOADNIL                          R48
      491 LOADNIL                          R49
      492 GETUPVAL                         R50 3
      493 GETTABLEKS                       R50 R50 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      495 JUMPIFNOT                        R50 ; [+3]
      496 MOVE                             R48 R15
      497 MOVE                             R49 R17
      498 JUMP                             ; [+14]
      499 GETUPVAL                         R50 20
      500 GETTABLEKS                       R51 R2 K26 ["side"]
      502 GETTABLEKS                       R52 R2 K28 ["align"]
      504 MOVE                             R53 R11
      505 JUMPIFNOT                        R37 ; [+2]
      506 MOVE                             R54 R23
      507 JUMP                             ; [+1]
      508 LOADN                            R54 0
      509 MOVE                             R55 R47
      510 CALL                             R50 5 2
      511 MOVE                             R48 R50
      512 MOVE                             R49 R51
      513 GETUPVAL                         R50 3
      514 GETTABLEKS                       R50 R50 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      516 JUMPIFNOT                        R50 ; [+14]
      517 GETUPVAL                         R50 4
      518 GETTABLEKS                       R50 R50 K56 ["useLayoutEffect"]
      520 NEWCLOSURE                       R51 P9
      521 CAPTURE                          REF R40
      522 CAPTURE                          VAL R11
      523 CAPTURE                          REF R20
      524 NEWTABLE                         R52 0 2
      526 MOVE                             R53 R40
      527 MOVE                             R54 R11
      528 SETLIST                          R52 R53 2 [1]
      530 CALL                             R50 2 0
      531 GETUPVAL                         R51 3
      532 GETTABLEKS                       R51 R51 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      534 JUMPIFNOT                        R51 ; [+24]
      535 GETUPVAL                         R50 4
      536 GETTABLEKS                       R50 R50 K11 ["useMemo"]
      538 NEWCLOSURE                       R51 P10
      539 CAPTURE                          REF R19
      540 CAPTURE                          UPVAL U21
      541 CAPTURE                          REF R29
      542 CAPTURE                          REF R27
      543 CAPTURE                          REF R28
      544 CAPTURE                          VAL R37
      545 CAPTURE                          VAL R23
      546 CAPTURE                          UPVAL U17
      547 NEWTABLE                         R52 0 6
      549 MOVE                             R53 R19
      550 MOVE                             R54 R29
      551 MOVE                             R55 R27
      552 MOVE                             R56 R28
      553 MOVE                             R57 R37
      554 MOVE                             R58 R23
      555 SETLIST                          R52 R53 6 [1]
      557 CALL                             R50 2 1
      558 JUMP                             ; [+1]
      559 LOADNIL                          R50
      560 GETUPVAL                         R51 3
      561 GETTABLEKS                       R51 R51 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      563 JUMPIFNOT                        R51 ; [+36]
      564 GETUPVAL                         R51 4
      565 GETTABLEKS                       R51 R51 K56 ["useLayoutEffect"]
      567 NEWCLOSURE                       R52 P11
      568 CAPTURE                          REF R19
      569 CAPTURE                          VAL R50
      570 CAPTURE                          REF R18
      571 CAPTURE                          REF R16
      572 CAPTURE                          VAL R47
      573 NEWTABLE                         R53 0 3
      575 MOVE                             R54 R19
      576 MOVE                             R55 R50
      577 MOVE                             R56 R47
      578 SETLIST                          R53 R54 3 [1]
      580 CALL                             R51 2 0
      581 GETUPVAL                         R51 4
      582 GETTABLEKS                       R51 R51 K56 ["useLayoutEffect"]
      584 NEWCLOSURE                       R52 P12
      585 CAPTURE                          REF R39
      586 CAPTURE                          VAL R14
      587 CAPTURE                          VAL R47
      588 CAPTURE                          VAL R50
      589 CAPTURE                          VAL R13
      590 NEWTABLE                         R53 0 5
      592 MOVE                             R54 R39
      593 MOVE                             R55 R13
      594 MOVE                             R56 R47
      595 MOVE                             R57 R50
      596 MOVE                             R58 R14
      597 SETLIST                          R53 R54 5 [1]
      599 CALL                             R51 2 0
      600 JUMPIF                           R35 ; [+8]
      601 GETTABLEKS                       R53 R6 K37 ["anchor"]
      603 FASTCALL1                        TYPEOF R53 ; [+2]
      604 GETIMPORT                        R52 K58 [typeof]
      606 CALL                             R52 1 1
      607 JUMPIFEQKS                       R52 K59 ["Instance"] ; [+3]
      609 LOADNIL                          R51
      610 JUMP                             ; [+2]
      611 GETTABLEKS                       R51 R6 K37 ["anchor"]
      613 GETUPVAL                         R52 22
      614 MOVE                             R53 R49
      615 MOVE                             R54 R29
      616 GETTABLEKS                       R55 R2 K60 ["radius"]
      618 MOVE                             R56 R31
      619 MOVE                             R57 R23
      620 MOVE                             R58 R51
      621 CALL                             R52 6 1
      622 GETUPVAL                         R54 3
      623 GETTABLEKS                       R54 R54 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      625 JUMPIFNOT                        R54 ; [+8]
      626 LOADB                            R53 0
      627 JUMPIFEQKNIL                     R47 ; [+7]
      629 JUMPIFNOTEQKNIL                  R50 ; [+2]
      631 LOADB                            R53 0 +1
      632 LOADB                            R53 1
      633 JUMP                             ; [+1]
      634 LOADB                            R53 1
      635 GETUPVAL                         R55 3
      636 GETTABLEKS                       R55 R55 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      638 JUMPIFNOT                        R55 ; [+2]
      639 MOVE                             R54 R39
      640 JUMP                             ; [+4]
      641 JUMPIFNOTEQKNIL                  R47 ; [+2]
      643 LOADB                            R54 0 +1
      644 LOADB                            R54 1
      645 GETUPVAL                         R56 3
      646 GETTABLEKS                       R56 R56 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      648 JUMPIFNOT                        R56 ; [+2]
      649 MOVE                             R55 R14
      650 JUMP                             ; [+5]
      651 JUMPIFNOT                        R47 ; [+3]
      652 GETTABLEKS                       R55 R47 K61 ["container"]
      654 JUMP                             ; [+1]
      655 LOADNIL                          R55
      656 GETUPVAL                         R57 3
      657 GETTABLEKS                       R57 R57 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      659 JUMPIFNOT                        R57 ; [+14]
      660 GETUPVAL                         R56 4
      661 GETTABLEKS                       R56 R56 K11 ["useMemo"]
      663 NEWCLOSURE                       R57 P13
      664 CAPTURE                          VAL R47
      665 CAPTURE                          VAL R53
      666 NEWTABLE                         R58 0 2
      668 MOVE                             R59 R47
      669 MOVE                             R60 R53
      670 SETLIST                          R58 R59 2 [1]
      672 CALL                             R56 2 1
      673 JUMP                             ; [+1]
      674 LOADNIL                          R56
      675 JUMPIFNOT                        R54 ; [+215]
      676 JUMPIFNOT                        R55 ; [+214]
      677 GETUPVAL                         R57 23
      678 GETTABLEKS                       R57 R57 K62 ["createPortal"]
      680 GETUPVAL                         R58 4
      681 GETTABLEKS                       R58 R58 K63 ["createElement"]
      683 GETUPVAL                         R59 4
      684 GETTABLEKS                       R59 R59 K64 ["Fragment"]
      686 LOADNIL                          R60
      687 DUPTABLE                         R61 K67 [{"StyleLink", "Container"}]
      688 GETUPVAL                         R62 4
      689 GETTABLEKS                       R62 R62 K63 ["createElement"]
      691 LOADK                            R63 K65 ["StyleLink"]
      692 DUPTABLE                         R64 K69 [{"StyleSheet"}]
      693 SETTABLEKS                       R7 R64 K68 ["StyleSheet"]
      695 CALL                             R62 2 1
      696 SETTABLEKS                       R62 R61 K65 ["StyleLink"]
      698 GETUPVAL                         R62 4
      699 GETTABLEKS                       R62 R62 K63 ["createElement"]
      701 GETUPVAL                         R63 24
      702 DUPTABLE                         R64 K72 [{"AutomaticSize", "Size", "testId"}]
      703 GETUPVAL                         R66 3
      704 GETTABLEKS                       R66 R66 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      706 JUMPIFNOT                        R66 ; [+5]
      707 JUMPIFNOTEQKNIL                  R50 ; [+4]
      709 GETIMPORT                        R65 K75 [Enum.AutomaticSize.XY]
      711 JUMP                             ; [+1]
      712 LOADNIL                          R65
      713 SETTABLEKS                       R65 R64 K70 ["AutomaticSize"]
      715 GETUPVAL                         R66 3
      716 GETTABLEKS                       R66 R66 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      718 JUMPIFNOT                        R66 ; [+4]
      719 JUMPIFNOTEQKNIL                  R50 ; [+3]
      721 LOADNIL                          R65
      722 JUMP                             ; [+1]
      723 MOVE                             R65 R48
      724 SETTABLEKS                       R65 R64 K18 ["Size"]
      726 LOADK                            R66 K76 ["%*--container"]
      727 GETTABLEKS                       R68 R6 K71 ["testId"]
      729 NAMECALL                         R66 R66 K77 ["format"]
      731 CALL                             R66 2 1
      732 MOVE                             R65 R66
      733 SETTABLEKS                       R65 R64 K71 ["testId"]
      735 DUPTABLE                         R65 K81 [{"Shadow", "Arrow", "Content"}]
      736 GETUPVAL                         R66 4
      737 GETTABLEKS                       R66 R66 K63 ["createElement"]
      739 GETUPVAL                         R67 25
      740 DUPTABLE                         R68 K85 [{["contentSize"], ["position"], ["ZIndex"] = 1, ["testId"]}]
      741 SETTABLEKS                       R49 R68 K82 ["contentSize"]
      743 GETIMPORT                        R69 K87 [UDim2.fromOffset]
      745 GETUPVAL                         R71 17
      746 DIVK                             R70 R71 K21 [2]
      747 GETUPVAL                         R73 17
      748 DIVK                             R72 R73 K21 [2]
      749 ADDK                             R71 R72 K21 [2]
      750 CALL                             R69 2 1
      751 SETTABLEKS                       R69 R68 K34 ["position"]
      753 LOADK                            R70 K88 ["%*--shadow"]
      754 GETTABLEKS                       R72 R6 K71 ["testId"]
      756 NAMECALL                         R70 R70 K77 ["format"]
      758 CALL                             R70 2 1
      759 MOVE                             R69 R70
      760 SETTABLEKS                       R69 R68 K71 ["testId"]
      762 CALL                             R66 2 1
      763 SETTABLEKS                       R66 R65 K78 ["Shadow"]
      765 JUMPIFNOT                        R37 ; [+22]
      766 GETUPVAL                         R66 4
      767 GETTABLEKS                       R66 R66 K63 ["createElement"]
      769 GETUPVAL                         R67 26
      770 DUPTABLE                         R68 K90 [{["size"], ["position"], ["ZIndex"] = 2, ["backgroundStyle"], ["testId"]}]
      771 SETTABLEKS                       R21 R68 K89 ["size"]
      773 SETTABLEKS                       R52 R68 K34 ["position"]
      775 SETTABLEKS                       R24 R68 K22 ["backgroundStyle"]
      777 LOADK                            R70 K91 ["%*--arrow"]
      778 GETTABLEKS                       R72 R6 K71 ["testId"]
      780 NAMECALL                         R70 R70 K77 ["format"]
      782 CALL                             R70 2 1
      783 MOVE                             R69 R70
      784 SETTABLEKS                       R69 R68 K71 ["testId"]
      786 CALL                             R66 2 1
      787 JUMP                             ; [+1]
      788 LOADNIL                          R66
      789 SETTABLEKS                       R66 R65 K79 ["Arrow"]
      791 GETUPVAL                         R66 4
      792 GETTABLEKS                       R66 R66 K63 ["createElement"]
      794 GETUPVAL                         R67 24
      795 DUPTABLE                         R68 K97 [{["tag"], ["Position"], ["ref"], ["onAbsoluteSizeChanged"], ["backgroundStyle"], ["ZIndex"] = 3, ["testId"]}]
      796 LOADK                            R70 K98 ["auto-xy %*"]
      797 GETUPVAL                         R73 27
      798 GETTABLEKS                       R74 R2 K60 ["radius"]
      800 GETTABLE                         R72 R73 R74
      801 NAMECALL                         R70 R70 K77 ["format"]
      803 CALL                             R70 2 1
      804 MOVE                             R69 R70
      805 SETTABLEKS                       R69 R68 K92 ["tag"]
      807 GETIMPORT                        R69 K87 [UDim2.fromOffset]
      809 GETUPVAL                         R70 17
      810 GETUPVAL                         R71 17
      811 CALL                             R69 2 1
      812 SETTABLEKS                       R69 R68 K93 ["Position"]
      814 SETTABLEKS                       R12 R68 K94 ["ref"]
      816 GETUPVAL                         R70 3
      817 GETTABLEKS                       R70 R70 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      819 JUMPIFNOT                        R70 ; [+2]
      820 MOVE                             R69 R41
      821 JUMP                             ; [+1]
      822 LOADNIL                          R69
      823 SETTABLEKS                       R69 R68 K95 ["onAbsoluteSizeChanged"]
      825 SETTABLEKS                       R24 R68 K22 ["backgroundStyle"]
      827 LOADK                            R70 K99 ["%*--content"]
      828 GETTABLEKS                       R72 R6 K71 ["testId"]
      830 NAMECALL                         R70 R70 K77 ["format"]
      832 CALL                             R70 2 1
      833 MOVE                             R69 R70
      834 SETTABLEKS                       R69 R68 K71 ["testId"]
      836 GETUPVAL                         R70 3
      837 GETTABLEKS                       R70 R70 K3 ["FoundationPopoverPluginDepthPool"]
      839 JUMPIFNOT                        R70 ; [+32]
      840 GETUPVAL                         R69 4
      841 GETTABLEKS                       R69 R69 K63 ["createElement"]
      843 GETUPVAL                         R70 5
      844 GETTABLEKS                       R70 R70 K100 ["Provider"]
      846 DUPTABLE                         R71 K102 [{"value"}]
      847 GETUPVAL                         R73 3
      848 GETTABLEKS                       R73 R73 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      850 JUMPIFNOT                        R73 ; [+2]
      851 MOVE                             R72 R56
      852 JUMP                             ; [+2]
      853 GETTABLEKS                       R72 R47 K103 ["popoverId"]
      855 SETTABLEKS                       R72 R71 K101 ["value"]
      857 DUPTABLE                         R72 K105 [{"Nested"}]
      858 GETUPVAL                         R73 4
      859 GETTABLEKS                       R73 R73 K63 ["createElement"]
      861 GETUPVAL                         R74 28
      862 DUPTABLE                         R75 K107 [{"owner"}]
      863 SETTABLEKS                       R10 R75 K106 ["owner"]
      865 GETTABLEKS                       R76 R2 K108 ["children"]
      867 CALL                             R73 3 1
      868 SETTABLEKS                       R73 R72 K104 ["Nested"]
      870 CALL                             R69 3 1
      871 JUMP                             ; [+2]
      872 GETTABLEKS                       R69 R2 K108 ["children"]
      874 CALL                             R66 3 1
      875 SETTABLEKS                       R66 R65 K80 ["Content"]
      877 CALL                             R62 3 1
      878 SETTABLEKS                       R62 R61 K66 ["Container"]
      880 CALL                             R58 3 1
      881 GETUPVAL                         R60 3
      882 GETTABLEKS                       R60 R60 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      884 JUMPIFNOT                        R60 ; [+2]
      885 MOVE                             R59 R55
      886 JUMP                             ; [+2]
      887 GETTABLEKS                       R59 R47 K61 ["container"]
      889 CALL                             R57 2 1
      890 JUMP                             ; [+1]
      891 LOADNIL                          R57
      892 GETUPVAL                         R58 4
      893 GETTABLEKS                       R58 R58 K63 ["createElement"]
      895 GETUPVAL                         R59 4
      896 GETTABLEKS                       R59 R59 K64 ["Fragment"]
      898 LOADNIL                          R60
      899 DUPTABLE                         R61 K111 [{"Anchor", "Panel"}]
      900 SETTABLEKS                       R34 R61 K109 ["Anchor"]
      902 SETTABLEKS                       R57 R61 K110 ["Panel"]
      904 CALL                             R58 3 -1
      905 CLOSEUPVALS                      R16
      906 RETURN                           R58 -1

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
      285 DUPTABLE                         R35 K57 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      286 GETTABLEKS                       R36 R11 K58 ["Bottom"]
      288 SETTABLEKS                       R36 R35 K52 ["side"]
      290 GETTABLEKS                       R36 R6 K59 ["Center"]
      292 SETTABLEKS                       R36 R35 K53 ["align"]
      294 GETTABLEKS                       R36 R20 K60 ["Medium"]
      296 SETTABLEKS                       R36 R35 K56 ["radius"]
      298 NEWTABLE                         R36 4 0
      300 GETTABLEKS                       R37 R20 K61 ["Small"]
      302 LOADK                            R38 K62 ["radius-small"]
      303 SETTABLE                         R38 R36 R37
      304 GETTABLEKS                       R37 R20 K60 ["Medium"]
      306 LOADK                            R38 K63 ["radius-medium"]
      307 SETTABLE                         R38 R36 R37
      308 GETTABLEKS                       R37 R20 K64 ["Circle"]
      310 LOADK                            R38 K65 ["radius-circle"]
      311 SETTABLE                         R38 R36 R37
      312 DUPCLOSURE                       R37 K66 [PROTO_15]
      313 CAPTURE                          VAL R31
      314 CAPTURE                          VAL R35
      315 CAPTURE                          VAL R15
      316 CAPTURE                          VAL R18
      317 CAPTURE                          VAL R2
      318 CAPTURE                          VAL R5
      319 CAPTURE                          VAL R9
      320 CAPTURE                          VAL R16
      321 CAPTURE                          VAL R30
      322 CAPTURE                          VAL R26
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R23
      325 CAPTURE                          VAL R13
      326 CAPTURE                          VAL R11
      327 CAPTURE                          VAL R6
      328 CAPTURE                          VAL R29
      329 CAPTURE                          VAL R12
      330 CAPTURE                          VAL R34
      331 CAPTURE                          VAL R19
      332 CAPTURE                          VAL R14
      333 CAPTURE                          VAL R28
      334 CAPTURE                          VAL R24
      335 CAPTURE                          VAL R25
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R22
      338 CAPTURE                          VAL R10
      339 CAPTURE                          VAL R7
      340 CAPTURE                          VAL R36
      341 CAPTURE                          VAL R32
      342 GETTABLEKS                       R38 R2 K67 ["forwardRef"]
      344 MOVE                             R39 R37
      345 CALL                             R38 1 -1
      346 RETURN                           R38 -1
