PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 RETURN                           R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["OS"]
        7 JUMPIFEQKS                       R2 K1 ["android"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 RETURN                           R1 1
        4 LOADN                            R1 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_listRef"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["numColumns"]
        5 JUMPIFEQKNIL                     R3 ; [+3]
        7 MOVE                             R2 R3
        8 JUMP                             ; [+1]
        9 LOADN                            R2 1
       10 LOADN                            R3 1
       11 JUMPIFNOTLT                      R3 R2 ; [+22]
       13 NEWTABLE                         R3 0 0
       15 LOADN                            R6 1
       16 MOVE                             R4 R2
       17 LOADN                            R5 1
       18 FORNPREP                         R4
       19 SUBK                             R10 R1 K2 [1]
       20 MUL                              R9 R10 R2
       21 ADD                              R8 R9 R6
       22 GETTABLE                         R7 R0 R8
       23 JUMPIFEQKNIL                     R7 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       27 MOVE                             R9 R3
       28 MOVE                             R10 R7
       29 GETIMPORT                        R8 K5 [table.insert]
       31 CALL                             R8 2 0
       32 FORNLOOP                         R4
       33 RETURN                           R3 1
       34 GETTABLE                         R3 R0 R1
       35 RETURN                           R3 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+23]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["props"]
        5 GETTABLEKS                       R2 R3 K1 ["numColumns"]
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 MOVE                             R1 R2
       10 JUMP                             ; [+1]
       11 LOADN                            R1 1
       12 LOADN                            R3 1
       13 JUMPIFNOTLT                      R3 R1 ; [+8]
       15 LENGTH                           R4 R0
       16 DIV                              R3 R4 R1
       17 FASTCALL1                        MATH_CEIL R3 ; [+2]
       18 GETIMPORT                        R2 K4 [math.ceil]
       20 CALL                             R2 1 1
       21 RETURN                           R2 1
       22 LENGTH                           R2 R0
       23 RETURN                           R2 1
       24 LOADN                            R1 0
       25 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R7 1
        3 SUBK                             R6 R7 K0 [1]
        4 GETUPVAL                         R7 2
        5 MUL                              R5 R6 R7
        6 ADD                              R4 R5 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["numColumns"]
        5 JUMPIFEQKNIL                     R3 ; [+3]
        7 MOVE                             R2 R3
        8 JUMP                             ; [+1]
        9 LOADN                            R2 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["props"]
       13 GETTABLEKS                       R4 R5 K2 ["keyExtractor"]
       15 JUMPIFEQKNIL                     R4 ; [+7]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["props"]
       20 GETTABLEKS                       R3 R4 K2 ["keyExtractor"]
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R3 1
       24 LOADN                            R4 1
       25 JUMPIFNOTLT                      R4 R2 ; [+33]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K3 ["isArray"]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 1
       32 JUMPIFNOT                        R4 ; [+15]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K4 ["join"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K5 ["map"]
       39 MOVE                             R6 R0
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CALL                             R5 2 1
       45 LOADK                            R6 K6 [":"]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1
       48 GETUPVAL                         R4 3
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R5 R6 K3 ["isArray"]
       52 MOVE                             R6 R0
       53 CALL                             R5 1 1
       54 LOADK                            R6 K7 ["FlatList: Encountered internal consistency error, expected each item to consist of an array with 1-%s columns; instead, received a single item."]
       55 MOVE                             R7 R2
       56 CALL                             R4 3 0
       57 LOADNIL                          R4
       58 RETURN                           R4 1
       59 MOVE                             R4 R3
       60 MOVE                             R5 R0
       61 MOVE                             R6 R1
       62 CALL                             R4 2 -1
       63 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["createElement"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R1 2
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R3 K3 [{"item", "index", "separators"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K4 ["assign"]
        4 NEWTABLE                         R5 0 0
        6 MOVE                             R6 R0
        7 DUPTABLE                         R7 K6 [{"LayoutOrder"}]
        8 SETTABLEKS                       R1 R7 K5 ["LayoutOrder"]
       10 CALL                             R4 3 1
       11 SETTABLEKS                       R4 R3 K0 ["item"]
       13 GETUPVAL                         R7 1
       14 SUBK                             R6 R7 K7 [1]
       15 GETUPVAL                         R7 2
       16 MUL                              R5 R6 R7
       17 ADD                              R4 R5 R1
       18 SETTABLEKS                       R4 R3 K1 ["index"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K2 ["separators"]
       23 SETTABLEKS                       R4 R3 K2 ["separators"]
       25 GETUPVAL                         R4 4
       26 JUMPIFNOT                        R4 ; [+8]
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R4 R5 K8 ["createElement"]
       30 GETUPVAL                         R5 4
       31 MOVE                             R6 R3
       32 CALL                             R4 2 1
       33 MOVE                             R2 R4
       34 JUMP                             ; [+9]
       35 GETUPVAL                         R4 6
       36 JUMPIFNOT                        R4 ; [+5]
       37 GETUPVAL                         R4 6
       38 MOVE                             R5 R3
       39 CALL                             R4 1 1
       40 MOVE                             R2 R4
       41 JUMP                             ; [+2]
       42 LOADNIL                          R2
       43 JUMP                             ; [0]
       44 JUMPIFEQKNIL                     R2 ; [+13]
       46 GETUPVAL                         R4 5
       47 GETTABLEKS                       R3 R4 K8 ["createElement"]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R4 R5 K9 ["Fragment"]
       52 DUPTABLE                         R5 K11 [{"key"}]
       53 SETTABLEKS                       R1 R5 K10 ["key"]
       55 MOVE                             R6 R2
       56 CALL                             R3 3 1
       57 RETURN                           R3 1
       58 LOADNIL                          R3
       59 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 JUMPIFNOTLT                      R2 R1 ; [+94]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["createElement"]
        7 LOADK                            R2 K1 ["UIListLayout"]
        8 DUPTABLE                         R3 K6 [{"key", "Name", "FillDirection", "SortOrder"}]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K7 ["props"]
       12 GETTABLEKS                       R5 R6 K8 ["horizontal"]
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADK                            R4 K9 ["UIListVerticalLayout"]
       16 JUMP                             ; [+1]
       17 LOADK                            R4 K10 ["UIListHorizontalLayout"]
       18 SETTABLEKS                       R4 R3 K2 ["key"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K7 ["props"]
       23 GETTABLEKS                       R5 R6 K8 ["horizontal"]
       25 JUMPIFNOT                        R5 ; [+2]
       26 LOADK                            R4 K9 ["UIListVerticalLayout"]
       27 JUMP                             ; [+1]
       28 LOADK                            R4 K10 ["UIListHorizontalLayout"]
       29 SETTABLEKS                       R4 R3 K3 ["Name"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K7 ["props"]
       34 GETTABLEKS                       R5 R6 K8 ["horizontal"]
       36 JUMPIFNOT                        R5 ; [+3]
       37 GETIMPORT                        R4 K13 [Enum.FillDirection.Vertical]
       39 JUMP                             ; [+2]
       40 GETIMPORT                        R4 K15 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R4 R3 K4 ["FillDirection"]
       44 GETIMPORT                        R4 K17 [Enum.SortOrder.LayoutOrder]
       46 SETTABLEKS                       R4 R3 K5 ["SortOrder"]
       48 CALL                             R1 2 1
       49 GETTABLEKS                       R2 R0 K18 ["item"]
       51 GETTABLEKS                       R3 R0 K19 ["index"]
       53 GETUPVAL                         R4 3
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R5 R6 K20 ["isArray"]
       57 MOVE                             R6 R2
       58 CALL                             R5 1 1
       59 LOADK                            R6 K21 ["Expected array of items with numColumns > 1"]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K0 ["createElement"]
       64 GETUPVAL                         R5 5
       65 DUPTABLE                         R6 K23 [{"style"}]
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R7 R8 K24 ["compose"]
       69 GETUPVAL                         R8 7
       70 CALL                             R7 1 1
       71 SETTABLEKS                       R7 R6 K22 ["style"]
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R7 R8 K25 ["concat"]
       76 NEWTABLE                         R8 0 1
       78 MOVE                             R9 R1
       79 SETLIST                          R8 R9 1 [1]
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R9 R10 K26 ["map"]
       84 MOVE                             R10 R2
       85 NEWCLOSURE                       R11 P0
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U0
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          UPVAL U10
       93 CALL                             R9 2 -1
       94 CALL                             R7 -1 -1
       95 CALL                             R4 -1 -1
       96 RETURN                           R4 -1
       97 GETUPVAL                         R1 11
       98 MOVE                             R2 R0
       99 CALL                             R1 1 -1
      100 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R0 R3 K1 ["ListItemComponent"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R1 R3 K2 ["renderItem"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["columnWrapperStyle"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["props"]
       18 GETTABLEKS                       R4 R5 K4 ["numColumns"]
       20 JUMPIFEQKNIL                     R4 ; [+3]
       22 MOVE                             R3 R4
       23 JUMP                             ; [+1]
       24 LOADN                            R3 1
       25 JUMPIFNOT                        R0 ; [+2]
       26 LOADK                            R4 K1 ["ListItemComponent"]
       27 JUMP                             ; [+1]
       28 LOADK                            R4 K2 ["renderItem"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R6 1 0
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 SETTABLE                         R7 R6 R4
       49 RETURN                           R6 1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"viewabilityConfig", "onViewableItemsChanged"}]
        1 GETTABLEKS                       R2 R0 K0 ["viewabilityConfig"]
        3 SETTABLEKS                       R2 R1 K0 ["viewabilityConfig"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R4 R0 K1 ["onViewableItemsChanged"]
        8 NAMECALL                         R2 R2 K3 ["_createOnViewableItemsChanged"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K1 ["onViewableItemsChanged"]
       13 RETURN                           R1 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_virtualizedListPairs"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["_captureRef"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K2 ["_getItem"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K3 ["_getItemCount"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R2 R0 K4 ["_keyExtractor"]
       23 NEWCLOSURE                       R2 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 SETTABLEKS                       R2 R0 K5 ["_renderer"]
       33 GETTABLEKS                       R4 R0 K6 ["props"]
       35 NAMECALL                         R2 R0 K7 ["_checkProps"]
       37 CALL                             R2 2 0
       38 GETTABLEKS                       R3 R0 K6 ["props"]
       40 GETTABLEKS                       R2 R3 K8 ["viewabilityConfigCallbackPairs"]
       42 JUMPIFNOT                        R2 ; [+13]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R2 R3 K9 ["map"]
       46 GETTABLEKS                       R4 R0 K6 ["props"]
       48 GETTABLEKS                       R3 R4 K8 ["viewabilityConfigCallbackPairs"]
       50 NEWCLOSURE                       R4 P5
       51 CAPTURE                          VAL R0
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R0 K0 ["_virtualizedListPairs"]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R3 R0 K6 ["props"]
       58 GETTABLEKS                       R2 R3 K10 ["onViewableItemsChanged"]
       60 JUMPIFNOT                        R2 ; [+23]
       61 GETTABLEKS                       R3 R0 K0 ["_virtualizedListPairs"]
       63 DUPTABLE                         R4 K12 [{"viewabilityConfig", "onViewableItemsChanged"}]
       64 GETTABLEKS                       R6 R0 K6 ["props"]
       66 GETTABLEKS                       R5 R6 K11 ["viewabilityConfig"]
       68 SETTABLEKS                       R5 R4 K11 ["viewabilityConfig"]
       70 GETTABLEKS                       R8 R0 K6 ["props"]
       72 GETTABLEKS                       R7 R8 K10 ["onViewableItemsChanged"]
       74 NAMECALL                         R5 R0 K13 ["_createOnViewableItemsChanged"]
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K10 ["onViewableItemsChanged"]
       79 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       81 GETIMPORT                        R2 K16 [table.insert]
       83 CALL                             R2 2 0
       84 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["scrollToEnd"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["scrollToIndex"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["scrollToItem"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["scrollToOffset"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        5 NAMECALL                         R1 R1 K1 ["recordInteraction"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        5 NAMECALL                         R1 R1 K1 ["flashScrollIndicators"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        5 NAMECALL                         R1 R1 K1 ["getScrollResponder"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        5 NAMECALL                         R1 R1 K1 ["getScrollRef"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        5 NAMECALL                         R1 R1 K1 ["getScrollableNode"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_listRef"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["setNativeProps"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["numColumns"]
        3 GETTABLEKS                       R6 R0 K1 ["props"]
        5 GETTABLEKS                       R5 R6 K0 ["numColumns"]
        7 JUMPIFEQ                         R4 R5 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 LOADK                            R4 K2 ["Changing numColumns on the fly is not supported. Change the key prop on FlatList when changing the number of columns to force a fresh render of the component."]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R4 R1 K3 ["onViewableItemsChanged"]
       16 GETTABLEKS                       R6 R0 K1 ["props"]
       18 GETTABLEKS                       R5 R6 K3 ["onViewableItemsChanged"]
       20 JUMPIFEQ                         R4 R5 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 LOADK                            R4 K4 ["Changing onViewableItemsChanged on the fly is not supported"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R5 R1 K5 ["viewabilityConfig"]
       30 GETTABLEKS                       R7 R0 K1 ["props"]
       32 GETTABLEKS                       R6 R7 K5 ["viewabilityConfig"]
       34 CALL                             R4 2 1
       35 NOT                              R3 R4
       36 LOADK                            R4 K6 ["Changing viewabilityConfig on the fly is not supported"]
       37 CALL                             R2 2 0
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R4 R1 K7 ["viewabilityConfigCallbackPairs"]
       41 GETTABLEKS                       R6 R0 K1 ["props"]
       43 GETTABLEKS                       R5 R6 K7 ["viewabilityConfigCallbackPairs"]
       45 JUMPIFEQ                         R4 R5 ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 LOADK                            R4 K8 ["Changing viewabilityConfigCallbackPairs on the fly is not supported"]
       50 CALL                             R2 2 0
       51 GETTABLEKS                       R4 R0 K1 ["props"]
       53 NAMECALL                         R2 R0 K9 ["_checkProps"]
       55 CALL                             R2 2 0
       56 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["getItem"]
        2 GETTABLEKS                       R3 R1 K1 ["getItemCount"]
        4 GETTABLEKS                       R4 R1 K2 ["horizontal"]
        6 GETTABLEKS                       R5 R1 K3 ["columnWrapperStyle"]
        8 GETTABLEKS                       R6 R1 K4 ["onViewableItemsChanged"]
       10 GETTABLEKS                       R7 R1 K5 ["viewabilityConfigCallbackPairs"]
       12 GETTABLEKS                       R10 R0 K6 ["props"]
       14 GETTABLEKS                       R9 R10 K7 ["numColumns"]
       16 JUMPIFEQKNIL                     R9 ; [+3]
       18 MOVE                             R8 R9
       19 JUMP                             ; [+1]
       20 LOADN                            R8 1
       21 GETUPVAL                         R9 0
       22 NOT                              R10 R2
       23 JUMPIFNOT                        R10 ; [+1]
       24 NOT                              R10 R3
       25 LOADK                            R11 K8 ["FlatList does not support custom data formats."]
       26 CALL                             R9 2 0
       27 LOADN                            R9 1
       28 JUMPIFNOTLT                      R9 R8 ; [+6]
       30 GETUPVAL                         R9 0
       31 NOT                              R10 R4
       32 LOADK                            R11 K9 ["numColumns does not support horizontal."]
       33 CALL                             R9 2 0
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R9 0
       36 NOT                              R10 R5
       37 LOADK                            R11 K10 ["columnWrapperStyle not supported for single column lists"]
       38 CALL                             R9 2 0
       39 GETUPVAL                         R9 0
       40 AND                              R11 R6 R7
       41 NOT                              R10 R11
       42 LOADK                            R11 K11 ["FlatList does not support setting both onViewableItemsChanged and viewabilityConfigCallbackPairs."]
       43 CALL                             R9 2 0
       44 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["index"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 LOADK                            R4 K1 ["Missing index!"]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K0 ["index"]
       13 SUBK                             R4 R5 K2 [1]
       14 GETUPVAL                         R5 2
       15 MUL                              R3 R4 R5
       16 ADD                              R2 R3 R1
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R5 R6 K3 ["assign"]
       21 NEWTABLE                         R6 0 0
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K6 [{"item", "key", "index"}]
       25 SETTABLEKS                       R0 R8 K4 ["item"]
       27 GETUPVAL                         R9 5
       28 MOVE                             R10 R0
       29 MOVE                             R11 R2
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K5 ["key"]
       33 SETTABLEKS                       R2 R8 K0 ["index"]
       35 CALL                             R5 3 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R3 K9 [table.insert]
       39 CALL                             R3 -1 0
       40 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R5 K1 ["numColumns"]
        4 JUMPIFEQKNIL                     R4 ; [+3]
        6 MOVE                             R3 R4
        7 JUMP                             ; [+1]
        8 LOADN                            R3 1
        9 GETTABLEKS                       R6 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R6 K2 ["keyExtractor"]
       13 JUMPIFEQKNIL                     R5 ; [+6]
       15 GETTABLEKS                       R5 R0 K0 ["props"]
       17 GETTABLEKS                       R4 R5 K2 ["keyExtractor"]
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K3 ["forEach"]
       24 GETTABLEKS                       R6 R2 K4 ["item"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R4
       33 CALL                             R5 2 0
       34 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["_pushMultiColumnViewable"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["_pushMultiColumnViewable"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["numColumns"]
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 MOVE                             R1 R2
        8 JUMP                             ; [+1]
        9 LOADN                            R1 1
       10 GETUPVAL                         R2 1
       11 JUMPIFEQKNIL                     R2 ; [+37]
       13 LOADN                            R2 1
       14 JUMPIFNOTLT                      R2 R1 ; [+31]
       16 NEWTABLE                         R2 0 0
       18 NEWTABLE                         R3 0 0
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K2 ["forEach"]
       23 GETTABLEKS                       R5 R0 K3 ["viewableItems"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R3
       28 CALL                             R4 2 0
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K2 ["forEach"]
       32 GETTABLEKS                       R5 R0 K4 ["changed"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R2
       37 CALL                             R4 2 0
       38 GETUPVAL                         R4 1
       39 DUPTABLE                         R5 K5 [{"viewableItems", "changed"}]
       40 SETTABLEKS                       R3 R5 K3 ["viewableItems"]
       42 SETTABLEKS                       R2 R5 K4 ["changed"]
       44 CALL                             R4 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 1
       47 MOVE                             R3 R0
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["numColumns"]
        4 GETTABLEKS                       R3 R1 K2 ["columnWrapperStyle"]
        6 GETTABLEKS                       R4 R1 K3 ["removeClippedSubviews"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["assign"]
       11 NEWTABLE                         R6 0 0
       13 MOVE                             R7 R1
       14 DUPTABLE                         R8 K5 [{"numColumns", "columnWrapperStyle", "removeClippedSubviews"}]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R9 R10 K6 ["None"]
       18 SETTABLEKS                       R9 R8 K1 ["numColumns"]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R9 R10 K6 ["None"]
       23 SETTABLEKS                       R9 R8 K2 ["columnWrapperStyle"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R9 R10 K6 ["None"]
       28 SETTABLEKS                       R9 R8 K3 ["removeClippedSubviews"]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K7 ["createElement"]
       34 GETUPVAL                         R7 2
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K4 ["assign"]
       38 NEWTABLE                         R9 0 0
       40 MOVE                             R10 R5
       41 DUPTABLE                         R11 K13 [{"getItem", "getItemCount", "keyExtractor", "ref", "viewabilityConfigCallbackPairs", "removeClippedSubviews"}]
       42 GETTABLEKS                       R12 R0 K14 ["_getItem"]
       44 SETTABLEKS                       R12 R11 K8 ["getItem"]
       46 GETTABLEKS                       R12 R0 K15 ["_getItemCount"]
       48 SETTABLEKS                       R12 R11 K9 ["getItemCount"]
       50 GETTABLEKS                       R12 R0 K16 ["_keyExtractor"]
       52 SETTABLEKS                       R12 R11 K10 ["keyExtractor"]
       54 GETTABLEKS                       R12 R0 K17 ["_captureRef"]
       56 SETTABLEKS                       R12 R11 K11 ["ref"]
       58 GETTABLEKS                       R12 R0 K18 ["_virtualizedListPairs"]
       60 SETTABLEKS                       R12 R11 K12 ["viewabilityConfigCallbackPairs"]
       62 JUMPIFEQKNIL                     R4 ; [+3]
       64 MOVE                             R12 R4
       65 JUMP                             ; [+7]
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R13 R14 K19 ["OS"]
       69 JUMPIFEQKS                       R13 K20 ["android"] ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 SETTABLEKS                       R12 R11 K3 ["removeClippedSubviews"]
       75 GETTABLEKS                       R12 R0 K21 ["_renderer"]
       77 CALL                             R12 0 -1
       78 CALL                             R8 -1 -1
       79 CALL                             R6 -1 -1
       80 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 DUPTABLE                         R5 K9 [{"OS"}]
       19 LOADK                            R6 K10 ["roblox"]
       20 SETTABLEKS                       R6 R5 K8 ["OS"]
       22 GETIMPORT                        R6 K4 [require]
       24 GETTABLEKS                       R9 R0 K11 ["Utilities"]
       26 GETTABLEKS                       R8 R9 K12 ["differ"]
       28 GETTABLEKS                       R7 R8 K13 ["deepDiffer"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R1 K14 ["React"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K4 [require]
       38 GETTABLEKS                       R10 R0 K15 ["Lists"]
       40 GETTABLEKS                       R9 R10 K16 ["VirtualizedList"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K4 [require]
       45 GETTABLEKS                       R12 R0 K17 ["Components"]
       47 GETTABLEKS                       R11 R12 K18 ["View"]
       49 GETTABLEKS                       R10 R11 K18 ["View"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K4 [require]
       54 GETTABLEKS                       R12 R0 K19 ["StyleSheet"]
       56 GETTABLEKS                       R11 R12 K19 ["StyleSheet"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K4 [require]
       61 GETTABLEKS                       R13 R0 K20 ["jsUtils"]
       63 GETTABLEKS                       R12 R13 K21 ["invariant"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R13 R0 K17 ["Components"]
       68 GETTABLEKS                       R12 R13 K22 ["ScrollView"]
       70 GETIMPORT                        R13 K4 [require]
       72 GETTABLEKS                       R14 R12 K22 ["ScrollView"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K4 [require]
       77 GETTABLEKS                       R15 R12 K23 ["ScrollViewNativeComponent"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K4 [require]
       82 GETTABLEKS                       R17 R0 K15 ["Lists"]
       84 GETTABLEKS                       R16 R17 K24 ["ViewabilityHelper"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K4 [require]
       89 GETTABLEKS                       R18 R0 K15 ["Lists"]
       91 GETTABLEKS                       R17 R18 K16 ["VirtualizedList"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R18 K4 [require]
       96 GETIMPORT                        R21 K1 [script]
       98 GETTABLEKS                       R20 R21 K2 ["Parent"]
      100 GETTABLEKS                       R19 R20 K25 ["VirtualizeUtils"]
      102 CALL                             R18 1 1
      103 GETTABLEKS                       R17 R18 K26 ["keyExtractor"]
      105 DUPCLOSURE                       R18 K27 [PROTO_0]
      106 CAPTURE                          VAL R5
      107 DUPCLOSURE                       R19 K28 [PROTO_1]
      108 GETTABLEKS                       R20 R7 K29 ["PureComponent"]
      110 LOADK                            R22 K30 ["FlatList"]
      111 NAMECALL                         R20 R20 K31 ["extend"]
      113 CALL                             R20 2 1
      114 DUPCLOSURE                       R21 K32 [PROTO_12]
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R21 R20 K33 ["init"]
      124 DUPCLOSURE                       R21 K34 [PROTO_13]
      125 SETTABLEKS                       R21 R20 K35 ["scrollToEnd"]
      127 DUPCLOSURE                       R21 K36 [PROTO_14]
      128 SETTABLEKS                       R21 R20 K37 ["scrollToIndex"]
      130 DUPCLOSURE                       R21 K38 [PROTO_15]
      131 SETTABLEKS                       R21 R20 K39 ["scrollToItem"]
      133 DUPCLOSURE                       R21 K40 [PROTO_16]
      134 SETTABLEKS                       R21 R20 K41 ["scrollToOffset"]
      136 DUPCLOSURE                       R21 K42 [PROTO_17]
      137 SETTABLEKS                       R21 R20 K43 ["recordInteraction"]
      139 DUPCLOSURE                       R21 K44 [PROTO_18]
      140 SETTABLEKS                       R21 R20 K45 ["flashScrollIndicators"]
      142 DUPCLOSURE                       R21 K46 [PROTO_19]
      143 SETTABLEKS                       R21 R20 K47 ["getScrollResponder"]
      145 DUPCLOSURE                       R21 K48 [PROTO_20]
      146 SETTABLEKS                       R21 R20 K49 ["getNativeScrollRef"]
      148 DUPCLOSURE                       R21 K50 [PROTO_21]
      149 SETTABLEKS                       R21 R20 K51 ["getScrollableNode"]
      151 DUPCLOSURE                       R21 K52 [PROTO_22]
      152 SETTABLEKS                       R21 R20 K53 ["setNativeProps"]
      154 DUPCLOSURE                       R21 K54 [PROTO_23]
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R6
      157 SETTABLEKS                       R21 R20 K55 ["componentDidUpdate"]
      159 DUPCLOSURE                       R21 K56 [PROTO_24]
      160 CAPTURE                          VAL R11
      161 SETTABLEKS                       R21 R20 K57 ["_checkProps"]
      163 DUPCLOSURE                       R21 K58 [PROTO_26]
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R21 R20 K59 ["_pushMultiColumnViewable"]
      170 DUPCLOSURE                       R21 K60 [PROTO_30]
      171 CAPTURE                          VAL R3
      172 SETTABLEKS                       R21 R20 K61 ["_createOnViewableItemsChanged"]
      174 DUPCLOSURE                       R21 K62 [PROTO_31]
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R5
      179 SETTABLEKS                       R21 R20 K63 ["render"]
      181 RETURN                           R20 1
