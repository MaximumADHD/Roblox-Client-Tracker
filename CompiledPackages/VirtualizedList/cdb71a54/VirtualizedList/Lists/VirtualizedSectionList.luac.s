PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_listRef"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["_subExtractor"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R2 K1 ["key"]
        8 RETURN                           R3 1
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K3 [tostring]
       13 CALL                             R3 1 1
       14 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["index"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 LOADK                            R3 K1 ["Received a broken ViewToken"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R3 R0 K0 ["index"]
       12 NAMECALL                         R1 R1 K2 ["_subExtractor"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K3 ["section"]
       20 GETTABLEKS                       R2 R2 K4 ["keyExtractor"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["props"]
       25 GETTABLEKS                       R4 R4 K4 ["keyExtractor"]
       27 JUMPIFNOT                        R4 ; [+6]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K5 ["props"]
       31 GETTABLEKS                       R3 R3 K4 ["keyExtractor"]
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R3 2
       35 JUMPIFEQKNIL                     R2 ; [+8]
       37 MOVE                             R4 R2
       38 GETTABLEKS                       R5 R0 K6 ["item"]
       40 GETTABLEKS                       R6 R1 K0 ["index"]
       42 CALL                             R4 2 1
       43 JUMP                             ; [+12]
       44 MOVE                             R4 R3
       45 GETTABLEKS                       R5 R0 K6 ["item"]
       47 GETTABLEKS                       R7 R1 K0 ["index"]
       49 JUMPIFNOTEQKNIL                  R7 ; [+3]
       51 LOADN                            R6 1
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R6 R1 K0 ["index"]
       55 CALL                             R4 2 1
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K7 ["assign"]
       59 NEWTABLE                         R6 0 0
       61 MOVE                             R7 R0
       62 DUPTABLE                         R8 K9 [{"index", "key", "section"}]
       63 GETTABLEKS                       R9 R1 K0 ["index"]
       65 SETTABLEKS                       R9 R8 K0 ["index"]
       67 SETTABLEKS                       R4 R8 K8 ["key"]
       69 GETTABLEKS                       R9 R1 K3 ["section"]
       71 SETTABLEKS                       R9 R8 K3 ["section"]
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["viewableItems"]
        2 GETTABLEKS                       R2 R0 K1 ["changed"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["props"]
        7 GETTABLEKS                       R3 R3 K3 ["onViewableItemsChanged"]
        9 JUMPIFEQKNIL                     R3 ; [+40]
       11 MOVE                             R4 R3
       12 DUPTABLE                         R5 K4 [{"viewableItems", "changed"}]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K5 ["filter"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K6 ["map"]
       19 MOVE                             R8 R1
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K7 ["_convertViewable"]
       23 GETUPVAL                         R10 0
       24 CALL                             R7 3 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K8 ["toJSBoolean"]
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K0 ["viewableItems"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K5 ["filter"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K6 ["map"]
       37 MOVE                             R8 R2
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K7 ["_convertViewable"]
       41 GETUPVAL                         R10 0
       42 CALL                             R7 3 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K8 ["toJSBoolean"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K1 ["changed"]
       49 CALL                             R4 1 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R2 R0 K1 ["index"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K2 ["_subExtractor"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R4
       11 RETURN                           R4 1
       12 GETTABLEKS                       R4 R3 K1 ["index"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+45]
       16 GETTABLEKS                       R5 R3 K3 ["section"]
       18 GETTABLEKS                       R6 R3 K4 ["header"]
       20 JUMPIFNOTEQKB                    R6 TRUE ; [+20]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K5 ["props"]
       25 GETTABLEKS                       R6 R6 K6 ["renderSectionHeader"]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K7 ["toJSBoolean"]
       30 MOVE                             R9 R6
       31 CALL                             R8 1 1
       32 JUMPIFNOT                        R8 ; [+6]
       33 MOVE                             R7 R6
       34 DUPTABLE                         R8 K8 [{"section"}]
       35 SETTABLEKS                       R5 R8 K3 ["section"]
       37 CALL                             R7 1 1
       38 RETURN                           R7 1
       39 LOADNIL                          R7
       40 RETURN                           R7 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K5 ["props"]
       44 GETTABLEKS                       R6 R6 K9 ["renderSectionFooter"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K7 ["toJSBoolean"]
       49 MOVE                             R9 R6
       50 CALL                             R8 1 1
       51 JUMPIFNOT                        R8 ; [+6]
       52 MOVE                             R7 R6
       53 DUPTABLE                         R8 K8 [{"section"}]
       54 SETTABLEKS                       R5 R8 K3 ["section"]
       56 CALL                             R7 1 1
       57 RETURN                           R7 1
       58 LOADNIL                          R7
       59 RETURN                           R7 1
       60 GETTABLEKS                       R5 R3 K3 ["section"]
       62 GETTABLEKS                       R5 R5 K10 ["renderItem"]
       64 JUMPIF                           R5 ; [+5]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K5 ["props"]
       68 GETTABLEKS                       R5 R5 K10 ["renderItem"]
       70 GETUPVAL                         R6 0
       71 MOVE                             R8 R2
       72 MOVE                             R9 R3
       73 GETUPVAL                         R10 2
       74 NAMECALL                         R6 R6 K11 ["_getSeparatorComponent"]
       76 CALL                             R6 4 1
       77 GETUPVAL                         R7 3
       78 MOVE                             R8 R5
       79 LOADK                            R9 K12 ["no renderItem!"]
       80 CALL                             R7 2 0
       81 GETUPVAL                         R7 4
       82 GETTABLEKS                       R7 R7 K13 ["createElement"]
       84 GETUPVAL                         R8 5
       85 DUPTABLE                         R9 K28 [{"SeparatorComponent", "LeadingSeparatorComponent", "cellKey", "index", "item", "leadingItem", "leadingSection", "prevCellKey", "setSelfHighlightCallback", "setSelfUpdatePropsCallback", "updateHighlightFor", "updatePropsFor", "renderItem", "section", "trailingItem", "trailingSection", "inverted", "horizontal"}]
       86 SETTABLEKS                       R6 R9 K14 ["SeparatorComponent"]
       88 JUMPIFNOTEQKN                    R4 K29 [1] ; [+7]
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R10 R10 K5 ["props"]
       93 GETTABLEKS                       R10 R10 K30 ["SectionSeparatorComponent"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R10
       97 SETTABLEKS                       R10 R9 K15 ["LeadingSeparatorComponent"]
       99 GETTABLEKS                       R10 R3 K31 ["key"]
      101 SETTABLEKS                       R10 R9 K16 ["cellKey"]
      103 SETTABLEKS                       R4 R9 K1 ["index"]
      105 SETTABLEKS                       R1 R9 K0 ["item"]
      107 GETTABLEKS                       R10 R3 K17 ["leadingItem"]
      109 SETTABLEKS                       R10 R9 K17 ["leadingItem"]
      111 GETTABLEKS                       R10 R3 K18 ["leadingSection"]
      113 SETTABLEKS                       R10 R9 K18 ["leadingSection"]
      115 GETUPVAL                         R10 0
      116 SUBK                             R12 R2 K29 [1]
      117 NAMECALL                         R10 R10 K2 ["_subExtractor"]
      119 CALL                             R10 2 1
      120 JUMPIF                           R10 ; [+2]
      121 NEWTABLE                         R10 0 0
      123 GETTABLEKS                       R10 R10 K31 ["key"]
      125 SETTABLEKS                       R10 R9 K19 ["prevCellKey"]
      127 GETUPVAL                         R10 0
      128 GETTABLEKS                       R10 R10 K32 ["_setUpdateHighlightFor"]
      130 SETTABLEKS                       R10 R9 K20 ["setSelfHighlightCallback"]
      132 GETUPVAL                         R10 0
      133 GETTABLEKS                       R10 R10 K33 ["_setUpdatePropsFor"]
      135 SETTABLEKS                       R10 R9 K21 ["setSelfUpdatePropsCallback"]
      137 GETUPVAL                         R10 0
      138 GETTABLEKS                       R10 R10 K34 ["_updateHighlightFor"]
      140 SETTABLEKS                       R10 R9 K22 ["updateHighlightFor"]
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K35 ["_updatePropsFor"]
      145 SETTABLEKS                       R10 R9 K23 ["updatePropsFor"]
      147 SETTABLEKS                       R5 R9 K10 ["renderItem"]
      149 GETTABLEKS                       R10 R3 K3 ["section"]
      151 SETTABLEKS                       R10 R9 K3 ["section"]
      153 GETTABLEKS                       R10 R3 K24 ["trailingItem"]
      155 SETTABLEKS                       R10 R9 K24 ["trailingItem"]
      157 GETTABLEKS                       R10 R3 K25 ["trailingSection"]
      159 SETTABLEKS                       R10 R9 K25 ["trailingSection"]
      161 GETUPVAL                         R10 1
      162 GETTABLEKS                       R10 R10 K7 ["toJSBoolean"]
      164 GETUPVAL                         R11 0
      165 GETTABLEKS                       R11 R11 K5 ["props"]
      167 GETTABLEKS                       R11 R11 K26 ["inverted"]
      169 CALL                             R10 1 1
      170 SETTABLEKS                       R10 R9 K26 ["inverted"]
      172 GETUPVAL                         R10 0
      173 GETTABLEKS                       R10 R10 K5 ["props"]
      175 GETTABLEKS                       R10 R10 K27 ["horizontal"]
      177 SETTABLEKS                       R10 R9 K27 ["horizontal"]
      179 CALL                             R7 2 -1
      180 RETURN                           R7 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_updatePropsMap"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 MOVE                             R3 R2
        7 MOVE                             R4 R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_updateHighlightMap"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 MOVE                             R3 R2
        7 MOVE                             R4 R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["_updateHighlightMap"]
        5 SETTABLE                         R1 R2 R0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["_updateHighlightMap"]
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0

PROTO_9:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["_updatePropsMap"]
        5 SETTABLE                         R1 R2 R0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["_updatePropsMap"]
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_updateHighlightMap"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_updatePropsMap"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["_listRef"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K3 ["_captureRef"]
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K4 ["_keyExtractor"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 SETTABLEKS                       R1 R0 K5 ["_convertViewable"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 SETTABLEKS                       R1 R0 K6 ["_onViewableItemsChanged"]
       32 NEWCLOSURE                       R1 P4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 SETTABLEKS                       R1 R0 K7 ["_renderItem"]
       40 NEWCLOSURE                       R1 P5
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K8 ["_updatePropsFor"]
       44 NEWCLOSURE                       R1 P6
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K9 ["_updateHighlightFor"]
       48 NEWCLOSURE                       R1 P7
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K10 ["_setUpdateHighlightFor"]
       52 NEWCLOSURE                       R1 P8
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K11 ["_setUpdatePropsFor"]
       56 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["itemIndex"]
        2 LOADN                            R3 1
        3 GETTABLEKS                       R4 R1 K1 ["sectionIndex"]
        5 JUMPIFNOTLT                      R3 R4 ; [+17]
        7 GETTABLEKS                       R5 R0 K3 ["props"]
        9 GETTABLEKS                       R5 R5 K4 ["getItemCount"]
       11 GETTABLEKS                       R7 R0 K3 ["props"]
       13 GETTABLEKS                       R7 R7 K5 ["sections"]
       15 GETTABLE                         R6 R7 R3
       16 GETTABLEKS                       R6 R6 K6 ["data"]
       18 CALL                             R5 1 1
       19 ADDK                             R4 R5 K2 [2]
       20 ADD                              R2 R2 R4
       21 ADDK                             R3 R3 K7 [1]
       22 JUMPBACK                         ; [-20]
       23 GETTABLEKS                       R5 R1 K9 ["viewOffset"]
       25 ORK                              R4 R5 K8 [0]
       26 GETTABLEKS                       R5 R0 K10 ["_listRef"]
       28 JUMPIFNOTEQKNIL                  R5 ; [+2]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R5 R1 K0 ["itemIndex"]
       33 LOADN                            R6 1
       34 JUMPIFNOTLT                      R6 R5 ; [+17]
       36 GETTABLEKS                       R5 R0 K3 ["props"]
       38 GETTABLEKS                       R5 R5 K11 ["stickySectionHeadersEnabled"]
       40 JUMPIFNOT                        R5 ; [+11]
       41 GETTABLEKS                       R5 R0 K10 ["_listRef"]
       43 GETTABLEKS                       R5 R5 K12 ["__getFrameMetricsApprox"]
       45 GETTABLEKS                       R7 R1 K0 ["itemIndex"]
       47 SUB                              R6 R2 R7
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R5 K13 ["length"]
       51 ADD                              R4 R4 R6
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K14 ["assign"]
       55 NEWTABLE                         R6 0 0
       57 MOVE                             R7 R1
       58 DUPTABLE                         R8 K16 [{"viewOffset", "index"}]
       59 SETTABLEKS                       R4 R8 K9 ["viewOffset"]
       61 SETTABLEKS                       R2 R8 K15 ["index"]
       63 CALL                             R5 3 1
       64 GETTABLEKS                       R6 R0 K10 ["_listRef"]
       66 MOVE                             R8 R5
       67 NAMECALL                         R6 R6 K17 ["scrollToIndex"]
       69 CALL                             R6 2 0
       70 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_listRef"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["props"]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 NAMECALL                         R2 R2 K1 ["_getItem"]
        8 CALL                             R2 4 -1
        9 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["renderItem"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["sections"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["assign"]
       11 NEWTABLE                         R4 0 0
       13 GETTABLEKS                       R5 R0 K0 ["props"]
       15 DUPTABLE                         R6 K9 [{"ItemSeparatorComponent", "SectionSeparatorComponent", "renderItem", "renderSectionFooter", "renderSectionHeader", "sections", "stickySectionHeadersEnabled"}]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K10 ["None"]
       19 SETTABLEKS                       R7 R6 K4 ["ItemSeparatorComponent"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K10 ["None"]
       24 SETTABLEKS                       R7 R6 K5 ["SectionSeparatorComponent"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K10 ["None"]
       29 SETTABLEKS                       R7 R6 K1 ["renderItem"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K10 ["None"]
       34 SETTABLEKS                       R7 R6 K6 ["renderSectionFooter"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K10 ["None"]
       39 SETTABLEKS                       R7 R6 K7 ["renderSectionHeader"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K10 ["None"]
       44 SETTABLEKS                       R7 R6 K2 ["sections"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K10 ["None"]
       49 SETTABLEKS                       R7 R6 K8 ["stickySectionHeadersEnabled"]
       51 CALL                             R3 3 1
       52 GETTABLEKS                       R5 R0 K0 ["props"]
       54 GETTABLEKS                       R5 R5 K11 ["ListHeaderComponent"]
       56 JUMPIFNOT                        R5 ; [+2]
       57 LOADN                            R4 1
       58 JUMP                             ; [+1]
       59 LOADN                            R4 0
       60 GETTABLEKS                       R6 R0 K0 ["props"]
       62 GETTABLEKS                       R6 R6 K8 ["stickySectionHeadersEnabled"]
       64 JUMPIFNOT                        R6 ; [+3]
       65 NEWTABLE                         R5 0 0
       67 JUMP                             ; [+1]
       68 LOADNIL                          R5
       69 LOADN                            R6 0
       70 GETIMPORT                        R7 K13 [ipairs]
       72 GETTABLEKS                       R8 R0 K0 ["props"]
       74 GETTABLEKS                       R8 R8 K2 ["sections"]
       76 CALL                             R7 1 3
       77 FORGPREP_INEXT                   R7
       78 JUMPIFEQKNIL                     R5 ; [+8]
       80 ADD                              R14 R6 R4
       81 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       83 MOVE                             R13 R5
       84 GETIMPORT                        R12 K16 [table.insert]
       86 CALL                             R12 2 0
       87 ADDK                             R6 R6 K17 [2]
       88 GETTABLEKS                       R12 R0 K0 ["props"]
       90 GETTABLEKS                       R12 R12 K18 ["getItemCount"]
       92 GETTABLEKS                       R13 R11 K19 ["data"]
       94 CALL                             R12 1 1
       95 ADD                              R6 R6 R12
       96 FORGLOOP                         R7 2 [inext] ; [-19]
       98 GETTABLEKS                       R7 R0 K20 ["_renderItem"]
      100 MOVE                             R8 R6
      101 CALL                             R7 1 1
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R8 R8 K21 ["createElement"]
      105 GETUPVAL                         R9 2
      106 GETUPVAL                         R10 0
      107 GETTABLEKS                       R10 R10 K3 ["assign"]
      109 NEWTABLE                         R11 0 0
      111 MOVE                             R12 R3
      112 DUPTABLE                         R13 K27 [{"keyExtractor", "stickyHeaderIndices", "renderItem", "data", "getItem", "getItemCount", "onViewableItemsChanged", "ref"}]
      113 GETTABLEKS                       R14 R0 K28 ["_keyExtractor"]
      115 SETTABLEKS                       R14 R13 K22 ["keyExtractor"]
      117 SETTABLEKS                       R5 R13 K23 ["stickyHeaderIndices"]
      119 SETTABLEKS                       R7 R13 K1 ["renderItem"]
      121 GETTABLEKS                       R14 R0 K0 ["props"]
      123 GETTABLEKS                       R14 R14 K2 ["sections"]
      125 SETTABLEKS                       R14 R13 K19 ["data"]
      127 NEWCLOSURE                       R14 P0
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R14 R13 K24 ["getItem"]
      131 NEWCLOSURE                       R14 P1
      132 CAPTURE                          REF R6
      133 SETTABLEKS                       R14 R13 K18 ["getItemCount"]
      135 GETTABLEKS                       R15 R0 K0 ["props"]
      137 GETTABLEKS                       R15 R15 K25 ["onViewableItemsChanged"]
      139 JUMPIFNOT                        R15 ; [+3]
      140 GETTABLEKS                       R14 R0 K29 ["_onViewableItemsChanged"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R14
      144 SETTABLEKS                       R14 R13 K25 ["onViewableItemsChanged"]
      146 GETTABLEKS                       R14 R0 K30 ["_captureRef"]
      148 SETTABLEKS                       R14 R13 K26 ["ref"]
      150 CALL                             R10 3 -1
      151 CALL                             R8 -1 -1
      152 CLOSEUPVALS                      R6
      153 RETURN                           R8 -1

PROTO_16:
        0 JUMPIF                           R2 ; [+2]
        1 LOADNIL                          R4
        2 RETURN                           R4 1
        3 SUBK                             R4 R3 K0 [1]
        4 LOADN                            R5 1
        5 LENGTH                           R6 R2
        6 JUMPIFNOTLE                      R5 R6 ; [+26]
        8 GETTABLE                         R6 R2 R5
        9 GETTABLEKS                       R7 R6 K1 ["data"]
       11 GETTABLEKS                       R8 R1 K2 ["getItemCount"]
       13 MOVE                             R9 R7
       14 CALL                             R8 1 1
       15 JUMPIFEQKN                       R4 K3 [0] ; [+4]
       17 ADDK                             R9 R8 K0 [1]
       18 JUMPIFNOTEQ                      R4 R9 ; [+2]
       20 RETURN                           R6 1
       21 JUMPIFNOTLE                      R4 R8 ; [+7]
       23 GETTABLEKS                       R9 R1 K4 ["getItem"]
       25 MOVE                             R10 R7
       26 MOVE                             R11 R4
       27 CALL                             R9 2 -1
       28 RETURN                           R9 -1
       29 ADDK                             R9 R8 K5 [2]
       30 SUB                              R4 R4 R9
       31 ADDK                             R5 R5 K0 [1]
       32 JUMPBACK                         ; [-28]
       33 LOADNIL                          R6
       34 RETURN                           R6 1

PROTO_17:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 GETTABLEKS                       R7 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R7 K1 ["getItem"]
        9 GETTABLEKS                       R4 R7 K2 ["getItemCount"]
       11 GETTABLEKS                       R5 R7 K3 ["keyExtractor"]
       13 GETTABLEKS                       R6 R7 K4 ["sections"]
       15 LOADN                            R7 1
       16 LENGTH                           R8 R6
       17 JUMPIFNOTLE                      R7 R8 ; [+132]
       19 GETTABLE                         R8 R6 R7
       20 GETTABLEKS                       R9 R8 K5 ["data"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K6 ["toJSBoolean"]
       25 GETTABLEKS                       R12 R8 K7 ["key"]
       27 CALL                             R11 1 1
       28 JUMPIFNOT                        R11 ; [+7]
       29 GETTABLEKS                       R11 R8 K7 ["key"]
       31 FASTCALL1                        TOSTRING R11 ; [+2]
       32 GETIMPORT                        R10 K9 [tostring]
       34 CALL                             R10 1 1
       35 JUMP                             ; [+5]
       36 FASTCALL1                        TOSTRING R7 ; [+3]
       37 MOVE                             R11 R7
       38 GETIMPORT                        R10 K9 [tostring]
       40 CALL                             R10 1 1
       41 SUBK                             R2 R2 K10 [1]
       42 MOVE                             R12 R4
       43 MOVE                             R13 R9
       44 CALL                             R12 1 1
       45 ADDK                             R11 R12 K10 [1]
       46 JUMPIFNOTLT                      R11 R2 ; [+7]
       48 MOVE                             R12 R4
       49 MOVE                             R13 R9
       50 CALL                             R12 1 1
       51 ADDK                             R11 R12 K10 [1]
       52 SUB                              R2 R2 R11
       53 JUMP                             ; [+94]
       54 JUMPIFNOTEQKN                    R2 K11 [0] ; [+20]
       56 DUPTABLE                         R11 K16 [{"section", "key", "index", "header", "trailingSection"}]
       57 SETTABLEKS                       R8 R11 K12 ["section"]
       59 MOVE                             R13 R10
       60 LOADK                            R14 K17 [":header"]
       61 CONCAT                           R12 R13 R14
       62 SETTABLEKS                       R12 R11 K7 ["key"]
       64 LOADNIL                          R12
       65 SETTABLEKS                       R12 R11 K13 ["index"]
       67 LOADB                            R12 1
       68 SETTABLEKS                       R12 R11 K14 ["header"]
       70 ADDK                             R13 R7 K10 [1]
       71 GETTABLE                         R12 R6 R13
       72 SETTABLEKS                       R12 R11 K15 ["trailingSection"]
       74 RETURN                           R11 1
       75 MOVE                             R12 R4
       76 MOVE                             R13 R9
       77 CALL                             R12 1 1
       78 ADDK                             R11 R12 K10 [1]
       79 JUMPIFNOTEQ                      R2 R11 ; [+20]
       81 DUPTABLE                         R11 K16 [{"section", "key", "index", "header", "trailingSection"}]
       82 SETTABLEKS                       R8 R11 K12 ["section"]
       84 MOVE                             R13 R10
       85 LOADK                            R14 K18 [":footer"]
       86 CONCAT                           R12 R13 R14
       87 SETTABLEKS                       R12 R11 K7 ["key"]
       89 LOADNIL                          R12
       90 SETTABLEKS                       R12 R11 K13 ["index"]
       92 LOADB                            R12 0
       93 SETTABLEKS                       R12 R11 K14 ["header"]
       95 ADDK                             R13 R7 K10 [1]
       96 GETTABLE                         R12 R6 R13
       97 SETTABLEKS                       R12 R11 K15 ["trailingSection"]
       99 RETURN                           R11 1
      100 GETTABLEKS                       R11 R8 K3 ["keyExtractor"]
      102 JUMPIF                           R11 ; [+3]
      103 MOVE                             R11 R5
      104 JUMPIF                           R11 ; [+1]
      105 GETUPVAL                         R11 1
      106 DUPTABLE                         R12 K22 [{"section", "key", "index", "leadingItem", "leadingSection", "trailingItem", "trailingSection"}]
      107 SETTABLEKS                       R8 R12 K12 ["section"]
      109 MOVE                             R14 R10
      110 LOADK                            R15 K23 [":"]
      111 MOVE                             R17 R11
      112 MOVE                             R18 R3
      113 MOVE                             R19 R9
      114 MOVE                             R20 R2
      115 CALL                             R18 2 1
      116 MOVE                             R19 R2
      117 CALL                             R17 2 -1
      118 FASTCALL                         TOSTRING ; [+2]
      119 GETIMPORT                        R16 K9 [tostring]
      121 CALL                             R16 -1 1
      122 CONCAT                           R13 R14 R16
      123 SETTABLEKS                       R13 R12 K7 ["key"]
      125 SETTABLEKS                       R2 R12 K13 ["index"]
      127 MOVE                             R13 R3
      128 MOVE                             R14 R9
      129 SUBK                             R15 R2 K10 [1]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K19 ["leadingItem"]
      133 SUBK                             R14 R7 K10 [1]
      134 GETTABLE                         R13 R6 R14
      135 SETTABLEKS                       R13 R12 K20 ["leadingSection"]
      137 MOVE                             R13 R3
      138 MOVE                             R14 R9
      139 ADDK                             R15 R2 K10 [1]
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R12 K21 ["trailingItem"]
      143 ADDK                             R14 R7 K10 [1]
      144 GETTABLE                         R13 R6 R14
      145 SETTABLEKS                       R13 R12 K15 ["trailingSection"]
      147 RETURN                           R12 1
      148 ADDK                             R7 R7 K10 [1]
      149 JUMPBACK                         ; [-134]
      150 LOADNIL                          R8
      151 RETURN                           R8 1

PROTO_18:
        0 JUMPIFNOT                        R2 ; [+1]
        1 JUMP                             ; [+5]
        2 MOVE                             R6 R1
        3 NAMECALL                         R4 R0 K0 ["_subExtractor"]
        5 CALL                             R4 2 1
        6 MOVE                             R2 R4
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 MOVE                             R4 R2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["toJSBoolean"]
       14 GETTABLEKS                       R7 R4 K2 ["section"]
       16 GETTABLEKS                       R7 R7 K3 ["ItemSeparatorComponent"]
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+5]
       20 GETTABLEKS                       R5 R4 K2 ["section"]
       22 GETTABLEKS                       R5 R5 K3 ["ItemSeparatorComponent"]
       24 JUMPIF                           R5 ; [+4]
       25 GETTABLEKS                       R5 R0 K4 ["props"]
       27 GETTABLEKS                       R5 R5 K3 ["ItemSeparatorComponent"]
       29 GETTABLEKS                       R6 R0 K4 ["props"]
       31 GETTABLEKS                       R6 R6 K5 ["SectionSeparatorComponent"]
       33 JUMPIFEQ                         R1 R3 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETTABLEKS                       R9 R4 K6 ["index"]
       39 GETTABLEKS                       R10 R0 K4 ["props"]
       41 GETTABLEKS                       R10 R10 K7 ["getItemCount"]
       43 GETTABLEKS                       R11 R4 K2 ["section"]
       45 GETTABLEKS                       R11 R11 K8 ["data"]
       47 CALL                             R10 1 1
       48 JUMPIFEQ                         R9 R10 ; [+2]
       50 LOADB                            R8 0 +1
       51 LOADB                            R8 1
       52 JUMPIFNOT                        R6 ; [+2]
       53 JUMPIFNOT                        R8 ; [+1]
       54 RETURN                           R6 1
       55 JUMPIFNOT                        R5 ; [+3]
       56 JUMPIF                           R8 ; [+2]
       57 JUMPIF                           R7 ; [+1]
       58 RETURN                           R5 1
       59 LOADNIL                          R9
       60 RETURN                           R9 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 3
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 4
        7 CALL                             R0 2 0
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 LOADB                            R2 1
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 LOADB                            R2 0
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOTEQKS                    R0 K0 ["leading"] ; [+30]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["assign"]
        9 NEWTABLE                         R4 0 0
       11 GETUPVAL                         R5 3
       12 MOVE                             R6 R1
       13 CALL                             R3 3 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 4
       17 JUMPIFEQKNIL                     R2 ; [+28]
       19 GETUPVAL                         R2 5
       20 GETUPVAL                         R3 4
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K1 ["assign"]
       24 NEWTABLE                         R5 0 0
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R1
       28 CALL                             R4 3 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0
       31 JUMPIFNOTEQKS                    R0 K2 ["trailing"] ; [+14]
       33 GETUPVAL                         R2 6
       34 JUMPIFEQKNIL                     R2 ; [+11]
       36 GETUPVAL                         R2 7
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K1 ["assign"]
       40 NEWTABLE                         R4 0 0
       42 GETUPVAL                         R5 8
       43 MOVE                             R6 R1
       44 CALL                             R3 3 -1
       45 CALL                             R2 -1 0
       46 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["LeadingSeparatorComponent"]
        2 GETTABLEKS                       R2 R0 K1 ["SeparatorComponent"]
        4 GETTABLEKS                       R3 R0 K2 ["cellKey"]
        6 GETTABLEKS                       R4 R0 K3 ["prevCellKey"]
        8 GETTABLEKS                       R5 R0 K4 ["setSelfHighlightCallback"]
       10 GETTABLEKS                       R6 R0 K5 ["updateHighlightFor"]
       12 GETTABLEKS                       R7 R0 K6 ["setSelfUpdatePropsCallback"]
       14 GETTABLEKS                       R8 R0 K7 ["updatePropsFor"]
       16 GETTABLEKS                       R9 R0 K8 ["item"]
       18 GETTABLEKS                       R10 R0 K9 ["index"]
       20 GETTABLEKS                       R11 R0 K10 ["section"]
       22 GETTABLEKS                       R12 R0 K11 ["inverted"]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K12 ["useState"]
       27 LOADB                            R14 0
       28 CALL                             R13 1 2
       29 GETUPVAL                         R15 0
       30 GETTABLEKS                       R15 R15 K12 ["useState"]
       32 LOADB                            R16 0
       33 CALL                             R15 1 2
       34 GETUPVAL                         R17 0
       35 GETTABLEKS                       R17 R17 K12 ["useState"]
       37 DUPTABLE                         R18 K18 [{"leadingItem", "leadingSection", "section", "trailingItem", "trailingSection", "LayoutOrder"}]
       38 GETTABLEKS                       R19 R0 K13 ["leadingItem"]
       40 SETTABLEKS                       R19 R18 K13 ["leadingItem"]
       42 GETTABLEKS                       R19 R0 K14 ["leadingSection"]
       44 SETTABLEKS                       R19 R18 K14 ["leadingSection"]
       46 GETTABLEKS                       R19 R0 K10 ["section"]
       48 SETTABLEKS                       R19 R18 K10 ["section"]
       50 GETTABLEKS                       R19 R0 K8 ["item"]
       52 SETTABLEKS                       R19 R18 K15 ["trailingItem"]
       54 GETTABLEKS                       R19 R0 K16 ["trailingSection"]
       56 SETTABLEKS                       R19 R18 K16 ["trailingSection"]
       58 LOADN                            R19 255
       59 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
       61 CALL                             R17 1 2
       62 GETUPVAL                         R19 0
       63 GETTABLEKS                       R19 R19 K12 ["useState"]
       65 DUPTABLE                         R20 K18 [{"leadingItem", "leadingSection", "section", "trailingItem", "trailingSection", "LayoutOrder"}]
       66 GETTABLEKS                       R21 R0 K8 ["item"]
       68 SETTABLEKS                       R21 R20 K13 ["leadingItem"]
       70 GETTABLEKS                       R21 R0 K14 ["leadingSection"]
       72 SETTABLEKS                       R21 R20 K14 ["leadingSection"]
       74 GETTABLEKS                       R21 R0 K10 ["section"]
       76 SETTABLEKS                       R21 R20 K10 ["section"]
       78 GETTABLEKS                       R21 R0 K15 ["trailingItem"]
       80 SETTABLEKS                       R21 R20 K15 ["trailingItem"]
       82 GETTABLEKS                       R21 R0 K16 ["trailingSection"]
       84 SETTABLEKS                       R21 R20 K16 ["trailingSection"]
       86 LOADN                            R21 1
       87 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
       89 CALL                             R19 1 2
       90 GETUPVAL                         R21 0
       91 GETTABLEKS                       R21 R21 K19 ["useEffect"]
       93 NEWCLOSURE                       R22 P0
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R20
       99 NEWTABLE                         R23 0 4
      101 MOVE                             R24 R3
      102 MOVE                             R25 R5
      103 MOVE                             R26 R20
      104 MOVE                             R27 R7
      105 SETLIST                          R23 R24 4 [1]
      107 CALL                             R21 2 0
      108 DUPTABLE                         R21 K23 [{"highlight", "unhighlight", "updateProps"}]
      109 NEWCLOSURE                       R22 P1
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R22 R21 K20 ["highlight"]
      116 NEWCLOSURE                       R22 P2
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R6
      121 SETTABLEKS                       R22 R21 K21 ["unhighlight"]
      123 NEWCLOSURE                       R22 P3
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R18
      126 CAPTURE                          UPVAL U1
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R19
      133 SETTABLEKS                       R22 R21 K22 ["updateProps"]
      135 GETTABLEKS                       R22 R0 K24 ["renderItem"]
      137 DUPTABLE                         R23 K26 [{"item", "index", "section", "separators"}]
      138 SETTABLEKS                       R9 R23 K8 ["item"]
      140 SETTABLEKS                       R10 R23 K9 ["index"]
      142 SETTABLEKS                       R11 R23 K10 ["section"]
      144 SETTABLEKS                       R21 R23 K25 ["separators"]
      146 CALL                             R22 1 1
      147 LOADB                            R23 0
      148 JUMPIFEQKNIL                     R1 ; [+14]
      150 GETUPVAL                         R23 0
      151 GETTABLEKS                       R23 R23 K27 ["createElement"]
      153 MOVE                             R24 R1
      154 GETUPVAL                         R25 1
      155 GETTABLEKS                       R25 R25 K28 ["assign"]
      157 DUPTABLE                         R26 K30 [{"highlighted"}]
      158 SETTABLEKS                       R13 R26 K29 ["highlighted"]
      160 MOVE                             R27 R17
      161 CALL                             R25 2 -1
      162 CALL                             R23 -1 1
      163 LOADB                            R24 0
      164 JUMPIFEQKNIL                     R2 ; [+14]
      166 GETUPVAL                         R24 0
      167 GETTABLEKS                       R24 R24 K27 ["createElement"]
      169 MOVE                             R25 R2
      170 GETUPVAL                         R26 1
      171 GETTABLEKS                       R26 R26 K28 ["assign"]
      173 DUPTABLE                         R27 K30 [{"highlighted"}]
      174 SETTABLEKS                       R15 R27 K29 ["highlighted"]
      176 MOVE                             R28 R19
      177 CALL                             R26 2 -1
      178 CALL                             R24 -1 1
      179 JUMPIF                           R23 ; [+1]
      180 JUMPIFNOT                        R24 ; [+68]
      181 GETUPVAL                         R25 0
      182 GETTABLEKS                       R25 R25 K27 ["createElement"]
      184 GETUPVAL                         R26 2
      185 DUPTABLE                         R27 K33 [{"Size", "AutomaticSize"}]
      186 GETTABLEKS                       R29 R0 K34 ["horizontal"]
      188 JUMPIFNOT                        R29 ; [+8]
      189 GETIMPORT                        R28 K37 [UDim2.new]
      191 LOADN                            R29 0
      192 LOADN                            R30 0
      193 LOADN                            R31 1
      194 LOADN                            R32 0
      195 CALL                             R28 4 1
      196 JUMP                             ; [+7]
      197 GETIMPORT                        R28 K37 [UDim2.new]
      199 LOADN                            R29 1
      200 LOADN                            R30 0
      201 LOADN                            R31 0
      202 LOADN                            R32 0
      203 CALL                             R28 4 1
      204 SETTABLEKS                       R28 R27 K31 ["Size"]
      206 GETTABLEKS                       R29 R0 K34 ["horizontal"]
      208 JUMPIFNOT                        R29 ; [+3]
      209 GETIMPORT                        R28 K40 [Enum.AutomaticSize.X]
      211 JUMP                             ; [+2]
      212 GETIMPORT                        R28 K42 [Enum.AutomaticSize.Y]
      214 SETTABLEKS                       R28 R27 K32 ["AutomaticSize"]
      216 GETUPVAL                         R28 0
      217 GETTABLEKS                       R28 R28 K27 ["createElement"]
      219 LOADK                            R29 K43 ["UIListLayout"]
      220 DUPTABLE                         R30 K46 [{"SortOrder", "FillDirection"}]
      221 GETIMPORT                        R31 K47 [Enum.SortOrder.LayoutOrder]
      223 SETTABLEKS                       R31 R30 K44 ["SortOrder"]
      225 GETTABLEKS                       R32 R0 K34 ["horizontal"]
      227 JUMPIFNOT                        R32 ; [+3]
      228 GETIMPORT                        R31 K49 [Enum.FillDirection.Horizontal]
      230 JUMP                             ; [+2]
      231 GETIMPORT                        R31 K51 [Enum.FillDirection.Vertical]
      233 SETTABLEKS                       R31 R30 K45 ["FillDirection"]
      235 CALL                             R28 2 1
      236 JUMPIFNOTEQKB                    R12 FALSE ; [+3]
      238 MOVE                             R29 R23
      239 JUMP                             ; [+1]
      240 MOVE                             R29 R24
      241 MOVE                             R30 R22
      242 JUMPIFNOTEQKB                    R12 FALSE ; [+3]
      244 MOVE                             R31 R24
      245 JUMP                             ; [+1]
      246 MOVE                             R31 R23
      247 CALL                             R25 6 1
      248 RETURN                           R25 1
      249 MOVE                             R25 R22
      250 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       18 GETTABLEKS                       R5 R2 K8 ["Object"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["jsUtils"]
       24 GETTABLEKS                       R7 R7 K10 ["invariant"]
       26 CALL                             R6 1 1
       27 GETIMPORT                        R7 K4 [require]
       29 GETIMPORT                        R8 K1 [script]
       31 GETTABLEKS                       R8 R8 K2 ["Parent"]
       33 GETTABLEKS                       R8 R8 K11 ["ViewabilityHelper"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K4 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R9 R9 K2 ["Parent"]
       42 GETTABLEKS                       R9 R9 K12 ["VirtualizeUtils"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R8 R8 K13 ["keyExtractor"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Components"]
       51 GETTABLEKS                       R10 R10 K15 ["View"]
       53 GETTABLEKS                       R10 R10 K15 ["View"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETIMPORT                        R11 K1 [script]
       60 GETTABLEKS                       R11 R11 K2 ["Parent"]
       62 GETTABLEKS                       R11 R11 K16 ["VirtualizedList"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R12 R1 K17 ["React"]
       69 CALL                             R11 1 1
       70 LOADNIL                          R12
       71 GETTABLEKS                       R13 R11 K18 ["PureComponent"]
       73 LOADK                            R15 K19 ["VirtualizedSectionList"]
       74 NAMECALL                         R13 R13 K20 ["extend"]
       76 CALL                             R13 2 1
       77 NEWCLOSURE                       R14 P0
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R11
       84 CAPTURE                          REF R12
       85 SETTABLEKS                       R14 R13 K21 ["init"]
       87 DUPCLOSURE                       R14 K22 [PROTO_11]
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R14 R13 K23 ["scrollToLocation"]
       91 DUPCLOSURE                       R14 K24 [PROTO_12]
       92 SETTABLEKS                       R14 R13 K25 ["getListRef"]
       94 DUPCLOSURE                       R14 K26 [PROTO_15]
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 SETTABLEKS                       R14 R13 K27 ["render"]
      100 DUPCLOSURE                       R14 K28 [PROTO_16]
      101 SETTABLEKS                       R14 R13 K29 ["_getItem"]
      103 DUPCLOSURE                       R14 K30 [PROTO_17]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R8
      106 SETTABLEKS                       R14 R13 K31 ["_subExtractor"]
      108 DUPCLOSURE                       R14 K32 [PROTO_18]
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R14 R13 K33 ["_getSeparatorComponent"]
      112 DUPCLOSURE                       R12 K34 [PROTO_24]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R9
      116 CLOSEUPVALS                      R12
      117 RETURN                           R13 1
