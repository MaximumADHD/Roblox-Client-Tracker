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
       36 GETTABLEKS                       R5 R1 K10 ["VersionNumbers"]
       38 GETTABLEKS                       R6 R1 K6 ["Types"]
       40 GETTABLEKS                       R7 R1 K11 ["Names"]
       42 GETTABLEKS                       R8 R1 K12 ["IsPackage"]
       44 GETUPVAL                         R9 3
       45 CALL                             R9 0 1
       46 JUMPIFNOT                        R9 ; [+61]
       47 LOADK                            R11 K13 ["GameId"]
       48 NAMECALL                         R9 R0 K14 ["GetItem"]
       50 CALL                             R9 2 1
       51 JUMPIF                           R9 ; [+4]
       52 GETIMPORT                        R9 K16 [game]
       54 GETTABLEKS                       R9 R9 K13 ["GameId"]
       56 JUMPIFEQKN                       R9 K1 [0] ; [+51]
       58 GETUPVAL                         R10 4
       59 LOADK                            R13 K17 ["AssetAccessController"]
       60 NAMECALL                         R11 R0 K18 ["GetPluginComponent"]
       62 CALL                             R11 2 1
       63 MOVE                             R12 R4
       64 GETIMPORT                        R13 K16 [game]
       66 GETTABLEKS                       R13 R13 K19 ["CreatorType"]
       68 GETIMPORT                        R14 K16 [game]
       70 GETTABLEKS                       R14 R14 K20 ["CreatorId"]
       72 GETTABLEKS                       R15 R1 K21 ["Creators"]
       74 CALL                             R10 5 1
       75 GETIMPORT                        R11 K23 [next]
       77 MOVE                             R12 R10
       78 CALL                             R11 1 1
       79 JUMPIFEQKNIL                     R11 ; [+28]
       81 GETUPVAL                         R11 5
       82 MOVE                             R12 R10
       83 MOVE                             R13 R4
       84 MOVE                             R14 R5
       85 MOVE                             R15 R6
       86 MOVE                             R16 R7
       87 MOVE                             R17 R8
       88 CALL                             R11 6 5
       89 MOVE                             R4 R11
       90 MOVE                             R5 R12
       91 MOVE                             R6 R13
       92 MOVE                             R7 R14
       93 MOVE                             R8 R15
       94 GETUPVAL                         R11 6
       95 LOADK                            R12 K24 ["insert: %* of %* asset(s) survived the publish gate"]
       96 LENGTH                           R14 R4
       97 GETTABLEKS                       R16 R1 K0 ["Ids"]
       99 LENGTH                           R15 R16
      100 NAMECALL                         R12 R12 K25 ["format"]
      102 CALL                             R12 3 1
      103 CALL                             R11 1 0
      104 LENGTH                           R11 R4
      105 JUMPIFNOTEQKN                    R11 K1 [0] ; [+2]
      107 RETURN                           R0 0
      108 DUPTABLE                         R9 K31 [{["GameId"], ["PositionMode"], ["SkipCameraMove"] = False, ["StudioComponents"], ["UseAnimationInstance"]}]
      109 LOADK                            R12 K13 ["GameId"]
      110 NAMECALL                         R10 R0 K14 ["GetItem"]
      112 CALL                             R10 2 1
      113 JUMPIF                           R10 ; [+4]
      114 GETIMPORT                        R10 K16 [game]
      116 GETTABLEKS                       R10 R10 K13 ["GameId"]
      118 SETTABLEKS                       R10 R9 K13 ["GameId"]
      120 SETTABLEKS                       R3 R9 K26 ["PositionMode"]
      122 DUPTABLE                         R10 K32 [{"AssetAccessController"}]
      123 LOADK                            R13 K17 ["AssetAccessController"]
      124 NAMECALL                         R11 R0 K18 ["GetPluginComponent"]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K17 ["AssetAccessController"]
      129 SETTABLEKS                       R10 R9 K29 ["StudioComponents"]
      131 JUMPIFEQKNIL                     R2 ; [+4]
      133 GETTABLEKS                       R10 R2 K30 ["UseAnimationInstance"]
      135 JUMPIF                           R10 ; [+1]
      136 LOADB                            R10 0
      137 SETTABLEKS                       R10 R9 K30 ["UseAnimationInstance"]
      139 GETUPVAL                         R10 2
      140 GETTABLEKS                       R10 R10 K33 ["Utils"]
      142 GETTABLEKS                       R10 R10 K34 ["createInsertAssetsPromise"]
      144 MOVE                             R11 R4
      145 MOVE                             R12 R5
      146 MOVE                             R13 R6
      147 MOVE                             R14 R7
      148 MOVE                             R15 R8
      149 MOVE                             R16 R9
      150 CALL                             R10 6 1
      151 DUPCLOSURE                       R12 K35 [PROTO_0]
      152 CAPTURE                          UPVAL U0
      153 CAPTURE                          UPVAL U1
      154 NAMECALL                         R10 R10 K36 ["andThen"]
      156 CALL                             R10 2 1
      157 DUPCLOSURE                       R12 K37 [PROTO_1]
      158 CAPTURE                          UPVAL U7
      159 NAMECALL                         R10 R10 K38 ["catch"]
      161 CALL                             R10 2 0
      162 RETURN                           R0 0

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
