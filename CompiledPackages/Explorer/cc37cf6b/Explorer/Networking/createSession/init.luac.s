PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [task.defer]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 1
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["searchRootState"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["rootState"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 DUPCLOSURE                       R1 K0 [PROTO_2]
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["flushRootChanges"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 GETIMPORT                        R0 K3 [task.cancel]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expandAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["getFocusedRootState"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R1 R1 K2 ["queueRootChanged"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["unexpand"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["getFocusedRootState"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R1 R1 K2 ["queueRootChanged"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["expandAll"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["collapseAll"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExpandState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rootId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["expandAsync"]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["getFocusedRootState"]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R1 R1 K3 ["queueRootChanged"]
       15 CALL                             R1 0 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K4 ["requestCurrentSelection"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getPlaceIdAsync"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFocusedRootState"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K1 ["instanceIdsToNodes"]
        6 GETTABLE                         R1 R2 R0
        7 RETURN                           R1 1

PROTO_15:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETVARARGS                       R3 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETVARARGS                       R3 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETVARARGS                       R3 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 GETIMPORT                        R3 K3 [table.clone]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["emptyDataModelNode"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 2
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["rootId"]
       15 GETTABLEKS                       R6 R2 K6 ["get"]
       17 CALL                             R6 0 1
       18 SETTABLE                         R6 R4 R5
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 DUPTABLE                         R8 K14 [{["rootState"], ["searchRootState"] = , ["getFocusedRootState"], ["guestRpcInterface"], ["searchClearedSignal"], ["analyticsInterface"]}]
       23 DUPTABLE                         R9 K19 [{"queueRootChanged", "instanceIdsToNodes", "instanceIdsToHiddenChildren", "unaddedParentIdsToChildren"}]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          REF R5
       26 CAPTURE                          REF R6
       27 SETTABLEKS                       R10 R9 K15 ["queueRootChanged"]
       29 SETTABLEKS                       R4 R9 K16 ["instanceIdsToNodes"]
       31 NEWTABLE                         R10 0 0
       33 SETTABLEKS                       R10 R9 K17 ["instanceIdsToHiddenChildren"]
       35 NEWTABLE                         R10 0 0
       37 SETTABLEKS                       R10 R9 K18 ["unaddedParentIdsToChildren"]
       39 SETTABLEKS                       R9 R8 K7 ["rootState"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          REF R7
       43 SETTABLEKS                       R9 R8 K10 ["getFocusedRootState"]
       45 SETTABLEKS                       R0 R8 K11 ["guestRpcInterface"]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K20 ["new"]
       50 CALL                             R9 0 1
       51 SETTABLEKS                       R9 R8 K12 ["searchClearedSignal"]
       53 GETTABLEKS                       R9 R1 K13 ["analyticsInterface"]
       55 SETTABLEKS                       R9 R8 K13 ["analyticsInterface"]
       57 MOVE                             R7 R8
       58 GETUPVAL                         R8 3
       59 MOVE                             R9 R7
       60 CALL                             R8 1 1
       61 GETUPVAL                         R9 4
       62 MOVE                             R10 R7
       63 CALL                             R9 1 1
       64 GETUPVAL                         R10 5
       65 MOVE                             R11 R7
       66 CALL                             R10 1 1
       67 GETUPVAL                         R11 6
       68 MOVE                             R12 R7
       69 GETTABLEKS                       R13 R1 K21 ["getExpandHierarchySetting"]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 7
       73 MOVE                             R13 R7
       74 GETTABLEKS                       R14 R11 K22 ["selectedIdsArrayObservable"]
       76 CALL                             R12 2 1
       77 GETUPVAL                         R13 8
       78 MOVE                             R14 R7
       79 GETTABLEKS                       R15 R11 K23 ["selectIds"]
       81 GETTABLEKS                       R16 R1 K24 ["waitForNextSearchAsync"]
       83 GETTABLEKS                       R17 R1 K21 ["getExpandHierarchySetting"]
       85 GETTABLEKS                       R18 R11 K25 ["selectedIdsObservable"]
       87 CALL                             R13 5 1
       88 NEWCLOSURE                       R6 P2
       89 CAPTURE                          REF R5
       90 CAPTURE                          VAL R3
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          VAL R13
       93 GETUPVAL                         R14 10
       94 MOVE                             R15 R7
       95 MOVE                             R16 R11
       96 MOVE                             R17 R13
       97 CALL                             R14 3 1
       98 GETUPVAL                         R15 11
       99 MOVE                             R16 R2
      100 GETTABLEKS                       R17 R13 K26 ["searchRootObservable"]
      102 CALL                             R15 2 1
      103 GETUPVAL                         R16 12
      104 MOVE                             R17 R7
      105 MOVE                             R18 R15
      106 CALL                             R16 2 1
      107 GETUPVAL                         R17 13
      108 MOVE                             R18 R7
      109 GETTABLEKS                       R19 R13 K27 ["processInstanceReplaced"]
      111 CALL                             R17 2 1
      112 GETUPVAL                         R19 14
      113 CALL                             R19 0 1
      114 JUMPIFNOT                        R19 ; [+6]
      115 GETUPVAL                         R18 15
      116 MOVE                             R19 R7
      117 GETTABLEKS                       R20 R17 K28 ["instanceReplaced"]
      119 CALL                             R18 2 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R18
      122 GETUPVAL                         R19 16
      123 MOVE                             R20 R7
      124 CALL                             R19 1 1
      125 GETUPVAL                         R20 17
      126 MOVE                             R21 R7
      127 CALL                             R20 1 1
      128 DUPTABLE                         R21 K42 [{"instanceAdded", "instanceReplaced", "instanceStreamedOut", "streamedOutInstanceRemoved", "instancePinned", "instanceUnpinned", "selectionChanged", "guestHovered", "guestUnhovered", "updateFieldValue", "receiveSearchResults", "receiveSearchSuggestions", "instancePickerActivated", "instancePickerDeactivated"}]
      129 GETTABLEKS                       R22 R17 K29 ["instanceAdded"]
      131 SETTABLEKS                       R22 R21 K29 ["instanceAdded"]
      133 GETTABLEKS                       R22 R17 K28 ["instanceReplaced"]
      135 SETTABLEKS                       R22 R21 K28 ["instanceReplaced"]
      137 GETUPVAL                         R23 14
      138 CALL                             R23 0 1
      139 JUMPIFNOT                        R23 ; [+3]
      140 GETTABLEKS                       R22 R18 K30 ["instanceStreamedOut"]
      142 JUMP                             ; [+3]
      143 GETUPVAL                         R22 18
      144 LOADK                            R23 K30 ["instanceStreamedOut"]
      145 CALL                             R22 1 1
      146 SETTABLEKS                       R22 R21 K30 ["instanceStreamedOut"]
      148 GETUPVAL                         R23 14
      149 CALL                             R23 0 1
      150 JUMPIFNOT                        R23 ; [+3]
      151 GETTABLEKS                       R22 R18 K31 ["streamedOutInstanceRemoved"]
      153 JUMP                             ; [+3]
      154 GETUPVAL                         R22 18
      155 LOADK                            R23 K31 ["streamedOutInstanceRemoved"]
      156 CALL                             R22 1 1
      157 SETTABLEKS                       R22 R21 K31 ["streamedOutInstanceRemoved"]
      159 GETUPVAL                         R23 14
      160 CALL                             R23 0 1
      161 JUMPIFNOT                        R23 ; [+3]
      162 GETTABLEKS                       R22 R18 K32 ["instancePinned"]
      164 JUMP                             ; [+3]
      165 GETUPVAL                         R22 18
      166 LOADK                            R23 K32 ["instancePinned"]
      167 CALL                             R22 1 1
      168 SETTABLEKS                       R22 R21 K32 ["instancePinned"]
      170 GETUPVAL                         R23 14
      171 CALL                             R23 0 1
      172 JUMPIFNOT                        R23 ; [+3]
      173 GETTABLEKS                       R22 R18 K33 ["instanceUnpinned"]
      175 JUMP                             ; [+3]
      176 GETUPVAL                         R22 18
      177 LOADK                            R23 K33 ["instanceUnpinned"]
      178 CALL                             R22 1 1
      179 SETTABLEKS                       R22 R21 K33 ["instanceUnpinned"]
      181 GETTABLEKS                       R22 R11 K34 ["selectionChanged"]
      183 SETTABLEKS                       R22 R21 K34 ["selectionChanged"]
      185 GETTABLEKS                       R22 R16 K35 ["guestHovered"]
      187 SETTABLEKS                       R22 R21 K35 ["guestHovered"]
      189 GETTABLEKS                       R22 R16 K36 ["guestUnhovered"]
      191 SETTABLEKS                       R22 R21 K36 ["guestUnhovered"]
      193 GETTABLEKS                       R22 R9 K37 ["updateFieldValue"]
      195 SETTABLEKS                       R22 R21 K37 ["updateFieldValue"]
      197 GETTABLEKS                       R22 R13 K38 ["receiveSearchResults"]
      199 SETTABLEKS                       R22 R21 K38 ["receiveSearchResults"]
      201 GETTABLEKS                       R22 R13 K39 ["receiveSearchSuggestions"]
      203 SETTABLEKS                       R22 R21 K39 ["receiveSearchSuggestions"]
      205 GETTABLEKS                       R22 R19 K40 ["instancePickerActivated"]
      207 SETTABLEKS                       R22 R21 K40 ["instancePickerActivated"]
      209 GETTABLEKS                       R22 R19 K41 ["instancePickerDeactivated"]
      211 SETTABLEKS                       R22 R21 K41 ["instancePickerDeactivated"]
      213 NEWCLOSURE                       R22 P3
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R13
      216 CAPTURE                          REF R5
      217 NEWCLOSURE                       R23 P4
      218 CAPTURE                          UPVAL U19
      219 CAPTURE                          REF R7
      220 NEWCLOSURE                       R24 P5
      221 CAPTURE                          UPVAL U19
      222 CAPTURE                          REF R7
      223 NEWCLOSURE                       R25 P6
      224 CAPTURE                          UPVAL U19
      225 CAPTURE                          REF R7
      226 NEWCLOSURE                       R26 P7
      227 CAPTURE                          UPVAL U19
      228 CAPTURE                          REF R7
      229 NEWCLOSURE                       R27 P8
      230 CAPTURE                          UPVAL U19
      231 CAPTURE                          REF R7
      232 GETIMPORT                        R28 K45 [task.spawn]
      234 NEWCLOSURE                       R29 P9
      235 CAPTURE                          UPVAL U1
      236 CAPTURE                          UPVAL U19
      237 CAPTURE                          REF R7
      238 CAPTURE                          VAL R0
      239 CALL                             R28 1 0
      240 GETUPVAL                         R28 0
      241 GETTABLEKS                       R28 R28 K0 ["create"]
      243 LOADNIL                          R29
      244 CALL                             R28 1 2
      245 GETIMPORT                        R30 K45 [task.spawn]
      247 NEWCLOSURE                       R31 P10
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R0
      250 CALL                             R30 1 0
      251 GETUPVAL                         R30 0
      252 GETTABLEKS                       R30 R30 K0 ["create"]
      254 LOADB                            R31 1
      255 CALL                             R30 1 2
      256 NEWCLOSURE                       R32 P11
      257 CAPTURE                          VAL R31
      258 NEWCLOSURE                       R33 P12
      259 CAPTURE                          VAL R30
      260 LOADNIL                          R34
      261 NEWTABLE                         R35 64 0
      263 SETTABLEKS                       R15 R35 K46 ["focusedRootObservable"]
      265 NEWCLOSURE                       R36 P13
      266 CAPTURE                          REF R7
      267 SETTABLEKS                       R36 R35 K47 ["getExplorerNodeById"]
      269 SETTABLEKS                       R6 R35 K48 ["flushRootChanges"]
      271 SETTABLEKS                       R23 R35 K49 ["expandAsync"]
      273 SETTABLEKS                       R24 R35 K50 ["unexpand"]
      275 SETTABLEKS                       R27 R35 K51 ["getExpandState"]
      277 SETTABLEKS                       R25 R35 K52 ["expandAll"]
      279 SETTABLEKS                       R26 R35 K53 ["collapseAll"]
      281 GETTABLEKS                       R36 R11 K23 ["selectIds"]
      283 SETTABLEKS                       R36 R35 K23 ["selectIds"]
      285 GETTABLEKS                       R36 R11 K25 ["selectedIdsObservable"]
      287 SETTABLEKS                       R36 R35 K25 ["selectedIdsObservable"]
      289 GETTABLEKS                       R36 R11 K22 ["selectedIdsArrayObservable"]
      291 SETTABLEKS                       R36 R35 K22 ["selectedIdsArrayObservable"]
      293 GETTABLEKS                       R36 R11 K54 ["selectedWithinIdsObservable"]
      295 SETTABLEKS                       R36 R35 K54 ["selectedWithinIdsObservable"]
      297 NEWCLOSURE                       R36 P14
      298 CAPTURE                          UPVAL U20
      299 CAPTURE                          REF R7
      300 SETTABLEKS                       R36 R35 K55 ["renameInstance"]
      302 GETTABLEKS                       R36 R12 K56 ["openContextMenuAsync"]
      304 SETTABLEKS                       R36 R35 K56 ["openContextMenuAsync"]
      306 GETTABLEKS                       R36 R12 K57 ["performContextMenuAction"]
      308 SETTABLEKS                       R36 R35 K57 ["performContextMenuAction"]
      310 GETTABLEKS                       R36 R16 K58 ["hoverId"]
      312 SETTABLEKS                       R36 R35 K58 ["hoverId"]
      314 GETTABLEKS                       R36 R16 K59 ["hoveredObservable"]
      316 SETTABLEKS                       R36 R35 K59 ["hoveredObservable"]
      318 NEWCLOSURE                       R36 P15
      319 CAPTURE                          UPVAL U21
      320 CAPTURE                          REF R34
      321 CAPTURE                          REF R7
      322 SETTABLEKS                       R36 R35 K60 ["unselectedInstanceClicked"]
      324 NEWCLOSURE                       R36 P16
      325 CAPTURE                          UPVAL U22
      326 CAPTURE                          REF R34
      327 CAPTURE                          REF R7
      328 SETTABLEKS                       R36 R35 K61 ["doubleClick"]
      330 SETTABLEKS                       R14 R35 K62 ["shiftClick"]
      332 NEWCLOSURE                       R36 P17
      333 CAPTURE                          UPVAL U23
      334 CAPTURE                          REF R34
      335 CAPTURE                          REF R7
      336 SETTABLEKS                       R36 R35 K63 ["selectRange"]
      338 GETTABLEKS                       R36 R9 K64 ["setViewingInstances"]
      340 SETTABLEKS                       R36 R35 K64 ["setViewingInstances"]
      342 GETTABLEKS                       R36 R9 K65 ["addField"]
      344 SETTABLEKS                       R36 R35 K65 ["addField"]
      346 GETTABLEKS                       R36 R9 K66 ["requestedFieldsObservable"]
      348 SETTABLEKS                       R36 R35 K66 ["requestedFieldsObservable"]
      350 GETTABLEKS                       R36 R0 K67 ["performFieldAction"]
      352 SETTABLEKS                       R36 R35 K67 ["performFieldAction"]
      354 GETTABLEKS                       R36 R9 K68 ["seenFieldsObservable"]
      356 SETTABLEKS                       R36 R35 K68 ["seenFieldsObservable"]
      358 GETTABLEKS                       R36 R0 K69 ["dropSelectionOntoAsync"]
      360 SETTABLEKS                       R36 R35 K69 ["dropSelectionOntoAsync"]
      362 SETTABLEKS                       R20 R35 K70 ["getIndexOfInstanceId"]
      364 GETTABLEKS                       R36 R13 K71 ["setSearch"]
      366 SETTABLEKS                       R36 R35 K71 ["setSearch"]
      368 GETTABLEKS                       R36 R13 K72 ["getSearch"]
      370 SETTABLEKS                       R36 R35 K72 ["getSearch"]
      372 GETTABLEKS                       R36 R7 K12 ["searchClearedSignal"]
      374 SETTABLEKS                       R36 R35 K12 ["searchClearedSignal"]
      376 GETTABLEKS                       R36 R13 K73 ["searchSuggestionsObservable"]
      378 SETTABLEKS                       R36 R35 K73 ["searchSuggestionsObservable"]
      380 GETTABLEKS                       R36 R13 K74 ["searchResultCountObservable"]
      382 SETTABLEKS                       R36 R35 K74 ["searchResultCountObservable"]
      384 GETTABLEKS                       R36 R13 K75 ["isInstanceIdSearched"]
      386 SETTABLEKS                       R36 R35 K75 ["isInstanceIdSearched"]
      388 GETTABLEKS                       R36 R13 K76 ["selectAllSearchedIds"]
      390 SETTABLEKS                       R36 R35 K76 ["selectAllSearchedIds"]
      392 GETTABLEKS                       R36 R19 K77 ["instancePickerActiveObservable"]
      394 SETTABLEKS                       R36 R35 K77 ["instancePickerActiveObservable"]
      396 GETTABLEKS                       R36 R19 K78 ["instancePickerSubmitInstance"]
      398 SETTABLEKS                       R36 R35 K78 ["instancePickerSubmitInstance"]
      400 GETUPVAL                         R37 14
      401 CALL                             R37 0 1
      402 JUMPIFNOT                        R37 ; [+3]
      403 GETTABLEKS                       R36 R18 K79 ["requestStreamIn"]
      405 JUMP                             ; [+3]
      406 GETUPVAL                         R36 18
      407 LOADK                            R37 K79 ["requestStreamIn"]
      408 CALL                             R36 1 1
      409 SETTABLEKS                       R36 R35 K79 ["requestStreamIn"]
      411 GETUPVAL                         R37 14
      412 CALL                             R37 0 1
      413 JUMPIFNOT                        R37 ; [+3]
      414 GETTABLEKS                       R36 R18 K80 ["isInstancePinned"]
      416 JUMP                             ; [+3]
      417 GETUPVAL                         R36 18
      418 LOADK                            R37 K80 ["isInstancePinned"]
      419 CALL                             R36 1 1
      420 SETTABLEKS                       R36 R35 K80 ["isInstancePinned"]
      422 GETUPVAL                         R37 14
      423 CALL                             R37 0 1
      424 JUMPIFNOT                        R37 ; [+3]
      425 GETTABLEKS                       R36 R18 K81 ["pinsUpdatedSignal"]
      427 JUMP                             ; [+1]
      428 LOADNIL                          R36
      429 SETTABLEKS                       R36 R35 K81 ["pinsUpdatedSignal"]
      431 SETTABLEKS                       R8 R35 K82 ["capabilities"]
      433 SETTABLEKS                       R28 R35 K83 ["placeIdObservable"]
      435 SETTABLEKS                       R32 R35 K84 ["setArrowKeysEnabled"]
      437 SETTABLEKS                       R33 R35 K85 ["getArrowKeysEnabled"]
      439 SETTABLEKS                       R22 R35 K86 ["destroy"]
      441 MOVE                             R34 R35
      442 MOVE                             R35 R34
      443 MOVE                             R36 R21
      444 CLOSEUPVALS                      R5
      445 RETURN                           R35 2

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 2
        4 SETUPVAL                         R1 2
        5 MOVE                             R3 R2
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K0 ["destroy"]
        9 RETURN                           R3 2

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+20]
        3 LOADNIL                          R2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["addCommunicationLayer"]
        7 MOVE                             R4 R0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          REF R2
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R2 K1 ["destroy"]
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R4
       18 SETTABLEKS                       R5 R2 K1 ["destroy"]
       20 CLOSEUPVALS                      R2
       21 RETURN                           R2 1
       22 CLOSEUPVALS                      R2
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K2 ["createNetworkedHostToGuestRPCInterface"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 2
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 MOVE                             R6 R1
       31 CALL                             R4 2 2
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K3 ["addNetworkLayerToHostRPCInterface"]
       35 MOVE                             R7 R0
       36 MOVE                             R8 R5
       37 CALL                             R6 2 1
       38 GETTABLEKS                       R7 R4 K1 ["destroy"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R8 R4 K1 ["destroy"]
       46 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Networking"]
       25 GETTABLEKS                       R4 R4 K11 ["DEPRECATED_NetworkedRPCInterfaces"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K12 ["Expanding"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Networking"]
       39 GETTABLEKS                       R6 R6 K13 ["NetworkedRPCInterfaces"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Networking"]
       46 GETTABLEKS                       R7 R7 K14 ["NetworkingTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Util"]
       53 GETTABLEKS                       R8 R8 K15 ["Observable"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["RpcTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Parent"]
       65 GETTABLEKS                       R10 R10 K17 ["Signal"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K18 ["createFocusedRootObservable"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETIMPORT                        R12 K1 [script]
       79 GETTABLEKS                       R12 R12 K19 ["createGetIndexOfInstanceId"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETIMPORT                        R13 K1 [script]
       86 GETTABLEKS                       R13 R13 K20 ["createSessionCapabilities"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETIMPORT                        R14 K1 [script]
       93 GETTABLEKS                       R14 R14 K21 ["createSessionContextMenu"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETIMPORT                        R15 K1 [script]
      100 GETTABLEKS                       R15 R15 K22 ["createSessionDataModelUpdating"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETIMPORT                        R16 K1 [script]
      107 GETTABLEKS                       R16 R16 K23 ["createSessionFields"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETIMPORT                        R17 K1 [script]
      114 GETTABLEKS                       R17 R17 K24 ["createSessionHeartbeat"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETIMPORT                        R18 K1 [script]
      121 GETTABLEKS                       R18 R18 K25 ["createSessionHoverTracker"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETIMPORT                        R19 K1 [script]
      128 GETTABLEKS                       R19 R19 K26 ["createSessionInstancePicker"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETIMPORT                        R20 K1 [script]
      135 GETTABLEKS                       R20 R20 K27 ["createSessionSearching"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETIMPORT                        R21 K1 [script]
      142 GETTABLEKS                       R21 R21 K28 ["createSessionSelection"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETIMPORT                        R22 K1 [script]
      149 GETTABLEKS                       R22 R22 K29 ["createSessionStreaming"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETIMPORT                        R23 K1 [script]
      156 GETTABLEKS                       R23 R23 K30 ["createSessionTypes"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETIMPORT                        R24 K1 [script]
      163 GETTABLEKS                       R24 R24 K31 ["createShiftClick"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K8 ["Util"]
      170 GETTABLEKS                       R25 R25 K32 ["createUnimplemented"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETIMPORT                        R26 K1 [script]
      177 GETTABLEKS                       R26 R26 K33 ["doubleClick"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K34 ["Flags"]
      184 GETTABLEKS                       R27 R27 K35 ["getFFlagExplorerStreaming"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K34 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagExplorerSynchronizeAllMessages"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETIMPORT                        R29 K1 [script]
      198 GETTABLEKS                       R29 R29 K37 ["renameInstance"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETIMPORT                        R30 K1 [script]
      205 GETTABLEKS                       R30 R30 K38 ["selectRange"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETIMPORT                        R31 K1 [script]
      212 GETTABLEKS                       R31 R31 K39 ["unselectedInstanceClicked"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K8 ["Util"]
      219 GETTABLEKS                       R32 R32 K40 ["validateExplorerNodeSanity"]
      221 CALL                             R31 1 1
      222 DUPCLOSURE                       R32 K41 [PROTO_19]
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R31
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R18
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R30
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R29
      247 DUPCLOSURE                       R33 K42 [PROTO_23]
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R3
      252 RETURN                           R33 1
