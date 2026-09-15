PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R4 K2 ["GetVersionHistoryModel: %*"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1
       16 DUPTABLE                         R3 K7 [{"hasMore", "cursor", "page"}]
       17 GETTABLEKS                       R4 R0 K4 ["hasMore"]
       19 SETTABLEKS                       R4 R3 K4 ["hasMore"]
       21 GETTABLEKS                       R4 R0 K8 ["nextCursor"]
       23 SETTABLEKS                       R4 R3 K5 ["cursor"]
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K6 ["page"]
       29 GETTABLEKS                       R4 R0 K9 ["placeVersions"]
       31 JUMPIFNOT                        R4 ; [+99]
       32 GETTABLEKS                       R4 R0 K9 ["placeVersions"]
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETTABLEKS                       R10 R8 K10 ["version"]
       39 FASTCALL1                        TONUMBER R10 ; [+2]
       40 GETIMPORT                        R9 K12 [tonumber]
       42 CALL                             R9 1 1
       43 GETIMPORT                        R10 K15 [DateTime.fromIsoDate]
       45 GETTABLEKS                       R11 R8 K16 ["createdTime"]
       47 CALL                             R10 1 1
       48 JUMPIFNOT                        R9 ; [+1]
       49 JUMPIF                           R10 ; [+6]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R11 R11 K1 ["reject"]
       53 LOADK                            R12 K17 ["GetVersionHistoryModel: invalid version or date"]
       54 CALL                             R11 1 -1
       55 RETURN                           R11 -1
       56 GETTABLEKS                       R12 R3 K6 ["page"]
       58 DUPTABLE                         R13 K24 [{"version", "publishStatus", "date", "contributors", "notes", "saver", "saveType"}]
       59 SETTABLEKS                       R9 R13 K10 ["version"]
       61 GETUPVAL                         R15 2
       62 GETTABLEKS                       R16 R8 K18 ["publishStatus"]
       64 GETTABLE                         R14 R15 R16
       65 SETTABLEKS                       R14 R13 K18 ["publishStatus"]
       67 SETTABLEKS                       R10 R13 K19 ["date"]
       69 GETTABLEKS                       R15 R8 K20 ["contributors"]
       71 JUMPIFNOT                        R15 ; [+3]
       72 GETTABLEKS                       R14 R8 K20 ["contributors"]
       74 JUMP                             ; [+2]
       75 NEWTABLE                         R14 0 0
       77 SETTABLEKS                       R14 R13 K20 ["contributors"]
       79 DUPTABLE                         R14 K27 [{"title", "description"}]
       80 GETTABLEKS                       R16 R8 K25 ["title"]
       82 JUMPIFNOT                        R16 ; [+10]
       83 GETIMPORT                        R16 K30 [utf8.len]
       85 GETTABLEKS                       R17 R8 K25 ["title"]
       87 CALL                             R16 1 1
       88 JUMPIFEQKN                       R16 K31 [0] ; [+4]
       90 GETTABLEKS                       R15 R8 K25 ["title"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R15
       94 SETTABLEKS                       R15 R14 K25 ["title"]
       96 GETTABLEKS                       R16 R8 K26 ["description"]
       98 JUMPIFNOT                        R16 ; [+10]
       99 GETIMPORT                        R16 K30 [utf8.len]
      101 GETTABLEKS                       R17 R8 K26 ["description"]
      103 CALL                             R16 1 1
      104 JUMPIFEQKN                       R16 K31 [0] ; [+4]
      106 GETTABLEKS                       R15 R8 K26 ["description"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R15
      110 SETTABLEKS                       R15 R14 K26 ["description"]
      112 SETTABLEKS                       R14 R13 K21 ["notes"]
      114 GETTABLEKS                       R14 R8 K32 ["createdBy"]
      116 SETTABLEKS                       R14 R13 K22 ["saver"]
      118 GETUPVAL                         R15 3
      119 GETTABLEKS                       R16 R8 K23 ["saveType"]
      121 GETTABLE                         R14 R15 R16
      122 SETTABLEKS                       R14 R13 K23 ["saveType"]
      124 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      126 GETIMPORT                        R11 K35 [table.insert]
      128 CALL                             R11 2 0
      129 FORGLOOP                         R4 2 ; [-93]
      131 GETUPVAL                         R4 1
      132 GETTABLEKS                       R4 R4 K36 ["resolve"]
      134 MOVE                             R5 R3
      135 CALL                             R4 1 -1
      136 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Request"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NAMECALL                         R0 R0 K2 ["andThen"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R1 K4 [{[1] = "GET", ["Url"], ["Headers"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["composeUrl"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K6 ["APIS_URL"]
        7 LOADK                            R4 K7 ["place-version-history-api/v1/%*/history"]
        8 GETTABLEKS                       R6 R0 K8 ["placeId"]
       10 NAMECALL                         R4 R4 K9 ["format"]
       12 CALL                             R4 2 1
       13 DUPTABLE                         R5 K19 [{"cursor", "isPublished", "hasNotes", "saveType", "searchTerm", "startTime", "endTime", "contributor", "pageSize"}]
       14 GETTABLEKS                       R6 R0 K10 ["cursor"]
       16 SETTABLEKS                       R6 R5 K10 ["cursor"]
       18 GETTABLEKS                       R6 R0 K11 ["isPublished"]
       20 SETTABLEKS                       R6 R5 K11 ["isPublished"]
       22 GETTABLEKS                       R6 R0 K12 ["hasNotes"]
       24 SETTABLEKS                       R6 R5 K12 ["hasNotes"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R8 R0 K13 ["saveType"]
       29 GETTABLE                         R6 R7 R8
       30 SETTABLEKS                       R6 R5 K13 ["saveType"]
       32 GETTABLEKS                       R6 R0 K20 ["search"]
       34 SETTABLEKS                       R6 R5 K14 ["searchTerm"]
       36 GETTABLEKS                       R7 R0 K21 ["startDate"]
       38 JUMPIFNOT                        R7 ; [+6]
       39 GETTABLEKS                       R6 R0 K21 ["startDate"]
       41 NAMECALL                         R6 R6 K22 ["ToIsoDate"]
       43 CALL                             R6 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K15 ["startTime"]
       48 GETTABLEKS                       R7 R0 K23 ["endDate"]
       50 JUMPIFNOT                        R7 ; [+6]
       51 GETTABLEKS                       R6 R0 K23 ["endDate"]
       53 NAMECALL                         R6 R6 K22 ["ToIsoDate"]
       55 CALL                             R6 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K16 ["endTime"]
       60 GETTABLEKS                       R6 R0 K17 ["contributor"]
       62 SETTABLEKS                       R6 R5 K17 ["contributor"]
       64 GETTABLEKS                       R6 R0 K18 ["pageSize"]
       66 SETTABLEKS                       R6 R5 K18 ["pageSize"]
       68 CALL                             R2 3 1
       69 SETTABLEKS                       R2 R1 K2 ["Url"]
       71 NEWTABLE                         R2 1 0
       73 LOADK                            R3 K24 ["application/json"]
       74 SETTABLEKS                       R3 R2 K25 ["Content-Type"]
       76 SETTABLEKS                       R2 R1 K3 ["Headers"]
       78 GETTABLEKS                       R3 R0 K10 ["cursor"]
       80 JUMPIFEQKNIL                     R3 ; [+2]
       82 LOADB                            R2 0 +1
       83 LOADB                            R2 1
       84 JUMPIFNOT                        R2 ; [+5]
       85 GETUPVAL                         R4 2
       86 GETTABLEKS                       R4 R4 K27 ["FIntPVHFirstPageDelayMs"]
       88 DIVK                             R3 R4 K26 [1000]
       89 JUMP                             ; [+1]
       90 LOADN                            R3 0
       91 JUMPIFNOT                        R2 ; [+66]
       92 GETUPVAL                         R4 3
       93 GETUPVAL                         R6 4
       94 DUPTABLE                         R7 K36 [{"targetPlaceId", "pageSize", "filterSaveType", "filterIsPublished", "filterHasNotes", "filterContributor", "filterStartTime", "filterEndTime", "searchTermLength"}]
       95 GETTABLEKS                       R8 R0 K8 ["placeId"]
       97 SETTABLEKS                       R8 R7 K28 ["targetPlaceId"]
       99 GETTABLEKS                       R8 R0 K18 ["pageSize"]
      101 SETTABLEKS                       R8 R7 K18 ["pageSize"]
      103 GETTABLEKS                       R8 R0 K13 ["saveType"]
      105 SETTABLEKS                       R8 R7 K29 ["filterSaveType"]
      107 GETTABLEKS                       R8 R0 K11 ["isPublished"]
      109 SETTABLEKS                       R8 R7 K30 ["filterIsPublished"]
      111 GETTABLEKS                       R8 R0 K12 ["hasNotes"]
      113 SETTABLEKS                       R8 R7 K31 ["filterHasNotes"]
      115 GETTABLEKS                       R8 R0 K17 ["contributor"]
      117 SETTABLEKS                       R8 R7 K32 ["filterContributor"]
      119 GETTABLEKS                       R9 R0 K21 ["startDate"]
      121 JUMPIFNOT                        R9 ; [+6]
      122 GETTABLEKS                       R8 R0 K21 ["startDate"]
      124 NAMECALL                         R8 R8 K22 ["ToIsoDate"]
      126 CALL                             R8 1 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R8
      129 SETTABLEKS                       R8 R7 K33 ["filterStartTime"]
      131 GETTABLEKS                       R9 R0 K23 ["endDate"]
      133 JUMPIFNOT                        R9 ; [+6]
      134 GETTABLEKS                       R8 R0 K23 ["endDate"]
      136 NAMECALL                         R8 R8 K22 ["ToIsoDate"]
      138 CALL                             R8 1 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R8
      141 SETTABLEKS                       R8 R7 K34 ["filterEndTime"]
      143 GETTABLEKS                       R9 R0 K20 ["search"]
      145 JUMPIFNOT                        R9 ; [+6]
      146 GETIMPORT                        R8 K39 [utf8.len]
      148 GETTABLEKS                       R9 R0 K20 ["search"]
      150 CALL                             R8 1 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R8
      153 SETTABLEKS                       R8 R7 K35 ["searchTermLength"]
      155 NAMECALL                         R4 R4 K40 ["logRobloxTelemetryEvent"]
      157 CALL                             R4 3 0
      158 GETUPVAL                         R4 5
      159 GETTABLEKS                       R4 R4 K41 ["delay"]
      161 MOVE                             R5 R3
      162 CALL                             R4 1 1
      163 NEWCLOSURE                       R6 P0
      164 CAPTURE                          UPVAL U6
      165 CAPTURE                          VAL R1
      166 CAPTURE                          UPVAL U7
      167 CAPTURE                          UPVAL U5
      168 CAPTURE                          UPVAL U8
      169 CAPTURE                          UPVAL U1
      170 NAMECALL                         R4 R4 K42 ["andThen"]
      172 CALL                             R4 2 -1
      173 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["TelemetryProtocol"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K13 ["Src"]
       39 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R5 K15 ["NetworkContext"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R2 K16 ["RobloxAPI"]
       48 GETTABLEKS                       R7 R7 K17 ["Url"]
       50 GETTABLEKS                       R8 R7 K18 ["new"]
       52 CALL                             R8 0 1
       53 GETTABLEKS                       R9 R0 K13 ["Src"]
       55 GETTABLEKS                       R9 R9 K19 ["Network"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K20 ["Http"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R9 K21 ["GetVersionHistoryModel"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R4 K18 ["new"]
       69 CALL                             R12 0 1
       70 GETTABLEKS                       R13 R0 K13 ["Src"]
       72 GETTABLEKS                       R13 R13 K22 ["Events"]
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R13 K23 ["GetHistoryEvent"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K5 [require]
       81 GETTABLEKS                       R16 R0 K13 ["Src"]
       83 GETTABLEKS                       R16 R16 K24 ["Types"]
       85 CALL                             R15 1 1
       86 NEWTABLE                         R16 4 0
       88 LOADN                            R17 1
       89 SETTABLEKS                       R17 R16 K25 ["Auto"]
       91 LOADN                            R17 2
       92 SETTABLEKS                       R17 R16 K26 ["Manual"]
       94 LOADK                            R17 K25 ["Auto"]
       95 SETTABLEN                        R17 R16 1
       96 LOADK                            R17 K26 ["Manual"]
       97 SETTABLEN                        R17 R16 2
       98 NEWTABLE                         R17 4 0
      100 LOADN                            R18 1
      101 SETTABLEKS                       R18 R17 K27 ["Published"]
      103 LOADN                            R18 2
      104 SETTABLEKS                       R18 R17 K28 ["PreviouslyPublished"]
      106 LOADK                            R18 K27 ["Published"]
      107 SETTABLEN                        R18 R17 1
      108 LOADK                            R18 K28 ["PreviouslyPublished"]
      109 SETTABLEN                        R18 R17 2
      110 DUPCLOSURE                       R18 K29 [PROTO_2]
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R17
      120 RETURN                           R18 1
