PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["reject"]
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
       32 JUMPIFNOT                        R4 ; [+97]
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
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R11 R12 K1 ["reject"]
       54 LOADK                            R12 K17 ["GetVersionHistoryModel: invalid version or date"]
       55 CALL                             R11 1 -1
       56 RETURN                           R11 -1
       57 GETTABLEKS                       R12 R3 K6 ["page"]
       59 DUPTABLE                         R13 K24 [{"version", "published", "date", "contributors", "notes", "saver", "saveType"}]
       60 SETTABLEKS                       R9 R13 K10 ["version"]
       62 GETTABLEKS                       R14 R8 K25 ["isPublished"]
       64 SETTABLEKS                       R14 R13 K18 ["published"]
       66 SETTABLEKS                       R10 R13 K19 ["date"]
       68 GETTABLEKS                       R15 R8 K20 ["contributors"]
       70 JUMPIFNOT                        R15 ; [+3]
       71 GETTABLEKS                       R14 R8 K20 ["contributors"]
       73 JUMP                             ; [+2]
       74 NEWTABLE                         R14 0 0
       76 SETTABLEKS                       R14 R13 K20 ["contributors"]
       78 DUPTABLE                         R14 K28 [{"title", "description"}]
       79 GETTABLEKS                       R16 R8 K26 ["title"]
       81 JUMPIFNOT                        R16 ; [+10]
       82 GETIMPORT                        R16 K31 [utf8.len]
       84 GETTABLEKS                       R17 R8 K26 ["title"]
       86 CALL                             R16 1 1
       87 JUMPIFEQKN                       R16 K32 [0] ; [+4]
       89 GETTABLEKS                       R15 R8 K26 ["title"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R15
       93 SETTABLEKS                       R15 R14 K26 ["title"]
       95 GETTABLEKS                       R16 R8 K27 ["description"]
       97 JUMPIFNOT                        R16 ; [+10]
       98 GETIMPORT                        R16 K31 [utf8.len]
      100 GETTABLEKS                       R17 R8 K27 ["description"]
      102 CALL                             R16 1 1
      103 JUMPIFEQKN                       R16 K32 [0] ; [+4]
      105 GETTABLEKS                       R15 R8 K27 ["description"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R15
      109 SETTABLEKS                       R15 R14 K27 ["description"]
      111 SETTABLEKS                       R14 R13 K21 ["notes"]
      113 GETTABLEKS                       R14 R8 K33 ["createdBy"]
      115 SETTABLEKS                       R14 R13 K22 ["saver"]
      117 GETUPVAL                         R15 2
      118 GETTABLEKS                       R16 R8 K23 ["saveType"]
      120 GETTABLE                         R14 R15 R16
      121 SETTABLEKS                       R14 R13 K23 ["saveType"]
      123 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      125 GETIMPORT                        R11 K36 [table.insert]
      127 CALL                             R11 2 0
      128 FORGLOOP                         R4 2 ; [-91]
      130 GETUPVAL                         R5 1
      131 GETTABLEKS                       R4 R5 K37 ["resolve"]
      133 MOVE                             R5 R3
      134 CALL                             R4 1 -1
      135 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Request"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K2 ["andThen"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"Method", "Url", "Headers"}]
        1 LOADK                            R2 K4 ["GET"]
        2 SETTABLEKS                       R2 R1 K0 ["Method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K5 ["composeUrl"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K6 ["APIS_URL"]
       10 LOADK                            R5 K7 ["place-version-history-api/v1/%*/history"]
       11 GETTABLEKS                       R7 R0 K8 ["placeId"]
       13 NAMECALL                         R5 R5 K9 ["format"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 DUPTABLE                         R5 K19 [{"cursor", "isPublished", "hasNotes", "saveType", "searchTerm", "startTime", "endTime", "contributor", "pageSize"}]
       18 GETTABLEKS                       R6 R0 K10 ["cursor"]
       20 SETTABLEKS                       R6 R5 K10 ["cursor"]
       22 GETTABLEKS                       R6 R0 K20 ["published"]
       24 SETTABLEKS                       R6 R5 K11 ["isPublished"]
       26 GETTABLEKS                       R6 R0 K12 ["hasNotes"]
       28 SETTABLEKS                       R6 R5 K12 ["hasNotes"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R8 R0 K13 ["saveType"]
       33 GETTABLE                         R6 R7 R8
       34 SETTABLEKS                       R6 R5 K13 ["saveType"]
       36 GETTABLEKS                       R6 R0 K21 ["search"]
       38 SETTABLEKS                       R6 R5 K14 ["searchTerm"]
       40 GETTABLEKS                       R7 R0 K22 ["startDate"]
       42 JUMPIFNOT                        R7 ; [+6]
       43 GETTABLEKS                       R6 R0 K22 ["startDate"]
       45 NAMECALL                         R6 R6 K23 ["ToIsoDate"]
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K15 ["startTime"]
       52 GETTABLEKS                       R7 R0 K24 ["endDate"]
       54 JUMPIFNOT                        R7 ; [+6]
       55 GETTABLEKS                       R6 R0 K24 ["endDate"]
       57 NAMECALL                         R6 R6 K23 ["ToIsoDate"]
       59 CALL                             R6 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R6
       62 SETTABLEKS                       R6 R5 K16 ["endTime"]
       64 GETTABLEKS                       R6 R0 K17 ["contributor"]
       66 SETTABLEKS                       R6 R5 K17 ["contributor"]
       68 GETTABLEKS                       R6 R0 K18 ["pageSize"]
       70 SETTABLEKS                       R6 R5 K18 ["pageSize"]
       72 CALL                             R2 3 1
       73 SETTABLEKS                       R2 R1 K1 ["Url"]
       75 NEWTABLE                         R2 1 0
       77 LOADK                            R3 K25 ["application/json"]
       78 SETTABLEKS                       R3 R2 K26 ["Content-Type"]
       80 SETTABLEKS                       R2 R1 K2 ["Headers"]
       82 GETTABLEKS                       R3 R0 K10 ["cursor"]
       84 JUMPIFEQKNIL                     R3 ; [+2]
       86 LOADB                            R2 0 +1
       87 LOADB                            R2 1
       88 JUMPIFNOT                        R2 ; [+5]
       89 GETUPVAL                         R5 2
       90 GETTABLEKS                       R4 R5 K28 ["FIntPVHFirstPageDelayMs"]
       92 DIVK                             R3 R4 K27 [1000]
       93 JUMP                             ; [+1]
       94 LOADN                            R3 0
       95 JUMPIFNOT                        R2 ; [+66]
       96 GETUPVAL                         R4 3
       97 GETUPVAL                         R6 4
       98 DUPTABLE                         R7 K37 [{"targetPlaceId", "pageSize", "filterSaveType", "filterIsPublished", "filterHasNotes", "filterContributor", "filterStartTime", "filterEndTime", "searchTermLength"}]
       99 GETTABLEKS                       R8 R0 K8 ["placeId"]
      101 SETTABLEKS                       R8 R7 K29 ["targetPlaceId"]
      103 GETTABLEKS                       R8 R0 K18 ["pageSize"]
      105 SETTABLEKS                       R8 R7 K18 ["pageSize"]
      107 GETTABLEKS                       R8 R0 K13 ["saveType"]
      109 SETTABLEKS                       R8 R7 K30 ["filterSaveType"]
      111 GETTABLEKS                       R8 R0 K20 ["published"]
      113 SETTABLEKS                       R8 R7 K31 ["filterIsPublished"]
      115 GETTABLEKS                       R8 R0 K12 ["hasNotes"]
      117 SETTABLEKS                       R8 R7 K32 ["filterHasNotes"]
      119 GETTABLEKS                       R8 R0 K17 ["contributor"]
      121 SETTABLEKS                       R8 R7 K33 ["filterContributor"]
      123 GETTABLEKS                       R9 R0 K22 ["startDate"]
      125 JUMPIFNOT                        R9 ; [+6]
      126 GETTABLEKS                       R8 R0 K22 ["startDate"]
      128 NAMECALL                         R8 R8 K23 ["ToIsoDate"]
      130 CALL                             R8 1 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K34 ["filterStartTime"]
      135 GETTABLEKS                       R9 R0 K24 ["endDate"]
      137 JUMPIFNOT                        R9 ; [+6]
      138 GETTABLEKS                       R8 R0 K24 ["endDate"]
      140 NAMECALL                         R8 R8 K23 ["ToIsoDate"]
      142 CALL                             R8 1 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R8
      145 SETTABLEKS                       R8 R7 K35 ["filterEndTime"]
      147 GETTABLEKS                       R9 R0 K21 ["search"]
      149 JUMPIFNOT                        R9 ; [+6]
      150 GETIMPORT                        R8 K40 [utf8.len]
      152 GETTABLEKS                       R9 R0 K21 ["search"]
      154 CALL                             R8 1 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R8
      157 SETTABLEKS                       R8 R7 K36 ["searchTermLength"]
      159 NAMECALL                         R4 R4 K41 ["logRobloxTelemetryEvent"]
      161 CALL                             R4 3 0
      162 GETUPVAL                         R5 5
      163 GETTABLEKS                       R4 R5 K42 ["delay"]
      165 MOVE                             R5 R3
      166 CALL                             R4 1 1
      167 NEWCLOSURE                       R6 P0
      168 CAPTURE                          UPVAL U6
      169 CAPTURE                          VAL R1
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          UPVAL U5
      172 CAPTURE                          UPVAL U1
      173 NAMECALL                         R4 R4 K43 ["andThen"]
      175 CALL                             R4 2 -1
      176 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["TelemetryProtocol"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R0 K13 ["Src"]
       39 GETTABLEKS                       R5 R6 K14 ["Contexts"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R5 K15 ["NetworkContext"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R8 R2 K16 ["RobloxAPI"]
       48 GETTABLEKS                       R7 R8 K17 ["Url"]
       50 GETTABLEKS                       R8 R7 K18 ["new"]
       52 CALL                             R8 0 1
       53 GETTABLEKS                       R10 R0 K13 ["Src"]
       55 GETTABLEKS                       R9 R10 K19 ["Network"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K20 ["Http"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R9 K21 ["GetVersionHistoryModel"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R4 K18 ["new"]
       69 CALL                             R12 0 1
       70 GETTABLEKS                       R14 R0 K13 ["Src"]
       72 GETTABLEKS                       R13 R14 K22 ["Events"]
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R13 K23 ["GetHistoryEvent"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K5 [require]
       81 GETTABLEKS                       R17 R0 K13 ["Src"]
       83 GETTABLEKS                       R16 R17 K24 ["Types"]
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
       98 DUPCLOSURE                       R17 K27 [PROTO_2]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 RETURN                           R17 1
