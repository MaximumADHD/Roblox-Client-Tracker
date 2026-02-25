PROTO_0:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETTABLE                         R2 R0 R1
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETTABLE                         R3 R0 R1
        4 GETTABLEKS                       R2 R3 K0 ["key"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+7]
        8 GETTABLE                         R2 R0 R1
        9 GETTABLE                         R4 R0 R1
       10 GETTABLEKS                       R3 R4 K1 ["id"]
       12 SETTABLEKS                       R3 R2 K0 ["key"]
       14 GETTABLE                         R2 R0 R1
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 LENGTH                           R1 R0
        5 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R2 K3 [{"length", "offset", "index"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K4 ["bubbleHeight"]
        4 SETTABLEKS                       R3 R2 K0 ["length"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K4 ["bubbleHeight"]
        9 MUL                              R3 R4 R1
       10 SETTABLEKS                       R3 R2 K1 ["offset"]
       12 SETTABLEKS                       R1 R2 K2 ["index"]
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["Tag"]
        9 GETUPVAL                         R5 1
       10 LOADK                            R6 K3 ["X-Border"]
       11 LOADK                            R7 K4 ["X-Fill"]
       12 LOADK                            R8 K5 ["CX-Invisible"]
       13 LOADK                            R9 K6 ["Component-BubbleFrame"]
       14 LOADK                            R10 K7 ["X-Column"]
       15 CALL                             R5 5 1
       16 SETTABLE                         R5 R3 R4
       17 DUPTABLE                         R4 K11 [{"BubbleHeader", "BubbleContainer", "BubbleFooter"}]
       18 GETTABLEKS                       R7 R0 K12 ["item"]
       20 GETTABLEKS                       R6 R7 K13 ["headerText"]
       22 JUMPIFEQKNIL                     R6 ; [+20]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K16 [{"title", "layoutOrder"}]
       29 GETTABLEKS                       R9 R0 K12 ["item"]
       31 GETTABLEKS                       R8 R9 K13 ["headerText"]
       33 SETTABLEKS                       R8 R7 K14 ["title"]
       35 GETUPVAL                         R8 3
       36 NAMECALL                         R8 R8 K17 ["getNextOrder"]
       38 CALL                             R8 1 1
       39 SETTABLEKS                       R8 R7 K15 ["layoutOrder"]
       41 CALL                             R5 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K8 ["BubbleHeader"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K0 ["createElement"]
       49 GETUPVAL                         R6 4
       50 DUPTABLE                         R7 K20 [{"Bubble", "LayoutOrder"}]
       51 GETTABLEKS                       R8 R0 K12 ["item"]
       53 SETTABLEKS                       R8 R7 K18 ["Bubble"]
       55 GETUPVAL                         R8 3
       56 NAMECALL                         R8 R8 K17 ["getNextOrder"]
       58 CALL                             R8 1 1
       59 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K9 ["BubbleContainer"]
       64 GETTABLEKS                       R7 R0 K12 ["item"]
       66 GETTABLEKS                       R6 R7 K21 ["footerText"]
       68 JUMPIFEQKNIL                     R6 ; [+20]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R5 R6 K0 ["createElement"]
       73 GETUPVAL                         R6 5
       74 DUPTABLE                         R7 K16 [{"title", "layoutOrder"}]
       75 GETTABLEKS                       R9 R0 K12 ["item"]
       77 GETTABLEKS                       R8 R9 K21 ["footerText"]
       79 SETTABLEKS                       R8 R7 K14 ["title"]
       81 GETUPVAL                         R8 3
       82 NAMECALL                         R8 R8 K17 ["getNextOrder"]
       84 CALL                             R8 1 1
       85 SETTABLEKS                       R8 R7 K15 ["layoutOrder"]
       87 CALL                             R5 2 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R5
       90 SETTABLEKS                       R5 R4 K10 ["BubbleFooter"]
       92 CALL                             R1 3 -1
       93 RETURN                           R1 -1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+12]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["cache"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R1 1
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 1
       10 GETUPVAL                         R2 2
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R0
       13 GETUPVAL                         R1 3
       14 LOADK                            R3 K1 ["Bubble"]
       15 LOADK                            R4 K2 ["Unknown"]
       16 NAMECALL                         R1 R1 K3 ["getText"]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [pairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 LOADB                            R8 0
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R8
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 GETUPVAL                         R11 2
       16 GETTABLEKS                       R12 R7 K2 ["id"]
       18 GETTABLE                         R10 R11 R12
       19 JUMPIFNOT                        R10 ; [+12]
       20 GETTABLEKS                       R11 R10 K3 ["headerText"]
       22 GETTABLEKS                       R12 R7 K3 ["headerText"]
       24 JUMPIFNOTEQ                      R11 R12 ; [+7]
       26 GETTABLEKS                       R11 R10 K4 ["footerText"]
       28 GETTABLEKS                       R12 R7 K4 ["footerText"]
       30 JUMPIFEQ                         R11 R12 ; [+14]
       32 GETUPVAL                         R12 3
       33 GETTABLEKS                       R11 R12 K5 ["translateEvent"]
       35 MOVE                             R12 R9
       36 GETUPVAL                         R13 1
       37 MOVE                             R14 R7
       38 CALL                             R11 3 1
       39 MOVE                             R10 R11
       40 JUMPIF                           R8 ; [+4]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R12 R7 K2 ["id"]
       44 SETTABLE                         R10 R11 R12
       45 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
       47 MOVE                             R12 R1
       48 MOVE                             R13 R10
       49 GETIMPORT                        R11 K8 [table.insert]
       51 CALL                             R11 2 0
       52 CLOSEUPVALS                      R8
       53 FORGLOOP                         R3 2 ; [-45]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K9 ["fetchUsernames"]
       58 GETUPVAL                         R4 4
       59 MOVE                             R5 R2
       60 CALL                             R4 1 -1
       61 CALL                             R3 -1 0
       62 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useState"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K1 ["use"]
       11 CALL                             R3 1 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 DUPTABLE                         R5 K4 [{"updated", "getTranslations"}]
       19 GETTABLEKS                       R6 R0 K5 ["cache"]
       21 SETTABLEKS                       R6 R5 K2 ["updated"]
       23 SETTABLEKS                       R4 R5 K3 ["getTranslations"]
       25 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getTranslations"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Events"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["viewableItems"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R6 K3 ["key"]
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R1 R7
       12 FORGLOOP                         R2 2 ; [-5]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K4 ["OnViewableItemsChanged"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"viewabilityConfig", "onViewableItemsChanged"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["viewabilityConfig"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["onViewableItemsChanged"]
        7 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 NEWTABLE                         R4 0 2
       11 GETTABLEKS                       R5 R0 K1 ["Events"]
       13 GETTABLEKS                       R6 R1 K2 ["updated"]
       15 SETLIST                          R4 R5 2 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K4 ["OnViewableItemsChanged"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R6 0 1
       38 MOVE                             R7 R3
       39 SETLIST                          R6 R7 1 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K5 ["createElement"]
       45 LOADK                            R6 K6 ["Frame"]
       46 NEWTABLE                         R7 1 0
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K7 ["Tag"]
       51 GETUPVAL                         R9 4
       52 LOADK                            R10 K8 ["X-Fill"]
       53 LOADK                            R11 K9 ["CX-Invisible"]
       54 LOADK                            R12 K10 ["Component-ActivityHistoryBubbleList"]
       55 CALL                             R9 3 1
       56 SETTABLE                         R9 R7 R8
       57 DUPTABLE                         R8 K12 [{"VirtualizedList"}]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R9 R10 K5 ["createElement"]
       61 GETUPVAL                         R10 5
       62 DUPTABLE                         R11 K29 [{"keyExtractor", "ref", "data", "getItem", "getItemCount", "getItemLayout", "renderItem", "windowSize", "viewabilityConfigCallbackPairs", "showsVerticalScrollIndicator", "showsHorizontalScrollIndicator", "showDefaultLoadingIndicators", "ListHeaderComponent", "ListFooterComponent", "onScroll", "ListEmptyComponent"}]
       63 DUPCLOSURE                       R12 K30 [PROTO_10]
       64 SETTABLEKS                       R12 R11 K13 ["keyExtractor"]
       66 GETTABLEKS                       R12 R0 K31 ["Vlref"]
       68 SETTABLEKS                       R12 R11 K14 ["ref"]
       70 SETTABLEKS                       R2 R11 K15 ["data"]
       72 GETUPVAL                         R12 6
       73 SETTABLEKS                       R12 R11 K16 ["getItem"]
       75 GETUPVAL                         R12 7
       76 SETTABLEKS                       R12 R11 K17 ["getItemCount"]
       78 GETUPVAL                         R12 8
       79 SETTABLEKS                       R12 R11 K18 ["getItemLayout"]
       81 GETUPVAL                         R12 9
       82 SETTABLEKS                       R12 R11 K19 ["renderItem"]
       84 LOADN                            R12 3
       85 SETTABLEKS                       R12 R11 K20 ["windowSize"]
       87 NEWTABLE                         R12 0 1
       89 MOVE                             R13 R4
       90 SETLIST                          R12 R13 1 [1]
       92 SETTABLEKS                       R12 R11 K21 ["viewabilityConfigCallbackPairs"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K22 ["showsVerticalScrollIndicator"]
       97 LOADB                            R12 0
       98 SETTABLEKS                       R12 R11 K23 ["showsHorizontalScrollIndicator"]
      100 LOADB                            R12 0
      101 SETTABLEKS                       R12 R11 K24 ["showDefaultLoadingIndicators"]
      103 GETTABLEKS                       R13 R0 K32 ["ShowHeaderLoadingIndicator"]
      105 JUMPIFNOT                        R13 ; [+2]
      106 GETUPVAL                         R12 10
      107 JUMPIF                           R12 ; [+1]
      108 LOADNIL                          R12
      109 SETTABLEKS                       R12 R11 K25 ["ListHeaderComponent"]
      111 GETTABLEKS                       R13 R0 K33 ["ShowFooterLoadingIndicator"]
      113 JUMPIFNOT                        R13 ; [+2]
      114 GETUPVAL                         R12 10
      115 JUMPIF                           R12 ; [+1]
      116 LOADNIL                          R12
      117 SETTABLEKS                       R12 R11 K26 ["ListFooterComponent"]
      119 GETTABLEKS                       R12 R0 K34 ["OnScroll"]
      121 SETTABLEKS                       R12 R11 K27 ["onScroll"]
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R12 R13 K5 ["createElement"]
      126 GETUPVAL                         R13 11
      127 DUPTABLE                         R14 K36 [{"openFiltersFn"}]
      128 GETTABLEKS                       R15 R0 K37 ["OpenFiltersFn"]
      130 SETTABLEKS                       R15 R14 K35 ["openFiltersFn"]
      132 CALL                             R12 2 1
      133 SETTABLEKS                       R12 R11 K28 ["ListEmptyComponent"]
      135 CALL                             R9 2 1
      136 SETTABLEKS                       R9 R8 K11 ["VirtualizedList"]
      138 CALL                             R5 3 -1
      139 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["VirtualizedList"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Resources"]
       43 GETTABLEKS                       R6 R7 K12 ["StyleTips"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K13 ["Util"]
       52 GETTABLEKS                       R7 R8 K14 ["SharedTypes"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K4 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R9 R10 K15 ["Components"]
       61 GETTABLEKS                       R8 R9 K16 ["ActivityHistoryBubble"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K4 [require]
       66 GETTABLEKS                       R11 R0 K10 ["Src"]
       68 GETTABLEKS                       R10 R11 K15 ["Components"]
       70 GETTABLEKS                       R9 R10 K17 ["ActivityHistoryBubbleListSectionHeader"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K4 [require]
       75 GETTABLEKS                       R12 R0 K10 ["Src"]
       77 GETTABLEKS                       R11 R12 K15 ["Components"]
       79 GETTABLEKS                       R10 R11 K18 ["ActivityHistoryBubbleListFooter"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K4 [require]
       84 GETTABLEKS                       R13 R0 K10 ["Src"]
       86 GETTABLEKS                       R12 R13 K13 ["Util"]
       88 GETTABLEKS                       R11 R12 K19 ["ActivityHistoryEventTranslated"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K4 [require]
       93 GETTABLEKS                       R14 R0 K10 ["Src"]
       95 GETTABLEKS                       R13 R14 K15 ["Components"]
       97 GETTABLEKS                       R12 R13 K20 ["ListLoadingIndicator"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K4 [require]
      102 GETTABLEKS                       R15 R0 K10 ["Src"]
      104 GETTABLEKS                       R14 R15 K15 ["Components"]
      106 GETTABLEKS                       R13 R14 K21 ["ListEmptyComponent"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K4 [require]
      111 GETTABLEKS                       R16 R0 K10 ["Src"]
      113 GETTABLEKS                       R15 R16 K22 ["Hooks"]
      115 GETTABLEKS                       R14 R15 K23 ["UsernameCache"]
      117 CALL                             R13 1 1
      118 GETTABLEKS                       R14 R4 K9 ["VirtualizedList"]
      120 GETTABLEKS                       R16 R2 K24 ["ContextServices"]
      122 GETTABLEKS                       R15 R16 K25 ["Localization"]
      124 GETTABLEKS                       R17 R3 K26 ["Dictionary"]
      126 GETTABLEKS                       R16 R17 K27 ["keys"]
      128 GETTABLEKS                       R18 R3 K26 ["Dictionary"]
      130 GETTABLEKS                       R17 R18 K28 ["values"]
      132 GETTABLEKS                       R19 R2 K29 ["Styling"]
      134 GETTABLEKS                       R18 R19 K30 ["joinTags"]
      136 GETTABLEKS                       R20 R2 K13 ["Util"]
      138 GETTABLEKS                       R19 R20 K31 ["LayoutOrderIterator"]
      140 GETTABLEKS                       R20 R19 K32 ["new"]
      142 CALL                             R20 0 1
      143 DUPCLOSURE                       R21 K33 [PROTO_0]
      144 DUPCLOSURE                       R22 K34 [PROTO_1]
      145 DUPCLOSURE                       R23 K35 [PROTO_2]
      146 CAPTURE                          VAL R5
      147 DUPCLOSURE                       R24 K36 [PROTO_3]
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R9
      154 DUPCLOSURE                       R25 K37 [PROTO_6]
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R16
      160 DUPTABLE                         R26 K42 [{"minimumViewTime", "viewAreaCoveragePercentThreshold", "itemVisiblePercentThreshold", "waitForInteraction"}]
      161 LOADN                            R27 208
      162 SETTABLEKS                       R27 R26 K38 ["minimumViewTime"]
      164 LOADN                            R27 80
      165 SETTABLEKS                       R27 R26 K39 ["viewAreaCoveragePercentThreshold"]
      167 LOADNIL                          R27
      168 SETTABLEKS                       R27 R26 K40 ["itemVisiblePercentThreshold"]
      170 LOADB                            R27 0
      171 SETTABLEKS                       R27 R26 K41 ["waitForInteraction"]
      173 DUPCLOSURE                       R27 K43 [PROTO_11]
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R12
      186 RETURN                           R27 1
