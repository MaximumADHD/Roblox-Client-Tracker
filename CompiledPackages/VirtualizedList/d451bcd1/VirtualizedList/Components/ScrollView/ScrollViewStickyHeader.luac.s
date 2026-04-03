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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["setState"]
        7 DUPTABLE                         R3 K3 [{"nextHeaderLayoutY"}]
        8 SETTABLEKS                       R1 R3 K2 ["nextHeaderLayoutY"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["nativeEvent"]
        2 GETTABLEKS                       R3 R4 K1 ["layout"]
        4 GETTABLEKS                       R2 R3 K2 ["y"]
        6 GETTABLEKS                       R5 R1 K0 ["nativeEvent"]
        8 GETTABLEKS                       R4 R5 K1 ["layout"]
       10 GETTABLEKS                       R3 R4 K3 ["height"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K4 ["state"]
       15 GETTABLEKS                       R4 R5 K5 ["layoutY"]
       17 JUMPIFNOTEQ                      R2 R4 ; [+15]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["state"]
       22 GETTABLEKS                       R4 R5 K6 ["layoutHeight"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+8]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K4 ["state"]
       29 GETTABLEKS                       R4 R5 K7 ["measured"]
       31 JUMPIFEQKB                       R4 TRUE ; [+5]
       33 GETUPVAL                         R4 0
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K8 ["_shouldRecreateTranslateY"]
       37 GETUPVAL                         R4 0
       38 DUPTABLE                         R6 K9 [{"measured", "layoutY", "layoutHeight"}]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K7 ["measured"]
       42 SETTABLEKS                       R2 R6 K5 ["layoutY"]
       44 SETTABLEKS                       R3 R6 K6 ["layoutHeight"]
       46 NAMECALL                         R4 R4 K10 ["setState"]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K11 ["props"]
       52 MOVE                             R6 R1
       53 NAMECALL                         R4 R4 K12 ["onLayout"]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R5 R6 K13 ["Children"]
       59 GETTABLEKS                       R4 R5 K14 ["only"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K11 ["props"]
       64 GETTABLEKS                       R5 R6 K15 ["children"]
       66 CALL                             R4 1 1
       67 GETTABLEKS                       R6 R4 K11 ["props"]
       69 GETTABLEKS                       R5 R6 K12 ["onLayout"]
       71 JUMPIFNOT                        R5 ; [+6]
       72 GETTABLEKS                       R5 R4 K11 ["props"]
       74 MOVE                             R7 R1
       75 NAMECALL                         R5 R5 K12 ["onLayout"]
       77 CALL                             R5 2 0
       78 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["_ref"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R3 K2 ["ScrollViewStickyHeader not fully implemented"]
        3 CALL                             R2 1 0
        4 SETTABLEKS                       R1 R0 K3 ["props"]
        6 DUPTABLE                         R2 K9 [{"measured", "layoutY", "layoutHeight", "nextHeaderLayoutY", "translateY"}]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K4 ["measured"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K5 ["layoutY"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K6 ["layoutHeight"]
       16 GETTABLEKS                       R4 R0 K3 ["props"]
       18 GETTABLEKS                       R3 R4 K7 ["nextHeaderLayoutY"]
       20 SETTABLEKS                       R3 R2 K7 ["nextHeaderLayoutY"]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K8 ["translateY"]
       25 SETTABLEKS                       R2 R0 K10 ["state"]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R0 K11 ["_translateY"]
       30 LOADB                            R2 1
       31 SETTABLEKS                       R2 R0 K12 ["_shouldRecreateTranslateY"]
       33 LOADB                            R2 1
       34 SETTABLEKS                       R2 R0 K13 ["_haveReceivedInitialZeroTranslateY"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K14 ["OS"]
       39 JUMPIFNOTEQKS                    R3 K15 ["android"] ; [+3]
       41 LOADN                            R2 15
       42 JUMP                             ; [+1]
       43 LOADN                            R2 64
       44 SETTABLEKS                       R2 R0 K16 ["_debounceTimeout"]
       46 NEWCLOSURE                       R2 P0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K17 ["setNextHeaderY"]
       50 NEWCLOSURE                       R2 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U1
       53 SETTABLEKS                       R2 R0 K18 ["_onLayout"]
       55 NEWCLOSURE                       R2 P2
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R2 R0 K19 ["_setComponentRef"]
       59 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_translateY"]
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 GETTABLEKS                       R1 R0 K1 ["_animatedValueListenerId"]
        6 JUMPIFEQKNIL                     R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K0 ["_translateY"]
       10 GETTABLEKS                       R3 R0 K1 ["_animatedValueListenerId"]
       12 NAMECALL                         R1 R1 K2 ["removeListener"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K3 ["toJSBoolean"]
       18 GETTABLEKS                       R2 R0 K4 ["_timer"]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R2 R0 K4 ["_timer"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["scrollViewHeight"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["scrollViewHeight"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+17]
        8 GETTABLEKS                       R2 R1 K2 ["scrollAnimatedValue"]
       10 GETTABLEKS                       R4 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R4 K2 ["scrollAnimatedValue"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+9]
       16 GETTABLEKS                       R2 R1 K3 ["inverted"]
       18 GETTABLEKS                       R4 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R4 K3 ["inverted"]
       22 JUMPIFEQ                         R2 R3 ; [+4]
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R0 K4 ["_shouldRecreateTranslateY"]
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["translateY"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["_haveReceivedInitialZeroTranslateY"]
        7 JUMPIF                           R2 ; [+5]
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["_haveReceivedInitialZeroTranslateY"]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["toJSBoolean"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K4 ["_timer"]
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+5]
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K4 ["_timer"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 3
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U0
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K5 ["_debounceTimeout"]
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
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K3 ["toJSBoolean"]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 1
       20 JUMPIFNOT                        R5 ; [+7]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["new"]
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
       46 GETTABLEKS                       R5 R0 K8 ["state"]
       48 GETTABLEKS                       R4 R5 K5 ["translateY"]
       50 JUMPIFEQKN                       R4 K9 [0] ; [+10]
       52 GETTABLEKS                       R5 R0 K8 ["state"]
       54 GETTABLEKS                       R4 R5 K5 ["translateY"]
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
        8 GETTABLEKS                       R3 R0 K0 ["_ref"]
       10 GETTABLEKS                       R2 R3 K1 ["_internalInstanceHandle"]
       12 GETTABLEKS                       R1 R2 K2 ["stateNode"]
       14 JUMPIFNOT                        R1 ; [+12]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K3 ["toJSBoolean"]
       18 GETTABLEKS                       R5 R0 K0 ["_ref"]
       20 GETTABLEKS                       R4 R5 K1 ["_internalInstanceHandle"]
       22 GETTABLEKS                       R3 R4 K2 ["stateNode"]
       24 GETTABLEKS                       R2 R3 K4 ["canonical"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R0 K5 ["_shouldRecreateTranslateY"]
       29 JUMPIFNOT                        R2 ; [+248]
       30 GETTABLEKS                       R4 R0 K6 ["props"]
       32 GETTABLEKS                       R2 R4 K7 ["inverted"]
       34 GETTABLEKS                       R4 R0 K6 ["props"]
       36 GETTABLEKS                       R3 R4 K8 ["scrollViewHeight"]
       38 GETTABLEKS                       R8 R0 K9 ["state"]
       40 GETTABLEKS                       R4 R8 K10 ["measured"]
       42 GETTABLEKS                       R8 R0 K9 ["state"]
       44 GETTABLEKS                       R5 R8 K11 ["layoutHeight"]
       46 GETTABLEKS                       R8 R0 K9 ["state"]
       48 GETTABLEKS                       R6 R8 K12 ["layoutY"]
       50 GETTABLEKS                       R8 R0 K9 ["state"]
       52 GETTABLEKS                       R7 R8 K13 ["nextHeaderLayoutY"]
       54 NEWTABLE                         R8 0 2
       56 LOADN                            R9 255
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
      198 GETTABLEKS                       R13 R0 K6 ["props"]
      200 GETTABLEKS                       R12 R13 K19 ["scrollAnimatedValue"]
      202 DUPTABLE                         R14 K22 [{"inputRange", "outputRange"}]
      203 SETTABLEKS                       R8 R14 K20 ["inputRange"]
      205 SETTABLEKS                       R9 R14 K21 ["outputRange"]
      207 NAMECALL                         R12 R12 K23 ["interpolate"]
      209 CALL                             R12 2 1
      210 MOVE                             R13 R1
      211 GETTABLEKS                       R16 R0 K6 ["props"]
      213 GETTABLEKS                       R15 R16 K24 ["hiddenOnScroll"]
      215 JUMPIFNOT                        R15 ; [+58]
      216 GETUPVAL                         R15 1
      217 GETTABLEKS                       R14 R15 K25 ["new"]
      219 GETTABLEKS                       R16 R0 K6 ["props"]
      221 GETTABLEKS                       R15 R16 K19 ["scrollAnimatedValue"]
      223 DUPTABLE                         R17 K27 [{"extrapolateLeft", "inputRange", "outputRange"}]
      224 LOADK                            R18 K28 ["clamp"]
      225 SETTABLEKS                       R18 R17 K26 ["extrapolateLeft"]
      227 NEWTABLE                         R18 0 2
      229 MOVE                             R19 R6
      230 ADDK                             R20 R6 K18 [1]
      231 SETLIST                          R18 R19 2 [1]
      233 SETTABLEKS                       R18 R17 K20 ["inputRange"]
      235 NEWTABLE                         R18 0 2
      237 LOADN                            R19 0
      238 LOADN                            R20 1
      239 SETLIST                          R18 R19 2 [1]
      241 SETTABLEKS                       R18 R17 K21 ["outputRange"]
      243 NAMECALL                         R15 R15 K23 ["interpolate"]
      245 CALL                             R15 2 1
      246 DUPTABLE                         R17 K22 [{"inputRange", "outputRange"}]
      247 NEWTABLE                         R18 0 2
      249 LOADN                            R19 0
      250 LOADN                            R20 1
      251 SETLIST                          R18 R19 2 [1]
      253 SETTABLEKS                       R18 R17 K20 ["inputRange"]
      255 NEWTABLE                         R18 0 2
      257 LOADN                            R19 0
      258 LOADN                            R20 255
      259 SETLIST                          R18 R19 2 [1]
      261 SETTABLEKS                       R18 R17 K21 ["outputRange"]
      263 NAMECALL                         R15 R15 K23 ["interpolate"]
      265 CALL                             R15 2 1
      266 GETTABLEKS                       R18 R0 K9 ["state"]
      268 GETTABLEKS                       R17 R18 K11 ["layoutHeight"]
      270 MINUS                            R16 R17
      271 LOADN                            R17 0
      272 CALL                             R14 3 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R14
      275 NAMECALL                         R10 R0 K29 ["updateTranslateListener"]
      277 CALL                             R10 4 0
      278 GETUPVAL                         R4 2
      279 GETTABLEKS                       R3 R4 K30 ["Children"]
      281 GETTABLEKS                       R2 R3 K31 ["only"]
      283 GETTABLEKS                       R4 R0 K6 ["props"]
      285 GETTABLEKS                       R3 R4 K32 ["children"]
      287 CALL                             R2 1 1
      288 JUMPIFNOT                        R1 ; [+24]
      289 GETTABLEKS                       R5 R0 K9 ["state"]
      291 GETTABLEKS                       R4 R5 K33 ["translateY"]
      293 JUMPIFEQKNIL                     R4 ; [+19]
      295 DUPTABLE                         R3 K35 [{"style"}]
      296 DUPTABLE                         R4 K37 [{"transform"}]
      297 NEWTABLE                         R5 0 1
      299 DUPTABLE                         R6 K38 [{"translateY"}]
      300 GETTABLEKS                       R8 R0 K9 ["state"]
      302 GETTABLEKS                       R7 R8 K33 ["translateY"]
      304 SETTABLEKS                       R7 R6 K33 ["translateY"]
      306 SETLIST                          R5 R6 1 [1]
      308 SETTABLEKS                       R5 R4 K36 ["transform"]
      310 SETTABLEKS                       R4 R3 K34 ["style"]
      312 JUMP                             ; [+1]
      313 LOADNIL                          R3
      314 GETUPVAL                         R5 2
      315 GETTABLEKS                       R4 R5 K39 ["createElement"]
      317 LOADK                            R5 K40 ["AnimatedView"]
      318 DUPTABLE                         R6 K46 [{"collapsable", "nativeID", "onLayout", "ref", "style", "passthroughAnimatedPropExplicitValues"}]
      319 LOADB                            R7 0
      320 SETTABLEKS                       R7 R6 K41 ["collapsable"]
      322 GETTABLEKS                       R8 R0 K6 ["props"]
      324 GETTABLEKS                       R7 R8 K42 ["nativeID"]
      326 SETTABLEKS                       R7 R6 K42 ["nativeID"]
      328 GETTABLEKS                       R7 R0 K47 ["_onLayout"]
      330 SETTABLEKS                       R7 R6 K43 ["onLayout"]
      332 GETTABLEKS                       R7 R0 K48 ["_setComponentRef"]
      334 SETTABLEKS                       R7 R6 K44 ["ref"]
      336 NEWTABLE                         R7 0 3
      338 GETTABLEKS                       R9 R2 K6 ["props"]
      340 GETTABLEKS                       R8 R9 K34 ["style"]
      342 GETUPVAL                         R10 3
      343 GETTABLEKS                       R9 R10 K49 ["header"]
      345 DUPTABLE                         R10 K37 [{"transform"}]
      346 NEWTABLE                         R11 0 1
      348 DUPTABLE                         R12 K38 [{"translateY"}]
      349 GETTABLEKS                       R13 R0 K50 ["_translateY"]
      351 SETTABLEKS                       R13 R12 K33 ["translateY"]
      353 SETLIST                          R11 R12 1 [1]
      355 SETTABLEKS                       R11 R10 K36 ["transform"]
      357 SETLIST                          R7 R8 3 [1]
      359 SETTABLEKS                       R7 R6 K34 ["style"]
      361 SETTABLEKS                       R3 R6 K45 ["passthroughAnimatedPropExplicitValues"]
      363 GETUPVAL                         R8 2
      364 GETTABLEKS                       R7 R8 K51 ["cloneElement"]
      366 MOVE                             R8 R2
      367 DUPTABLE                         R9 K52 [{"style", "onLayout"}]
      368 GETUPVAL                         R11 3
      369 GETTABLEKS                       R10 R11 K53 ["fill"]
      371 SETTABLEKS                       R10 R9 K34 ["style"]
      373 LOADNIL                          R10
      374 SETTABLEKS                       R10 R9 K43 ["onLayout"]
      376 CALL                             R7 2 -1
      377 CALL                             R4 -1 -1
      378 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       37 GETTABLEKS                       R11 R0 K14 ["StyleSheet"]
       39 GETTABLEKS                       R10 R11 K14 ["StyleSheet"]
       41 CALL                             R9 1 1
       42 DUPTABLE                         R10 K16 [{"OS"}]
       43 LOADK                            R11 K17 ["roblox"]
       44 SETTABLEKS                       R11 R10 K15 ["OS"]
       46 LOADNIL                          R11
       47 GETTABLEKS                       R12 R8 K18 ["Component"]
       49 LOADK                            R14 K19 ["ScrollViewStickyHeader"]
       50 NAMECALL                         R12 R12 K20 ["extend"]
       52 CALL                             R12 2 1
       53 DUPCLOSURE                       R13 K21 [PROTO_5]
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R8
       56 SETTABLEKS                       R13 R12 K22 ["init"]
       58 DUPCLOSURE                       R13 K23 [PROTO_6]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R13 R12 K24 ["componentWillUnmount"]
       63 DUPCLOSURE                       R13 K25 [PROTO_7]
       64 SETTABLEKS                       R13 R12 K26 ["UNSAFE_componentWillReceiveProps"]
       66 DUPCLOSURE                       R13 K27 [PROTO_10]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 SETTABLEKS                       R13 R12 K28 ["updateTranslateListener"]
       73 NEWCLOSURE                       R13 P6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 CAPTURE                          REF R11
       78 SETTABLEKS                       R13 R12 K29 ["render"]
       80 GETTABLEKS                       R13 R9 K30 ["create"]
       82 DUPTABLE                         R14 K33 [{"header", "fill"}]
       83 DUPTABLE                         R15 K36 [{"zIndex", "position"}]
       84 LOADN                            R16 10
       85 SETTABLEKS                       R16 R15 K34 ["zIndex"]
       87 LOADK                            R16 K37 ["relative"]
       88 SETTABLEKS                       R16 R15 K35 ["position"]
       90 SETTABLEKS                       R15 R14 K31 ["header"]
       92 DUPTABLE                         R15 K39 [{"flex"}]
       93 LOADN                            R16 1
       94 SETTABLEKS                       R16 R15 K38 ["flex"]
       96 SETTABLEKS                       R15 R14 K32 ["fill"]
       98 CALL                             R13 1 1
       99 MOVE                             R11 R13
      100 CLOSEUPVALS                      R11
      101 RETURN                           R12 1
