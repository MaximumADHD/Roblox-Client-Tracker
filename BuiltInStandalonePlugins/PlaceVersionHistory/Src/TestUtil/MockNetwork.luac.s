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
       16 DUPTABLE                         R3 K10 [{"title", "description"}]
       17 LOADK                            R4 K11 ["feat: optimized enemy AI pathfinding logic"]
       18 SETTABLEKS                       R4 R3 K8 ["title"]
       20 LOADK                            R4 K12 [" • Designed a player inventory system that allows users to collect, store, and manage various items throughout gameplay, with support for item stacking and categorization.\n • Implemented a responsive health bar UI that visually updates in real-time based on incoming damage and player healing events.\n • Optimized enemy AI pathfinding logic to improve movement efficiency, reduce CPU usage, and enhance performance in larger game environments.\n • Identified and resolved complex lighting issues within the cave environment, ensuring consistent shadows and ambient effects for better visual fidelity."]
       21 SETTABLEKS                       R4 R3 K9 ["description"]
       23 SETTABLEN                        R3 R2 1
       24 DUPTABLE                         R3 K10 [{"title", "description"}]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K8 ["title"]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K9 ["description"]
       31 SETTABLEN                        R3 R2 2
       32 DUPTABLE                         R3 K10 [{"title", "description"}]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K8 ["title"]
       36 LOADNIL                          R4
       37 SETTABLEKS                       R4 R3 K9 ["description"]
       39 SETTABLEN                        R3 R2 3
       40 DUPTABLE                         R3 K10 [{"title", "description"}]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K8 ["title"]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K9 ["description"]
       47 SETTABLEN                        R3 R2 4
       48 DUPTABLE                         R3 K10 [{"title", "description"}]
       49 LOADNIL                          R4
       50 SETTABLEKS                       R4 R3 K8 ["title"]
       52 LOADNIL                          R4
       53 SETTABLEKS                       R4 R3 K9 ["description"]
       55 SETTABLEN                        R3 R2 5
       56 NEWTABLE                         R3 16 0
       58 LOADK                            R4 K13 [2725162051]
       59 LOADK                            R5 K14 ["code4xp"]
       60 SETTABLE                         R5 R3 R4
       61 LOADK                            R4 K15 [3706781386]
       62 LOADK                            R5 K16 ["wingedbreadsticks"]
       63 SETTABLE                         R5 R3 R4
       64 LOADK                            R4 K17 [4687564904]
       65 LOADK                            R5 K18 ["vreddym"]
       66 SETTABLE                         R5 R3 R4
       67 LOADK                            R4 K19 [7328747770]
       68 LOADK                            R5 K20 ["PixelPlumber"]
       69 SETTABLE                         R5 R3 R4
       70 LOADK                            R4 K21 [9051275465]
       71 LOADK                            R5 K22 ["VV_Wesco"]
       72 SETTABLE                         R5 R3 R4
       73 LOADK                            R4 K23 [5005422365]
       74 LOADK                            R5 K24 ["s1lly_g00se8"]
       75 SETTABLE                         R5 R3 R4
       76 LOADK                            R4 K25 [4733584246]
       77 LOADK                            R5 K26 ["shibaxixi"]
       78 SETTABLE                         R5 R3 R4
       79 LOADK                            R4 K27 [2720453386]
       80 LOADK                            R5 K28 ["GeneralTso58"]
       81 SETTABLE                         R5 R3 R4
       82 LOADK                            R4 K29 [3570764360]
       83 LOADK                            R5 K30 ["Kresselia1"]
       84 SETTABLE                         R5 R3 R4
       85 LOADK                            R4 K31 [9253989021]
       86 LOADK                            R5 K32 ["LuckyRainGG"]
       87 SETTABLE                         R5 R3 R4
       88 NEWTABLE                         R4 0 0
       90 MOVE                             R5 R3
       91 LOADNIL                          R6
       92 LOADNIL                          R7
       93 FORGPREP                         R5
       94 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       96 MOVE                             R11 R4
       97 MOVE                             R12 R8
       98 GETIMPORT                        R10 K35 [table.insert]
      100 CALL                             R10 2 0
      101 FORGLOOP                         R5 2 ; [-8]
      103 NEWTABLE                         R5 0 10
      105 LOADK                            R6 K36 ["Lobby (Live)"]
      106 SETTABLEN                        R6 R5 1
      107 LOADK                            R6 K37 ["Lobby (QA)"]
      108 SETTABLEN                        R6 R5 2
      109 LOADK                            R6 K38 ["Lobby (Staging)"]
      110 SETTABLEN                        R6 R5 3
      111 LOADK                            R6 K39 ["Lobby (Test)"]
      112 SETTABLEN                        R6 R5 4
      113 LOADK                            R6 K40 ["Lobby (Branch v12)"]
      114 SETTABLEN                        R6 R5 5
      115 LOADK                            R6 K41 ["Lobby (Branch v13)"]
      116 SETTABLEN                        R6 R5 6
      117 LOADK                            R6 K42 ["Lobby (Branch v14)"]
      118 SETTABLEN                        R6 R5 7
      119 LOADK                            R6 K43 ["Lobby (Branch v15)"]
      120 SETTABLEN                        R6 R5 8
      121 LOADK                            R6 K44 ["Lobby (Branch v16)"]
      122 SETTABLEN                        R6 R5 9
      123 LOADK                            R6 K45 ["Lobby (Branch v117)"]
      124 SETTABLEN                        R6 R5 10
      125 DUPCLOSURE                       R6 K46 [PROTO_0]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R2
      128 DUPCLOSURE                       R7 K47 [PROTO_3]
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R6
      133 RETURN                           R7 1
