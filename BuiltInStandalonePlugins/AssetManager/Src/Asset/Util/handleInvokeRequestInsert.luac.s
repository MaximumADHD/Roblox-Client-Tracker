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
       46 JUMPIFNOT                        R9 ; [+82]
       47 LOADK                            R11 K13 ["GameId"]
       48 NAMECALL                         R9 R0 K14 ["GetItem"]
       50 CALL                             R9 2 1
       51 JUMPIF                           R9 ; [+4]
       52 GETIMPORT                        R9 K16 [game]
       54 GETTABLEKS                       R9 R9 K13 ["GameId"]
       56 JUMPIFEQKN                       R9 K1 [0] ; [+72]
       58 GETUPVAL                         R11 4
       59 CALL                             R11 0 1
       60 JUMPIFNOT                        R11 ; [+18]
       61 GETUPVAL                         R10 5
       62 LOADK                            R13 K17 ["AssetAccessController"]
       63 NAMECALL                         R11 R0 K18 ["GetPluginComponent"]
       65 CALL                             R11 2 1
       66 MOVE                             R12 R4
       67 GETIMPORT                        R13 K16 [game]
       69 GETTABLEKS                       R13 R13 K19 ["CreatorType"]
       71 GETIMPORT                        R14 K16 [game]
       73 GETTABLEKS                       R14 R14 K20 ["CreatorId"]
       75 GETTABLEKS                       R15 R1 K21 ["InventoryPublishStates"]
       77 CALL                             R10 5 1
       78 JUMP                             ; [+17]
       79 GETUPVAL                         R10 6
       80 LOADK                            R13 K17 ["AssetAccessController"]
       81 NAMECALL                         R11 R0 K18 ["GetPluginComponent"]
       83 CALL                             R11 2 1
       84 MOVE                             R12 R4
       85 GETIMPORT                        R13 K16 [game]
       87 GETTABLEKS                       R13 R13 K19 ["CreatorType"]
       89 GETIMPORT                        R14 K16 [game]
       91 GETTABLEKS                       R14 R14 K20 ["CreatorId"]
       93 GETTABLEKS                       R15 R1 K22 ["Creators"]
       95 CALL                             R10 5 1
       96 GETIMPORT                        R11 K24 [next]
       98 MOVE                             R12 R10
       99 CALL                             R11 1 1
      100 JUMPIFEQKNIL                     R11 ; [+28]
      102 GETUPVAL                         R11 7
      103 MOVE                             R12 R10
      104 MOVE                             R13 R4
      105 MOVE                             R14 R5
      106 MOVE                             R15 R6
      107 MOVE                             R16 R7
      108 MOVE                             R17 R8
      109 CALL                             R11 6 5
      110 MOVE                             R4 R11
      111 MOVE                             R5 R12
      112 MOVE                             R6 R13
      113 MOVE                             R7 R14
      114 MOVE                             R8 R15
      115 GETUPVAL                         R11 8
      116 LOADK                            R12 K25 ["insert: %* of %* asset(s) survived the publish gate"]
      117 LENGTH                           R14 R4
      118 GETTABLEKS                       R16 R1 K0 ["Ids"]
      120 LENGTH                           R15 R16
      121 NAMECALL                         R12 R12 K26 ["format"]
      123 CALL                             R12 3 1
      124 CALL                             R11 1 0
      125 LENGTH                           R11 R4
      126 JUMPIFNOTEQKN                    R11 K1 [0] ; [+2]
      128 RETURN                           R0 0
      129 DUPTABLE                         R9 K32 [{["GameId"], ["PositionMode"], ["SkipCameraMove"] = False, ["StudioComponents"], ["UseAnimationInstance"]}]
      130 LOADK                            R12 K13 ["GameId"]
      131 NAMECALL                         R10 R0 K14 ["GetItem"]
      133 CALL                             R10 2 1
      134 JUMPIF                           R10 ; [+4]
      135 GETIMPORT                        R10 K16 [game]
      137 GETTABLEKS                       R10 R10 K13 ["GameId"]
      139 SETTABLEKS                       R10 R9 K13 ["GameId"]
      141 SETTABLEKS                       R3 R9 K27 ["PositionMode"]
      143 DUPTABLE                         R10 K33 [{"AssetAccessController"}]
      144 LOADK                            R13 K17 ["AssetAccessController"]
      145 NAMECALL                         R11 R0 K18 ["GetPluginComponent"]
      147 CALL                             R11 2 1
      148 SETTABLEKS                       R11 R10 K17 ["AssetAccessController"]
      150 SETTABLEKS                       R10 R9 K30 ["StudioComponents"]
      152 JUMPIFEQKNIL                     R2 ; [+4]
      154 GETTABLEKS                       R10 R2 K31 ["UseAnimationInstance"]
      156 JUMPIF                           R10 ; [+1]
      157 LOADB                            R10 0
      158 SETTABLEKS                       R10 R9 K31 ["UseAnimationInstance"]
      160 GETUPVAL                         R10 2
      161 GETTABLEKS                       R10 R10 K34 ["Utils"]
      163 GETTABLEKS                       R10 R10 K35 ["createInsertAssetsPromise"]
      165 MOVE                             R11 R4
      166 MOVE                             R12 R5
      167 MOVE                             R13 R6
      168 MOVE                             R14 R7
      169 MOVE                             R15 R8
      170 MOVE                             R16 R9
      171 CALL                             R10 6 1
      172 DUPCLOSURE                       R12 K36 [PROTO_0]
      173 CAPTURE                          UPVAL U0
      174 CAPTURE                          UPVAL U1
      175 NAMECALL                         R10 R10 K37 ["andThen"]
      177 CALL                             R10 2 1
      178 DUPCLOSURE                       R12 K38 [PROTO_1]
      179 CAPTURE                          UPVAL U9
      180 NAMECALL                         R10 R10 K39 ["catch"]
      182 CALL                             R10 2 0
      183 RETURN                           R0 0

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
       58 GETTABLEKS                       R7 R7 K15 ["DEPRECATED_publishDraftAssetsForInsert"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Src"]
       65 GETTABLEKS                       R8 R8 K12 ["Asset"]
       67 GETTABLEKS                       R8 R8 K13 ["Util"]
       69 GETTABLEKS                       R8 R8 K16 ["publishInventoryDraftAssetsForInsert"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Src"]
       76 GETTABLEKS                       R9 R9 K13 ["Util"]
       78 GETTABLEKS                       R9 R9 K17 ["logIfDebug"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K8 ["Src"]
       85 GETTABLEKS                       R10 R10 K18 ["Flags"]
       87 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K8 ["Src"]
       94 GETTABLEKS                       R11 R11 K18 ["Flags"]
       96 GETTABLEKS                       R11 R11 K20 ["getFFlagAmrPublishInsertUsesInventoryDraftState"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K8 ["Src"]
      103 GETTABLEKS                       R12 R12 K18 ["Flags"]
      105 GETTABLEKS                       R12 R12 K21 ["getFFlagDebugAmrOutput"]
      107 CALL                             R11 1 1
      108 DUPCLOSURE                       R12 K22 [PROTO_2]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R11
      119 RETURN                           R12 1
