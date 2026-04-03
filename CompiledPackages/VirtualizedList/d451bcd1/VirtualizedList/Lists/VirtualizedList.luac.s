PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKN                    R0 K0 [1] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["ReactNative.findNodeHandle is not implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K3 [{"Name"}]
        5 LOADK                            R4 K4 ["RCTRefreshControl"]
        6 SETTABLEKS                       R4 R3 K2 ["Name"]
        8 GETTABLEKS                       R4 R0 K5 ["children"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 10
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 10
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 2
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 50
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 21
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_10:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_11:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 DUPCLOSURE                       R1 K0 [PROTO_10]
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["props"]
        3 GETTABLEKS                       R1 R5 K1 ["data"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["props"]
        8 GETTABLEKS                       R2 R5 K2 ["getItem"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["props"]
       13 GETTABLEKS                       R3 R5 K3 ["getItemCount"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["props"]
       18 GETTABLEKS                       R4 R5 K4 ["getItemLayout"]
       20 GETUPVAL                         R5 1
       21 MOVE                             R7 R3
       22 MOVE                             R8 R1
       23 CALL                             R7 1 1
       24 JUMPIFLE                         R0 R7 ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 LOADK                            R8 K5 ["Tried to get frame for out of range index "]
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R10 R0
       31 GETIMPORT                        R9 K7 [tostring]
       33 CALL                             R9 1 1
       34 CONCAT                           R7 R8 R9
       35 CALL                             R5 2 0
       36 MOVE                             R5 R2
       37 MOVE                             R6 R1
       38 MOVE                             R7 R0
       39 CALL                             R5 2 1
       40 JUMPIFEQKNIL                     R5 ; [+12]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K8 ["_frames"]
       45 GETUPVAL                         R8 0
       46 MOVE                             R10 R5
       47 MOVE                             R11 R0
       48 NAMECALL                         R8 R8 K9 ["_keyExtractor"]
       50 CALL                             R8 3 1
       51 GETTABLE                         R6 R7 R8
       52 JUMP                             ; [+1]
       53 MOVE                             R6 R5
       54 JUMPIFNOT                        R6 ; [+4]
       55 GETTABLEKS                       R7 R6 K10 ["index"]
       57 JUMPIFEQ                         R7 R0 ; [+7]
       59 JUMPIFNOT                        R4 ; [+5]
       60 MOVE                             R7 R4
       61 MOVE                             R8 R1
       62 MOVE                             R9 R0
       63 CALL                             R7 2 1
       64 MOVE                             R6 R7
       65 RETURN                           R6 1

PROTO_13:
        0 LOADNIL                          R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["_scrollMetrics"]
        4 GETTABLEKS                       R2 R5 K1 ["contentLength"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["_scrollMetrics"]
        9 GETTABLEKS                       R3 R5 K2 ["offset"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K0 ["_scrollMetrics"]
       14 GETTABLEKS                       R4 R5 K3 ["visibleLength"]
       16 GETUPVAL                         R5 1
       17 JUMPIF                           R5 ; [+70]
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+103]
       21 LOADN                            R5 0
       22 JUMPIFNOTLT                      R5 R2 ; [+100]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K4 ["props"]
       27 GETTABLEKS                       R6 R7 K5 ["initialScrollIndex"]
       29 LOADB                            R5 0
       30 JUMPIFEQKNIL                     R6 ; [+5]
       32 JUMPIFNOTEQKN                    R6 K6 [1] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 JUMPIFNOT                        R5 ; [+10]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R5 R6 K7 ["toJSBoolean"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K0 ["_scrollMetrics"]
       43 GETTABLEKS                       R6 R7 K2 ["offset"]
       45 CALL                             R5 1 1
       46 JUMPIFNOT                        R5 ; [+76]
       47 GETUPVAL                         R5 3
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K4 ["props"]
       51 GETTABLEKS                       R6 R7 K8 ["data"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R8 R9 K4 ["props"]
       56 GETTABLEKS                       R7 R8 K9 ["getItemCount"]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K4 ["props"]
       61 GETTABLEKS                       R9 R10 K10 ["maxToRenderPerBatch"]
       63 JUMPIFNOTEQKNIL                  R9 ; [+3]
       65 LOADN                            R8 10
       66 JUMP                             ; [+1]
       67 MOVE                             R8 R9
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R11 R12 K4 ["props"]
       71 GETTABLEKS                       R10 R11 K11 ["windowSize"]
       73 JUMPIFNOTEQKNIL                  R10 ; [+3]
       75 LOADN                            R9 21
       76 JUMP                             ; [+1]
       77 MOVE                             R9 R10
       78 MOVE                             R10 R0
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K12 ["_getFrameMetricsApprox"]
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R12 R13 K0 ["_scrollMetrics"]
       85 CALL                             R5 7 1
       86 MOVE                             R1 R5
       87 JUMP                             ; [+35]
       88 SUB                              R6 R2 R4
       89 SUB                              R5 R6 R3
       90 GETUPVAL                         R8 4
       91 MUL                              R7 R8 R4
       92 JUMPIFNOTLT                      R5 R7 ; [+12]
       94 GETUPVAL                         R9 0
       95 GETTABLEKS                       R8 R9 K4 ["props"]
       97 GETTABLEKS                       R7 R8 K10 ["maxToRenderPerBatch"]
       99 JUMPIFNOTEQKNIL                  R7 ; [+3]
      101 LOADN                            R6 10
      102 JUMP                             ; [+3]
      103 MOVE                             R6 R7
      104 JUMP                             ; [+1]
      105 LOADN                            R6 0
      106 DUPTABLE                         R7 K15 [{"first", "last"}]
      107 LOADN                            R8 1
      108 SETTABLEKS                       R8 R7 K13 ["first"]
      110 GETTABLEKS                       R10 R0 K14 ["last"]
      112 ADD                              R9 R10 R6
      113 GETUPVAL                         R10 5
      114 GETUPVAL                         R11 6
      115 CALL                             R10 1 -1
      116 FASTCALL                         MATH_MIN ; [+2]
      117 GETIMPORT                        R8 K18 [math.min]
      119 CALL                             R8 -1 1
      120 SETTABLEKS                       R8 R7 K14 ["last"]
      122 MOVE                             R1 R7
      123 JUMPIFEQKNIL                     R1 ; [+77]
      125 GETUPVAL                         R7 0
      126 GETTABLEKS                       R6 R7 K19 ["_nestedChildLists"]
      128 GETTABLEKS                       R5 R6 K20 ["size"]
      130 LOADN                            R6 0
      131 JUMPIFNOTLT                      R6 R5 ; [+69]
      133 GETTABLEKS                       R5 R1 K13 ["first"]
      135 GETTABLEKS                       R6 R1 K14 ["last"]
      137 MOVE                             R7 R5
      138 JUMPIFNOTLE                      R7 R6 ; [+62]
      140 GETUPVAL                         R9 0
      141 GETTABLEKS                       R8 R9 K21 ["_indicesToKeys"]
      143 MOVE                             R10 R7
      144 NAMECALL                         R8 R8 K22 ["get"]
      146 CALL                             R8 2 1
      147 GETUPVAL                         R11 2
      148 GETTABLEKS                       R10 R11 K7 ["toJSBoolean"]
      150 MOVE                             R11 R8
      151 CALL                             R10 1 1
      152 JUMPIFNOT                        R10 ; [+8]
      153 GETUPVAL                         R10 0
      154 GETTABLEKS                       R9 R10 K23 ["_cellKeysToChildListKeys"]
      156 MOVE                             R11 R8
      157 NAMECALL                         R9 R9 K22 ["get"]
      159 CALL                             R9 2 1
      160 JUMP                             ; [+1]
      161 MOVE                             R9 R8
      162 GETUPVAL                         R11 2
      163 GETTABLEKS                       R10 R11 K7 ["toJSBoolean"]
      165 MOVE                             R11 R9
      166 CALL                             R10 1 1
      167 JUMPIFNOT                        R10 ; [+32]
      168 LOADB                            R10 0
      169 GETIMPORT                        R11 K25 [ipairs]
      171 MOVE                             R12 R9
      172 CALL                             R11 1 3
      173 FORGPREP_INEXT                   R11
      174 GETUPVAL                         R17 0
      175 GETTABLEKS                       R16 R17 K19 ["_nestedChildLists"]
      177 MOVE                             R18 R15
      178 NAMECALL                         R16 R16 K22 ["get"]
      180 CALL                             R16 2 1
      181 JUMPIFNOT                        R16 ; [+11]
      182 GETTABLEKS                       R17 R16 K26 ["ref"]
      184 JUMPIFNOT                        R17 ; [+8]
      185 GETTABLEKS                       R17 R16 K26 ["ref"]
      187 NAMECALL                         R17 R17 K27 ["hasMore"]
      189 CALL                             R17 1 1
      190 JUMPIFNOT                        R17 ; [+2]
      191 LOADB                            R10 1
      192 JUMP                             ; [+2]
      193 FORGLOOP                         R11 2 [inext] ; [-20]
      195 JUMPIFNOT                        R10 ; [+3]
      196 SETTABLEKS                       R7 R1 K14 ["last"]
      198 JUMP                             ; [+2]
      199 ADDK                             R7 R7 K6 [1]
      200 JUMPBACK                         ; [-63]
      201 JUMPIFEQKNIL                     R1 ; [+14]
      203 GETTABLEKS                       R5 R1 K13 ["first"]
      205 GETTABLEKS                       R6 R0 K13 ["first"]
      207 JUMPIFNOTEQ                      R5 R6 ; [+8]
      209 GETTABLEKS                       R5 R1 K14 ["last"]
      211 GETTABLEKS                       R6 R0 K14 ["last"]
      213 JUMPIFNOTEQ                      R5 R6 ; [+2]
      215 LOADNIL                          R1
      216 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R0 R3 K1 ["data"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R1 R3 K2 ["getItemCount"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["onEndReachedThreshold"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADN                            R3 2
       18 JUMP                             ; [+1]
       19 MOVE                             R3 R2
       20 GETUPVAL                         R4 0
       21 NAMECALL                         R4 R4 K4 ["_isVirtualizationDisabled"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 0
       25 MOVE                             R7 R0
       26 NAMECALL                         R5 R5 K5 ["_updateViewableItems"]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K6 ["toJSBoolean"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 JUMPIF                           R5 ; [+1]
       35 RETURN                           R0 0
       36 GETUPVAL                         R5 0
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R5 R5 K7 ["setState"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"viewabilityHelper", "onViewableItemsChanged"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["new"]
        4 GETTABLEKS                       R3 R0 K4 ["viewabilityConfig"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K0 ["viewabilityHelper"]
        9 GETTABLEKS                       R2 R0 K1 ["onViewableItemsChanged"]
       11 SETTABLEKS                       R2 R1 K1 ["onViewableItemsChanged"]
       13 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_scrollMetrics"]
        3 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_isNestedWithSameOrientation"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["context"]
        8 GETTABLEKS                       R0 R1 K2 ["getOutermostParentListRef"]
       10 CALL                             R0 0 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 0
       13 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K2 ["state"]
       10 RETURN                           R2 1
       11 MOVE                             R2 R1
       12 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_cellKeysToChildListKeys"]
        3 GETTABLEKS                       R3 R0 K1 ["cellKey"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["new"]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R4 R0 K4 ["key"]
       15 NAMECALL                         R2 R1 K5 ["add"]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["_cellKeysToChildListKeys"]
       21 GETTABLEKS                       R4 R0 K1 ["cellKey"]
       23 MOVE                             R5 R1
       24 NAMECALL                         R2 R2 K6 ["set"]
       26 CALL                             R2 3 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K7 ["_nestedChildLists"]
       30 GETTABLEKS                       R4 R0 K4 ["key"]
       32 NAMECALL                         R2 R2 K2 ["get"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+34]
       36 GETTABLEKS                       R3 R2 K8 ["ref"]
       38 JUMPIFEQKNIL                     R3 ; [+31]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R3 R4 K9 ["error"]
       43 LOADK                            R5 K10 ["A VirtualizedList contains a cell which itself contains "]
       44 LOADK                            R6 K11 ["more than one VirtualizedList of the same orientation as the parent "]
       45 LOADK                            R7 K12 ["list. You must pass a unique listKey prop to each sibling list.\n\n"]
       46 GETUPVAL                         R8 3
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K13 ["assign"]
       50 NEWTABLE                         R10 0 0
       52 MOVE                             R11 R0
       53 DUPTABLE                         R12 K15 [{"horizontal"}]
       54 GETUPVAL                         R14 5
       55 GETTABLEKS                       R13 R14 K16 ["toJSBoolean"]
       57 GETTABLEKS                       R16 R0 K8 ["ref"]
       59 GETTABLEKS                       R15 R16 K17 ["props"]
       61 GETTABLEKS                       R14 R15 K14 ["horizontal"]
       63 CALL                             R13 1 1
       64 SETTABLEKS                       R13 R12 K14 ["horizontal"]
       66 CALL                             R9 3 -1
       67 CALL                             R8 -1 1
       68 CONCAT                           R4 R5 R8
       69 CALL                             R3 1 0
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R3 R4 K7 ["_nestedChildLists"]
       73 GETTABLEKS                       R5 R0 K4 ["key"]
       75 DUPTABLE                         R6 K19 [{"ref", "state"}]
       76 GETTABLEKS                       R7 R0 K8 ["ref"]
       78 SETTABLEKS                       R7 R6 K8 ["ref"]
       80 LOADNIL                          R7
       81 SETTABLEKS                       R7 R6 K18 ["state"]
       83 NAMECALL                         R3 R3 K6 ["set"]
       85 CALL                             R3 3 0
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R3 R4 K20 ["_hasInteracted"]
       89 JUMPIFNOT                        R3 ; [+5]
       90 GETTABLEKS                       R3 R0 K8 ["ref"]
       92 NAMECALL                         R3 R3 K21 ["recordInteraction"]
       94 CALL                             R3 1 0
       95 LOADNIL                          R3
       96 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 GETTABLEKS                       R3 R0 K1 ["key"]
        5 DUPTABLE                         R4 K4 [{"ref", "state"}]
        6 LOADNIL                          R5
        7 SETTABLEKS                       R5 R4 K2 ["ref"]
        9 GETTABLEKS                       R5 R0 K3 ["state"]
       11 SETTABLEKS                       R5 R4 K3 ["state"]
       13 NAMECALL                         R1 R1 K5 ["set"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["_cellRefs"]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K2 [tostring]
       10 CALL                             R3 1 1
       11 GETTABLE                         R1 R2 R3
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["toJSBoolean"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R4 2
       19 NAMECALL                         R2 R1 K4 ["updateSeparatorProps"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["forEach"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["height"]
        2 RETURN                           R1 1
        3 LOADK                            R1 K1 ["width"]
        4 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_scrollRef"]
        3 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["onRefresh"]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["_isNestedWithSameOrientation"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 JUMPIFNOT                        R1 ; [+69]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R5 R0 K3 ["refreshing"]
       18 FASTCALL1                        TYPEOF R5 ; [+2]
       19 GETIMPORT                        R4 K5 [typeof]
       21 CALL                             R4 1 1
       22 JUMPIFEQKS                       R4 K6 ["boolean"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 LOADK                            R5 K7 ["`refreshing` prop must be set as a boolean in order to use `onRefresh`, but got `"]
       27 GETTABLEKS                       R7 R0 K3 ["refreshing"]
       29 JUMPIFNOTEQKNIL                  R7 ; [+3]
       31 LOADK                            R6 K8 ["undefined"]
       32 JUMP                             ; [+9]
       33 GETTABLEKS                       R10 R0 K3 ["refreshing"]
       35 FASTCALL1                        TOSTRING R10 ; [+2]
       36 GETIMPORT                        R9 K10 [tostring]
       38 CALL                             R9 1 1
       39 MOVE                             R7 R9
       40 LOADK                            R8 K11 ["`"]
       41 CONCAT                           R6 R7 R8
       42 CONCAT                           R4 R5 R6
       43 CALL                             R2 2 0
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R2 R3 K2 ["createElement"]
       47 GETUPVAL                         R3 4
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R4 R5 K12 ["assign"]
       51 GETIMPORT                        R5 K15 [table.clone]
       53 MOVE                             R6 R0
       54 CALL                             R5 1 1
       55 DUPTABLE                         R6 K17 [{"refreshControl"}]
       56 GETTABLEKS                       R8 R0 K16 ["refreshControl"]
       58 JUMPIFNOTEQKNIL                  R8 ; [+18]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R7 R8 K2 ["createElement"]
       63 GETUPVAL                         R8 6
       64 DUPTABLE                         R9 K19 [{"refreshing", "onRefresh", "progressViewOffset"}]
       65 GETTABLEKS                       R10 R0 K3 ["refreshing"]
       67 SETTABLEKS                       R10 R9 K3 ["refreshing"]
       69 SETTABLEKS                       R1 R9 K0 ["onRefresh"]
       71 GETTABLEKS                       R10 R0 K18 ["progressViewOffset"]
       73 SETTABLEKS                       R10 R9 K18 ["progressViewOffset"]
       75 CALL                             R7 2 1
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R7 R0 K16 ["refreshControl"]
       79 SETTABLEKS                       R7 R6 K16 ["refreshControl"]
       81 CALL                             R4 2 -1
       82 CALL                             R2 -1 -1
       83 RETURN                           R2 -1
       84 GETUPVAL                         R3 1
       85 GETTABLEKS                       R2 R3 K2 ["createElement"]
       87 GETUPVAL                         R3 4
       88 MOVE                             R4 R0
       89 CALL                             R2 2 -1
       90 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_frames"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFEQKNIL                     R1 ; [+16]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["_frames"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K1 ["assign"]
       12 NEWTABLE                         R4 0 0
       14 MOVE                             R5 R1
       15 DUPTABLE                         R6 K3 [{"inLayout"}]
       16 LOADB                            R7 0
       17 SETTABLEKS                       R7 R6 K2 ["inLayout"]
       19 CALL                             R3 3 1
       20 SETTABLE                         R3 R2 R0
       21 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isNestedWithSameOrientation"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["measureLayoutRelativeToContainingList"]
        8 CALL                             R1 1 0
        9 JUMP                             ; [+22]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["_scrollMetrics"]
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R4 K5 [{"width", "height"}]
       15 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       17 GETTABLEKS                       R5 R6 K7 ["X"]
       19 SETTABLEKS                       R5 R4 K3 ["width"]
       21 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       23 GETTABLEKS                       R5 R6 K8 ["Y"]
       25 SETTABLEKS                       R5 R4 K4 ["height"]
       27 NAMECALL                         R2 R2 K9 ["_selectLength"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K10 ["visibleLength"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K11 ["props"]
       35 GETTABLEKS                       R1 R2 K12 ["onLayout"]
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K11 ["props"]
       41 GETTABLEKS                       R1 R2 K12 ["onLayout"]
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 GETUPVAL                         R1 0
       46 NAMECALL                         R1 R1 K13 ["_scheduleCellsToRenderUpdate"]
       48 CALL                             R1 1 0
       49 GETUPVAL                         R1 0
       50 NAMECALL                         R1 R1 K14 ["_maybeCallOnEndReached"]
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["onLayout"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["onLayout"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K0 ["_getFooterCellKey"]
        4 CALL                             R3 1 -1
        5 NAMECALL                         R1 R1 K1 ["_triggerRemeasureForChildListsInCell"]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R4 K4 [{"height", "width"}]
       11 GETTABLEKS                       R6 R0 K5 ["AbsoluteSize"]
       13 GETTABLEKS                       R5 R6 K6 ["Y"]
       15 SETTABLEKS                       R5 R4 K2 ["height"]
       17 GETTABLEKS                       R6 R0 K5 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K7 ["X"]
       21 SETTABLEKS                       R5 R4 K3 ["width"]
       23 NAMECALL                         R2 R2 K8 ["_selectLength"]
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K9 ["_footerLength"]
       28 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K2 [{"height", "width"}]
        3 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R5 R6 K4 ["Y"]
        7 SETTABLEKS                       R5 R4 K0 ["height"]
        9 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R5 R6 K5 ["X"]
       13 SETTABLEKS                       R5 R4 K1 ["width"]
       15 NAMECALL                         R2 R2 K6 ["_selectLength"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K7 ["_headerLength"]
       20 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getScrollRef"]
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+5]
        6 GETIMPORT                        R0 K3 [task.wait]
        8 CALL                             R0 0 0
        9 JUMPBACK                         ; [-10]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["props"]
       13 GETTABLEKS                       R0 R1 K5 ["contentOffset"]
       15 JUMPIFNOTEQKNIL                  R0 ; [+42]
       17 GETUPVAL                         R2 0
       18 NAMECALL                         R2 R2 K0 ["getScrollRef"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R1 R2 K6 ["_nativeRef"]
       23 GETTABLEKS                       R0 R1 K7 ["current"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K4 ["props"]
       28 GETTABLEKS                       R1 R2 K8 ["horizontal"]
       30 JUMPIFNOT                        R1 ; [+14]
       31 GETIMPORT                        R1 K11 [Vector2.new]
       33 GETTABLEKS                       R3 R0 K12 ["AbsoluteCanvasSize"]
       35 GETTABLEKS                       R2 R3 K13 ["X"]
       37 GETTABLEKS                       R4 R0 K14 ["CanvasPosition"]
       39 GETTABLEKS                       R3 R4 K15 ["Y"]
       41 CALL                             R1 2 1
       42 SETTABLEKS                       R1 R0 K14 ["CanvasPosition"]
       44 RETURN                           R0 0
       45 GETIMPORT                        R1 K11 [Vector2.new]
       47 GETTABLEKS                       R3 R0 K14 ["CanvasPosition"]
       49 GETTABLEKS                       R2 R3 K13 ["X"]
       51 GETTABLEKS                       R4 R0 K12 ["AbsoluteCanvasSize"]
       53 GETTABLEKS                       R3 R4 K15 ["Y"]
       55 CALL                             R1 2 1
       56 SETTABLEKS                       R1 R0 K14 ["CanvasPosition"]
       58 RETURN                           R0 0

PROTO_32:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R0 ; [+50]
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+47]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K1 ["initialScrollIndex"]
       11 JUMPIFEQKNIL                     R2 ; [+40]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["props"]
       16 GETTABLEKS                       R2 R3 K1 ["initialScrollIndex"]
       18 LOADN                            R3 1
       19 JUMPIFNOTLT                      R3 R2 ; [+32]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K2 ["_hasDoneInitialScroll"]
       24 JUMPIF                           R2 ; [+27]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K0 ["props"]
       28 GETTABLEKS                       R2 R3 K3 ["contentOffset"]
       30 JUMPIFNOTEQKNIL                  R2 ; [+16]
       32 GETUPVAL                         R2 0
       33 DUPTABLE                         R4 K6 [{"animated", "index"}]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K4 ["animated"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K0 ["props"]
       40 GETTABLEKS                       R5 R6 K1 ["initialScrollIndex"]
       42 SETTABLEKS                       R5 R4 K5 ["index"]
       44 NAMECALL                         R2 R2 K7 ["scrollToIndex"]
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 0
       48 LOADB                            R3 1
       49 SETTABLEKS                       R3 R2 K2 ["_hasDoneInitialScroll"]
       51 JUMP                             ; [+25]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K0 ["props"]
       55 GETTABLEKS                       R2 R3 K8 ["inverted"]
       57 JUMPIFNOT                        R2 ; [+19]
       58 LOADN                            R2 0
       59 JUMPIFNOTLT                      R2 R0 ; [+17]
       61 LOADN                            R2 0
       62 JUMPIFNOTLT                      R2 R1 ; [+14]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R2 R3 K2 ["_hasDoneInitialScroll"]
       67 JUMPIF                           R2 ; [+9]
       68 GETUPVAL                         R2 0
       69 LOADB                            R3 1
       70 SETTABLEKS                       R3 R2 K2 ["_hasDoneInitialScroll"]
       72 GETIMPORT                        R2 K11 [task.defer]
       74 NEWCLOSURE                       R3 P0
       75 CAPTURE                          UPVAL U0
       76 CALL                             R2 1 0
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R3 R4 K0 ["props"]
       80 GETTABLEKS                       R2 R3 K12 ["onContentSizeChange"]
       82 JUMPIFNOT                        R2 ; [+8]
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R3 R4 K0 ["props"]
       86 GETTABLEKS                       R2 R3 K12 ["onContentSizeChange"]
       88 MOVE                             R3 R0
       89 MOVE                             R4 R1
       90 CALL                             R2 2 0
       91 GETUPVAL                         R3 0
       92 GETTABLEKS                       R2 R3 K13 ["_scrollMetrics"]
       94 GETUPVAL                         R3 0
       95 DUPTABLE                         R5 K16 [{"height", "width"}]
       96 SETTABLEKS                       R1 R5 K14 ["height"]
       98 SETTABLEKS                       R0 R5 K15 ["width"]
      100 NAMECALL                         R3 R3 K17 ["_selectLength"]
      102 CALL                             R3 2 1
      103 SETTABLEKS                       R3 R2 K18 ["contentLength"]
      105 GETUPVAL                         R2 0
      106 NAMECALL                         R2 R2 K19 ["_scheduleCellsToRenderUpdate"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 0
      110 NAMECALL                         R2 R2 K20 ["_maybeCallOnEndReached"]
      112 CALL                             R2 1 0
      113 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["offset"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["_offsetFromParentVirtualizedList"]
        5 SUB                              R1 R2 R3
        6 GETTABLEKS                       R2 R0 K2 ["visibleLength"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["_scrollMetrics"]
       11 GETTABLEKS                       R4 R5 K0 ["offset"]
       13 SUB                              R3 R1 R4
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K3 ["_scrollMetrics"]
       17 GETTABLEKS                       R4 R5 K4 ["contentLength"]
       19 DUPTABLE                         R5 K6 [{"visibleLength", "contentLength", "offset", "dOffset"}]
       20 SETTABLEKS                       R2 R5 K2 ["visibleLength"]
       22 SETTABLEKS                       R4 R5 K4 ["contentLength"]
       24 SETTABLEKS                       R1 R5 K0 ["offset"]
       26 SETTABLEKS                       R3 R5 K5 ["dOffset"]
       28 RETURN                           R5 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["ref"]
        5 GETTABLEKS                       R1 R2 K1 ["_onScroll"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R1 K3 [{"scrollPositionDelta", "first", "last"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["scrollPositionDelta"]
        4 GETTABLEKS                       R3 R0 K1 ["first"]
        6 GETUPVAL                         R4 0
        7 ADD                              R2 R3 R4
        8 SETTABLEKS                       R2 R1 K1 ["first"]
       10 GETTABLEKS                       R3 R0 K2 ["last"]
       12 GETUPVAL                         R4 0
       13 ADD                              R2 R3 R4
       14 SETTABLEKS                       R2 R1 K2 ["last"]
       16 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["forEach"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["onScroll"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["props"]
       17 GETTABLEKS                       R1 R2 K3 ["onScroll"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETIMPORT                        R1 K6 [os.clock]
       23 CALL                             R1 0 1
       24 NAMECALL                         R3 R0 K7 ["GetChildren"]
       26 CALL                             R3 1 1
       27 GETTABLEN                        R2 R3 1
       28 GETUPVAL                         R3 0
       29 DUPTABLE                         R5 K10 [{"height", "width"}]
       30 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       32 GETTABLEKS                       R6 R7 K12 ["Y"]
       34 SETTABLEKS                       R6 R5 K8 ["height"]
       36 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       38 GETTABLEKS                       R6 R7 K13 ["X"]
       40 SETTABLEKS                       R6 R5 K9 ["width"]
       42 NAMECALL                         R3 R3 K14 ["_selectLength"]
       44 CALL                             R3 2 1
       45 GETUPVAL                         R4 0
       46 DUPTABLE                         R6 K10 [{"height", "width"}]
       47 GETTABLEKS                       R8 R2 K11 ["AbsoluteSize"]
       49 GETTABLEKS                       R7 R8 K12 ["Y"]
       51 SETTABLEKS                       R7 R6 K8 ["height"]
       53 GETTABLEKS                       R8 R2 K11 ["AbsoluteSize"]
       55 GETTABLEKS                       R7 R8 K13 ["X"]
       57 SETTABLEKS                       R7 R6 K9 ["width"]
       59 NAMECALL                         R4 R4 K14 ["_selectLength"]
       61 CALL                             R4 2 1
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R7 R8 K2 ["props"]
       65 GETTABLEKS                       R6 R7 K15 ["inverted"]
       67 JUMPIFNOT                        R6 ; [+30]
       68 GETUPVAL                         R5 0
       69 DUPTABLE                         R7 K18 [{"x", "y"}]
       70 GETTABLEKS                       R11 R0 K19 ["AbsoluteCanvasSize"]
       72 GETTABLEKS                       R10 R11 K13 ["X"]
       74 GETTABLEKS                       R12 R0 K20 ["CanvasPosition"]
       76 GETTABLEKS                       R11 R12 K13 ["X"]
       78 SUB                              R9 R10 R11
       79 SUB                              R8 R9 R3
       80 SETTABLEKS                       R8 R7 K16 ["x"]
       82 GETTABLEKS                       R11 R0 K19 ["AbsoluteCanvasSize"]
       84 GETTABLEKS                       R10 R11 K12 ["Y"]
       86 GETTABLEKS                       R12 R0 K20 ["CanvasPosition"]
       88 GETTABLEKS                       R11 R12 K12 ["Y"]
       90 SUB                              R9 R10 R11
       91 SUB                              R8 R9 R3
       92 SETTABLEKS                       R8 R7 K17 ["y"]
       94 NAMECALL                         R5 R5 K21 ["_selectOffset"]
       96 CALL                             R5 2 1
       97 JUMP                             ; [+17]
       98 GETUPVAL                         R5 0
       99 DUPTABLE                         R7 K18 [{"x", "y"}]
      100 GETTABLEKS                       R9 R0 K20 ["CanvasPosition"]
      102 GETTABLEKS                       R8 R9 K13 ["X"]
      104 SETTABLEKS                       R8 R7 K16 ["x"]
      106 GETTABLEKS                       R9 R0 K20 ["CanvasPosition"]
      108 GETTABLEKS                       R8 R9 K12 ["Y"]
      110 SETTABLEKS                       R8 R7 K17 ["y"]
      112 NAMECALL                         R5 R5 K21 ["_selectOffset"]
      114 CALL                             R5 2 1
      115 GETUPVAL                         R9 0
      116 GETTABLEKS                       R8 R9 K22 ["_scrollMetrics"]
      118 GETTABLEKS                       R7 R8 K23 ["offset"]
      120 SUB                              R6 R5 R7
      121 GETUPVAL                         R7 0
      122 NAMECALL                         R7 R7 K24 ["_isNestedWithSameOrientation"]
      124 CALL                             R7 1 1
      125 JUMPIFNOT                        R7 ; [+26]
      126 GETUPVAL                         R9 0
      127 GETTABLEKS                       R8 R9 K22 ["_scrollMetrics"]
      129 GETTABLEKS                       R7 R8 K25 ["contentLength"]
      131 JUMPIFNOTEQKN                    R7 K26 [0] ; [+2]
      133 RETURN                           R0 0
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R7 R8 K27 ["_convertParentScrollMetrics"]
      137 NEWTABLE                         R8 0 2
      139 MOVE                             R9 R3
      140 MOVE                             R10 R5
      141 SETLIST                          R8 R9 2 [1]
      143 CALL                             R7 1 1
      144 GETTABLEKS                       R3 R7 K28 ["visibleLength"]
      146 GETTABLEKS                       R4 R7 K25 ["contentLength"]
      148 GETTABLEKS                       R5 R7 K23 ["offset"]
      150 GETTABLEKS                       R6 R7 K29 ["dOffset"]
      152 GETUPVAL                         R9 1
      153 GETTABLEKS                       R8 R9 K30 ["toJSBoolean"]
      155 GETUPVAL                         R11 0
      156 GETTABLEKS                       R10 R11 K22 ["_scrollMetrics"]
      158 GETTABLEKS                       R9 R10 K31 ["timestamp"]
      160 CALL                             R8 1 1
      161 JUMPIFNOT                        R8 ; [+14]
      162 LOADN                            R8 1
      163 GETUPVAL                         R13 0
      164 GETTABLEKS                       R12 R13 K22 ["_scrollMetrics"]
      166 GETTABLEKS                       R11 R12 K31 ["timestamp"]
      168 SUB                              R10 R1 R11
      169 MULK                             R9 R10 K32 [1000]
      170 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      172 GETIMPORT                        R7 K35 [math.max]
      174 CALL                             R7 2 1
      175 JUMP                             ; [+1]
      176 LOADN                            R7 1
      177 DIV                              R8 R6 R7
      178 LOADN                            R9 244
      179 JUMPIFNOTLT                      R9 R7 ; [+40]
      181 GETUPVAL                         R11 0
      182 GETTABLEKS                       R10 R11 K22 ["_scrollMetrics"]
      184 GETTABLEKS                       R9 R10 K36 ["dt"]
      186 LOADN                            R10 244
      187 JUMPIFNOTLT                      R10 R9 ; [+32]
      189 LOADN                            R10 5
      190 MUL                              R9 R10 R3
      191 JUMPIFNOTLT                      R9 R4 ; [+28]
      193 GETUPVAL                         R11 0
      194 GETTABLEKS                       R10 R11 K37 ["_hasWarned"]
      196 GETTABLEKS                       R9 R10 K38 ["perf"]
      198 JUMPIF                           R9 ; [+21]
      199 GETUPVAL                         R9 2
      200 LOADK                            R10 K39 ["VirtualizedList: You have a large list that is slow to update - make sure your renderItem function renders components that follow React performance best practices like PureComponent, shouldComponentUpdate, etc."]
      201 DUPTABLE                         R11 K41 [{"dt", "prevDt", "contentLength"}]
      202 SETTABLEKS                       R7 R11 K36 ["dt"]
      204 GETUPVAL                         R14 0
      205 GETTABLEKS                       R13 R14 K22 ["_scrollMetrics"]
      207 GETTABLEKS                       R12 R13 K36 ["dt"]
      209 SETTABLEKS                       R12 R11 K40 ["prevDt"]
      211 SETTABLEKS                       R4 R11 K25 ["contentLength"]
      213 CALL                             R9 2 0
      214 GETUPVAL                         R10 0
      215 GETTABLEKS                       R9 R10 K37 ["_hasWarned"]
      217 LOADB                            R10 1
      218 SETTABLEKS                       R10 R9 K38 ["perf"]
      220 GETUPVAL                         R9 0
      221 DUPTABLE                         R10 K43 [{"contentLength", "dt", "dOffset", "offset", "timestamp", "velocity", "visibleLength"}]
      222 SETTABLEKS                       R4 R10 K25 ["contentLength"]
      224 SETTABLEKS                       R7 R10 K36 ["dt"]
      226 SETTABLEKS                       R6 R10 K29 ["dOffset"]
      228 SETTABLEKS                       R5 R10 K23 ["offset"]
      230 SETTABLEKS                       R1 R10 K31 ["timestamp"]
      232 SETTABLEKS                       R8 R10 K42 ["velocity"]
      234 SETTABLEKS                       R3 R10 K28 ["visibleLength"]
      236 SETTABLEKS                       R10 R9 K22 ["_scrollMetrics"]
      238 GETUPVAL                         R11 0
      239 GETTABLEKS                       R10 R11 K44 ["state"]
      241 GETTABLEKS                       R9 R10 K45 ["scrollPositionDelta"]
      243 LOADN                            R10 0
      244 JUMPIFNOTLT                      R10 R9 ; [+7]
      246 GETUPVAL                         R10 0
      247 NEWCLOSURE                       R12 P1
      248 CAPTURE                          VAL R9
      249 NAMECALL                         R10 R10 K46 ["setState"]
      251 CALL                             R10 2 0
      252 GETUPVAL                         R10 0
      253 GETUPVAL                         R14 0
      254 GETTABLEKS                       R13 R14 K2 ["props"]
      256 GETTABLEKS                       R12 R13 K47 ["data"]
      258 NAMECALL                         R10 R10 K48 ["_updateViewableItems"]
      260 CALL                             R10 2 0
      261 GETUPVAL                         R11 0
      262 GETTABLEKS                       R10 R11 K2 ["props"]
      264 JUMPIF                           R10 ; [+1]
      265 RETURN                           R0 0
      266 GETUPVAL                         R10 0
      267 NAMECALL                         R10 R10 K49 ["_maybeCallOnEndReached"]
      269 CALL                             R10 1 0
      270 JUMPIFEQKN                       R8 K26 [0] ; [+7]
      272 GETUPVAL                         R11 0
      273 GETTABLEKS                       R10 R11 K50 ["_fillRateHelper"]
      275 NAMECALL                         R10 R10 K51 ["activate"]
      277 CALL                             R10 1 0
      278 GETUPVAL                         R10 0
      279 NAMECALL                         R10 R10 K52 ["_computeBlankness"]
      281 CALL                             R10 1 0
      282 GETUPVAL                         R10 0
      283 NAMECALL                         R10 R10 K53 ["_scheduleCellsToRenderUpdate"]
      285 CALL                             R10 1 0
      286 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["ref"]
        5 GETTABLEKS                       R1 R2 K1 ["_onScrollBeginDrag"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["viewabilityHelper"]
        2 NAMECALL                         R1 R1 K1 ["recordInteraction"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["forEach"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["forEach"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["_viewabilityTuples"]
       14 DUPCLOSURE                       R3 K3 [PROTO_38]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K4 ["_hasInteracted"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K5 ["props"]
       23 GETTABLEKS                       R1 R2 K6 ["onScrollBeginDrag"]
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K5 ["props"]
       29 GETTABLEKS                       R1 R2 K6 ["onScrollBeginDrag"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["ref"]
        5 GETTABLEKS                       R1 R2 K1 ["_onScrollEndDrag"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["forEach"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["toJSBoolean"]
       11 LOADNIL                          R2
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+10]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["_scrollMetrics"]
       17 GETUPVAL                         R2 0
       18 LOADNIL                          R4
       19 NAMECALL                         R2 R2 K4 ["_selectOffset"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K5 ["velocity"]
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K6 ["_computeBlankness"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K7 ["props"]
       31 GETTABLEKS                       R1 R2 K8 ["onScrollEndDrag"]
       33 JUMPIFNOT                        R1 ; [+7]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K7 ["props"]
       37 GETTABLEKS                       R1 R2 K8 ["onScrollEndDrag"]
       39 MOVE                             R2 R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["ref"]
        5 GETTABLEKS                       R1 R2 K1 ["_onMomentumScrollBegin"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["forEach"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["onMomentumScrollBegin"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["props"]
       17 GETTABLEKS                       R1 R2 K3 ["onMomentumScrollBegin"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["ref"]
        5 GETTABLEKS                       R1 R2 K1 ["_onMomentumScrollEnd"]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["forEach"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["_scrollMetrics"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R1 K3 ["velocity"]
       14 GETUPVAL                         R1 0
       15 NAMECALL                         R1 R1 K4 ["_computeBlankness"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K5 ["props"]
       21 GETTABLEKS                       R1 R2 K6 ["onMomentumScrollEnd"]
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K5 ["props"]
       27 GETTABLEKS                       R1 R2 K6 ["onMomentumScrollEnd"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R2 R4 K1 ["data"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["getItem"]
       10 MOVE                             R4 R3
       11 MOVE                             R5 R2
       12 MOVE                             R6 R0
       13 CALL                             R4 2 1
       14 DUPTABLE                         R5 K7 [{"index", "item", "key", "isViewable"}]
       15 SETTABLEKS                       R0 R5 K3 ["index"]
       17 SETTABLEKS                       R4 R5 K4 ["item"]
       19 GETUPVAL                         R6 0
       20 MOVE                             R8 R4
       21 MOVE                             R9 R0
       22 NAMECALL                         R6 R6 K8 ["_keyExtractor"]
       24 CALL                             R6 3 1
       25 SETTABLEKS                       R6 R5 K5 ["key"]
       27 SETTABLEKS                       R1 R5 K6 ["isViewable"]
       29 RETURN                           R5 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_getFrameMetrics"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+6]
        7 GETTABLEKS                       R2 R1 K1 ["index"]
        9 JUMPIFNOTEQ                      R2 R0 ; [+2]
       11 RETURN                           R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["props"]
       15 GETTABLEKS                       R2 R3 K3 ["getItemLayout"]
       17 GETUPVAL                         R3 1
       18 NOT                              R4 R2
       19 LOADK                            R5 K4 ["Should not have to estimate frames when a measurement metrics function is provided"]
       20 CALL                             R3 2 0
       21 DUPTABLE                         R3 K7 [{"length", "offset"}]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K8 ["_averageCellLength"]
       25 SETTABLEKS                       R4 R3 K5 ["length"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K8 ["_averageCellLength"]
       30 SUBK                             R6 R0 K9 [1]
       31 MUL                              R4 R5 R6
       32 SETTABLEKS                       R4 R3 K6 ["offset"]
       34 RETURN                           R3 1

PROTO_48:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R0 K1 ["_viewabilityTuples"]
        6 LOADN                            R2 0
        7 SETTABLEKS                       R2 R0 K2 ["_averageCellLength"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["new"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R0 K4 ["_cellKeysToChildListKeys"]
       15 NEWTABLE                         R2 0 0
       17 SETTABLEKS                       R2 R0 K5 ["_cellRefs"]
       19 NEWTABLE                         R2 0 0
       21 SETTABLEKS                       R2 R0 K6 ["_frames"]
       23 LOADN                            R2 0
       24 SETTABLEKS                       R2 R0 K7 ["_footerLength"]
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R0 K8 ["_hasDoneInitialScroll"]
       29 LOADB                            R2 0
       30 SETTABLEKS                       R2 R0 K9 ["_hasInteracted"]
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R0 K10 ["_hasMore"]
       35 NEWTABLE                         R2 0 0
       37 SETTABLEKS                       R2 R0 K11 ["_hasWarned"]
       39 LOADN                            R2 0
       40 SETTABLEKS                       R2 R0 K12 ["_headerLength"]
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R0 K13 ["_hiPriInProgress"]
       45 LOADN                            R2 1
       46 SETTABLEKS                       R2 R0 K14 ["_highestMeasuredFrameIndex"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R2 R3 K3 ["new"]
       51 CALL                             R2 0 1
       52 SETTABLEKS                       R2 R0 K15 ["_indicesToKeys"]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R2 R3 K3 ["new"]
       57 CALL                             R2 0 1
       58 SETTABLEKS                       R2 R0 K16 ["_nestedChildLists"]
       60 LOADN                            R2 0
       61 SETTABLEKS                       R2 R0 K17 ["_offsetFromParentVirtualizedList"]
       63 LOADN                            R2 0
       64 SETTABLEKS                       R2 R0 K18 ["_prevParentOffset"]
       66 DUPTABLE                         R2 K26 [{"contentLength", "dOffset", "dt", "offset", "timestamp", "velocity", "visibleLength"}]
       67 LOADN                            R3 0
       68 SETTABLEKS                       R3 R2 K19 ["contentLength"]
       70 LOADN                            R3 0
       71 SETTABLEKS                       R3 R2 K20 ["dOffset"]
       73 LOADN                            R3 10
       74 SETTABLEKS                       R3 R2 K21 ["dt"]
       76 LOADN                            R3 0
       77 SETTABLEKS                       R3 R2 K22 ["offset"]
       79 LOADN                            R3 0
       80 SETTABLEKS                       R3 R2 K23 ["timestamp"]
       82 LOADN                            R3 0
       83 SETTABLEKS                       R3 R2 K24 ["velocity"]
       85 LOADN                            R3 0
       86 SETTABLEKS                       R3 R2 K25 ["visibleLength"]
       88 SETTABLEKS                       R2 R0 K27 ["_scrollMetrics"]
       90 LOADNIL                          R2
       91 SETTABLEKS                       R2 R0 K28 ["_scrollRef"]
       93 LOADN                            R2 0
       94 SETTABLEKS                       R2 R0 K29 ["_sentEndForContentLength"]
       96 LOADN                            R2 0
       97 SETTABLEKS                       R2 R0 K30 ["_totalCellLength"]
       99 LOADN                            R2 0
      100 SETTABLEKS                       R2 R0 K31 ["_totalCellsMeasured"]
      102 GETIMPORT                        R2 K33 [Vector2.new]
      104 LOADN                            R3 0
      105 LOADN                            R4 0
      106 CALL                             R2 2 1
      107 SETTABLEKS                       R2 R0 K34 ["_canvasPosition"]
      109 GETIMPORT                        R2 K36 [UDim2.new]
      111 LOADN                            R3 0
      112 LOADN                            R4 0
      113 LOADN                            R5 0
      114 LOADN                            R6 0
      115 CALL                             R2 4 1
      116 SETTABLEKS                       R2 R0 K37 ["_canvasSize"]
      118 GETTABLEKS                       R4 R0 K0 ["props"]
      120 GETTABLEKS                       R3 R4 K38 ["getItemLayout"]
      122 JUMPIFNOT                        R3 ; [+2]
      123 LOADN                            R2 0
      124 JUMP                             ; [+5]
      125 GETTABLEKS                       R4 R0 K0 ["props"]
      127 GETTABLEKS                       R3 R4 K40 ["invertedCanvasLength"]
      129 ORK                              R2 R3 K39 [1000]
      130 SETTABLEKS                       R2 R0 K41 ["_invertedCanvasLength"]
      132 NEWCLOSURE                       R2 P0
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U1
      135 SETTABLEKS                       R2 R0 K42 ["_getFrameMetrics"]
      137 GETUPVAL                         R2 1
      138 GETTABLEKS                       R5 R1 K43 ["windowSize"]
      140 JUMPIFNOTEQKNIL                  R5 ; [+3]
      142 LOADN                            R4 21
      143 JUMP                             ; [+1]
      144 MOVE                             R4 R5
      145 LOADN                            R5 0
      146 JUMPIFLT                         R5 R4 ; [+2]
      148 LOADB                            R3 0 +1
      149 LOADB                            R3 1
      150 LOADK                            R4 K44 ["VirtualizedList: The windowSize prop must be present and set to a value greater than 0."]
      151 CALL                             R2 2 0
      152 GETUPVAL                         R3 2
      153 GETTABLEKS                       R2 R3 K3 ["new"]
      155 GETTABLEKS                       R3 R0 K42 ["_getFrameMetrics"]
      157 CALL                             R2 1 1
      158 SETTABLEKS                       R2 R0 K45 ["_fillRateHelper"]
      160 NEWCLOSURE                       R2 P1
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          UPVAL U4
      164 SETTABLEKS                       R2 R0 K46 ["_updateCellsToRender"]
      166 GETUPVAL                         R3 5
      167 GETTABLEKS                       R2 R3 K3 ["new"]
      169 GETTABLEKS                       R3 R0 K46 ["_updateCellsToRender"]
      171 GETTABLEKS                       R6 R0 K0 ["props"]
      173 GETTABLEKS                       R5 R6 K47 ["updateCellsBatchingPeriod"]
      175 JUMPIFNOTEQKNIL                  R5 ; [+3]
      177 LOADN                            R4 50
      178 JUMP                             ; [+4]
      179 GETTABLEKS                       R5 R0 K0 ["props"]
      181 GETTABLEKS                       R4 R5 K47 ["updateCellsBatchingPeriod"]
      183 CALL                             R2 2 1
      184 SETTABLEKS                       R2 R0 K48 ["_updateCellsToRenderBatcher"]
      186 GETTABLEKS                       R3 R0 K0 ["props"]
      188 GETTABLEKS                       R2 R3 K49 ["viewabilityConfigCallbackPairs"]
      190 JUMPIFNOT                        R2 ; [+13]
      191 GETUPVAL                         R3 6
      192 GETTABLEKS                       R2 R3 K50 ["map"]
      194 GETTABLEKS                       R4 R0 K0 ["props"]
      196 GETTABLEKS                       R3 R4 K49 ["viewabilityConfigCallbackPairs"]
      198 DUPCLOSURE                       R4 K51 [PROTO_15]
      199 CAPTURE                          UPVAL U7
      200 CALL                             R2 2 1
      201 SETTABLEKS                       R2 R0 K1 ["_viewabilityTuples"]
      203 JUMP                             ; [+26]
      204 GETTABLEKS                       R4 R0 K0 ["props"]
      206 GETTABLEKS                       R2 R4 K52 ["onViewableItemsChanged"]
      208 GETTABLEKS                       R4 R0 K0 ["props"]
      210 GETTABLEKS                       R3 R4 K53 ["viewabilityConfig"]
      212 JUMPIFNOT                        R2 ; [+17]
      213 GETTABLEKS                       R5 R0 K1 ["_viewabilityTuples"]
      215 DUPTABLE                         R6 K55 [{"viewabilityHelper", "onViewableItemsChanged"}]
      216 GETUPVAL                         R8 7
      217 GETTABLEKS                       R7 R8 K3 ["new"]
      219 MOVE                             R8 R3
      220 CALL                             R7 1 1
      221 SETTABLEKS                       R7 R6 K54 ["viewabilityHelper"]
      223 SETTABLEKS                       R2 R6 K52 ["onViewableItemsChanged"]
      225 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
      227 GETIMPORT                        R4 K58 [table.insert]
      229 CALL                             R4 2 0
      230 DUPTABLE                         R2 K63 [{"first", "last", "firstItemTracked", "scrollPositionDelta"}]
      231 GETTABLEKS                       R6 R0 K0 ["props"]
      233 GETTABLEKS                       R5 R6 K64 ["initialScrollIndex"]
      235 LOADB                            R4 0
      236 JUMPIFEQKNIL                     R5 ; [+5]
      238 JUMPIFNOTEQKN                    R5 K65 [1] ; [+2]
      240 LOADB                            R4 0 +1
      241 LOADB                            R4 1
      242 JUMPIFNOT                        R4 ; [+5]
      243 GETTABLEKS                       R4 R0 K0 ["props"]
      245 GETTABLEKS                       R3 R4 K64 ["initialScrollIndex"]
      247 JUMP                             ; [+1]
      248 LOADN                            R3 1
      249 SETTABLEKS                       R3 R2 K59 ["first"]
      251 GETTABLEKS                       R7 R0 K0 ["props"]
      253 GETTABLEKS                       R6 R7 K66 ["getItemCount"]
      255 GETTABLEKS                       R8 R0 K0 ["props"]
      257 GETTABLEKS                       R7 R8 K67 ["data"]
      259 CALL                             R6 1 1
      260 ADDK                             R5 R6 K65 [1]
      261 GETTABLEKS                       R10 R0 K0 ["props"]
      263 GETTABLEKS                       R9 R10 K64 ["initialScrollIndex"]
      265 LOADB                            R8 0
      266 JUMPIFEQKNIL                     R9 ; [+5]
      268 JUMPIFNOTEQKN                    R9 K65 [1] ; [+2]
      270 LOADB                            R8 0 +1
      271 LOADB                            R8 1
      272 JUMPIFNOT                        R8 ; [+5]
      273 GETTABLEKS                       R8 R0 K0 ["props"]
      275 GETTABLEKS                       R7 R8 K64 ["initialScrollIndex"]
      277 JUMP                             ; [+1]
      278 LOADN                            R7 1
      279 GETTABLEKS                       R10 R0 K0 ["props"]
      281 GETTABLEKS                       R9 R10 K68 ["initialNumToRender"]
      283 JUMPIFNOTEQKNIL                  R9 ; [+3]
      285 LOADN                            R8 10
      286 JUMP                             ; [+1]
      287 MOVE                             R8 R9
      288 ADD                              R6 R7 R8
      289 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
      291 GETIMPORT                        R4 K71 [math.min]
      293 CALL                             R4 2 1
      294 SUBK                             R3 R4 K65 [1]
      295 SETTABLEKS                       R3 R2 K60 ["last"]
      297 GETTABLEKS                       R5 R0 K0 ["props"]
      299 GETTABLEKS                       R4 R5 K67 ["data"]
      301 JUMPIFNOT                        R4 ; [+23]
      302 GETTABLEKS                       R5 R0 K0 ["props"]
      304 GETTABLEKS                       R4 R5 K66 ["getItemCount"]
      306 GETTABLEKS                       R6 R0 K0 ["props"]
      308 GETTABLEKS                       R5 R6 K67 ["data"]
      310 CALL                             R4 1 1
      311 LOADN                            R5 0
      312 JUMPIFNOTLT                      R5 R4 ; [+12]
      314 GETTABLEKS                       R4 R0 K0 ["props"]
      316 GETTABLEKS                       R3 R4 K72 ["getItem"]
      318 GETTABLEKS                       R5 R0 K0 ["props"]
      320 GETTABLEKS                       R4 R5 K67 ["data"]
      322 LOADN                            R5 1
      323 CALL                             R3 2 1
      324 JUMP                             ; [+3]
      325 GETUPVAL                         R4 8
      326 GETTABLEKS                       R3 R4 K73 ["None"]
      328 SETTABLEKS                       R3 R2 K61 ["firstItemTracked"]
      330 LOADN                            R3 0
      331 SETTABLEKS                       R3 R2 K62 ["scrollPositionDelta"]
      333 NAMECALL                         R3 R0 K74 ["_isNestedWithSameOrientation"]
      335 CALL                             R3 1 1
      336 JUMPIFNOT                        R3 ; [+21]
      337 GETTABLEKS                       R4 R0 K75 ["context"]
      339 GETTABLEKS                       R3 R4 K76 ["getNestedChildState"]
      341 NAMECALL                         R4 R0 K77 ["_getListKey"]
      343 CALL                             R4 1 -1
      344 CALL                             R3 -1 1
      345 GETUPVAL                         R5 3
      346 GETTABLEKS                       R4 R5 K78 ["toJSBoolean"]
      348 MOVE                             R5 R3
      349 CALL                             R4 1 1
      350 JUMPIFNOT                        R4 ; [+7]
      351 MOVE                             R2 R3
      352 SETTABLEKS                       R3 R0 K79 ["state"]
      354 GETTABLEKS                       R4 R3 K80 ["frames"]
      356 SETTABLEKS                       R4 R0 K6 ["_frames"]
      358 SETTABLEKS                       R2 R0 K79 ["state"]
      360 NEWCLOSURE                       R3 P3
      361 CAPTURE                          VAL R0
      362 SETTABLEKS                       R3 R0 K81 ["_getScrollMetrics"]
      364 NEWCLOSURE                       R3 P4
      365 CAPTURE                          VAL R0
      366 SETTABLEKS                       R3 R0 K82 ["_getOutermostParentListRef"]
      368 NEWCLOSURE                       R3 P5
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R3 R0 K83 ["_getNestedChildState"]
      372 NEWCLOSURE                       R3 P6
      373 CAPTURE                          VAL R0
      374 CAPTURE                          UPVAL U9
      375 CAPTURE                          UPVAL U10
      376 CAPTURE                          UPVAL U11
      377 CAPTURE                          UPVAL U8
      378 CAPTURE                          UPVAL U3
      379 SETTABLEKS                       R3 R0 K84 ["_registerAsNestedChild"]
      381 NEWCLOSURE                       R3 P7
      382 CAPTURE                          VAL R0
      383 SETTABLEKS                       R3 R0 K85 ["_unregisterAsNestedChild"]
      385 NEWCLOSURE                       R3 P8
      386 CAPTURE                          UPVAL U6
      387 CAPTURE                          VAL R0
      388 CAPTURE                          UPVAL U3
      389 SETTABLEKS                       R3 R0 K86 ["_onUpdateSeparators"]
      391 DUPCLOSURE                       R3 K87 [PROTO_23]
      392 SETTABLEKS                       R3 R0 K88 ["_getSpacerKey"]
      394 NEWCLOSURE                       R3 P10
      395 CAPTURE                          VAL R0
      396 SETTABLEKS                       R3 R0 K89 ["_captureScrollRef"]
      398 NEWCLOSURE                       R3 P11
      399 CAPTURE                          VAL R0
      400 CAPTURE                          UPVAL U12
      401 CAPTURE                          UPVAL U13
      402 CAPTURE                          UPVAL U1
      403 CAPTURE                          UPVAL U14
      404 CAPTURE                          UPVAL U8
      405 CAPTURE                          UPVAL U15
      406 SETTABLEKS                       R3 R0 K90 ["_defaultRenderScrollComponent"]
      408 NEWCLOSURE                       R3 P12
      409 CAPTURE                          VAL R0
      410 CAPTURE                          UPVAL U8
      411 SETTABLEKS                       R3 R0 K91 ["_onCellUnmount"]
      413 NEWCLOSURE                       R3 P13
      414 CAPTURE                          VAL R0
      415 SETTABLEKS                       R3 R0 K92 ["_onLayout"]
      417 NEWCLOSURE                       R3 P14
      418 CAPTURE                          VAL R0
      419 SETTABLEKS                       R3 R0 K93 ["_onLayoutEmpty"]
      421 NEWCLOSURE                       R3 P15
      422 CAPTURE                          VAL R0
      423 SETTABLEKS                       R3 R0 K94 ["_onLayoutFooter"]
      425 NEWCLOSURE                       R3 P16
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R3 R0 K95 ["_onLayoutHeader"]
      429 NEWCLOSURE                       R3 P17
      430 CAPTURE                          VAL R0
      431 SETTABLEKS                       R3 R0 K96 ["_onContentSizeChange"]
      433 NEWCLOSURE                       R3 P18
      434 CAPTURE                          VAL R0
      435 SETTABLEKS                       R3 R0 K97 ["_convertParentScrollMetrics"]
      437 NEWCLOSURE                       R3 P19
      438 CAPTURE                          VAL R0
      439 CAPTURE                          UPVAL U3
      440 CAPTURE                          UPVAL U16
      441 SETTABLEKS                       R3 R0 K98 ["_onScroll"]
      443 NEWCLOSURE                       R3 P20
      444 CAPTURE                          VAL R0
      445 CAPTURE                          UPVAL U6
      446 SETTABLEKS                       R3 R0 K99 ["_onScrollBeginDrag"]
      448 NEWCLOSURE                       R3 P21
      449 CAPTURE                          VAL R0
      450 CAPTURE                          UPVAL U3
      451 SETTABLEKS                       R3 R0 K100 ["_onScrollEndDrag"]
      453 NEWCLOSURE                       R3 P22
      454 CAPTURE                          VAL R0
      455 SETTABLEKS                       R3 R0 K101 ["_onMomentumScrollBegin"]
      457 NEWCLOSURE                       R3 P23
      458 CAPTURE                          VAL R0
      459 SETTABLEKS                       R3 R0 K102 ["_onMomentumScrollEnd"]
      461 NEWCLOSURE                       R3 P24
      462 CAPTURE                          VAL R0
      463 SETTABLEKS                       R3 R0 K103 ["_createViewToken"]
      465 NEWCLOSURE                       R3 P25
      466 CAPTURE                          VAL R0
      467 CAPTURE                          UPVAL U1
      468 SETTABLEKS                       R3 R0 K104 ["_getFrameMetricsApprox"]
      470 RETURN                           R0 0

PROTO_49:
        0 JUMPIFEQKNIL                     R1 ; [+4]
        2 GETTABLEKS                       R2 R1 K0 ["animated"]
        4 JUMP                             ; [+1]
        5 LOADB                            R2 1
        6 GETTABLEKS                       R4 R0 K1 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["getItemCount"]
       10 GETTABLEKS                       R5 R0 K1 ["props"]
       12 GETTABLEKS                       R4 R5 K3 ["data"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R0 K4 ["_getFrameMetricsApprox"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R7 R0 K1 ["props"]
       21 GETTABLEKS                       R6 R7 K5 ["inverted"]
       23 JUMPIFNOT                        R6 ; [+2]
       24 LOADN                            R5 0
       25 JUMP                             ; [+19]
       26 LOADN                            R6 0
       27 GETTABLEKS                       R10 R4 K6 ["offset"]
       29 GETTABLEKS                       R11 R4 K7 ["length"]
       31 ADD                              R9 R10 R11
       32 GETTABLEKS                       R10 R0 K8 ["_footerLength"]
       34 ADD                              R8 R9 R10
       35 GETTABLEKS                       R10 R0 K9 ["_scrollMetrics"]
       37 GETTABLEKS                       R9 R10 K10 ["visibleLength"]
       39 SUB                              R7 R8 R9
       40 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       42 GETIMPORT                        R5 K13 [math.max]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R6 R0 K14 ["_scrollRef"]
       47 JUMPIFNOTEQKNIL                  R6 ; [+2]
       49 RETURN                           R0 0
       50 GETTABLEKS                       R7 R0 K14 ["_scrollRef"]
       52 GETTABLEKS                       R6 R7 K15 ["scrollTo"]
       54 JUMPIFNOTEQKNIL                  R6 ; [+7]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R6 R7 K16 ["warn"]
       59 LOADK                            R7 K17 ["No scrollTo method provided. This may be because you have two nested VirtualizedLists with the same orientation, or because you are using a custom component that does not implement scrollTo."]
       60 CALL                             R6 1 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R7 R0 K14 ["_scrollRef"]
       64 GETTABLEKS                       R6 R7 K15 ["scrollTo"]
       66 GETTABLEKS                       R10 R0 K1 ["props"]
       68 GETTABLEKS                       R9 R10 K18 ["horizontal"]
       70 JUMPIFNOTEQKNIL                  R9 ; [+3]
       72 LOADB                            R8 0
       73 JUMP                             ; [+1]
       74 MOVE                             R8 R9
       75 JUMPIFNOT                        R8 ; [+6]
       76 DUPTABLE                         R7 K20 [{"x", "animated"}]
       77 SETTABLEKS                       R5 R7 K19 ["x"]
       79 SETTABLEKS                       R2 R7 K0 ["animated"]
       81 JUMP                             ; [+5]
       82 DUPTABLE                         R7 K22 [{"y", "animated"}]
       83 SETTABLEKS                       R5 R7 K21 ["y"]
       85 SETTABLEKS                       R2 R7 K0 ["animated"]
       87 CALL                             R6 1 0
       88 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R7 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R7 K1 ["data"]
        4 GETTABLEKS                       R7 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R7 K2 ["horizontal"]
        8 GETTABLEKS                       R7 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R7 K3 ["getItemCount"]
       12 GETTABLEKS                       R7 R0 K0 ["props"]
       14 GETTABLEKS                       R5 R7 K4 ["getItemLayout"]
       16 GETTABLEKS                       R7 R0 K0 ["props"]
       18 GETTABLEKS                       R6 R7 K5 ["onScrollToIndexFailed"]
       20 GETTABLEKS                       R7 R1 K6 ["animated"]
       22 GETTABLEKS                       R8 R1 K7 ["index"]
       24 GETTABLEKS                       R9 R1 K8 ["viewOffset"]
       26 GETTABLEKS                       R10 R1 K9 ["viewPosition"]
       28 GETUPVAL                         R11 0
       29 LOADN                            R13 1
       30 JUMPIFLE                         R13 R8 ; [+2]
       32 LOADB                            R12 0 +1
       33 LOADB                            R12 1
       34 LOADK                            R13 K10 ["scrollToIndex out of range: requested index %d but minimum is 1"]
       35 MOVE                             R15 R8
       36 NAMECALL                         R13 R13 K11 ["format"]
       38 CALL                             R13 2 -1
       39 CALL                             R11 -1 0
       40 GETUPVAL                         R11 0
       41 MOVE                             R13 R4
       42 MOVE                             R14 R2
       43 CALL                             R13 1 1
       44 LOADN                            R14 1
       45 JUMPIFLE                         R14 R13 ; [+2]
       47 LOADB                            R12 0 +1
       48 LOADB                            R12 1
       49 LOADK                            R13 K12 ["scrollToIndex out of range: item length %d but minimum is 1"]
       50 MOVE                             R15 R4
       51 MOVE                             R16 R2
       52 CALL                             R15 1 -1
       53 NAMECALL                         R13 R13 K11 ["format"]
       55 CALL                             R13 -1 -1
       56 CALL                             R11 -1 0
       57 GETUPVAL                         R11 0
       58 MOVE                             R13 R4
       59 MOVE                             R14 R2
       60 CALL                             R13 1 1
       61 JUMPIFLE                         R8 R13 ; [+2]
       63 LOADB                            R12 0 +1
       64 LOADB                            R12 1
       65 LOADK                            R13 K13 ["scrollToIndex out of range: requested index %d is out of 1 to %d"]
       66 MOVE                             R15 R8
       67 MOVE                             R16 R4
       68 MOVE                             R17 R2
       69 CALL                             R16 1 -1
       70 NAMECALL                         R13 R13 K11 ["format"]
       72 CALL                             R13 -1 -1
       73 CALL                             R11 -1 0
       74 JUMPIF                           R5 ; [+26]
       75 GETTABLEKS                       R11 R0 K14 ["_highestMeasuredFrameIndex"]
       77 JUMPIFNOTLT                      R11 R8 ; [+23]
       79 GETUPVAL                         R11 0
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R12 R13 K15 ["toJSBoolean"]
       83 MOVE                             R13 R6
       84 CALL                             R12 1 1
       85 LOADK                            R13 K16 ["scrollToIndex should be used in conjunction with getItemLayout or onScrollToIndexFailed, otherwise there is no way to know the location of offscreen indices or handle failures."]
       86 CALL                             R11 2 0
       87 MOVE                             R11 R6
       88 DUPTABLE                         R12 K19 [{"averageItemLength", "highestMeasuredFrameIndex", "index"}]
       89 GETTABLEKS                       R13 R0 K20 ["_averageCellLength"]
       91 SETTABLEKS                       R13 R12 K17 ["averageItemLength"]
       93 GETTABLEKS                       R13 R0 K14 ["_highestMeasuredFrameIndex"]
       95 SETTABLEKS                       R13 R12 K18 ["highestMeasuredFrameIndex"]
       97 SETTABLEKS                       R8 R12 K7 ["index"]
       99 CALL                             R11 1 0
      100 RETURN                           R0 0
      101 NAMECALL                         R12 R0 K21 ["getScrollRef"]
      103 CALL                             R12 1 1
      104 JUMPIFNOT                        R12 ; [+8]
      105 NAMECALL                         R13 R0 K21 ["getScrollRef"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R12 R13 K22 ["_nativeRef"]
      110 GETTABLEKS                       R11 R12 K23 ["current"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R11
      114 JUMPIFNOTEQKNIL                  R11 ; [+2]
      116 RETURN                           R0 0
      117 GETTABLEKS                       R12 R11 K24 ["AbsoluteCanvasSize"]
      119 GETTABLEKS                       R13 R11 K25 ["AbsoluteSize"]
      121 GETTABLEKS                       R14 R0 K26 ["_getFrameMetricsApprox"]
      123 MOVE                             R15 R8
      124 CALL                             R14 1 1
      125 LOADN                            R17 0
      126 GETTABLEKS                       R20 R0 K0 ["props"]
      128 GETTABLEKS                       R19 R20 K27 ["inverted"]
      130 JUMPIFNOT                        R19 ; [+35]
      131 JUMPIFNOT                        R3 ; [+3]
      132 GETTABLEKS                       R21 R12 K28 ["X"]
      134 JUMP                             ; [+2]
      135 GETTABLEKS                       R21 R12 K29 ["Y"]
      137 JUMPIFNOT                        R3 ; [+3]
      138 GETTABLEKS                       R22 R13 K28 ["X"]
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R22 R13 K29 ["Y"]
      143 SUB                              R20 R21 R22
      144 GETTABLEKS                       R21 R14 K30 ["offset"]
      146 SUB                              R19 R20 R21
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R22 R23 K15 ["toJSBoolean"]
      150 MOVE                             R23 R10
      151 CALL                             R22 1 1
      152 JUMPIFNOT                        R22 ; [+2]
      153 MOVE                             R21 R10
      154 JUMPIF                           R21 ; [+1]
      155 LOADN                            R21 0
      156 GETTABLEKS                       R24 R0 K31 ["_scrollMetrics"]
      158 GETTABLEKS                       R23 R24 K32 ["visibleLength"]
      160 GETTABLEKS                       R24 R14 K33 ["length"]
      162 SUB                              R22 R23 R24
      163 MUL                              R20 R21 R22
      164 SUB                              R18 R19 R20
      165 JUMP                             ; [+20]
      166 GETTABLEKS                       R19 R14 K30 ["offset"]
      168 GETUPVAL                         R23 1
      169 GETTABLEKS                       R22 R23 K15 ["toJSBoolean"]
      171 MOVE                             R23 R10
      172 CALL                             R22 1 1
      173 JUMPIFNOT                        R22 ; [+2]
      174 MOVE                             R21 R10
      175 JUMPIF                           R21 ; [+1]
      176 LOADN                            R21 0
      177 GETTABLEKS                       R24 R0 K31 ["_scrollMetrics"]
      179 GETTABLEKS                       R23 R24 K32 ["visibleLength"]
      181 GETTABLEKS                       R24 R14 K33 ["length"]
      183 SUB                              R22 R23 R24
      184 MUL                              R20 R21 R22
      185 SUB                              R18 R19 R20
      186 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      188 GETIMPORT                        R16 K36 [math.max]
      190 CALL                             R16 2 1
      191 GETUPVAL                         R19 1
      192 GETTABLEKS                       R18 R19 K15 ["toJSBoolean"]
      194 MOVE                             R19 R9
      195 CALL                             R18 1 1
      196 JUMPIFNOT                        R18 ; [+2]
      197 MOVE                             R17 R9
      198 JUMPIF                           R17 ; [+1]
      199 LOADN                            R17 0
      200 SUB                              R15 R16 R17
      201 GETTABLEKS                       R16 R0 K37 ["_scrollRef"]
      203 JUMPIFNOTEQKNIL                  R16 ; [+2]
      205 RETURN                           R0 0
      206 GETTABLEKS                       R17 R0 K37 ["_scrollRef"]
      208 GETTABLEKS                       R16 R17 K38 ["scrollTo"]
      210 JUMPIFNOTEQKNIL                  R16 ; [+7]
      212 GETUPVAL                         R17 2
      213 GETTABLEKS                       R16 R17 K39 ["warn"]
      215 LOADK                            R17 K40 ["No scrollTo method provided. This may be because you have two nested VirtualizedLists with the same orientation, or because you are using a custom component that does not implement scrollTo."]
      216 CALL                             R16 1 0
      217 RETURN                           R0 0
      218 GETTABLEKS                       R17 R0 K37 ["_scrollRef"]
      220 GETTABLEKS                       R16 R17 K38 ["scrollTo"]
      222 JUMPIFNOT                        R3 ; [+6]
      223 DUPTABLE                         R17 K42 [{"x", "animated"}]
      224 SETTABLEKS                       R15 R17 K41 ["x"]
      226 SETTABLEKS                       R7 R17 K6 ["animated"]
      228 JUMP                             ; [+5]
      229 DUPTABLE                         R17 K44 [{"y", "animated"}]
      230 SETTABLEKS                       R15 R17 K43 ["y"]
      232 SETTABLEKS                       R7 R17 K6 ["animated"]
      234 CALL                             R16 1 0
      235 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R2 R1 K0 ["item"]
        2 GETTABLEKS                       R6 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R6 K2 ["data"]
        6 GETTABLEKS                       R6 R0 K1 ["props"]
        8 GETTABLEKS                       R4 R6 K3 ["getItem"]
       10 GETTABLEKS                       R6 R0 K1 ["props"]
       12 GETTABLEKS                       R5 R6 K4 ["getItemCount"]
       14 MOVE                             R6 R5
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 LOADN                            R7 1
       18 JUMPIFNOTLE                      R7 R6 ; [+23]
       20 MOVE                             R8 R4
       21 MOVE                             R9 R3
       22 MOVE                             R10 R7
       23 CALL                             R8 2 1
       24 JUMPIFNOTEQ                      R8 R2 ; [+15]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R10 R11 K5 ["assign"]
       29 NEWTABLE                         R11 0 0
       31 MOVE                             R12 R1
       32 DUPTABLE                         R13 K7 [{"index"}]
       33 SETTABLEKS                       R7 R13 K6 ["index"]
       35 CALL                             R10 3 -1
       36 NAMECALL                         R8 R0 K8 ["scrollToIndex"]
       38 CALL                             R8 -1 0
       39 RETURN                           R0 0
       40 ADDK                             R7 R7 K9 [1]
       41 JUMPBACK                         ; [-24]
       42 RETURN                           R0 0

PROTO_52:
        0 NAMECALL                         R3 R0 K0 ["getScrollRef"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+8]
        4 NAMECALL                         R4 R0 K0 ["getScrollRef"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K1 ["_nativeRef"]
        9 GETTABLEKS                       R2 R3 K2 ["current"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K3 ["animated"]
       18 GETTABLEKS                       R4 R1 K4 ["offset"]
       20 GETTABLEKS                       R5 R0 K5 ["_scrollRef"]
       22 JUMPIFNOTEQKNIL                  R5 ; [+2]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R6 R0 K6 ["props"]
       27 GETTABLEKS                       R5 R6 K7 ["inverted"]
       29 JUMPIFNOT                        R5 ; [+26]
       30 GETTABLEKS                       R5 R2 K8 ["AbsoluteCanvasSize"]
       32 GETTABLEKS                       R6 R2 K9 ["AbsoluteSize"]
       34 GETTABLEKS                       R10 R0 K6 ["props"]
       36 GETTABLEKS                       R9 R10 K10 ["horizontal"]
       38 JUMPIFNOT                        R9 ; [+3]
       39 GETTABLEKS                       R8 R5 K11 ["X"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R8 R5 K12 ["Y"]
       44 SUB                              R7 R8 R4
       45 GETTABLEKS                       R10 R0 K6 ["props"]
       47 GETTABLEKS                       R9 R10 K10 ["horizontal"]
       49 JUMPIFNOT                        R9 ; [+3]
       50 GETTABLEKS                       R8 R6 K11 ["X"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R8 R6 K12 ["Y"]
       55 SUB                              R4 R7 R8
       56 GETTABLEKS                       R6 R0 K5 ["_scrollRef"]
       58 GETTABLEKS                       R5 R6 K13 ["scrollTo"]
       60 JUMPIFNOTEQKNIL                  R5 ; [+7]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R5 R6 K14 ["warn"]
       65 LOADK                            R6 K15 ["No scrollTo method provided. This may be because you have two nested VirtualizedLists with the same orientation, or because you are using a custom component that does not implement scrollTo."]
       66 CALL                             R5 1 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R6 R0 K5 ["_scrollRef"]
       70 GETTABLEKS                       R5 R6 K13 ["scrollTo"]
       72 GETTABLEKS                       R9 R0 K6 ["props"]
       74 GETTABLEKS                       R8 R9 K10 ["horizontal"]
       76 JUMPIFNOTEQKNIL                  R8 ; [+3]
       78 LOADB                            R7 0
       79 JUMP                             ; [+1]
       80 MOVE                             R7 R8
       81 JUMPIFNOT                        R7 ; [+6]
       82 DUPTABLE                         R6 K17 [{"x", "animated"}]
       83 SETTABLEKS                       R4 R6 K16 ["x"]
       85 SETTABLEKS                       R3 R6 K3 ["animated"]
       87 JUMP                             ; [+5]
       88 DUPTABLE                         R6 K19 [{"y", "animated"}]
       89 SETTABLEKS                       R4 R6 K18 ["y"]
       91 SETTABLEKS                       R3 R6 K3 ["animated"]
       93 CALL                             R5 1 0
       94 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["ref"]
        5 NAMECALL                         R1 R1 K1 ["recordInteraction"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["viewabilityHelper"]
        2 NAMECALL                         R1 R1 K1 ["recordInteraction"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["_nestedChildLists"]
        2 DUPCLOSURE                       R3 K1 [PROTO_53]
        3 NAMECALL                         R1 R1 K2 ["forEach"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["forEach"]
        9 GETTABLEKS                       R2 R0 K3 ["_viewabilityTuples"]
       11 DUPCLOSURE                       R3 K4 [PROTO_54]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R4 R0 K5 ["props"]
       15 GETTABLEKS                       R3 R4 K6 ["data"]
       17 NAMECALL                         R1 R0 K7 ["_updateViewableItems"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_56:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
        7 NAMECALL                         R1 R1 K1 ["flashScrollIndicators"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["_scrollRef"]
        5 GETTABLEKS                       R1 R2 K1 ["getScrollResponder"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
       10 NAMECALL                         R1 R1 K1 ["getScrollResponder"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["_scrollRef"]
        5 GETTABLEKS                       R1 R2 K1 ["getScrollableNode"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
       10 NAMECALL                         R1 R1 K1 ["getScrollableNode"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K2 ["findNodeHandle"]
       17 GETTABLEKS                       R2 R0 K0 ["_scrollRef"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_59:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["_scrollRef"]
        5 GETTABLEKS                       R1 R2 K1 ["getScrollRef"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
       10 NAMECALL                         R1 R1 K1 ["getScrollRef"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETTABLEKS                       R1 R0 K0 ["_scrollRef"]
       16 RETURN                           R1 1

PROTO_60:
        0 GETTABLEKS                       R2 R0 K0 ["_scrollRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_scrollRef"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["setNativeProps"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_61:
        0 GETTABLEKS                       R2 R0 K0 ["context"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R3 R0 K0 ["context"]
        5 GETTABLEKS                       R2 R3 K1 ["cellKey"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R2 R0 K0 ["context"]
       10 GETTABLEKS                       R1 R2 K1 ["cellKey"]
       12 RETURN                           R1 1
       13 LOADK                            R1 K2 ["rootList"]
       14 RETURN                           R1 1

PROTO_62:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R0 K1 ["props"]
        5 GETTABLEKS                       R3 R4 K2 ["listKey"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R2 R0 K1 ["props"]
       11 GETTABLEKS                       R1 R2 K2 ["listKey"]
       13 RETURN                           R1 1
       14 NAMECALL                         R1 R0 K3 ["_getCellKey"]
       16 CALL                             R1 1 1
       17 RETURN                           R1 1

PROTO_63:
        0 DUPTABLE                         R1 K4 [{"listKey", "cellKey", "horizontal", "parent"}]
        1 NAMECALL                         R2 R0 K5 ["_getListKey"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["listKey"]
        6 NAMECALL                         R2 R0 K6 ["_getCellKey"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["cellKey"]
       11 GETTABLEKS                       R4 R0 K7 ["props"]
       13 GETTABLEKS                       R3 R4 K2 ["horizontal"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+3]
       17 LOADB                            R2 0
       18 JUMP                             ; [+1]
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R2 R1 K2 ["horizontal"]
       22 GETTABLEKS                       R3 R0 K8 ["context"]
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETTABLEKS                       R3 R0 K8 ["context"]
       27 GETTABLEKS                       R2 R3 K9 ["debugInfo"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K3 ["parent"]
       33 RETURN                           R1 1

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["_hasMore"]
        2 RETURN                           R1 1

PROTO_65:
        0 NAMECALL                         R1 R0 K0 ["_isNestedWithSameOrientation"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETTABLEKS                       R2 R0 K1 ["context"]
        6 GETTABLEKS                       R1 R2 K2 ["registerAsNestedChild"]
        8 DUPTABLE                         R2 K7 [{"cellKey", "key", "ref", "parentDebugInfo"}]
        9 NAMECALL                         R3 R0 K8 ["_getCellKey"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K3 ["cellKey"]
       14 NAMECALL                         R3 R0 K9 ["_getListKey"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K4 ["key"]
       19 SETTABLEKS                       R0 R2 K5 ["ref"]
       21 GETTABLEKS                       R4 R0 K1 ["context"]
       23 GETTABLEKS                       R3 R4 K10 ["debugInfo"]
       25 SETTABLEKS                       R3 R2 K6 ["parentDebugInfo"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["viewabilityHelper"]
        2 NAMECALL                         R1 R1 K1 ["dispose"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_67:
        0 NAMECALL                         R1 R0 K0 ["_isNestedWithSameOrientation"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+30]
        4 GETTABLEKS                       R2 R0 K1 ["context"]
        6 GETTABLEKS                       R1 R2 K2 ["unregisterAsNestedChild"]
        8 DUPTABLE                         R2 K5 [{"key", "state"}]
        9 NAMECALL                         R3 R0 K6 ["_getListKey"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K3 ["key"]
       14 DUPTABLE                         R3 K10 [{"first", "last", "frames"}]
       15 GETTABLEKS                       R5 R0 K4 ["state"]
       17 GETTABLEKS                       R4 R5 K7 ["first"]
       19 SETTABLEKS                       R4 R3 K7 ["first"]
       21 GETTABLEKS                       R5 R0 K4 ["state"]
       23 GETTABLEKS                       R4 R5 K8 ["last"]
       25 SETTABLEKS                       R4 R3 K8 ["last"]
       27 GETTABLEKS                       R4 R0 K11 ["_frames"]
       29 SETTABLEKS                       R4 R3 K9 ["frames"]
       31 SETTABLEKS                       R3 R2 K4 ["state"]
       33 CALL                             R1 1 0
       34 LOADNIL                          R3
       35 NAMECALL                         R1 R0 K12 ["_updateViewableItems"]
       37 CALL                             R1 2 0
       38 GETTABLEKS                       R1 R0 K13 ["_updateCellsToRenderBatcher"]
       40 DUPTABLE                         R3 K15 [{"abort"}]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K14 ["abort"]
       44 NAMECALL                         R1 R1 K16 ["dispose"]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R1 R2 K17 ["forEach"]
       50 GETTABLEKS                       R2 R0 K18 ["_viewabilityTuples"]
       52 DUPCLOSURE                       R3 K19 [PROTO_66]
       53 CALL                             R1 2 0
       54 GETTABLEKS                       R1 R0 K20 ["_fillRateHelper"]
       56 NAMECALL                         R1 R1 K21 ["deactivateAndFlush"]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_68:
        0 LOADNIL                          R2
        1 LOADN                            R5 1
        2 LENGTH                           R3 R0
        3 LOADN                            R4 1
        4 FORNPREP                         R3
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R7 R0 R5
        7 MOVE                             R8 R1
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+2]
       10 MOVE                             R2 R5
       11 JUMP                             ; [+1]
       12 FORNLOOP                         R3
       13 JUMPIFNOTEQKNIL                  R2 ; [+3]
       15 LOADN                            R3 1
       16 RETURN                           R3 1
       17 RETURN                           R2 1

PROTO_69:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R3 R0 K1 ["getItemCount"]
        4 GETTABLEKS                       R4 R0 K2 ["maintainVisibleContentPosition"]
        6 GETTABLEKS                       R5 R1 K3 ["firstItemTracked"]
        8 GETTABLEKS                       R6 R1 K4 ["scrollPositionDelta"]
       10 GETTABLEKS                       R8 R0 K5 ["compareItemData"]
       12 JUMPIFNOTEQKNIL                  R8 ; [+3]
       14 DUPCLOSURE                       R7 K6 [PROTO_10]
       15 JUMP                             ; [+1]
       16 MOVE                             R7 R8
       17 JUMPIFNOT                        R2 ; [+12]
       18 MOVE                             R9 R3
       19 MOVE                             R10 R2
       20 CALL                             R9 1 1
       21 LOADN                            R10 0
       22 JUMPIFNOTLT                      R10 R9 ; [+7]
       24 GETTABLEKS                       R8 R0 K7 ["getItem"]
       26 MOVE                             R9 R2
       27 LOADN                            R10 1
       28 CALL                             R8 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R8
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R7
       33 JUMPIFNOT                        R4 ; [+18]
       34 JUMPIFNOTEQKN                    R6 K8 [0] ; [+17]
       36 JUMPIFEQKNIL                     R5 ; [+15]
       38 JUMPIFEQKNIL                     R8 ; [+13]
       40 MOVE                             R10 R7
       41 MOVE                             R11 R5
       42 MOVE                             R12 R8
       43 CALL                             R10 2 1
       44 JUMPIFNOT                        R10 ; [+2]
       45 LOADN                            R6 0
       46 JUMP                             ; [+5]
       47 MOVE                             R10 R9
       48 MOVE                             R11 R2
       49 MOVE                             R12 R5
       50 CALL                             R10 2 1
       51 SUBK                             R6 R10 K9 [1]
       52 MOVE                             R10 R3
       53 MOVE                             R11 R2
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R12 R0 K10 ["maxToRenderPerBatch"]
       57 JUMPIFNOTEQKNIL                  R12 ; [+3]
       59 LOADN                            R11 10
       60 JUMP                             ; [+1]
       61 MOVE                             R11 R12
       62 LOADN                            R13 1
       63 GETTABLEKS                       R15 R1 K11 ["first"]
       65 SUB                              R16 R10 R11
       66 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
       68 GETIMPORT                        R14 K14 [math.min]
       70 CALL                             R14 2 1
       71 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       73 GETIMPORT                        R12 K16 [math.max]
       75 CALL                             R12 2 1
       76 LOADN                            R13 0
       77 JUMPIFNOTLT                      R13 R10 ; [+10]
       79 ADD                              R13 R12 R6
       80 JUMPIFNOTLT                      R10 R13 ; [+7]
       82 LOADN                            R6 0
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R13 R14 K17 ["warn"]
       86 LOADK                            R14 K18 ["WARNING: maintainVisibleContentPosition failed because scrollPositionDelta was out of bounds. This could indicate that items in `data` are getting removed, items are getting added to the middle of `data`, or a different `data` array is getting passed in. Consider changing the `key` prop of the List if the `data` prop is significantly altered."]
       87 CALL                             R13 1 0
       88 LOADN                            R13 0
       89 JUMPIFNOTLT                      R13 R6 ; [+21]
       91 LOADN                            R15 1
       92 FASTCALL2                        MATH_MIN R6 R10 ; [+5]
       94 MOVE                             R17 R6
       95 MOVE                             R18 R10
       96 GETIMPORT                        R16 K14 [math.min]
       98 CALL                             R16 2 1
       99 MOVE                             R13 R16
      100 LOADN                            R14 1
      101 FORNPREP                         R13
      102 GETTABLEKS                       R16 R0 K7 ["getItem"]
      104 MOVE                             R17 R2
      105 MOVE                             R18 R15
      106 CALL                             R16 2 1
      107 LOADB                            R17 1
      108 SETTABLEKS                       R17 R16 K19 ["shouldResizeOnMount"]
      110 FORNLOOP                         R13
      111 DUPTABLE                         R13 K21 [{"first", "last", "firstItemTracked", "scrollPositionDelta"}]
      112 SETTABLEKS                       R12 R13 K11 ["first"]
      114 LOADN                            R15 1
      115 GETTABLEKS                       R17 R1 K20 ["last"]
      117 FASTCALL2                        MATH_MIN R17 R10 ; [+4]
      119 MOVE                             R18 R10
      120 GETIMPORT                        R16 K14 [math.min]
      122 CALL                             R16 2 1
      123 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      125 GETIMPORT                        R14 K16 [math.max]
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K20 ["last"]
      130 MOVE                             R14 R8
      131 JUMPIF                           R14 ; [+3]
      132 GETUPVAL                         R15 1
      133 GETTABLEKS                       R14 R15 K22 ["None"]
      135 SETTABLEKS                       R14 R13 K3 ["firstItemTracked"]
      137 SETTABLEKS                       R6 R13 K4 ["scrollPositionDelta"]
      139 RETURN                           R13 1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["_onCellLayout"]
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_71:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_cellRefs"]
        3 GETUPVAL                         R3 1
        4 FASTCALL1                        TOSTRING R3 ; [+2]
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 SETTABLE                         R0 R1 R2
        9 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R13 R0 K0 ["props"]
        2 GETTABLEKS                       R7 R13 K1 ["CellRendererComponent"]
        4 GETTABLEKS                       R13 R0 K0 ["props"]
        6 GETTABLEKS                       R8 R13 K2 ["ItemSeparatorComponent"]
        8 GETTABLEKS                       R13 R0 K0 ["props"]
       10 GETTABLEKS                       R9 R13 K3 ["data"]
       12 GETTABLEKS                       R13 R0 K0 ["props"]
       14 GETTABLEKS                       R10 R13 K4 ["getItem"]
       16 GETTABLEKS                       R13 R0 K0 ["props"]
       18 GETTABLEKS                       R11 R13 K5 ["getItemCount"]
       20 GETTABLEKS                       R13 R0 K0 ["props"]
       22 GETTABLEKS                       R12 R13 K6 ["horizontal"]
       24 GETTABLEKS                       R15 R0 K0 ["props"]
       26 GETTABLEKS                       R14 R15 K7 ["ListHeaderComponent"]
       28 JUMPIFNOT                        R14 ; [+2]
       29 LOADN                            R13 1
       30 JUMP                             ; [+1]
       31 LOADN                            R13 0
       32 MOVE                             R14 R11
       33 MOVE                             R15 R9
       34 CALL                             R14 1 1
       35 LOADNIL                          R15
       36 FASTCALL2                        MATH_MIN R14 R5 ; [+5]
       38 MOVE                             R17 R14
       39 MOVE                             R18 R5
       40 GETIMPORT                        R16 K10 [math.min]
       42 CALL                             R16 2 1
       43 MOVE                             R5 R16
       44 MOVE                             R16 R4
       45 JUMPIFNOTLE                      R16 R5 ; [+94]
       47 MOVE                             R17 R10
       48 MOVE                             R18 R9
       49 MOVE                             R19 R16
       50 CALL                             R17 2 1
       51 MOVE                             R20 R17
       52 MOVE                             R21 R16
       53 NAMECALL                         R18 R0 K11 ["_keyExtractor"]
       55 CALL                             R18 3 1
       56 GETTABLEKS                       R19 R0 K12 ["_indicesToKeys"]
       58 MOVE                             R21 R16
       59 MOVE                             R22 R18
       60 NAMECALL                         R19 R19 K13 ["set"]
       62 CALL                             R19 3 0
       63 ADD                              R21 R16 R13
       64 NAMECALL                         R19 R3 K14 ["has"]
       66 CALL                             R19 2 1
       67 JUMPIFNOT                        R19 ; [+7]
       68 LENGTH                           R21 R1
       69 FASTCALL2                        TABLE_INSERT R2 R21 ; [+4]
       71 MOVE                             R20 R2
       72 GETIMPORT                        R19 K17 [table.insert]
       74 CALL                             R19 2 0
       75 MOVE                             R19 R16
       76 MOVE                             R21 R1
       77 GETUPVAL                         R23 0
       78 GETTABLEKS                       R22 R23 K18 ["createElement"]
       80 GETUPVAL                         R23 1
       81 DUPTABLE                         R24 K31 [{"CellRendererComponent", "ItemSeparatorComponent", "cellKey", "fillRateHelper", "horizontal", "index", "inversionStyle", "item", "key", "prevCellKey", "onUpdateSeparators", "onLayout", "onUnmount", "parentProps", "ref"}]
       82 SETTABLEKS                       R7 R24 K1 ["CellRendererComponent"]
       84 JUMPIFNOTLT                      R16 R14 ; [+3]
       86 MOVE                             R25 R8
       87 JUMP                             ; [+1]
       88 LOADNIL                          R25
       89 SETTABLEKS                       R25 R24 K2 ["ItemSeparatorComponent"]
       91 SETTABLEKS                       R18 R24 K19 ["cellKey"]
       93 GETTABLEKS                       R25 R0 K32 ["_fillRateHelper"]
       95 SETTABLEKS                       R25 R24 K20 ["fillRateHelper"]
       97 SETTABLEKS                       R12 R24 K6 ["horizontal"]
       99 SETTABLEKS                       R16 R24 K21 ["index"]
      101 SETTABLEKS                       R6 R24 K22 ["inversionStyle"]
      103 SETTABLEKS                       R17 R24 K23 ["item"]
      105 SETTABLEKS                       R18 R24 K24 ["key"]
      107 SETTABLEKS                       R15 R24 K25 ["prevCellKey"]
      109 GETTABLEKS                       R25 R0 K33 ["_onUpdateSeparators"]
      111 SETTABLEKS                       R25 R24 K26 ["onUpdateSeparators"]
      113 NEWCLOSURE                       R25 P0
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R19
      117 SETTABLEKS                       R25 R24 K27 ["onLayout"]
      119 GETTABLEKS                       R25 R0 K34 ["_onCellUnmount"]
      121 SETTABLEKS                       R25 R24 K28 ["onUnmount"]
      123 GETTABLEKS                       R25 R0 K0 ["props"]
      125 SETTABLEKS                       R25 R24 K29 ["parentProps"]
      127 NEWCLOSURE                       R25 P1
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R18
      130 SETTABLEKS                       R25 R24 K30 ["ref"]
      132 CALL                             R22 2 -1
      133 FASTCALL                         TABLE_INSERT ; [+2]
      134 GETIMPORT                        R20 K17 [table.insert]
      136 CALL                             R20 -1 0
      137 MOVE                             R15 R18
      138 ADDK                             R16 R16 K35 [1]
      139 JUMPBACK                         ; [-95]
      140 RETURN                           R0 0

PROTO_73:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["disableVirtualization"]
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K1 ["disableVirtualization"]
       10 RETURN                           R1 1
       11 LOADB                            R1 0
       12 RETURN                           R1 1

PROTO_74:
        0 GETTABLEKS                       R1 R0 K0 ["context"]
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R1 ; [+20]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["toJSBoolean"]
        8 GETTABLEKS                       R4 R1 K2 ["horizontal"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R6 R0 K3 ["props"]
       13 GETTABLEKS                       R5 R6 K2 ["horizontal"]
       15 JUMPIFNOTEQKNIL                  R5 ; [+3]
       17 LOADB                            R4 0
       18 JUMP                             ; [+1]
       19 MOVE                             R4 R5
       20 JUMPIFEQ                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_75:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["keyExtractor"]
        4 JUMPIFEQKNIL                     R3 ; [+9]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K1 ["keyExtractor"]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 FASTCALL1                        TOSTRING R2 ; [+3]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K3 [tostring]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQ                      R3 R4 ; [+21]
       25 LOADB                            R4 1
       26 SETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R1 K4 ["type"]
       29 JUMPIFEQKNIL                     R4 ; [+15]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K5 ["toJSBoolean"]
       34 GETTABLEKS                       R6 R1 K4 ["type"]
       36 GETTABLEKS                       R5 R6 K6 ["displayName"]
       38 CALL                             R4 1 1
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETTABLEKS                       R5 R1 K4 ["type"]
       42 GETTABLEKS                       R4 R5 K6 ["displayName"]
       44 SETUPVAL                         R4 3
       45 RETURN                           R3 1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_onLayoutEmpty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["onLayout"]
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K1 ["props"]
       14 GETTABLEKS                       R1 R2 K2 ["onLayout"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_77:
        0 JUMPIFEQKNIL                     R0 ; [+39]
        2 GETTABLEKS                       R2 R0 K0 ["horizontal"]
        4 NOT                              R1 R2
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["props"]
        8 GETTABLEKS                       R4 R5 K0 ["horizontal"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+3]
       12 LOADB                            R3 0
       13 JUMP                             ; [+1]
       14 MOVE                             R3 R4
       15 NOT                              R2 R3
       16 JUMPIFNOTEQ                      R1 R2 ; [+23]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K2 ["_hasWarned"]
       21 GETTABLEKS                       R1 R2 K3 ["nesting"]
       23 JUMPIF                           R1 ; [+16]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K4 ["context"]
       27 JUMPIFNOTEQKNIL                  R1 ; [+12]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R1 R2 K5 ["error"]
       32 LOADK                            R2 K6 ["VirtualizedLists should never be nested inside plain ScrollViews with the same orientation because it can break windowing and other functionality - use another VirtualizedList-backed container instead."]
       33 CALL                             R1 1 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R1 R2 K2 ["_hasWarned"]
       37 LOADB                            R2 1
       38 SETTABLEKS                       R2 R1 K3 ["nesting"]
       40 GETUPVAL                         R1 2
       41 RETURN                           R1 1

PROTO_78:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R3 R0 K3 ["props"]
        8 GETTABLEKS                       R2 R3 K4 ["contentContainerStyle"]
       10 CALL                             R1 1 1
       11 JUMPIFEQKNIL                     R1 ; [+10]
       13 GETTABLEKS                       R2 R1 K5 ["flexWrap"]
       15 JUMPIFNOTEQKS                    R2 K6 ["wrap"] ; [+6]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K7 ["warn"]
       20 LOADK                            R3 K8 ["`flexWrap: `wrap`` is not supported with the `VirtualizedList` components.Consider using `numColumns` with `FlatList` instead."]
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R4 R0 K3 ["props"]
       24 GETTABLEKS                       R1 R4 K9 ["ListEmptyComponent"]
       26 GETTABLEKS                       R4 R0 K3 ["props"]
       28 GETTABLEKS                       R2 R4 K10 ["ListFooterComponent"]
       30 GETTABLEKS                       R4 R0 K3 ["props"]
       32 GETTABLEKS                       R3 R4 K11 ["ListHeaderComponent"]
       34 GETTABLEKS                       R6 R0 K3 ["props"]
       36 GETTABLEKS                       R4 R6 K12 ["data"]
       38 GETTABLEKS                       R6 R0 K3 ["props"]
       40 GETTABLEKS                       R5 R6 K13 ["horizontal"]
       42 NAMECALL                         R6 R0 K14 ["_isVirtualizationDisabled"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R9 R0 K3 ["props"]
       47 GETTABLEKS                       R8 R9 K15 ["inverted"]
       49 JUMPIFNOT                        R8 ; [+18]
       50 GETTABLEKS                       R10 R0 K3 ["props"]
       52 GETTABLEKS                       R9 R10 K13 ["horizontal"]
       54 JUMPIFNOTEQKNIL                  R9 ; [+3]
       56 LOADB                            R8 0
       57 JUMP                             ; [+1]
       58 MOVE                             R8 R9
       59 JUMPIFNOT                        R8 ; [+4]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R7 R8 K16 ["horizontallyInverted"]
       63 JUMP                             ; [+5]
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R7 R8 K17 ["verticallyInverted"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R7
       69 NEWTABLE                         R8 0 0
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R9 R10 K18 ["new"]
       74 GETTABLEKS                       R11 R0 K3 ["props"]
       76 GETTABLEKS                       R10 R11 K19 ["stickyHeaderIndices"]
       78 CALL                             R9 1 1
       79 NEWTABLE                         R10 0 0
       81 JUMPIFNOT                        R3 ; [+112]
       82 LOADN                            R13 0
       83 NAMECALL                         R11 R9 K20 ["has"]
       85 CALL                             R11 2 1
       86 JUMPIFNOT                        R11 ; [+7]
       87 FASTCALL2K                       TABLE_INSERT R10 K21 ; [+5]
       89 MOVE                             R12 R10
       90 LOADK                            R13 K21 [0]
       91 GETIMPORT                        R11 K24 [table.insert]
       93 CALL                             R11 2 0
       94 GETUPVAL                         R13 4
       95 GETTABLEKS                       R12 R13 K25 ["isValidElement"]
       97 MOVE                             R13 R3
       98 CALL                             R12 1 1
       99 JUMPIFNOT                        R12 ; [+2]
      100 MOVE                             R11 R3
      101 JUMP                             ; [+6]
      102 GETUPVAL                         R12 4
      103 GETTABLEKS                       R11 R12 K26 ["createElement"]
      105 MOVE                             R12 R3
      106 LOADNIL                          R13
      107 CALL                             R11 2 1
      108 MOVE                             R13 R8
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R14 R15 K26 ["createElement"]
      112 GETUPVAL                         R15 5
      113 DUPTABLE                         R16 K30 [{"cellKey", "key", "Name"}]
      114 NAMECALL                         R20 R0 K31 ["_getCellKey"]
      116 CALL                             R20 1 1
      117 MOVE                             R18 R20
      118 LOADK                            R19 K32 ["-header"]
      119 CONCAT                           R17 R18 R19
      120 SETTABLEKS                       R17 R16 K27 ["cellKey"]
      122 LOADK                            R17 K33 ["$header"]
      123 SETTABLEKS                       R17 R16 K28 ["key"]
      125 LOADK                            R17 K33 ["$header"]
      126 SETTABLEKS                       R17 R16 K29 ["Name"]
      128 GETUPVAL                         R18 4
      129 GETTABLEKS                       R17 R18 K26 ["createElement"]
      131 GETUPVAL                         R18 6
      132 DUPTABLE                         R19 K39 [{"Name", "onLayout", "style", "LayoutOrder", "AutomaticSize", "Size"}]
      133 LOADK                            R20 K11 ["ListHeaderComponent"]
      134 SETTABLEKS                       R20 R19 K29 ["Name"]
      136 GETTABLEKS                       R20 R0 K40 ["_onLayoutHeader"]
      138 SETTABLEKS                       R20 R19 K34 ["onLayout"]
      140 GETUPVAL                         R21 7
      141 GETTABLEKS                       R20 R21 K41 ["compose"]
      143 MOVE                             R21 R7
      144 GETTABLEKS                       R23 R0 K3 ["props"]
      146 GETTABLEKS                       R22 R23 K42 ["ListHeaderComponentStyle"]
      148 CALL                             R20 2 1
      149 SETTABLEKS                       R20 R19 K35 ["style"]
      151 GETTABLEKS                       R22 R0 K3 ["props"]
      153 GETTABLEKS                       R21 R22 K15 ["inverted"]
      155 JUMPIFNOT                        R21 ; [+2]
      156 LOADK                            R20 K43 [999999998]
      157 JUMP                             ; [+1]
      158 LOADK                            R20 K44 [-999999998]
      159 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      161 JUMPIFNOT                        R5 ; [+3]
      162 GETIMPORT                        R20 K47 [Enum.AutomaticSize.X]
      164 JUMP                             ; [+2]
      165 GETIMPORT                        R20 K49 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R20 R19 K37 ["AutomaticSize"]
      169 JUMPIFNOT                        R5 ; [+8]
      170 GETIMPORT                        R20 K51 [UDim2.new]
      172 LOADN                            R21 0
      173 LOADN                            R22 0
      174 LOADN                            R23 1
      175 LOADN                            R24 0
      176 CALL                             R20 4 1
      177 JUMP                             ; [+7]
      178 GETIMPORT                        R20 K51 [UDim2.new]
      180 LOADN                            R21 1
      181 LOADN                            R22 0
      182 LOADN                            R23 0
      183 LOADN                            R24 0
      184 CALL                             R20 4 1
      185 SETTABLEKS                       R20 R19 K38 ["Size"]
      187 MOVE                             R20 R11
      188 CALL                             R17 3 -1
      189 CALL                             R14 -1 -1
      190 FASTCALL                         TABLE_INSERT ; [+2]
      191 GETIMPORT                        R12 K24 [table.insert]
      193 CALL                             R12 -1 0
      194 GETTABLEKS                       R12 R0 K3 ["props"]
      196 GETTABLEKS                       R11 R12 K52 ["getItemCount"]
      198 MOVE                             R12 R4
      199 CALL                             R11 1 1
      200 LOADN                            R12 0
      201 JUMPIFNOTLT                      R12 R11 ; [+402]
      203 LOADB                            R12 0
      204 SETUPVAL                         R12 8
      205 LOADK                            R12 K53 [""]
      206 SETUPVAL                         R12 9
      207 GETTABLEKS                       R12 R0 K54 ["_getSpacerKey"]
      209 NOT                              R13 R5
      210 CALL                             R12 1 1
      211 GETTABLEKS                       R17 R0 K3 ["props"]
      213 GETTABLEKS                       R16 R17 K56 ["initialScrollIndex"]
      215 LOADB                            R15 0
      216 JUMPIFEQKNIL                     R16 ; [+5]
      218 JUMPIFNOTEQKN                    R16 K55 [1] ; [+2]
      220 LOADB                            R15 0 +1
      221 LOADB                            R15 1
      222 JUMPIFNOT                        R15 ; [+2]
      223 LOADN                            R14 255
      224 JUMP                             ; [+10]
      225 GETTABLEKS                       R17 R0 K3 ["props"]
      227 GETTABLEKS                       R16 R17 K57 ["initialNumToRender"]
      229 JUMPIFNOTEQKNIL                  R16 ; [+3]
      231 LOADN                            R15 10
      232 JUMP                             ; [+1]
      233 MOVE                             R15 R16
      234 SUBK                             R14 R15 K55 [1]
      235 ADDK                             R13 R14 K55 [1]
      236 GETTABLEKS                       R17 R0 K58 ["state"]
      238 GETTABLEKS                       R14 R17 K59 ["first"]
      240 GETTABLEKS                       R17 R0 K58 ["state"]
      242 GETTABLEKS                       R15 R17 K60 ["last"]
      244 GETTABLEKS                       R17 R0 K58 ["state"]
      246 GETTABLEKS                       R16 R17 K61 ["scrollPositionDelta"]
      248 LOADN                            R17 0
      249 JUMPIFNOTLT                      R17 R16 ; [+3]
      251 ADD                              R14 R14 R16
      252 ADD                              R15 R15 R16
      253 MOVE                             R19 R8
      254 MOVE                             R20 R10
      255 MOVE                             R21 R9
      256 LOADN                            R22 1
      257 MOVE                             R23 R13
      258 MOVE                             R24 R7
      259 NAMECALL                         R17 R0 K62 ["_pushCells"]
      261 CALL                             R17 7 0
      262 ADDK                             R18 R13 K55 [1]
      263 FASTCALL2                        MATH_MAX R18 R14 ; [+4]
      265 MOVE                             R19 R14
      266 GETIMPORT                        R17 K65 [math.max]
      268 CALL                             R17 2 1
      269 JUMPIF                           R6 ; [+220]
      270 ADDK                             R18 R13 K55 [1]
      271 JUMPIFNOTLT                      R18 R14 ; [+218]
      273 LOADB                            R18 0
      274 GETTABLEKS                       R19 R9 K66 ["size"]
      276 LOADN                            R20 0
      277 JUMPIFNOTLT                      R20 R19 ; [+146]
      279 JUMPIFNOT                        R3 ; [+2]
      280 LOADN                            R19 1
      281 JUMP                             ; [+1]
      282 LOADN                            R19 0
      283 SUBK                             R20 R17 K55 [1]
      284 JUMPIFNOTLT                      R13 R20 ; [+139]
      286 ADD                              R23 R20 R19
      287 NAMECALL                         R21 R9 K20 ["has"]
      289 CALL                             R21 2 1
      290 JUMPIFNOT                        R21 ; [+131]
      291 GETTABLEKS                       R21 R0 K67 ["_getFrameMetricsApprox"]
      293 MOVE                             R22 R13
      294 CALL                             R21 1 1
      295 GETTABLEKS                       R22 R0 K67 ["_getFrameMetricsApprox"]
      297 MOVE                             R23 R20
      298 CALL                             R22 1 1
      299 GETTABLEKS                       R25 R22 K68 ["offset"]
      301 GETTABLEKS                       R26 R21 K68 ["offset"]
      303 SUB                              R24 R25 R26
      304 GETTABLEKS                       R28 R0 K3 ["props"]
      306 GETTABLEKS                       R27 R28 K56 ["initialScrollIndex"]
      308 LOADB                            R26 0
      309 JUMPIFEQKNIL                     R27 ; [+5]
      311 JUMPIFNOTEQKN                    R27 K55 [1] ; [+2]
      313 LOADB                            R26 0 +1
      314 LOADB                            R26 1
      315 JUMPIFNOT                        R26 ; [+2]
      316 LOADN                            R25 0
      317 JUMP                             ; [+2]
      318 GETTABLEKS                       R25 R21 K69 ["length"]
      320 SUB                              R23 R24 R25
      321 MOVE                             R25 R8
      322 GETUPVAL                         R27 4
      323 GETTABLEKS                       R26 R27 K26 ["createElement"]
      325 GETUPVAL                         R27 6
      326 DUPTABLE                         R28 K70 [{"key", "Name", "style"}]
      327 LOADK                            R29 K71 ["$sticky_lead"]
      328 SETTABLEKS                       R29 R28 K28 ["key"]
      330 LOADK                            R29 K71 ["$sticky_lead"]
      331 SETTABLEKS                       R29 R28 K29 ["Name"]
      333 DUPTABLE                         R29 K72 [{"Size"}]
      334 JUMPIFNOTEQKS                    R12 K73 ["height"] ; [+9]
      336 GETIMPORT                        R30 K51 [UDim2.new]
      338 LOADN                            R31 1
      339 LOADN                            R32 0
      340 LOADN                            R33 0
      341 MOVE                             R34 R23
      342 CALL                             R30 4 1
      343 JUMP                             ; [+7]
      344 GETIMPORT                        R30 K51 [UDim2.new]
      346 LOADN                            R31 0
      347 MOVE                             R32 R23
      348 LOADN                            R33 1
      349 LOADN                            R34 0
      350 CALL                             R30 4 1
      351 SETTABLEKS                       R30 R29 K38 ["Size"]
      353 SETTABLEKS                       R29 R28 K35 ["style"]
      355 CALL                             R26 2 -1
      356 FASTCALL                         TABLE_INSERT ; [+2]
      357 GETIMPORT                        R24 K24 [table.insert]
      359 CALL                             R24 -1 0
      360 MOVE                             R26 R8
      361 MOVE                             R27 R10
      362 MOVE                             R28 R9
      363 MOVE                             R29 R20
      364 MOVE                             R30 R20
      365 MOVE                             R31 R7
      366 NAMECALL                         R24 R0 K62 ["_pushCells"]
      368 CALL                             R24 7 0
      369 GETTABLEKS                       R27 R0 K67 ["_getFrameMetricsApprox"]
      371 MOVE                             R28 R14
      372 CALL                             R27 1 1
      373 GETTABLEKS                       R26 R27 K68 ["offset"]
      375 GETTABLEKS                       R27 R22 K68 ["offset"]
      377 SUB                              R25 R26 R27
      378 GETTABLEKS                       R26 R22 K69 ["length"]
      380 ADD                              R24 R25 R26
      381 MOVE                             R26 R8
      382 GETUPVAL                         R28 4
      383 GETTABLEKS                       R27 R28 K26 ["createElement"]
      385 GETUPVAL                         R28 6
      386 DUPTABLE                         R29 K70 [{"key", "Name", "style"}]
      387 LOADK                            R30 K74 ["$sticky_trail"]
      388 SETTABLEKS                       R30 R29 K28 ["key"]
      390 LOADK                            R30 K74 ["$sticky_trail"]
      391 SETTABLEKS                       R30 R29 K29 ["Name"]
      393 DUPTABLE                         R30 K72 [{"Size"}]
      394 JUMPIFNOTEQKS                    R12 K73 ["height"] ; [+9]
      396 GETIMPORT                        R31 K51 [UDim2.new]
      398 LOADN                            R32 1
      399 LOADN                            R33 0
      400 LOADN                            R34 0
      401 MOVE                             R35 R24
      402 CALL                             R31 4 1
      403 JUMP                             ; [+7]
      404 GETIMPORT                        R31 K51 [UDim2.new]
      406 LOADN                            R32 0
      407 MOVE                             R33 R24
      408 LOADN                            R34 1
      409 LOADN                            R35 0
      410 CALL                             R31 4 1
      411 SETTABLEKS                       R31 R30 K38 ["Size"]
      413 SETTABLEKS                       R30 R29 K35 ["style"]
      415 CALL                             R27 2 -1
      416 FASTCALL                         TABLE_INSERT ; [+2]
      417 GETIMPORT                        R25 K24 [table.insert]
      419 CALL                             R25 -1 0
      420 LOADB                            R18 1
      421 JUMP                             ; [+2]
      422 SUBK                             R20 R20 K55 [1]
      423 JUMPBACK                         ; [-140]
      424 JUMPIF                           R18 ; [+65]
      425 GETTABLEKS                       R19 R0 K67 ["_getFrameMetricsApprox"]
      427 MOVE                             R20 R13
      428 CALL                             R19 1 1
      429 GETTABLEKS                       R22 R0 K67 ["_getFrameMetricsApprox"]
      431 MOVE                             R23 R14
      432 CALL                             R22 1 1
      433 GETTABLEKS                       R21 R22 K68 ["offset"]
      435 GETTABLEKS                       R23 R19 K68 ["offset"]
      437 GETTABLEKS                       R24 R19 K69 ["length"]
      439 ADD                              R22 R23 R24
      440 SUB                              R20 R21 R22
      441 MOVE                             R22 R8
      442 GETUPVAL                         R24 4
      443 GETTABLEKS                       R23 R24 K26 ["createElement"]
      445 GETUPVAL                         R24 6
      446 DUPTABLE                         R25 K75 [{"key", "Name", "style", "LayoutOrder"}]
      447 LOADK                            R26 K76 ["$lead_spacer"]
      448 SETTABLEKS                       R26 R25 K28 ["key"]
      450 LOADK                            R26 K76 ["$lead_spacer"]
      451 SETTABLEKS                       R26 R25 K29 ["Name"]
      453 DUPTABLE                         R26 K72 [{"Size"}]
      454 JUMPIFNOTEQKS                    R12 K73 ["height"] ; [+9]
      456 GETIMPORT                        R27 K51 [UDim2.new]
      458 LOADN                            R28 1
      459 LOADN                            R29 0
      460 LOADN                            R30 0
      461 MOVE                             R31 R20
      462 CALL                             R27 4 1
      463 JUMP                             ; [+7]
      464 GETIMPORT                        R27 K51 [UDim2.new]
      466 LOADN                            R28 0
      467 MOVE                             R29 R20
      468 LOADN                            R30 1
      469 LOADN                            R31 0
      470 CALL                             R27 4 1
      471 SETTABLEKS                       R27 R26 K38 ["Size"]
      473 SETTABLEKS                       R26 R25 K35 ["style"]
      475 GETTABLEKS                       R28 R0 K3 ["props"]
      477 GETTABLEKS                       R27 R28 K15 ["inverted"]
      479 JUMPIFNOT                        R27 ; [+2]
      480 LOADK                            R26 K77 [999999999]
      481 JUMP                             ; [+1]
      482 LOADK                            R26 K78 [-999999999]
      483 SETTABLEKS                       R26 R25 K36 ["LayoutOrder"]
      485 CALL                             R23 2 -1
      486 FASTCALL                         TABLE_INSERT ; [+2]
      487 GETIMPORT                        R21 K24 [table.insert]
      489 CALL                             R21 -1 0
      490 MOVE                             R20 R8
      491 MOVE                             R21 R10
      492 MOVE                             R22 R9
      493 MOVE                             R23 R17
      494 MOVE                             R24 R15
      495 MOVE                             R25 R7
      496 NAMECALL                         R18 R0 K62 ["_pushCells"]
      498 CALL                             R18 7 0
      499 GETTABLEKS                       R19 R0 K79 ["_hasWarned"]
      501 GETTABLEKS                       R18 R19 K80 ["keys"]
      503 JUMPIF                           R18 ; [+13]
      504 GETUPVAL                         R18 8
      505 JUMPIFNOT                        R18 ; [+11]
      506 GETUPVAL                         R19 1
      507 GETTABLEKS                       R18 R19 K7 ["warn"]
      509 LOADK                            R19 K81 ["VirtualizedList: missing keys for items, make sure to specify a key or id property on each item or provide a custom keyExtractor."]
      510 GETUPVAL                         R20 9
      511 CALL                             R18 2 0
      512 GETTABLEKS                       R18 R0 K79 ["_hasWarned"]
      514 LOADB                            R19 1
      515 SETTABLEKS                       R19 R18 K80 ["keys"]
      517 JUMPIF                           R6 ; [+134]
      518 JUMPIFNOTLT                      R15 R11 ; [+133]
      520 GETTABLEKS                       R18 R0 K67 ["_getFrameMetricsApprox"]
      522 MOVE                             R19 R15
      523 CALL                             R18 1 1
      524 GETTABLEKS                       R21 R0 K3 ["props"]
      526 GETTABLEKS                       R20 R21 K82 ["getItemLayout"]
      528 JUMPIFNOT                        R20 ; [+2]
      529 MOVE                             R19 R11
      530 JUMP                             ; [+8]
      531 GETTABLEKS                       R21 R0 K83 ["_highestMeasuredFrameIndex"]
      533 FASTCALL2                        MATH_MIN R11 R21 ; [+4]
      535 MOVE                             R20 R11
      536 GETIMPORT                        R19 K85 [math.min]
      538 CALL                             R19 2 1
      539 GETTABLEKS                       R20 R0 K67 ["_getFrameMetricsApprox"]
      541 MOVE                             R21 R19
      542 CALL                             R20 1 1
      543 GETTABLEKS                       R23 R20 K68 ["offset"]
      545 GETTABLEKS                       R24 R20 K69 ["length"]
      547 ADD                              R22 R23 R24
      548 GETTABLEKS                       R24 R18 K68 ["offset"]
      550 GETTABLEKS                       R25 R18 K69 ["length"]
      552 ADD                              R23 R24 R25
      553 SUB                              R21 R22 R23
      554 MOVE                             R23 R8
      555 GETUPVAL                         R25 4
      556 GETTABLEKS                       R24 R25 K26 ["createElement"]
      558 GETUPVAL                         R25 6
      559 DUPTABLE                         R26 K75 [{"key", "Name", "style", "LayoutOrder"}]
      560 LOADK                            R27 K86 ["$tail_spacer"]
      561 SETTABLEKS                       R27 R26 K28 ["key"]
      563 LOADK                            R27 K86 ["$tail_spacer"]
      564 SETTABLEKS                       R27 R26 K29 ["Name"]
      566 DUPTABLE                         R27 K72 [{"Size"}]
      567 JUMPIFNOTEQKS                    R12 K73 ["height"] ; [+9]
      569 GETIMPORT                        R28 K51 [UDim2.new]
      571 LOADN                            R29 1
      572 LOADN                            R30 0
      573 LOADN                            R31 0
      574 MOVE                             R32 R21
      575 CALL                             R28 4 1
      576 JUMP                             ; [+7]
      577 GETIMPORT                        R28 K51 [UDim2.new]
      579 LOADN                            R29 0
      580 MOVE                             R30 R21
      581 LOADN                            R31 1
      582 LOADN                            R32 0
      583 CALL                             R28 4 1
      584 SETTABLEKS                       R28 R27 K38 ["Size"]
      586 SETTABLEKS                       R27 R26 K35 ["style"]
      588 GETTABLEKS                       R29 R0 K3 ["props"]
      590 GETTABLEKS                       R28 R29 K15 ["inverted"]
      592 JUMPIFNOT                        R28 ; [+2]
      593 LOADK                            R27 K78 [-999999999]
      594 JUMP                             ; [+1]
      595 LOADK                            R27 K77 [999999999]
      596 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      598 CALL                             R24 2 -1
      599 FASTCALL                         TABLE_INSERT ; [+2]
      600 GETIMPORT                        R22 K24 [table.insert]
      602 CALL                             R22 -1 0
      603 JUMP                             ; [+48]
      604 JUMPIFNOT                        R1 ; [+47]
      605 GETUPVAL                         R14 4
      606 GETTABLEKS                       R13 R14 K25 ["isValidElement"]
      608 MOVE                             R14 R1
      609 CALL                             R13 1 1
      610 JUMPIFNOT                        R13 ; [+2]
      611 MOVE                             R12 R1
      612 JUMP                             ; [+6]
      613 GETUPVAL                         R13 4
      614 GETTABLEKS                       R12 R13 K26 ["createElement"]
      616 MOVE                             R13 R1
      617 LOADNIL                          R14
      618 CALL                             R12 2 1
      619 MOVE                             R14 R8
      620 GETUPVAL                         R16 4
      621 GETTABLEKS                       R15 R16 K87 ["cloneElement"]
      623 MOVE                             R16 R12
      624 DUPTABLE                         R17 K88 [{"key", "Name", "onLayout", "style"}]
      625 LOADK                            R18 K89 ["$empty"]
      626 SETTABLEKS                       R18 R17 K28 ["key"]
      628 LOADK                            R18 K89 ["$empty"]
      629 SETTABLEKS                       R18 R17 K29 ["Name"]
      631 NEWCLOSURE                       R18 P0
      632 CAPTURE                          VAL R0
      633 CAPTURE                          VAL R12
      634 SETTABLEKS                       R18 R17 K34 ["onLayout"]
      636 GETUPVAL                         R19 7
      637 GETTABLEKS                       R18 R19 K41 ["compose"]
      639 MOVE                             R19 R7
      640 GETTABLEKS                       R21 R12 K3 ["props"]
      642 GETTABLEKS                       R20 R21 K35 ["style"]
      644 CALL                             R18 2 1
      645 SETTABLEKS                       R18 R17 K35 ["style"]
      647 CALL                             R15 2 -1
      648 FASTCALL                         TABLE_INSERT ; [+2]
      649 GETIMPORT                        R13 K24 [table.insert]
      651 CALL                             R13 -1 0
      652 JUMPIFNOT                        R2 ; [+97]
      653 GETUPVAL                         R14 4
      654 GETTABLEKS                       R13 R14 K25 ["isValidElement"]
      656 MOVE                             R14 R2
      657 CALL                             R13 1 1
      658 JUMPIFNOT                        R13 ; [+2]
      659 MOVE                             R12 R2
      660 JUMP                             ; [+6]
      661 GETUPVAL                         R13 4
      662 GETTABLEKS                       R12 R13 K26 ["createElement"]
      664 MOVE                             R13 R2
      665 LOADNIL                          R14
      666 CALL                             R12 2 1
      667 MOVE                             R14 R8
      668 GETUPVAL                         R16 4
      669 GETTABLEKS                       R15 R16 K26 ["createElement"]
      671 GETUPVAL                         R16 5
      672 DUPTABLE                         R17 K30 [{"cellKey", "key", "Name"}]
      673 NAMECALL                         R18 R0 K90 ["_getFooterCellKey"]
      675 CALL                             R18 1 1
      676 SETTABLEKS                       R18 R17 K27 ["cellKey"]
      678 LOADK                            R18 K91 ["$footer"]
      679 SETTABLEKS                       R18 R17 K28 ["key"]
      681 LOADK                            R18 K91 ["$footer"]
      682 SETTABLEKS                       R18 R17 K29 ["Name"]
      684 GETUPVAL                         R19 4
      685 GETTABLEKS                       R18 R19 K26 ["createElement"]
      687 GETUPVAL                         R19 6
      688 DUPTABLE                         R20 K39 [{"Name", "onLayout", "style", "LayoutOrder", "AutomaticSize", "Size"}]
      689 LOADK                            R21 K10 ["ListFooterComponent"]
      690 SETTABLEKS                       R21 R20 K29 ["Name"]
      692 GETTABLEKS                       R21 R0 K92 ["_onLayoutFooter"]
      694 SETTABLEKS                       R21 R20 K34 ["onLayout"]
      696 GETUPVAL                         R22 7
      697 GETTABLEKS                       R21 R22 K41 ["compose"]
      699 MOVE                             R22 R7
      700 GETTABLEKS                       R24 R0 K3 ["props"]
      702 GETTABLEKS                       R23 R24 K93 ["ListFooterComponentStyle"]
      704 CALL                             R21 2 1
      705 SETTABLEKS                       R21 R20 K35 ["style"]
      707 GETTABLEKS                       R23 R0 K3 ["props"]
      709 GETTABLEKS                       R22 R23 K15 ["inverted"]
      711 JUMPIFNOT                        R22 ; [+2]
      712 LOADK                            R21 K44 [-999999998]
      713 JUMP                             ; [+1]
      714 LOADK                            R21 K43 [999999998]
      715 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      717 JUMPIFNOT                        R5 ; [+3]
      718 GETIMPORT                        R21 K47 [Enum.AutomaticSize.X]
      720 JUMP                             ; [+2]
      721 GETIMPORT                        R21 K49 [Enum.AutomaticSize.Y]
      723 SETTABLEKS                       R21 R20 K37 ["AutomaticSize"]
      725 JUMPIFNOT                        R5 ; [+8]
      726 GETIMPORT                        R21 K51 [UDim2.new]
      728 LOADN                            R22 0
      729 LOADN                            R23 0
      730 LOADN                            R24 1
      731 LOADN                            R25 0
      732 CALL                             R21 4 1
      733 JUMP                             ; [+7]
      734 GETIMPORT                        R21 K51 [UDim2.new]
      736 LOADN                            R22 1
      737 LOADN                            R23 0
      738 LOADN                            R24 0
      739 LOADN                            R25 0
      740 CALL                             R21 4 1
      741 SETTABLEKS                       R21 R20 K38 ["Size"]
      743 MOVE                             R21 R12
      744 CALL                             R18 3 -1
      745 CALL                             R15 -1 -1
      746 FASTCALL                         TABLE_INSERT ; [+2]
      747 GETIMPORT                        R13 K24 [table.insert]
      749 CALL                             R13 -1 0
      750 GETTABLEKS                       R13 R0 K3 ["props"]
      752 GETTABLEKS                       R12 R13 K15 ["inverted"]
      754 JUMPIFNOT                        R12 ; [+276]
      755 GETTABLEKS                       R13 R0 K3 ["props"]
      757 GETTABLEKS                       R12 R13 K82 ["getItemLayout"]
      759 JUMPIF                           R12 ; [+271]
      760 NAMECALL                         R12 R0 K94 ["getScrollRef"]
      762 CALL                             R12 1 1
      763 JUMPIFEQKNIL                     R12 ; [+222]
      765 NAMECALL                         R14 R0 K94 ["getScrollRef"]
      767 CALL                             R14 1 1
      768 GETTABLEKS                       R13 R14 K95 ["_nativeRef"]
      770 GETTABLEKS                       R12 R13 K96 ["current"]
      772 JUMPIFEQKNIL                     R12 ; [+213]
      774 NAMECALL                         R14 R0 K94 ["getScrollRef"]
      776 CALL                             R14 1 1
      777 GETTABLEKS                       R13 R14 K95 ["_nativeRef"]
      779 GETTABLEKS                       R12 R13 K96 ["current"]
      781 GETTABLEKS                       R13 R12 K97 ["CanvasPosition"]
      783 GETTABLEKS                       R14 R0 K67 ["_getFrameMetricsApprox"]
      785 GETTABLEKS                       R16 R0 K83 ["_highestMeasuredFrameIndex"]
      787 FASTCALL2                        MATH_MIN R16 R11 ; [+4]
      789 MOVE                             R17 R11
      790 GETIMPORT                        R15 K85 [math.min]
      792 CALL                             R15 2 1
      793 CALL                             R14 1 1
      794 GETTABLEKS                       R16 R14 K68 ["offset"]
      796 GETTABLEKS                       R17 R14 K69 ["length"]
      798 ADD                              R15 R16 R17
      799 GETTABLEKS                       R18 R0 K3 ["props"]
      801 GETTABLEKS                       R17 R18 K98 ["optimizeInvertedCanvasResize"]
      803 JUMPIFNOT                        R17 ; [+10]
      804 GETTABLEKS                       R18 R0 K99 ["_invertedCanvasLength"]
      806 GETTABLEKS                       R19 R0 K100 ["_footerLength"]
      808 SUB                              R17 R18 R19
      809 JUMPIFLT                         R17 R15 ; [+2]
      811 LOADB                            R16 0 +1
      812 LOADB                            R16 1
      813 JUMP                             ; [+9]
      814 GETTABLEKS                       R18 R0 K99 ["_invertedCanvasLength"]
      816 GETTABLEKS                       R19 R0 K100 ["_footerLength"]
      818 SUB                              R17 R18 R19
      819 JUMPIFNOTEQ                      R15 R17 ; [+2]
      821 LOADB                            R16 0 +1
      822 LOADB                            R16 1
      823 GETTABLEKS                       R17 R0 K83 ["_highestMeasuredFrameIndex"]
      825 JUMPIFNOTLE                      R11 R17 ; [+70]
      827 GETTABLEKS                       R18 R0 K99 ["_invertedCanvasLength"]
      829 GETTABLEKS                       R19 R0 K100 ["_footerLength"]
      831 SUB                              R17 R18 R19
      832 JUMPIFEQ                         R15 R17 ; [+63]
      834 GETTABLEKS                       R19 R0 K100 ["_footerLength"]
      836 ADD                              R18 R15 R19
      837 GETTABLEKS                       R19 R0 K99 ["_invertedCanvasLength"]
      839 SUB                              R17 R18 R19
      840 GETTABLEKS                       R19 R0 K100 ["_footerLength"]
      842 ADD                              R18 R15 R19
      843 SETTABLEKS                       R18 R0 K99 ["_invertedCanvasLength"]
      845 GETTABLEKS                       R20 R0 K3 ["props"]
      847 GETTABLEKS                       R19 R20 K13 ["horizontal"]
      849 JUMPIFNOT                        R19 ; [+9]
      850 GETIMPORT                        R18 K51 [UDim2.new]
      852 LOADN                            R19 0
      853 GETTABLEKS                       R20 R0 K99 ["_invertedCanvasLength"]
      855 LOADN                            R21 1
      856 LOADN                            R22 0
      857 CALL                             R18 4 1
      858 JUMP                             ; [+8]
      859 GETIMPORT                        R18 K51 [UDim2.new]
      861 LOADN                            R19 1
      862 LOADN                            R20 0
      863 LOADN                            R21 0
      864 GETTABLEKS                       R22 R0 K99 ["_invertedCanvasLength"]
      866 CALL                             R18 4 1
      867 SETTABLEKS                       R18 R12 K101 ["CanvasSize"]
      869 GETTABLEKS                       R21 R0 K3 ["props"]
      871 GETTABLEKS                       R20 R21 K13 ["horizontal"]
      873 JUMPIFNOT                        R20 ; [+9]
      874 GETIMPORT                        R19 K103 [Vector2.new]
      876 GETTABLEKS                       R21 R13 K46 ["X"]
      878 ADD                              R20 R21 R17
      879 GETTABLEKS                       R21 R13 K48 ["Y"]
      881 CALL                             R19 2 1
      882 JUMP                             ; [+8]
      883 GETIMPORT                        R19 K103 [Vector2.new]
      885 GETTABLEKS                       R20 R13 K46 ["X"]
      887 GETTABLEKS                       R22 R13 K48 ["Y"]
      889 ADD                              R21 R22 R17
      890 CALL                             R19 2 1
      891 SETTABLEKS                       R19 R0 K104 ["_canvasPosition"]
      893 SETTABLEKS                       R18 R0 K105 ["_canvasSize"]
      895 JUMP                             ; [+216]
      896 JUMPIFNOT                        R16 ; [+215]
      897 GETTABLEKS                       R18 R0 K58 ["state"]
      899 GETTABLEKS                       R17 R18 K61 ["scrollPositionDelta"]
      901 JUMPIFNOTEQKN                    R17 K21 [0] ; [+210]
      903 GETTABLEKS                       R17 R0 K99 ["_invertedCanvasLength"]
      905 GETTABLEKS                       R21 R0 K107 ["_scrollMetrics"]
      907 GETTABLEKS                       R20 R21 K108 ["visibleLength"]
      909 GETTABLEKS                       R23 R0 K3 ["props"]
      911 GETTABLEKS                       R22 R23 K109 ["windowSize"]
      913 JUMPIFNOTEQKNIL                  R22 ; [+3]
      915 LOADN                            R21 21
      916 JUMP                             ; [+1]
      917 MOVE                             R21 R22
      918 MUL                              R19 R20 R21
      919 MULK                             R18 R19 K106 [0.5]
      920 GETTABLEKS                       R21 R14 K68 ["offset"]
      922 GETTABLEKS                       R23 R0 K107 ["_scrollMetrics"]
      924 GETTABLEKS                       R22 R23 K108 ["visibleLength"]
      926 ADD                              R20 R21 R22
      927 ADD                              R19 R20 R18
      928 SUB                              R20 R19 R17
      929 SETTABLEKS                       R19 R0 K99 ["_invertedCanvasLength"]
      931 GETTABLEKS                       R23 R0 K3 ["props"]
      933 GETTABLEKS                       R22 R23 K13 ["horizontal"]
      935 JUMPIFNOT                        R22 ; [+9]
      936 GETIMPORT                        R21 K51 [UDim2.new]
      938 LOADN                            R22 0
      939 GETTABLEKS                       R23 R0 K99 ["_invertedCanvasLength"]
      941 LOADN                            R24 1
      942 LOADN                            R25 0
      943 CALL                             R21 4 1
      944 JUMP                             ; [+8]
      945 GETIMPORT                        R21 K51 [UDim2.new]
      947 LOADN                            R22 1
      948 LOADN                            R23 0
      949 LOADN                            R24 0
      950 GETTABLEKS                       R25 R0 K99 ["_invertedCanvasLength"]
      952 CALL                             R21 4 1
      953 SETTABLEKS                       R21 R12 K101 ["CanvasSize"]
      955 GETTABLEKS                       R24 R0 K3 ["props"]
      957 GETTABLEKS                       R23 R24 K13 ["horizontal"]
      959 JUMPIFNOT                        R23 ; [+9]
      960 GETIMPORT                        R22 K103 [Vector2.new]
      962 GETTABLEKS                       R24 R13 K46 ["X"]
      964 ADD                              R23 R24 R20
      965 GETTABLEKS                       R24 R13 K48 ["Y"]
      967 CALL                             R22 2 1
      968 JUMP                             ; [+8]
      969 GETIMPORT                        R22 K103 [Vector2.new]
      971 GETTABLEKS                       R23 R13 K46 ["X"]
      973 GETTABLEKS                       R25 R13 K48 ["Y"]
      975 ADD                              R24 R25 R20
      976 CALL                             R22 2 1
      977 SETTABLEKS                       R22 R12 K97 ["CanvasPosition"]
      979 GETTABLEKS                       R22 R12 K97 ["CanvasPosition"]
      981 SETTABLEKS                       R22 R0 K104 ["_canvasPosition"]
      983 SETTABLEKS                       R21 R0 K105 ["_canvasSize"]
      985 JUMP                             ; [+126]
      986 GETTABLEKS                       R14 R0 K3 ["props"]
      988 GETTABLEKS                       R13 R14 K13 ["horizontal"]
      990 JUMPIFNOT                        R13 ; [+7]
      991 GETIMPORT                        R12 K103 [Vector2.new]
      993 GETTABLEKS                       R13 R0 K99 ["_invertedCanvasLength"]
      995 LOADN                            R14 0
      996 CALL                             R12 2 1
      997 JUMP                             ; [+6]
      998 GETIMPORT                        R12 K103 [Vector2.new]
     1000 LOADN                            R13 0
     1001 GETTABLEKS                       R14 R0 K99 ["_invertedCanvasLength"]
     1003 CALL                             R12 2 1
     1004 SETTABLEKS                       R12 R0 K104 ["_canvasPosition"]
     1006 GETTABLEKS                       R14 R0 K3 ["props"]
     1008 GETTABLEKS                       R13 R14 K13 ["horizontal"]
     1010 JUMPIFNOT                        R13 ; [+9]
     1011 GETIMPORT                        R12 K51 [UDim2.new]
     1013 LOADN                            R13 0
     1014 GETTABLEKS                       R14 R0 K99 ["_invertedCanvasLength"]
     1016 LOADN                            R15 1
     1017 LOADN                            R16 0
     1018 CALL                             R12 4 1
     1019 JUMP                             ; [+8]
     1020 GETIMPORT                        R12 K51 [UDim2.new]
     1022 LOADN                            R13 1
     1023 LOADN                            R14 0
     1024 LOADN                            R15 0
     1025 GETTABLEKS                       R16 R0 K99 ["_invertedCanvasLength"]
     1027 CALL                             R12 4 1
     1028 SETTABLEKS                       R12 R0 K105 ["_canvasSize"]
     1030 JUMP                             ; [+81]
     1031 GETTABLEKS                       R13 R0 K3 ["props"]
     1033 GETTABLEKS                       R12 R13 K15 ["inverted"]
     1035 JUMPIFNOT                        R12 ; [+76]
     1036 GETTABLEKS                       R13 R0 K3 ["props"]
     1038 GETTABLEKS                       R12 R13 K82 ["getItemLayout"]
     1040 JUMPIFNOT                        R12 ; [+71]
     1041 GETTABLEKS                       R12 R0 K67 ["_getFrameMetricsApprox"]
     1043 MOVE                             R13 R11
     1044 CALL                             R12 1 1
     1045 NAMECALL                         R13 R0 K94 ["getScrollRef"]
     1047 CALL                             R13 1 1
     1048 JUMPIFEQKNIL                     R13 ; [+56]
     1050 NAMECALL                         R15 R0 K94 ["getScrollRef"]
     1052 CALL                             R15 1 1
     1053 GETTABLEKS                       R14 R15 K95 ["_nativeRef"]
     1055 GETTABLEKS                       R13 R14 K96 ["current"]
     1057 JUMPIFEQKNIL                     R13 ; [+47]
     1059 NAMECALL                         R15 R0 K94 ["getScrollRef"]
     1061 CALL                             R15 1 1
     1062 GETTABLEKS                       R14 R15 K95 ["_nativeRef"]
     1064 GETTABLEKS                       R13 R14 K96 ["current"]
     1066 GETTABLEKS                       R14 R13 K97 ["CanvasPosition"]
     1068 GETTABLEKS                       R15 R0 K99 ["_invertedCanvasLength"]
     1070 GETTABLEKS                       R17 R12 K68 ["offset"]
     1072 GETTABLEKS                       R18 R12 K69 ["length"]
     1074 ADD                              R16 R17 R18
     1075 SETTABLEKS                       R16 R0 K99 ["_invertedCanvasLength"]
     1077 GETTABLEKS                       R16 R0 K99 ["_invertedCanvasLength"]
     1079 JUMPIFEQ                         R15 R16 ; [+32]
     1081 GETTABLEKS                       R17 R0 K99 ["_invertedCanvasLength"]
     1083 SUB                              R16 R17 R15
     1084 GETTABLEKS                       R19 R0 K3 ["props"]
     1086 GETTABLEKS                       R18 R19 K13 ["horizontal"]
     1088 JUMPIFNOT                        R18 ; [+7]
     1089 GETIMPORT                        R18 K103 [Vector2.new]
     1091 MOVE                             R19 R16
     1092 LOADN                            R20 0
     1093 CALL                             R18 2 1
     1094 ADD                              R17 R14 R18
     1095 JUMP                             ; [+6]
     1096 GETIMPORT                        R18 K103 [Vector2.new]
     1098 LOADN                            R19 0
     1099 MOVE                             R20 R16
     1100 CALL                             R18 2 1
     1101 ADD                              R17 R14 R18
     1102 SETTABLEKS                       R17 R13 K97 ["CanvasPosition"]
     1104 JUMP                             ; [+7]
     1105 GETTABLEKS                       R14 R12 K68 ["offset"]
     1107 GETTABLEKS                       R15 R12 K69 ["length"]
     1109 ADD                              R13 R14 R15
     1110 SETTABLEKS                       R13 R0 K99 ["_invertedCanvasLength"]
     1112 GETUPVAL                         R13 10
     1113 GETTABLEKS                       R12 R13 K110 ["assign"]
     1115 GETIMPORT                        R13 K112 [table.clone]
     1117 GETTABLEKS                       R14 R0 K3 ["props"]
     1119 CALL                             R13 1 1
     1120 DUPTABLE                         R14 K123 [{"onContentSizeChange", "onLayout", "onScroll", "onScrollBeginDrag", "onScrollEndDrag", "onMomentumScrollBegin", "onMomentumScrollEnd", "scrollEventThrottle", "invertStickyHeaders", "stickyHeaderIndices", "style", "layoutStyle", "AutomaticCanvasSize", "CanvasSize", "CanvasPosition"}]
     1121 GETTABLEKS                       R15 R0 K124 ["_onContentSizeChange"]
     1123 SETTABLEKS                       R15 R14 K113 ["onContentSizeChange"]
     1125 GETTABLEKS                       R15 R0 K125 ["_onLayout"]
     1127 SETTABLEKS                       R15 R14 K34 ["onLayout"]
     1129 GETTABLEKS                       R15 R0 K126 ["_onScroll"]
     1131 SETTABLEKS                       R15 R14 K114 ["onScroll"]
     1133 GETTABLEKS                       R15 R0 K127 ["_onScrollBeginDrag"]
     1135 SETTABLEKS                       R15 R14 K115 ["onScrollBeginDrag"]
     1137 GETTABLEKS                       R15 R0 K128 ["_onScrollEndDrag"]
     1139 SETTABLEKS                       R15 R14 K116 ["onScrollEndDrag"]
     1141 GETTABLEKS                       R15 R0 K129 ["_onMomentumScrollBegin"]
     1143 SETTABLEKS                       R15 R14 K117 ["onMomentumScrollBegin"]
     1145 GETTABLEKS                       R15 R0 K130 ["_onMomentumScrollEnd"]
     1147 SETTABLEKS                       R15 R14 K118 ["onMomentumScrollEnd"]
     1149 GETTABLEKS                       R17 R0 K3 ["props"]
     1151 GETTABLEKS                       R16 R17 K119 ["scrollEventThrottle"]
     1153 JUMPIFNOTEQKNIL                  R16 ; [+3]
     1155 LOADN                            R15 50
     1156 JUMP                             ; [+1]
     1157 MOVE                             R15 R16
     1158 SETTABLEKS                       R15 R14 K119 ["scrollEventThrottle"]
     1160 GETTABLEKS                       R17 R0 K3 ["props"]
     1162 GETTABLEKS                       R16 R17 K120 ["invertStickyHeaders"]
     1164 JUMPIFEQKNIL                     R16 ; [+6]
     1166 GETTABLEKS                       R16 R0 K3 ["props"]
     1168 GETTABLEKS                       R15 R16 K120 ["invertStickyHeaders"]
     1170 JUMP                             ; [+4]
     1171 GETTABLEKS                       R16 R0 K3 ["props"]
     1173 GETTABLEKS                       R15 R16 K15 ["inverted"]
     1175 SETTABLEKS                       R15 R14 K120 ["invertStickyHeaders"]
     1177 SETTABLEKS                       R10 R14 K19 ["stickyHeaderIndices"]
     1179 GETTABLEKS                       R16 R0 K3 ["props"]
     1181 GETTABLEKS                       R15 R16 K35 ["style"]
     1183 SETTABLEKS                       R15 R14 K35 ["style"]
     1185 ORK                              R15 R7 K131 []
     1186 SETTABLEKS                       R15 R14 K121 ["layoutStyle"]
     1188 GETTABLEKS                       R17 R0 K3 ["props"]
     1190 GETTABLEKS                       R16 R17 K15 ["inverted"]
     1192 JUMPIFNOT                        R16 ; [+8]
     1193 GETTABLEKS                       R17 R0 K3 ["props"]
     1195 GETTABLEKS                       R16 R17 K82 ["getItemLayout"]
     1197 JUMPIF                           R16 ; [+3]
     1198 GETIMPORT                        R15 K133 [Enum.AutomaticSize.None]
     1200 JUMP                             ; [+1]
     1201 LOADNIL                          R15
     1202 SETTABLEKS                       R15 R14 K122 ["AutomaticCanvasSize"]
     1204 GETTABLEKS                       R17 R0 K3 ["props"]
     1206 GETTABLEKS                       R16 R17 K15 ["inverted"]
     1208 JUMPIFNOT                        R16 ; [+3]
     1209 GETTABLEKS                       R15 R0 K105 ["_canvasSize"]
     1211 JUMP                             ; [+1]
     1212 LOADNIL                          R15
     1213 SETTABLEKS                       R15 R14 K101 ["CanvasSize"]
     1215 GETTABLEKS                       R17 R0 K3 ["props"]
     1217 GETTABLEKS                       R16 R17 K15 ["inverted"]
     1219 JUMPIFNOT                        R16 ; [+3]
     1220 GETTABLEKS                       R15 R0 K104 ["_canvasPosition"]
     1222 JUMP                             ; [+1]
     1223 LOADNIL                          R15
     1224 SETTABLEKS                       R15 R14 K97 ["CanvasPosition"]
     1226 CALL                             R12 2 1
     1227 GETTABLEKS                       R15 R0 K58 ["state"]
     1229 GETTABLEKS                       R14 R15 K60 ["last"]
     1231 GETTABLEKS                       R16 R0 K3 ["props"]
     1233 GETTABLEKS                       R15 R16 K52 ["getItemCount"]
     1235 GETTABLEKS                       R17 R0 K3 ["props"]
     1237 GETTABLEKS                       R16 R17 K12 ["data"]
     1239 CALL                             R15 1 1
     1240 JUMPIFLT                         R14 R15 ; [+2]
     1242 LOADB                            R13 0 +1
     1243 LOADB                            R13 1
     1244 SETTABLEKS                       R13 R0 K134 ["_hasMore"]
     1246 GETUPVAL                         R14 4
     1247 GETTABLEKS                       R13 R14 K26 ["createElement"]
     1249 GETUPVAL                         R14 11
     1250 DUPTABLE                         R15 K136 [{"value"}]
     1251 DUPTABLE                         R16 K143 [{"cellKey", "getScrollMetrics", "horizontal", "getOutermostParentListRef", "getNestedChildState", "registerAsNestedChild", "unregisterAsNestedChild", "debugInfo"}]
     1252 LOADNIL                          R17
     1253 SETTABLEKS                       R17 R16 K27 ["cellKey"]
     1255 GETTABLEKS                       R17 R0 K144 ["_getScrollMetrics"]
     1257 SETTABLEKS                       R17 R16 K137 ["getScrollMetrics"]
     1259 GETTABLEKS                       R19 R0 K3 ["props"]
     1261 GETTABLEKS                       R18 R19 K13 ["horizontal"]
     1263 JUMPIFNOTEQKNIL                  R18 ; [+3]
     1265 LOADB                            R17 0
     1266 JUMP                             ; [+1]
     1267 MOVE                             R17 R18
     1268 SETTABLEKS                       R17 R16 K13 ["horizontal"]
     1270 GETTABLEKS                       R17 R0 K145 ["_getOutermostParentListRef"]
     1272 SETTABLEKS                       R17 R16 K138 ["getOutermostParentListRef"]
     1274 GETTABLEKS                       R17 R0 K146 ["_getNestedChildState"]
     1276 SETTABLEKS                       R17 R16 K139 ["getNestedChildState"]
     1278 GETTABLEKS                       R17 R0 K147 ["_registerAsNestedChild"]
     1280 SETTABLEKS                       R17 R16 K140 ["registerAsNestedChild"]
     1282 GETTABLEKS                       R17 R0 K148 ["_unregisterAsNestedChild"]
     1284 SETTABLEKS                       R17 R16 K141 ["unregisterAsNestedChild"]
     1286 NAMECALL                         R17 R0 K149 ["_getDebugInfo"]
     1288 CALL                             R17 1 1
     1289 SETTABLEKS                       R17 R16 K142 ["debugInfo"]
     1291 SETTABLEKS                       R16 R15 K135 ["value"]
     1293 GETUPVAL                         R17 4
     1294 GETTABLEKS                       R16 R17 K87 ["cloneElement"]
     1296 GETTABLEKS                       R19 R0 K3 ["props"]
     1298 GETTABLEKS                       R18 R19 K150 ["renderScrollComponent"]
     1300 JUMPIFNOT                        R18 ; [+5]
     1301 GETTABLEKS                       R18 R0 K3 ["props"]
     1303 GETTABLEKS                       R17 R18 K150 ["renderScrollComponent"]
     1305 JUMP                             ; [+2]
     1306 GETTABLEKS                       R17 R0 K151 ["_defaultRenderScrollComponent"]
     1308 MOVE                             R18 R12
     1309 CALL                             R17 1 1
     1310 DUPTABLE                         R18 K153 [{"ref"}]
     1311 GETTABLEKS                       R19 R0 K154 ["_captureScrollRef"]
     1313 SETTABLEKS                       R19 R18 K152 ["ref"]
     1315 MOVE                             R19 R8
     1316 CALL                             R16 3 -1
     1317 CALL                             R13 -1 1
     1318 MOVE                             R14 R13
     1319 GETIMPORT                        R16 K1 [_G]
     1321 GETTABLEKS                       R15 R16 K2 ["__DEV__"]
     1323 JUMPIFNOT                        R15 ; [+15]
     1324 GETUPVAL                         R16 4
     1325 GETTABLEKS                       R15 R16 K26 ["createElement"]
     1327 GETUPVAL                         R18 12
     1328 GETTABLEKS                       R17 R18 K155 ["Context"]
     1330 GETTABLEKS                       R16 R17 K156 ["Consumer"]
     1332 LOADNIL                          R17
     1333 NEWCLOSURE                       R18 P1
     1334 CAPTURE                          VAL R0
     1335 CAPTURE                          UPVAL U1
     1336 CAPTURE                          VAL R13
     1337 CALL                             R15 3 1
     1338 MOVE                             R14 R15
     1339 GETTABLEKS                       R16 R0 K3 ["props"]
     1341 GETTABLEKS                       R15 R16 K157 ["debug"]
     1343 JUMPIFNOT                        R15 ; [+19]
     1344 GETUPVAL                         R16 4
     1345 GETTABLEKS                       R15 R16 K26 ["createElement"]
     1347 GETUPVAL                         R16 6
     1348 DUPTABLE                         R17 K158 [{"style", "Name"}]
     1349 GETUPVAL                         R19 2
     1350 GETTABLEKS                       R18 R19 K157 ["debug"]
     1352 SETTABLEKS                       R18 R17 K35 ["style"]
     1354 LOADK                            R18 K157 ["debug"]
     1355 SETTABLEKS                       R18 R17 K29 ["Name"]
     1357 MOVE                             R18 R14
     1358 NAMECALL                         R19 R0 K159 ["_renderDebugOverlay"]
     1360 CALL                             R19 1 -1
     1361 CALL                             R15 -1 -1
     1362 RETURN                           R15 -1
     1363 RETURN                           R14 1

PROTO_79:
        0 GETTABLEKS                       R1 R0 K0 ["viewabilityHelper"]
        2 NAMECALL                         R1 R1 K1 ["resetViewableIndices"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_80:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R4 K1 ["data"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["extraData"]
        8 GETTABLEKS                       R4 R1 K1 ["data"]
       10 JUMPIFNOTEQ                      R2 R4 ; [+5]
       12 GETTABLEKS                       R4 R1 K2 ["extraData"]
       14 JUMPIFEQ                         R3 R4 ; [+8]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K3 ["forEach"]
       19 GETTABLEKS                       R5 R0 K4 ["_viewabilityTuples"]
       21 DUPCLOSURE                       R6 K5 [PROTO_79]
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R4 R0 K6 ["_hiPriInProgress"]
       25 NAMECALL                         R5 R0 K7 ["_scheduleCellsToRenderUpdate"]
       27 CALL                             R5 1 0
       28 JUMPIFNOT                        R4 ; [+3]
       29 LOADB                            R5 0
       30 SETTABLEKS                       R5 R0 K6 ["_hiPriInProgress"]
       32 RETURN                           R0 0

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["_fillRateHelper"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R0 K2 ["state"]
        6 GETTABLEKS                       R5 R0 K3 ["_scrollMetrics"]
        8 NAMECALL                         R1 R1 K4 ["computeBlankness"]
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

PROTO_82:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["LayoutOrder"]
        8 FASTCALL1                        MATH_ABS R2 ; [+2]
        9 GETIMPORT                        R1 K5 [math.abs]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 JUMPIFLE                         R1 R2 ; [+4]
       15 GETUPVAL                         R2 1
       16 JUMPIFNOTLT                      R2 R1 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K6 ["props"]
       22 GETTABLEKS                       R2 R3 K7 ["getItem"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K6 ["props"]
       27 GETTABLEKS                       R3 R4 K8 ["data"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 JUMPIFNOTEQKNIL                  R2 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 2
       35 MOVE                             R5 R2
       36 MOVE                             R6 R1
       37 NAMECALL                         R3 R3 K9 ["_keyExtractor"]
       39 CALL                             R3 3 1
       40 GETUPVAL                         R4 2
       41 MOVE                             R6 R0
       42 MOVE                             R7 R3
       43 MOVE                             R8 R1
       44 NAMECALL                         R4 R4 K10 ["_onCellLayout"]
       46 CALL                             R4 4 0
       47 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_frames"]
        3 GETTABLE                         R2 R3 R0
        4 GETTABLEKS                       R1 R2 K1 ["index"]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTLE                      R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["_cellRefs"]
       13 GETTABLE                         R2 R3 R0
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K2 ["_cellRefs"]
       18 GETTABLE                         R1 R2 R0
       19 NAMECALL                         R1 R1 K3 ["getRef"]
       21 CALL                             R1 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R1
       24 JUMPIFNOT                        R1 ; [+16]
       25 GETTABLEKS                       R2 R1 K4 ["current"]
       27 JUMPIFNOT                        R2 ; [+13]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R4 R1 K4 ["current"]
       31 MOVE                             R5 R0
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R8 R9 K0 ["_frames"]
       35 GETTABLE                         R7 R8 R0
       36 GETTABLEKS                       R6 R7 K1 ["index"]
       38 NAMECALL                         R2 R2 K5 ["_onCellLayout"]
       40 CALL                             R2 4 0
       41 RETURN                           R0 0

PROTO_84:
        0 NAMECALL                         R5 R0 K0 ["getScrollRef"]
        2 CALL                             R5 1 1
        3 JUMPIFNOT                        R5 ; [+16]
        4 NAMECALL                         R7 R0 K0 ["getScrollRef"]
        6 CALL                             R7 1 1
        7 GETTABLEKS                       R6 R7 K1 ["_nativeRef"]
        9 GETTABLEKS                       R5 R6 K2 ["current"]
       11 JUMPIFNOT                        R5 ; [+8]
       12 NAMECALL                         R6 R0 K0 ["getScrollRef"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R5 R6 K1 ["_nativeRef"]
       17 GETTABLEKS                       R4 R5 K2 ["current"]
       19 JUMP                             ; [+4]
       20 LOADK                            R6 K3 ["ScrollingFrame"]
       21 NAMECALL                         R4 R1 K4 ["FindFirstAncestorOfClass"]
       23 CALL                             R4 2 1
       24 JUMPIFNOTEQKNIL                  R4 ; [+20]
       26 GETIMPORT                        R6 K6 [_G]
       28 GETTABLEKS                       R5 R6 K7 ["__DEV__"]
       30 JUMPIFNOT                        R5 ; [+13]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K8 ["warn"]
       34 LOADK                            R7 K9 ["CellLayout failed for index "]
       35 FASTCALL1                        TOSTRING R3 ; [+3]
       36 MOVE                             R11 R3
       37 GETIMPORT                        R10 K11 [tostring]
       39 CALL                             R10 1 1
       40 MOVE                             R8 R10
       41 LOADK                            R9 K12 [". this may cause layout issues"]
       42 CONCAT                           R6 R7 R9
       43 CALL                             R5 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R5 R4 K13 ["AbsolutePosition"]
       47 GETTABLEKS                       R6 R4 K14 ["CanvasPosition"]
       49 GETTABLEKS                       R7 R4 K15 ["AbsoluteCanvasSize"]
       51 GETTABLEKS                       R8 R1 K16 ["AbsoluteSize"]
       53 GETTABLEKS                       R9 R1 K13 ["AbsolutePosition"]
       55 GETTABLEKS                       R12 R0 K17 ["props"]
       57 GETTABLEKS                       R11 R12 K18 ["inverted"]
       59 JUMPIFNOT                        R11 ; [+20]
       60 GETTABLEKS                       R12 R0 K17 ["props"]
       62 GETTABLEKS                       R11 R12 K19 ["horizontal"]
       64 JUMPIFNOT                        R11 ; [+15]
       65 GETTABLEKS                       R14 R7 K20 ["X"]
       67 GETTABLEKS                       R15 R6 K20 ["X"]
       69 SUB                              R13 R14 R15
       70 GETTABLEKS                       R14 R9 K20 ["X"]
       72 SUB                              R12 R13 R14
       73 GETTABLEKS                       R13 R8 K20 ["X"]
       75 SUB                              R11 R12 R13
       76 GETTABLEKS                       R12 R5 K20 ["X"]
       78 ADD                              R10 R11 R12
       79 JUMP                             ; [+8]
       80 GETTABLEKS                       R12 R9 K20 ["X"]
       82 GETTABLEKS                       R13 R5 K20 ["X"]
       84 SUB                              R11 R12 R13
       85 GETTABLEKS                       R12 R6 K20 ["X"]
       87 ADD                              R10 R11 R12
       88 GETTABLEKS                       R13 R0 K17 ["props"]
       90 GETTABLEKS                       R12 R13 K18 ["inverted"]
       92 JUMPIFNOT                        R12 ; [+20]
       93 GETTABLEKS                       R13 R0 K17 ["props"]
       95 GETTABLEKS                       R12 R13 K19 ["horizontal"]
       97 JUMPIF                           R12 ; [+15]
       98 GETTABLEKS                       R15 R7 K21 ["Y"]
      100 GETTABLEKS                       R16 R6 K21 ["Y"]
      102 SUB                              R14 R15 R16
      103 GETTABLEKS                       R15 R9 K21 ["Y"]
      105 SUB                              R13 R14 R15
      106 GETTABLEKS                       R14 R8 K21 ["Y"]
      108 SUB                              R12 R13 R14
      109 GETTABLEKS                       R13 R5 K21 ["Y"]
      111 ADD                              R11 R12 R13
      112 JUMP                             ; [+8]
      113 GETTABLEKS                       R13 R9 K21 ["Y"]
      115 GETTABLEKS                       R14 R5 K21 ["Y"]
      117 SUB                              R12 R13 R14
      118 GETTABLEKS                       R13 R6 K21 ["Y"]
      120 ADD                              R11 R12 R13
      121 DUPTABLE                         R12 K26 [{"width", "height", "x", "y"}]
      122 GETTABLEKS                       R14 R1 K16 ["AbsoluteSize"]
      124 GETTABLEKS                       R13 R14 K20 ["X"]
      126 SETTABLEKS                       R13 R12 K22 ["width"]
      128 GETTABLEKS                       R14 R1 K16 ["AbsoluteSize"]
      130 GETTABLEKS                       R13 R14 K21 ["Y"]
      132 SETTABLEKS                       R13 R12 K23 ["height"]
      134 SETTABLEKS                       R10 R12 K24 ["x"]
      136 SETTABLEKS                       R11 R12 K25 ["y"]
      138 DUPTABLE                         R13 K31 [{"offset", "length", "index", "inLayout"}]
      139 MOVE                             R16 R12
      140 NAMECALL                         R14 R0 K32 ["_selectOffset"]
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R14 R13 K27 ["offset"]
      145 MOVE                             R16 R12
      146 NAMECALL                         R14 R0 K33 ["_selectLength"]
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K28 ["length"]
      151 SETTABLEKS                       R3 R13 K29 ["index"]
      153 LOADB                            R14 1
      154 SETTABLEKS                       R14 R13 K30 ["inLayout"]
      156 GETTABLEKS                       R15 R0 K34 ["_frames"]
      158 GETTABLE                         R14 R15 R2
      159 JUMPIFNOT                        R14 ; [+22]
      160 GETTABLEKS                       R17 R13 K27 ["offset"]
      162 GETTABLEKS                       R18 R14 K27 ["offset"]
      164 SUB                              R16 R17 R18
      165 FASTCALL1                        MATH_ABS R16 ; [+2]
      166 GETIMPORT                        R15 K37 [math.abs]
      168 CALL                             R15 1 1
      169 LOADN                            R16 1
      170 JUMPIFLT                         R16 R15 ; [+11]
      172 GETTABLEKS                       R15 R13 K28 ["length"]
      174 GETTABLEKS                       R16 R14 K28 ["length"]
      176 JUMPIFNOTEQ                      R15 R16 ; [+5]
      178 GETTABLEKS                       R15 R14 K29 ["index"]
      180 JUMPIFEQ                         R3 R15 ; [+194]
      182 GETTABLEKS                       R16 R0 K17 ["props"]
      184 GETTABLEKS                       R15 R16 K38 ["getItem"]
      186 GETTABLEKS                       R17 R0 K17 ["props"]
      188 GETTABLEKS                       R16 R17 K39 ["data"]
      190 MOVE                             R17 R3
      191 CALL                             R15 2 1
      192 JUMPIF                           R14 ; [+24]
      193 GETTABLEKS                       R17 R0 K17 ["props"]
      195 GETTABLEKS                       R16 R17 K40 ["getItemLayout"]
      197 JUMPIF                           R16 ; [+19]
      198 FASTCALL1                        TYPEOF R15 ; [+3]
      199 MOVE                             R17 R15
      200 GETIMPORT                        R16 K42 [typeof]
      202 CALL                             R16 1 1
      203 JUMPIFNOTEQKS                    R16 K43 ["table"] ; [+13]
      205 GETTABLEKS                       R16 R15 K44 ["shouldResizeOnMount"]
      207 JUMPIFNOT                        R16 ; [+9]
      208 MOVE                             R20 R12
      209 NAMECALL                         R18 R0 K33 ["_selectLength"]
      211 CALL                             R18 2 1
      212 MOVE                             R19 R2
      213 MOVE                             R20 R3
      214 NAMECALL                         R16 R0 K45 ["recalculateFrames"]
      216 CALL                             R16 4 0
      217 JUMPIFNOT                        R14 ; [+65]
      218 GETTABLEKS                       R17 R0 K17 ["props"]
      220 GETTABLEKS                       R16 R17 K40 ["getItemLayout"]
      222 JUMPIF                           R16 ; [+60]
      223 GETTABLEKS                       R18 R13 K28 ["length"]
      225 GETTABLEKS                       R19 R14 K28 ["length"]
      227 SUB                              R17 R18 R19
      228 FASTCALL1                        MATH_ABS R17 ; [+2]
      229 GETIMPORT                        R16 K37 [math.abs]
      231 CALL                             R16 1 1
      232 LOADN                            R17 1
      233 JUMPIFNOTLE                      R17 R16 ; [+49]
      235 GETTABLEKS                       R17 R0 K17 ["props"]
      237 GETTABLEKS                       R16 R17 K46 ["UNSTABLE_forceSiblingLayoutUpdate"]
      239 JUMPIFNOT                        R16 ; [+30]
      240 LOADK                            R18 K47 ["Frame"]
      241 NAMECALL                         R16 R1 K4 ["FindFirstAncestorOfClass"]
      243 CALL                             R16 2 1
      244 JUMPIFNOT                        R16 ; [+4]
      245 NAMECALL                         R17 R16 K48 ["GetChildren"]
      247 CALL                             R17 1 1
      248 JUMP                             ; [+2]
      249 NEWTABLE                         R17 0 0
      251 GETTABLEKS                       R19 R0 K17 ["props"]
      253 GETTABLEKS                       R18 R19 K49 ["getItemCount"]
      255 GETTABLEKS                       R20 R0 K17 ["props"]
      257 GETTABLEKS                       R19 R20 K39 ["data"]
      259 CALL                             R18 1 1
      260 GETUPVAL                         R20 1
      261 GETTABLEKS                       R19 R20 K50 ["forEach"]
      263 MOVE                             R20 R17
      264 NEWCLOSURE                       R21 P0
      265 CAPTURE                          VAL R3
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R0
      268 CALL                             R19 2 0
      269 JUMP                             ; [+13]
      270 GETUPVAL                         R17 1
      271 GETTABLEKS                       R16 R17 K50 ["forEach"]
      273 GETUPVAL                         R18 2
      274 GETTABLEKS                       R17 R18 K51 ["keys"]
      276 GETTABLEKS                       R18 R0 K34 ["_frames"]
      278 CALL                             R17 1 1
      279 NEWCLOSURE                       R18 P1
      280 CAPTURE                          VAL R0
      281 CAPTURE                          VAL R3
      282 CALL                             R16 2 0
      283 GETTABLEKS                       R16 R0 K52 ["_totalCellLength"]
      285 GETTABLEKS                       R18 R13 K28 ["length"]
      287 GETUPVAL                         R21 3
      288 GETTABLEKS                       R20 R21 K53 ["toJSBoolean"]
      290 MOVE                             R21 R14
      291 CALL                             R20 1 1
      292 JUMPIFNOT                        R20 ; [+3]
      293 GETTABLEKS                       R19 R14 K28 ["length"]
      295 JUMP                             ; [+1]
      296 LOADN                            R19 0
      297 SUB                              R17 R18 R19
      298 ADD                              R16 R16 R17
      299 SETTABLEKS                       R16 R0 K52 ["_totalCellLength"]
      301 GETTABLEKS                       R16 R0 K54 ["_totalCellsMeasured"]
      303 GETUPVAL                         R19 3
      304 GETTABLEKS                       R18 R19 K53 ["toJSBoolean"]
      306 MOVE                             R19 R14
      307 CALL                             R18 1 1
      308 JUMPIFNOT                        R18 ; [+2]
      309 LOADN                            R17 0
      310 JUMP                             ; [+1]
      311 LOADN                            R17 1
      312 ADD                              R16 R16 R17
      313 SETTABLEKS                       R16 R0 K54 ["_totalCellsMeasured"]
      315 GETTABLEKS                       R17 R0 K52 ["_totalCellLength"]
      317 GETTABLEKS                       R18 R0 K54 ["_totalCellsMeasured"]
      319 DIV                              R16 R17 R18
      320 SETTABLEKS                       R16 R0 K55 ["_averageCellLength"]
      322 GETTABLEKS                       R16 R0 K34 ["_frames"]
      324 SETTABLE                         R13 R16 R2
      325 GETTABLEKS                       R17 R0 K56 ["_highestMeasuredFrameIndex"]
      327 FASTCALL2                        MATH_MAX R17 R3 ; [+4]
      329 MOVE                             R18 R3
      330 GETIMPORT                        R16 K58 [math.max]
      332 CALL                             R16 2 1
      333 SETTABLEKS                       R16 R0 K56 ["_highestMeasuredFrameIndex"]
      335 NAMECALL                         R16 R0 K59 ["_scheduleCellsToRenderUpdate"]
      337 CALL                             R16 1 0
      338 GETTABLEKS                       R17 R0 K17 ["props"]
      340 GETTABLEKS                       R16 R17 K18 ["inverted"]
      342 JUMPIFNOT                        R16 ; [+38]
      343 GETTABLEKS                       R17 R0 K17 ["props"]
      345 GETTABLEKS                       R16 R17 K40 ["getItemLayout"]
      347 JUMPIF                           R16 ; [+33]
      348 GETTABLEKS                       R17 R0 K60 ["state"]
      350 GETTABLEKS                       R16 R17 K61 ["last"]
      352 GETTABLEKS                       R18 R0 K17 ["props"]
      354 GETTABLEKS                       R17 R18 K49 ["getItemCount"]
      356 GETTABLEKS                       R19 R0 K17 ["props"]
      358 GETTABLEKS                       R18 R19 K39 ["data"]
      360 CALL                             R17 1 1
      361 JUMPIFNOTEQ                      R16 R17 ; [+19]
      363 GETTABLEKS                       R16 R0 K56 ["_highestMeasuredFrameIndex"]
      365 GETTABLEKS                       R18 R0 K60 ["state"]
      367 GETTABLEKS                       R17 R18 K61 ["last"]
      369 JUMPIFNOTEQ                      R16 R17 ; [+11]
      371 NAMECALL                         R16 R0 K62 ["forceUpdate"]
      373 CALL                             R16 1 0
      374 JUMP                             ; [+6]
      375 GETTABLEKS                       R16 R0 K34 ["_frames"]
      377 GETTABLE                         R15 R16 R2
      378 LOADB                            R16 1
      379 SETTABLEKS                       R16 R15 K30 ["inLayout"]
      381 MOVE                             R17 R2
      382 NAMECALL                         R15 R0 K63 ["_triggerRemeasureForChildListsInCell"]
      384 CALL                             R15 2 0
      385 NAMECALL                         R15 R0 K64 ["_computeBlankness"]
      387 CALL                             R15 1 0
      388 GETTABLEKS                       R18 R0 K17 ["props"]
      390 GETTABLEKS                       R17 R18 K39 ["data"]
      392 NAMECALL                         R15 R0 K65 ["_updateViewableItems"]
      394 CALL                             R15 2 0
      395 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R2 R1 K2 ["ref"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R1 K2 ["ref"]
       13 NAMECALL                         R2 R2 K3 ["measureLayoutRelativeToContainingList"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_86:
        0 GETTABLEKS                       R2 R0 K0 ["_cellKeysToChildListKeys"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R3 R2 K2 ["forEach"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+11]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["_frames"]
        6 GETTABLE                         R2 R3 R0
        7 GETTABLEKS                       R1 R2 K1 ["index"]
        9 GETUPVAL                         R2 2
       10 JUMPIFNOTLE                      R2 R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K0 ["_frames"]
       16 GETTABLE                         R1 R2 R0
       17 GETTABLEKS                       R2 R1 K1 ["index"]
       19 ADDK                             R2 R2 K2 [1]
       20 SETTABLEKS                       R2 R1 K1 ["index"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K0 ["_frames"]
       25 GETTABLE                         R1 R2 R0
       26 GETTABLEKS                       R2 R1 K3 ["offset"]
       28 GETUPVAL                         R3 3
       29 ADD                              R2 R2 R3
       30 SETTABLEKS                       R2 R1 K3 ["offset"]
       32 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["forEach"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["keys"]
        6 GETTABLEKS                       R6 R0 K2 ["_frames"]
        8 CALL                             R5 1 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R0 K3 ["_highestMeasuredFrameIndex"]
       17 ADDK                             R4 R4 K4 [1]
       18 SETTABLEKS                       R4 R0 K3 ["_highestMeasuredFrameIndex"]
       20 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_nestedChildLists"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R2 R1 K2 ["ref"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R1 K2 ["ref"]
       13 NAMECALL                         R2 R2 K3 ["measureLayoutRelativeToContainingList"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_90:
        0 JUMPIFNOT                        R0 ; [+5]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K0 ["forEach"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 0
        2 DUPTABLE                         R7 K2 [{"x", "y"}]
        3 SETTABLEKS                       R0 R7 K0 ["x"]
        5 SETTABLEKS                       R1 R7 K1 ["y"]
        7 NAMECALL                         R5 R5 K3 ["_selectOffset"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K4 ["_offsetFromParentVirtualizedList"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K5 ["_scrollMetrics"]
       15 GETUPVAL                         R5 0
       16 DUPTABLE                         R7 K8 [{"width", "height"}]
       17 SETTABLEKS                       R2 R7 K6 ["width"]
       19 SETTABLEKS                       R3 R7 K7 ["height"]
       21 NAMECALL                         R5 R5 K9 ["_selectLength"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K10 ["contentLength"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K11 ["_convertParentScrollMetrics"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K12 ["context"]
       32 GETTABLEKS                       R5 R6 K13 ["getScrollMetrics"]
       34 CALL                             R5 0 -1
       35 CALL                             R4 -1 1
       36 LOADB                            R5 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K5 ["_scrollMetrics"]
       40 GETTABLEKS                       R6 R7 K14 ["visibleLength"]
       42 GETTABLEKS                       R7 R4 K14 ["visibleLength"]
       44 JUMPIFNOTEQ                      R6 R7 ; [+12]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K5 ["_scrollMetrics"]
       49 GETTABLEKS                       R6 R7 K15 ["offset"]
       51 GETTABLEKS                       R7 R4 K15 ["offset"]
       53 JUMPIFNOTEQ                      R6 R7 ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 JUMPIFNOT                        R5 ; [+22]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K5 ["_scrollMetrics"]
       61 GETTABLEKS                       R7 R4 K14 ["visibleLength"]
       63 SETTABLEKS                       R7 R6 K14 ["visibleLength"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K5 ["_scrollMetrics"]
       68 GETTABLEKS                       R7 R4 K15 ["offset"]
       70 SETTABLEKS                       R7 R6 K15 ["offset"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R6 R7 K16 ["_cellKeysToChildListKeys"]
       75 NEWCLOSURE                       R8 P0
       76 CAPTURE                          UPVAL U0
       77 NAMECALL                         R6 R6 K17 ["forEach"]
       79 CALL                             R6 2 0
       80 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["warn"]
        3 LOADK                            R2 K1 ["VirtualizedList: Encountered an error while measuring a list's offset from its containing VirtualizedList."]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toJSBoolean"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["_scrollRef"]
        6 CALL                             R0 1 1
        7 JUMPIF                           R0 ; [+2]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["_scrollRef"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["context"]
       16 GETTABLEKS                       R2 R3 K3 ["getOutermostParentListRef"]
       18 CALL                             R2 0 1
       19 NAMECALL                         R2 R2 K4 ["getScrollRef"]
       21 CALL                             R2 1 1
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U1
       24 DUPCLOSURE                       R4 K5 [PROTO_92]
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R0 R0 K6 ["measureLayout"]
       28 CALL                             R0 4 0
       29 LOADNIL                          R0
       30 RETURN                           R0 1

PROTO_94:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+7]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["warn"]
       11 LOADK                            R4 K3 ["measureLayoutRelativeToContainingList threw an error"]
       12 GETTABLEKS                       R5 R2 K4 ["stack"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_95:
        0 NAMECALL                         R4 R0 K0 ["_getCellKey"]
        2 CALL                             R4 1 1
        3 MOVE                             R2 R4
        4 LOADK                            R3 K1 ["-footer"]
        5 CONCAT                           R1 R2 R3
        6 RETURN                           R1 1

PROTO_96:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"key", "Name", "style"}]
        5 LOADK                            R6 K5 ["f"]
        6 FASTCALL1                        TOSTRING R1 ; [+3]
        7 MOVE                             R8 R1
        8 GETIMPORT                        R7 K7 [tostring]
       10 CALL                             R7 1 1
       11 CONCAT                           R5 R6 R7
       12 SETTABLEKS                       R5 R4 K1 ["key"]
       14 LOADK                            R6 K5 ["f"]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K7 [tostring]
       19 CALL                             R7 1 1
       20 CONCAT                           R5 R6 R7
       21 SETTABLEKS                       R5 R4 K2 ["Name"]
       23 NEWTABLE                         R5 0 3
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K8 ["debugOverlayBase"]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K9 ["debugOverlayFrame"]
       31 DUPTABLE                         R8 K12 [{"top", "height"}]
       32 GETTABLEKS                       R10 R0 K13 ["offset"]
       34 GETUPVAL                         R11 3
       35 MUL                              R9 R10 R11
       36 SETTABLEKS                       R9 R8 K10 ["top"]
       38 GETTABLEKS                       R10 R0 K14 ["length"]
       40 GETUPVAL                         R11 3
       41 MUL                              R9 R10 R11
       42 SETTABLEKS                       R9 R8 K11 ["height"]
       44 SETLIST                          R5 R6 3 [1]
       46 SETTABLEKS                       R5 R4 K3 ["style"]
       48 CALL                             R2 2 -1
       49 RETURN                           R2 -1

PROTO_97:
        0 GETTABLEKS                       R3 R0 K0 ["_scrollMetrics"]
        2 GETTABLEKS                       R2 R3 K1 ["visibleLength"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["toJSBoolean"]
        7 GETTABLEKS                       R6 R0 K0 ["_scrollMetrics"]
        9 GETTABLEKS                       R5 R6 K3 ["contentLength"]
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R4 R0 K0 ["_scrollMetrics"]
       15 GETTABLEKS                       R3 R4 K3 ["contentLength"]
       17 JUMP                             ; [+1]
       18 LOADN                            R3 1
       19 DIV                              R1 R2 R3
       20 NEWTABLE                         R2 0 0
       22 GETTABLEKS                       R4 R0 K4 ["props"]
       24 GETTABLEKS                       R3 R4 K5 ["getItemCount"]
       26 GETTABLEKS                       R5 R0 K4 ["props"]
       28 GETTABLEKS                       R4 R5 K6 ["data"]
       30 CALL                             R3 1 1
       31 LOADN                            R4 1
       32 JUMPIFNOTLE                      R4 R3 ; [+21]
       34 GETTABLEKS                       R5 R0 K7 ["_getFrameMetricsApprox"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K2 ["toJSBoolean"]
       41 GETTABLEKS                       R7 R5 K8 ["inLayout"]
       43 CALL                             R6 1 1
       44 JUMPIFNOT                        R6 ; [+7]
       45 FASTCALL2                        TABLE_INSERT R2 R5 ; [+5]
       47 MOVE                             R7 R2
       48 MOVE                             R8 R5
       49 GETIMPORT                        R6 K11 [table.insert]
       51 CALL                             R6 2 0
       52 ADDK                             R4 R4 K12 [1]
       53 JUMPBACK                         ; [-22]
       54 GETTABLEKS                       R6 R0 K7 ["_getFrameMetricsApprox"]
       56 GETTABLEKS                       R8 R0 K13 ["state"]
       58 GETTABLEKS                       R7 R8 K14 ["first"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R5 R6 K15 ["offset"]
       63 GETTABLEKS                       R6 R0 K7 ["_getFrameMetricsApprox"]
       65 GETTABLEKS                       R8 R0 K13 ["state"]
       67 GETTABLEKS                       R7 R8 K16 ["last"]
       69 CALL                             R6 1 1
       70 GETTABLEKS                       R9 R6 K15 ["offset"]
       72 GETTABLEKS                       R10 R6 K17 ["length"]
       74 ADD                              R8 R9 R10
       75 SUB                              R7 R8 R5
       76 GETTABLEKS                       R9 R0 K0 ["_scrollMetrics"]
       78 GETTABLEKS                       R8 R9 K15 ["offset"]
       80 GETTABLEKS                       R10 R0 K0 ["_scrollMetrics"]
       82 GETTABLEKS                       R9 R10 K1 ["visibleLength"]
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R10 R11 K18 ["createElement"]
       87 GETUPVAL                         R11 2
       88 DUPTABLE                         R12 K20 [{"style"}]
       89 NEWTABLE                         R13 0 2
       91 GETUPVAL                         R15 3
       92 GETTABLEKS                       R14 R15 K21 ["debugOverlayBase"]
       94 GETUPVAL                         R16 3
       95 GETTABLEKS                       R15 R16 K22 ["debugOverlay"]
       97 SETLIST                          R13 R14 2 [1]
       99 SETTABLEKS                       R13 R12 K19 ["style"]
      101 GETUPVAL                         R14 4
      102 GETTABLEKS                       R13 R14 K23 ["map"]
      104 MOVE                             R14 R2
      105 NEWCLOSURE                       R15 P0
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          UPVAL U3
      109 CAPTURE                          VAL R1
      110 CALL                             R13 2 1
      111 GETUPVAL                         R15 1
      112 GETTABLEKS                       R14 R15 K18 ["createElement"]
      114 GETUPVAL                         R15 2
      115 DUPTABLE                         R16 K25 [{"Name", "style"}]
      116 LOADK                            R17 K26 ["DebugOverlayLast"]
      117 SETTABLEKS                       R17 R16 K24 ["Name"]
      119 NEWTABLE                         R17 0 3
      121 GETUPVAL                         R19 3
      122 GETTABLEKS                       R18 R19 K21 ["debugOverlayBase"]
      124 GETUPVAL                         R20 3
      125 GETTABLEKS                       R19 R20 K27 ["debugOverlayFrameLast"]
      127 DUPTABLE                         R20 K30 [{"top", "height"}]
      128 MUL                              R21 R5 R1
      129 SETTABLEKS                       R21 R20 K28 ["top"]
      131 MUL                              R21 R7 R1
      132 SETTABLEKS                       R21 R20 K29 ["height"]
      134 SETLIST                          R17 R18 3 [1]
      136 SETTABLEKS                       R17 R16 K19 ["style"]
      138 CALL                             R14 2 1
      139 GETUPVAL                         R16 1
      140 GETTABLEKS                       R15 R16 K18 ["createElement"]
      142 GETUPVAL                         R16 2
      143 DUPTABLE                         R17 K25 [{"Name", "style"}]
      144 LOADK                            R18 K31 ["DebugOverlayVis"]
      145 SETTABLEKS                       R18 R17 K24 ["Name"]
      147 NEWTABLE                         R18 0 3
      149 GETUPVAL                         R20 3
      150 GETTABLEKS                       R19 R20 K21 ["debugOverlayBase"]
      152 GETUPVAL                         R21 3
      153 GETTABLEKS                       R20 R21 K32 ["debugOverlayFrameVis"]
      155 DUPTABLE                         R21 K30 [{"top", "height"}]
      156 MUL                              R22 R8 R1
      157 SETTABLEKS                       R22 R21 K28 ["top"]
      159 MUL                              R22 R9 R1
      160 SETTABLEKS                       R22 R21 K29 ["height"]
      162 SETLIST                          R18 R19 3 [1]
      164 SETTABLEKS                       R18 R17 K19 ["style"]
      166 CALL                             R15 2 -1
      167 CALL                             R10 -1 -1
      168 RETURN                           R10 -1

PROTO_98:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R5 K1 ["horizontal"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+3]
        6 LOADB                            R3 0
        7 JUMP                             ; [+1]
        8 MOVE                             R3 R4
        9 JUMPIF                           R3 ; [+3]
       10 GETTABLEKS                       R2 R1 K2 ["height"]
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R1 K3 ["width"]
       15 RETURN                           R2 1

PROTO_99:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R5 K1 ["horizontal"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+3]
        6 LOADB                            R3 0
        7 JUMP                             ; [+1]
        8 MOVE                             R3 R4
        9 JUMPIF                           R3 ; [+3]
       10 GETTABLEKS                       R2 R1 K2 ["y"]
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R1 K3 ["x"]
       15 RETURN                           R2 1

PROTO_100:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R5 K1 ["data"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R5 K2 ["getItemCount"]
        8 GETTABLEKS                       R5 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R5 K3 ["onEndReached"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["onEndReachedThreshold"]
       16 GETTABLEKS                       R8 R0 K5 ["_scrollMetrics"]
       18 GETTABLEKS                       R5 R8 K6 ["contentLength"]
       20 GETTABLEKS                       R8 R0 K5 ["_scrollMetrics"]
       22 GETTABLEKS                       R6 R8 K7 ["visibleLength"]
       24 GETTABLEKS                       R8 R0 K5 ["_scrollMetrics"]
       26 GETTABLEKS                       R7 R8 K8 ["offset"]
       28 SUB                              R9 R5 R6
       29 SUB                              R8 R9 R7
       30 JUMPIFEQKNIL                     R4 ; [+3]
       32 MUL                              R9 R4 R6
       33 JUMP                             ; [+1]
       34 LOADN                            R9 2
       35 JUMPIFNOT                        R3 ; [+31]
       36 GETTABLEKS                       R11 R0 K9 ["state"]
       38 GETTABLEKS                       R10 R11 K10 ["last"]
       40 MOVE                             R11 R2
       41 MOVE                             R12 R1
       42 CALL                             R11 1 1
       43 JUMPIFNOTEQ                      R10 R11 ; [+23]
       45 JUMPIFNOTLT                      R8 R9 ; [+21]
       47 GETTABLEKS                       R11 R0 K5 ["_scrollMetrics"]
       49 GETTABLEKS                       R10 R11 K6 ["contentLength"]
       51 GETTABLEKS                       R11 R0 K11 ["_sentEndForContentLength"]
       53 JUMPIFEQ                         R10 R11 ; [+13]
       55 GETTABLEKS                       R11 R0 K5 ["_scrollMetrics"]
       57 GETTABLEKS                       R10 R11 K6 ["contentLength"]
       59 SETTABLEKS                       R10 R0 K11 ["_sentEndForContentLength"]
       61 MOVE                             R10 R3
       62 DUPTABLE                         R11 K13 [{"distanceFromEnd"}]
       63 SETTABLEKS                       R8 R11 K12 ["distanceFromEnd"]
       65 CALL                             R10 1 0
       66 RETURN                           R0 0
       67 JUMPIFNOTLT                      R9 R8 ; [+4]
       69 LOADN                            R10 0
       70 SETTABLEKS                       R10 R0 K11 ["_sentEndForContentLength"]
       72 RETURN                           R0 0

PROTO_101:
        0 GETTABLEKS                       R4 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R4 K1 ["first"]
        4 GETTABLEKS                       R4 R0 K0 ["state"]
        6 GETTABLEKS                       R2 R4 K2 ["last"]
        8 GETTABLEKS                       R4 R0 K0 ["state"]
       10 GETTABLEKS                       R3 R4 K3 ["scrollPositionDelta"]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R7 R0 K4 ["_scrollMetrics"]
       18 GETTABLEKS                       R4 R7 K5 ["offset"]
       20 GETTABLEKS                       R7 R0 K4 ["_scrollMetrics"]
       22 GETTABLEKS                       R5 R7 K6 ["visibleLength"]
       24 GETTABLEKS                       R7 R0 K4 ["_scrollMetrics"]
       26 GETTABLEKS                       R6 R7 K7 ["velocity"]
       28 GETTABLEKS                       R8 R0 K8 ["props"]
       30 GETTABLEKS                       R7 R8 K9 ["getItemCount"]
       32 GETTABLEKS                       R9 R0 K8 ["props"]
       34 GETTABLEKS                       R8 R9 K10 ["data"]
       36 CALL                             R7 1 1
       37 LOADB                            R8 0
       38 GETTABLEKS                       R11 R0 K8 ["props"]
       40 GETTABLEKS                       R10 R11 K11 ["onEndReachedThreshold"]
       42 JUMPIFNOTEQKNIL                  R10 ; [+3]
       44 LOADN                            R9 2
       45 JUMP                             ; [+1]
       46 MOVE                             R9 R10
       47 MUL                              R11 R9 R5
       48 DIVK                             R10 R11 K12 [2]
       49 LOADN                            R11 1
       50 JUMPIFNOTLT                      R11 R1 ; [+23]
       52 GETTABLEKS                       R13 R0 K13 ["_getFrameMetricsApprox"]
       54 MOVE                             R14 R1
       55 CALL                             R13 1 1
       56 GETTABLEKS                       R12 R13 K5 ["offset"]
       58 SUB                              R11 R4 R12
       59 MOVE                             R12 R8
       60 JUMPIF                           R12 ; [+12]
       61 LOADB                            R12 1
       62 LOADN                            R13 0
       63 JUMPIFLT                         R11 R13 ; [+9]
       65 LOADB                            R12 0
       66 LOADN                            R13 254
       67 JUMPIFNOTLT                      R6 R13 ; [+5]
       69 JUMPIFLT                         R11 R10 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 MOVE                             R8 R12
       74 JUMPIFNOTLT                      R2 R7 ; [+21]
       76 GETTABLEKS                       R13 R0 K13 ["_getFrameMetricsApprox"]
       78 MOVE                             R14 R2
       79 CALL                             R13 1 1
       80 GETTABLEKS                       R12 R13 K5 ["offset"]
       82 ADD                              R13 R4 R5
       83 SUB                              R11 R12 R13
       84 MOVE                             R12 R8
       85 JUMPIF                           R12 ; [+9]
       86 LOADB                            R12 1
       87 LOADN                            R13 0
       88 JUMPIFLT                         R11 R13 ; [+6]
       90 LOADN                            R13 2
       91 JUMPIFLT                         R13 R6 ; [+2]
       93 LOADB                            R12 0 +1
       94 LOADB                            R12 1
       95 MOVE                             R8 R12
       96 JUMPIFNOT                        R8 ; [+31]
       97 GETUPVAL                         R12 0
       98 GETTABLEKS                       R11 R12 K14 ["toJSBoolean"]
      100 GETTABLEKS                       R12 R0 K15 ["_averageCellLength"]
      102 CALL                             R11 1 1
      103 JUMPIF                           R11 ; [+5]
      104 GETTABLEKS                       R12 R0 K8 ["props"]
      106 GETTABLEKS                       R11 R12 K16 ["getItemLayout"]
      108 JUMPIFNOT                        R11 ; [+19]
      109 GETTABLEKS                       R11 R0 K17 ["_hiPriInProgress"]
      111 JUMPIF                           R11 ; [+16]
      112 LOADB                            R11 1
      113 SETTABLEKS                       R11 R0 K17 ["_hiPriInProgress"]
      115 GETTABLEKS                       R11 R0 K18 ["_updateCellsToRenderBatcher"]
      117 DUPTABLE                         R13 K20 [{"abort"}]
      118 LOADB                            R14 1
      119 SETTABLEKS                       R14 R13 K19 ["abort"]
      121 NAMECALL                         R11 R11 K21 ["dispose"]
      123 CALL                             R11 2 0
      124 GETTABLEKS                       R11 R0 K22 ["_updateCellsToRender"]
      126 CALL                             R11 0 0
      127 RETURN                           R0 0
      128 GETTABLEKS                       R11 R0 K18 ["_updateCellsToRenderBatcher"]
      130 NAMECALL                         R11 R11 K23 ["schedule"]
      132 CALL                             R11 1 0
      133 RETURN                           R0 0

PROTO_102:
        0 GETTABLEKS                       R1 R0 K0 ["viewabilityHelper"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["_scrollMetrics"]
        8 GETTABLEKS                       R4 R5 K2 ["offset"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K1 ["_scrollMetrics"]
       13 GETTABLEKS                       R5 R6 K3 ["visibleLength"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K4 ["_getFrameMetrics"]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K5 ["_createViewToken"]
       21 GETTABLEKS                       R8 R0 K6 ["onViewableItemsChanged"]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R9 R10 K7 ["state"]
       26 NAMECALL                         R1 R1 K8 ["onUpdate"]
       28 CALL                             R1 8 0
       29 RETURN                           R0 0

PROTO_103:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["getItemCount"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["forEach"]
        7 GETTABLEKS                       R4 R0 K3 ["_viewabilityTuples"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R0 R2 K1 ["cellKey"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["prevCellKey"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["onUpdateSeparators"]
       15 NEWTABLE                         R3 0 2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 SETLIST                          R3 R4 2 [1]
       21 DUPTABLE                         R4 K5 [{"highlighted"}]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K4 ["highlighted"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R0 R2 K1 ["cellKey"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["prevCellKey"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["onUpdateSeparators"]
       15 NEWTABLE                         R3 0 2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 SETLIST                          R3 R4 2 [1]
       21 DUPTABLE                         R4 K5 [{"highlighted"}]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K4 ["highlighted"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R2 R4 K1 ["cellKey"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["prevCellKey"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["props"]
       13 GETTABLEKS                       R4 R5 K3 ["onUpdateSeparators"]
       15 NEWTABLE                         R5 0 1
       17 JUMPIFNOTEQKS                    R0 K4 ["leading"] ; [+3]
       19 MOVE                             R6 R3
       20 JUMP                             ; [+1]
       21 MOVE                             R6 R2
       22 SETLIST                          R5 R6 1 [1]
       24 MOVE                             R6 R1
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

PROTO_107:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K2 [{"separatorProps"}]
        3 DUPTABLE                         R3 K5 [{"highlighted", "leadingItem"}]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K3 ["highlighted"]
        7 GETTABLEKS                       R5 R0 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K6 ["item"]
       11 SETTABLEKS                       R4 R3 K4 ["leadingItem"]
       13 SETTABLEKS                       R3 R2 K1 ["separatorProps"]
       15 SETTABLEKS                       R2 R0 K7 ["state"]
       17 DUPTABLE                         R2 K11 [{"highlight", "unhighlight", "updateProps"}]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R2 K8 ["highlight"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R3 R2 K9 ["unhighlight"]
       26 NEWCLOSURE                       R3 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R3 R2 K10 ["updateProps"]
       30 SETTABLEKS                       R2 R0 K12 ["_separators"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K13 ["createRef"]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R0 K14 ["_nativeRef"]
       38 RETURN                           R0 0

PROTO_108:
        0 DUPTABLE                         R2 K1 [{"separatorProps"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K2 ["assign"]
        4 NEWTABLE                         R4 0 0
        6 GETTABLEKS                       R5 R1 K0 ["separatorProps"]
        8 DUPTABLE                         R6 K4 [{"leadingItem"}]
        9 GETTABLEKS                       R7 R0 K5 ["item"]
       11 SETTABLEKS                       R7 R6 K3 ["leadingItem"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K0 ["separatorProps"]
       16 RETURN                           R2 1

PROTO_109:
        0 DUPTABLE                         R1 K1 [{"separatorProps"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["assign"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["separatorProps"]
        8 GETUPVAL                         R5 1
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K0 ["separatorProps"]
       12 RETURN                           R1 1

PROTO_110:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R0 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_111:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["onUnmount"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["cellKey"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
        3 MOVE                             R6 R1
        4 CALL                             R5 1 1
        5 JUMPIFNOT                        R5 ; [+11]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
        9 MOVE                             R6 R2
       10 CALL                             R5 1 1
       11 JUMPIFNOT                        R5 ; [+5]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K1 ["warn"]
       15 LOADK                            R6 K2 ["VirtualizedList: Both ListItemComponent and renderItem props are present. ListItemComponent will take precedence over renderItem."]
       16 CALL                             R5 1 0
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       20 MOVE                             R6 R2
       21 CALL                             R5 1 1
       22 JUMPIFNOT                        R5 ; [+15]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K3 ["createElement"]
       26 MOVE                             R6 R2
       27 DUPTABLE                         R7 K7 [{"item", "index", "separators"}]
       28 SETTABLEKS                       R3 R7 K4 ["item"]
       30 SETTABLEKS                       R4 R7 K5 ["index"]
       32 GETTABLEKS                       R8 R0 K8 ["_separators"]
       34 SETTABLEKS                       R8 R7 K6 ["separators"]
       36 CALL                             R5 2 -1
       37 RETURN                           R5 -1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       41 MOVE                             R6 R1
       42 CALL                             R5 1 1
       43 JUMPIFNOT                        R5 ; [+12]
       44 MOVE                             R5 R1
       45 DUPTABLE                         R6 K7 [{"item", "index", "separators"}]
       46 SETTABLEKS                       R3 R6 K4 ["item"]
       48 SETTABLEKS                       R4 R6 K5 ["index"]
       50 GETTABLEKS                       R7 R0 K8 ["_separators"]
       52 SETTABLEKS                       R7 R6 K6 ["separators"]
       54 CALL                             R5 1 -1
       55 RETURN                           R5 -1
       56 GETUPVAL                         R5 3
       57 LOADB                            R6 0
       58 LOADK                            R7 K9 ["VirtualizedList: Either ListItemComponent or renderItem props are required but none were found."]
       59 CALL                             R5 2 0
       60 LOADNIL                          R5
       61 RETURN                           R5 1

PROTO_113:
        0 GETTABLEKS                       R1 R0 K0 ["_nativeRef"]
        2 RETURN                           R1 1

PROTO_114:
        0 GETTABLEKS                       R9 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R9 K1 ["CellRendererComponent"]
        4 GETTABLEKS                       R9 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R9 K2 ["ItemSeparatorComponent"]
        8 GETTABLEKS                       R9 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R9 K3 ["fillRateHelper"]
       12 GETTABLEKS                       R9 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R9 K4 ["horizontal"]
       16 GETTABLEKS                       R9 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R9 K5 ["item"]
       20 GETTABLEKS                       R9 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R9 K6 ["index"]
       24 GETTABLEKS                       R9 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R9 K7 ["inversionStyle"]
       28 GETTABLEKS                       R9 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R9 K8 ["parentProps"]
       32 GETTABLEKS                       R9 R8 K9 ["renderItem"]
       34 GETTABLEKS                       R10 R8 K10 ["getItemLayout"]
       36 GETTABLEKS                       R11 R8 K11 ["ListItemComponent"]
       38 MOVE                             R14 R9
       39 MOVE                             R15 R11
       40 MOVE                             R16 R5
       41 MOVE                             R17 R6
       42 NAMECALL                         R12 R0 K12 ["_renderElement"]
       44 CALL                             R12 5 1
       45 JUMPIFNOT                        R10 ; [+9]
       46 GETTABLEKS                       R14 R8 K13 ["debug"]
       48 JUMPIF                           R14 ; [+6]
       49 NAMECALL                         R14 R3 K14 ["enabled"]
       51 CALL                             R14 1 1
       52 JUMPIF                           R14 ; [+2]
       53 LOADNIL                          R13
       54 JUMP                             ; [+4]
       55 GETTABLEKS                       R14 R0 K0 ["props"]
       57 GETTABLEKS                       R13 R14 K15 ["onLayout"]
       59 JUMPIFNOT                        R2 ; [+21]
       60 GETUPVAL                         R15 0
       61 GETTABLEKS                       R14 R15 K16 ["createElement"]
       63 MOVE                             R15 R2
       64 GETUPVAL                         R17 1
       65 GETTABLEKS                       R16 R17 K17 ["assign"]
       67 GETTABLEKS                       R18 R0 K18 ["state"]
       69 GETTABLEKS                       R17 R18 K19 ["separatorProps"]
       71 DUPTABLE                         R18 K21 [{"LayoutOrder"}]
       72 JUMPIFNOT                        R7 ; [+2]
       73 LOADN                            R19 255
       74 JUMP                             ; [+1]
       75 LOADN                            R19 1
       76 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
       78 CALL                             R16 2 -1
       79 CALL                             R14 -1 1
       80 JUMP                             ; [+1]
       81 MOVE                             R14 R2
       82 GETUPVAL                         R17 2
       83 GETTABLEKS                       R16 R17 K22 ["toJSBoolean"]
       85 MOVE                             R17 R7
       86 CALL                             R16 1 1
       87 JUMPIFNOT                        R16 ; [+19]
       88 JUMPIFNOT                        R4 ; [+9]
       89 NEWTABLE                         R15 0 2
       91 GETUPVAL                         R17 3
       92 GETTABLEKS                       R16 R17 K23 ["rowReverse"]
       94 MOVE                             R17 R7
       95 SETLIST                          R15 R16 2 [1]
       97 JUMP                             ; [+20]
       98 NEWTABLE                         R15 0 2
      100 GETUPVAL                         R17 3
      101 GETTABLEKS                       R16 R17 K24 ["columnReverse"]
      103 MOVE                             R17 R7
      104 SETLIST                          R15 R16 2 [1]
      106 JUMP                             ; [+11]
      107 JUMPIFNOT                        R4 ; [+9]
      108 NEWTABLE                         R15 0 2
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R16 R17 K25 ["row"]
      113 MOVE                             R17 R7
      114 SETLIST                          R15 R16 2 [1]
      116 JUMP                             ; [+1]
      117 MOVE                             R15 R7
      118 GETUPVAL                         R18 2
      119 GETTABLEKS                       R17 R18 K22 ["toJSBoolean"]
      121 MOVE                             R18 R1
      122 CALL                             R17 1 1
      123 JUMPIF                           R17 ; [+55]
      124 GETUPVAL                         R17 0
      125 GETTABLEKS                       R16 R17 K16 ["createElement"]
      127 GETUPVAL                         R17 4
      128 DUPTABLE                         R18 K30 [{"Name", "style", "onLayout", "LayoutOrder", "AutomaticSize", "nativeRef"}]
      129 LOADK                            R19 K31 ["CellRendererView"]
      130 SETTABLEKS                       R19 R18 K26 ["Name"]
      132 SETTABLEKS                       R15 R18 K27 ["style"]
      134 SETTABLEKS                       R13 R18 K15 ["onLayout"]
      136 JUMPIFNOT                        R7 ; [+2]
      137 MINUS                            R19 R6
      138 JUMP                             ; [+1]
      139 MOVE                             R19 R6
      140 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      142 JUMPIFNOT                        R4 ; [+3]
      143 GETIMPORT                        R19 K34 [Enum.AutomaticSize.X]
      145 JUMP                             ; [+2]
      146 GETIMPORT                        R19 K36 [Enum.AutomaticSize.Y]
      148 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      150 GETTABLEKS                       R19 R0 K37 ["_nativeRef"]
      152 SETTABLEKS                       R19 R18 K29 ["nativeRef"]
      154 JUMPIFNOT                        R14 ; [+19]
      155 GETUPVAL                         R20 0
      156 GETTABLEKS                       R19 R20 K16 ["createElement"]
      158 LOADK                            R20 K38 ["UIListLayout"]
      159 DUPTABLE                         R21 K41 [{"SortOrder", "FillDirection"}]
      160 GETIMPORT                        R22 K42 [Enum.SortOrder.LayoutOrder]
      162 SETTABLEKS                       R22 R21 K39 ["SortOrder"]
      164 JUMPIFNOT                        R4 ; [+3]
      165 GETIMPORT                        R22 K44 [Enum.FillDirection.Horizontal]
      167 JUMP                             ; [+2]
      168 GETIMPORT                        R22 K46 [Enum.FillDirection.Vertical]
      170 SETTABLEKS                       R22 R21 K40 ["FillDirection"]
      172 CALL                             R19 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R19
      175 MOVE                             R20 R12
      176 MOVE                             R21 R14
      177 CALL                             R16 5 1
      178 JUMP                             ; [+46]
      179 GETUPVAL                         R17 0
      180 GETTABLEKS                       R16 R17 K16 ["createElement"]
      182 MOVE                             R17 R1
      183 GETUPVAL                         R19 1
      184 GETTABLEKS                       R18 R19 K17 ["assign"]
      186 GETIMPORT                        R19 K49 [table.clone]
      188 GETTABLEKS                       R20 R0 K0 ["props"]
      190 CALL                             R19 1 1
      191 DUPTABLE                         R20 K50 [{"style", "onLayout", "nativeRef"}]
      192 SETTABLEKS                       R15 R20 K27 ["style"]
      194 SETTABLEKS                       R13 R20 K15 ["onLayout"]
      196 GETTABLEKS                       R21 R0 K37 ["_nativeRef"]
      198 SETTABLEKS                       R21 R20 K29 ["nativeRef"]
      200 CALL                             R18 2 1
      201 JUMPIFNOT                        R14 ; [+19]
      202 GETUPVAL                         R20 0
      203 GETTABLEKS                       R19 R20 K16 ["createElement"]
      205 LOADK                            R20 K38 ["UIListLayout"]
      206 DUPTABLE                         R21 K41 [{"SortOrder", "FillDirection"}]
      207 GETIMPORT                        R22 K42 [Enum.SortOrder.LayoutOrder]
      209 SETTABLEKS                       R22 R21 K39 ["SortOrder"]
      211 JUMPIFNOT                        R4 ; [+3]
      212 GETIMPORT                        R22 K44 [Enum.FillDirection.Horizontal]
      214 JUMP                             ; [+2]
      215 GETIMPORT                        R22 K46 [Enum.FillDirection.Vertical]
      217 SETTABLEKS                       R22 R21 K40 ["FillDirection"]
      219 CALL                             R19 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R19
      222 MOVE                             R20 R12
      223 MOVE                             R21 R14
      224 CALL                             R16 5 1
      225 GETUPVAL                         R18 0
      226 GETTABLEKS                       R17 R18 K16 ["createElement"]
      228 GETUPVAL                         R18 5
      229 DUPTABLE                         R19 K52 [{"cellKey"}]
      230 GETTABLEKS                       R21 R0 K0 ["props"]
      232 GETTABLEKS                       R20 R21 K51 ["cellKey"]
      234 SETTABLEKS                       R20 R19 K51 ["cellKey"]
      236 MOVE                             R20 R16
      237 CALL                             R17 3 -1
      238 RETURN                           R17 -1

PROTO_115:
        0 LOADK                            R2 K0 ["VirtualizedList trace:\n"]
        1 LOADK                            R6 K1 ["  Child (%s):\n"]
        2 GETUPVAL                         R10 0
        3 GETTABLEKS                       R9 R10 K2 ["toJSBoolean"]
        5 GETTABLEKS                       R10 R0 K3 ["horizontal"]
        7 CALL                             R9 1 1
        8 JUMPIFNOT                        R9 ; [+2]
        9 LOADK                            R8 K3 ["horizontal"]
       10 JUMP                             ; [+1]
       11 LOADK                            R8 K4 ["vertical"]
       12 NAMECALL                         R6 R6 K5 ["format"]
       14 CALL                             R6 2 1
       15 MOVE                             R3 R6
       16 LOADK                            R6 K6 ["    listKey: %s\n"]
       17 GETTABLEKS                       R8 R0 K7 ["key"]
       19 NAMECALL                         R6 R6 K5 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R4 R6
       23 LOADK                            R5 K8 ["    cellKey: %s"]
       24 GETTABLEKS                       R7 R0 K9 ["cellKey"]
       26 NAMECALL                         R5 R5 K5 ["format"]
       28 CALL                             R5 2 1
       29 CONCAT                           R1 R2 R5
       30 GETTABLEKS                       R2 R0 K10 ["parentDebugInfo"]
       32 JUMPIFNOT                        R2 ; [+29]
       33 MOVE                             R3 R1
       34 LOADK                            R7 K11 ["\n  Parent (%s):\n"]
       35 GETTABLEKS                       R10 R2 K3 ["horizontal"]
       37 JUMPIFNOT                        R10 ; [+2]
       38 LOADK                            R9 K3 ["horizontal"]
       39 JUMP                             ; [+1]
       40 LOADK                            R9 K4 ["vertical"]
       41 NAMECALL                         R7 R7 K5 ["format"]
       43 CALL                             R7 2 1
       44 MOVE                             R4 R7
       45 LOADK                            R7 K6 ["    listKey: %s\n"]
       46 GETTABLEKS                       R9 R2 K12 ["listKey"]
       48 NAMECALL                         R7 R7 K5 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R5 R7
       52 LOADK                            R6 K8 ["    cellKey: %s"]
       53 GETTABLEKS                       R8 R2 K9 ["cellKey"]
       55 NAMECALL                         R6 R6 K5 ["format"]
       57 CALL                             R6 2 1
       58 CONCAT                           R1 R3 R6
       59 GETTABLEKS                       R2 R2 K13 ["parent"]
       61 JUMPBACK                         ; [-30]
       62 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       18 GETTABLEKS                       R5 R2 K8 ["Map"]
       20 GETTABLEKS                       R6 R2 K9 ["Object"]
       22 GETTABLEKS                       R7 R2 K10 ["Set"]
       24 GETTABLEKS                       R8 R2 K11 ["console"]
       26 DUPCLOSURE                       R9 K12 [PROTO_0]
       27 GETIMPORT                        R10 K4 [require]
       29 GETTABLEKS                       R12 R0 K13 ["Interaction"]
       31 GETTABLEKS                       R11 R12 K14 ["Batchinator"]
       33 CALL                             R10 1 1
       34 GETIMPORT                        R11 K4 [require]
       36 GETIMPORT                        R14 K1 [script]
       38 GETTABLEKS                       R13 R14 K2 ["Parent"]
       40 GETTABLEKS                       R12 R13 K15 ["FillRateHelper"]
       42 CALL                             R11 1 1
       43 DUPTABLE                         R12 K17 [{"findNodeHandle"}]
       44 DUPCLOSURE                       R13 K18 [PROTO_1]
       45 SETTABLEKS                       R13 R12 K16 ["findNodeHandle"]
       47 LOADNIL                          R13
       48 GETIMPORT                        R14 K4 [require]
       50 GETTABLEKS                       R17 R0 K19 ["Components"]
       52 GETTABLEKS                       R16 R17 K20 ["ScrollView"]
       54 GETTABLEKS                       R15 R16 K20 ["ScrollView"]
       56 CALL                             R14 1 1
       57 GETIMPORT                        R15 K4 [require]
       59 GETTABLEKS                       R17 R0 K21 ["StyleSheet"]
       61 GETTABLEKS                       R16 R17 K21 ["StyleSheet"]
       63 CALL                             R15 1 1
       64 GETIMPORT                        R16 K4 [require]
       66 GETTABLEKS                       R19 R0 K19 ["Components"]
       68 GETTABLEKS                       R18 R19 K22 ["View"]
       70 GETTABLEKS                       R17 R18 K22 ["View"]
       72 CALL                             R16 1 1
       73 GETIMPORT                        R17 K4 [require]
       75 GETIMPORT                        R20 K1 [script]
       77 GETTABLEKS                       R19 R20 K2 ["Parent"]
       79 GETTABLEKS                       R18 R19 K23 ["ViewabilityHelper"]
       81 CALL                             R17 1 1
       82 DUPCLOSURE                       R18 K24 [PROTO_2]
       83 GETIMPORT                        R19 K4 [require]
       85 GETTABLEKS                       R21 R0 K25 ["Utilities"]
       87 GETTABLEKS                       R20 R21 K26 ["infoLog"]
       89 CALL                             R19 1 1
       90 GETIMPORT                        R20 K4 [require]
       92 GETTABLEKS                       R22 R0 K27 ["jsUtils"]
       94 GETTABLEKS                       R21 R22 K28 ["invariant"]
       96 CALL                             R20 1 1
       97 GETIMPORT                        R21 K4 [require]
       99 GETIMPORT                        R24 K1 [script]
      101 GETTABLEKS                       R23 R24 K2 ["Parent"]
      103 GETTABLEKS                       R22 R23 K29 ["VirtualizeUtils"]
      105 CALL                             R21 1 1
      106 GETTABLEKS                       R22 R21 K30 ["keyExtractor"]
      108 GETTABLEKS                       R23 R21 K31 ["computeWindowedRenderLimits"]
      110 GETIMPORT                        R24 K4 [require]
      112 GETTABLEKS                       R25 R1 K32 ["React"]
      114 CALL                             R24 1 1
      115 GETIMPORT                        R25 K4 [require]
      117 GETTABLEKS                       R28 R0 K19 ["Components"]
      119 GETTABLEKS                       R27 R28 K20 ["ScrollView"]
      121 GETTABLEKS                       R26 R27 K20 ["ScrollView"]
      123 CALL                             R25 1 1
      124 GETIMPORT                        R26 K4 [require]
      126 GETIMPORT                        R29 K1 [script]
      128 GETTABLEKS                       R28 R29 K2 ["Parent"]
      130 GETTABLEKS                       R27 R28 K33 ["VirtualizedListContext"]
      132 CALL                             R26 1 1
      133 GETTABLEKS                       R27 R26 K34 ["VirtualizedListCellContextProvider"]
      135 GETTABLEKS                       R28 R26 K33 ["VirtualizedListContext"]
      137 GETTABLEKS                       R29 R26 K35 ["VirtualizedListContextProvider"]
      139 LOADNIL                          R30
      140 LOADNIL                          R31
      141 LOADNIL                          R32
      142 DUPCLOSURE                       R13 K36 [PROTO_3]
      143 CAPTURE                          VAL R24
      144 LOADB                            R33 0
      145 LOADK                            R34 K37 [""]
      146 DUPCLOSURE                       R35 K38 [PROTO_4]
      147 DUPCLOSURE                       R36 K39 [PROTO_5]
      148 DUPCLOSURE                       R37 K40 [PROTO_6]
      149 DUPCLOSURE                       R38 K41 [PROTO_7]
      150 DUPCLOSURE                       R39 K42 [PROTO_8]
      151 DUPCLOSURE                       R40 K43 [PROTO_9]
      152 DUPCLOSURE                       R41 K44 [PROTO_11]
      153 GETTABLEKS                       R42 R24 K45 ["PureComponent"]
      155 LOADK                            R44 K46 ["VirtualizedList"]
      156 NAMECALL                         R42 R42 K47 ["extend"]
      158 CALL                             R42 2 1
      159 SETTABLEKS                       R28 R42 K48 ["contextType"]
      161 NEWCLOSURE                       R43 P11
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R8
      173 CAPTURE                          REF R30
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R14
      177 CAPTURE                          REF R13
      178 CAPTURE                          VAL R19
      179 SETTABLEKS                       R43 R42 K49 ["init"]
      181 DUPCLOSURE                       R43 K50 [PROTO_49]
      182 CAPTURE                          VAL R8
      183 SETTABLEKS                       R43 R42 K51 ["scrollToEnd"]
      185 DUPCLOSURE                       R43 K52 [PROTO_50]
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R8
      189 SETTABLEKS                       R43 R42 K53 ["scrollToIndex"]
      191 DUPCLOSURE                       R43 K54 [PROTO_51]
      192 CAPTURE                          VAL R6
      193 SETTABLEKS                       R43 R42 K55 ["scrollToItem"]
      195 DUPCLOSURE                       R43 K56 [PROTO_52]
      196 CAPTURE                          VAL R8
      197 SETTABLEKS                       R43 R42 K57 ["scrollToOffset"]
      199 DUPCLOSURE                       R43 K58 [PROTO_55]
      200 CAPTURE                          VAL R3
      201 SETTABLEKS                       R43 R42 K59 ["recordInteraction"]
      203 DUPCLOSURE                       R43 K60 [PROTO_56]
      204 SETTABLEKS                       R43 R42 K61 ["flashScrollIndicators"]
      206 DUPCLOSURE                       R43 K62 [PROTO_57]
      207 SETTABLEKS                       R43 R42 K63 ["getScrollResponder"]
      209 DUPCLOSURE                       R43 K64 [PROTO_58]
      210 CAPTURE                          VAL R12
      211 SETTABLEKS                       R43 R42 K65 ["getScrollableNode"]
      213 DUPCLOSURE                       R43 K66 [PROTO_59]
      214 SETTABLEKS                       R43 R42 K67 ["getScrollRef"]
      216 DUPCLOSURE                       R43 K68 [PROTO_60]
      217 SETTABLEKS                       R43 R42 K69 ["setNativeProps"]
      219 DUPCLOSURE                       R43 K70 [PROTO_61]
      220 SETTABLEKS                       R43 R42 K71 ["_getCellKey"]
      222 DUPCLOSURE                       R43 K72 [PROTO_62]
      223 CAPTURE                          VAL R4
      224 SETTABLEKS                       R43 R42 K73 ["_getListKey"]
      226 DUPCLOSURE                       R43 K74 [PROTO_63]
      227 SETTABLEKS                       R43 R42 K75 ["_getDebugInfo"]
      229 DUPCLOSURE                       R43 K76 [PROTO_64]
      230 SETTABLEKS                       R43 R42 K77 ["hasMore"]
      232 DUPCLOSURE                       R43 K78 [PROTO_65]
      233 SETTABLEKS                       R43 R42 K79 ["componentDidMount"]
      235 DUPCLOSURE                       R43 K80 [PROTO_67]
      236 CAPTURE                          VAL R3
      237 SETTABLEKS                       R43 R42 K81 ["componentWillUnmount"]
      239 DUPCLOSURE                       R43 K82 [PROTO_69]
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R6
      242 SETTABLEKS                       R43 R42 K83 ["getDerivedStateFromProps"]
      244 NEWCLOSURE                       R43 P29
      245 CAPTURE                          VAL R24
      246 CAPTURE                          REF R32
      247 SETTABLEKS                       R43 R42 K84 ["_pushCells"]
      249 DUPCLOSURE                       R43 K85 [PROTO_73]
      250 SETTABLEKS                       R43 R42 K86 ["_isVirtualizationDisabled"]
      252 DUPCLOSURE                       R43 K87 [PROTO_74]
      253 CAPTURE                          VAL R4
      254 SETTABLEKS                       R43 R42 K88 ["_isNestedWithSameOrientation"]
      256 NEWCLOSURE                       R43 P32
      257 CAPTURE                          VAL R22
      258 CAPTURE                          REF R33
      259 CAPTURE                          VAL R4
      260 CAPTURE                          REF R34
      261 SETTABLEKS                       R43 R42 K89 ["_keyExtractor"]
      263 NEWCLOSURE                       R43 P33
      264 CAPTURE                          VAL R18
      265 CAPTURE                          VAL R8
      266 CAPTURE                          REF R31
      267 CAPTURE                          VAL R7
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R27
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R15
      272 CAPTURE                          REF R33
      273 CAPTURE                          REF R34
      274 CAPTURE                          VAL R6
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R14
      277 SETTABLEKS                       R43 R42 K90 ["render"]
      279 DUPCLOSURE                       R43 K91 [PROTO_80]
      280 CAPTURE                          VAL R3
      281 SETTABLEKS                       R43 R42 K92 ["componentDidUpdate"]
      283 DUPCLOSURE                       R43 K93 [PROTO_81]
      284 SETTABLEKS                       R43 R42 K94 ["_computeBlankness"]
      286 DUPCLOSURE                       R43 K95 [PROTO_84]
      287 CAPTURE                          VAL R8
      288 CAPTURE                          VAL R3
      289 CAPTURE                          VAL R6
      290 CAPTURE                          VAL R4
      291 SETTABLEKS                       R43 R42 K96 ["_onCellLayout"]
      293 DUPCLOSURE                       R43 K97 [PROTO_86]
      294 SETTABLEKS                       R43 R42 K98 ["_triggerRemeasureForChildListsInCell"]
      296 DUPCLOSURE                       R43 K99 [PROTO_88]
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R6
      299 SETTABLEKS                       R43 R42 K100 ["recalculateFrames"]
      301 DUPCLOSURE                       R43 K101 [PROTO_94]
      302 CAPTURE                          VAL R4
      303 CAPTURE                          VAL R8
      304 SETTABLEKS                       R43 R42 K102 ["measureLayoutRelativeToContainingList"]
      306 DUPCLOSURE                       R43 K103 [PROTO_95]
      307 SETTABLEKS                       R43 R42 K104 ["_getFooterCellKey"]
      309 NEWCLOSURE                       R43 P41
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R24
      312 CAPTURE                          VAL R16
      313 CAPTURE                          REF R31
      314 CAPTURE                          VAL R3
      315 SETTABLEKS                       R43 R42 K105 ["_renderDebugOverlay"]
      317 DUPCLOSURE                       R43 K106 [PROTO_98]
      318 SETTABLEKS                       R43 R42 K107 ["_selectLength"]
      320 DUPCLOSURE                       R43 K108 [PROTO_99]
      321 SETTABLEKS                       R43 R42 K109 ["_selectOffset"]
      323 DUPCLOSURE                       R43 K110 [PROTO_100]
      324 SETTABLEKS                       R43 R42 K111 ["_maybeCallOnEndReached"]
      326 DUPCLOSURE                       R43 K112 [PROTO_101]
      327 CAPTURE                          VAL R4
      328 SETTABLEKS                       R43 R42 K113 ["_scheduleCellsToRenderUpdate"]
      330 DUPCLOSURE                       R43 K114 [PROTO_103]
      331 CAPTURE                          VAL R3
      332 SETTABLEKS                       R43 R42 K115 ["_updateViewableItems"]
      334 GETTABLEKS                       R43 R24 K116 ["Component"]
      336 LOADK                            R45 K117 ["CellRenderer"]
      337 NAMECALL                         R43 R43 K47 ["extend"]
      339 CALL                             R43 2 1
      340 MOVE                             R32 R43
      341 DUPCLOSURE                       R43 K118 [PROTO_107]
      342 CAPTURE                          VAL R24
      343 SETTABLEKS                       R43 R32 K49 ["init"]
      345 DUPCLOSURE                       R43 K119 [PROTO_108]
      346 CAPTURE                          VAL R6
      347 SETTABLEKS                       R43 R32 K83 ["getDerivedStateFromProps"]
      349 DUPCLOSURE                       R43 K120 [PROTO_110]
      350 CAPTURE                          VAL R6
      351 SETTABLEKS                       R43 R32 K121 ["updateSeparatorProps"]
      353 DUPCLOSURE                       R43 K122 [PROTO_111]
      354 SETTABLEKS                       R43 R32 K81 ["componentWillUnmount"]
      356 DUPCLOSURE                       R43 K123 [PROTO_112]
      357 CAPTURE                          VAL R4
      358 CAPTURE                          VAL R8
      359 CAPTURE                          VAL R24
      360 CAPTURE                          VAL R20
      361 SETTABLEKS                       R43 R32 K124 ["_renderElement"]
      363 DUPCLOSURE                       R43 K125 [PROTO_113]
      364 SETTABLEKS                       R43 R32 K126 ["getRef"]
      366 NEWCLOSURE                       R43 P53
      367 CAPTURE                          VAL R24
      368 CAPTURE                          VAL R6
      369 CAPTURE                          VAL R4
      370 CAPTURE                          REF R31
      371 CAPTURE                          VAL R16
      372 CAPTURE                          VAL R27
      373 SETTABLEKS                       R43 R32 K90 ["render"]
      375 DUPCLOSURE                       R30 K127 [PROTO_115]
      376 CAPTURE                          VAL R4
      377 GETTABLEKS                       R43 R15 K128 ["create"]
      379 DUPTABLE                         R44 K141 [{"verticallyInverted", "horizontallyInverted", "row", "column", "rowReverse", "columnReverse", "debug", "debugOverlayBase", "debugOverlay", "debugOverlayFrame", "debugOverlayFrameLast", "debugOverlayFrameVis"}]
      380 DUPTABLE                         R45 K144 [{"HorizontalAlignment", "VerticalAlignment"}]
      381 GETIMPORT                        R46 K147 [Enum.HorizontalAlignment.Center]
      383 SETTABLEKS                       R46 R45 K142 ["HorizontalAlignment"]
      385 GETIMPORT                        R46 K149 [Enum.VerticalAlignment.Bottom]
      387 SETTABLEKS                       R46 R45 K143 ["VerticalAlignment"]
      389 SETTABLEKS                       R45 R44 K129 ["verticallyInverted"]
      391 DUPTABLE                         R45 K144 [{"HorizontalAlignment", "VerticalAlignment"}]
      392 GETIMPORT                        R46 K151 [Enum.HorizontalAlignment.Right]
      394 SETTABLEKS                       R46 R45 K142 ["HorizontalAlignment"]
      396 GETIMPORT                        R46 K152 [Enum.VerticalAlignment.Center]
      398 SETTABLEKS                       R46 R45 K143 ["VerticalAlignment"]
      400 SETTABLEKS                       R45 R44 K130 ["horizontallyInverted"]
      402 DUPTABLE                         R45 K155 [{"AutomaticSize", "Size"}]
      403 GETIMPORT                        R46 K157 [Enum.AutomaticSize.X]
      405 SETTABLEKS                       R46 R45 K153 ["AutomaticSize"]
      407 GETIMPORT                        R46 K160 [UDim2.new]
      409 LOADN                            R47 0
      410 LOADN                            R48 0
      411 LOADN                            R49 1
      412 LOADN                            R50 0
      413 CALL                             R46 4 1
      414 SETTABLEKS                       R46 R45 K154 ["Size"]
      416 SETTABLEKS                       R45 R44 K131 ["row"]
      418 DUPTABLE                         R45 K161 [{"AutomaticSize"}]
      419 GETIMPORT                        R46 K163 [Enum.AutomaticSize.Y]
      421 SETTABLEKS                       R46 R45 K153 ["AutomaticSize"]
      423 SETTABLEKS                       R45 R44 K132 ["column"]
      425 DUPTABLE                         R45 K165 [{"flexDirection", "AutomaticSize", "Size"}]
      426 LOADK                            R46 K166 ["row-reverse"]
      427 SETTABLEKS                       R46 R45 K164 ["flexDirection"]
      429 GETIMPORT                        R46 K157 [Enum.AutomaticSize.X]
      431 SETTABLEKS                       R46 R45 K153 ["AutomaticSize"]
      433 GETIMPORT                        R46 K160 [UDim2.new]
      435 LOADN                            R47 0
      436 LOADN                            R48 0
      437 LOADN                            R49 1
      438 LOADN                            R50 0
      439 CALL                             R46 4 1
      440 SETTABLEKS                       R46 R45 K154 ["Size"]
      442 SETTABLEKS                       R45 R44 K133 ["rowReverse"]
      444 DUPTABLE                         R45 K167 [{"flexDirection", "AutomaticSize"}]
      445 LOADK                            R46 K168 ["column-reverse"]
      446 SETTABLEKS                       R46 R45 K164 ["flexDirection"]
      448 GETIMPORT                        R46 K163 [Enum.AutomaticSize.Y]
      450 SETTABLEKS                       R46 R45 K153 ["AutomaticSize"]
      452 SETTABLEKS                       R45 R44 K134 ["columnReverse"]
      454 DUPTABLE                         R45 K170 [{"flex"}]
      455 LOADN                            R46 1
      456 SETTABLEKS                       R46 R45 K169 ["flex"]
      458 SETTABLEKS                       R45 R44 K135 ["debug"]
      460 DUPTABLE                         R45 K174 [{"position", "top", "right"}]
      461 LOADK                            R46 K175 ["absolute"]
      462 SETTABLEKS                       R46 R45 K171 ["position"]
      464 LOADN                            R46 0
      465 SETTABLEKS                       R46 R45 K172 ["top"]
      467 LOADN                            R46 0
      468 SETTABLEKS                       R46 R45 K173 ["right"]
      470 SETTABLEKS                       R45 R44 K136 ["debugOverlayBase"]
      472 DUPTABLE                         R45 K180 [{"bottom", "width", "borderColor", "borderWidth"}]
      473 LOADN                            R46 0
      474 SETTABLEKS                       R46 R45 K176 ["bottom"]
      476 LOADN                            R46 20
      477 SETTABLEKS                       R46 R45 K177 ["width"]
      479 LOADK                            R46 K181 ["blue"]
      480 SETTABLEKS                       R46 R45 K178 ["borderColor"]
      482 LOADN                            R46 1
      483 SETTABLEKS                       R46 R45 K179 ["borderWidth"]
      485 SETTABLEKS                       R45 R44 K137 ["debugOverlay"]
      487 DUPTABLE                         R45 K184 [{"left", "backgroundColor"}]
      488 LOADN                            R46 0
      489 SETTABLEKS                       R46 R45 K182 ["left"]
      491 LOADK                            R46 K185 ["orange"]
      492 SETTABLEKS                       R46 R45 K183 ["backgroundColor"]
      494 SETTABLEKS                       R45 R44 K138 ["debugOverlayFrame"]
      496 DUPTABLE                         R45 K186 [{"left", "borderColor", "borderWidth"}]
      497 LOADN                            R46 0
      498 SETTABLEKS                       R46 R45 K182 ["left"]
      500 LOADK                            R46 K187 ["green"]
      501 SETTABLEKS                       R46 R45 K178 ["borderColor"]
      503 LOADN                            R46 2
      504 SETTABLEKS                       R46 R45 K179 ["borderWidth"]
      506 SETTABLEKS                       R45 R44 K139 ["debugOverlayFrameLast"]
      508 DUPTABLE                         R45 K186 [{"left", "borderColor", "borderWidth"}]
      509 LOADN                            R46 0
      510 SETTABLEKS                       R46 R45 K182 ["left"]
      512 LOADK                            R46 K188 ["red"]
      513 SETTABLEKS                       R46 R45 K178 ["borderColor"]
      515 LOADN                            R46 2
      516 SETTABLEKS                       R46 R45 K179 ["borderWidth"]
      518 SETTABLEKS                       R45 R44 K140 ["debugOverlayFrameVis"]
      520 CALL                             R43 1 1
      521 MOVE                             R31 R43
      522 CLOSEUPVALS                      R13
      523 RETURN                           R42 1
