PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Success"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["eventEnd"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["BenchmarkingEvent"]
        9 GETTABLEKS                       R2 R2 K3 ["Insert"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Failed to insert assets: %*"]
        6 MOVE                             R4 R0
        7 JUMPIFNOT                        R4 ; [+2]
        8 GETTABLEKS                       R4 R0 K3 ["Errors"]
       10 NAMECALL                         R2 R2 K4 ["format"]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["Ids"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["eventStart"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["BenchmarkingEvent"]
       12 GETTABLEKS                       R4 R4 K4 ["Insert"]
       14 CALL                             R3 1 0
       15 JUMPIFNOT                        R2 ; [+11]
       16 GETTABLEKS                       R4 R2 K5 ["UseAssetPosition"]
       18 JUMPIFNOT                        R4 ; [+8]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K6 ["Types"]
       22 GETTABLEKS                       R3 R3 K7 ["InsertPositionMode"]
       24 GETTABLEKS                       R3 R3 K8 ["AssetPosition"]
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K6 ["Types"]
       30 GETTABLEKS                       R3 R3 K7 ["InsertPositionMode"]
       32 GETTABLEKS                       R3 R3 K9 ["Camera"]
       34 GETTABLEKS                       R4 R1 K0 ["Ids"]
       36 GETTABLEKS                       R5 R1 K6 ["Types"]
       38 GETTABLEKS                       R6 R1 K10 ["Names"]
       40 GETTABLEKS                       R7 R1 K11 ["IsPackage"]
       42 GETUPVAL                         R8 3
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+59]
       45 LOADK                            R10 K12 ["GameId"]
       46 NAMECALL                         R8 R0 K13 ["GetItem"]
       48 CALL                             R8 2 1
       49 JUMPIF                           R8 ; [+4]
       50 GETIMPORT                        R8 K15 [game]
       52 GETTABLEKS                       R8 R8 K12 ["GameId"]
       54 JUMPIFEQKN                       R8 K1 [0] ; [+49]
       56 GETUPVAL                         R9 4
       57 LOADK                            R12 K16 ["AssetAccessController"]
       58 NAMECALL                         R10 R0 K17 ["GetPluginComponent"]
       60 CALL                             R10 2 1
       61 MOVE                             R11 R4
       62 GETIMPORT                        R12 K15 [game]
       64 GETTABLEKS                       R12 R12 K18 ["CreatorType"]
       66 GETIMPORT                        R13 K15 [game]
       68 GETTABLEKS                       R13 R13 K19 ["CreatorId"]
       70 GETTABLEKS                       R14 R1 K20 ["Creators"]
       72 CALL                             R9 5 1
       73 GETIMPORT                        R10 K22 [next]
       75 MOVE                             R11 R9
       76 CALL                             R10 1 1
       77 JUMPIFEQKNIL                     R10 ; [+26]
       79 GETUPVAL                         R10 5
       80 MOVE                             R11 R9
       81 MOVE                             R12 R4
       82 MOVE                             R13 R5
       83 MOVE                             R14 R6
       84 MOVE                             R15 R7
       85 CALL                             R10 5 4
       86 MOVE                             R4 R10
       87 MOVE                             R5 R11
       88 MOVE                             R6 R12
       89 MOVE                             R7 R13
       90 GETUPVAL                         R10 6
       91 LOADK                            R11 K23 ["insert: %* of %* asset(s) survived the publish gate"]
       92 LENGTH                           R13 R4
       93 GETTABLEKS                       R15 R1 K0 ["Ids"]
       95 LENGTH                           R14 R15
       96 NAMECALL                         R11 R11 K24 ["format"]
       98 CALL                             R11 3 1
       99 CALL                             R10 1 0
      100 LENGTH                           R10 R4
      101 JUMPIFNOTEQKN                    R10 K1 [0] ; [+2]
      103 RETURN                           R0 0
      104 DUPTABLE                         R8 K30 [{["GameId"], ["PositionMode"], ["SkipCameraMove"] = False, ["StudioComponents"], ["UseAnimationInstance"]}]
      105 LOADK                            R11 K12 ["GameId"]
      106 NAMECALL                         R9 R0 K13 ["GetItem"]
      108 CALL                             R9 2 1
      109 JUMPIF                           R9 ; [+4]
      110 GETIMPORT                        R9 K15 [game]
      112 GETTABLEKS                       R9 R9 K12 ["GameId"]
      114 SETTABLEKS                       R9 R8 K12 ["GameId"]
      116 SETTABLEKS                       R3 R8 K25 ["PositionMode"]
      118 DUPTABLE                         R9 K31 [{"AssetAccessController"}]
      119 LOADK                            R12 K16 ["AssetAccessController"]
      120 NAMECALL                         R10 R0 K17 ["GetPluginComponent"]
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K16 ["AssetAccessController"]
      125 SETTABLEKS                       R9 R8 K28 ["StudioComponents"]
      127 JUMPIFEQKNIL                     R2 ; [+4]
      129 GETTABLEKS                       R9 R2 K29 ["UseAnimationInstance"]
      131 JUMPIF                           R9 ; [+1]
      132 LOADB                            R9 0
      133 SETTABLEKS                       R9 R8 K29 ["UseAnimationInstance"]
      135 GETUPVAL                         R9 2
      136 GETTABLEKS                       R9 R9 K32 ["Utils"]
      138 GETTABLEKS                       R9 R9 K33 ["createInsertAssetsPromise"]
      140 MOVE                             R10 R4
      141 MOVE                             R11 R5
      142 MOVE                             R12 R6
      143 MOVE                             R13 R7
      144 MOVE                             R14 R8
      145 CALL                             R9 5 1
      146 DUPCLOSURE                       R11 K34 [PROTO_0]
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          UPVAL U1
      149 NAMECALL                         R9 R9 K35 ["andThen"]
      151 CALL                             R9 2 1
      152 DUPCLOSURE                       R11 K36 [PROTO_1]
      153 CAPTURE                          UPVAL U7
      154 NAMECALL                         R9 R9 K37 ["catch"]
      156 CALL                             R9 2 0
      157 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetInsertFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Analytics"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Analytics"]
       36 GETTABLEKS                       R5 R5 K11 ["Benchmarking"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Asset"]
       45 GETTABLEKS                       R6 R6 K13 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["filterAssetInsertData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K12 ["Asset"]
       56 GETTABLEKS                       R7 R7 K13 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["publishDraftAssetsForInsert"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Src"]
       65 GETTABLEKS                       R8 R8 K13 ["Util"]
       67 GETTABLEKS                       R8 R8 K16 ["logIfDebug"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K8 ["Src"]
       74 GETTABLEKS                       R9 R9 K17 ["Flags"]
       76 GETTABLEKS                       R9 R9 K18 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K8 ["Src"]
       83 GETTABLEKS                       R10 R10 K17 ["Flags"]
       85 GETTABLEKS                       R10 R10 K19 ["getFFlagDebugAmrOutput"]
       87 CALL                             R9 1 1
       88 DUPCLOSURE                       R10 K20 [PROTO_2]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R9
       97 RETURN                           R10 1
