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
       22 DUPTABLE                         R8 K13 [{"rootState", "searchRootState", "getFocusedRootState", "guestRpcInterface", "searchClearedSignal", "analyticsInterface"}]
       23 DUPTABLE                         R9 K18 [{"queueRootChanged", "instanceIdsToNodes", "instanceIdsToHiddenChildren", "unaddedParentIdsToChildren"}]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          REF R5
       26 CAPTURE                          REF R6
       27 SETTABLEKS                       R10 R9 K14 ["queueRootChanged"]
       29 SETTABLEKS                       R4 R9 K15 ["instanceIdsToNodes"]
       31 NEWTABLE                         R10 0 0
       33 SETTABLEKS                       R10 R9 K16 ["instanceIdsToHiddenChildren"]
       35 NEWTABLE                         R10 0 0
       37 SETTABLEKS                       R10 R9 K17 ["unaddedParentIdsToChildren"]
       39 SETTABLEKS                       R9 R8 K7 ["rootState"]
       41 LOADNIL                          R9
       42 SETTABLEKS                       R9 R8 K8 ["searchRootState"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          REF R7
       46 SETTABLEKS                       R9 R8 K9 ["getFocusedRootState"]
       48 SETTABLEKS                       R0 R8 K10 ["guestRpcInterface"]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K19 ["new"]
       53 CALL                             R9 0 1
       54 SETTABLEKS                       R9 R8 K11 ["searchClearedSignal"]
       56 GETTABLEKS                       R9 R1 K12 ["analyticsInterface"]
       58 SETTABLEKS                       R9 R8 K12 ["analyticsInterface"]
       60 MOVE                             R7 R8
       61 GETUPVAL                         R8 3
       62 MOVE                             R9 R7
       63 CALL                             R8 1 1
       64 GETUPVAL                         R9 4
       65 MOVE                             R10 R7
       66 CALL                             R9 1 1
       67 GETUPVAL                         R10 5
       68 MOVE                             R11 R7
       69 CALL                             R10 1 1
       70 GETUPVAL                         R11 6
       71 MOVE                             R12 R7
       72 GETTABLEKS                       R13 R1 K20 ["getExpandHierarchySetting"]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 7
       76 MOVE                             R13 R7
       77 GETTABLEKS                       R14 R11 K21 ["selectedIdsArrayObservable"]
       79 CALL                             R12 2 1
       80 GETUPVAL                         R13 8
       81 MOVE                             R14 R7
       82 GETTABLEKS                       R15 R11 K22 ["selectIds"]
       84 GETTABLEKS                       R16 R1 K23 ["waitForNextSearchAsync"]
       86 GETTABLEKS                       R17 R1 K20 ["getExpandHierarchySetting"]
       88 GETTABLEKS                       R18 R11 K24 ["selectedIdsObservable"]
       90 CALL                             R13 5 1
       91 NEWCLOSURE                       R6 P2
       92 CAPTURE                          REF R5
       93 CAPTURE                          VAL R3
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          VAL R13
       96 GETUPVAL                         R14 10
       97 MOVE                             R15 R7
       98 MOVE                             R16 R11
       99 MOVE                             R17 R13
      100 CALL                             R14 3 1
      101 GETUPVAL                         R15 11
      102 MOVE                             R16 R2
      103 GETTABLEKS                       R17 R13 K25 ["searchRootObservable"]
      105 CALL                             R15 2 1
      106 GETUPVAL                         R16 12
      107 MOVE                             R17 R7
      108 MOVE                             R18 R15
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 13
      111 MOVE                             R18 R7
      112 GETTABLEKS                       R19 R13 K26 ["processInstanceReplaced"]
      114 CALL                             R17 2 1
      115 GETUPVAL                         R19 14
      116 CALL                             R19 0 1
      117 JUMPIFNOT                        R19 ; [+6]
      118 GETUPVAL                         R18 15
      119 MOVE                             R19 R7
      120 GETTABLEKS                       R20 R17 K27 ["instanceReplaced"]
      122 CALL                             R18 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R18
      125 GETUPVAL                         R19 16
      126 MOVE                             R20 R7
      127 CALL                             R19 1 1
      128 GETUPVAL                         R20 17
      129 MOVE                             R21 R7
      130 CALL                             R20 1 1
      131 DUPTABLE                         R21 K41 [{"instanceAdded", "instanceReplaced", "instanceStreamedOut", "streamedOutInstanceRemoved", "instancePinned", "instanceUnpinned", "selectionChanged", "guestHovered", "guestUnhovered", "updateFieldValue", "receiveSearchResults", "receiveSearchSuggestions", "instancePickerActivated", "instancePickerDeactivated"}]
      132 GETTABLEKS                       R22 R17 K28 ["instanceAdded"]
      134 SETTABLEKS                       R22 R21 K28 ["instanceAdded"]
      136 GETTABLEKS                       R22 R17 K27 ["instanceReplaced"]
      138 SETTABLEKS                       R22 R21 K27 ["instanceReplaced"]
      140 GETUPVAL                         R23 14
      141 CALL                             R23 0 1
      142 JUMPIFNOT                        R23 ; [+3]
      143 GETTABLEKS                       R22 R18 K29 ["instanceStreamedOut"]
      145 JUMP                             ; [+3]
      146 GETUPVAL                         R22 18
      147 LOADK                            R23 K29 ["instanceStreamedOut"]
      148 CALL                             R22 1 1
      149 SETTABLEKS                       R22 R21 K29 ["instanceStreamedOut"]
      151 GETUPVAL                         R23 14
      152 CALL                             R23 0 1
      153 JUMPIFNOT                        R23 ; [+3]
      154 GETTABLEKS                       R22 R18 K30 ["streamedOutInstanceRemoved"]
      156 JUMP                             ; [+3]
      157 GETUPVAL                         R22 18
      158 LOADK                            R23 K30 ["streamedOutInstanceRemoved"]
      159 CALL                             R22 1 1
      160 SETTABLEKS                       R22 R21 K30 ["streamedOutInstanceRemoved"]
      162 GETUPVAL                         R23 14
      163 CALL                             R23 0 1
      164 JUMPIFNOT                        R23 ; [+3]
      165 GETTABLEKS                       R22 R18 K31 ["instancePinned"]
      167 JUMP                             ; [+3]
      168 GETUPVAL                         R22 18
      169 LOADK                            R23 K31 ["instancePinned"]
      170 CALL                             R22 1 1
      171 SETTABLEKS                       R22 R21 K31 ["instancePinned"]
      173 GETUPVAL                         R23 14
      174 CALL                             R23 0 1
      175 JUMPIFNOT                        R23 ; [+3]
      176 GETTABLEKS                       R22 R18 K32 ["instanceUnpinned"]
      178 JUMP                             ; [+3]
      179 GETUPVAL                         R22 18
      180 LOADK                            R23 K32 ["instanceUnpinned"]
      181 CALL                             R22 1 1
      182 SETTABLEKS                       R22 R21 K32 ["instanceUnpinned"]
      184 GETTABLEKS                       R22 R11 K33 ["selectionChanged"]
      186 SETTABLEKS                       R22 R21 K33 ["selectionChanged"]
      188 GETTABLEKS                       R22 R16 K34 ["guestHovered"]
      190 SETTABLEKS                       R22 R21 K34 ["guestHovered"]
      192 GETTABLEKS                       R22 R16 K35 ["guestUnhovered"]
      194 SETTABLEKS                       R22 R21 K35 ["guestUnhovered"]
      196 GETTABLEKS                       R22 R9 K36 ["updateFieldValue"]
      198 SETTABLEKS                       R22 R21 K36 ["updateFieldValue"]
      200 GETTABLEKS                       R22 R13 K37 ["receiveSearchResults"]
      202 SETTABLEKS                       R22 R21 K37 ["receiveSearchResults"]
      204 GETTABLEKS                       R22 R13 K38 ["receiveSearchSuggestions"]
      206 SETTABLEKS                       R22 R21 K38 ["receiveSearchSuggestions"]
      208 GETTABLEKS                       R22 R19 K39 ["instancePickerActivated"]
      210 SETTABLEKS                       R22 R21 K39 ["instancePickerActivated"]
      212 GETTABLEKS                       R22 R19 K40 ["instancePickerDeactivated"]
      214 SETTABLEKS                       R22 R21 K40 ["instancePickerDeactivated"]
      216 NEWCLOSURE                       R22 P3
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R13
      219 CAPTURE                          REF R5
      220 NEWCLOSURE                       R23 P4
      221 CAPTURE                          UPVAL U19
      222 CAPTURE                          REF R7
      223 NEWCLOSURE                       R24 P5
      224 CAPTURE                          UPVAL U19
      225 CAPTURE                          REF R7
      226 NEWCLOSURE                       R25 P6
      227 CAPTURE                          UPVAL U19
      228 CAPTURE                          REF R7
      229 NEWCLOSURE                       R26 P7
      230 CAPTURE                          UPVAL U19
      231 CAPTURE                          REF R7
      232 NEWCLOSURE                       R27 P8
      233 CAPTURE                          UPVAL U19
      234 CAPTURE                          REF R7
      235 GETIMPORT                        R28 K44 [task.spawn]
      237 NEWCLOSURE                       R29 P9
      238 CAPTURE                          UPVAL U1
      239 CAPTURE                          UPVAL U19
      240 CAPTURE                          REF R7
      241 CAPTURE                          VAL R0
      242 CALL                             R28 1 0
      243 GETUPVAL                         R28 0
      244 GETTABLEKS                       R28 R28 K0 ["create"]
      246 LOADNIL                          R29
      247 CALL                             R28 1 2
      248 GETIMPORT                        R30 K44 [task.spawn]
      250 NEWCLOSURE                       R31 P10
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R0
      253 CALL                             R30 1 0
      254 GETUPVAL                         R30 0
      255 GETTABLEKS                       R30 R30 K0 ["create"]
      257 LOADB                            R31 1
      258 CALL                             R30 1 2
      259 NEWCLOSURE                       R32 P11
      260 CAPTURE                          VAL R31
      261 NEWCLOSURE                       R33 P12
      262 CAPTURE                          VAL R30
      263 LOADNIL                          R34
      264 NEWTABLE                         R35 64 0
      266 SETTABLEKS                       R15 R35 K45 ["focusedRootObservable"]
      268 NEWCLOSURE                       R36 P13
      269 CAPTURE                          REF R7
      270 SETTABLEKS                       R36 R35 K46 ["getExplorerNodeById"]
      272 SETTABLEKS                       R6 R35 K47 ["flushRootChanges"]
      274 SETTABLEKS                       R23 R35 K48 ["expandAsync"]
      276 SETTABLEKS                       R24 R35 K49 ["unexpand"]
      278 SETTABLEKS                       R27 R35 K50 ["getExpandState"]
      280 SETTABLEKS                       R25 R35 K51 ["expandAll"]
      282 SETTABLEKS                       R26 R35 K52 ["collapseAll"]
      284 GETTABLEKS                       R36 R11 K22 ["selectIds"]
      286 SETTABLEKS                       R36 R35 K22 ["selectIds"]
      288 GETTABLEKS                       R36 R11 K24 ["selectedIdsObservable"]
      290 SETTABLEKS                       R36 R35 K24 ["selectedIdsObservable"]
      292 GETTABLEKS                       R36 R11 K21 ["selectedIdsArrayObservable"]
      294 SETTABLEKS                       R36 R35 K21 ["selectedIdsArrayObservable"]
      296 GETTABLEKS                       R36 R11 K53 ["selectedWithinIdsObservable"]
      298 SETTABLEKS                       R36 R35 K53 ["selectedWithinIdsObservable"]
      300 NEWCLOSURE                       R36 P14
      301 CAPTURE                          UPVAL U20
      302 CAPTURE                          REF R7
      303 SETTABLEKS                       R36 R35 K54 ["renameInstance"]
      305 GETTABLEKS                       R36 R12 K55 ["openContextMenuAsync"]
      307 SETTABLEKS                       R36 R35 K55 ["openContextMenuAsync"]
      309 GETTABLEKS                       R36 R12 K56 ["performContextMenuAction"]
      311 SETTABLEKS                       R36 R35 K56 ["performContextMenuAction"]
      313 GETTABLEKS                       R36 R16 K57 ["hoverId"]
      315 SETTABLEKS                       R36 R35 K57 ["hoverId"]
      317 GETTABLEKS                       R36 R16 K58 ["hoveredObservable"]
      319 SETTABLEKS                       R36 R35 K58 ["hoveredObservable"]
      321 NEWCLOSURE                       R36 P15
      322 CAPTURE                          UPVAL U21
      323 CAPTURE                          REF R34
      324 CAPTURE                          REF R7
      325 SETTABLEKS                       R36 R35 K59 ["unselectedInstanceClicked"]
      327 NEWCLOSURE                       R36 P16
      328 CAPTURE                          UPVAL U22
      329 CAPTURE                          REF R34
      330 CAPTURE                          REF R7
      331 SETTABLEKS                       R36 R35 K60 ["doubleClick"]
      333 SETTABLEKS                       R14 R35 K61 ["shiftClick"]
      335 NEWCLOSURE                       R36 P17
      336 CAPTURE                          UPVAL U23
      337 CAPTURE                          REF R34
      338 CAPTURE                          REF R7
      339 SETTABLEKS                       R36 R35 K62 ["selectRange"]
      341 GETTABLEKS                       R36 R9 K63 ["setViewingInstances"]
      343 SETTABLEKS                       R36 R35 K63 ["setViewingInstances"]
      345 GETTABLEKS                       R36 R9 K64 ["addField"]
      347 SETTABLEKS                       R36 R35 K64 ["addField"]
      349 GETTABLEKS                       R36 R9 K65 ["requestedFieldsObservable"]
      351 SETTABLEKS                       R36 R35 K65 ["requestedFieldsObservable"]
      353 GETTABLEKS                       R36 R0 K66 ["performFieldAction"]
      355 SETTABLEKS                       R36 R35 K66 ["performFieldAction"]
      357 GETTABLEKS                       R36 R9 K67 ["seenFieldsObservable"]
      359 SETTABLEKS                       R36 R35 K67 ["seenFieldsObservable"]
      361 GETTABLEKS                       R36 R0 K68 ["dropSelectionOntoAsync"]
      363 SETTABLEKS                       R36 R35 K68 ["dropSelectionOntoAsync"]
      365 SETTABLEKS                       R20 R35 K69 ["getIndexOfInstanceId"]
      367 GETTABLEKS                       R36 R13 K70 ["setSearch"]
      369 SETTABLEKS                       R36 R35 K70 ["setSearch"]
      371 GETTABLEKS                       R36 R13 K71 ["getSearch"]
      373 SETTABLEKS                       R36 R35 K71 ["getSearch"]
      375 GETTABLEKS                       R36 R7 K11 ["searchClearedSignal"]
      377 SETTABLEKS                       R36 R35 K11 ["searchClearedSignal"]
      379 GETTABLEKS                       R36 R13 K72 ["searchSuggestionsObservable"]
      381 SETTABLEKS                       R36 R35 K72 ["searchSuggestionsObservable"]
      383 GETTABLEKS                       R36 R13 K73 ["searchResultCountObservable"]
      385 SETTABLEKS                       R36 R35 K73 ["searchResultCountObservable"]
      387 GETTABLEKS                       R36 R13 K74 ["isInstanceIdSearched"]
      389 SETTABLEKS                       R36 R35 K74 ["isInstanceIdSearched"]
      391 GETTABLEKS                       R36 R13 K75 ["selectAllSearchedIds"]
      393 SETTABLEKS                       R36 R35 K75 ["selectAllSearchedIds"]
      395 GETTABLEKS                       R36 R19 K76 ["instancePickerActiveObservable"]
      397 SETTABLEKS                       R36 R35 K76 ["instancePickerActiveObservable"]
      399 GETTABLEKS                       R36 R19 K77 ["instancePickerSubmitInstance"]
      401 SETTABLEKS                       R36 R35 K77 ["instancePickerSubmitInstance"]
      403 GETUPVAL                         R37 14
      404 CALL                             R37 0 1
      405 JUMPIFNOT                        R37 ; [+3]
      406 GETTABLEKS                       R36 R18 K78 ["requestStreamIn"]
      408 JUMP                             ; [+3]
      409 GETUPVAL                         R36 18
      410 LOADK                            R37 K78 ["requestStreamIn"]
      411 CALL                             R36 1 1
      412 SETTABLEKS                       R36 R35 K78 ["requestStreamIn"]
      414 GETUPVAL                         R37 14
      415 CALL                             R37 0 1
      416 JUMPIFNOT                        R37 ; [+3]
      417 GETTABLEKS                       R36 R18 K79 ["isInstancePinned"]
      419 JUMP                             ; [+3]
      420 GETUPVAL                         R36 18
      421 LOADK                            R37 K79 ["isInstancePinned"]
      422 CALL                             R36 1 1
      423 SETTABLEKS                       R36 R35 K79 ["isInstancePinned"]
      425 GETUPVAL                         R37 14
      426 CALL                             R37 0 1
      427 JUMPIFNOT                        R37 ; [+3]
      428 GETTABLEKS                       R36 R18 K80 ["pinsUpdatedSignal"]
      430 JUMP                             ; [+1]
      431 LOADNIL                          R36
      432 SETTABLEKS                       R36 R35 K80 ["pinsUpdatedSignal"]
      434 SETTABLEKS                       R8 R35 K81 ["capabilities"]
      436 SETTABLEKS                       R28 R35 K82 ["placeIdObservable"]
      438 SETTABLEKS                       R32 R35 K83 ["setArrowKeysEnabled"]
      440 SETTABLEKS                       R33 R35 K84 ["getArrowKeysEnabled"]
      442 SETTABLEKS                       R22 R35 K85 ["destroy"]
      444 MOVE                             R34 R35
      445 MOVE                             R35 R34
      446 MOVE                             R36 R21
      447 CLOSEUPVALS                      R5
      448 RETURN                           R35 2

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
