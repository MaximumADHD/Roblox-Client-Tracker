PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 JUMPIFNOT                        R0 ; [+10]
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K0 ["current"]
       17 NAMECALL                         R0 R0 K1 ["cancel"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 3
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 GETUPVAL                         R0 4
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K0 ["current"]
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["List"]
        3 GETTABLEKS                       R1 R1 K1 ["equals"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 1
       10 GETUPVAL                         R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["page"]
        2 LENGTH                           R2 R3
        3 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K2 ["hasMore"]
       10 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
       12 GETTABLEKS                       R3 R0 K3 ["cursor"]
       14 JUMPIFEQKNIL                     R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 GETUPVAL                         R3 0
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R3 K4 ["current"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R4 R0 K3 ["cursor"]
       25 SETTABLEKS                       R4 R3 K4 ["current"]
       27 GETUPVAL                         R3 2
       28 OR                               R4 R1 R2
       29 CALL                             R3 1 0
       30 GETUPVAL                         R3 3
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K5 ["List"]
       34 GETTABLEKS                       R4 R4 K6 ["join"]
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R6 R0 K0 ["page"]
       39 CALL                             R4 2 -1
       40 CALL                             R3 -1 0
       41 GETUPVAL                         R3 6
       42 LOADB                            R4 0
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 SUBK                             R3 R4 K0 [1]
        3 MUL                              R1 R2 R3
        4 ADDK                             R0 R1 K0 [1]
        5 GETUPVAL                         R3 0
        6 SUBK                             R2 R3 K0 [1]
        7 ADD                              R1 R0 R2
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["List"]
       11 GETTABLEKS                       R2 R2 K2 ["getRange"]
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 CALL                             R2 3 1
       17 LOADN                            R4 1
       18 GETUPVAL                         R8 3
       19 LENGTH                           R7 R8
       20 GETUPVAL                         R8 0
       21 DIV                              R6 R7 R8
       22 FASTCALL1                        MATH_CEIL R6 ; [+2]
       23 GETIMPORT                        R5 K5 [math.ceil]
       25 CALL                             R5 1 1
       26 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       28 GETIMPORT                        R3 K7 [math.max]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 0
       32 MULK                             R4 R5 K8 [2]
       33 ADD                              R6 R1 R4
       34 GETUPVAL                         R8 3
       35 LENGTH                           R7 R8
       36 JUMPIFLT                         R7 R6 ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 GETUPVAL                         R6 4
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R2
       44 CALL                             R6 1 0
       45 GETUPVAL                         R6 5
       46 MOVE                             R7 R3
       47 CALL                             R6 1 0
       48 JUMPIF                           R5 ; [+1]
       49 RETURN                           R0 0
       50 GETUPVAL                         R6 6
       51 JUMPIFNOT                        R6 ; [+1]
       52 RETURN                           R0 0
       53 GETUPVAL                         R6 7
       54 GETTABLEKS                       R6 R6 K9 ["current"]
       56 JUMPIFNOT                        R6 ; [+1]
       57 RETURN                           R0 0
       58 DUPTABLE                         R6 K20 [{"placeId", "startDate", "endDate", "saveType", "isPublished", "hasNotes", "contributor", "search", "pageSize", "cursor"}]
       59 GETUPVAL                         R7 8
       60 GETTABLEKS                       R7 R7 K10 ["placeId"]
       62 SETTABLEKS                       R7 R6 K10 ["placeId"]
       64 GETUPVAL                         R7 9
       65 SETTABLEKS                       R7 R6 K11 ["startDate"]
       67 GETUPVAL                         R7 10
       68 SETTABLEKS                       R7 R6 K12 ["endDate"]
       70 GETUPVAL                         R7 8
       71 GETTABLEKS                       R7 R7 K13 ["saveType"]
       73 SETTABLEKS                       R7 R6 K13 ["saveType"]
       75 GETUPVAL                         R7 8
       76 GETTABLEKS                       R7 R7 K14 ["isPublished"]
       78 SETTABLEKS                       R7 R6 K14 ["isPublished"]
       80 GETUPVAL                         R7 8
       81 GETTABLEKS                       R7 R7 K15 ["hasNotes"]
       83 SETTABLEKS                       R7 R6 K15 ["hasNotes"]
       85 GETUPVAL                         R7 11
       86 SETTABLEKS                       R7 R6 K16 ["contributor"]
       88 GETUPVAL                         R7 12
       89 SETTABLEKS                       R7 R6 K17 ["search"]
       91 GETUPVAL                         R7 0
       92 SETTABLEKS                       R7 R6 K18 ["pageSize"]
       94 GETUPVAL                         R7 13
       95 GETTABLEKS                       R7 R7 K9 ["current"]
       97 SETTABLEKS                       R7 R6 K19 ["cursor"]
       99 GETUPVAL                         R7 7
      100 GETUPVAL                         R8 14
      101 GETTABLEKS                       R8 R8 K21 ["getVersionHistory"]
      103 MOVE                             R9 R6
      104 CALL                             R8 1 1
      105 NEWCLOSURE                       R10 P1
      106 CAPTURE                          UPVAL U7
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          UPVAL U15
      109 CAPTURE                          UPVAL U16
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U17
      113 NAMECALL                         R8 R8 K22 ["andThen"]
      115 CALL                             R8 2 1
      116 NEWCLOSURE                       R10 P2
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          UPVAL U13
      119 CAPTURE                          UPVAL U15
      120 CAPTURE                          UPVAL U17
      121 NAMECALL                         R8 R8 K23 ["catch"]
      123 CALL                             R8 2 1
      124 SETTABLEKS                       R8 R7 K9 ["current"]
      126 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["version"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["List"]
        3 GETTABLEKS                       R1 R1 K1 ["findWhere"]
        5 MOVE                             R2 R0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R1 2 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 1
       12 GETTABLE                         R2 R0 R1
       13 GETUPVAL                         R3 2
       14 SETTABLEKS                       R3 R2 K2 ["notes"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["List"]
       19 GETTABLEKS                       R2 R2 K3 ["join"]
       21 NEWTABLE                         R3 0 0
       23 MOVE                             R4 R0
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["placeId"]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CALL                             R3 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K0 ["setSaveType"]
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K1 ["setIsPublished"]
       20 LOADNIL                          R1
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 GETTABLEKS                       R0 R0 K2 ["setHasNotes"]
       25 LOADNIL                          R1
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADN                            R3 10
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["useState"]
       18 LOADNIL                          R7
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K1 ["useState"]
       23 LOADNIL                          R9
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K1 ["useState"]
       28 LOADNIL                          R11
       29 CALL                             R10 1 2
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K1 ["useState"]
       33 NEWTABLE                         R13 0 0
       35 CALL                             R12 1 2
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R14 R14 K1 ["useState"]
       39 LOADN                            R15 1
       40 CALL                             R14 1 2
       41 GETUPVAL                         R16 0
       42 GETTABLEKS                       R16 R16 K1 ["useState"]
       44 NEWTABLE                         R17 0 0
       46 CALL                             R16 1 2
       47 GETUPVAL                         R18 0
       48 GETTABLEKS                       R18 R18 K1 ["useState"]
       50 LOADN                            R19 1
       51 CALL                             R18 1 2
       52 GETUPVAL                         R20 0
       53 GETTABLEKS                       R20 R20 K1 ["useState"]
       55 LOADB                            R21 0
       56 CALL                             R20 1 2
       57 GETUPVAL                         R22 0
       58 GETTABLEKS                       R22 R22 K1 ["useState"]
       60 LOADB                            R23 0
       61 CALL                             R22 1 2
       62 GETUPVAL                         R24 0
       63 GETTABLEKS                       R24 R24 K0 ["useContext"]
       65 GETUPVAL                         R25 2
       66 CALL                             R24 1 1
       67 GETUPVAL                         R25 0
       68 GETTABLEKS                       R25 R25 K2 ["useRef"]
       70 LOADNIL                          R26
       71 CALL                             R25 1 1
       72 GETUPVAL                         R26 0
       73 GETTABLEKS                       R26 R26 K2 ["useRef"]
       75 LOADNIL                          R27
       76 CALL                             R26 1 1
       77 GETUPVAL                         R27 0
       78 GETTABLEKS                       R27 R27 K0 ["useContext"]
       80 GETUPVAL                         R28 3
       81 CALL                             R27 1 1
       82 GETUPVAL                         R28 0
       83 GETTABLEKS                       R28 R28 K3 ["useLayoutEffect"]
       85 NEWCLOSURE                       R29 P0
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R21
       89 CAPTURE                          VAL R26
       90 CAPTURE                          VAL R25
       91 NEWTABLE                         R30 0 11
       93 MOVE                             R31 R0
       94 MOVE                             R32 R4
       95 MOVE                             R33 R6
       96 MOVE                             R34 R8
       97 MOVE                             R35 R10
       98 MOVE                             R36 R2
       99 GETTABLEKS                       R37 R1 K4 ["saveType"]
      101 GETTABLEKS                       R38 R1 K5 ["isPublished"]
      103 GETTABLEKS                       R39 R1 K6 ["hasNotes"]
      105 GETTABLEKS                       R40 R1 K7 ["placeId"]
      107 GETTABLEKS                       R41 R1 K8 ["universeId"]
      109 SETLIST                          R30 R31 11 [1]
      111 CALL                             R28 2 0
      112 GETUPVAL                         R28 0
      113 GETTABLEKS                       R28 R28 K3 ["useLayoutEffect"]
      115 NEWCLOSURE                       R29 P1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R14
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R26
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R25
      130 CAPTURE                          VAL R24
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R23
      134 NEWTABLE                         R30 0 3
      136 MOVE                             R31 R12
      137 MOVE                             R32 R14
      138 MOVE                             R33 R20
      139 SETLIST                          R30 R31 3 [1]
      141 CALL                             R28 2 0
      142 GETUPVAL                         R28 5
      143 GETTABLEKS                       R28 R28 K9 ["FFlagPVHUpdatePageOnNotesEdit"]
      145 JUMPIFNOT                        R28 ; [+14]
      146 GETUPVAL                         R28 6
      147 GETTABLEKS                       R29 R27 K10 ["onNotesEdited"]
      149 NEWCLOSURE                       R30 P2
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R17
      152 CAPTURE                          UPVAL U4
      153 NEWTABLE                         R31 0 1
      155 GETTABLEKS                       R32 R1 K7 ["placeId"]
      157 SETLIST                          R31 R32 1 [1]
      159 CALL                             R28 3 0
      160 DUPTABLE                         R28 K33 [{"page", "pageNumber", "maxPageNumber", "setPageNumber", "pageSize", "setPageSize", "isDone", "isFailure", "isFiltered", "isEmpty", "clearFilters", "search", "setSearch", "startDate", "setStartDate", "endDate", "setEndDate", "saveType", "setSaveType", "isPublished", "setIsPublished", "hasNotes", "setHasNotes", "contributor", "setContributor"}]
      161 SETTABLEKS                       R16 R28 K11 ["page"]
      163 SETTABLEKS                       R14 R28 K12 ["pageNumber"]
      165 SETTABLEKS                       R18 R28 K13 ["maxPageNumber"]
      167 SETTABLEKS                       R15 R28 K14 ["setPageNumber"]
      169 SETTABLEKS                       R2 R28 K15 ["pageSize"]
      171 SETTABLEKS                       R3 R28 K16 ["setPageSize"]
      173 SETTABLEKS                       R20 R28 K17 ["isDone"]
      175 SETTABLEKS                       R22 R28 K18 ["isFailure"]
      177 LOADB                            R29 1
      178 JUMPIFNOTEQKNIL                  R4 ; [+26]
      180 LOADB                            R29 1
      181 JUMPIFNOTEQKNIL                  R6 ; [+23]
      183 LOADB                            R29 1
      184 JUMPIFNOTEQKNIL                  R8 ; [+20]
      186 LOADB                            R29 1
      187 JUMPIFNOTEQKNIL                  R10 ; [+17]
      189 LOADB                            R29 1
      190 GETTABLEKS                       R30 R1 K4 ["saveType"]
      192 JUMPIFNOTEQKNIL                  R30 ; [+12]
      194 LOADB                            R29 1
      195 GETTABLEKS                       R30 R1 K5 ["isPublished"]
      197 JUMPIFNOTEQKNIL                  R30 ; [+7]
      199 GETTABLEKS                       R30 R1 K6 ["hasNotes"]
      201 JUMPIFNOTEQKNIL                  R30 ; [+2]
      203 LOADB                            R29 0 +1
      204 LOADB                            R29 1
      205 SETTABLEKS                       R29 R28 K19 ["isFiltered"]
      207 LENGTH                           R30 R16
      208 JUMPIFEQKN                       R30 K34 [0] ; [+2]
      210 LOADB                            R29 0 +1
      211 LOADB                            R29 1
      212 SETTABLEKS                       R29 R28 K20 ["isEmpty"]
      214 GETUPVAL                         R29 0
      215 GETTABLEKS                       R29 R29 K35 ["useCallback"]
      217 NEWCLOSURE                       R30 P3
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R1
      223 NEWTABLE                         R31 0 0
      225 CALL                             R29 2 1
      226 SETTABLEKS                       R29 R28 K21 ["clearFilters"]
      228 SETTABLEKS                       R4 R28 K22 ["search"]
      230 SETTABLEKS                       R5 R28 K23 ["setSearch"]
      232 SETTABLEKS                       R6 R28 K24 ["startDate"]
      234 SETTABLEKS                       R7 R28 K25 ["setStartDate"]
      236 SETTABLEKS                       R8 R28 K26 ["endDate"]
      238 SETTABLEKS                       R9 R28 K27 ["setEndDate"]
      240 GETTABLEKS                       R29 R1 K4 ["saveType"]
      242 SETTABLEKS                       R29 R28 K4 ["saveType"]
      244 GETTABLEKS                       R29 R1 K28 ["setSaveType"]
      246 SETTABLEKS                       R29 R28 K28 ["setSaveType"]
      248 GETTABLEKS                       R29 R1 K5 ["isPublished"]
      250 SETTABLEKS                       R29 R28 K5 ["isPublished"]
      252 GETTABLEKS                       R29 R1 K29 ["setIsPublished"]
      254 SETTABLEKS                       R29 R28 K29 ["setIsPublished"]
      256 GETTABLEKS                       R29 R1 K6 ["hasNotes"]
      258 SETTABLEKS                       R29 R28 K6 ["hasNotes"]
      260 GETTABLEKS                       R29 R1 K30 ["setHasNotes"]
      262 SETTABLEKS                       R29 R28 K30 ["setHasNotes"]
      264 SETTABLEKS                       R10 R28 K31 ["contributor"]
      266 SETTABLEKS                       R11 R28 K32 ["setContributor"]
      268 RETURN                           R28 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Cryo"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K13 ["Src"]
       39 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R5 K15 ["SettingContext"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R5 K16 ["NetworkContext"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R5 K17 ["DialogContext"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R3 K18 ["useEventConnection"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K13 ["Src"]
       62 GETTABLEKS                       R11 R11 K19 ["Types"]
       64 CALL                             R10 1 1
       65 DUPCLOSURE                       R11 K20 [PROTO_9]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 RETURN                           R11 1
