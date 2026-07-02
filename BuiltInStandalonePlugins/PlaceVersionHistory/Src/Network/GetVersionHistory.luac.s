PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R5 K2 ["GetVersionHistoryModel: %*"]
       10 MOVE                             R7 R2
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 DUPTABLE                         R3 K7 [{"hasMore", "cursor", "page"}]
       18 GETTABLEKS                       R4 R0 K4 ["hasMore"]
       20 SETTABLEKS                       R4 R3 K4 ["hasMore"]
       22 GETTABLEKS                       R4 R0 K8 ["nextCursor"]
       24 SETTABLEKS                       R4 R3 K5 ["cursor"]
       26 NEWTABLE                         R4 0 0
       28 SETTABLEKS                       R4 R3 K6 ["page"]
       30 GETTABLEKS                       R4 R0 K9 ["placeVersions"]
       32 JUMPIFNOT                        R4 ; [+99]
       33 GETTABLEKS                       R4 R0 K9 ["placeVersions"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 GETTABLEKS                       R10 R8 K10 ["version"]
       40 FASTCALL1                        TONUMBER R10 ; [+2]
       41 GETIMPORT                        R9 K12 [tonumber]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K15 [DateTime.fromIsoDate]
       46 GETTABLEKS                       R11 R8 K16 ["createdTime"]
       48 CALL                             R10 1 1
       49 JUMPIFNOT                        R9 ; [+1]
       50 JUMPIF                           R10 ; [+6]
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R11 R11 K1 ["reject"]
       54 LOADK                            R12 K17 ["GetVersionHistoryModel: invalid version or date"]
       55 CALL                             R11 1 -1
       56 RETURN                           R11 -1
       57 GETTABLEKS                       R12 R3 K6 ["page"]
       59 DUPTABLE                         R13 K24 [{"version", "publishStatus", "date", "contributors", "notes", "saver", "saveType"}]
       60 SETTABLEKS                       R9 R13 K10 ["version"]
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R16 R8 K18 ["publishStatus"]
       65 GETTABLE                         R14 R15 R16
       66 SETTABLEKS                       R14 R13 K18 ["publishStatus"]
       68 SETTABLEKS                       R10 R13 K19 ["date"]
       70 GETTABLEKS                       R15 R8 K20 ["contributors"]
       72 JUMPIFNOT                        R15 ; [+3]
       73 GETTABLEKS                       R14 R8 K20 ["contributors"]
       75 JUMP                             ; [+2]
       76 NEWTABLE                         R14 0 0
       78 SETTABLEKS                       R14 R13 K20 ["contributors"]
       80 DUPTABLE                         R14 K27 [{"title", "description"}]
       81 GETTABLEKS                       R16 R8 K25 ["title"]
       83 JUMPIFNOT                        R16 ; [+10]
       84 GETIMPORT                        R16 K30 [utf8.len]
       86 GETTABLEKS                       R17 R8 K25 ["title"]
       88 CALL                             R16 1 1
       89 JUMPIFEQKN                       R16 K31 [0] ; [+4]
       91 GETTABLEKS                       R15 R8 K25 ["title"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R15
       95 SETTABLEKS                       R15 R14 K25 ["title"]
       97 GETTABLEKS                       R16 R8 K26 ["description"]
       99 JUMPIFNOT                        R16 ; [+10]
      100 GETIMPORT                        R16 K30 [utf8.len]
      102 GETTABLEKS                       R17 R8 K26 ["description"]
      104 CALL                             R16 1 1
      105 JUMPIFEQKN                       R16 K31 [0] ; [+4]
      107 GETTABLEKS                       R15 R8 K26 ["description"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R15
      111 SETTABLEKS                       R15 R14 K26 ["description"]
      113 SETTABLEKS                       R14 R13 K21 ["notes"]
      115 GETTABLEKS                       R14 R8 K32 ["createdBy"]
      117 SETTABLEKS                       R14 R13 K22 ["saver"]
      119 GETUPVAL                         R15 3
      120 GETTABLEKS                       R16 R8 K23 ["saveType"]
      122 GETTABLE                         R14 R15 R16
      123 SETTABLEKS                       R14 R13 K23 ["saveType"]
      125 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      127 GETIMPORT                        R11 K35 [table.insert]
      129 CALL                             R11 2 0
      130 FORGLOOP                         R4 2 ; [-93]
      132 GETUPVAL                         R4 1
      133 GETTABLEKS                       R4 R4 K36 ["resolve"]
      135 MOVE                             R5 R3
      136 CALL                             R4 1 -1
      137 RETURN                           R4 -1

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
        7 LOADK                            R5 K7 ["place-version-history-api/v1/%*/history"]
        8 GETTABLEKS                       R7 R0 K8 ["placeId"]
       10 NAMECALL                         R5 R5 K9 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 DUPTABLE                         R5 K19 [{"cursor", "isPublished", "hasNotes", "saveType", "searchTerm", "startTime", "endTime", "contributor", "pageSize"}]
       15 GETTABLEKS                       R6 R0 K10 ["cursor"]
       17 SETTABLEKS                       R6 R5 K10 ["cursor"]
       19 GETTABLEKS                       R6 R0 K11 ["isPublished"]
       21 SETTABLEKS                       R6 R5 K11 ["isPublished"]
       23 GETTABLEKS                       R6 R0 K12 ["hasNotes"]
       25 SETTABLEKS                       R6 R5 K12 ["hasNotes"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R8 R0 K13 ["saveType"]
       30 GETTABLE                         R6 R7 R8
       31 SETTABLEKS                       R6 R5 K13 ["saveType"]
       33 GETTABLEKS                       R6 R0 K20 ["search"]
       35 SETTABLEKS                       R6 R5 K14 ["searchTerm"]
       37 GETTABLEKS                       R7 R0 K21 ["startDate"]
       39 JUMPIFNOT                        R7 ; [+6]
       40 GETTABLEKS                       R6 R0 K21 ["startDate"]
       42 NAMECALL                         R6 R6 K22 ["ToIsoDate"]
       44 CALL                             R6 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K15 ["startTime"]
       49 GETTABLEKS                       R7 R0 K23 ["endDate"]
       51 JUMPIFNOT                        R7 ; [+6]
       52 GETTABLEKS                       R6 R0 K23 ["endDate"]
       54 NAMECALL                         R6 R6 K22 ["ToIsoDate"]
       56 CALL                             R6 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K16 ["endTime"]
       61 GETTABLEKS                       R6 R0 K17 ["contributor"]
       63 SETTABLEKS                       R6 R5 K17 ["contributor"]
       65 GETTABLEKS                       R6 R0 K18 ["pageSize"]
       67 SETTABLEKS                       R6 R5 K18 ["pageSize"]
       69 CALL                             R2 3 1
       70 SETTABLEKS                       R2 R1 K2 ["Url"]
       72 NEWTABLE                         R2 1 0
       74 LOADK                            R3 K24 ["application/json"]
       75 SETTABLEKS                       R3 R2 K25 ["Content-Type"]
       77 SETTABLEKS                       R2 R1 K3 ["Headers"]
       79 GETTABLEKS                       R3 R0 K10 ["cursor"]
       81 JUMPIFEQKNIL                     R3 ; [+2]
       83 LOADB                            R2 0 +1
       84 LOADB                            R2 1
       85 JUMPIFNOT                        R2 ; [+5]
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R4 R4 K27 ["FIntPVHFirstPageDelayMs"]
       89 DIVK                             R3 R4 K26 [1000]
       90 JUMP                             ; [+1]
       91 LOADN                            R3 0
       92 JUMPIFNOT                        R2 ; [+66]
       93 GETUPVAL                         R4 3
       94 GETUPVAL                         R6 4
       95 DUPTABLE                         R7 K36 [{"targetPlaceId", "pageSize", "filterSaveType", "filterIsPublished", "filterHasNotes", "filterContributor", "filterStartTime", "filterEndTime", "searchTermLength"}]
       96 GETTABLEKS                       R8 R0 K8 ["placeId"]
       98 SETTABLEKS                       R8 R7 K28 ["targetPlaceId"]
      100 GETTABLEKS                       R8 R0 K18 ["pageSize"]
      102 SETTABLEKS                       R8 R7 K18 ["pageSize"]
      104 GETTABLEKS                       R8 R0 K13 ["saveType"]
      106 SETTABLEKS                       R8 R7 K29 ["filterSaveType"]
      108 GETTABLEKS                       R8 R0 K11 ["isPublished"]
      110 SETTABLEKS                       R8 R7 K30 ["filterIsPublished"]
      112 GETTABLEKS                       R8 R0 K12 ["hasNotes"]
      114 SETTABLEKS                       R8 R7 K31 ["filterHasNotes"]
      116 GETTABLEKS                       R8 R0 K17 ["contributor"]
      118 SETTABLEKS                       R8 R7 K32 ["filterContributor"]
      120 GETTABLEKS                       R9 R0 K21 ["startDate"]
      122 JUMPIFNOT                        R9 ; [+6]
      123 GETTABLEKS                       R8 R0 K21 ["startDate"]
      125 NAMECALL                         R8 R8 K22 ["ToIsoDate"]
      127 CALL                             R8 1 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R8
      130 SETTABLEKS                       R8 R7 K33 ["filterStartTime"]
      132 GETTABLEKS                       R9 R0 K23 ["endDate"]
      134 JUMPIFNOT                        R9 ; [+6]
      135 GETTABLEKS                       R8 R0 K23 ["endDate"]
      137 NAMECALL                         R8 R8 K22 ["ToIsoDate"]
      139 CALL                             R8 1 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R8
      142 SETTABLEKS                       R8 R7 K34 ["filterEndTime"]
      144 GETTABLEKS                       R9 R0 K20 ["search"]
      146 JUMPIFNOT                        R9 ; [+6]
      147 GETIMPORT                        R8 K39 [utf8.len]
      149 GETTABLEKS                       R9 R0 K20 ["search"]
      151 CALL                             R8 1 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R8
      154 SETTABLEKS                       R8 R7 K35 ["searchTermLength"]
      156 NAMECALL                         R4 R4 K40 ["logRobloxTelemetryEvent"]
      158 CALL                             R4 3 0
      159 GETUPVAL                         R4 5
      160 GETTABLEKS                       R4 R4 K41 ["delay"]
      162 MOVE                             R5 R3
      163 CALL                             R4 1 1
      164 NEWCLOSURE                       R6 P0
      165 CAPTURE                          UPVAL U6
      166 CAPTURE                          VAL R1
      167 CAPTURE                          UPVAL U7
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          UPVAL U1
      171 NAMECALL                         R4 R4 K42 ["andThen"]
      173 CALL                             R4 2 -1
      174 RETURN                           R4 -1

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
