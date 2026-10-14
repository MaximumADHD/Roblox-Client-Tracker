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
       63 GETUPVAL                         R6 3
       64 MOVE                             R7 R5
       65 MOVE                             R8 R3
       66 GETIMPORT                        R9 K16 [game]
       68 GETTABLEKS                       R9 R9 K21 ["CreatorType"]
       70 GETIMPORT                        R10 K16 [game]
       72 GETTABLEKS                       R10 R10 K22 ["CreatorId"]
       74 GETTABLEKS                       R11 R1 K23 ["creators"]
       76 CALL                             R6 5 1
       77 MOVE                             R7 R3
       78 MOVE                             R8 R4
       79 GETIMPORT                        R9 K25 [next]
       81 MOVE                             R10 R6
       82 CALL                             R9 1 1
       83 JUMPIFEQKNIL                     R9 ; [+27]
       85 NEWTABLE                         R7 0 0
       87 NEWTABLE                         R8 0 0
       89 MOVE                             R9 R3
       90 LOADNIL                          R10
       91 LOADNIL                          R11
       92 FORGPREP                         R9
       93 GETTABLE                         R14 R6 R13
       94 JUMPIF                           R14 ; [+14]
       95 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       97 MOVE                             R15 R7
       98 MOVE                             R16 R13
       99 GETIMPORT                        R14 K5 [table.insert]
      101 CALL                             R14 2 0
      102 GETTABLE                         R16 R4 R12
      103 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      105 MOVE                             R15 R8
      106 GETIMPORT                        R14 K5 [table.insert]
      108 CALL                             R14 2 0
      109 FORGLOOP                         R9 2 ; [-17]
      111 LENGTH                           R10 R7
      112 LOADN                            R11 0
      113 JUMPIFNOTLT                      R11 R10 ; [+11]
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K18 ["Utils"]
      118 GETTABLEKS                       R9 R9 K19 ["grantUniversePermissions"]
      120 MOVE                             R10 R7
      121 MOVE                             R11 R8
      122 MOVE                             R12 R5
      123 CALL                             R9 3 1
      124 JUMP                             ; [+2]
      125 NEWTABLE                         R9 0 0
      127 MOVE                             R10 R6
      128 LOADNIL                          R11
      129 LOADNIL                          R12
      130 FORGPREP                         R10
      131 LOADB                            R15 1
      132 SETTABLE                         R15 R9 R13
      133 FORGLOOP                         R10 1 ; [-3]
      135 GETUPVAL                         R10 4
      136 LOADK                            R11 K26 ["addToExperience: granted %* of %* asset(s) after the publish gate"]
      137 LENGTH                           R13 R7
      138 LENGTH                           R14 R3
      139 NAMECALL                         R11 R11 K27 ["format"]
      141 CALL                             R11 3 1
      142 CALL                             R10 1 0
      143 LOADK                            R12 K20 ["OnAddToExperienceFinished"]
      144 MOVE                             R13 R1
      145 MOVE                             R14 R9
      146 MOVE                             R15 R2
      147 NAMECALL                         R10 R0 K14 ["Invoke"]
      149 CALL                             R10 5 0
      150 RETURN                           R0 0

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
       38 GETTABLEKS                       R5 R5 K13 ["publishDraftAssetsForInsert"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["logIfDebug"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Flags"]
       56 GETTABLEKS                       R7 R7 K16 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_0]
       60 DUPCLOSURE                       R8 K18 [PROTO_1]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 RETURN                           R8 1
