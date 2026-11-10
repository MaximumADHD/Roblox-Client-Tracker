PROTO_0:
        0 LOADK                            R3 K0 ["ShowToast"]
        1 DUPTABLE                         R4 K5 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
        2 NAMECALL                         R1 R0 K6 ["Invoke"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["assetIds"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K0 ["assetIds"]
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R3
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R11 R4
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R14 R1 K2 ["assetTypes"]
       18 GETTABLE                         R13 R14 R8
       19 CALL                             R12 1 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R10 K5 [table.insert]
       23 CALL                             R10 -1 0
       24 FORGLOOP                         R5 2 ; [-11]
       26 LOADK                            R7 K6 ["AssetAccessController"]
       27 NAMECALL                         R5 R0 K7 ["GetPluginComponent"]
       29 CALL                             R5 2 1
       30 JUMPIF                           R5 ; [+6]
       31 LOADK                            R8 K8 ["ShowToast"]
       32 DUPTABLE                         R9 K13 [{["Key"] = "Toast", ["SubKey"] = "AddToExperienceFailed"}]
       33 NAMECALL                         R6 R0 K14 ["Invoke"]
       35 CALL                             R6 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R6 1
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+6]
       40 GETIMPORT                        R6 K16 [game]
       42 GETTABLEKS                       R6 R6 K17 ["GameId"]
       44 JUMPIFNOTEQKN                    R6 K1 [0] ; [+18]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K18 ["Utils"]
       49 GETTABLEKS                       R6 R6 K19 ["grantUniversePermissions"]
       51 MOVE                             R7 R3
       52 MOVE                             R8 R4
       53 MOVE                             R9 R5
       54 CALL                             R6 3 1
       55 LOADK                            R9 K20 ["OnAddToExperienceFinished"]
       56 MOVE                             R10 R1
       57 MOVE                             R11 R6
       58 MOVE                             R12 R2
       59 NAMECALL                         R7 R0 K14 ["Invoke"]
       61 CALL                             R7 5 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R7 3
       64 CALL                             R7 0 1
       65 JUMPIFNOT                        R7 ; [+15]
       66 GETUPVAL                         R6 4
       67 MOVE                             R7 R5
       68 MOVE                             R8 R3
       69 GETIMPORT                        R9 K16 [game]
       71 GETTABLEKS                       R9 R9 K21 ["CreatorType"]
       73 GETIMPORT                        R10 K16 [game]
       75 GETTABLEKS                       R10 R10 K22 ["CreatorId"]
       77 GETTABLEKS                       R11 R1 K23 ["publishStates"]
       79 CALL                             R6 5 1
       80 JUMP                             ; [+14]
       81 GETUPVAL                         R6 5
       82 MOVE                             R7 R5
       83 MOVE                             R8 R3
       84 GETIMPORT                        R9 K16 [game]
       86 GETTABLEKS                       R9 R9 K21 ["CreatorType"]
       88 GETIMPORT                        R10 K16 [game]
       90 GETTABLEKS                       R10 R10 K22 ["CreatorId"]
       92 GETTABLEKS                       R11 R1 K24 ["creators"]
       94 CALL                             R6 5 1
       95 MOVE                             R7 R3
       96 MOVE                             R8 R4
       97 GETIMPORT                        R9 K26 [next]
       99 MOVE                             R10 R6
      100 CALL                             R9 1 1
      101 JUMPIFEQKNIL                     R9 ; [+27]
      103 NEWTABLE                         R7 0 0
      105 NEWTABLE                         R8 0 0
      107 MOVE                             R9 R3
      108 LOADNIL                          R10
      109 LOADNIL                          R11
      110 FORGPREP                         R9
      111 GETTABLE                         R14 R6 R13
      112 JUMPIF                           R14 ; [+14]
      113 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      115 MOVE                             R15 R7
      116 MOVE                             R16 R13
      117 GETIMPORT                        R14 K5 [table.insert]
      119 CALL                             R14 2 0
      120 GETTABLE                         R16 R4 R12
      121 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      123 MOVE                             R15 R8
      124 GETIMPORT                        R14 K5 [table.insert]
      126 CALL                             R14 2 0
      127 FORGLOOP                         R9 2 ; [-17]
      129 LENGTH                           R10 R7
      130 LOADN                            R11 0
      131 JUMPIFNOTLT                      R11 R10 ; [+11]
      133 GETUPVAL                         R9 2
      134 GETTABLEKS                       R9 R9 K18 ["Utils"]
      136 GETTABLEKS                       R9 R9 K19 ["grantUniversePermissions"]
      138 MOVE                             R10 R7
      139 MOVE                             R11 R8
      140 MOVE                             R12 R5
      141 CALL                             R9 3 1
      142 JUMP                             ; [+2]
      143 NEWTABLE                         R9 0 0
      145 MOVE                             R10 R6
      146 LOADNIL                          R11
      147 LOADNIL                          R12
      148 FORGPREP                         R10
      149 LOADB                            R15 1
      150 SETTABLE                         R15 R9 R13
      151 FORGLOOP                         R10 1 ; [-3]
      153 GETUPVAL                         R10 6
      154 LOADK                            R11 K27 ["addToExperience: granted %* of %* asset(s) after the publish gate"]
      155 LENGTH                           R13 R7
      156 LENGTH                           R14 R3
      157 NAMECALL                         R11 R11 K28 ["format"]
      159 CALL                             R11 3 1
      160 CALL                             R10 1 0
      161 LOADK                            R12 K20 ["OnAddToExperienceFinished"]
      162 MOVE                             R13 R1
      163 MOVE                             R14 R9
      164 MOVE                             R15 R2
      165 NAMECALL                         R10 R0 K14 ["Invoke"]
      167 CALL                             R10 5 0
      168 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["AssetInsertFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["convertToEngineAssetTypeEnum"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Asset"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["DEPRECATED_publishDraftAssetsForInsert"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Asset"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["publishInventoryDraftAssetsForInsert"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["logIfDebug"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K16 ["Flags"]
       67 GETTABLEKS                       R8 R8 K17 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K16 ["Flags"]
       76 GETTABLEKS                       R9 R9 K18 ["getFFlagAmrPublishInsertUsesInventoryDraftState"]
       78 CALL                             R8 1 1
       79 DUPCLOSURE                       R9 K19 [PROTO_0]
       80 DUPCLOSURE                       R10 K20 [PROTO_1]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 RETURN                           R10 1
