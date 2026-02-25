PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["isCli"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADK                            R2 K1 ["Production"]
        6 JUMP                             ; [+6]
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADK                            R2 K2 ["FeatureTest"]
       11 JUMP                             ; [+1]
       12 LOADK                            R2 K3 ["RobloxCli"]
       13 DUPTABLE                         R3 K10 [{"environment", "plugin", "loader", "story", "storyProps", "handle"}]
       14 SETTABLEKS                       R2 R3 K4 ["environment"]
       16 JUMPIFNOTEQKS                    R2 K1 ["Production"] ; [+3]
       18 MOVE                             R4 R0
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K11 ["new"]
       23 LOADK                            R5 K12 ["AssetImporter"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K5 ["plugin"]
       27 SETTABLEKS                       R1 R3 K6 ["loader"]
       29 GETUPVAL                         R4 3
       30 SETTABLEKS                       R4 R3 K7 ["story"]
       32 NEWTABLE                         R4 0 0
       34 SETTABLEKS                       R4 R3 K8 ["storyProps"]
       36 LOADNIL                          R4
       37 SETTABLEKS                       R4 R3 K9 ["handle"]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K13 ["Store"]
       42 GETTABLEKS                       R4 R5 K11 ["new"]
       44 GETUPVAL                         R5 5
       45 LOADNIL                          R6
       46 NEWTABLE                         R7 0 1
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R8 R9 K14 ["thunkMiddleware"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R3 K15 ["store"]
       56 GETUPVAL                         R5 6
       57 GETTABLEKS                       R4 R5 K11 ["new"]
       59 MOVE                             R5 R3
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K16 ["contextItems"]
       63 GETUPVAL                         R5 7
       64 GETTABLEKS                       R4 R5 K17 ["loadData"]
       66 MOVE                             R5 R3
       67 CALL                             R4 1 0
       68 GETUPVAL                         R6 7
       69 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       71 MOVE                             R5 R3
       72 GETIMPORT                        R4 K19 [setmetatable]
       74 CALL                             R4 2 1
       75 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["managedGroups"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["managedGroups"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R1 K1 ["creatorTargetId"]
       12 GETTABLEKS                       R8 R6 K2 ["id"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+5]
       16 GETTABLEKS                       R7 R1 K1 ["creatorTargetId"]
       18 SETTABLEKS                       R7 R0 K3 ["defaultCreator"]
       20 FORGLOOP                         R2 2 ; [-11]
       22 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 GETGLOBAL                        R1 K0 ["setDefaultCreator"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["managedGroups"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["setGroups"]
        7 CALL                             R1 2 0
        8 GETGLOBAL                        R1 K2 ["setDefaultCreator"]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["contextItems"]
        2 GETTABLEKS                       R1 R2 K1 ["Networking"]
        4 GETTABLEKS                       R3 R0 K0 ["contextItems"]
        6 GETTABLEKS                       R2 R3 K2 ["FileController"]
        8 GETTABLEKS                       R4 R0 K0 ["contextItems"]
       10 GETTABLEKS                       R3 R4 K3 ["UploadController"]
       12 LOADNIL                          R4
       13 JUMPIFNOT                        R1 ; [+17]
       14 GETIMPORT                        R8 K5 [game]
       16 GETTABLEKS                       R7 R8 K6 ["GameId"]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R2
       21 NAMECALL                         R5 R1 K7 ["getUniverseInfo"]
       23 CALL                             R5 3 0
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          REF R4
       28 NAMECALL                         R5 R1 K8 ["getManagedGroups"]
       30 CALL                             R5 2 0
       31 CLOSEUPVALS                      R4
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mount"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["createElement"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R0 K2 ["contextItems"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 1
       11 SETTABLEKS                       R1 R0 K3 ["handle"]
       13 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETTABLEKS                       R2 R0 K0 ["Cancel"]
        3 FASTCALL1                        TYPEOF R2 ; [+2]
        4 GETIMPORT                        R1 K2 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+4]
        9 NAMECALL                         R1 R0 K0 ["Cancel"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["contextItems"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["contextItems"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["store"]
       10 JUMPIFNOT                        R1 ; [+83]
       11 DUPCLOSURE                       R1 K3 [PROTO_6]
       12 GETTABLEKS                       R4 R0 K2 ["store"]
       14 NAMECALL                         R4 R4 K4 ["getState"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R3 R4 K5 ["Sessions"]
       19 GETTABLEKS                       R2 R3 K6 ["sessionQueue"]
       21 MOVE                             R3 R2
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLEKS                       R8 R7 K7 ["session"]
       27 JUMPIFNOT                        R8 ; [+11]
       28 GETTABLEKS                       R10 R8 K8 ["Cancel"]
       30 FASTCALL1                        TYPEOF R10 ; [+2]
       31 GETIMPORT                        R9 K10 [typeof]
       33 CALL                             R9 1 1
       34 JUMPIFNOTEQKS                    R9 K11 ["function"] ; [+4]
       36 NAMECALL                         R9 R8 K8 ["Cancel"]
       38 CALL                             R9 1 0
       39 FORGLOOP                         R3 2 ; [-15]
       41 GETTABLEKS                       R5 R0 K2 ["store"]
       43 NAMECALL                         R5 R5 K4 ["getState"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R4 R5 K12 ["Preview"]
       48 GETTABLEKS                       R3 R4 K13 ["activeQueueItem"]
       50 JUMPIFNOT                        R3 ; [+14]
       51 GETTABLEKS                       R4 R3 K7 ["session"]
       53 JUMPIFNOT                        R4 ; [+11]
       54 GETTABLEKS                       R6 R4 K8 ["Cancel"]
       56 FASTCALL1                        TYPEOF R6 ; [+2]
       57 GETIMPORT                        R5 K10 [typeof]
       59 CALL                             R5 1 1
       60 JUMPIFNOTEQKS                    R5 K11 ["function"] ; [+4]
       62 NAMECALL                         R5 R4 K8 ["Cancel"]
       64 CALL                             R5 1 0
       65 GETTABLEKS                       R6 R0 K2 ["store"]
       67 NAMECALL                         R6 R6 K4 ["getState"]
       69 CALL                             R6 1 1
       70 GETTABLEKS                       R5 R6 K12 ["Preview"]
       72 GETTABLEKS                       R4 R5 K14 ["assetImportSession"]
       74 JUMPIFNOT                        R4 ; [+11]
       75 GETTABLEKS                       R6 R4 K8 ["Cancel"]
       77 FASTCALL1                        TYPEOF R6 ; [+2]
       78 GETIMPORT                        R5 K10 [typeof]
       80 CALL                             R5 1 1
       81 JUMPIFNOTEQKS                    R5 K11 ["function"] ; [+4]
       83 NAMECALL                         R5 R4 K8 ["Cancel"]
       85 CALL                             R5 1 0
       86 GETTABLEKS                       R5 R0 K2 ["store"]
       88 NAMECALL                         R5 R5 K15 ["destruct"]
       90 CALL                             R5 1 0
       91 LOADNIL                          R5
       92 SETTABLEKS                       R5 R0 K2 ["store"]
       94 GETTABLEKS                       R1 R0 K16 ["handle"]
       96 JUMPIFNOT                        R1 ; [+9]
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R1 R2 K17 ["unmount"]
      100 GETTABLEKS                       R2 R0 K16 ["handle"]
      102 CALL                             R1 1 0
      103 LOADNIL                          R1
      104 SETTABLEKS                       R1 R0 K16 ["handle"]
      106 GETTABLEKS                       R1 R0 K18 ["root"]
      108 JUMPIFNOT                        R1 ; [+9]
      109 GETTABLEKS                       R1 R0 K18 ["root"]
      111 LOADNIL                          R3
      112 NAMECALL                         R1 R1 K19 ["render"]
      114 CALL                             R1 2 0
      115 LOADNIL                          R1
      116 SETTABLEKS                       R1 R0 K18 ["root"]
      118 GETTABLEKS                       R1 R0 K20 ["environment"]
      120 JUMPIFEQKS                       R1 K21 ["Production"] ; [+17]
      122 GETIMPORT                        R1 K23 [game]
      124 LOADK                            R3 K24 ["CoreGui"]
      125 NAMECALL                         R1 R1 K25 ["GetService"]
      127 CALL                             R1 2 1
      128 NAMECALL                         R2 R1 K26 ["GetChildren"]
      130 CALL                             R2 1 3
      131 FORGPREP                         R2
      132 NAMECALL                         R7 R6 K27 ["Destroy"]
      134 CALL                             R7 1 0
      135 LOADNIL                          R6
      136 FORGLOOP                         R2 2 ; [-5]
      138 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["root"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["render"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["CoreGui"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K6 [Instance.new]
        8 LOADK                            R4 K7 ["Folder"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R2 R3 K8 ["Parent"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K9 ["createElement"]
       15 GETTABLEKS                       R5 R0 K10 ["story"]
       17 GETTABLEKS                       R6 R0 K11 ["storyProps"]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K9 ["createElement"]
       23 GETUPVAL                         R6 1
       24 DUPTABLE                         R7 K14 [{"ContextItems", "Payload"}]
       25 GETTABLEKS                       R8 R0 K15 ["contextItems"]
       27 NAMECALL                         R8 R8 K16 ["getItemsAsList"]
       29 CALL                             R8 1 1
       30 SETTABLEKS                       R8 R7 K12 ["ContextItems"]
       32 SETTABLEKS                       R4 R7 K13 ["Payload"]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K17 ["createBlockingRoot"]
       38 MOVE                             R7 R3
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R0 K18 ["root"]
       42 JUMPIFNOT                        R1 ; [+4]
       43 MOVE                             R6 R1
       44 MOVE                             R7 R5
       45 CALL                             R6 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K19 ["act"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R5
       53 CALL                             R6 1 0
       54 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["root"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["render"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["CoreGui"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K6 [Instance.new]
        8 LOADK                            R3 K7 ["Folder"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R1 R2 K8 ["Parent"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K9 ["createElement"]
       15 GETUPVAL                         R4 1
       16 DUPTABLE                         R5 K12 [{"ContextItems", "Payload"}]
       17 GETTABLEKS                       R6 R0 K13 ["contextItems"]
       19 NAMECALL                         R6 R6 K14 ["getItemsAsList"]
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K10 ["ContextItems"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K9 ["createElement"]
       27 GETUPVAL                         R7 2
       28 LOADNIL                          R8
       29 NEWTABLE                         R9 0 1
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R10 R11 K9 ["createElement"]
       34 GETTABLEKS                       R11 R0 K15 ["story"]
       36 GETTABLEKS                       R12 R0 K16 ["storyProps"]
       38 CALL                             R10 2 -1
       39 SETLIST                          R9 R10 -1 [1]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K11 ["Payload"]
       44 CALL                             R3 2 1
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R4 R5 K17 ["createBlockingRoot"]
       48 MOVE                             R5 R2
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R0 K18 ["root"]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R4 R5 K19 ["act"]
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R3
       58 CALL                             R4 1 0
       59 RETURN                           R0 0

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["story"]
        2 RETURN                           R0 0

PROTO_13:
        0 SETTABLEKS                       R1 R0 K0 ["storyProps"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["FoundationProvider"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["RoactCompat"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K10 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R7 K11 ["ReactRoblox"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Packages"]
       41 GETTABLEKS                       R7 R8 K12 ["Rodux"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Packages"]
       48 GETTABLEKS                       R8 R9 K13 ["PluginLoader"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Packages"]
       55 GETTABLEKS                       R9 R10 K14 ["TestLoader"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R8 K15 ["isFTF"]
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R12 R0 K6 ["Packages"]
       64 GETTABLEKS                       R11 R12 K16 ["Framework"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R10 K17 ["TestHelpers"]
       69 GETTABLEKS                       R13 R11 K18 ["Instances"]
       71 GETTABLEKS                       R12 R13 K19 ["MockPlugin"]
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R15 R0 K20 ["Src"]
       77 GETTABLEKS                       R14 R15 K21 ["MainPlugin"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R17 R0 K20 ["Src"]
       84 GETTABLEKS                       R16 R17 K22 ["Reducers"]
       86 GETTABLEKS                       R15 R16 K23 ["MainReducer"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R17 R0 K20 ["Src"]
       93 GETTABLEKS                       R16 R17 K24 ["Types"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K5 [require]
       98 GETIMPORT                        R18 K1 [script]
      100 GETTABLEKS                       R17 R18 K25 ["ContextItemCache"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K5 [require]
      105 GETIMPORT                        R19 K1 [script]
      107 GETTABLEKS                       R18 R19 K26 ["TestElement"]
      109 CALL                             R17 1 1
      110 NEWTABLE                         R18 0 0
      112 SETTABLEKS                       R18 R18 K27 ["__index"]
      114 DUPCLOSURE                       R19 K28 [PROTO_0]
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R18
      123 SETTABLEKS                       R19 R18 K29 ["new"]
      125 DUPCLOSURE                       R19 K30 [PROTO_1]
      126 SETGLOBAL                        R19 K31 ["setDefaultCreator"]
      128 DUPCLOSURE                       R19 K32 [PROTO_4]
      129 SETTABLEKS                       R19 R18 K33 ["loadData"]
      131 DUPCLOSURE                       R19 K34 [PROTO_5]
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R13
      134 SETTABLEKS                       R19 R18 K35 ["createMainPlugin"]
      136 DUPCLOSURE                       R19 K36 [PROTO_7]
      137 CAPTURE                          VAL R3
      138 SETTABLEKS                       R19 R18 K37 ["destroy"]
      140 DUPCLOSURE                       R19 K38 [PROTO_9]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R19 R18 K39 ["_createTestElement"]
      146 DUPCLOSURE                       R19 K40 [PROTO_11]
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R5
      151 SETTABLEKS                       R19 R18 K41 ["_createFoundationTestElement"]
      153 DUPCLOSURE                       R19 K42 [PROTO_12]
      154 SETTABLEKS                       R19 R18 K43 ["_setStory"]
      156 DUPCLOSURE                       R19 K44 [PROTO_13]
      157 SETTABLEKS                       R19 R18 K45 ["_setStoryProps"]
      159 RETURN                           R18 1
