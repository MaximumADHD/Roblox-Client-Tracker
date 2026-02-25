PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETTABLEKS                       R2 R1 K1 ["altDataId"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["altDataMap"]
        8 GETTABLE                         R3 R4 R2
        9 JUMPIF                           R3 ; [+1]
       10 LOADNIL                          R3
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["StartRecordingActions"]
       15 GETTABLEKS                       R5 R0 K4 ["requestId"]
       17 CALL                             R4 1 0
       18 MOVE                             R4 R3
       19 JUMPIF                           R4 ; [+11]
       20 DUPTABLE                         R4 K8 [{"request", "assetId", "altAssets"}]
       21 SETTABLEKS                       R0 R4 K5 ["request"]
       23 GETTABLEKS                       R5 R1 K6 ["assetId"]
       25 SETTABLEKS                       R5 R4 K6 ["assetId"]
       27 GETTABLEKS                       R5 R1 K7 ["altAssets"]
       29 SETTABLEKS                       R5 R4 K7 ["altAssets"]
       31 MOVE                             R3 R4
       32 FASTCALL2K                       ASSERT R3 K9 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K9 ["Failed to set default altData in insertAsset"]
       36 GETIMPORT                        R4 K11 [assert]
       38 CALL                             R4 2 0
       39 GETTABLEKS                       R4 R3 K6 ["assetId"]
       41 GETUPVAL                         R5 1
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+33]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R5 R6 K12 ["getChatBulletId"]
       47 GETTABLEKS                       R6 R0 K4 ["requestId"]
       49 GETTABLEKS                       R7 R1 K13 ["chatGroup"]
       51 JUMPIF                           R7 ; [+2]
       52 GETTABLEKS                       R7 R1 K14 ["newInstanceId"]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R7 R8 K15 ["chatBulletMap"]
       58 GETTABLE                         R6 R7 R5
       59 JUMPIFNOT                        R6 ; [+17]
       60 GETIMPORT                        R7 K17 [ipairs]
       62 MOVE                             R8 R6
       63 CALL                             R7 1 3
       64 FORGPREP_INEXT                   R7
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R13 R14 K2 ["altDataMap"]
       68 GETTABLE                         R12 R13 R11
       69 JUMPIFNOT                        R12 ; [+5]
       70 GETTABLEKS                       R13 R12 K6 ["assetId"]
       72 JUMPIFNOT                        R13 ; [+2]
       73 MOVE                             R4 R13
       74 JUMP                             ; [+2]
       75 FORGLOOP                         R7 2 [inext] ; [-11]
       77 LOADNIL                          R5
       78 GETUPVAL                         R6 3
       79 CALL                             R6 0 1
       80 JUMPIFNOT                        R6 ; [+14]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R6 R7 K18 ["loadAssetAsync"]
       84 MOVE                             R7 R4
       85 GETTABLEKS                       R8 R1 K19 ["assetType"]
       87 CALL                             R6 2 1
       88 MOVE                             R5 R6
       89 JUMPIF                           R5 ; [+23]
       90 GETIMPORT                        R6 K21 [error]
       92 LOADK                            R7 K22 ["Failed to load asset"]
       93 CALL                             R6 1 0
       94 JUMP                             ; [+18]
       95 GETUPVAL                         R7 2
       96 GETTABLEKS                       R6 R7 K18 ["loadAssetAsync"]
       98 MOVE                             R7 R4
       99 CALL                             R6 1 1
      100 JUMPIF                           R6 ; [+4]
      101 GETIMPORT                        R7 K21 [error]
      103 LOADK                            R8 K22 ["Failed to load asset"]
      104 CALL                             R7 1 0
      105 FASTCALL2K                       ASSERT R6 K23 ; [+5]
      107 MOVE                             R8 R6
      108 LOADK                            R9 K23 ["Luau"]
      109 GETIMPORT                        R7 K11 [assert]
      111 CALL                             R7 2 0
      112 MOVE                             R5 R6
      113 GETTABLEKS                       R6 R1 K14 ["newInstanceId"]
      115 JUMPIFNOT                        R6 ; [+7]
      116 GETUPVAL                         R7 0
      117 GETTABLEKS                       R6 R7 K24 ["set"]
      119 GETTABLEKS                       R7 R1 K14 ["newInstanceId"]
      121 MOVE                             R8 R5
      122 CALL                             R6 2 0
      123 SETTABLEKS                       R5 R1 K25 ["direct_instance"]
      125 GETUPVAL                         R6 4
      126 GETTABLEKS                       R8 R0 K4 ["requestId"]
      128 LOADK                            R9 K26 ["SetProperty"]
      129 GETTABLEKS                       R10 R0 K0 ["arguments"]
      131 NAMECALL                         R6 R6 K27 ["ExecuteCommandAsync"]
      133 CALL                             R6 4 0
      134 GETUPVAL                         R7 2
      135 GETTABLEKS                       R6 R7 K28 ["getRequestParent"]
      137 MOVE                             R7 R5
      138 GETTABLEKS                       R8 R0 K4 ["requestId"]
      140 CALL                             R6 2 1
      141 SETTABLEKS                       R6 R5 K29 ["Parent"]
      143 GETUPVAL                         R7 0
      144 GETTABLEKS                       R6 R7 K30 ["EndRecordingActions"]
      146 GETTABLEKS                       R7 R0 K4 ["requestId"]
      148 CALL                             R6 1 0
      149 GETUPVAL                         R6 5
      150 GETTABLEKS                       R8 R0 K4 ["requestId"]
      152 MOVE                             R9 R4
      153 NAMECALL                         R6 R6 K31 ["AssetInserted"]
      155 CALL                             R6 3 0
      156 GETUPVAL                         R7 2
      157 GETTABLEKS                       R6 R7 K32 ["modifyChatWithInstanceLink"]
      159 GETTABLEKS                       R7 R0 K4 ["requestId"]
      161 MOVE                             R8 R5
      162 LOADK                            R9 K33 ["added"]
      163 GETTABLEKS                       R10 R1 K13 ["chatGroup"]
      165 JUMPIF                           R10 ; [+2]
      166 GETTABLEKS                       R10 R1 K14 ["newInstanceId"]
      168 MOVE                             R11 R3
      169 CALL                             R6 5 0
      170 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R5 K12 ["Types"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K10 ["Utils"]
       40 GETTABLEKS                       R5 R6 K10 ["Utils"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K13 ["GetService"]
       45 LOADK                            R6 K14 ["StreamingService"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R2 K13 ["GetService"]
       49 LOADK                            R7 K15 ["ConversationalAIAcceptanceService"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Src"]
       55 GETTABLEKS                       R10 R11 K16 ["Flags"]
       57 GETTABLEKS                       R9 R10 K17 ["FFlagConvAIAddCommandSearchInsertAsset"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R7 R8 K18 ["Get"]
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R12 R0 K6 ["Src"]
       66 GETTABLEKS                       R11 R12 K16 ["Flags"]
       68 GETTABLEKS                       R10 R11 K19 ["FFlagConvAIFixOnlyInsertFirstVariation"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R8 R9 K18 ["Get"]
       73 DUPCLOSURE                       R9 K20 [PROTO_0]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 RETURN                           R9 1
