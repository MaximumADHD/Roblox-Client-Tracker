PROTO_0:
  GETIMPORT R3 K2 [DateTime.now]
  CALL R3 0 1
  GETTABLEKS R2 R3 K3 ["UnixTimestamp"]
  GETTABLEKS R5 R0 K6 ["numVersions"]
  DIVK R4 R5 K5 [4]
  MULK R3 R4 K4 [86400]
  SUB R1 R2 R3
  NEWTABLE R2 0 0
  LOADN R5 1
  GETTABLEKS R3 R0 K6 ["numVersions"]
  LOADN R4 1
  FORNPREP R3
  MODK R7 R5 K7 [3]
  JUMPIFEQKN R7 K8 [0] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  MODK R8 R5 K9 [2]
  JUMPIFEQKN R8 K8 [0] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  MODK R9 R5 K5 [4]
  JUMPIFEQKN R9 K8 [0] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+1]
  ADDK R1 R1 K4 [86400]
  NEWTABLE R9 0 0
  GETUPVAL R10 0
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETIMPORT R15 K12 [math.random]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  JUMPIFEQKN R15 K13 [1] [+8]
  FASTCALL2 TABLE_INSERT R9 R14 [+5]
  MOVE R16 R9
  MOVE R17 R14
  GETIMPORT R15 K16 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [-15]
  DUPTABLE R12 K24 [{"version", "saveType", "published", "date", "contributors", "notes", "saver"}]
  SETTABLEKS R5 R12 K17 ["version"]
  JUMPIFNOT R7 [+2]
  LOADK R13 K25 ["Auto"]
  JUMP [+1]
  LOADK R13 K26 ["Manual"]
  SETTABLEKS R13 R12 K18 ["saveType"]
  SETTABLEKS R6 R12 K19 ["published"]
  GETIMPORT R13 K28 [DateTime.fromUnixTimestamp]
  MOVE R14 R1
  CALL R13 1 1
  SETTABLEKS R13 R12 K20 ["date"]
  SETTABLEKS R9 R12 K21 ["contributors"]
  GETUPVAL R14 1
  GETIMPORT R15 K12 [math.random]
  LOADN R16 1
  GETUPVAL R18 1
  LENGTH R17 R18
  CALL R15 2 1
  GETTABLE R13 R14 R15
  SETTABLEKS R13 R12 K22 ["notes"]
  GETUPVAL R14 0
  GETIMPORT R15 K12 [math.random]
  LOADN R16 1
  GETUPVAL R18 0
  LENGTH R17 R18
  CALL R15 2 1
  GETTABLE R13 R14 R15
  SETTABLEKS R13 R12 K23 ["saver"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K16 [table.insert]
  CALL R10 2 0
  FORNLOOP R3
  RETURN R2 1

PROTO_1:
  GETIMPORT R1 K2 [math.random]
  LOADN R2 1
  LOADN R3 100
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["failureRate"]
  JUMPIFLE R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K2 [task.wait]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["latencySec"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K6 [{"places", "users", "usernames", "versionHistory", "networkFailure", "networkDelay"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["places"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["users"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K2 ["usernames"]
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["versionHistory"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K4 ["networkFailure"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K5 ["networkDelay"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 0 5
  DUPTABLE R3 K10 [{"title", "description"}]
  LOADK R4 K11 ["feat: optimized enemy AI pathfinding logic"]
  SETTABLEKS R4 R3 K8 ["title"]
  LOADK R4 K12 [" • Designed a player inventory system that allows users to collect, store, and manage various items throughout gameplay, with support for item stacking and categorization.
 • Implemented a responsive health bar UI that visually updates in real-time based on incoming damage and player healing events.
 • Optimized enemy AI pathfinding logic to improve movement efficiency, reduce CPU usage, and enhance performance in larger game environments.
 • Identified and resolved complex lighting issues within the cave environment, ensuring consistent shadows and ambient effects for better visual fidelity."]
  SETTABLEKS R4 R3 K9 ["description"]
  SETTABLEN R3 R2 1
  DUPTABLE R3 K10 [{"title", "description"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["title"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["description"]
  SETTABLEN R3 R2 2
  DUPTABLE R3 K10 [{"title", "description"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["title"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["description"]
  SETTABLEN R3 R2 3
  DUPTABLE R3 K10 [{"title", "description"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["title"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["description"]
  SETTABLEN R3 R2 4
  DUPTABLE R3 K10 [{"title", "description"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["title"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["description"]
  SETTABLEN R3 R2 5
  NEWTABLE R3 16 0
  LOADK R4 K13 [2725162051]
  LOADK R5 K14 ["code4xp"]
  SETTABLE R5 R3 R4
  LOADK R4 K15 [3706781386]
  LOADK R5 K16 ["wingedbreadsticks"]
  SETTABLE R5 R3 R4
  LOADK R4 K17 [4687564904]
  LOADK R5 K18 ["vreddym"]
  SETTABLE R5 R3 R4
  LOADK R4 K19 [7328747770]
  LOADK R5 K20 ["PixelPlumber"]
  SETTABLE R5 R3 R4
  LOADK R4 K21 [9051275465]
  LOADK R5 K22 ["VV_Wesco"]
  SETTABLE R5 R3 R4
  LOADK R4 K23 [5005422365]
  LOADK R5 K24 ["s1lly_g00se8"]
  SETTABLE R5 R3 R4
  LOADK R4 K25 [4733584246]
  LOADK R5 K26 ["shibaxixi"]
  SETTABLE R5 R3 R4
  LOADK R4 K27 [2720453386]
  LOADK R5 K28 ["GeneralTso58"]
  SETTABLE R5 R3 R4
  LOADK R4 K29 [3570764360]
  LOADK R5 K30 ["Kresselia1"]
  SETTABLE R5 R3 R4
  LOADK R4 K31 [9253989021]
  LOADK R5 K32 ["LuckyRainGG"]
  SETTABLE R5 R3 R4
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  FASTCALL2 TABLE_INSERT R4 R8 [+5]
  MOVE R11 R4
  MOVE R12 R8
  GETIMPORT R10 K35 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-8]
  NEWTABLE R5 0 10
  LOADK R6 K36 ["Lobby (Live)"]
  SETTABLEN R6 R5 1
  LOADK R6 K37 ["Lobby (QA)"]
  SETTABLEN R6 R5 2
  LOADK R6 K38 ["Lobby (Staging)"]
  SETTABLEN R6 R5 3
  LOADK R6 K39 ["Lobby (Test)"]
  SETTABLEN R6 R5 4
  LOADK R6 K40 ["Lobby (Branch v12)"]
  SETTABLEN R6 R5 5
  LOADK R6 K41 ["Lobby (Branch v13)"]
  SETTABLEN R6 R5 6
  LOADK R6 K42 ["Lobby (Branch v14)"]
  SETTABLEN R6 R5 7
  LOADK R6 K43 ["Lobby (Branch v15)"]
  SETTABLEN R6 R5 8
  LOADK R6 K44 ["Lobby (Branch v16)"]
  SETTABLEN R6 R5 9
  LOADK R6 K45 ["Lobby (Branch v117)"]
  SETTABLEN R6 R5 10
  DUPCLOSURE R6 K46 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  DUPCLOSURE R7 K47 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
