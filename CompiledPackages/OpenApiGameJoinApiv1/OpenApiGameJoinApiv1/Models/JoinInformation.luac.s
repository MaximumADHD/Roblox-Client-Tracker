PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+12]
  LOADK R2 K3 ["Expected table, got %*"]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K5 ["clientPort"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K5 ["clientPort"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K7 ["\"clientPort\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K5 ["clientPort"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K8 ["machineAddress"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K8 ["machineAddress"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K10 ["\"machineAddress\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K8 ["machineAddress"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K11 ["serverPort"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K11 ["serverPort"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K12 ["\"serverPort\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K11 ["serverPort"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K13 ["serverConnections"]
  JUMPIFNOT R1 [+59]
  GETTABLEKS R2 R0 K13 ["serverConnections"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+13]
  LOADK R2 K14 ["\"serverConnections\" > Expected table, got %*"]
  GETTABLEKS R5 R0 K13 ["serverConnections"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K13 ["serverConnections"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  JUMPIFEQKS R6 K6 ["number"] [+12]
  LOADK R7 K15 ["\"serverConnections\" > Expected index of type number, got %*"]
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R10 R4
  GETIMPORT R9 K1 [typeof]
  CALL R9 1 1
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R6 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["validate"]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+8]
  LOADK R8 K17 ["\"serverConnections\" > [%*] > %*"]
  MOVE R10 R4
  MOVE R11 R6
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  RETURN R7 1
  FORGLOOP R1 2 [-33]
  GETTABLEKS R1 R0 K18 ["udmuxEndpoints"]
  JUMPIFNOT R1 [+59]
  GETTABLEKS R2 R0 K18 ["udmuxEndpoints"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+13]
  LOADK R2 K19 ["\"udmuxEndpoints\" > Expected table, got %*"]
  GETTABLEKS R5 R0 K18 ["udmuxEndpoints"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K18 ["udmuxEndpoints"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  JUMPIFEQKS R6 K6 ["number"] [+12]
  LOADK R7 K20 ["\"udmuxEndpoints\" > Expected index of type number, got %*"]
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R10 R4
  GETIMPORT R9 K1 [typeof]
  CALL R9 1 1
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R6 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["validate"]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+8]
  LOADK R8 K21 ["\"udmuxEndpoints\" > [%*] > %*"]
  MOVE R10 R4
  MOVE R11 R6
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  RETURN R7 1
  FORGLOOP R1 2 [-33]
  GETTABLEKS R1 R0 K22 ["directServerReturn"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K22 ["directServerReturn"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K24 ["\"directServerReturn\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K22 ["directServerReturn"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K25 ["tokenGenAlgorithm"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K25 ["tokenGenAlgorithm"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K26 ["\"tokenGenAlgorithm\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K25 ["tokenGenAlgorithm"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K27 ["pepperId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K27 ["pepperId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K28 ["\"pepperId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K27 ["pepperId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K29 ["tokenValue"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K29 ["tokenValue"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K30 ["\"tokenValue\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K29 ["tokenValue"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K31 ["pingUrl"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K31 ["pingUrl"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K32 ["\"pingUrl\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K31 ["pingUrl"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K33 ["pingInterval"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K33 ["pingInterval"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K34 ["\"pingInterval\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K33 ["pingInterval"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K35 ["userName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K35 ["userName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K36 ["\"userName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K35 ["userName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K37 ["displayName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K37 ["displayName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K38 ["\"displayName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K37 ["displayName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K39 ["hasVerifiedBadge"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K39 ["hasVerifiedBadge"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K40 ["\"hasVerifiedBadge\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K39 ["hasVerifiedBadge"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K41 ["seleniumTestMode"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K41 ["seleniumTestMode"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K42 ["\"seleniumTestMode\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K41 ["seleniumTestMode"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K43 ["userId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K43 ["userId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K44 ["\"userId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K43 ["userId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K45 ["robloxLocale"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K45 ["robloxLocale"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K46 ["\"robloxLocale\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K45 ["robloxLocale"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K47 ["gameLocale"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K47 ["gameLocale"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K48 ["\"gameLocale\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K47 ["gameLocale"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K49 ["superSafeChat"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K49 ["superSafeChat"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K50 ["\"superSafeChat\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K49 ["superSafeChat"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K51 ["flexibleChatEnabled"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K51 ["flexibleChatEnabled"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K52 ["\"flexibleChatEnabled\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K51 ["flexibleChatEnabled"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K53 ["characterAppearance"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K53 ["characterAppearance"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K54 ["\"characterAppearance\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K53 ["characterAppearance"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K55 ["clientTicket"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K55 ["clientTicket"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K56 ["\"clientTicket\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K55 ["clientTicket"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K57 ["gameId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K57 ["gameId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K58 ["\"gameId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K57 ["gameId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K59 ["placeId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K59 ["placeId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K60 ["\"placeId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K59 ["placeId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K61 ["baseUrl"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K61 ["baseUrl"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K62 ["\"baseUrl\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K61 ["baseUrl"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K63 ["chatStyle"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K63 ["chatStyle"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K64 ["\"chatStyle\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K63 ["chatStyle"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K65 ["creatorId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K65 ["creatorId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K66 ["\"creatorId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K65 ["creatorId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K67 ["creatorTypeEnum"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K67 ["creatorTypeEnum"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K68 ["\"creatorTypeEnum\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K67 ["creatorTypeEnum"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K69 ["membershipType"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K69 ["membershipType"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K70 ["\"membershipType\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K69 ["membershipType"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K71 ["accountAge"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K71 ["accountAge"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K72 ["\"accountAge\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K71 ["accountAge"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K73 ["cookieStoreFirstTimePlayKey"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K73 ["cookieStoreFirstTimePlayKey"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K74 ["\"cookieStoreFirstTimePlayKey\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K73 ["cookieStoreFirstTimePlayKey"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K75 ["cookieStoreFiveMinutePlayKey"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K75 ["cookieStoreFiveMinutePlayKey"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K76 ["\"cookieStoreFiveMinutePlayKey\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K75 ["cookieStoreFiveMinutePlayKey"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K77 ["cookieStoreEnabled"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K77 ["cookieStoreEnabled"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K78 ["\"cookieStoreEnabled\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K77 ["cookieStoreEnabled"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K79 ["isUnknownOrUnder13"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K79 ["isUnknownOrUnder13"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K80 ["\"isUnknownOrUnder13\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K79 ["isUnknownOrUnder13"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K81 ["gameChatType"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K81 ["gameChatType"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K82 ["\"gameChatType\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K81 ["gameChatType"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K84 ["\"whoCanWhisperChatWithMeInExperiences\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K83 ["whoCanWhisperChatWithMeInExperiences"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K85 ["sessionId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K85 ["sessionId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K86 ["\"sessionId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K85 ["sessionId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K87 ["analyticsSessionId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K87 ["analyticsSessionId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K88 ["\"analyticsSessionId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K87 ["analyticsSessionId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K89 ["dataCenterId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K89 ["dataCenterId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K90 ["\"dataCenterId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K89 ["dataCenterId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K91 ["universeId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K91 ["universeId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K92 ["\"universeId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K91 ["universeId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K93 ["followUserId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K93 ["followUserId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K94 ["\"followUserId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K93 ["followUserId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K95 ["characterAppearanceId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K95 ["characterAppearanceId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K96 ["\"characterAppearanceId\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K95 ["characterAppearanceId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K97 ["countryCode"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K97 ["countryCode"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K98 ["\"countryCode\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K97 ["countryCode"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K99 ["alternateName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K99 ["alternateName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K100 ["\"alternateName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K99 ["alternateName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K101 ["randomSeed1"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K101 ["randomSeed1"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K102 ["\"randomSeed1\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K101 ["randomSeed1"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K103 ["clientPublicKeyData"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K103 ["clientPublicKeyData"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K104 ["\"clientPublicKeyData\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K103 ["clientPublicKeyData"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K105 ["rccVersion"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K105 ["rccVersion"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K106 ["\"rccVersion\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K105 ["rccVersion"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K107 ["channelName"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K107 ["channelName"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K108 ["\"channelName\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K107 ["channelName"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K109 ["verifiedAMP"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K109 ["verifiedAMP"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K110 ["\"verifiedAMP\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K109 ["verifiedAMP"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K111 ["privateServerOwnerID"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K111 ["privateServerOwnerID"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["number"] [+13]
  LOADK R2 K112 ["\"privateServerOwnerID\" > Expected number, got %*"]
  GETTABLEKS R5 R0 K111 ["privateServerOwnerID"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K113 ["privateServerID"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K113 ["privateServerID"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K114 ["\"privateServerID\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K113 ["privateServerID"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K115 ["eventId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K115 ["eventId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K116 ["\"eventId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K115 ["eventId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K117 ["ephemeralEarlyPubKey"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K117 ["ephemeralEarlyPubKey"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K118 ["\"ephemeralEarlyPubKey\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K117 ["ephemeralEarlyPubKey"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K119 ["partyId"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K119 ["partyId"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K120 ["\"partyId\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K119 ["partyId"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K121 ["showRobloxTranslations"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K121 ["showRobloxTranslations"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K23 ["boolean"] [+13]
  LOADK R2 K122 ["\"showRobloxTranslations\" > Expected boolean, got %*"]
  GETTABLEKS R5 R0 K121 ["showRobloxTranslations"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K123 ["matchmakingAttributes"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K123 ["matchmakingAttributes"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K124 ["\"matchmakingAttributes\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K123 ["matchmakingAttributes"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K125 ["translationDisplayMode"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R0 K125 ["translationDisplayMode"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+13]
  LOADK R2 K126 ["\"translationDisplayMode\" > Expected string, got %*"]
  GETTABLEKS R5 R0 K125 ["translationDisplayMode"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["OpenApiGameJoinApiv1"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Models"]
  GETTABLEKS R2 R3 K7 ["ServerConnection"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Models"]
  GETTABLEKS R3 R4 K8 ["UdmuxEndpoint"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  GETIMPORT R4 K12 [table.freeze]
  DUPTABLE R5 K14 [{"validate"}]
  SETTABLEKS R3 R5 K13 ["validate"]
  CALL R4 1 -1
  RETURN R4 -1
