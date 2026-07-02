PROTO_0:
        0 GETIMPORT                        R2 K2 [DateTime.now]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R2 R2 K3 ["UnixTimestamp"]
        5 GETTABLEKS                       R5 R0 K6 ["numVersions"]
        7 DIVK                             R4 R5 K5 [4]
        8 MULK                             R3 R4 K4 [86400]
        9 SUB                              R1 R2 R3
       10 NEWTABLE                         R2 0 0
       12 LOADN                            R5 1
       13 GETTABLEKS                       R3 R0 K6 ["numVersions"]
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 MODK                             R7 R5 K7 [3]
       18 JUMPIFEQKN                       R7 K8 [0] ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 MODK                             R8 R5 K9 [2]
       23 JUMPIFEQKN                       R8 K8 [0] ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 MODK                             R9 R5 K5 [4]
       28 JUMPIFEQKN                       R9 K8 [0] ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 JUMPIFNOT                        R8 ; [+1]
       33 ADDK                             R1 R1 K4 [86400]
       34 NEWTABLE                         R9 0 0
       36 GETUPVAL                         R10 0
       37 LOADNIL                          R11
       38 LOADNIL                          R12
       39 FORGPREP                         R10
       40 GETIMPORT                        R15 K12 [math.random]
       42 LOADN                            R16 0
       43 LOADN                            R17 1
       44 CALL                             R15 2 1
       45 JUMPIFEQKN                       R15 K13 [1] ; [+8]
       47 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       49 MOVE                             R16 R9
       50 MOVE                             R17 R14
       51 GETIMPORT                        R15 K16 [table.insert]
       53 CALL                             R15 2 0
       54 FORGLOOP                         R10 2 ; [-15]
       56 DUPTABLE                         R12 K24 [{"version", "saveType", "published", "date", "contributors", "notes", "saver"}]
       57 SETTABLEKS                       R5 R12 K17 ["version"]
       59 JUMPIFNOT                        R7 ; [+2]
       60 LOADK                            R13 K25 ["Auto"]
       61 JUMP                             ; [+1]
       62 LOADK                            R13 K26 ["Manual"]
       63 SETTABLEKS                       R13 R12 K18 ["saveType"]
       65 SETTABLEKS                       R6 R12 K19 ["published"]
       67 GETIMPORT                        R13 K28 [DateTime.fromUnixTimestamp]
       69 MOVE                             R14 R1
       70 CALL                             R13 1 1
       71 SETTABLEKS                       R13 R12 K20 ["date"]
       73 SETTABLEKS                       R9 R12 K21 ["contributors"]
       75 GETUPVAL                         R14 1
       76 GETIMPORT                        R15 K12 [math.random]
       78 LOADN                            R16 1
       79 GETUPVAL                         R18 1
       80 LENGTH                           R17 R18
       81 CALL                             R15 2 1
       82 GETTABLE                         R13 R14 R15
       83 SETTABLEKS                       R13 R12 K22 ["notes"]
       85 GETUPVAL                         R14 0
       86 GETIMPORT                        R15 K12 [math.random]
       88 LOADN                            R16 1
       89 GETUPVAL                         R18 0
       90 LENGTH                           R17 R18
       91 CALL                             R15 2 1
       92 GETTABLE                         R13 R14 R15
       93 SETTABLEKS                       R13 R12 K23 ["saver"]
       95 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       97 MOVE                             R11 R2
       98 GETIMPORT                        R10 K16 [table.insert]
      100 CALL                             R10 2 0
      101 FORNLOOP                         R3
      102 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [math.random]
        2 LOADN                            R2 1
        3 LOADN                            R3 100
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["failureRate"]
        8 JUMPIFLE                         R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["latencySec"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"places", "users", "usernames", "versionHistory", "networkFailure", "networkDelay"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["places"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["users"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["usernames"]
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["versionHistory"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R1 K4 ["networkFailure"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R1 K5 ["networkDelay"]
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 5
       16 DUPTABLE                         R3 K12 [{["title"] = "feat: optimized enemy AI pathfinding logic", ["description"] = " • Designed a player inventory system that allows users to collect, store, and manage various items throughout gameplay, with support for item stacking and categorization.\n • Implemented a responsive health bar UI that visually updates in real-time based on incoming damage and player healing events.\n • Optimized enemy AI pathfinding logic to improve movement efficiency, reduce CPU usage, and enhance performance in larger game environments.\n • Identified and resolved complex lighting issues within the cave environment, ensuring consistent shadows and ambient effects for better visual fidelity."}]
       17 SETTABLEN                        R3 R2 1
       18 DUPTABLE                         R3 K14 [{["title"] = , ["description"] = }]
       19 SETTABLEN                        R3 R2 2
       20 DUPTABLE                         R3 K14 [{["title"] = , ["description"] = }]
       21 SETTABLEN                        R3 R2 3
       22 DUPTABLE                         R3 K14 [{["title"] = , ["description"] = }]
       23 SETTABLEN                        R3 R2 4
       24 DUPTABLE                         R3 K14 [{["title"] = , ["description"] = }]
       25 SETTABLEN                        R3 R2 5
       26 NEWTABLE                         R3 16 0
       28 LOADK                            R4 K15 [2725162051]
       29 LOADK                            R5 K16 ["code4xp"]
       30 SETTABLE                         R5 R3 R4
       31 LOADK                            R4 K17 [3706781386]
       32 LOADK                            R5 K18 ["wingedbreadsticks"]
       33 SETTABLE                         R5 R3 R4
       34 LOADK                            R4 K19 [4687564904]
       35 LOADK                            R5 K20 ["vreddym"]
       36 SETTABLE                         R5 R3 R4
       37 LOADK                            R4 K21 [7328747770]
       38 LOADK                            R5 K22 ["PixelPlumber"]
       39 SETTABLE                         R5 R3 R4
       40 LOADK                            R4 K23 [9051275465]
       41 LOADK                            R5 K24 ["VV_Wesco"]
       42 SETTABLE                         R5 R3 R4
       43 LOADK                            R4 K25 [5005422365]
       44 LOADK                            R5 K26 ["s1lly_g00se8"]
       45 SETTABLE                         R5 R3 R4
       46 LOADK                            R4 K27 [4733584246]
       47 LOADK                            R5 K28 ["shibaxixi"]
       48 SETTABLE                         R5 R3 R4
       49 LOADK                            R4 K29 [2720453386]
       50 LOADK                            R5 K30 ["GeneralTso58"]
       51 SETTABLE                         R5 R3 R4
       52 LOADK                            R4 K31 [3570764360]
       53 LOADK                            R5 K32 ["Kresselia1"]
       54 SETTABLE                         R5 R3 R4
       55 LOADK                            R4 K33 [9253989021]
       56 LOADK                            R5 K34 ["LuckyRainGG"]
       57 SETTABLE                         R5 R3 R4
       58 NEWTABLE                         R4 0 0
       60 MOVE                             R5 R3
       61 LOADNIL                          R6
       62 LOADNIL                          R7
       63 FORGPREP                         R5
       64 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       66 MOVE                             R11 R4
       67 MOVE                             R12 R8
       68 GETIMPORT                        R10 K37 [table.insert]
       70 CALL                             R10 2 0
       71 FORGLOOP                         R5 2 ; [-8]
       73 NEWTABLE                         R5 0 10
       75 LOADK                            R6 K38 ["Lobby (Live)"]
       76 SETTABLEN                        R6 R5 1
       77 LOADK                            R6 K39 ["Lobby (QA)"]
       78 SETTABLEN                        R6 R5 2
       79 LOADK                            R6 K40 ["Lobby (Staging)"]
       80 SETTABLEN                        R6 R5 3
       81 LOADK                            R6 K41 ["Lobby (Test)"]
       82 SETTABLEN                        R6 R5 4
       83 LOADK                            R6 K42 ["Lobby (Branch v12)"]
       84 SETTABLEN                        R6 R5 5
       85 LOADK                            R6 K43 ["Lobby (Branch v13)"]
       86 SETTABLEN                        R6 R5 6
       87 LOADK                            R6 K44 ["Lobby (Branch v14)"]
       88 SETTABLEN                        R6 R5 7
       89 LOADK                            R6 K45 ["Lobby (Branch v15)"]
       90 SETTABLEN                        R6 R5 8
       91 LOADK                            R6 K46 ["Lobby (Branch v16)"]
       92 SETTABLEN                        R6 R5 9
       93 LOADK                            R6 K47 ["Lobby (Branch v117)"]
       94 SETTABLEN                        R6 R5 10
       95 DUPCLOSURE                       R6 K48 [PROTO_0]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 DUPCLOSURE                       R7 K49 [PROTO_3]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R6
      103 RETURN                           R7 1
