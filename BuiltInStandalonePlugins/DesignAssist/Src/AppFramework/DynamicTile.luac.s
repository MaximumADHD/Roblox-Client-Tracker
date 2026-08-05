PROTO_0:
        0 JUMPIFNOTEQKB                    R0 FALSE ; [+3]
        2 DUPTABLE                         R1 K8 [{[1] = False, ["tileScale"] = 1.012, ["activeScale"] = 1.004, ["mediaScale"] = 1.035}]
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K10 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K11 ["table"] ; [+3]
       11 MOVE                             R1 R0
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 DUPTABLE                         R2 K12 [{"isEnabled", "tileScale", "activeScale", "mediaScale"}]
       15 JUMPIFNOT                        R1 ; [+7]
       16 GETTABLEKS                       R4 R1 K0 ["isEnabled"]
       18 JUMPIFEQKNIL                     R4 ; [+4]
       20 GETTABLEKS                       R3 R1 K0 ["isEnabled"]
       22 JUMP                             ; [+1]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K0 ["isEnabled"]
       26 JUMPIFNOT                        R1 ; [+7]
       27 GETTABLEKS                       R4 R1 K2 ["tileScale"]
       29 JUMPIFEQKNIL                     R4 ; [+4]
       31 GETTABLEKS                       R3 R1 K2 ["tileScale"]
       33 JUMP                             ; [+1]
       34 LOADK                            R3 K3 [1.012]
       35 SETTABLEKS                       R3 R2 K2 ["tileScale"]
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETTABLEKS                       R4 R1 K4 ["activeScale"]
       40 JUMPIFEQKNIL                     R4 ; [+4]
       42 GETTABLEKS                       R3 R1 K4 ["activeScale"]
       44 JUMP                             ; [+1]
       45 LOADK                            R3 K5 [1.004]
       46 SETTABLEKS                       R3 R2 K4 ["activeScale"]
       48 JUMPIFNOT                        R1 ; [+7]
       49 GETTABLEKS                       R4 R1 K6 ["mediaScale"]
       51 JUMPIFEQKNIL                     R4 ; [+4]
       53 GETTABLEKS                       R3 R1 K6 ["mediaScale"]
       55 JUMP                             ; [+1]
       56 LOADK                            R3 K7 [1.035]
       57 SETTABLEKS                       R3 R2 K6 ["mediaScale"]
       59 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"Title"}]
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K2 ["Text"]
        5 DUPTABLE                         R6 K9 [{["Text"], ["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"], ["tag"] = "text-title-medium content-emphasis text-truncate-end text-no-wrap text-align-x-left"}]
        6 SETTABLEKS                       R0 R6 K2 ["Text"]
        8 GETIMPORT                        R7 K12 [UDim2.new]
       10 LOADN                            R8 1
       11 LOADN                            R9 0
       12 LOADN                            R10 0
       13 LOADN                            R11 0
       14 CALL                             R7 4 1
       15 SETTABLEKS                       R7 R6 K5 ["Size"]
       17 GETIMPORT                        R7 K15 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K0 ["Title"]
       24 JUMPIFEQKNIL                     R1 ; [+24]
       26 GETUPVAL                         R4 0
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K2 ["Text"]
       30 DUPTABLE                         R6 K18 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-body-medium content-default text-truncate-end text-no-wrap text-align-x-left"}]
       31 SETTABLEKS                       R1 R6 K2 ["Text"]
       33 GETIMPORT                        R7 K12 [UDim2.new]
       35 LOADN                            R8 1
       36 LOADN                            R9 0
       37 LOADN                            R10 0
       38 LOADN                            R11 0
       39 CALL                             R7 4 1
       40 SETTABLEKS                       R7 R6 K5 ["Size"]
       42 GETIMPORT                        R7 K15 [Enum.AutomaticSize.Y]
       44 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K19 ["Metadata"]
       49 GETUPVAL                         R4 0
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K20 ["View"]
       53 DUPTABLE                         R6 K22 [{"Size", "AutomaticSize", "layout"}]
       54 JUMPIFNOT                        R2 ; [+8]
       55 GETIMPORT                        R7 K12 [UDim2.new]
       57 LOADN                            R8 1
       58 LOADN                            R9 0
       59 LOADN                            R10 0
       60 LOADN                            R11 0
       61 CALL                             R7 4 1
       62 JUMP                             ; [+5]
       63 GETIMPORT                        R7 K24 [UDim2.fromScale]
       65 LOADN                            R8 1
       66 LOADN                            R9 0
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K5 ["Size"]
       70 GETIMPORT                        R7 K15 [Enum.AutomaticSize.Y]
       72 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       74 DUPTABLE                         R7 K27 [{"FillDirection", "SortOrder"}]
       75 GETIMPORT                        R8 K29 [Enum.FillDirection.Vertical]
       77 SETTABLEKS                       R8 R7 K25 ["FillDirection"]
       79 GETIMPORT                        R8 K30 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R8 R7 K26 ["SortOrder"]
       83 SETTABLEKS                       R7 R6 K21 ["layout"]
       85 MOVE                             R7 R3
       86 CALL                             R4 3 -1
       87 RETURN                           R4 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["Button"]
        4 DUPTABLE                         R5 K11 [{["testId"] = "--appkit-dynamic-tile-action", ["text"], ["icon"], ["onActivated"], ["isDisabled"], ["isLoading"], ["variant"], ["size"], ["width"]}]
        5 GETTABLEKS                       R6 R0 K12 ["label"]
        7 SETTABLEKS                       R6 R5 K3 ["text"]
        9 GETTABLEKS                       R6 R0 K4 ["icon"]
       11 SETTABLEKS                       R6 R5 K4 ["icon"]
       13 GETTABLEKS                       R6 R0 K5 ["onActivated"]
       15 JUMPIF                           R6 ; [+1]
       16 DUPCLOSURE                       R6 K13 [PROTO_2]
       17 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       19 GETTABLEKS                       R6 R0 K6 ["isDisabled"]
       21 SETTABLEKS                       R6 R5 K6 ["isDisabled"]
       23 GETTABLEKS                       R6 R0 K7 ["isLoading"]
       25 SETTABLEKS                       R6 R5 K7 ["isLoading"]
       27 GETTABLEKS                       R6 R0 K8 ["variant"]
       29 JUMPIF                           R6 ; [+4]
       30 GETUPVAL                         R7 2
       31 GETTABLE                         R6 R7 R1
       32 JUMPIF                           R6 ; [+1]
       33 LOADK                            R6 K14 ["Standard"]
       34 SETTABLEKS                       R6 R5 K8 ["variant"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K15 ["Enums"]
       39 GETTABLEKS                       R6 R6 K16 ["InputSize"]
       41 GETTABLEKS                       R6 R6 K17 ["Medium"]
       43 SETTABLEKS                       R6 R5 K9 ["size"]
       45 JUMPIFNOT                        R2 ; [+6]
       46 GETIMPORT                        R6 K20 [UDim.new]
       48 LOADN                            R7 1
       49 LOADN                            R8 0
       50 CALL                             R6 2 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R6
       53 SETTABLEKS                       R6 R5 K10 ["width"]
       55 CALL                             R3 2 -1
       56 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 LOADN                            R1 1
        3 LOADN                            R2 1
        4 RETURN                           R1 2
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["Pressed"]
        9 JUMPIFEQ                         R0 R2 ; [+8]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["SelectedPressed"]
       14 JUMPIFEQ                         R0 R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K2 ["Hover"]
       21 JUMPIFEQ                         R0 R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 JUMPIFNOT                        R1 ; [+4]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K3 ["activeScale"]
       29 JUMP                             ; [+6]
       30 JUMPIFNOT                        R2 ; [+4]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K4 ["tileScale"]
       34 JUMP                             ; [+1]
       35 LOADN                            R3 1
       36 JUMPIF                           R2 ; [+1]
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K5 ["mediaScale"]
       41 RETURN                           R3 2
       42 LOADN                            R4 1
       43 RETURN                           R3 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R3 1
        4 JUMPIF                           R3 ; [+3]
        5 LOADN                            R1 1
        6 LOADN                            R2 1
        7 JUMP                             ; [+40]
        8 LOADB                            R3 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["Pressed"]
       12 JUMPIFEQ                         R0 R4 ; [+8]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K1 ["SelectedPressed"]
       17 JUMPIFEQ                         R0 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K2 ["Hover"]
       24 JUMPIFEQ                         R0 R5 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K3 ["activeScale"]
       32 JUMP                             ; [+6]
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K4 ["tileScale"]
       37 JUMP                             ; [+1]
       38 LOADN                            R5 1
       39 JUMPIF                           R4 ; [+1]
       40 JUMPIFNOT                        R3 ; [+4]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K5 ["mediaScale"]
       44 JUMP                             ; [+1]
       45 LOADN                            R6 1
       46 MOVE                             R1 R5
       47 MOVE                             R2 R6
       48 GETUPVAL                         R3 4
       49 NEWTABLE                         R4 4 0
       51 SETTABLEKS                       R1 R4 K4 ["tileScale"]
       53 SETTABLEKS                       R2 R4 K5 ["mediaScale"]
       55 NEWTABLE                         R5 2 0
       57 DUPTABLE                         R6 K9 [{["duration"] = 0.1, ["easingStyle"]}]
       58 GETUPVAL                         R7 5
       59 SETTABLEKS                       R7 R6 K8 ["easingStyle"]
       61 SETTABLEKS                       R6 R5 K4 ["tileScale"]
       63 DUPTABLE                         R6 K11 [{["duration"] = 0.2, ["easingStyle"]}]
       64 GETUPVAL                         R7 5
       65 SETTABLEKS                       R7 R6 K8 ["easingStyle"]
       67 SETTABLEKS                       R6 R5 K5 ["mediaScale"]
       69 SETTABLEKS                       R5 R4 K12 ["transition"]
       71 CALL                             R3 1 0
       72 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K3 ["type"]
        8 ORK                              R2 R3 K2 ["Default"]
        9 GETTABLEKS                       R4 R0 K5 ["width"]
       11 ORK                              R3 R4 K4 [280]
       12 GETTABLEKS                       R4 R0 K6 ["aspectRatio"]
       14 JUMPIF                           R4 ; [+4]
       15 GETUPVAL                         R5 1
       16 GETTABLE                         R4 R5 R2
       17 JUMPIF                           R4 ; [+1]
       18 LOADK                            R4 K7 [1.77777777777778]
       19 LOADN                            R6 1
       20 DIV                              R8 R3 R4
       21 FASTCALL1                        MATH_ROUND R8 ; [+2]
       22 GETIMPORT                        R7 K10 [math.round]
       24 CALL                             R7 1 1
       25 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       27 GETIMPORT                        R5 K12 [math.max]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R7 R0 K13 ["isContained"]
       32 JUMPIFEQKB                       R7 TRUE ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 GETTABLEKS                       R8 R0 K14 ["verticalFill"]
       38 JUMPIFEQKB                       R8 TRUE ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 GETTABLEKS                       R8 R1 K15 ["Radius"]
       44 GETTABLEKS                       R8 R8 K16 ["Medium"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R10 R0 K17 ["hoverMotion"]
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R10 R10 K18 ["useState"]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R11 R11 K2 ["Default"]
       56 CALL                             R10 1 2
       57 GETUPVAL                         R13 4
       58 GETTABLEKS                       R13 R13 K19 ["Hover"]
       60 JUMPIFEQ                         R10 R13 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 GETTABLEKS                       R13 R9 K20 ["isEnabled"]
       66 LOADB                            R14 0
       67 JUMPIFNOTEQKS                    R2 K2 ["Default"] ; [+7]
       69 GETTABLEKS                       R15 R0 K21 ["onActivated"]
       71 JUMPIFNOTEQKNIL                  R15 ; [+2]
       73 LOADB                            R14 0 +1
       74 LOADB                            R14 1
       75 GETTABLEKS                       R16 R0 K21 ["onActivated"]
       77 JUMPIFNOTEQKNIL                  R16 ; [+2]
       79 LOADB                            R15 0 +1
       80 LOADB                            R15 1
       81 NEWCLOSURE                       R16 P0
       82 CAPTURE                          VAL R13
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R9
       85 GETUPVAL                         R17 5
       86 GETTABLEKS                       R17 R17 K22 ["useMotion"]
       88 NEWTABLE                         R18 2 0
       90 LOADN                            R19 1
       91 SETTABLEKS                       R19 R18 K23 ["tileScale"]
       93 LOADN                            R19 1
       94 SETTABLEKS                       R19 R18 K24 ["mediaScale"]
       96 CALL                             R17 1 2
       97 GETTABLEKS                       R19 R17 K23 ["tileScale"]
       99 GETTABLEKS                       R20 R17 K24 ["mediaScale"]
      101 GETUPVAL                         R21 3
      102 GETTABLEKS                       R21 R21 K25 ["useCallback"]
      104 NEWCLOSURE                       R22 P1
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R13
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R18
      110 CAPTURE                          UPVAL U6
      111 NEWTABLE                         R23 0 5
      113 MOVE                             R24 R18
      114 MOVE                             R25 R13
      115 GETTABLEKS                       R26 R9 K23 ["tileScale"]
      117 GETTABLEKS                       R27 R9 K26 ["activeScale"]
      119 GETTABLEKS                       R28 R9 K24 ["mediaScale"]
      121 SETLIST                          R23 R24 5 [1]
      123 CALL                             R21 2 1
      124 JUMPIFNOTEQKS                    R2 K27 ["CreatorTile"] ; [+6]
      126 GETTABLEKS                       R22 R1 K28 ["Gap"]
      128 GETTABLEKS                       R22 R22 K16 ["Medium"]
      130 JUMP                             ; [+11]
      131 JUMPIFNOTEQKS                    R2 K29 ["ItemTile"] ; [+6]
      133 GETTABLEKS                       R22 R1 K28 ["Gap"]
      135 GETTABLEKS                       R22 R22 K30 ["XSmall"]
      137 JUMP                             ; [+4]
      138 GETTABLEKS                       R22 R1 K28 ["Gap"]
      140 GETTABLEKS                       R22 R22 K31 ["Small"]
      142 JUMPIFNOT                        R6 ; [+2]
      143 LOADN                            R23 0
      144 JUMP                             ; [+1]
      145 MOVE                             R23 R8
      146 GETUPVAL                         R24 7
      147 LOADK                            R25 K32 ["UICorner"]
      148 DUPTABLE                         R26 K37 [{"TopLeftRadius", "TopRightRadius", "BottomRightRadius", "BottomLeftRadius"}]
      149 GETIMPORT                        R27 K40 [UDim.new]
      151 LOADN                            R28 0
      152 MOVE                             R29 R8
      153 CALL                             R27 2 1
      154 SETTABLEKS                       R27 R26 K33 ["TopLeftRadius"]
      156 GETIMPORT                        R27 K40 [UDim.new]
      158 LOADN                            R28 0
      159 MOVE                             R29 R8
      160 CALL                             R27 2 1
      161 SETTABLEKS                       R27 R26 K34 ["TopRightRadius"]
      163 GETIMPORT                        R27 K40 [UDim.new]
      165 LOADN                            R28 0
      166 MOVE                             R29 R23
      167 CALL                             R27 2 1
      168 SETTABLEKS                       R27 R26 K35 ["BottomRightRadius"]
      170 GETIMPORT                        R27 K40 [UDim.new]
      172 LOADN                            R28 0
      173 MOVE                             R29 R23
      174 CALL                             R27 2 1
      175 SETTABLEKS                       R27 R26 K36 ["BottomLeftRadius"]
      177 CALL                             R24 2 1
      178 NEWTABLE                         R25 8 0
      180 GETTABLEKS                       R26 R0 K41 ["image"]
      182 JUMPIFEQKNIL                     R26 ; [+21]
      184 GETUPVAL                         R26 7
      185 GETUPVAL                         R27 0
      186 GETTABLEKS                       R27 R27 K42 ["Image"]
      188 DUPTABLE                         R28 K46 [{["Image"], ["ScaleType"], ["tag"] = "size-full bg-shift-200"}]
      189 GETTABLEKS                       R29 R0 K41 ["image"]
      191 SETTABLEKS                       R29 R28 K42 ["Image"]
      193 GETIMPORT                        R29 K49 [Enum.ScaleType.Crop]
      195 SETTABLEKS                       R29 R28 K43 ["ScaleType"]
      197 DUPTABLE                         R29 K51 [{"Corner"}]
      198 SETTABLEKS                       R24 R29 K50 ["Corner"]
      200 CALL                             R26 3 1
      201 SETTABLEKS                       R26 R25 K42 ["Image"]
      203 JUMP                             ; [+2]
      204 SETTABLEKS                       R24 R25 K50 ["Corner"]
      206 GETTABLEKS                       R26 R0 K52 ["badge"]
      208 JUMPIFEQKNIL                     R26 ; [+60]
      210 GETUPVAL                         R26 7
      211 GETUPVAL                         R27 0
      212 GETTABLEKS                       R27 R27 K53 ["View"]
      214 DUPTABLE                         R28 K59 [{["AnchorPoint"], ["Position"], ["AutomaticSize"], ["ZIndex"] = 2}]
      215 GETIMPORT                        R29 K61 [Vector2.new]
      217 LOADN                            R30 0
      218 LOADN                            R31 0
      219 CALL                             R29 2 1
      220 SETTABLEKS                       R29 R28 K54 ["AnchorPoint"]
      222 GETIMPORT                        R29 K64 [UDim2.fromOffset]
      224 GETTABLEKS                       R30 R1 K65 ["Padding"]
      226 GETTABLEKS                       R30 R30 K16 ["Medium"]
      228 GETTABLEKS                       R31 R1 K65 ["Padding"]
      230 GETTABLEKS                       R31 R31 K16 ["Medium"]
      232 CALL                             R29 2 1
      233 SETTABLEKS                       R29 R28 K55 ["Position"]
      235 GETIMPORT                        R29 K67 [Enum.AutomaticSize.XY]
      237 SETTABLEKS                       R29 R28 K56 ["AutomaticSize"]
      239 DUPTABLE                         R29 K69 [{"Badge"}]
      240 GETUPVAL                         R30 7
      241 GETUPVAL                         R31 0
      242 GETTABLEKS                       R31 R31 K68 ["Badge"]
      244 DUPTABLE                         R32 K73 [{"text", "icon", "variant"}]
      245 GETTABLEKS                       R33 R0 K52 ["badge"]
      247 GETTABLEKS                       R33 R33 K74 ["label"]
      249 SETTABLEKS                       R33 R32 K70 ["text"]
      251 GETTABLEKS                       R33 R0 K52 ["badge"]
      253 GETTABLEKS                       R33 R33 K71 ["icon"]
      255 SETTABLEKS                       R33 R32 K71 ["icon"]
      257 GETTABLEKS                       R33 R0 K52 ["badge"]
      259 GETTABLEKS                       R33 R33 K72 ["variant"]
      261 SETTABLEKS                       R33 R32 K72 ["variant"]
      263 CALL                             R30 2 1
      264 SETTABLEKS                       R30 R29 K68 ["Badge"]
      266 CALL                             R26 3 1
      267 SETTABLEKS                       R26 R25 K68 ["Badge"]
      269 JUMPIFNOT                        R7 ; [+10]
      270 GETUPVAL                         R26 7
      271 LOADK                            R27 K75 ["UIFlexItem"]
      272 DUPTABLE                         R28 K77 [{"FlexMode"}]
      273 GETIMPORT                        R29 K80 [Enum.UIFlexMode.Fill]
      275 SETTABLEKS                       R29 R28 K76 ["FlexMode"]
      277 CALL                             R26 2 1
      278 SETTABLEKS                       R26 R25 K81 ["Flex"]
      280 JUMPIFNOT                        R13 ; [+8]
      281 GETUPVAL                         R26 7
      282 LOADK                            R27 K82 ["UIScale"]
      283 DUPTABLE                         R28 K84 [{"Scale"}]
      284 SETTABLEKS                       R20 R28 K83 ["Scale"]
      286 CALL                             R26 2 1
      287 SETTABLEKS                       R26 R25 K85 ["Zoom"]
      289 GETUPVAL                         R26 7
      290 GETUPVAL                         R27 0
      291 GETTABLEKS                       R27 R27 K53 ["View"]
      293 DUPTABLE                         R28 K92 [{["LayoutOrder"] = 1, ["Size"], ["ClipsDescendants"] = True, ["tag"] = "bg-shift-200"}]
      294 GETIMPORT                        R29 K93 [UDim2.new]
      296 LOADN                            R30 1
      297 LOADN                            R31 0
      298 LOADN                            R32 0
      299 MOVE                             R33 R5
      300 CALL                             R29 4 1
      301 SETTABLEKS                       R29 R28 K88 ["Size"]
      303 MOVE                             R29 R25
      304 CALL                             R26 3 1
      305 NEWTABLE                         R27 8 0
      307 LOADN                            R28 0
      308 NEWCLOSURE                       R29 P2
      309 CAPTURE                          REF R28
      310 JUMPIFNOTEQKS                    R2 K94 ["FeaturedTile"] ; [+114]
      312 GETTABLEKS                       R30 R0 K95 ["action"]
      314 JUMPIFEQKNIL                     R30 ; [+110]
      316 GETUPVAL                         R30 7
      317 GETUPVAL                         R31 0
      318 GETTABLEKS                       R31 R31 K53 ["View"]
      320 DUPTABLE                         R32 K96 [{"LayoutOrder", "Size", "AutomaticSize"}]
      321 ADDK                             R28 R28 K87 [1]
      322 MOVE                             R33 R28
      323 SETTABLEKS                       R33 R32 K86 ["LayoutOrder"]
      325 GETIMPORT                        R33 K93 [UDim2.new]
      327 LOADN                            R34 1
      328 LOADN                            R35 0
      329 LOADN                            R36 0
      330 LOADN                            R37 0
      331 CALL                             R33 4 1
      332 SETTABLEKS                       R33 R32 K88 ["Size"]
      334 GETIMPORT                        R33 K98 [Enum.AutomaticSize.Y]
      336 SETTABLEKS                       R33 R32 K56 ["AutomaticSize"]
      338 DUPTABLE                         R33 K101 [{"Title", "Action"}]
      339 GETUPVAL                         R34 7
      340 GETUPVAL                         R35 0
      341 GETTABLEKS                       R35 R35 K53 ["View"]
      343 DUPTABLE                         R36 K102 [{"Position", "Size", "AutomaticSize"}]
      344 GETIMPORT                        R37 K64 [UDim2.fromOffset]
      346 LOADN                            R38 0
      347 LOADN                            R39 0
      348 CALL                             R37 2 1
      349 SETTABLEKS                       R37 R36 K55 ["Position"]
      351 GETIMPORT                        R37 K93 [UDim2.new]
      353 LOADN                            R38 1
      354 GETTABLEKS                       R41 R1 K88 ["Size"]
      356 GETTABLEKS                       R41 R41 K103 ["Size_1600"]
      358 GETTABLEKS                       R42 R1 K28 ["Gap"]
      360 GETTABLEKS                       R42 R42 K31 ["Small"]
      362 ADD                              R40 R41 R42
      363 MINUS                            R39 R40
      364 LOADN                            R40 0
      365 LOADN                            R41 0
      366 CALL                             R37 4 1
      367 SETTABLEKS                       R37 R36 K88 ["Size"]
      369 GETIMPORT                        R37 K98 [Enum.AutomaticSize.Y]
      371 SETTABLEKS                       R37 R36 K56 ["AutomaticSize"]
      373 DUPTABLE                         R37 K105 [{"Inner"}]
      374 GETUPVAL                         R38 8
      375 GETTABLEKS                       R39 R0 K106 ["title"]
      377 GETTABLEKS                       R40 R0 K107 ["metadata"]
      379 LOADB                            R41 1
      380 CALL                             R38 3 1
      381 SETTABLEKS                       R38 R37 K104 ["Inner"]
      383 CALL                             R34 3 1
      384 SETTABLEKS                       R34 R33 K99 ["Title"]
      386 GETUPVAL                         R34 7
      387 GETUPVAL                         R35 0
      388 GETTABLEKS                       R35 R35 K53 ["View"]
      390 DUPTABLE                         R36 K108 [{"AnchorPoint", "Position", "AutomaticSize"}]
      391 GETIMPORT                        R37 K61 [Vector2.new]
      393 LOADN                            R38 1
      394 LOADK                            R39 K109 [0.5]
      395 CALL                             R37 2 1
      396 SETTABLEKS                       R37 R36 K54 ["AnchorPoint"]
      398 GETIMPORT                        R37 K111 [UDim2.fromScale]
      400 LOADN                            R38 1
      401 LOADK                            R39 K109 [0.5]
      402 CALL                             R37 2 1
      403 SETTABLEKS                       R37 R36 K55 ["Position"]
      405 GETIMPORT                        R37 K67 [Enum.AutomaticSize.XY]
      407 SETTABLEKS                       R37 R36 K56 ["AutomaticSize"]
      409 DUPTABLE                         R37 K113 [{"Button"}]
      410 GETUPVAL                         R38 9
      411 GETTABLEKS                       R39 R0 K95 ["action"]
      413 MOVE                             R40 R2
      414 LOADB                            R41 0
      415 CALL                             R38 3 1
      416 SETTABLEKS                       R38 R37 K112 ["Button"]
      418 CALL                             R34 3 1
      419 SETTABLEKS                       R34 R33 K100 ["Action"]
      421 CALL                             R30 3 1
      422 SETTABLEKS                       R30 R27 K114 ["Header"]
      424 JUMP                             ; [+150]
      425 JUMPIFNOT                        R14 ; [+114]
      426 GETUPVAL                         R30 7
      427 GETUPVAL                         R31 0
      428 GETTABLEKS                       R31 R31 K53 ["View"]
      430 DUPTABLE                         R32 K96 [{"LayoutOrder", "Size", "AutomaticSize"}]
      431 ADDK                             R28 R28 K87 [1]
      432 MOVE                             R33 R28
      433 SETTABLEKS                       R33 R32 K86 ["LayoutOrder"]
      435 GETIMPORT                        R33 K93 [UDim2.new]
      437 LOADN                            R34 1
      438 LOADN                            R35 0
      439 LOADN                            R36 0
      440 LOADN                            R37 0
      441 CALL                             R33 4 1
      442 SETTABLEKS                       R33 R32 K88 ["Size"]
      444 GETIMPORT                        R33 K98 [Enum.AutomaticSize.Y]
      446 SETTABLEKS                       R33 R32 K56 ["AutomaticSize"]
      448 DUPTABLE                         R33 K116 [{"Title", "HoverAction"}]
      449 GETUPVAL                         R34 7
      450 GETUPVAL                         R35 0
      451 GETTABLEKS                       R35 R35 K53 ["View"]
      453 DUPTABLE                         R36 K102 [{"Position", "Size", "AutomaticSize"}]
      454 GETIMPORT                        R37 K64 [UDim2.fromOffset]
      456 LOADN                            R38 0
      457 LOADN                            R39 0
      458 CALL                             R37 2 1
      459 SETTABLEKS                       R37 R36 K55 ["Position"]
      461 GETIMPORT                        R37 K93 [UDim2.new]
      463 LOADN                            R38 1
      464 GETTABLEKS                       R41 R1 K88 ["Size"]
      466 GETTABLEKS                       R41 R41 K103 ["Size_1600"]
      468 GETTABLEKS                       R42 R1 K28 ["Gap"]
      470 GETTABLEKS                       R42 R42 K31 ["Small"]
      472 ADD                              R40 R41 R42
      473 MINUS                            R39 R40
      474 LOADN                            R40 0
      475 LOADN                            R41 0
      476 CALL                             R37 4 1
      477 SETTABLEKS                       R37 R36 K88 ["Size"]
      479 GETIMPORT                        R37 K98 [Enum.AutomaticSize.Y]
      481 SETTABLEKS                       R37 R36 K56 ["AutomaticSize"]
      483 DUPTABLE                         R37 K105 [{"Inner"}]
      484 GETUPVAL                         R38 8
      485 GETTABLEKS                       R39 R0 K106 ["title"]
      487 GETTABLEKS                       R40 R0 K107 ["metadata"]
      489 LOADB                            R41 1
      490 CALL                             R38 3 1
      491 SETTABLEKS                       R38 R37 K104 ["Inner"]
      493 CALL                             R34 3 1
      494 SETTABLEKS                       R34 R33 K99 ["Title"]
      496 GETUPVAL                         R34 7
      497 GETUPVAL                         R35 0
      498 GETTABLEKS                       R35 R35 K53 ["View"]
      500 DUPTABLE                         R36 K120 [{["testId"] = "--appkit-dynamic-tile-hover-action", ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Visible"]}]
      501 GETIMPORT                        R37 K61 [Vector2.new]
      503 LOADN                            R38 1
      504 LOADK                            R39 K109 [0.5]
      505 CALL                             R37 2 1
      506 SETTABLEKS                       R37 R36 K54 ["AnchorPoint"]
      508 GETIMPORT                        R37 K111 [UDim2.fromScale]
      510 LOADN                            R38 1
      511 LOADK                            R39 K109 [0.5]
      512 CALL                             R37 2 1
      513 SETTABLEKS                       R37 R36 K55 ["Position"]
      515 GETIMPORT                        R37 K67 [Enum.AutomaticSize.XY]
      517 SETTABLEKS                       R37 R36 K56 ["AutomaticSize"]
      519 SETTABLEKS                       R12 R36 K119 ["Visible"]
      521 DUPTABLE                         R37 K113 [{"Button"}]
      522 GETUPVAL                         R38 9
      523 DUPTABLE                         R39 K123 [{["label"] = "Join", ["variant"] = "Emphasis", ["onActivated"]}]
      524 GETTABLEKS                       R40 R0 K21 ["onActivated"]
      526 SETTABLEKS                       R40 R39 K21 ["onActivated"]
      528 MOVE                             R40 R2
      529 LOADB                            R41 0
      530 CALL                             R38 3 1
      531 SETTABLEKS                       R38 R37 K112 ["Button"]
      533 CALL                             R34 3 1
      534 SETTABLEKS                       R34 R33 K115 ["HoverAction"]
      536 CALL                             R30 3 1
      537 SETTABLEKS                       R30 R27 K114 ["Header"]
      539 JUMP                             ; [+35]
      540 GETUPVAL                         R30 7
      541 GETUPVAL                         R31 0
      542 GETTABLEKS                       R31 R31 K53 ["View"]
      544 DUPTABLE                         R32 K96 [{"LayoutOrder", "Size", "AutomaticSize"}]
      545 ADDK                             R28 R28 K87 [1]
      546 MOVE                             R33 R28
      547 SETTABLEKS                       R33 R32 K86 ["LayoutOrder"]
      549 GETIMPORT                        R33 K93 [UDim2.new]
      551 LOADN                            R34 1
      552 LOADN                            R35 0
      553 LOADN                            R36 0
      554 LOADN                            R37 0
      555 CALL                             R33 4 1
      556 SETTABLEKS                       R33 R32 K88 ["Size"]
      558 GETIMPORT                        R33 K98 [Enum.AutomaticSize.Y]
      560 SETTABLEKS                       R33 R32 K56 ["AutomaticSize"]
      562 DUPTABLE                         R33 K105 [{"Inner"}]
      563 GETUPVAL                         R34 8
      564 GETTABLEKS                       R35 R0 K106 ["title"]
      566 GETTABLEKS                       R36 R0 K107 ["metadata"]
      568 LOADB                            R37 1
      569 CALL                             R34 3 1
      570 SETTABLEKS                       R34 R33 K104 ["Inner"]
      572 CALL                             R30 3 1
      573 SETTABLEKS                       R30 R27 K114 ["Header"]
      575 JUMPIFNOTEQKS                    R2 K29 ["ItemTile"] ; [+123]
      577 GETTABLEKS                       R30 R0 K124 ["details"]
      579 JUMPIFEQKNIL                     R30 ; [+119]
      581 GETTABLEKS                       R31 R0 K124 ["details"]
      583 LENGTH                           R30 R31
      584 LOADN                            R31 0
      585 JUMPIFNOTLT                      R31 R30 ; [+113]
      587 NEWTABLE                         R30 0 0
      589 GETTABLEKS                       R31 R0 K124 ["details"]
      591 LOADNIL                          R32
      592 LOADNIL                          R33
      593 FORGPREP                         R31
      594 NEWTABLE                         R36 2 0
      596 GETTABLEKS                       R37 R35 K71 ["icon"]
      598 JUMPIFEQKNIL                     R37 ; [+22]
      600 GETUPVAL                         R37 7
      601 GETUPVAL                         R38 0
      602 GETTABLEKS                       R38 R38 K125 ["Icon"]
      604 DUPTABLE                         R39 K128 [{["name"], ["size"], ["LayoutOrder"] = 1}]
      605 GETTABLEKS                       R40 R35 K71 ["icon"]
      607 SETTABLEKS                       R40 R39 K126 ["name"]
      609 GETUPVAL                         R40 0
      610 GETTABLEKS                       R40 R40 K129 ["Enums"]
      612 GETTABLEKS                       R40 R40 K130 ["IconSize"]
      614 GETTABLEKS                       R40 R40 K30 ["XSmall"]
      616 SETTABLEKS                       R40 R39 K127 ["size"]
      618 CALL                             R37 2 1
      619 SETTABLEKS                       R37 R36 K125 ["Icon"]
      621 GETUPVAL                         R37 7
      622 GETUPVAL                         R38 0
      623 GETTABLEKS                       R38 R38 K131 ["Text"]
      625 DUPTABLE                         R39 K133 [{["Text"], ["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["tag"] = "text-body-medium content-emphasis text-no-wrap"}]
      626 GETTABLEKS                       R40 R35 K74 ["label"]
      628 SETTABLEKS                       R40 R39 K131 ["Text"]
      630 GETIMPORT                        R40 K67 [Enum.AutomaticSize.XY]
      632 SETTABLEKS                       R40 R39 K56 ["AutomaticSize"]
      634 GETIMPORT                        R40 K64 [UDim2.fromOffset]
      636 LOADN                            R41 0
      637 LOADN                            R42 0
      638 CALL                             R40 2 1
      639 SETTABLEKS                       R40 R39 K88 ["Size"]
      641 CALL                             R37 2 1
      642 SETTABLEKS                       R37 R36 K134 ["Label"]
      644 LOADK                            R38 K135 ["d%*"]
      645 MOVE                             R40 R34
      646 NAMECALL                         R38 R38 K136 ["format"]
      648 CALL                             R38 2 1
      649 MOVE                             R37 R38
      650 GETUPVAL                         R38 7
      651 GETUPVAL                         R39 0
      652 GETTABLEKS                       R39 R39 K53 ["View"]
      654 DUPTABLE                         R40 K138 [{["LayoutOrder"], ["AutomaticSize"], ["Size"], ["tag"] = "row align-y-center gap-xsmall"}]
      655 SETTABLEKS                       R34 R40 K86 ["LayoutOrder"]
      657 GETIMPORT                        R41 K67 [Enum.AutomaticSize.XY]
      659 SETTABLEKS                       R41 R40 K56 ["AutomaticSize"]
      661 GETIMPORT                        R41 K64 [UDim2.fromOffset]
      663 LOADN                            R42 0
      664 LOADN                            R43 0
      665 CALL                             R41 2 1
      666 SETTABLEKS                       R41 R40 K88 ["Size"]
      668 MOVE                             R41 R36
      669 CALL                             R38 3 1
      670 SETTABLE                         R38 R30 R37
      671 FORGLOOP                         R31 2 ; [-78]
      673 GETUPVAL                         R31 7
      674 GETUPVAL                         R32 0
      675 GETTABLEKS                       R32 R32 K53 ["View"]
      677 DUPTABLE                         R33 K140 [{["LayoutOrder"], ["AutomaticSize"], ["Size"], ["tag"] = "row align-y-center gap-small"}]
      678 ADDK                             R28 R28 K87 [1]
      679 MOVE                             R34 R28
      680 SETTABLEKS                       R34 R33 K86 ["LayoutOrder"]
      682 GETIMPORT                        R34 K98 [Enum.AutomaticSize.Y]
      684 SETTABLEKS                       R34 R33 K56 ["AutomaticSize"]
      686 GETIMPORT                        R34 K93 [UDim2.new]
      688 LOADN                            R35 1
      689 LOADN                            R36 0
      690 LOADN                            R37 0
      691 LOADN                            R38 0
      692 CALL                             R34 4 1
      693 SETTABLEKS                       R34 R33 K88 ["Size"]
      695 MOVE                             R34 R30
      696 CALL                             R31 3 1
      697 SETTABLEKS                       R31 R27 K141 ["Details"]
      699 JUMPIFNOTEQKS                    R2 K27 ["CreatorTile"] ; [+322]
      701 GETTABLEKS                       R30 R0 K142 ["stats"]
      703 JUMPIFEQKNIL                     R30 ; [+318]
      705 GETTABLEKS                       R31 R0 K142 ["stats"]
      707 LENGTH                           R30 R31
      708 LOADN                            R31 0
      709 JUMPIFNOTLT                      R31 R30 ; [+312]
      711 GETUPVAL                         R30 7
      712 GETUPVAL                         R31 0
      713 GETTABLEKS                       R31 R31 K143 ["Divider"]
      715 DUPTABLE                         R32 K144 [{"LayoutOrder"}]
      716 ADDK                             R28 R28 K87 [1]
      717 MOVE                             R33 R28
      718 SETTABLEKS                       R33 R32 K86 ["LayoutOrder"]
      720 CALL                             R30 2 1
      721 SETTABLEKS                       R30 R27 K143 ["Divider"]
      723 NEWTABLE                         R30 0 0
      725 GETTABLEKS                       R31 R0 K142 ["stats"]
      727 LOADNIL                          R32
      728 LOADNIL                          R33
      729 FORGPREP                         R31
      730 NEWTABLE                         R36 2 0
      732 GETTABLEKS                       R37 R35 K145 ["valueIcon"]
      734 JUMPIFEQKNIL                     R37 ; [+22]
      736 GETUPVAL                         R37 7
      737 GETUPVAL                         R38 0
      738 GETTABLEKS                       R38 R38 K125 ["Icon"]
      740 DUPTABLE                         R39 K128 [{["name"], ["size"], ["LayoutOrder"] = 1}]
      741 GETTABLEKS                       R40 R35 K145 ["valueIcon"]
      743 SETTABLEKS                       R40 R39 K126 ["name"]
      745 GETUPVAL                         R40 0
      746 GETTABLEKS                       R40 R40 K129 ["Enums"]
      748 GETTABLEKS                       R40 R40 K130 ["IconSize"]
      750 GETTABLEKS                       R40 R40 K30 ["XSmall"]
      752 SETTABLEKS                       R40 R39 K127 ["size"]
      754 CALL                             R37 2 1
      755 SETTABLEKS                       R37 R36 K125 ["Icon"]
      757 GETUPVAL                         R37 7
      758 GETUPVAL                         R38 0
      759 GETTABLEKS                       R38 R38 K131 ["Text"]
      761 DUPTABLE                         R39 K147 [{["Text"], ["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["tag"] = "text-caption-large content-emphasis text-no-wrap"}]
      762 GETTABLEKS                       R40 R35 K148 ["value"]
      764 SETTABLEKS                       R40 R39 K131 ["Text"]
      766 GETIMPORT                        R40 K67 [Enum.AutomaticSize.XY]
      768 SETTABLEKS                       R40 R39 K56 ["AutomaticSize"]
      770 GETIMPORT                        R40 K64 [UDim2.fromOffset]
      772 LOADN                            R41 0
      773 LOADN                            R42 0
      774 CALL                             R40 2 1
      775 SETTABLEKS                       R40 R39 K88 ["Size"]
      777 CALL                             R37 2 1
      778 SETTABLEKS                       R37 R36 K149 ["Value"]
      780 DUPTABLE                         R37 K151 [{"ValueGroup"}]
      781 GETUPVAL                         R38 7
      782 GETUPVAL                         R39 0
      783 GETTABLEKS                       R39 R39 K53 ["View"]
      785 DUPTABLE                         R40 K152 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["Size"], ["tag"] = "row align-y-center gap-xsmall"}]
      786 GETIMPORT                        R41 K67 [Enum.AutomaticSize.XY]
      788 SETTABLEKS                       R41 R40 K56 ["AutomaticSize"]
      790 GETIMPORT                        R41 K64 [UDim2.fromOffset]
      792 LOADN                            R42 0
      793 LOADN                            R43 0
      794 CALL                             R41 2 1
      795 SETTABLEKS                       R41 R40 K88 ["Size"]
      797 MOVE                             R41 R36
      798 CALL                             R38 3 1
      799 SETTABLEKS                       R38 R37 K150 ["ValueGroup"]
      801 GETTABLEKS                       R38 R35 K153 ["trend"]
      803 JUMPIFEQKNIL                     R38 ; [+54]
      805 GETTABLEKS                       R39 R35 K153 ["trend"]
      807 GETTABLEKS                       R39 R39 K154 ["direction"]
      809 JUMPIFEQKS                       R39 K155 ["Up"] ; [+2]
      811 LOADB                            R38 0 +1
      812 LOADB                            R38 1
      813 GETUPVAL                         R39 7
      814 GETUPVAL                         R40 0
      815 GETTABLEKS                       R40 R40 K131 ["Text"]
      817 DUPTABLE                         R41 K156 [{["Text"], ["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["tag"]}]
      818 LOADK                            R43 K157 ["%* %*"]
      819 JUMPIFNOT                        R38 ; [+2]
      820 LOADK                            R45 K158 ["↑"]
      821 JUMP                             ; [+1]
      822 LOADK                            R45 K159 ["↓"]
      823 GETTABLEKS                       R46 R35 K153 ["trend"]
      825 GETTABLEKS                       R46 R46 K74 ["label"]
      827 NAMECALL                         R43 R43 K136 ["format"]
      829 CALL                             R43 3 1
      830 MOVE                             R42 R43
      831 SETTABLEKS                       R42 R41 K131 ["Text"]
      833 GETIMPORT                        R42 K67 [Enum.AutomaticSize.XY]
      835 SETTABLEKS                       R42 R41 K56 ["AutomaticSize"]
      837 GETIMPORT                        R42 K64 [UDim2.fromOffset]
      839 LOADN                            R43 0
      840 LOADN                            R44 0
      841 CALL                             R42 2 1
      842 SETTABLEKS                       R42 R41 K88 ["Size"]
      844 LOADK                            R43 K160 ["text-caption-large %* text-no-wrap"]
      845 JUMPIFNOT                        R38 ; [+2]
      846 LOADK                            R45 K161 ["content-system-success"]
      847 JUMP                             ; [+1]
      848 LOADK                            R45 K162 ["content-muted"]
      849 NAMECALL                         R43 R43 K136 ["format"]
      851 CALL                             R43 2 1
      852 MOVE                             R42 R43
      853 SETTABLEKS                       R42 R41 K44 ["tag"]
      855 CALL                             R39 2 1
      856 SETTABLEKS                       R39 R37 K163 ["Trend"]
      858 LOADK                            R39 K164 ["s%*"]
      859 MOVE                             R41 R34
      860 NAMECALL                         R39 R39 K136 ["format"]
      862 CALL                             R39 2 1
      863 MOVE                             R38 R39
      864 GETUPVAL                         R39 7
      865 GETUPVAL                         R40 0
      866 GETTABLEKS                       R40 R40 K53 ["View"]
      868 DUPTABLE                         R41 K165 [{"LayoutOrder", "Size"}]
      869 SETTABLEKS                       R34 R41 K86 ["LayoutOrder"]
      871 GETIMPORT                        R42 K93 [UDim2.new]
      873 LOADN                            R43 1
      874 LOADN                            R44 0
      875 LOADN                            R45 0
      876 GETTABLEKS                       R46 R1 K88 ["Size"]
      878 GETTABLEKS                       R46 R46 K166 ["Size_600"]
      880 CALL                             R42 4 1
      881 SETTABLEKS                       R42 R41 K88 ["Size"]
      883 DUPTABLE                         R42 K167 [{"Label", "Value"}]
      884 GETUPVAL                         R43 7
      885 GETUPVAL                         R44 0
      886 GETTABLEKS                       R44 R44 K131 ["Text"]
      888 DUPTABLE                         R45 K169 [{["Text"], ["Position"], ["Size"], ["tag"] = "text-body-medium content-default text-truncate-end text-align-x-left text-align-y-center"}]
      889 GETTABLEKS                       R46 R35 K74 ["label"]
      891 SETTABLEKS                       R46 R45 K131 ["Text"]
      893 GETIMPORT                        R46 K64 [UDim2.fromOffset]
      895 LOADN                            R47 0
      896 LOADN                            R48 0
      897 CALL                             R46 2 1
      898 SETTABLEKS                       R46 R45 K55 ["Position"]
      900 GETIMPORT                        R46 K93 [UDim2.new]
      902 LOADK                            R47 K170 [0.55]
      903 LOADN                            R48 0
      904 LOADN                            R49 1
      905 LOADN                            R50 0
      906 CALL                             R46 4 1
      907 SETTABLEKS                       R46 R45 K88 ["Size"]
      909 CALL                             R43 2 1
      910 SETTABLEKS                       R43 R42 K134 ["Label"]
      912 GETUPVAL                         R43 7
      913 GETUPVAL                         R44 0
      914 GETTABLEKS                       R44 R44 K53 ["View"]
      916 DUPTABLE                         R45 K171 [{"AnchorPoint", "Position", "Size"}]
      917 GETIMPORT                        R46 K61 [Vector2.new]
      919 LOADN                            R47 1
      920 LOADK                            R48 K109 [0.5]
      921 CALL                             R46 2 1
      922 SETTABLEKS                       R46 R45 K54 ["AnchorPoint"]
      924 GETIMPORT                        R46 K111 [UDim2.fromScale]
      926 LOADN                            R47 1
      927 LOADK                            R48 K109 [0.5]
      928 CALL                             R46 2 1
      929 SETTABLEKS                       R46 R45 K55 ["Position"]
      931 GETIMPORT                        R46 K93 [UDim2.new]
      933 LOADK                            R47 K172 [0.45]
      934 LOADN                            R48 0
      935 LOADN                            R49 1
      936 LOADN                            R50 0
      937 CALL                             R46 4 1
      938 SETTABLEKS                       R46 R45 K88 ["Size"]
      940 DUPTABLE                         R46 K174 [{"Row"}]
      941 GETUPVAL                         R47 7
      942 GETUPVAL                         R48 0
      943 GETTABLEKS                       R48 R48 K53 ["View"]
      945 DUPTABLE                         R49 K175 [{["AnchorPoint"], ["Position"], ["AutomaticSize"], ["tag"] = "row align-y-center gap-small"}]
      946 GETIMPORT                        R50 K61 [Vector2.new]
      948 LOADN                            R51 1
      949 LOADK                            R52 K109 [0.5]
      950 CALL                             R50 2 1
      951 SETTABLEKS                       R50 R49 K54 ["AnchorPoint"]
      953 GETIMPORT                        R50 K111 [UDim2.fromScale]
      955 LOADN                            R51 1
      956 LOADK                            R52 K109 [0.5]
      957 CALL                             R50 2 1
      958 SETTABLEKS                       R50 R49 K55 ["Position"]
      960 GETIMPORT                        R50 K67 [Enum.AutomaticSize.XY]
      962 SETTABLEKS                       R50 R49 K56 ["AutomaticSize"]
      964 MOVE                             R50 R37
      965 CALL                             R47 3 1
      966 SETTABLEKS                       R47 R46 K173 ["Row"]
      968 CALL                             R43 3 1
      969 SETTABLEKS                       R43 R42 K149 ["Value"]
      971 CALL                             R39 3 1
      972 SETTABLE                         R39 R30 R38
      973 FORGLOOP                         R31 2 ; [-244]
      975 GETUPVAL                         R31 7
      976 GETUPVAL                         R32 0
      977 GETTABLEKS                       R32 R32 K53 ["View"]
      979 DUPTABLE                         R33 K177 [{"LayoutOrder", "Size", "AutomaticSize", "layout"}]
      980 ADDK                             R28 R28 K87 [1]
      981 MOVE                             R34 R28
      982 SETTABLEKS                       R34 R33 K86 ["LayoutOrder"]
      984 GETIMPORT                        R34 K93 [UDim2.new]
      986 LOADN                            R35 1
      987 LOADN                            R36 0
      988 LOADN                            R37 0
      989 LOADN                            R38 0
      990 CALL                             R34 4 1
      991 SETTABLEKS                       R34 R33 K88 ["Size"]
      993 GETIMPORT                        R34 K98 [Enum.AutomaticSize.Y]
      995 SETTABLEKS                       R34 R33 K56 ["AutomaticSize"]
      997 DUPTABLE                         R34 K180 [{"FillDirection", "SortOrder", "Padding"}]
      998 GETIMPORT                        R35 K182 [Enum.FillDirection.Vertical]
     1000 SETTABLEKS                       R35 R34 K178 ["FillDirection"]
     1002 GETIMPORT                        R35 K183 [Enum.SortOrder.LayoutOrder]
     1004 SETTABLEKS                       R35 R34 K179 ["SortOrder"]
     1006 GETIMPORT                        R35 K40 [UDim.new]
     1008 LOADN                            R36 0
     1009 GETTABLEKS                       R37 R1 K28 ["Gap"]
     1011 GETTABLEKS                       R37 R37 K30 ["XSmall"]
     1013 CALL                             R35 2 1
     1014 SETTABLEKS                       R35 R34 K65 ["Padding"]
     1016 SETTABLEKS                       R34 R33 K176 ["layout"]
     1018 MOVE                             R34 R30
     1019 CALL                             R31 3 1
     1020 SETTABLEKS                       R31 R27 K184 ["Stats"]
     1022 JUMPIFEQKS                       R2 K185 ["EventTile"] ; [+5]
     1024 JUMPIFEQKS                       R2 K29 ["ItemTile"] ; [+3]
     1026 JUMPIFNOTEQKS                    R2 K27 ["CreatorTile"] ; [+39]
     1028 GETTABLEKS                       R30 R0 K95 ["action"]
     1030 JUMPIFEQKNIL                     R30 ; [+35]
     1032 GETUPVAL                         R30 7
     1033 GETUPVAL                         R31 0
     1034 GETTABLEKS                       R31 R31 K53 ["View"]
     1036 DUPTABLE                         R32 K96 [{"LayoutOrder", "Size", "AutomaticSize"}]
     1037 ADDK                             R28 R28 K87 [1]
     1038 MOVE                             R33 R28
     1039 SETTABLEKS                       R33 R32 K86 ["LayoutOrder"]
     1041 GETIMPORT                        R33 K93 [UDim2.new]
     1043 LOADN                            R34 1
     1044 LOADN                            R35 0
     1045 LOADN                            R36 0
     1046 LOADN                            R37 0
     1047 CALL                             R33 4 1
     1048 SETTABLEKS                       R33 R32 K88 ["Size"]
     1050 GETIMPORT                        R33 K98 [Enum.AutomaticSize.Y]
     1052 SETTABLEKS                       R33 R32 K56 ["AutomaticSize"]
     1054 DUPTABLE                         R33 K113 [{"Button"}]
     1055 GETUPVAL                         R34 9
     1056 GETTABLEKS                       R35 R0 K95 ["action"]
     1058 MOVE                             R36 R2
     1059 LOADB                            R37 1
     1060 CALL                             R34 3 1
     1061 SETTABLEKS                       R34 R33 K112 ["Button"]
     1063 CALL                             R30 3 1
     1064 SETTABLEKS                       R30 R27 K100 ["Action"]
     1066 JUMPIFNOT                        R6 ; [+2]
     1067 LOADK                            R30 K186 ["padding-medium"]
     1068 JUMP                             ; [+1]
     1069 LOADK                            R30 K187 [""]
     1070 GETUPVAL                         R31 7
     1071 GETUPVAL                         R32 0
     1072 GETTABLEKS                       R32 R32 K53 ["View"]
     1074 DUPTABLE                         R33 K188 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"], ["layout"]}]
     1075 GETIMPORT                        R34 K93 [UDim2.new]
     1077 LOADN                            R35 1
     1078 LOADN                            R36 0
     1079 LOADN                            R37 0
     1080 LOADN                            R38 0
     1081 CALL                             R34 4 1
     1082 SETTABLEKS                       R34 R33 K88 ["Size"]
     1084 GETIMPORT                        R34 K98 [Enum.AutomaticSize.Y]
     1086 SETTABLEKS                       R34 R33 K56 ["AutomaticSize"]
     1088 SETTABLEKS                       R30 R33 K44 ["tag"]
     1090 DUPTABLE                         R34 K180 [{"FillDirection", "SortOrder", "Padding"}]
     1091 GETIMPORT                        R35 K182 [Enum.FillDirection.Vertical]
     1093 SETTABLEKS                       R35 R34 K178 ["FillDirection"]
     1095 GETIMPORT                        R35 K183 [Enum.SortOrder.LayoutOrder]
     1097 SETTABLEKS                       R35 R34 K179 ["SortOrder"]
     1099 GETIMPORT                        R35 K40 [UDim.new]
     1101 LOADN                            R36 0
     1102 MOVE                             R37 R22
     1103 CALL                             R35 2 1
     1104 SETTABLEKS                       R35 R34 K65 ["Padding"]
     1106 SETTABLEKS                       R34 R33 K176 ["layout"]
     1108 MOVE                             R34 R27
     1109 CALL                             R31 3 1
     1110 JUMPIFNOT                        R6 ; [+2]
     1111 LOADK                            R32 K189 ["bg-shift-200 radius-medium clip"]
     1112 JUMP                             ; [+1]
     1113 LOADK                            R32 K187 [""]
     1114 JUMPIFNOT                        R6 ; [+2]
     1115 LOADN                            R33 0
     1116 JUMP                             ; [+4]
     1117 GETTABLEKS                       R33 R1 K28 ["Gap"]
     1119 GETTABLEKS                       R33 R33 K31 ["Small"]
     1121 MOVE                             R34 R13
     1122 JUMPIF                           R34 ; [+3]
     1123 MOVE                             R34 R14
     1124 JUMPIF                           R34 ; [+1]
     1125 MOVE                             R34 R15
     1126 JUMPIFNOT                        R15 ; [+8]
     1127 JUMPIF                           R6 ; [+7]
     1128 DUPTABLE                         R35 K191 [{"affordance"}]
     1129 GETUPVAL                         R36 10
     1130 GETTABLEKS                       R36 R36 K192 ["None"]
     1132 SETTABLEKS                       R36 R35 K190 ["affordance"]
     1134 JUMP                             ; [+1]
     1135 LOADNIL                          R35
     1136 DUPTABLE                         R36 K195 [{"Media", "Content"}]
     1137 SETTABLEKS                       R26 R36 K193 ["Media"]
     1139 SETTABLEKS                       R31 R36 K194 ["Content"]
     1141 JUMPIFNOT                        R13 ; [+8]
     1142 GETUPVAL                         R37 7
     1143 LOADK                            R38 K82 ["UIScale"]
     1144 DUPTABLE                         R39 K84 [{"Scale"}]
     1145 SETTABLEKS                       R19 R39 K83 ["Scale"]
     1147 CALL                             R37 2 1
     1148 SETTABLEKS                       R37 R36 K83 ["Scale"]
     1150 GETUPVAL                         R37 7
     1151 GETUPVAL                         R38 0
     1152 GETTABLEKS                       R38 R38 K53 ["View"]
     1154 DUPTABLE                         R39 K199 [{["testId"] = "--appkit-dynamic-tile", ["onActivated"], ["onStateChanged"], ["stateLayer"], ["tag"], ["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["layout"]}]
     1155 GETTABLEKS                       R40 R0 K21 ["onActivated"]
     1157 SETTABLEKS                       R40 R39 K21 ["onActivated"]
     1159 JUMPIFNOT                        R34 ; [+2]
     1160 MOVE                             R40 R21
     1161 JUMP                             ; [+1]
     1162 LOADNIL                          R40
     1163 SETTABLEKS                       R40 R39 K197 ["onStateChanged"]
     1165 SETTABLEKS                       R35 R39 K198 ["stateLayer"]
     1167 SETTABLEKS                       R32 R39 K44 ["tag"]
     1169 GETIMPORT                        R40 K61 [Vector2.new]
     1171 LOADK                            R41 K109 [0.5]
     1172 LOADK                            R42 K109 [0.5]
     1173 CALL                             R40 2 1
     1174 SETTABLEKS                       R40 R39 K54 ["AnchorPoint"]
     1176 GETIMPORT                        R40 K111 [UDim2.fromScale]
     1178 LOADK                            R41 K109 [0.5]
     1179 LOADK                            R42 K109 [0.5]
     1180 CALL                             R40 2 1
     1181 SETTABLEKS                       R40 R39 K55 ["Position"]
     1183 JUMPIFNOT                        R7 ; [+6]
     1184 GETIMPORT                        R40 K111 [UDim2.fromScale]
     1186 LOADN                            R41 1
     1187 LOADN                            R42 1
     1188 CALL                             R40 2 1
     1189 JUMP                             ; [+7]
     1190 GETIMPORT                        R40 K93 [UDim2.new]
     1192 LOADN                            R41 1
     1193 LOADN                            R42 0
     1194 LOADN                            R43 0
     1195 LOADN                            R44 0
     1196 CALL                             R40 4 1
     1197 SETTABLEKS                       R40 R39 K88 ["Size"]
     1199 JUMPIFNOT                        R7 ; [+3]
     1200 GETIMPORT                        R40 K200 [Enum.AutomaticSize.None]
     1202 JUMP                             ; [+2]
     1203 GETIMPORT                        R40 K98 [Enum.AutomaticSize.Y]
     1205 SETTABLEKS                       R40 R39 K56 ["AutomaticSize"]
     1207 DUPTABLE                         R40 K180 [{"FillDirection", "SortOrder", "Padding"}]
     1208 GETIMPORT                        R41 K182 [Enum.FillDirection.Vertical]
     1210 SETTABLEKS                       R41 R40 K178 ["FillDirection"]
     1212 GETIMPORT                        R41 K183 [Enum.SortOrder.LayoutOrder]
     1214 SETTABLEKS                       R41 R40 K179 ["SortOrder"]
     1216 GETIMPORT                        R41 K40 [UDim.new]
     1218 LOADN                            R42 0
     1219 MOVE                             R43 R33
     1220 CALL                             R41 2 1
     1221 SETTABLEKS                       R41 R40 K65 ["Padding"]
     1223 SETTABLEKS                       R40 R39 K176 ["layout"]
     1225 MOVE                             R40 R36
     1226 CALL                             R37 3 1
     1227 GETUPVAL                         R38 7
     1228 GETUPVAL                         R39 0
     1229 GETTABLEKS                       R39 R39 K53 ["View"]
     1231 DUPTABLE                         R40 K203 [{["testId"] = "--appkit-dynamic-tile-root", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["ClipsDescendants"] = False}]
     1232 GETTABLEKS                       R41 R0 K86 ["LayoutOrder"]
     1234 SETTABLEKS                       R41 R40 K86 ["LayoutOrder"]
     1236 JUMPIFNOT                        R7 ; [+8]
     1237 GETIMPORT                        R41 K93 [UDim2.new]
     1239 LOADN                            R42 0
     1240 MOVE                             R43 R3
     1241 LOADN                            R44 1
     1242 LOADN                            R45 0
     1243 CALL                             R41 4 1
     1244 JUMP                             ; [+7]
     1245 GETIMPORT                        R41 K93 [UDim2.new]
     1247 LOADN                            R42 0
     1248 MOVE                             R43 R3
     1249 LOADN                            R44 0
     1250 LOADN                            R45 0
     1251 CALL                             R41 4 1
     1252 SETTABLEKS                       R41 R40 K88 ["Size"]
     1254 JUMPIFNOT                        R7 ; [+3]
     1255 GETIMPORT                        R41 K200 [Enum.AutomaticSize.None]
     1257 JUMP                             ; [+2]
     1258 GETIMPORT                        R41 K98 [Enum.AutomaticSize.Y]
     1260 SETTABLEKS                       R41 R40 K56 ["AutomaticSize"]
     1262 DUPTABLE                         R41 K105 [{"Inner"}]
     1263 SETTABLEKS                       R37 R41 K104 ["Inner"]
     1265 CALL                             R38 3 -1
     1266 CLOSEUPVALS                      R28
     1267 RETURN                           R38 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.DynamicTile must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETTABLEKS                       R4 R0 K9 ["Packages"]
       32 GETTABLEKS                       R4 R4 K12 ["Motion"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R2 K13 ["Enums"]
       37 GETTABLEKS                       R4 R4 K14 ["ControlState"]
       39 GETTABLEKS                       R5 R2 K13 ["Enums"]
       41 GETTABLEKS                       R5 R5 K15 ["StateLayerAffordance"]
       43 GETTABLEKS                       R6 R1 K16 ["createElement"]
       45 DUPTABLE                         R7 K25 [{["isEnabled"] = True, ["tileScale"] = 1.012, ["activeScale"] = 1.004, ["mediaScale"] = 1.035}]
       46 GETIMPORT                        R8 K29 [Enum.EasingStyle.Sine]
       48 DUPTABLE                         R9 K38 [{["Default"] = 1.77777777777778, ["FeaturedTile"] = 1.77777777777778, ["ItemTile"] = 1.77777777777778, ["EventTile"] = 1.77777777777778, ["StudioTile"] = 1, ["CreatorTile"] = 1.77777777777778}]
       49 DUPTABLE                         R10 K42 [{["FeaturedTile"] = "Emphasis", ["EventTile"] = "SoftEmphasis", ["ItemTile"] = "Standard", ["CreatorTile"] = "Emphasis"}]
       50 DUPCLOSURE                       R11 K43 [PROTO_0]
       51 DUPCLOSURE                       R12 K44 [PROTO_1]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R13 K45 [PROTO_3]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R10
       58 DUPCLOSURE                       R14 K46 [PROTO_7]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R5
       70 RETURN                           R14 1
