PROTO_0:
  GETIMPORT R1 K2 [string.lower]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["true"] [+3]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETIMPORT R2 K2 [table.concat]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  NEWTABLE R1 0 0
  LOADK R4 K0 ["([^.]+)"]
  NAMECALL R2 R0 K1 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  LENGTH R8 R1
  ADDK R7 R8 K2 [1]
  SETTABLE R5 R1 R7
  FORGLOOP R2 1 [-4]
  RETURN R1 1

PROTO_3:
  JUMPIFNOTEQKS R0 K0 ["Universe"] [+4]
  GETTABLEKS R2 R1 K1 ["universeId"]
  RETURN R2 1
  JUMPIFNOTEQKS R0 K2 ["Place"] [+5]
  GETTABLEKS R3 R1 K4 ["placeId"]
  ORK R2 R3 K3 [0]
  RETURN R2 1
  GETTABLEKS R3 R1 K5 ["resourceId"]
  ORK R2 R3 K3 [0]
  RETURN R2 1

PROTO_4:
  GETIMPORT R0 K2 [DateTime.fromUnixTimestampMillis]
  GETUPVAL R1 0
  CALL R0 1 1
  LOADK R2 K3 ["MMM D, h:mm a"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K4 ["FormatLocalTime"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+1]
  RETURN R3 1
  LOADK R4 K2 ["🤷🏻‍♀️"]
  RETURN R4 1

PROTO_6:
  NEWTABLE R3 0 0
  LOADK R6 K0 ["([^.]+)"]
  NAMECALL R4 R0 K1 ["gmatch"]
  CALL R4 2 3
  FORGPREP R4
  LENGTH R10 R3
  ADDK R9 R10 K2 [1]
  SETTABLE R7 R3 R9
  FORGLOOP R4 1 [-4]
  MOVE R2 R3
  GETTABLEN R3 R2 1
  JUMPIFEQKNIL R3 [+4]
  GETTABLEN R3 R2 2
  JUMPIFNOTEQKNIL R3 [+3]
  LOADK R3 K3 [""]
  RETURN R3 1
  JUMPIFNOTEQKNIL R1 [+3]
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEN R5 R2 1
  GETTABLEN R6 R2 2
  MOVE R7 R1
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_7:
  NAMECALL R3 R1 K0 ["getLocale"]
  CALL R3 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K2 [0] [+78]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K11 ["Init"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K17 ["Description.Init"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K20 [1] [+127]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K26 ["ArchivedExperience"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  GETTABLEKS R9 R2 K29 ["metaData"]
  GETTABLEKS R8 R9 K28 ["Action"]
  GETIMPORT R9 K32 [string.lower]
  MOVE R10 R8
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K33 ["true"] [+3]
  LOADB R7 1
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+35]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K34 ["Description.ArchivedExperience"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  JUMPIF R6 [+34]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K35 ["Description.RestoredExperience"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K36 [2] [+166]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K37 ["PlayabilityChanged"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K38 ["Description.PlayabilityChanged"]
  DUPTABLE R8 K40 [{"playability"}]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K41 ["Playability"]
  JUMPIFNOTEQKS R10 K42 ["Public"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K43 ["Description.ActionPublic"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+75]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K41 ["Playability"]
  JUMPIFNOTEQKS R10 K44 ["Private"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K45 ["Description.ActionPrivate"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K46 ["Description.ActionFriends"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K39 ["playability"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K47 [3] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K48 ["NotificationStringCreated"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K49 ["Description.NotificationStringCreated"]
  DUPTABLE R8 K51 [{"stringName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K52 ["StringName"]
  SETTABLEKS R9 R8 K50 ["stringName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K53 [4] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K54 ["NotificationStringDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K55 ["Description.NotificationStringDeleted"]
  DUPTABLE R8 K51 [{"stringName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K52 ["StringName"]
  SETTABLEKS R9 R8 K50 ["stringName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K56 [5] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K57 ["NotificationStringUpdated"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K58 ["Description.NotificationStringUpdated"]
  DUPTABLE R8 K51 [{"stringName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K52 ["StringName"]
  SETTABLEKS R9 R8 K50 ["stringName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K59 [6] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K60 ["AvatarSettingsAvatarType"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K61 ["Description.AvatarSettingsAvatarType"]
  DUPTABLE R8 K63 [{"avatarType"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K64 ["AvatarType"]
  SETTABLEKS R9 R8 K62 ["avatarType"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K65 [7] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K66 ["AvatarSettingsAnimation"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K67 ["Description.AvatarSettingsAnimation"]
  DUPTABLE R8 K69 [{"animation"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K70 ["Animation"]
  SETTABLEKS R9 R8 K68 ["animation"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K71 [8] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K72 ["AvatarSettingsCollision"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K73 ["Description.AvatarSettingsCollision"]
  DUPTABLE R8 K75 [{"collision"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K76 ["Collision"]
  SETTABLEKS R9 R8 K74 ["collision"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K77 [9] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K78 ["AvatarSettingsScaleHeight"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K79 ["Description.AvatarSettingsScaleHeight"]
  DUPTABLE R8 K81 [{"scale"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K82 ["Scale"]
  SETTABLEKS R9 R8 K80 ["scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K83 [10] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K84 ["AvatarSettingsScaleWidth"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K85 ["Description.AvatarSettingsScaleWidth"]
  DUPTABLE R8 K81 [{"scale"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K82 ["Scale"]
  SETTABLEKS R9 R8 K80 ["scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K86 [11] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K87 ["AvatarSettingsScaleHead"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K88 ["Description.AvatarSettingsScaleHead"]
  DUPTABLE R8 K81 [{"scale"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K82 ["Scale"]
  SETTABLEKS R9 R8 K80 ["scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K89 [12] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K90 ["AvatarSettingsScaleBodyType"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K91 ["Description.AvatarSettingsScaleBodyType"]
  DUPTABLE R8 K81 [{"scale"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K82 ["Scale"]
  SETTABLEKS R9 R8 K80 ["scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K92 [13] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K93 ["AvatarSettingsScaleProportions"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K94 ["Description.AvatarSettingsScaleProportions"]
  DUPTABLE R8 K81 [{"scale"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K82 ["Scale"]
  SETTABLEKS R9 R8 K80 ["scale"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K95 [14] [+78]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K96 ["AvatarSettingsBodyParts"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K97 ["Description.AvatarSettingsBodyParts"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K98 [15] [+78]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K99 ["AvatarSettingsClothing"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K100 ["Description.AvatarSettingsClothing"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K101 [16] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K102 ["ExperienceName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K103 ["Description.ExperienceName"]
  DUPTABLE R8 K106 [{"newName", "oldName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K107 ["NewName"]
  SETTABLEKS R9 R8 K104 ["newName"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K108 ["OldName"]
  SETTABLEKS R9 R8 K105 ["oldName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K109 [17] [+78]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K110 ["ExperienceDescription"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K111 ["Description.ExperienceDescription"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K112 [18] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K113 ["ExperienceGenre"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K114 ["Description.ExperienceGenre"]
  DUPTABLE R8 K116 [{"genre"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K117 ["Genre"]
  SETTABLEKS R9 R8 K115 ["genre"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K118 [19] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K119 ["SecuritySettingsHTTPRequests"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K120 ["Description.SecuritySettingsHTTPRequests"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K125 [20] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K126 ["SecuritySettingsStudioAccessToAPI"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K127 ["Description.SecuritySettingsStudioAccessToAPI"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K128 [21] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K129 ["SecuritySettingsThirdPartySales"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K130 ["Description.SecuritySettingsThirdPartySales"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K131 [22] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K132 ["SecuritySettingsThirdPartyTeleports"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K133 ["Description.SecuritySettingsThirdPartyTeleports"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K134 [23] [+78]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K135 ["ExperienceShutDown"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K136 ["Description.ExperienceShutDown"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K137 [24] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K139 ["Description.SocialLinksAdded"]
  DUPTABLE R8 K141 [{"channel"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K142 ["Channel"]
  SETTABLEKS R9 R8 K140 ["channel"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K143 [25] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K144 ["SocialLinksRemoved"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K145 ["Description.SocialLinksRemoved"]
  DUPTABLE R8 K141 [{"channel"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K142 ["Channel"]
  SETTABLEKS R9 R8 K140 ["channel"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K146 [26] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K147 ["SocialLinksUpdated"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K148 ["Description.SocialLinksUpdated"]
  DUPTABLE R8 K141 [{"channel"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K142 ["Channel"]
  SETTABLEKS R9 R8 K140 ["channel"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K149 [27] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K150 ["SpatialVoice"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K151 ["Description.SpatialVoice"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K152 [28] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K153 ["WorldSettingsWorkSpaceGravity"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K154 ["Description.WorldSettingsWorkSpaceGravity"]
  DUPTABLE R8 K156 [{"gravity"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K157 ["Gravity"]
  SETTABLEKS R9 R8 K155 ["gravity"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K158 [29] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K159 ["WorldSettingsJumpHeight"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K160 ["Description.WorldSettingsJumpHeight"]
  DUPTABLE R8 K162 [{"jumpHeight"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K163 ["JumpHeight"]
  SETTABLEKS R9 R8 K161 ["jumpHeight"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K164 [30] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K165 ["WorldSettingsJumpPower"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K166 ["Description.WorldSettingsJumpPower"]
  DUPTABLE R8 K168 [{"jumpPower"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K169 ["JumpPower"]
  SETTABLEKS R9 R8 K167 ["jumpPower"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K170 [31] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K171 ["WorldSettingsWalkSpeed"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K172 ["Description.WorldSettingsWalkSpeed"]
  DUPTABLE R8 K174 [{"walkSpeed"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K175 ["WalkSpeed"]
  SETTABLEKS R9 R8 K173 ["walkSpeed"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K176 [32] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K177 ["WorldSettingsMaxSlopeAngle"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K178 ["Description.WorldSettingsMaxSlopeAngle"]
  DUPTABLE R8 K180 [{"maxSlopeAngle"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K181 ["MaxSlopeAngle"]
  SETTABLEKS R9 R8 K179 ["maxSlopeAngle"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K182 [33] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K183 ["SentUpdate"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K184 ["Description.SentUpdate"]
  DUPTABLE R8 K186 [{"update"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K187 ["Update"]
  SETTABLEKS R9 R8 K185 ["update"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K188 [34] [+139]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K189 ["SupportedLanguages"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K191 ["Description.SupportedLanguages"]
  DUPTABLE R8 K193 [{"language", "action"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K195 ["Description.ActionAdded"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K196 ["Description.ActionRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K197 [35] [+139]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K198 ["AutoTranslationExperienceInformation"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K199 ["Description.AutoTranslationExperienceInformation"]
  DUPTABLE R8 K193 [{"language", "action"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K200 [36] [+139]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K201 ["AutoTranslationExperienceStringsAndProducts"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K202 ["Description.AutoTranslationExperienceStringsAndProducts"]
  DUPTABLE R8 K193 [{"language", "action"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K203 [37] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K204 ["LocalizationSettingsAutomaticTextCapture"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K205 ["Description.LocalizationSettingsAutomaticTextCapture"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K206 [38] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K207 ["LocalizationSettingsUserTranslatedContent"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K208 ["Description.LocalizationSettingsUserTranslatedContent"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K209 [39] [+45]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K210 ["ClearUnmodifiedAutoCaptureEntries"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K211 [40] [+45]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K212 ["AnalyticsReport"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K213 [41] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K214 ["TranslationIconAdded"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K215 ["Description.TranslationIconAdded"]
  DUPTABLE R8 K217 [{"language", "iconName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K218 ["IconName"]
  SETTABLEKS R9 R8 K216 ["iconName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K219 [42] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K220 ["TranslationIconDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K221 ["Description.TranslationIconDeleted"]
  DUPTABLE R8 K217 [{"language", "iconName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K218 ["IconName"]
  SETTABLEKS R9 R8 K216 ["iconName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K222 [43] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K223 ["TranslationExperienceName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K224 ["Description.TranslationExperienceName"]
  DUPTABLE R8 K225 [{"language"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K226 [44] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K227 ["TranslationExperienceDescription"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K228 ["Description.TranslationExperienceDescription"]
  DUPTABLE R8 K225 [{"language"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K229 [45] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K230 ["TranslationThumbnailAltText"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K231 ["Description.TranslationThumbnailAltText"]
  DUPTABLE R8 K233 [{"language", "thumbnailName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K234 ["ThumbnailName"]
  SETTABLEKS R9 R8 K232 ["thumbnailName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K235 [46] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K236 ["TranslationThumbnailAdded"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K237 ["Description.TranslationThumbnailAdded"]
  DUPTABLE R8 K233 [{"language", "thumbnailName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K234 ["ThumbnailName"]
  SETTABLEKS R9 R8 K232 ["thumbnailName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K238 [47] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K239 ["TranslationThumbnailDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K240 ["Description.TranslationThumbnailDeleted"]
  DUPTABLE R8 K233 [{"language", "thumbnailName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K234 ["ThumbnailName"]
  SETTABLEKS R9 R8 K232 ["thumbnailName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K241 [48] [+45]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K242 ["TranslationThumbnailOrder"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K243 [49] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K244 ["TranslationStringAdded"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K245 ["Description.TranslationStringAdded"]
  DUPTABLE R8 K247 [{"stringKey", "language"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K248 ["StringKey"]
  SETTABLEKS R9 R8 K246 ["stringKey"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K249 [50] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K250 ["TranslationStringDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K251 ["Description.TranslationStringDeleted"]
  DUPTABLE R8 K247 [{"stringKey", "language"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K248 ["StringKey"]
  SETTABLEKS R9 R8 K246 ["stringKey"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K252 [51] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K253 ["TranslationStringUpdated"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K254 ["Description.TranslationStringUpdated"]
  DUPTABLE R8 K247 [{"stringKey", "language"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K248 ["StringKey"]
  SETTABLEKS R9 R8 K246 ["stringKey"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K255 [52] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K0 ["getLocale"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K1 ["eventType"]
  DUPTABLE R8 K259 [{"language", "badgeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K260 ["BadgeName"]
  SETTABLEKS R9 R8 K258 ["badgeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K263 [53] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K8 ["iconType"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K9 ["iconId"]
  DUPTABLE R8 K259 [{"language", "badgeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K260 ["BadgeName"]
  SETTABLEKS R9 R8 K258 ["badgeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K266 [54] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K11 ["Init"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K12 ["Unknown"]
  DUPTABLE R8 K259 [{"language", "badgeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K260 ["BadgeName"]
  SETTABLEKS R9 R8 K258 ["badgeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K269 [55] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K14 ["pcall"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K15 [pcall]
  DUPTABLE R8 K259 [{"language", "badgeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K260 ["BadgeName"]
  SETTABLEKS R9 R8 K258 ["badgeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K272 [56] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K17 ["Description.Init"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K18 ["([^.]+)"]
  DUPTABLE R8 K276 [{"language", "productName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K277 ["ProductName"]
  SETTABLEKS R9 R8 K275 ["productName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K279 [57] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K25 ["universeId"]
  DUPTABLE R8 K276 [{"language", "productName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K277 ["ProductName"]
  SETTABLEKS R9 R8 K275 ["productName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K282 [58] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K28 ["Action"]
  DUPTABLE R8 K276 [{"language", "productName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K277 ["ProductName"]
  SETTABLEKS R9 R8 K275 ["productName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K285 [59] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K30 ["string"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K31 ["lower"]
  DUPTABLE R8 K276 [{"language", "productName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K277 ["ProductName"]
  SETTABLEKS R9 R8 K275 ["productName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K288 [60] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K33 ["true"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K34 ["Description.ArchivedExperience"]
  DUPTABLE R8 K292 [{"language", "passName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K293 ["PassName"]
  SETTABLEKS R9 R8 K291 ["passName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K295 [61] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K40 [{"playability"}]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K41 ["Playability"]
  DUPTABLE R8 K292 [{"language", "passName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K293 ["PassName"]
  SETTABLEKS R9 R8 K291 ["passName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K298 [62] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K43 ["Description.ActionPublic"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K44 ["Private"]
  DUPTABLE R8 K292 [{"language", "passName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K293 ["PassName"]
  SETTABLEKS R9 R8 K291 ["passName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K301 [63] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K46 ["Description.ActionFriends"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K47 [3]
  DUPTABLE R8 K292 [{"language", "passName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K194 ["Language"]
  SETTABLEKS R9 R8 K192 ["language"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K293 ["PassName"]
  SETTABLEKS R9 R8 K291 ["passName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K304 [64] [+60]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K49 ["Description.NotificationStringCreated"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K50 ["stringName"]
  DUPTABLE R8 K308 [{"userName"}]
  MOVE R9 R0
  GETTABLEKS R11 R2 K262 ["resourceId"]
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R2 K262 ["resourceId"]
  JUMPIF R10 [+1]
  LOADN R10 255
  CALL R9 1 1
  SETTABLEKS R9 R8 K307 ["userName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K53 [4]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K310 [65] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K55 ["Description.NotificationStringDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K56 [5]
  DUPTABLE R8 K314 [{"groupName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K315 ["GroupName"]
  SETTABLEKS R9 R8 K313 ["groupName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K60 ["AvatarSettingsAvatarType"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K317 [66] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K62 ["avatarType"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K64 ["AvatarType"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K65 [7]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K196 ["Description.ActionRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K322 [67] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K67 ["Description.AvatarSettingsAnimation"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K68 ["animation"]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K46 ["Description.ActionFriends"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K43 ["Description.ActionPublic"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K325 [68] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K70 ["Animation"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K71 [8]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K328 [69] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K73 ["Description.AvatarSettingsCollision"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K74 ["collision"]
  DUPTABLE R8 K332 [{"price"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K333 ["Price"]
  SETTABLEKS R9 R8 K331 ["price"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K334 [70] [+45]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K79 ["Description.AvatarSettingsScaleHeight"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADK R6 K80 ["scale"]
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K337 [71] [+133]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K82 ["Scale"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K83 [10]
  DUPTABLE R8 K122 [{"action"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K340 [72] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K85 ["Description.AvatarSettingsScaleWidth"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K86 [11]
  DUPTABLE R8 K332 [{"price"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K333 ["Price"]
  SETTABLEKS R9 R8 K331 ["price"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K343 [73] [+139]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K88 ["Description.AvatarSettingsScaleHead"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K89 [12]
  DUPTABLE R8 K347 [{"adName", "action"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K348 ["AdName"]
  SETTABLEKS R9 R8 K346 ["adName"]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K93 ["AvatarSettingsScaleProportions"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K94 ["Description.AvatarSettingsScaleProportions"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K351 [74] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K4 ["date"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K96 ["AvatarSettingsBodyParts"]
  DUPTABLE R8 K106 [{"newName", "oldName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K107 ["NewName"]
  SETTABLEKS R9 R8 K104 ["newName"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K108 ["OldName"]
  SETTABLEKS R9 R8 K105 ["oldName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K353 [75] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K98 [15]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K99 ["AvatarSettingsClothing"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K356 [76] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K101 [16]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K102 ["ExperienceName"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K359 [77] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K104 ["newName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K105 ["oldName"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K5 ["translation"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K362 [78] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K107 ["NewName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K108 ["OldName"]
  DUPTABLE R8 K106 [{"newName", "oldName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K107 ["NewName"]
  SETTABLEKS R9 R8 K104 ["newName"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K108 ["OldName"]
  SETTABLEKS R9 R8 K105 ["oldName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K365 [79] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K110 ["ExperienceDescription"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K111 ["Description.ExperienceDescription"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K368 [80] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K113 ["ExperienceGenre"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K114 ["Description.ExperienceGenre"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K371 [81] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K116 [{"genre"}]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K117 ["Genre"]
  DUPTABLE R8 K332 [{"price"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K333 ["Price"]
  SETTABLEKS R9 R8 K331 ["price"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K374 [82] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K119 ["SecuritySettingsHTTPRequests"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K120 ["Description.SecuritySettingsHTTPRequests"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K22 ["getText"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K377 [83] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K122 [{"action"}]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K123 ["Description.ActionEnabled"]
  DUPTABLE R8 K106 [{"newName", "oldName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K107 ["NewName"]
  SETTABLEKS R9 R8 K104 ["newName"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K108 ["OldName"]
  SETTABLEKS R9 R8 K105 ["oldName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K380 [84] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K125 [20]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K126 ["SecuritySettingsStudioAccessToAPI"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K383 [85] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K128 [21]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K129 ["SecuritySettingsThirdPartySales"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K386 [86] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K131 [22]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K132 ["SecuritySettingsThirdPartyTeleports"]
  DUPTABLE R8 K332 [{"price"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K333 ["Price"]
  SETTABLEKS R9 R8 K331 ["price"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K389 [87] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K134 [23]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K63 [{"avatarType"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K135 ["ExperienceShutDown"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K38 ["Description.PlayabilityChanged"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K392 [88] [+132]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K137 [24]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K139 ["Description.SocialLinksAdded"]
  DUPTABLE R8 K397 [{"userName", "role"}]
  MOVE R9 R0
  GETTABLEKS R10 R2 K262 ["resourceId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K307 ["userName"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K143 [25]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K144 ["SocialLinksRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K396 ["role"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K53 [4]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K401 [89] [+138]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K146 [26]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K147 ["SocialLinksUpdated"]
  DUPTABLE R8 K405 [{"groupRole", "groupName", "role"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K406 ["RolesetName"]
  SETTABLEKS R9 R8 K404 ["groupRole"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K315 ["GroupName"]
  SETTABLEKS R9 R8 K313 ["groupName"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K143 [25]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K144 ["SocialLinksRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K396 ["role"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K60 ["AvatarSettingsAvatarType"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K407 [90] [+209]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K152 [28]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K153 ["WorldSettingsWorkSpaceGravity"]
  DUPTABLE R8 K412 [{"userName", "oldRole", "newRole"}]
  MOVE R9 R0
  GETTABLEKS R10 R2 K262 ["resourceId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K307 ["userName"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K144 ["SocialLinksRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K143 [25]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K410 ["oldRole"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K143 [25]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K144 ["SocialLinksRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K411 ["newRole"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K53 [4]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K413 [91] [+132]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K158 [29]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K159 ["WorldSettingsJumpHeight"]
  DUPTABLE R8 K397 [{"userName", "role"}]
  MOVE R9 R0
  GETTABLEKS R10 R2 K262 ["resourceId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K307 ["userName"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K160 ["Description.WorldSettingsJumpHeight"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K161 ["jumpHeight"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K396 ["role"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K53 [4]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K418 [92] [+215]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K163 ["JumpHeight"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K164 [30]
  DUPTABLE R8 K421 [{"groupRole", "groupName", "oldRole", "newRole"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K406 ["RolesetName"]
  SETTABLEKS R9 R8 K404 ["groupRole"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K315 ["GroupName"]
  SETTABLEKS R9 R8 K313 ["groupName"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K144 ["SocialLinksRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K143 [25]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K410 ["oldRole"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K143 [25]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K144 ["SocialLinksRemoved"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K411 ["newRole"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K60 ["AvatarSettingsAvatarType"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K422 [93] [+138]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K167 ["jumpPower"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K168 [{"jumpPower"}]
  DUPTABLE R8 K405 [{"groupRole", "groupName", "role"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K406 ["RolesetName"]
  SETTABLEKS R9 R8 K404 ["groupRole"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K315 ["GroupName"]
  SETTABLEKS R9 R8 K313 ["groupName"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K28 ["Action"]
  JUMPIFNOTEQKS R10 K398 ["Edit"] [+36]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K160 ["Description.WorldSettingsJumpHeight"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K161 ["jumpHeight"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K396 ["role"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K60 ["AvatarSettingsAvatarType"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K262 ["resourceId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K425 [94] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K170 [31]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K138 ["SocialLinksAdded"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K171 ["WorldSettingsWalkSpeed"]
  DUPTABLE R8 K308 [{"userName"}]
  MOVE R9 R0
  GETTABLEKS R10 R2 K262 ["resourceId"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K307 ["userName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K428 [95] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K173 ["walkSpeed"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K175 ["WalkSpeed"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K433 [96] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K178 ["Description.WorldSettingsMaxSlopeAngle"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K179 ["maxSlopeAngle"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K436 [97] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K181 ["MaxSlopeAngle"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K182 [33]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K439 [98] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K184 ["Description.SentUpdate"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K185 ["update"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K442 [99] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K187 ["Update"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K188 [34]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K445 [100] [+58]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K190 ["Localization"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K191 ["Description.SupportedLanguages"]
  DUPTABLE R8 K449 [{"gearTypes"}]
  GETGLOBAL R9 K450 ["joinStrings"]
  GETTABLEKS R11 R2 K29 ["metaData"]
  GETTABLEKS R10 R11 K451 ["GearTypes"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K448 ["gearTypes"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K452 [101] [+140]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K197 [35]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K198 ["AutoTranslationExperienceInformation"]
  DUPTABLE R8 K456 [{"action", "placeName"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K458 [102] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K203 [37]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K204 ["LocalizationSettingsAutomaticTextCapture"]
  DUPTABLE R8 K116 [{"genre"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K117 ["Genre"]
  SETTABLEKS R9 R8 K115 ["genre"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K461 [103] [+61]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K201 ["AutoTranslationExperienceStringsAndProducts"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K206 [38]
  DUPTABLE R8 K106 [{"newName", "oldName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K107 ["NewName"]
  SETTABLEKS R9 R8 K104 ["newName"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K108 ["OldName"]
  SETTABLEKS R9 R8 K105 ["oldName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K463 [104] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K208 ["Description.LocalizationSettingsUserTranslatedContent"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K209 [39]
  DUPTABLE R8 K466 [{"placeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K467 [105] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K212 ["AnalyticsReport"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K213 [41]
  DUPTABLE R8 K471 [{"count"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K472 ["Count"]
  SETTABLEKS R9 R8 K470 ["count"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K473 [106] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K218 ["IconName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K219 [42]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K476 [107] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K221 ["Description.TranslationIconDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K222 [43]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K479 [108] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K224 ["Description.TranslationExperienceName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K225 [{"language"}]
  DUPTABLE R8 K471 [{"count"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K472 ["Count"]
  SETTABLEKS R9 R8 K470 ["count"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K482 [109] [+140]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K227 ["TranslationExperienceDescription"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K228 ["Description.TranslationExperienceDescription"]
  DUPTABLE R8 K456 [{"action", "placeName"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K485 [110] [+140]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K230 ["TranslationThumbnailAltText"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K231 ["Description.TranslationThumbnailAltText"]
  DUPTABLE R8 K456 [{"action", "placeName"}]
  GETTABLEKS R12 R2 K29 ["metaData"]
  GETTABLEKS R11 R12 K28 ["Action"]
  GETIMPORT R12 K32 [string.lower]
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K33 ["true"] [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+35]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K123 ["Description.ActionEnabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  JUMPIF R9 [+34]
  LOADNIL R10
  NEWTABLE R12 0 0
  LOADK R13 K124 ["Description.ActionDisabled"]
  LOADK R15 K18 ["([^.]+)"]
  NAMECALL R13 R13 K19 ["gmatch"]
  CALL R13 2 3
  FORGPREP R13
  LENGTH R19 R12
  ADDK R18 R19 K20 [1]
  SETTABLE R16 R12 R18
  FORGLOOP R13 1 [-4]
  MOVE R11 R12
  GETTABLEN R12 R11 1
  JUMPIFEQKNIL R12 [+4]
  GETTABLEN R12 R11 2
  JUMPIFNOTEQKNIL R12 [+3]
  LOADK R9 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R10 [+3]
  NEWTABLE R10 0 0
  GETTABLEN R14 R11 1
  GETTABLEN R15 R11 2
  MOVE R16 R10
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  SETTABLEKS R9 R8 K121 ["action"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K488 [111] [+67]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K233 [{"language", "thumbnailName"}]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K234 ["ThumbnailName"]
  DUPTABLE R8 K493 [{"placeName", "oldVersion", "newVersion"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K494 ["OldVersion"]
  SETTABLEKS R9 R8 K491 ["oldVersion"]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K495 ["NewVersion"]
  SETTABLEKS R9 R8 K492 ["newVersion"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K496 [112] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K241 [48]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K242 ["TranslationThumbnailOrder"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K499 [113] [+79]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K244 ["TranslationStringAdded"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K245 ["Description.TranslationStringAdded"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K502 [114] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K247 [{"stringKey", "language"}]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K248 ["StringKey"]
  DUPTABLE R8 K505 [{"thumbnailName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K234 ["ThumbnailName"]
  SETTABLEKS R9 R8 K232 ["thumbnailName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K506 [115] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K251 ["Description.TranslationStringDeleted"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K252 [51]
  DUPTABLE R8 K505 [{"thumbnailName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K234 ["ThumbnailName"]
  SETTABLEKS R9 R8 K232 ["thumbnailName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K509 [116] [+45]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K254 ["Description.TranslationStringUpdated"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K511 [117] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K0 ["getLocale"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K1 ["eventType"]
  DUPTABLE R8 K505 [{"thumbnailName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K234 ["ThumbnailName"]
  SETTABLEKS R9 R8 K232 ["thumbnailName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K514 [118] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K3 ["eventCategory"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K4 ["date"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K5 ["translation"]
  DUPTABLE R8 K466 [{"placeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K518 [119] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K7 ["actorName"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K4 ["date"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K8 ["iconType"]
  DUPTABLE R8 K466 [{"placeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K521 [120] [+55]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K4 ["date"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K11 ["Init"]
  DUPTABLE R8 K466 [{"placeName"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K457 ["PlaceName"]
  SETTABLEKS R9 R8 K455 ["placeName"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K174 [{"walkSpeed"}]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R7 R2 K432 ["placeId"]
  ORK R6 R7 K2 [0]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K524 [121] [+78]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K13 ["createdUnixTimeMs"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K27 ["Experience"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADNIL R7
  NEWTABLE R9 0 0
  LOADK R10 K14 ["pcall"]
  LOADK R12 K18 ["([^.]+)"]
  NAMECALL R10 R10 K19 ["gmatch"]
  CALL R10 2 3
  FORGPREP R10
  LENGTH R16 R9
  ADDK R15 R16 K20 [1]
  SETTABLE R13 R9 R15
  FORGLOOP R10 1 [-4]
  MOVE R8 R9
  GETTABLEN R9 R8 1
  JUMPIFEQKNIL R9 [+4]
  GETTABLEN R9 R8 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADK R6 K21 [""]
  JUMP [+11]
  JUMPIFNOTEQKNIL R7 [+3]
  NEWTABLE R7 0 0
  GETTABLEN R11 R8 1
  GETTABLEN R12 R8 2
  MOVE R13 R7
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 4 1
  MOVE R6 R9
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  GETTABLEKS R5 R2 K1 ["eventType"]
  JUMPIFNOTEQKN R5 K527 [122] [+54]
  DUPTABLE R5 K10 [{"eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId"}]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  GETTABLEKS R7 R2 K13 ["createdUnixTimeMs"]
  GETIMPORT R8 K15 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CALL R8 1 2
  JUMPIFNOT R8 [+2]
  MOVE R6 R9
  JUMP [+2]
  LOADK R6 K16 ["🤷🏻‍♀️"]
  JUMP [0]
  SETTABLEKS R6 R5 K4 ["date"]
  MOVE R6 R4
  LOADK R7 K17 ["Description.Init"]
  DUPTABLE R8 K332 [{"price"}]
  GETTABLEKS R10 R2 K29 ["metaData"]
  GETTABLEKS R9 R10 K333 ["Price"]
  SETTABLEKS R9 R8 K331 ["price"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["translation"]
  GETTABLEKS R6 R2 K23 ["userId"]
  SETTABLEKS R6 R5 K6 ["actorId"]
  MOVE R6 R0
  GETTABLEKS R7 R2 K23 ["userId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADK R6 K24 ["Universe"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  GETTABLEKS R6 R2 K25 ["universeId"]
  JUMP [0]
  SETTABLEKS R6 R5 K9 ["iconId"]
  RETURN R5 1
  DUPTABLE R5 K530 [{"eventType", "date", "translation", "actorId", "actorName", "iconId", "iconType", "eventCategory"}]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K1 ["eventType"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K4 ["date"]
  LOADK R6 K19 ["gmatch"]
  SETTABLEKS R6 R5 K5 ["translation"]
  LOADN R6 0
  SETTABLEKS R6 R5 K6 ["actorId"]
  LOADK R6 K20 [1]
  SETTABLEKS R6 R5 K7 ["actorName"]
  LOADN R6 0
  SETTABLEKS R6 R5 K9 ["iconId"]
  LOADK R6 K12 ["Unknown"]
  SETTABLEKS R6 R5 K8 ["iconType"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K3 ["eventCategory"]
  RETURN R5 1

PROTO_8:
  JUMPIFNOTEQKN R0 K0 [0] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K2 [1] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K4 [2] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K5 [3] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K6 [4] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K7 [5] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K8 [6] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K9 [7] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K10 [8] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K11 [9] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K12 [10] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K13 [11] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K14 [12] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K15 [13] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K16 [14] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K17 [15] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K18 [16] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K19 [17] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K20 [18] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K21 [19] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K22 [20] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K23 [21] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K24 [22] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K25 [23] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K26 [24] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K27 [25] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K28 [26] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K29 [27] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K30 [28] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K31 [29] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K32 [30] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K33 [31] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K34 [32] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K35 [33] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K36 [34] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K38 [35] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K39 [36] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K40 [37] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K41 [38] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K42 [39] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K43 [40] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K44 [41] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K45 [42] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K46 [43] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K47 [44] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K48 [45] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K49 [46] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K50 [47] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K51 [48] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K52 [49] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K53 [50] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K54 [51] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K55 [52] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K56 [53] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K57 [54] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K58 [55] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K59 [56] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K60 [57] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K61 [58] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K62 [59] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K63 [60] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K64 [61] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K65 [62] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K66 [63] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K67 [64] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K68 [65] [+3]
  LOADK R1 K37 ["Localization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K69 [66] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K71 [67] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K72 [68] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K73 [69] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K74 [70] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K75 [71] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K76 [72] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K77 [73] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K78 [74] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K79 [75] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K80 [76] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K81 [77] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K82 [78] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K83 [79] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K84 [80] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K85 [81] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K86 [82] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K87 [83] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K88 [84] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K89 [85] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K90 [86] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K91 [87] [+3]
  LOADK R1 K70 ["Monetization"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K92 [88] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K94 [89] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K95 [90] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K96 [91] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K97 [92] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K98 [93] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K99 [94] [+3]
  LOADK R1 K93 ["Permissions"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K100 [95] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K102 [96] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K103 [97] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K104 [98] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K105 [99] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K106 [100] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K107 [101] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K108 [102] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K109 [103] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K110 [104] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K111 [105] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K112 [106] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K113 [107] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K114 [108] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K115 [109] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K116 [110] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K117 [111] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K118 [112] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K119 [113] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K120 [114] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K121 [115] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K122 [116] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K123 [117] [+3]
  LOADK R1 K101 ["Place"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K124 [118] [+3]
  LOADK R1 K125 ["Publish"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K126 [119] [+3]
  LOADK R1 K125 ["Publish"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K127 [120] [+3]
  LOADK R1 K125 ["Publish"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K128 [121] [+3]
  LOADK R1 K3 ["Experience"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K129 [122] [+3]
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1
  LOADK R1 K1 ["Unknown"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Clients"]
  GETTABLEKS R2 R3 K7 ["ActivityHistoryClient"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  DUPCLOSURE R3 K9 [PROTO_1]
  SETGLOBAL R3 K10 ["joinStrings"]
  DUPCLOSURE R3 K11 [PROTO_2]
  DUPCLOSURE R4 K12 [PROTO_3]
  DUPCLOSURE R5 K13 [PROTO_5]
  DUPCLOSURE R6 K14 [PROTO_7]
  DUPCLOSURE R7 K15 [PROTO_8]
  DUPTABLE R8 K18 [{"translateEvent", "eventTypeToCategory"}]
  SETTABLEKS R6 R8 K16 ["translateEvent"]
  SETTABLEKS R7 R8 K17 ["eventTypeToCategory"]
  RETURN R8 1
