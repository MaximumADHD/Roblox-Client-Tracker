PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETTABLEKS                       R2 R0 K3 ["clips"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["clips"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["selection"]
       15 CALL                             R1 1 2
       16 GETTABLEKS                       R4 R0 K5 ["sourceIndexToClipNumbers"]
       18 GETTABLE                         R3 R4 R2
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["defaultFps"]
       22 LOADN                            R5 0
       23 GETTABLEKS                       R6 R0 K3 ["clips"]
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 GETTABLEKS                       R13 R10 K7 ["number"]
       30 FASTCALL2                        MATH_MAX R5 R13 ; [+4]
       32 MOVE                             R12 R5
       33 GETIMPORT                        R11 K10 [math.max]
       35 CALL                             R11 2 1
       36 MOVE                             R5 R11
       37 GETTABLEKS                       R11 R10 K7 ["number"]
       39 JUMPIFNOTEQ                      R11 R3 ; [+3]
       41 GETTABLEKS                       R4 R10 K11 ["fps"]
       43 FORGLOOP                         R6 2 ; [-16]
       45 GETTABLEKS                       R7 R0 K3 ["clips"]
       47 DUPTABLE                         R8 K13 [{"name", "number", "fps"}]
       48 LOADK                            R9 K14 ["Clip %*"]
       49 ADDK                             R11 R5 K15 [1]
       50 NAMECALL                         R9 R9 K16 ["format"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K12 ["name"]
       55 ADDK                             R9 R5 K15 [1]
       56 SETTABLEKS                       R9 R8 K7 ["number"]
       58 SETTABLEKS                       R4 R8 K11 ["fps"]
       60 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       62 GETIMPORT                        R6 K18 [table.insert]
       64 CALL                             R6 2 0
       65 GETIMPORT                        R6 K2 [table.clone]
       67 GETTABLEKS                       R7 R0 K5 ["sourceIndexToClipNumbers"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R0 K5 ["sourceIndexToClipNumbers"]
       72 MOVE                             R8 R1
       73 MOVE                             R6 R2
       74 LOADN                            R7 1
       75 FORNPREP                         R6
       76 GETTABLEKS                       R9 R0 K5 ["sourceIndexToClipNumbers"]
       78 ADDK                             R10 R5 K15 [1]
       79 SETTABLE                         R10 R9 R8
       80 FORNLOOP                         R6
       81 JUMPIFEQKN                       R1 K15 [1] ; [+47]
       83 GETTABLEKS                       R7 R0 K5 ["sourceIndexToClipNumbers"]
       85 SUBK                             R8 R1 K15 [1]
       86 GETTABLE                         R6 R7 R8
       87 GETTABLEKS                       R8 R0 K5 ["sourceIndexToClipNumbers"]
       89 ADDK                             R9 R2 K15 [1]
       90 GETTABLE                         R7 R8 R9
       91 JUMPIFNOTEQ                      R7 R6 ; [+37]
       93 GETTABLEKS                       R8 R0 K3 ["clips"]
       95 DUPTABLE                         R9 K13 [{"name", "number", "fps"}]
       96 LOADK                            R10 K14 ["Clip %*"]
       97 ADDK                             R12 R5 K19 [2]
       98 NAMECALL                         R10 R10 K16 ["format"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K12 ["name"]
      103 ADDK                             R10 R5 K19 [2]
      104 SETTABLEKS                       R10 R9 K7 ["number"]
      106 SETTABLEKS                       R4 R9 K11 ["fps"]
      108 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      110 GETIMPORT                        R7 K18 [table.insert]
      112 CALL                             R7 2 0
      113 ADDK                             R9 R2 K15 [1]
      114 GETTABLEKS                       R10 R0 K20 ["sources"]
      116 LENGTH                           R7 R10
      117 LOADN                            R8 1
      118 FORNPREP                         R7
      119 GETTABLEKS                       R11 R0 K5 ["sourceIndexToClipNumbers"]
      121 GETTABLE                         R10 R11 R9
      122 JUMPIFNOTEQ                      R10 R6 ; [+6]
      124 GETTABLEKS                       R10 R0 K5 ["sourceIndexToClipNumbers"]
      126 ADDK                             R11 R5 K19 [2]
      127 SETTABLE                         R11 R10 R9
      128 FORNLOOP                         R7
      129 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setImporterState"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["importerState"]
        4 GETTABLEKS                       R1 R1 K1 ["selection"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["importerState"]
       10 GETTABLEKS                       R3 R3 K2 ["sourceIndexToClipNumbers"]
       12 GETTABLE                         R2 R3 R0
       13 ADDK                             R5 R0 K3 [1]
       14 MOVE                             R3 R1
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K0 ["importerState"]
       20 GETTABLEKS                       R7 R7 K2 ["sourceIndexToClipNumbers"]
       22 GETTABLE                         R6 R7 R5
       23 JUMPIFEQ                         R6 R2 ; [+3]
       25 LOADNIL                          R6
       26 RETURN                           R6 1
       27 FORNLOOP                         R3
       28 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["importerState"]
        5 GETTABLEKS                       R1 R1 K1 ["clips"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K2 ["number"]
       12 GETTABLEKS                       R7 R5 K3 ["fps"]
       14 SETTABLE                         R7 R0 R6
       15 FORGLOOP                         R1 2 ; [-6]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["importerState"]
       21 GETTABLEKS                       R2 R2 K4 ["selection"]
       23 CALL                             R1 1 2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["importerState"]
       27 GETTABLEKS                       R5 R5 K5 ["sourceIndexToClipNumbers"]
       29 GETTABLE                         R4 R5 R1
       30 GETTABLE                         R3 R0 R4
       31 ADDK                             R6 R1 K6 [1]
       32 MOVE                             R4 R2
       33 LOADN                            R5 1
       34 FORNPREP                         R4
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K0 ["importerState"]
       38 GETTABLEKS                       R9 R9 K5 ["sourceIndexToClipNumbers"]
       40 GETTABLE                         R8 R9 R6
       41 GETTABLE                         R7 R0 R8
       42 JUMPIFEQ                         R7 R3 ; [+3]
       44 LOADNIL                          R7
       45 RETURN                           R7 1
       46 FORNLOOP                         R4
       47 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["importerState"]
        4 GETTABLEKS                       R1 R1 K1 ["selection"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["importerState"]
       10 GETTABLEKS                       R3 R3 K2 ["sources"]
       12 GETTABLE                         R2 R3 R0
       13 GETTABLEKS                       R2 R2 K3 ["filename"]
       15 ADDK                             R5 R0 K4 [1]
       16 MOVE                             R3 R1
       17 LOADN                            R4 1
       18 FORNPREP                         R3
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K0 ["importerState"]
       22 GETTABLEKS                       R7 R7 K2 ["sources"]
       24 GETTABLE                         R6 R7 R5
       25 GETTABLEKS                       R6 R6 K3 ["filename"]
       27 JUMPIFEQ                         R6 R2 ; [+3]
       29 LOADNIL                          R6
       30 RETURN                           R6 1
       31 FORNLOOP                         R3
       32 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETTABLEKS                       R2 R0 K3 ["sourceIndexToClipNumbers"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["sourceIndexToClipNumbers"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["selection"]
       15 CALL                             R1 1 2
       16 MOVE                             R5 R1
       17 MOVE                             R3 R2
       18 LOADN                            R4 1
       19 FORNPREP                         R3
       20 GETTABLEKS                       R6 R0 K3 ["sourceIndexToClipNumbers"]
       22 GETUPVAL                         R7 1
       23 SETTABLE                         R7 R6 R5
       24 FORNLOOP                         R3
       25 RETURN                           R0 1

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["UIBLOX-3576"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["setImporterState"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["importerState"]
        5 GETTABLEKS                       R1 R1 K1 ["clips"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 DUPTABLE                         R8 K4 [{"id", "text"}]
       11 GETTABLEKS                       R9 R5 K5 ["number"]
       13 SETTABLEKS                       R9 R8 K2 ["id"]
       15 GETTABLEKS                       R9 R5 K6 ["name"]
       17 SETTABLEKS                       R9 R8 K3 ["text"]
       19 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       21 MOVE                             R7 R0
       22 GETIMPORT                        R6 K9 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-16]
       27 RETURN                           R0 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETTABLEKS                       R2 R0 K3 ["clips"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["clips"]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R3 R0 K4 ["selection"]
       17 CALL                             R2 1 2
       18 MOVE                             R6 R2
       19 MOVE                             R4 R3
       20 LOADN                            R5 1
       21 FORNPREP                         R4
       22 GETTABLEKS                       R8 R0 K5 ["sourceIndexToClipNumbers"]
       24 GETTABLE                         R7 R8 R6
       25 LOADB                            R8 1
       26 SETTABLE                         R8 R1 R7
       27 FORNLOOP                         R4
       28 GETTABLEKS                       R4 R0 K3 ["clips"]
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETTABLEKS                       R10 R8 K6 ["number"]
       35 GETTABLE                         R9 R1 R10
       36 JUMPIFNOT                        R9 ; [+15]
       37 GETTABLEKS                       R9 R0 K3 ["clips"]
       39 GETIMPORT                        R10 K2 [table.clone]
       41 GETTABLEKS                       R12 R0 K3 ["clips"]
       43 GETTABLE                         R11 R12 R7
       44 CALL                             R10 1 1
       45 SETTABLE                         R10 R9 R7
       46 GETTABLEKS                       R10 R0 K3 ["clips"]
       48 GETTABLE                         R9 R10 R7
       49 GETUPVAL                         R10 1
       50 SETTABLEKS                       R10 R9 K7 ["fps"]
       52 FORGLOOP                         R4 2 ; [-20]
       54 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setImporterState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["importerState"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["importerState"]
        8 GETTABLEKS                       R2 R2 K1 ["sources"]
       10 GETTABLEN                        R1 R2 1
       11 GETTABLEKS                       R1 R1 K2 ["filename"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["uploadVersionedAssetFromContentAsync"]
       16 GETIMPORT                        R3 K6 [buffer.tostring]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 DUPTABLE                         R4 K11 [{"assetName", "targetType", "creatorId", "creatorType"}]
       21 GETIMPORT                        R6 K14 [string.match]
       23 MOVE                             R7 R1
       24 LOADK                            R8 K15 ["^(.+)%..*$"]
       25 CALL                             R6 2 1
       26 OR                               R5 R6 R1
       27 SETTABLEKS                       R5 R4 K7 ["assetName"]
       29 GETIMPORT                        R5 K19 [Enum.AssetType.AnimatedImage]
       31 SETTABLEKS                       R5 R4 K8 ["targetType"]
       33 GETIMPORT                        R6 K21 [game]
       35 GETTABLEKS                       R6 R6 K22 ["CreatorType"]
       37 GETIMPORT                        R7 K24 [Enum.CreatorType.Group]
       39 JUMPIFNOTEQ                      R6 R7 ; [+6]
       41 GETIMPORT                        R5 K21 [game]
       43 GETTABLEKS                       R5 R5 K25 ["CreatorId"]
       45 JUMP                             ; [+4]
       46 GETUPVAL                         R5 3
       47 NAMECALL                         R5 R5 K26 ["GetUserId"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K9 ["creatorId"]
       52 GETIMPORT                        R6 K21 [game]
       54 GETTABLEKS                       R6 R6 K22 ["CreatorType"]
       56 GETIMPORT                        R7 K24 [Enum.CreatorType.Group]
       58 JUMPIFNOTEQ                      R6 R7 ; [+4]
       60 GETIMPORT                        R5 K28 [Enum.AssetCreatorType.Group]
       62 JUMP                             ; [+2]
       63 GETIMPORT                        R5 K30 [Enum.AssetCreatorType.User]
       65 SETTABLEKS                       R5 R4 K10 ["creatorType"]
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETIMPORT                        R0 K2 [pcall]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CALL                             R0 1 2
       20 GETUPVAL                         R2 1
       21 LOADB                            R3 0
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 0
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K0 ["current"]
       27 JUMPIF                           R0 ; [+9]
       28 GETIMPORT                        R2 K4 [warn]
       30 LOADK                            R3 K5 ["Couldn't upload animated image file: %*"]
       31 MOVE                             R5 R1
       32 NAMECALL                         R3 R3 K6 ["format"]
       34 CALL                             R3 2 1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R2 R1 K7 ["type"]
       39 JUMPIFNOTEQKS                    R2 K8 ["error"] ; [+11]
       41 GETIMPORT                        R2 K4 [warn]
       43 LOADK                            R3 K5 ["Couldn't upload animated image file: %*"]
       44 GETTABLEKS                       R5 R1 K9 ["problem"]
       46 NAMECALL                         R3 R3 K6 ["format"]
       48 CALL                             R3 2 1
       49 CALL                             R2 1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R2 6
       52 LOADK                            R4 K10 ["AssetsUploaded"]
       53 GETUPVAL                         R5 7
       54 DUPTABLE                         R7 K14 [{["Source"] = "Import", ["AssetIds"]}]
       55 NEWTABLE                         R8 0 1
       57 GETTABLEKS                       R9 R1 K15 ["assetId"]
       59 SETLIST                          R8 R9 1 [1]
       61 SETTABLEKS                       R8 R7 K13 ["AssetIds"]
       63 NAMECALL                         R5 R5 K16 ["JSONEncode"]
       65 CALL                             R5 2 -1
       66 NAMECALL                         R2 R2 K17 ["Fire"]
       68 CALL                             R2 -1 0
       69 GETUPVAL                         R2 3
       70 GETTABLEKS                       R2 R2 K18 ["close"]
       72 CALL                             R2 0 0
       73 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Contexts"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R2 R2 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["useContext"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["Context"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R4 R0 K4 ["importerState"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K5 ["useEventCallback"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 3
       38 GETTABLEKS                       R8 R0 K4 ["importerState"]
       40 GETTABLEKS                       R8 R8 K7 ["clips"]
       42 GETTABLEKS                       R9 R0 K4 ["importerState"]
       44 GETTABLEKS                       R9 R9 K8 ["selection"]
       46 GETTABLEKS                       R10 R0 K4 ["importerState"]
       48 GETTABLEKS                       R10 R10 K9 ["sourceIndexToClipNumbers"]
       50 SETLIST                          R7 R8 3 [1]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       56 NEWCLOSURE                       R7 P2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U5
       59 NEWTABLE                         R8 0 3
       61 GETTABLEKS                       R9 R0 K4 ["importerState"]
       63 GETTABLEKS                       R9 R9 K7 ["clips"]
       65 GETTABLEKS                       R10 R0 K4 ["importerState"]
       67 GETTABLEKS                       R10 R10 K8 ["selection"]
       69 GETTABLEKS                       R11 R0 K4 ["importerState"]
       71 GETTABLEKS                       R11 R11 K9 ["sourceIndexToClipNumbers"]
       73 SETLIST                          R8 R9 3 [1]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       79 NEWCLOSURE                       R8 P3
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R9 0 2
       84 GETTABLEKS                       R10 R0 K4 ["importerState"]
       86 GETTABLEKS                       R10 R10 K10 ["sources"]
       88 GETTABLEKS                       R11 R0 K4 ["importerState"]
       90 GETTABLEKS                       R11 R11 K8 ["selection"]
       92 SETLIST                          R9 R10 2 [1]
       94 CALL                             R7 2 1
       95 GETUPVAL                         R8 4
       96 GETTABLEKS                       R8 R8 K5 ["useEventCallback"]
       98 NEWCLOSURE                       R9 P4
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U5
      101 CALL                             R8 1 1
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K6 ["useMemo"]
      105 NEWCLOSURE                       R10 P5
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R11 0 1
      109 GETTABLEKS                       R12 R0 K4 ["importerState"]
      111 GETTABLEKS                       R12 R12 K7 ["clips"]
      113 SETLIST                          R11 R12 1 [1]
      115 CALL                             R9 2 1
      116 GETUPVAL                         R10 4
      117 GETTABLEKS                       R10 R10 K5 ["useEventCallback"]
      119 NEWCLOSURE                       R11 P6
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U5
      122 CALL                             R10 1 1
      123 GETUPVAL                         R11 0
      124 GETTABLEKS                       R11 R11 K11 ["useState"]
      126 LOADB                            R12 0
      127 CALL                             R11 1 2
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K12 ["useRef"]
      131 LOADB                            R14 0
      132 CALL                             R13 1 1
      133 GETUPVAL                         R14 4
      134 GETTABLEKS                       R14 R14 K5 ["useEventCallback"]
      136 NEWCLOSURE                       R15 P7
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R12
      139 CAPTURE                          UPVAL U7
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R2
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          UPVAL U9
      144 CAPTURE                          UPVAL U10
      145 CALL                             R14 1 1
      146 GETUPVAL                         R15 4
      147 GETTABLEKS                       R15 R15 K13 ["createNextOrder"]
      149 CALL                             R15 0 1
      150 GETUPVAL                         R16 0
      151 GETTABLEKS                       R16 R16 K14 ["createElement"]
      153 GETUPVAL                         R17 11
      154 GETTABLEKS                       R17 R17 K15 ["View"]
      156 DUPTABLE                         R18 K18 [{["tag"] = "col size-full-full"}]
      157 DUPTABLE                         R19 K30 [{"Preview", "Gap1", "PlaybackControls", "Gap2", "ClipControls", "Gap3", "MetadataDivider", "ClipFPS", "Filename", "Gap4", "BottomButtons"}]
      158 GETUPVAL                         R20 0
      159 GETTABLEKS                       R20 R20 K14 ["createElement"]
      161 GETUPVAL                         R21 12
      162 DUPTABLE                         R22 K33 [{"layoutOrder", "playback"}]
      163 MOVE                             R23 R15
      164 CALL                             R23 0 1
      165 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      167 SETTABLEKS                       R3 R22 K32 ["playback"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K19 ["Preview"]
      172 GETUPVAL                         R20 0
      173 GETTABLEKS                       R20 R20 K14 ["createElement"]
      175 GETUPVAL                         R21 11
      176 GETTABLEKS                       R21 R21 K15 ["View"]
      178 DUPTABLE                         R22 K36 [{["tag"] = "size-0-200", ["LayoutOrder"]}]
      179 MOVE                             R23 R15
      180 CALL                             R23 0 1
      181 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K20 ["Gap1"]
      186 GETUPVAL                         R20 0
      187 GETTABLEKS                       R20 R20 K14 ["createElement"]
      189 GETUPVAL                         R21 13
      190 DUPTABLE                         R22 K37 [{"playback", "layoutOrder"}]
      191 SETTABLEKS                       R3 R22 K32 ["playback"]
      193 MOVE                             R23 R15
      194 CALL                             R23 0 1
      195 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      197 CALL                             R20 2 1
      198 SETTABLEKS                       R20 R19 K21 ["PlaybackControls"]
      200 GETUPVAL                         R20 0
      201 GETTABLEKS                       R20 R20 K14 ["createElement"]
      203 GETUPVAL                         R21 11
      204 GETTABLEKS                       R21 R21 K15 ["View"]
      206 DUPTABLE                         R22 K36 [{["tag"] = "size-0-200", ["LayoutOrder"]}]
      207 MOVE                             R23 R15
      208 CALL                             R23 0 1
      209 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      211 CALL                             R20 2 1
      212 SETTABLEKS                       R20 R19 K22 ["Gap2"]
      214 GETUPVAL                         R20 0
      215 GETTABLEKS                       R20 R20 K14 ["createElement"]
      217 GETUPVAL                         R21 11
      218 GETTABLEKS                       R21 R21 K15 ["View"]
      220 DUPTABLE                         R22 K39 [{["tag"] = "row size-full-800 gap-small", ["LayoutOrder"]}]
      221 MOVE                             R23 R15
      222 CALL                             R23 0 1
      223 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      225 DUPTABLE                         R23 K42 [{"ClipSelector", "NewClipButton"}]
      226 GETUPVAL                         R24 0
      227 GETTABLEKS                       R24 R24 K14 ["createElement"]
      229 GETUPVAL                         R25 11
      230 GETTABLEKS                       R25 R25 K15 ["View"]
      232 DUPTABLE                         R26 K44 [{["tag"] = "size-0-full fill", ["LayoutOrder"]}]
      233 MOVE                             R27 R15
      234 CALL                             R27 0 1
      235 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      237 GETUPVAL                         R27 0
      238 GETTABLEKS                       R27 R27 K14 ["createElement"]
      240 GETUPVAL                         R28 11
      241 GETTABLEKS                       R28 R28 K45 ["Dropdown"]
      243 GETTABLEKS                       R28 R28 K46 ["Root"]
      245 DUPTABLE                         R29 K57 [{["label"] = "", ["testId"] = "ClipSelector", ["value"], ["placeholder"] = "Multiple", ["width"], ["size"], ["onItemChanged"], ["items"]}]
      246 SETTABLEKS                       R5 R29 K50 ["value"]
      248 GETIMPORT                        R30 K60 [UDim.new]
      250 LOADN                            R31 1
      251 LOADN                            R32 0
      252 CALL                             R30 2 1
      253 SETTABLEKS                       R30 R29 K53 ["width"]
      255 GETUPVAL                         R30 11
      256 GETTABLEKS                       R30 R30 K61 ["Enums"]
      258 GETTABLEKS                       R30 R30 K62 ["InputSize"]
      260 GETTABLEKS                       R30 R30 K63 ["Small"]
      262 SETTABLEKS                       R30 R29 K54 ["size"]
      264 SETTABLEKS                       R8 R29 K55 ["onItemChanged"]
      266 SETTABLEKS                       R9 R29 K56 ["items"]
      268 CALL                             R27 2 -1
      269 CALL                             R24 -1 1
      270 SETTABLEKS                       R24 R23 K40 ["ClipSelector"]
      272 GETUPVAL                         R24 0
      273 GETTABLEKS                       R24 R24 K14 ["createElement"]
      275 GETUPVAL                         R25 11
      276 GETTABLEKS                       R25 R25 K64 ["Button"]
      278 DUPTABLE                         R26 K70 [{"text", "icon", "variant", "size", "fillBehavior", "onActivated", "LayoutOrder"}]
      279 LOADK                            R29 K71 ["Importer"]
      280 LOADK                            R30 K72 ["NewClip"]
      281 NAMECALL                         R27 R1 K73 ["getText"]
      283 CALL                             R27 3 1
      284 SETTABLEKS                       R27 R26 K65 ["text"]
      286 GETUPVAL                         R27 11
      287 GETTABLEKS                       R27 R27 K61 ["Enums"]
      289 GETTABLEKS                       R27 R27 K74 ["IconName"]
      291 GETTABLEKS                       R27 R27 K75 ["PlusLarge"]
      293 SETTABLEKS                       R27 R26 K66 ["icon"]
      295 GETUPVAL                         R27 11
      296 GETTABLEKS                       R27 R27 K61 ["Enums"]
      298 GETTABLEKS                       R27 R27 K76 ["ButtonVariant"]
      300 GETTABLEKS                       R27 R27 K77 ["Standard"]
      302 SETTABLEKS                       R27 R26 K67 ["variant"]
      304 GETUPVAL                         R27 11
      305 GETTABLEKS                       R27 R27 K61 ["Enums"]
      307 GETTABLEKS                       R27 R27 K62 ["InputSize"]
      309 GETTABLEKS                       R27 R27 K63 ["Small"]
      311 SETTABLEKS                       R27 R26 K54 ["size"]
      313 GETUPVAL                         R27 11
      314 GETTABLEKS                       R27 R27 K61 ["Enums"]
      316 GETTABLEKS                       R27 R27 K78 ["FillBehavior"]
      318 GETTABLEKS                       R27 R27 K79 ["Fit"]
      320 SETTABLEKS                       R27 R26 K68 ["fillBehavior"]
      322 SETTABLEKS                       R4 R26 K69 ["onActivated"]
      324 MOVE                             R27 R15
      325 CALL                             R27 0 1
      326 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      328 CALL                             R24 2 1
      329 SETTABLEKS                       R24 R23 K41 ["NewClipButton"]
      331 CALL                             R20 3 1
      332 SETTABLEKS                       R20 R19 K23 ["ClipControls"]
      334 GETUPVAL                         R20 0
      335 GETTABLEKS                       R20 R20 K14 ["createElement"]
      337 GETUPVAL                         R21 11
      338 GETTABLEKS                       R21 R21 K15 ["View"]
      340 DUPTABLE                         R22 K81 [{["tag"] = "size-0-400", ["LayoutOrder"]}]
      341 MOVE                             R23 R15
      342 CALL                             R23 0 1
      343 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      345 CALL                             R20 2 1
      346 SETTABLEKS                       R20 R19 K24 ["Gap3"]
      348 GETUPVAL                         R20 0
      349 GETTABLEKS                       R20 R20 K14 ["createElement"]
      351 GETUPVAL                         R21 11
      352 GETTABLEKS                       R21 R21 K82 ["Divider"]
      354 DUPTABLE                         R22 K84 [{"orientation", "LayoutOrder"}]
      355 GETUPVAL                         R23 11
      356 GETTABLEKS                       R23 R23 K61 ["Enums"]
      358 GETTABLEKS                       R23 R23 K85 ["Orientation"]
      360 GETTABLEKS                       R23 R23 K86 ["Horizontal"]
      362 SETTABLEKS                       R23 R22 K83 ["orientation"]
      364 MOVE                             R23 R15
      365 CALL                             R23 0 1
      366 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      368 CALL                             R20 2 1
      369 SETTABLEKS                       R20 R19 K25 ["MetadataDivider"]
      371 GETUPVAL                         R20 0
      372 GETTABLEKS                       R20 R20 K14 ["createElement"]
      374 GETUPVAL                         R21 14
      375 DUPTABLE                         R22 K92 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["suffix"] = "FPS", ["minimum"] = 1}]
      376 LOADK                            R25 K71 ["Importer"]
      377 LOADK                            R26 K26 ["ClipFPS"]
      378 NAMECALL                         R23 R1 K73 ["getText"]
      380 CALL                             R23 3 1
      381 SETTABLEKS                       R23 R22 K65 ["text"]
      383 MOVE                             R23 R15
      384 CALL                             R23 0 1
      385 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      387 SETTABLEKS                       R10 R22 K87 ["onChanged"]
      389 SETTABLEKS                       R6 R22 K50 ["value"]
      391 CALL                             R20 2 1
      392 SETTABLEKS                       R20 R19 K26 ["ClipFPS"]
      394 GETUPVAL                         R20 0
      395 GETTABLEKS                       R20 R20 K14 ["createElement"]
      397 GETUPVAL                         R21 15
      398 DUPTABLE                         R22 K93 [{"text", "layoutOrder"}]
      399 LOADK                            R25 K71 ["Importer"]
      400 LOADK                            R26 K27 ["Filename"]
      401 NAMECALL                         R23 R1 K73 ["getText"]
      403 CALL                             R23 3 1
      404 SETTABLEKS                       R23 R22 K65 ["text"]
      406 MOVE                             R23 R15
      407 CALL                             R23 0 1
      408 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      410 DUPTABLE                         R23 K95 [{"Label"}]
      411 GETUPVAL                         R24 0
      412 GETTABLEKS                       R24 R24 K14 ["createElement"]
      414 GETUPVAL                         R25 11
      415 GETTABLEKS                       R25 R25 K96 ["Text"]
      417 DUPTABLE                         R26 K98 [{["Text"], ["testId"] = "Filename", ["tag"] = "text-body-small auto-xy"}]
      418 MOVE                             R27 R7
      419 JUMPIF                           R27 ; [+5]
      420 LOADK                            R29 K99 ["Common"]
      421 LOADK                            R30 K52 ["Multiple"]
      422 NAMECALL                         R27 R1 K73 ["getText"]
      424 CALL                             R27 3 1
      425 SETTABLEKS                       R27 R26 K96 ["Text"]
      427 CALL                             R24 2 1
      428 SETTABLEKS                       R24 R23 K94 ["Label"]
      430 CALL                             R20 3 1
      431 SETTABLEKS                       R20 R19 K27 ["Filename"]
      433 GETUPVAL                         R20 0
      434 GETTABLEKS                       R20 R20 K14 ["createElement"]
      436 GETUPVAL                         R21 11
      437 GETTABLEKS                       R21 R21 K15 ["View"]
      439 DUPTABLE                         R22 K101 [{["tag"] = "fill", ["LayoutOrder"]}]
      440 MOVE                             R23 R15
      441 CALL                             R23 0 1
      442 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K28 ["Gap4"]
      447 GETUPVAL                         R20 0
      448 GETTABLEKS                       R20 R20 K14 ["createElement"]
      450 GETUPVAL                         R21 11
      451 GETTABLEKS                       R21 R21 K15 ["View"]
      453 DUPTABLE                         R22 K103 [{["tag"] = "row gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      454 MOVE                             R23 R15
      455 CALL                             R23 0 1
      456 SETTABLEKS                       R23 R22 K35 ["LayoutOrder"]
      458 DUPTABLE                         R23 K106 [{"Create", "Cancel"}]
      459 GETUPVAL                         R24 0
      460 GETTABLEKS                       R24 R24 K14 ["createElement"]
      462 GETUPVAL                         R25 11
      463 GETTABLEKS                       R25 R25 K64 ["Button"]
      465 DUPTABLE                         R26 K108 [{"text", "variant", "onActivated", "size", "fillBehavior", "isDisabled", "LayoutOrder"}]
      466 LOADK                            R29 K99 ["Common"]
      467 LOADK                            R30 K104 ["Create"]
      468 NAMECALL                         R27 R1 K73 ["getText"]
      470 CALL                             R27 3 1
      471 SETTABLEKS                       R27 R26 K65 ["text"]
      473 GETUPVAL                         R27 11
      474 GETTABLEKS                       R27 R27 K61 ["Enums"]
      476 GETTABLEKS                       R27 R27 K76 ["ButtonVariant"]
      478 GETTABLEKS                       R27 R27 K109 ["Emphasis"]
      480 SETTABLEKS                       R27 R26 K67 ["variant"]
      482 SETTABLEKS                       R14 R26 K69 ["onActivated"]
      484 GETUPVAL                         R27 11
      485 GETTABLEKS                       R27 R27 K61 ["Enums"]
      487 GETTABLEKS                       R27 R27 K110 ["ButtonSize"]
      489 GETTABLEKS                       R27 R27 K63 ["Small"]
      491 SETTABLEKS                       R27 R26 K54 ["size"]
      493 GETUPVAL                         R27 11
      494 GETTABLEKS                       R27 R27 K61 ["Enums"]
      496 GETTABLEKS                       R27 R27 K78 ["FillBehavior"]
      498 GETTABLEKS                       R27 R27 K111 ["Fill"]
      500 SETTABLEKS                       R27 R26 K68 ["fillBehavior"]
      502 SETTABLEKS                       R11 R26 K107 ["isDisabled"]
      504 MOVE                             R27 R15
      505 CALL                             R27 0 1
      506 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      508 CALL                             R24 2 1
      509 SETTABLEKS                       R24 R23 K104 ["Create"]
      511 GETUPVAL                         R24 0
      512 GETTABLEKS                       R24 R24 K14 ["createElement"]
      514 GETUPVAL                         R25 11
      515 GETTABLEKS                       R25 R25 K64 ["Button"]
      517 DUPTABLE                         R26 K112 [{"text", "variant", "onActivated", "size", "fillBehavior", "LayoutOrder"}]
      518 LOADK                            R29 K99 ["Common"]
      519 LOADK                            R30 K105 ["Cancel"]
      520 NAMECALL                         R27 R1 K73 ["getText"]
      522 CALL                             R27 3 1
      523 SETTABLEKS                       R27 R26 K65 ["text"]
      525 GETUPVAL                         R27 11
      526 GETTABLEKS                       R27 R27 K61 ["Enums"]
      528 GETTABLEKS                       R27 R27 K76 ["ButtonVariant"]
      530 GETTABLEKS                       R27 R27 K77 ["Standard"]
      532 SETTABLEKS                       R27 R26 K67 ["variant"]
      534 GETTABLEKS                       R27 R0 K113 ["close"]
      536 SETTABLEKS                       R27 R26 K69 ["onActivated"]
      538 GETUPVAL                         R27 11
      539 GETTABLEKS                       R27 R27 K61 ["Enums"]
      541 GETTABLEKS                       R27 R27 K110 ["ButtonSize"]
      543 GETTABLEKS                       R27 R27 K63 ["Small"]
      545 SETTABLEKS                       R27 R26 K54 ["size"]
      547 GETUPVAL                         R27 11
      548 GETTABLEKS                       R27 R27 K61 ["Enums"]
      550 GETTABLEKS                       R27 R27 K78 ["FillBehavior"]
      552 GETTABLEKS                       R27 R27 K111 ["Fill"]
      554 SETTABLEKS                       R27 R26 K68 ["fillBehavior"]
      556 MOVE                             R27 R15
      557 CALL                             R27 0 1
      558 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      560 CALL                             R24 2 1
      561 SETTABLEKS                       R24 R23 K105 ["Cancel"]
      563 CALL                             R20 3 1
      564 SETTABLEKS                       R20 R19 K29 ["BottomButtons"]
      566 CALL                             R16 3 -1
      567 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AnimatedImageImporter"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Constants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Packages"]
       36 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R3 K12 ["Src"]
       43 GETTABLEKS                       R7 R7 K16 ["Components"]
       45 GETTABLEKS                       R7 R7 K17 ["ImportContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R3 K12 ["Src"]
       52 GETTABLEKS                       R8 R8 K16 ["Components"]
       54 GETTABLEKS                       R8 R8 K18 ["MetadataNumberInput"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K11 [require]
       59 GETTABLEKS                       R9 R3 K12 ["Src"]
       61 GETTABLEKS                       R9 R9 K16 ["Components"]
       63 GETTABLEKS                       R9 R9 K19 ["MetadataRow"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K11 [require]
       68 GETTABLEKS                       R10 R3 K12 ["Src"]
       70 GETTABLEKS                       R10 R10 K16 ["Components"]
       72 GETTABLEKS                       R10 R10 K20 ["Importer"]
       74 GETTABLEKS                       R10 R10 K21 ["PlaybackControls"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K11 [require]
       79 GETTABLEKS                       R11 R3 K12 ["Src"]
       81 GETTABLEKS                       R11 R11 K16 ["Components"]
       83 GETTABLEKS                       R11 R11 K20 ["Importer"]
       85 GETTABLEKS                       R11 R11 K22 ["Preview"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K11 [require]
       90 GETTABLEKS                       R12 R3 K14 ["Packages"]
       92 GETTABLEKS                       R12 R12 K23 ["React"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K11 [require]
       97 GETTABLEKS                       R13 R3 K14 ["Packages"]
       99 GETTABLEKS                       R13 R13 K24 ["ReactUtils"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K11 [require]
      104 GETTABLEKS                       R14 R3 K14 ["Packages"]
      106 GETTABLEKS                       R14 R14 K25 ["StudioFoundation"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K11 [require]
      111 GETTABLEKS                       R15 R3 K12 ["Src"]
      113 GETTABLEKS                       R15 R15 K26 ["Types"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K11 [require]
      118 GETTABLEKS                       R16 R3 K12 ["Src"]
      120 GETTABLEKS                       R16 R16 K16 ["Components"]
      122 GETTABLEKS                       R16 R16 K20 ["Importer"]
      124 GETTABLEKS                       R16 R16 K27 ["createAsepriteBufferFromImporterStateAsync"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K11 [require]
      129 GETTABLEKS                       R17 R3 K12 ["Src"]
      131 GETTABLEKS                       R17 R17 K28 ["Libraries"]
      133 GETTABLEKS                       R17 R17 K29 ["minMax"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K11 [require]
      138 GETTABLEKS                       R18 R3 K12 ["Src"]
      140 GETTABLEKS                       R18 R18 K16 ["Components"]
      142 GETTABLEKS                       R18 R18 K20 ["Importer"]
      144 GETTABLEKS                       R18 R18 K30 ["usePlayback"]
      146 CALL                             R17 1 1
      147 DUPCLOSURE                       R18 K31 [PROTO_12]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R8
      164 RETURN                           R18 1
