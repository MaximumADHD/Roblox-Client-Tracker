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
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K0 ["current"]
       13 JUMPIFNOT                        R0 ; [+10]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["List"]
        3 GETTABLEKS                       R1 R2 K1 ["equals"]
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
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R5 R6 K5 ["List"]
       34 GETTABLEKS                       R4 R5 K6 ["join"]
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
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["List"]
       11 GETTABLEKS                       R2 R3 K2 ["getRange"]
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
       53 GETUPVAL                         R7 7
       54 GETTABLEKS                       R6 R7 K9 ["current"]
       56 JUMPIFNOT                        R6 ; [+1]
       57 RETURN                           R0 0
       58 DUPTABLE                         R6 K20 [{"placeId", "startDate", "endDate", "saveType", "published", "hasNotes", "contributor", "search", "pageSize", "cursor"}]
       59 GETUPVAL                         R8 8
       60 GETTABLEKS                       R7 R8 K10 ["placeId"]
       62 SETTABLEKS                       R7 R6 K10 ["placeId"]
       64 GETUPVAL                         R7 9
       65 SETTABLEKS                       R7 R6 K11 ["startDate"]
       67 GETUPVAL                         R7 10
       68 SETTABLEKS                       R7 R6 K12 ["endDate"]
       70 GETUPVAL                         R8 8
       71 GETTABLEKS                       R7 R8 K13 ["saveType"]
       73 SETTABLEKS                       R7 R6 K13 ["saveType"]
       75 GETUPVAL                         R8 8
       76 GETTABLEKS                       R7 R8 K14 ["published"]
       78 SETTABLEKS                       R7 R6 K14 ["published"]
       80 GETUPVAL                         R8 8
       81 GETTABLEKS                       R7 R8 K15 ["hasNotes"]
       83 SETTABLEKS                       R7 R6 K15 ["hasNotes"]
       85 GETUPVAL                         R7 11
       86 SETTABLEKS                       R7 R6 K16 ["contributor"]
       88 GETUPVAL                         R7 12
       89 SETTABLEKS                       R7 R6 K17 ["search"]
       91 GETUPVAL                         R7 0
       92 SETTABLEKS                       R7 R6 K18 ["pageSize"]
       94 GETUPVAL                         R8 13
       95 GETTABLEKS                       R7 R8 K9 ["current"]
       97 SETTABLEKS                       R7 R6 K19 ["cursor"]
       99 GETUPVAL                         R7 7
      100 GETUPVAL                         R9 14
      101 GETTABLEKS                       R8 R9 K21 ["getVersionHistory"]
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
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K0 ["setSaveType"]
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R0 R1 K1 ["setPublished"]
       20 LOADNIL                          R1
       21 CALL                             R0 1 0
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R0 R1 K2 ["setHasNotes"]
       25 LOADNIL                          R1
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADN                            R3 10
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useState"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K1 ["useState"]
       18 LOADNIL                          R7
       19 CALL                             R6 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K1 ["useState"]
       23 LOADNIL                          R9
       24 CALL                             R8 1 2
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R10 R11 K1 ["useState"]
       28 LOADNIL                          R11
       29 CALL                             R10 1 2
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R12 R13 K1 ["useState"]
       33 NEWTABLE                         R13 0 0
       35 CALL                             R12 1 2
       36 GETUPVAL                         R15 0
       37 GETTABLEKS                       R14 R15 K1 ["useState"]
       39 LOADN                            R15 1
       40 CALL                             R14 1 2
       41 GETUPVAL                         R17 0
       42 GETTABLEKS                       R16 R17 K1 ["useState"]
       44 NEWTABLE                         R17 0 0
       46 CALL                             R16 1 2
       47 GETUPVAL                         R19 0
       48 GETTABLEKS                       R18 R19 K1 ["useState"]
       50 LOADN                            R19 1
       51 CALL                             R18 1 2
       52 GETUPVAL                         R21 0
       53 GETTABLEKS                       R20 R21 K1 ["useState"]
       55 LOADB                            R21 0
       56 CALL                             R20 1 2
       57 GETUPVAL                         R23 0
       58 GETTABLEKS                       R22 R23 K1 ["useState"]
       60 LOADB                            R23 0
       61 CALL                             R22 1 2
       62 GETUPVAL                         R25 0
       63 GETTABLEKS                       R24 R25 K0 ["useContext"]
       65 GETUPVAL                         R25 2
       66 CALL                             R24 1 1
       67 GETUPVAL                         R26 0
       68 GETTABLEKS                       R25 R26 K2 ["useRef"]
       70 LOADNIL                          R26
       71 CALL                             R25 1 1
       72 GETUPVAL                         R27 0
       73 GETTABLEKS                       R26 R27 K2 ["useRef"]
       75 LOADNIL                          R27
       76 CALL                             R26 1 1
       77 GETUPVAL                         R28 0
       78 GETTABLEKS                       R27 R28 K3 ["useLayoutEffect"]
       80 NEWCLOSURE                       R28 P0
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R15
       83 CAPTURE                          VAL R21
       84 CAPTURE                          VAL R26
       85 CAPTURE                          VAL R25
       86 NEWTABLE                         R29 0 11
       88 MOVE                             R30 R0
       89 MOVE                             R31 R4
       90 MOVE                             R32 R6
       91 MOVE                             R33 R8
       92 MOVE                             R34 R10
       93 MOVE                             R35 R2
       94 GETTABLEKS                       R36 R1 K4 ["saveType"]
       96 GETTABLEKS                       R37 R1 K5 ["published"]
       98 GETTABLEKS                       R38 R1 K6 ["hasNotes"]
      100 GETTABLEKS                       R39 R1 K7 ["placeId"]
      102 GETTABLEKS                       R40 R1 K8 ["universeId"]
      104 SETLIST                          R29 R30 11 [1]
      106 CALL                             R27 2 0
      107 GETUPVAL                         R28 0
      108 GETTABLEKS                       R27 R28 K3 ["useLayoutEffect"]
      110 NEWCLOSURE                       R28 P1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R14
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R19
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R26
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R25
      125 CAPTURE                          VAL R24
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R23
      129 NEWTABLE                         R29 0 3
      131 MOVE                             R30 R12
      132 MOVE                             R31 R14
      133 MOVE                             R32 R20
      134 SETLIST                          R29 R30 3 [1]
      136 CALL                             R27 2 0
      137 DUPTABLE                         R27 K31 [{"page", "pageNumber", "maxPageNumber", "setPageNumber", "pageSize", "setPageSize", "isDone", "isFailure", "isFiltered", "isEmpty", "clearFilters", "search", "setSearch", "startDate", "setStartDate", "endDate", "setEndDate", "saveType", "setSaveType", "published", "setPublished", "hasNotes", "setHasNotes", "contributor", "setContributor"}]
      138 SETTABLEKS                       R16 R27 K9 ["page"]
      140 SETTABLEKS                       R14 R27 K10 ["pageNumber"]
      142 SETTABLEKS                       R18 R27 K11 ["maxPageNumber"]
      144 SETTABLEKS                       R15 R27 K12 ["setPageNumber"]
      146 SETTABLEKS                       R2 R27 K13 ["pageSize"]
      148 SETTABLEKS                       R3 R27 K14 ["setPageSize"]
      150 SETTABLEKS                       R20 R27 K15 ["isDone"]
      152 SETTABLEKS                       R22 R27 K16 ["isFailure"]
      154 LOADB                            R28 1
      155 JUMPIFNOTEQKNIL                  R4 ; [+26]
      157 LOADB                            R28 1
      158 JUMPIFNOTEQKNIL                  R6 ; [+23]
      160 LOADB                            R28 1
      161 JUMPIFNOTEQKNIL                  R8 ; [+20]
      163 LOADB                            R28 1
      164 JUMPIFNOTEQKNIL                  R10 ; [+17]
      166 LOADB                            R28 1
      167 GETTABLEKS                       R29 R1 K4 ["saveType"]
      169 JUMPIFNOTEQKNIL                  R29 ; [+12]
      171 LOADB                            R28 1
      172 GETTABLEKS                       R29 R1 K5 ["published"]
      174 JUMPIFNOTEQKNIL                  R29 ; [+7]
      176 GETTABLEKS                       R29 R1 K6 ["hasNotes"]
      178 JUMPIFNOTEQKNIL                  R29 ; [+2]
      180 LOADB                            R28 0 +1
      181 LOADB                            R28 1
      182 SETTABLEKS                       R28 R27 K17 ["isFiltered"]
      184 LENGTH                           R29 R16
      185 JUMPIFEQKN                       R29 K32 [0] ; [+2]
      187 LOADB                            R28 0 +1
      188 LOADB                            R28 1
      189 SETTABLEKS                       R28 R27 K18 ["isEmpty"]
      191 GETUPVAL                         R29 0
      192 GETTABLEKS                       R28 R29 K33 ["useCallback"]
      194 NEWCLOSURE                       R29 P2
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R1
      200 NEWTABLE                         R30 0 0
      202 CALL                             R28 2 1
      203 SETTABLEKS                       R28 R27 K19 ["clearFilters"]
      205 SETTABLEKS                       R4 R27 K20 ["search"]
      207 SETTABLEKS                       R5 R27 K21 ["setSearch"]
      209 SETTABLEKS                       R6 R27 K22 ["startDate"]
      211 SETTABLEKS                       R7 R27 K23 ["setStartDate"]
      213 SETTABLEKS                       R8 R27 K24 ["endDate"]
      215 SETTABLEKS                       R9 R27 K25 ["setEndDate"]
      217 GETTABLEKS                       R28 R1 K4 ["saveType"]
      219 SETTABLEKS                       R28 R27 K4 ["saveType"]
      221 GETTABLEKS                       R28 R1 K26 ["setSaveType"]
      223 SETTABLEKS                       R28 R27 K26 ["setSaveType"]
      225 GETTABLEKS                       R28 R1 K5 ["published"]
      227 SETTABLEKS                       R28 R27 K5 ["published"]
      229 GETTABLEKS                       R28 R1 K27 ["setPublished"]
      231 SETTABLEKS                       R28 R27 K27 ["setPublished"]
      233 GETTABLEKS                       R28 R1 K6 ["hasNotes"]
      235 SETTABLEKS                       R28 R27 K6 ["hasNotes"]
      237 GETTABLEKS                       R28 R1 K28 ["setHasNotes"]
      239 SETTABLEKS                       R28 R27 K28 ["setHasNotes"]
      241 SETTABLEKS                       R10 R27 K29 ["contributor"]
      243 SETTABLEKS                       R11 R27 K30 ["setContributor"]
      245 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R4 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SettingContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R3 K12 ["NetworkContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R8 R0 K9 ["Src"]
       39 GETTABLEKS                       R7 R8 K13 ["Types"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K14 [PROTO_6]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R7 1
