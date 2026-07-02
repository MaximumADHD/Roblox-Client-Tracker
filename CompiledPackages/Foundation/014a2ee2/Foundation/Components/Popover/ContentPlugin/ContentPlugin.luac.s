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
      291 GETUPVAL                         R33 3
      292 GETTABLEKS                       R33 R33 K37 ["FoundationPopoverPluginUriAnchor"]
      294 JUMPIFNOT                        R33 ; [+3]
      295 GETTABLEKS                       R32 R6 K38 ["anchorUri"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R32
      299 GETUPVAL                         R33 15
      300 GETTABLEKS                       R34 R6 K39 ["anchor"]
      302 MOVE                             R35 R32
      303 CALL                             R33 2 1
      304 GETTABLEKS                       R35 R33 K40 ["isVirtual"]
      306 JUMPIFNOT                        R35 ; [+2]
      307 LOADB                            R34 0
      308 JUMP                             ; [+2]
      309 GETTABLEKS                       R34 R2 K41 ["hasArrow"]
      311 LOADNIL                          R35
      312 LOADNIL                          R36
      313 LOADNIL                          R37
      314 GETUPVAL                         R38 3
      315 GETTABLEKS                       R38 R38 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      317 JUMPIFNOT                        R38 ; [+35]
      318 GETTABLEKS                       R38 R6 K42 ["isOpen"]
      320 JUMPIFNOT                        R38 ; [+5]
      321 GETTABLEKS                       R38 R33 K43 ["isReady"]
      323 JUMPIFNOT                        R38 ; [+2]
      324 GETTABLEKS                       R38 R4 K44 ["ready"]
      326 MOVE                             R35 R38
      327 MOVE                             R38 R35
      328 JUMPIFNOT                        R38 ; [+4]
      329 JUMPIFNOTEQKNIL                  R13 ; [+2]
      331 LOADB                            R38 0 +1
      332 LOADB                            R38 1
      333 MOVE                             R36 R38
      334 MOVE                             R38 R36
      335 JUMPIFNOT                        R38 ; [+4]
      336 JUMPIFEQKNIL                     R19 ; [+2]
      338 LOADB                            R38 0 +1
      339 LOADB                            R38 1
      340 MOVE                             R37 R38
      341 GETUPVAL                         R38 4
      342 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      344 NEWCLOSURE                       R39 P3
      345 CAPTURE                          REF R35
      346 CAPTURE                          REF R20
      347 NEWTABLE                         R40 0 1
      349 MOVE                             R41 R35
      350 SETLIST                          R40 R41 1 [1]
      352 CALL                             R38 2 0
      353 GETUPVAL                         R39 3
      354 GETTABLEKS                       R39 R39 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      356 JUMPIFNOT                        R39 ; [+13]
      357 GETUPVAL                         R38 4
      358 GETTABLEKS                       R38 R38 K45 ["useCallback"]
      360 NEWCLOSURE                       R39 P4
      361 CAPTURE                          REF R37
      362 CAPTURE                          REF R20
      363 NEWTABLE                         R40 0 1
      365 MOVE                             R41 R37
      366 SETLIST                          R40 R41 1 [1]
      368 CALL                             R38 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R38
      371 GETUPVAL                         R39 4
      372 GETTABLEKS                       R39 R39 K11 ["useMemo"]
      374 NEWCLOSURE                       R40 P5
      375 CAPTURE                          UPVAL U16
      376 CAPTURE                          UPVAL U3
      377 CAPTURE                          REF R25
      378 CAPTURE                          VAL R2
      379 CAPTURE                          UPVAL U13
      380 CAPTURE                          UPVAL U14
      381 CAPTURE                          UPVAL U17
      382 CAPTURE                          VAL R34
      383 CAPTURE                          VAL R23
      384 NEWTABLE                         R41 0 4
      386 GETUPVAL                         R43 3
      387 GETTABLEKS                       R43 R43 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      389 JUMPIFNOT                        R43 ; [+2]
      390 MOVE                             R42 R25
      391 JUMP                             ; [+2]
      392 GETTABLEKS                       R42 R2 K26 ["side"]
      394 GETTABLEKS                       R43 R2 K28 ["align"]
      396 MOVE                             R44 R34
      397 MOVE                             R45 R23
      398 SETLIST                          R41 R42 4 [1]
      400 CALL                             R39 2 1
      401 GETUPVAL                         R40 4
      402 GETTABLEKS                       R40 R40 K45 ["useCallback"]
      404 NEWCLOSURE                       R41 P6
      405 CAPTURE                          UPVAL U3
      406 CAPTURE                          VAL R5
      407 CAPTURE                          VAL R3
      408 NEWTABLE                         R42 0 2
      410 GETTABLEKS                       R43 R3 K46 ["registerPopoverAsync"]
      412 MOVE                             R44 R5
      413 SETLIST                          R42 R43 2 [1]
      415 CALL                             R40 2 1
      416 GETUPVAL                         R41 4
      417 GETTABLEKS                       R41 R41 K47 ["useRef"]
      419 LOADB                            R42 0
      420 CALL                             R41 1 1
      421 GETUPVAL                         R42 4
      422 GETTABLEKS                       R42 R42 K13 ["useEffect"]
      424 NEWCLOSURE                       R43 P7
      425 CAPTURE                          VAL R2
      426 CAPTURE                          VAL R41
      427 CAPTURE                          UPVAL U18
      428 NEWTABLE                         R44 0 1
      430 GETTABLEKS                       R45 R2 K48 ["onPressedOutside"]
      432 SETLIST                          R44 R45 1 [1]
      434 CALL                             R42 2 0
      435 GETUPVAL                         R42 4
      436 GETTABLEKS                       R42 R42 K45 ["useCallback"]
      438 NEWCLOSURE                       R43 P8
      439 CAPTURE                          VAL R2
      440 NEWTABLE                         R44 0 1
      442 GETTABLEKS                       R45 R2 K48 ["onPressedOutside"]
      444 SETLIST                          R44 R45 1 [1]
      446 CALL                             R42 2 1
      447 GETUPVAL                         R44 3
      448 GETTABLEKS                       R44 R44 K3 ["FoundationPopoverPluginDepthPool"]
      450 JUMPIFNOT                        R44 ; [+6]
      451 JUMPIFEQKNIL                     R9 ; [+3]
      453 MOVE                             R43 R9
      454 JUMP                             ; [+3]
      455 LOADN                            R43 0
      456 JUMP                             ; [+1]
      457 MOVE                             R43 R9
      458 GETUPVAL                         R44 19
      459 DUPTABLE                         R45 K53 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position", "depth", "parentPopoverId"}]
      460 GETUPVAL                         R47 3
      461 GETTABLEKS                       R47 R47 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      463 JUMPIFNOT                        R47 ; [+2]
      464 MOVE                             R46 R35
      465 JUMP                             ; [+5]
      466 GETTABLEKS                       R46 R6 K42 ["isOpen"]
      468 JUMPIFNOT                        R46 ; [+2]
      469 GETTABLEKS                       R46 R33 K43 ["isReady"]
      471 SETTABLEKS                       R46 R45 K42 ["isOpen"]
      473 SETTABLEKS                       R42 R45 K49 ["onClose"]
      475 GETTABLEKS                       R46 R33 K54 ["uri"]
      477 SETTABLEKS                       R46 R45 K38 ["anchorUri"]
      479 SETTABLEKS                       R40 R45 K50 ["registerPanelAsync"]
      481 SETTABLEKS                       R39 R45 K34 ["position"]
      483 SETTABLEKS                       R43 R45 K51 ["depth"]
      485 GETUPVAL                         R47 3
      486 GETTABLEKS                       R47 R47 K3 ["FoundationPopoverPluginDepthPool"]
      488 JUMPIFNOT                        R47 ; [+2]
      489 MOVE                             R46 R5
      490 JUMP                             ; [+1]
      491 LOADNIL                          R46
      492 SETTABLEKS                       R46 R45 K52 ["parentPopoverId"]
      494 CALL                             R44 1 1
      495 LOADNIL                          R45
      496 LOADNIL                          R46
      497 GETUPVAL                         R47 3
      498 GETTABLEKS                       R47 R47 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      500 JUMPIFNOT                        R47 ; [+3]
      501 MOVE                             R45 R15
      502 MOVE                             R46 R17
      503 JUMP                             ; [+14]
      504 GETUPVAL                         R47 20
      505 GETTABLEKS                       R48 R2 K26 ["side"]
      507 GETTABLEKS                       R49 R2 K28 ["align"]
      509 MOVE                             R50 R11
      510 JUMPIFNOT                        R34 ; [+2]
      511 MOVE                             R51 R23
      512 JUMP                             ; [+1]
      513 LOADN                            R51 0
      514 MOVE                             R52 R44
      515 CALL                             R47 5 2
      516 MOVE                             R45 R47
      517 MOVE                             R46 R48
      518 GETUPVAL                         R47 3
      519 GETTABLEKS                       R47 R47 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      521 JUMPIFNOT                        R47 ; [+14]
      522 GETUPVAL                         R47 4
      523 GETTABLEKS                       R47 R47 K55 ["useLayoutEffect"]
      525 NEWCLOSURE                       R48 P9
      526 CAPTURE                          REF R37
      527 CAPTURE                          VAL R11
      528 CAPTURE                          REF R20
      529 NEWTABLE                         R49 0 2
      531 MOVE                             R50 R37
      532 MOVE                             R51 R11
      533 SETLIST                          R49 R50 2 [1]
      535 CALL                             R47 2 0
      536 GETUPVAL                         R48 3
      537 GETTABLEKS                       R48 R48 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      539 JUMPIFNOT                        R48 ; [+24]
      540 GETUPVAL                         R47 4
      541 GETTABLEKS                       R47 R47 K11 ["useMemo"]
      543 NEWCLOSURE                       R48 P10
      544 CAPTURE                          REF R19
      545 CAPTURE                          UPVAL U21
      546 CAPTURE                          REF R29
      547 CAPTURE                          REF R27
      548 CAPTURE                          REF R28
      549 CAPTURE                          VAL R34
      550 CAPTURE                          VAL R23
      551 CAPTURE                          UPVAL U17
      552 NEWTABLE                         R49 0 6
      554 MOVE                             R50 R19
      555 MOVE                             R51 R29
      556 MOVE                             R52 R27
      557 MOVE                             R53 R28
      558 MOVE                             R54 R34
      559 MOVE                             R55 R23
      560 SETLIST                          R49 R50 6 [1]
      562 CALL                             R47 2 1
      563 JUMP                             ; [+1]
      564 LOADNIL                          R47
      565 GETUPVAL                         R48 3
      566 GETTABLEKS                       R48 R48 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      568 JUMPIFNOT                        R48 ; [+36]
      569 GETUPVAL                         R48 4
      570 GETTABLEKS                       R48 R48 K55 ["useLayoutEffect"]
      572 NEWCLOSURE                       R49 P11
      573 CAPTURE                          REF R19
      574 CAPTURE                          VAL R47
      575 CAPTURE                          REF R18
      576 CAPTURE                          REF R16
      577 CAPTURE                          VAL R44
      578 NEWTABLE                         R50 0 3
      580 MOVE                             R51 R19
      581 MOVE                             R52 R47
      582 MOVE                             R53 R44
      583 SETLIST                          R50 R51 3 [1]
      585 CALL                             R48 2 0
      586 GETUPVAL                         R48 4
      587 GETTABLEKS                       R48 R48 K55 ["useLayoutEffect"]
      589 NEWCLOSURE                       R49 P12
      590 CAPTURE                          REF R36
      591 CAPTURE                          VAL R14
      592 CAPTURE                          VAL R44
      593 CAPTURE                          VAL R47
      594 CAPTURE                          VAL R13
      595 NEWTABLE                         R50 0 5
      597 MOVE                             R51 R36
      598 MOVE                             R52 R13
      599 MOVE                             R53 R44
      600 MOVE                             R54 R47
      601 MOVE                             R55 R14
      602 SETLIST                          R50 R51 5 [1]
      604 CALL                             R48 2 0
      605 GETTABLEKS                       R49 R33 K40 ["isVirtual"]
      607 JUMPIF                           R49 ; [+8]
      608 GETTABLEKS                       R50 R6 K39 ["anchor"]
      610 FASTCALL1                        TYPEOF R50 ; [+2]
      611 GETIMPORT                        R49 K57 [typeof]
      613 CALL                             R49 1 1
      614 JUMPIFEQKS                       R49 K58 ["Instance"] ; [+3]
      616 LOADNIL                          R48
      617 JUMP                             ; [+2]
      618 GETTABLEKS                       R48 R6 K39 ["anchor"]
      620 GETUPVAL                         R49 22
      621 MOVE                             R50 R46
      622 MOVE                             R51 R29
      623 GETTABLEKS                       R52 R2 K59 ["radius"]
      625 MOVE                             R53 R31
      626 MOVE                             R54 R23
      627 MOVE                             R55 R48
      628 CALL                             R49 6 1
      629 GETUPVAL                         R51 3
      630 GETTABLEKS                       R51 R51 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      632 JUMPIFNOT                        R51 ; [+8]
      633 LOADB                            R50 0
      634 JUMPIFEQKNIL                     R44 ; [+7]
      636 JUMPIFNOTEQKNIL                  R47 ; [+2]
      638 LOADB                            R50 0 +1
      639 LOADB                            R50 1
      640 JUMP                             ; [+1]
      641 LOADB                            R50 1
      642 GETUPVAL                         R52 3
      643 GETTABLEKS                       R52 R52 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      645 JUMPIFNOT                        R52 ; [+2]
      646 MOVE                             R51 R36
      647 JUMP                             ; [+4]
      648 JUMPIFNOTEQKNIL                  R44 ; [+2]
      650 LOADB                            R51 0 +1
      651 LOADB                            R51 1
      652 GETUPVAL                         R53 3
      653 GETTABLEKS                       R53 R53 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      655 JUMPIFNOT                        R53 ; [+2]
      656 MOVE                             R52 R14
      657 JUMP                             ; [+5]
      658 JUMPIFNOT                        R44 ; [+3]
      659 GETTABLEKS                       R52 R44 K60 ["container"]
      661 JUMP                             ; [+1]
      662 LOADNIL                          R52
      663 GETUPVAL                         R54 3
      664 GETTABLEKS                       R54 R54 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      666 JUMPIFNOT                        R54 ; [+14]
      667 GETUPVAL                         R53 4
      668 GETTABLEKS                       R53 R53 K11 ["useMemo"]
      670 NEWCLOSURE                       R54 P13
      671 CAPTURE                          VAL R44
      672 CAPTURE                          VAL R50
      673 NEWTABLE                         R55 0 2
      675 MOVE                             R56 R44
      676 MOVE                             R57 R50
      677 SETLIST                          R55 R56 2 [1]
      679 CALL                             R53 2 1
      680 JUMP                             ; [+1]
      681 LOADNIL                          R53
      682 JUMPIFNOT                        R51 ; [+215]
      683 JUMPIFNOT                        R52 ; [+214]
      684 GETUPVAL                         R54 23
      685 GETTABLEKS                       R54 R54 K61 ["createPortal"]
      687 GETUPVAL                         R55 4
      688 GETTABLEKS                       R55 R55 K62 ["createElement"]
      690 GETUPVAL                         R56 4
      691 GETTABLEKS                       R56 R56 K63 ["Fragment"]
      693 LOADNIL                          R57
      694 DUPTABLE                         R58 K66 [{"StyleLink", "Container"}]
      695 GETUPVAL                         R59 4
      696 GETTABLEKS                       R59 R59 K62 ["createElement"]
      698 LOADK                            R60 K64 ["StyleLink"]
      699 DUPTABLE                         R61 K68 [{"StyleSheet"}]
      700 SETTABLEKS                       R7 R61 K67 ["StyleSheet"]
      702 CALL                             R59 2 1
      703 SETTABLEKS                       R59 R58 K64 ["StyleLink"]
      705 GETUPVAL                         R59 4
      706 GETTABLEKS                       R59 R59 K62 ["createElement"]
      708 GETUPVAL                         R60 24
      709 DUPTABLE                         R61 K71 [{"AutomaticSize", "Size", "testId"}]
      710 GETUPVAL                         R63 3
      711 GETTABLEKS                       R63 R63 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      713 JUMPIFNOT                        R63 ; [+5]
      714 JUMPIFNOTEQKNIL                  R47 ; [+4]
      716 GETIMPORT                        R62 K74 [Enum.AutomaticSize.XY]
      718 JUMP                             ; [+1]
      719 LOADNIL                          R62
      720 SETTABLEKS                       R62 R61 K69 ["AutomaticSize"]
      722 GETUPVAL                         R63 3
      723 GETTABLEKS                       R63 R63 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      725 JUMPIFNOT                        R63 ; [+4]
      726 JUMPIFNOTEQKNIL                  R47 ; [+3]
      728 LOADNIL                          R62
      729 JUMP                             ; [+1]
      730 MOVE                             R62 R45
      731 SETTABLEKS                       R62 R61 K18 ["Size"]
      733 LOADK                            R63 K75 ["%*--container"]
      734 GETTABLEKS                       R65 R6 K70 ["testId"]
      736 NAMECALL                         R63 R63 K76 ["format"]
      738 CALL                             R63 2 1
      739 MOVE                             R62 R63
      740 SETTABLEKS                       R62 R61 K70 ["testId"]
      742 DUPTABLE                         R62 K80 [{"Shadow", "Arrow", "Content"}]
      743 GETUPVAL                         R63 4
      744 GETTABLEKS                       R63 R63 K62 ["createElement"]
      746 GETUPVAL                         R64 25
      747 DUPTABLE                         R65 K84 [{["contentSize"], ["position"], ["ZIndex"] = 1, ["testId"]}]
      748 SETTABLEKS                       R46 R65 K81 ["contentSize"]
      750 GETIMPORT                        R66 K86 [UDim2.fromOffset]
      752 GETUPVAL                         R68 17
      753 DIVK                             R67 R68 K21 [2]
      754 GETUPVAL                         R70 17
      755 DIVK                             R69 R70 K21 [2]
      756 ADDK                             R68 R69 K21 [2]
      757 CALL                             R66 2 1
      758 SETTABLEKS                       R66 R65 K34 ["position"]
      760 LOADK                            R67 K87 ["%*--shadow"]
      761 GETTABLEKS                       R69 R6 K70 ["testId"]
      763 NAMECALL                         R67 R67 K76 ["format"]
      765 CALL                             R67 2 1
      766 MOVE                             R66 R67
      767 SETTABLEKS                       R66 R65 K70 ["testId"]
      769 CALL                             R63 2 1
      770 SETTABLEKS                       R63 R62 K77 ["Shadow"]
      772 JUMPIFNOT                        R34 ; [+22]
      773 GETUPVAL                         R63 4
      774 GETTABLEKS                       R63 R63 K62 ["createElement"]
      776 GETUPVAL                         R64 26
      777 DUPTABLE                         R65 K89 [{["size"], ["position"], ["ZIndex"] = 2, ["backgroundStyle"], ["testId"]}]
      778 SETTABLEKS                       R21 R65 K88 ["size"]
      780 SETTABLEKS                       R49 R65 K34 ["position"]
      782 SETTABLEKS                       R24 R65 K22 ["backgroundStyle"]
      784 LOADK                            R67 K90 ["%*--arrow"]
      785 GETTABLEKS                       R69 R6 K70 ["testId"]
      787 NAMECALL                         R67 R67 K76 ["format"]
      789 CALL                             R67 2 1
      790 MOVE                             R66 R67
      791 SETTABLEKS                       R66 R65 K70 ["testId"]
      793 CALL                             R63 2 1
      794 JUMP                             ; [+1]
      795 LOADNIL                          R63
      796 SETTABLEKS                       R63 R62 K78 ["Arrow"]
      798 GETUPVAL                         R63 4
      799 GETTABLEKS                       R63 R63 K62 ["createElement"]
      801 GETUPVAL                         R64 24
      802 DUPTABLE                         R65 K96 [{["tag"], ["Position"], ["ref"], ["onAbsoluteSizeChanged"], ["backgroundStyle"], ["ZIndex"] = 3, ["testId"]}]
      803 LOADK                            R67 K97 ["auto-xy %*"]
      804 GETUPVAL                         R70 27
      805 GETTABLEKS                       R71 R2 K59 ["radius"]
      807 GETTABLE                         R69 R70 R71
      808 NAMECALL                         R67 R67 K76 ["format"]
      810 CALL                             R67 2 1
      811 MOVE                             R66 R67
      812 SETTABLEKS                       R66 R65 K91 ["tag"]
      814 GETIMPORT                        R66 K86 [UDim2.fromOffset]
      816 GETUPVAL                         R67 17
      817 GETUPVAL                         R68 17
      818 CALL                             R66 2 1
      819 SETTABLEKS                       R66 R65 K92 ["Position"]
      821 SETTABLEKS                       R12 R65 K93 ["ref"]
      823 GETUPVAL                         R67 3
      824 GETTABLEKS                       R67 R67 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      826 JUMPIFNOT                        R67 ; [+2]
      827 MOVE                             R66 R38
      828 JUMP                             ; [+1]
      829 LOADNIL                          R66
      830 SETTABLEKS                       R66 R65 K94 ["onAbsoluteSizeChanged"]
      832 SETTABLEKS                       R24 R65 K22 ["backgroundStyle"]
      834 LOADK                            R67 K98 ["%*--content"]
      835 GETTABLEKS                       R69 R6 K70 ["testId"]
      837 NAMECALL                         R67 R67 K76 ["format"]
      839 CALL                             R67 2 1
      840 MOVE                             R66 R67
      841 SETTABLEKS                       R66 R65 K70 ["testId"]
      843 GETUPVAL                         R67 3
      844 GETTABLEKS                       R67 R67 K3 ["FoundationPopoverPluginDepthPool"]
      846 JUMPIFNOT                        R67 ; [+32]
      847 GETUPVAL                         R66 4
      848 GETTABLEKS                       R66 R66 K62 ["createElement"]
      850 GETUPVAL                         R67 5
      851 GETTABLEKS                       R67 R67 K99 ["Provider"]
      853 DUPTABLE                         R68 K101 [{"value"}]
      854 GETUPVAL                         R70 3
      855 GETTABLEKS                       R70 R70 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      857 JUMPIFNOT                        R70 ; [+2]
      858 MOVE                             R69 R53
      859 JUMP                             ; [+2]
      860 GETTABLEKS                       R69 R44 K102 ["popoverId"]
      862 SETTABLEKS                       R69 R68 K100 ["value"]
      864 DUPTABLE                         R69 K104 [{"Nested"}]
      865 GETUPVAL                         R70 4
      866 GETTABLEKS                       R70 R70 K62 ["createElement"]
      868 GETUPVAL                         R71 28
      869 DUPTABLE                         R72 K106 [{"owner"}]
      870 SETTABLEKS                       R10 R72 K105 ["owner"]
      872 GETTABLEKS                       R73 R2 K107 ["children"]
      874 CALL                             R70 3 1
      875 SETTABLEKS                       R70 R69 K103 ["Nested"]
      877 CALL                             R66 3 1
      878 JUMP                             ; [+2]
      879 GETTABLEKS                       R66 R2 K107 ["children"]
      881 CALL                             R63 3 1
      882 SETTABLEKS                       R63 R62 K79 ["Content"]
      884 CALL                             R59 3 1
      885 SETTABLEKS                       R59 R58 K65 ["Container"]
      887 CALL                             R55 3 1
      888 GETUPVAL                         R57 3
      889 GETTABLEKS                       R57 R57 K0 ["FoundationPopoverPluginOverlayMeasurement"]
      891 JUMPIFNOT                        R57 ; [+2]
      892 MOVE                             R56 R52
      893 JUMP                             ; [+2]
      894 GETTABLEKS                       R56 R44 K60 ["container"]
      896 CALL                             R54 2 1
      897 JUMP                             ; [+1]
      898 LOADNIL                          R54
      899 GETUPVAL                         R55 4
      900 GETTABLEKS                       R55 R55 K62 ["createElement"]
      902 GETUPVAL                         R56 4
      903 GETTABLEKS                       R56 R56 K63 ["Fragment"]
      905 LOADNIL                          R57
      906 DUPTABLE                         R58 K110 [{"Anchor", "Panel"}]
      907 GETTABLEKS                       R59 R33 K111 ["element"]
      909 SETTABLEKS                       R59 R58 K108 ["Anchor"]
      911 SETTABLEKS                       R54 R58 K109 ["Panel"]
      913 CALL                             R55 3 -1
      914 CLOSEUPVALS                      R16
      915 RETURN                           R55 -1

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
