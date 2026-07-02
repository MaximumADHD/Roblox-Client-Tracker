PROTO_0:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["_shouldRecreateTranslateY"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["setState"]
        7 DUPTABLE                         R3 K3 [{"nextHeaderLayoutY"}]
        8 SETTABLEKS                       R1 R3 K2 ["nextHeaderLayoutY"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["nativeEvent"]
        2 GETTABLEKS                       R2 R2 K1 ["layout"]
        4 GETTABLEKS                       R2 R2 K2 ["y"]
        6 GETTABLEKS                       R3 R1 K0 ["nativeEvent"]
        8 GETTABLEKS                       R3 R3 K1 ["layout"]
       10 GETTABLEKS                       R3 R3 K3 ["height"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["state"]
       15 GETTABLEKS                       R4 R4 K5 ["layoutY"]
       17 JUMPIFNOTEQ                      R2 R4 ; [+15]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["state"]
       22 GETTABLEKS                       R4 R4 K6 ["layoutHeight"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+8]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K4 ["state"]
       29 GETTABLEKS                       R4 R4 K7 ["measured"]
       31 JUMPIFEQKB                       R4 TRUE ; [+5]
       33 GETUPVAL                         R4 0
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K8 ["_shouldRecreateTranslateY"]
       37 GETUPVAL                         R4 0
       38 DUPTABLE                         R6 K10 [{["measured"] = True, ["layoutY"], ["layoutHeight"]}]
       39 SETTABLEKS                       R2 R6 K5 ["layoutY"]
       41 SETTABLEKS                       R3 R6 K6 ["layoutHeight"]
       43 NAMECALL                         R4 R4 K11 ["setState"]
       45 CALL                             R4 2 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K12 ["props"]
       49 MOVE                             R6 R1
       50 NAMECALL                         R4 R4 K13 ["onLayout"]
       52 CALL                             R4 2 0
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K14 ["Children"]
       56 GETTABLEKS                       R4 R4 K15 ["only"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K12 ["props"]
       61 GETTABLEKS                       R5 R5 K16 ["children"]
       63 CALL                             R4 1 1
       64 GETTABLEKS                       R5 R4 K12 ["props"]
       66 GETTABLEKS                       R5 R5 K13 ["onLayout"]
       68 JUMPIFNOT                        R5 ; [+6]
       69 GETTABLEKS                       R5 R4 K12 ["props"]
       71 MOVE                             R7 R1
       72 NAMECALL                         R5 R5 K13 ["onLayout"]
       74 CALL                             R5 2 0
       75 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["_ref"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R3 K2 ["ScrollViewStickyHeader not fully implemented"]
        3 CALL                             R2 1 0
        4 SETTABLEKS                       R1 R0 K3 ["props"]
        6 DUPTABLE                         R2 K12 [{["measured"] = False, ["layoutY"] = 0, ["layoutHeight"] = 0, ["nextHeaderLayoutY"], ["translateY"] = }]
        7 GETTABLEKS                       R3 R0 K3 ["props"]
        9 GETTABLEKS                       R3 R3 K9 ["nextHeaderLayoutY"]
       11 SETTABLEKS                       R3 R2 K9 ["nextHeaderLayoutY"]
       13 SETTABLEKS                       R2 R0 K13 ["state"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K14 ["_translateY"]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R0 K15 ["_shouldRecreateTranslateY"]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R0 K16 ["_haveReceivedInitialZeroTranslateY"]
       24 LOADN                            R2 64
       25 SETTABLEKS                       R2 R0 K17 ["_debounceTimeout"]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R0 K18 ["setNextHeaderY"]
       31 NEWCLOSURE                       R2 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U0
       34 SETTABLEKS                       R2 R0 K19 ["_onLayout"]
       36 NEWCLOSURE                       R2 P2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K20 ["_setComponentRef"]
       40 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_translateY"]
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 GETTABLEKS                       R1 R0 K1 ["_animatedValueListenerId"]
        6 JUMPIFEQKNIL                     R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K0 ["_translateY"]
       10 GETTABLEKS                       R3 R0 K1 ["_animatedValueListenerId"]
       12 NAMECALL                         R1 R1 K2 ["removeListener"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["toJSBoolean"]
       18 GETTABLEKS                       R2 R0 K4 ["_timer"]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R2 R0 K4 ["_timer"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["scrollViewHeight"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["scrollViewHeight"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+17]
        8 GETTABLEKS                       R2 R1 K2 ["scrollAnimatedValue"]
       10 GETTABLEKS                       R3 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R3 K2 ["scrollAnimatedValue"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+9]
       16 GETTABLEKS                       R2 R1 K3 ["inverted"]
       18 GETTABLEKS                       R3 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R3 K3 ["inverted"]
       22 JUMPIFEQ                         R2 R3 ; [+4]
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R0 K4 ["_shouldRecreateTranslateY"]
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["translateY"]
        6 JUMPIFEQ                         R0 R1 ; [+9]
        8 GETUPVAL                         R0 1
        9 DUPTABLE                         R2 K2 [{"translateY"}]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K1 ["translateY"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["_haveReceivedInitialZeroTranslateY"]
        7 JUMPIF                           R2 ; [+5]
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["_haveReceivedInitialZeroTranslateY"]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["toJSBoolean"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K4 ["_timer"]
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+5]
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["_timer"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 3
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["_debounceTimeout"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K4 ["_timer"]
       37 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_translateY"]
        2 JUMPIFEQKNIL                     R4 ; [+12]
        4 GETTABLEKS                       R4 R0 K1 ["_animatedValueListenerId"]
        6 JUMPIFEQKNIL                     R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K0 ["_translateY"]
       10 GETTABLEKS                       R6 R0 K1 ["_animatedValueListenerId"]
       12 NAMECALL                         R4 R4 K2 ["removeListener"]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["toJSBoolean"]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 1
       20 JUMPIFNOT                        R5 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K4 ["new"]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R3
       26 CALL                             R4 2 1
       27 JUMP                             ; [+1]
       28 MOVE                             R4 R1
       29 SETTABLEKS                       R4 R0 K5 ["translateY"]
       31 LOADB                            R4 0
       32 SETTABLEKS                       R4 R0 K6 ["_shouldRecreateTranslateY"]
       34 JUMPIF                           R2 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K7 ["_animatedValueListener"]
       38 JUMPIF                           R4 ; [+7]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R4 R0 K7 ["_animatedValueListener"]
       46 GETTABLEKS                       R4 R0 K8 ["state"]
       48 GETTABLEKS                       R4 R4 K5 ["translateY"]
       50 JUMPIFEQKN                       R4 K9 [0] ; [+10]
       52 GETTABLEKS                       R4 R0 K8 ["state"]
       54 GETTABLEKS                       R4 R4 K5 ["translateY"]
       56 JUMPIFEQKNIL                     R4 ; [+4]
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R0 K10 ["_haveReceivedInitialZeroTranslateY"]
       61 GETTABLEKS                       R6 R0 K7 ["_animatedValueListener"]
       63 NAMECALL                         R4 R1 K11 ["addListener"]
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R0 K1 ["_animatedValueListenerId"]
       68 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_ref"]
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETTABLEKS                       R2 R0 K0 ["_ref"]
        5 GETTABLEKS                       R1 R2 K1 ["_internalInstanceHandle"]
        7 JUMPIFNOT                        R1 ; [+19]
        8 GETTABLEKS                       R2 R0 K0 ["_ref"]
       10 GETTABLEKS                       R1 R2 K1 ["_internalInstanceHandle"]
       12 GETTABLEKS                       R1 R1 K2 ["stateNode"]
       14 JUMPIFNOT                        R1 ; [+12]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["toJSBoolean"]
       18 GETTABLEKS                       R3 R0 K0 ["_ref"]
       20 GETTABLEKS                       R2 R3 K1 ["_internalInstanceHandle"]
       22 GETTABLEKS                       R2 R2 K2 ["stateNode"]
       24 GETTABLEKS                       R2 R2 K4 ["canonical"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R0 K5 ["_shouldRecreateTranslateY"]
       29 JUMPIFNOT                        R2 ; [+245]
       30 GETTABLEKS                       R2 R0 K6 ["props"]
       32 GETTABLEKS                       R2 R2 K7 ["inverted"]
       34 GETTABLEKS                       R3 R0 K6 ["props"]
       36 GETTABLEKS                       R3 R3 K8 ["scrollViewHeight"]
       38 GETTABLEKS                       R4 R0 K9 ["state"]
       40 GETTABLEKS                       R4 R4 K10 ["measured"]
       42 GETTABLEKS                       R5 R0 K9 ["state"]
       44 GETTABLEKS                       R5 R5 K11 ["layoutHeight"]
       46 GETTABLEKS                       R6 R0 K9 ["state"]
       48 GETTABLEKS                       R6 R6 K12 ["layoutY"]
       50 GETTABLEKS                       R7 R0 K9 ["state"]
       52 GETTABLEKS                       R7 R7 K13 ["nextHeaderLayoutY"]
       54 NEWTABLE                         R8 0 2
       56 LOADN                            R9 -1
       57 LOADN                            R10 0
       58 SETLIST                          R8 R9 2 [1]
       60 NEWTABLE                         R9 0 2
       62 LOADN                            R10 0
       63 LOADN                            R11 0
       64 SETLIST                          R9 R10 2 [1]
       66 JUMPIFNOT                        R4 ; [+131]
       67 JUMPIFNOT                        R2 ; [+69]
       68 JUMPIFEQKNIL                     R3 ; [+129]
       70 ADD                              R11 R6 R5
       71 SUB                              R10 R11 R3
       72 LOADN                            R11 0
       73 JUMPIFNOTLT                      R11 R10 ; [+124]
       75 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       77 MOVE                             R12 R8
       78 MOVE                             R13 R10
       79 GETIMPORT                        R11 K16 [table.insert]
       81 CALL                             R11 2 0
       82 FASTCALL2K                       TABLE_INSERT R9 K17 ; [+5]
       84 MOVE                             R12 R9
       85 LOADK                            R13 K17 [0]
       86 GETIMPORT                        R11 K16 [table.insert]
       88 CALL                             R11 2 0
       89 ADDK                             R13 R10 K18 [1]
       90 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
       92 MOVE                             R12 R8
       93 GETIMPORT                        R11 K16 [table.insert]
       95 CALL                             R11 2 0
       96 FASTCALL2K                       TABLE_INSERT R9 K18 ; [+5]
       98 MOVE                             R12 R9
       99 LOADK                            R13 K18 [1]
      100 GETIMPORT                        R11 K16 [table.insert]
      102 CALL                             R11 2 0
      103 ORK                              R13 R7 K17 [0]
      104 SUB                              R12 R13 R5
      105 SUB                              R11 R12 R3
      106 JUMPIFNOTLT                      R10 R11 ; [+91]
      108 FASTCALL2                        TABLE_INSERT R8 R11 ; [+5]
      110 MOVE                             R13 R8
      111 MOVE                             R14 R11
      112 GETIMPORT                        R12 K16 [table.insert]
      114 CALL                             R12 2 0
      115 ADDK                             R14 R11 K18 [1]
      116 FASTCALL2                        TABLE_INSERT R8 R14 ; [+4]
      118 MOVE                             R13 R8
      119 GETIMPORT                        R12 K16 [table.insert]
      121 CALL                             R12 2 0
      122 SUB                              R14 R11 R10
      123 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      125 MOVE                             R13 R9
      126 GETIMPORT                        R12 K16 [table.insert]
      128 CALL                             R12 2 0
      129 SUB                              R14 R11 R10
      130 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      132 MOVE                             R13 R9
      133 GETIMPORT                        R12 K16 [table.insert]
      135 CALL                             R12 2 0
      136 JUMP                             ; [+61]
      137 FASTCALL2                        TABLE_INSERT R8 R6 ; [+5]
      139 MOVE                             R11 R8
      140 MOVE                             R12 R6
      141 GETIMPORT                        R10 K16 [table.insert]
      143 CALL                             R10 2 0
      144 FASTCALL2K                       TABLE_INSERT R9 K17 ; [+5]
      146 MOVE                             R11 R9
      147 LOADK                            R12 K17 [0]
      148 GETIMPORT                        R10 K16 [table.insert]
      150 CALL                             R10 2 0
      151 ORK                              R11 R7 K17 [0]
      152 SUB                              R10 R11 R5
      153 JUMPIFNOTLE                      R6 R10 ; [+30]
      155 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      157 MOVE                             R12 R8
      158 MOVE                             R13 R10
      159 GETIMPORT                        R11 K16 [table.insert]
      161 CALL                             R11 2 0
      162 ADDK                             R13 R10 K18 [1]
      163 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      165 MOVE                             R12 R8
      166 GETIMPORT                        R11 K16 [table.insert]
      168 CALL                             R11 2 0
      169 SUB                              R13 R10 R6
      170 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
      172 MOVE                             R12 R9
      173 GETIMPORT                        R11 K16 [table.insert]
      175 CALL                             R11 2 0
      176 SUB                              R13 R10 R6
      177 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
      179 MOVE                             R12 R9
      180 GETIMPORT                        R11 K16 [table.insert]
      182 CALL                             R11 2 0
      183 JUMP                             ; [+14]
      184 ADDK                             R13 R6 K18 [1]
      185 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      187 MOVE                             R12 R8
      188 GETIMPORT                        R11 K16 [table.insert]
      190 CALL                             R11 2 0
      191 FASTCALL2K                       TABLE_INSERT R9 K18 ; [+5]
      193 MOVE                             R12 R9
      194 LOADK                            R13 K18 [1]
      195 GETIMPORT                        R11 K16 [table.insert]
      197 CALL                             R11 2 0
      198 GETTABLEKS                       R12 R0 K6 ["props"]
      200 GETTABLEKS                       R12 R12 K19 ["scrollAnimatedValue"]
      202 DUPTABLE                         R14 K22 [{"inputRange", "outputRange"}]
      203 SETTABLEKS                       R8 R14 K20 ["inputRange"]
      205 SETTABLEKS                       R9 R14 K21 ["outputRange"]
      207 NAMECALL                         R12 R12 K23 ["interpolate"]
      209 CALL                             R12 2 1
      210 MOVE                             R13 R1
      211 GETTABLEKS                       R15 R0 K6 ["props"]
      213 GETTABLEKS                       R15 R15 K24 ["hiddenOnScroll"]
      215 JUMPIFNOT                        R15 ; [+55]
      216 GETUPVAL                         R14 1
      217 GETTABLEKS                       R14 R14 K25 ["new"]
      219 GETTABLEKS                       R15 R0 K6 ["props"]
      221 GETTABLEKS                       R15 R15 K19 ["scrollAnimatedValue"]
      223 DUPTABLE                         R17 K28 [{["extrapolateLeft"] = "clamp", ["inputRange"], ["outputRange"]}]
      224 NEWTABLE                         R18 0 2
      226 MOVE                             R19 R6
      227 ADDK                             R20 R6 K18 [1]
      228 SETLIST                          R18 R19 2 [1]
      230 SETTABLEKS                       R18 R17 K20 ["inputRange"]
      232 NEWTABLE                         R18 0 2
      234 LOADN                            R19 0
      235 LOADN                            R20 1
      236 SETLIST                          R18 R19 2 [1]
      238 SETTABLEKS                       R18 R17 K21 ["outputRange"]
      240 NAMECALL                         R15 R15 K23 ["interpolate"]
      242 CALL                             R15 2 1
      243 DUPTABLE                         R17 K22 [{"inputRange", "outputRange"}]
      244 NEWTABLE                         R18 0 2
      246 LOADN                            R19 0
      247 LOADN                            R20 1
      248 SETLIST                          R18 R19 2 [1]
      250 SETTABLEKS                       R18 R17 K20 ["inputRange"]
      252 NEWTABLE                         R18 0 2
      254 LOADN                            R19 0
      255 LOADN                            R20 -1
      256 SETLIST                          R18 R19 2 [1]
      258 SETTABLEKS                       R18 R17 K21 ["outputRange"]
      260 NAMECALL                         R15 R15 K23 ["interpolate"]
      262 CALL                             R15 2 1
      263 GETTABLEKS                       R17 R0 K9 ["state"]
      265 GETTABLEKS                       R17 R17 K11 ["layoutHeight"]
      267 MINUS                            R16 R17
      268 LOADN                            R17 0
      269 CALL                             R14 3 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R14
      272 NAMECALL                         R10 R0 K29 ["updateTranslateListener"]
      274 CALL                             R10 4 0
      275 GETUPVAL                         R2 2
      276 GETTABLEKS                       R2 R2 K30 ["Children"]
      278 GETTABLEKS                       R2 R2 K31 ["only"]
      280 GETTABLEKS                       R3 R0 K6 ["props"]
      282 GETTABLEKS                       R3 R3 K32 ["children"]
      284 CALL                             R2 1 1
      285 JUMPIFNOT                        R1 ; [+24]
      286 GETTABLEKS                       R4 R0 K9 ["state"]
      288 GETTABLEKS                       R4 R4 K33 ["translateY"]
      290 JUMPIFEQKNIL                     R4 ; [+19]
      292 DUPTABLE                         R3 K35 [{"style"}]
      293 DUPTABLE                         R4 K37 [{"transform"}]
      294 NEWTABLE                         R5 0 1
      296 DUPTABLE                         R6 K38 [{"translateY"}]
      297 GETTABLEKS                       R7 R0 K9 ["state"]
      299 GETTABLEKS                       R7 R7 K33 ["translateY"]
      301 SETTABLEKS                       R7 R6 K33 ["translateY"]
      303 SETLIST                          R5 R6 1 [1]
      305 SETTABLEKS                       R5 R4 K36 ["transform"]
      307 SETTABLEKS                       R4 R3 K34 ["style"]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R3
      311 GETUPVAL                         R4 2
      312 GETTABLEKS                       R4 R4 K39 ["createElement"]
      314 LOADK                            R5 K40 ["AnimatedView"]
      315 DUPTABLE                         R6 K47 [{["collapsable"] = False, ["nativeID"], ["onLayout"], ["ref"], ["style"], ["passthroughAnimatedPropExplicitValues"]}]
      316 GETTABLEKS                       R7 R0 K6 ["props"]
      318 GETTABLEKS                       R7 R7 K43 ["nativeID"]
      320 SETTABLEKS                       R7 R6 K43 ["nativeID"]
      322 GETTABLEKS                       R7 R0 K48 ["_onLayout"]
      324 SETTABLEKS                       R7 R6 K44 ["onLayout"]
      326 GETTABLEKS                       R7 R0 K49 ["_setComponentRef"]
      328 SETTABLEKS                       R7 R6 K45 ["ref"]
      330 NEWTABLE                         R7 0 3
      332 GETTABLEKS                       R8 R2 K6 ["props"]
      334 GETTABLEKS                       R8 R8 K34 ["style"]
      336 GETUPVAL                         R9 3
      337 GETTABLEKS                       R9 R9 K50 ["header"]
      339 DUPTABLE                         R10 K37 [{"transform"}]
      340 NEWTABLE                         R11 0 1
      342 DUPTABLE                         R12 K38 [{"translateY"}]
      343 GETTABLEKS                       R13 R0 K51 ["_translateY"]
      345 SETTABLEKS                       R13 R12 K33 ["translateY"]
      347 SETLIST                          R11 R12 1 [1]
      349 SETTABLEKS                       R11 R10 K36 ["transform"]
      351 SETLIST                          R7 R8 3 [1]
      353 SETTABLEKS                       R7 R6 K34 ["style"]
      355 SETTABLEKS                       R3 R6 K46 ["passthroughAnimatedPropExplicitValues"]
      357 GETUPVAL                         R7 2
      358 GETTABLEKS                       R7 R7 K52 ["cloneElement"]
      360 MOVE                             R8 R2
      361 DUPTABLE                         R9 K54 [{["style"], ["onLayout"] = }]
      362 GETUPVAL                         R10 3
      363 GETTABLEKS                       R10 R10 K55 ["fill"]
      365 SETTABLEKS                       R10 R9 K34 ["style"]
      367 CALL                             R7 2 -1
      368 CALL                             R4 -1 -1
      369 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       18 GETTABLEKS                       R4 R2 K7 ["clearTimeout"]
       20 GETTABLEKS                       R5 R2 K8 ["setTimeout"]
       22 DUPTABLE                         R6 K10 [{"new"}]
       23 DUPCLOSURE                       R7 K11 [PROTO_0]
       24 SETTABLEKS                       R7 R6 K9 ["new"]
       26 DUPTABLE                         R7 K10 [{"new"}]
       27 DUPCLOSURE                       R8 K12 [PROTO_1]
       28 SETTABLEKS                       R8 R7 K9 ["new"]
       30 GETIMPORT                        R8 K4 [require]
       32 GETTABLEKS                       R9 R1 K13 ["React"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K4 [require]
       37 GETTABLEKS                       R10 R0 K14 ["StyleSheet"]
       39 GETTABLEKS                       R10 R10 K14 ["StyleSheet"]
       41 CALL                             R9 1 1
       42 DUPTABLE                         R10 K17 [{["OS"] = "roblox"}]
       43 LOADNIL                          R11
       44 GETTABLEKS                       R12 R8 K18 ["Component"]
       46 LOADK                            R14 K19 ["ScrollViewStickyHeader"]
       47 NAMECALL                         R12 R12 K20 ["extend"]
       49 CALL                             R12 2 1
       50 DUPCLOSURE                       R13 K21 [PROTO_5]
       51 CAPTURE                          VAL R8
       52 SETTABLEKS                       R13 R12 K22 ["init"]
       54 DUPCLOSURE                       R13 K23 [PROTO_6]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R13 R12 K24 ["componentWillUnmount"]
       59 DUPCLOSURE                       R13 K25 [PROTO_7]
       60 SETTABLEKS                       R13 R12 K26 ["UNSAFE_componentWillReceiveProps"]
       62 DUPCLOSURE                       R13 K27 [PROTO_10]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R13 R12 K28 ["updateTranslateListener"]
       69 NEWCLOSURE                       R13 P6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          REF R11
       74 SETTABLEKS                       R13 R12 K29 ["render"]
       76 GETTABLEKS                       R13 R9 K30 ["create"]
       78 DUPTABLE                         R14 K33 [{"header", "fill"}]
       79 DUPTABLE                         R15 K38 [{["zIndex"] = 10, ["position"] = "relative"}]
       80 SETTABLEKS                       R15 R14 K31 ["header"]
       82 DUPTABLE                         R15 K41 [{["flex"] = 1}]
       83 SETTABLEKS                       R15 R14 K32 ["fill"]
       85 CALL                             R13 1 1
       86 MOVE                             R11 R13
       87 CLOSEUPVALS                      R11
       88 RETURN                           R12 1
