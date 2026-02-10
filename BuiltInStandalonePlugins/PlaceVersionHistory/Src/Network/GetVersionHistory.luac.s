PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["validate"]
  MOVE R2 R0
  CALL R1 1 2
  JUMPIF R1 [+11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["reject"]
  LOADK R5 K2 ["GetVersionHistoryModel: %*"]
  MOVE R7 R2
  NAMECALL R5 R5 K3 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 -1
  RETURN R3 -1
  DUPTABLE R3 K7 [{"hasMore", "cursor", "page"}]
  GETTABLEKS R4 R0 K4 ["hasMore"]
  SETTABLEKS R4 R3 K4 ["hasMore"]
  GETTABLEKS R4 R0 K8 ["nextCursor"]
  SETTABLEKS R4 R3 K5 ["cursor"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["page"]
  GETTABLEKS R4 R0 K9 ["placeVersions"]
  JUMPIFNOT R4 [+97]
  GETTABLEKS R4 R0 K9 ["placeVersions"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R10 R8 K10 ["version"]
  FASTCALL1 TONUMBER R10 [+2]
  GETIMPORT R9 K12 [tonumber]
  CALL R9 1 1
  GETIMPORT R10 K15 [DateTime.fromIsoDate]
  GETTABLEKS R11 R8 K16 ["createdTime"]
  CALL R10 1 1
  JUMPIFNOT R9 [+1]
  JUMPIF R10 [+6]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["reject"]
  LOADK R12 K17 ["GetVersionHistoryModel: invalid version or date"]
  CALL R11 1 -1
  RETURN R11 -1
  GETTABLEKS R12 R3 K6 ["page"]
  DUPTABLE R13 K24 [{"version", "published", "date", "contributors", "notes", "saver", "saveType"}]
  SETTABLEKS R9 R13 K10 ["version"]
  GETTABLEKS R14 R8 K25 ["isPublished"]
  SETTABLEKS R14 R13 K18 ["published"]
  SETTABLEKS R10 R13 K19 ["date"]
  GETTABLEKS R15 R8 K20 ["contributors"]
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R8 K20 ["contributors"]
  JUMP [+2]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K20 ["contributors"]
  DUPTABLE R14 K28 [{"title", "description"}]
  GETTABLEKS R16 R8 K26 ["title"]
  JUMPIFNOT R16 [+10]
  GETIMPORT R16 K31 [utf8.len]
  GETTABLEKS R17 R8 K26 ["title"]
  CALL R16 1 1
  JUMPIFEQKN R16 K32 [0] [+4]
  GETTABLEKS R15 R8 K26 ["title"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K26 ["title"]
  GETTABLEKS R16 R8 K27 ["description"]
  JUMPIFNOT R16 [+10]
  GETIMPORT R16 K31 [utf8.len]
  GETTABLEKS R17 R8 K27 ["description"]
  CALL R16 1 1
  JUMPIFEQKN R16 K32 [0] [+4]
  GETTABLEKS R15 R8 K27 ["description"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K27 ["description"]
  SETTABLEKS R14 R13 K21 ["notes"]
  GETTABLEKS R14 R8 K33 ["createdBy"]
  SETTABLEKS R14 R13 K22 ["saver"]
  GETUPVAL R15 2
  GETTABLEKS R16 R8 K23 ["saveType"]
  GETTABLE R14 R15 R16
  SETTABLEKS R14 R13 K23 ["saveType"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K36 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-91]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K37 ["resolve"]
  MOVE R5 R3
  CALL R4 1 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R1 K3 [{"Method", "Url", "Headers"}]
  LOADK R2 K4 ["GET"]
  SETTABLEKS R2 R1 K0 ["Method"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["composeUrl"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["APIS_URL"]
  LOADK R5 K7 ["place-version-history-api/v1/%*/history"]
  GETTABLEKS R7 R0 K8 ["placeId"]
  NAMECALL R5 R5 K9 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  DUPTABLE R5 K19 [{"cursor", "isPublished", "hasNotes", "saveType", "searchTerm", "startTime", "endTime", "contributor", "pageSize"}]
  GETTABLEKS R6 R0 K10 ["cursor"]
  SETTABLEKS R6 R5 K10 ["cursor"]
  GETTABLEKS R6 R0 K20 ["published"]
  SETTABLEKS R6 R5 K11 ["isPublished"]
  GETTABLEKS R6 R0 K12 ["hasNotes"]
  SETTABLEKS R6 R5 K12 ["hasNotes"]
  GETUPVAL R7 1
  GETTABLEKS R8 R0 K13 ["saveType"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K13 ["saveType"]
  GETTABLEKS R6 R0 K21 ["search"]
  SETTABLEKS R6 R5 K14 ["searchTerm"]
  GETTABLEKS R7 R0 K22 ["startDate"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R0 K22 ["startDate"]
  NAMECALL R6 R6 K23 ["ToIsoDate"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K15 ["startTime"]
  GETTABLEKS R7 R0 K24 ["endDate"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R0 K24 ["endDate"]
  NAMECALL R6 R6 K23 ["ToIsoDate"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["endTime"]
  GETTABLEKS R6 R0 K17 ["contributor"]
  SETTABLEKS R6 R5 K17 ["contributor"]
  GETTABLEKS R6 R0 K18 ["pageSize"]
  SETTABLEKS R6 R5 K18 ["pageSize"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["Url"]
  NEWTABLE R2 1 0
  LOADK R3 K25 ["application/json"]
  SETTABLEKS R3 R2 K26 ["Content-Type"]
  SETTABLEKS R2 R1 K2 ["Headers"]
  GETTABLEKS R2 R0 K10 ["cursor"]
  JUMPIFNOTEQKNIL R2 [+67]
  GETUPVAL R2 2
  GETUPVAL R4 3
  DUPTABLE R5 K35 [{"targetPlaceId", "pageSize", "filterSaveType", "filterIsPublished", "filterHasNotes", "filterContributor", "filterStartTime", "filterEndTime", "searchTermLength"}]
  GETTABLEKS R6 R0 K8 ["placeId"]
  SETTABLEKS R6 R5 K27 ["targetPlaceId"]
  GETTABLEKS R6 R0 K18 ["pageSize"]
  SETTABLEKS R6 R5 K18 ["pageSize"]
  GETTABLEKS R6 R0 K13 ["saveType"]
  SETTABLEKS R6 R5 K28 ["filterSaveType"]
  GETTABLEKS R6 R0 K20 ["published"]
  SETTABLEKS R6 R5 K29 ["filterIsPublished"]
  GETTABLEKS R6 R0 K12 ["hasNotes"]
  SETTABLEKS R6 R5 K30 ["filterHasNotes"]
  GETTABLEKS R6 R0 K17 ["contributor"]
  SETTABLEKS R6 R5 K31 ["filterContributor"]
  GETTABLEKS R7 R0 K22 ["startDate"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R0 K22 ["startDate"]
  NAMECALL R6 R6 K23 ["ToIsoDate"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K32 ["filterStartTime"]
  GETTABLEKS R7 R0 K24 ["endDate"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R0 K24 ["endDate"]
  NAMECALL R6 R6 K23 ["ToIsoDate"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K33 ["filterEndTime"]
  GETTABLEKS R7 R0 K21 ["search"]
  JUMPIFNOT R7 [+6]
  GETIMPORT R6 K38 [utf8.len]
  GETTABLEKS R7 R0 K21 ["search"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K34 ["searchTermLength"]
  NAMECALL R2 R2 K39 ["logRobloxTelemetryEvent"]
  CALL R2 3 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K40 ["Request"]
  MOVE R3 R1
  CALL R2 1 1
  DUPCLOSURE R4 K41 [PROTO_0]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  NAMECALL R2 R2 K42 ["andThen"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Promise"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["TelemetryProtocol"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Contexts"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["NetworkContext"]
  CALL R5 1 1
  GETTABLEKS R7 R1 K13 ["RobloxAPI"]
  GETTABLEKS R6 R7 K14 ["Url"]
  GETTABLEKS R7 R6 K15 ["new"]
  CALL R7 0 1
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K16 ["Network"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K17 ["Http"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K18 ["GetVersionHistoryModel"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K15 ["new"]
  CALL R11 0 1
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K19 ["Events"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K20 ["GetHistoryEvent"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K21 ["Types"]
  CALL R14 1 1
  NEWTABLE R15 4 0
  LOADN R16 1
  SETTABLEKS R16 R15 K22 ["Auto"]
  LOADN R16 2
  SETTABLEKS R16 R15 K23 ["Manual"]
  LOADK R16 K22 ["Auto"]
  SETTABLEN R16 R15 1
  LOADK R16 K23 ["Manual"]
  SETTABLEN R16 R15 2
  DUPCLOSURE R16 K24 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R2
  RETURN R16 1
