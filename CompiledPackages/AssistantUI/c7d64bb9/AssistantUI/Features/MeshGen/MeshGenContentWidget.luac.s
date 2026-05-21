PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K9 [{"Header", "Content"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "LayoutOrder", "testId"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R9 R9 K13 ["MeshGen"]
       46 GETTABLEKS                       R9 R9 K14 ["Expand"]
       48 SETTABLEKS                       R9 R8 K11 ["testId"]
       50 GETTABLEKS                       R9 R0 K15 ["headerChildren"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K7 ["Header"]
       55 GETTABLEKS                       R6 R0 K16 ["children"]
       57 JUMPIFNOT                        R6 ; [+15]
       58 GETUPVAL                         R6 1
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K8 ["Content"]
       62 DUPTABLE                         R8 K18 [{"tag", "LayoutOrder"}]
       63 LOADK                            R9 K19 ["col size-0-0 fill auto-y gap-small"]
       64 SETTABLEKS                       R9 R8 K17 ["tag"]
       66 MOVE                             R9 R1
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       70 GETTABLEKS                       R9 R0 K16 ["children"]
       72 CALL                             R6 3 1
       73 SETTABLEKS                       R6 R5 K8 ["Content"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Preparing", "FailedToGenerate", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["MeshGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["MeshGen"]
       11 LOADK                            R4 K1 ["FailedToGenerate"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["FailedToGenerate"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["MeshGen"]
       19 LOADK                            R4 K2 ["ToolRejected"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["ToolRejected"]
       25 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FailedToGenerate"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["toolResult"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["ToolRejected"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["Preparing"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K3 ["isError"]
       15 LOADB                            R3 0
       16 GETTABLEKS                       R4 R0 K4 ["toolResult"]
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 NOT                              R3 R2
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 GETUPVAL                         R5 2
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 3
       28 GETUPVAL                         R7 4
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R8 R8 K5 ["assign"]
       32 DUPTABLE                         R9 K8 [{"canToggle", "headerChildren"}]
       33 LOADB                            R10 0
       34 SETTABLEKS                       R10 R9 K6 ["canToggle"]
       36 DUPTABLE                         R10 K10 [{"Text"}]
       37 GETUPVAL                         R11 3
       38 GETUPVAL                         R12 6
       39 DUPTABLE                         R13 K13 [{"tag", "Text", "LayoutOrder"}]
       40 LOADK                            R14 K14 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       41 SETTABLEKS                       R14 R13 K11 ["tag"]
       43 JUMPIFNOT                        R2 ; [+3]
       44 GETTABLEKS                       R14 R1 K15 ["FailedToGenerate"]
       46 JUMP                             ; [+8]
       47 GETTABLEKS                       R15 R0 K4 ["toolResult"]
       49 JUMPIFNOT                        R15 ; [+3]
       50 GETTABLEKS                       R14 R1 K16 ["ToolRejected"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R14 R1 K17 ["Preparing"]
       55 SETTABLEKS                       R14 R13 K9 ["Text"]
       57 MOVE                             R14 R5
       58 CALL                             R14 0 1
       59 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       61 DUPTABLE                         R14 K19 [{"Shimmer"}]
       62 MOVE                             R15 R3
       63 JUMPIFNOT                        R15 ; [+3]
       64 GETUPVAL                         R15 3
       65 GETUPVAL                         R16 7
       66 CALL                             R15 1 1
       67 SETTABLEKS                       R15 R14 K18 ["Shimmer"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K9 ["Text"]
       72 SETTABLEKS                       R10 R9 K7 ["headerChildren"]
       74 MOVE                             R10 R0
       75 CALL                             R8 2 -1
       76 CALL                             R6 -1 -1
       77 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["retryGeneration"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["generationRetryCount"]
        4 LOADK                            R4 K0 ["generationRetryCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 GETTABLEKS                       R9 R0 K3 ["retryGeneration"]
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 CALL                             R6 0 1
       26 JUMPIFLT                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 RETURN                           R6 2

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["publishAssets"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["publishAttemptCount"]
        4 LOADK                            R4 K0 ["publishAttemptCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 GETTABLEKS                       R9 R0 K3 ["publishAssets"]
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 CALL                             R6 0 1
       26 JUMPIFLT                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 RETURN                           R6 2

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGeneration"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssets"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R2 K2 ["openUrl"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        5 GETTABLEKS                       R1 R1 K1 ["GeneratingMesh"]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["MeshGen"]
        9 LOADK                            R5 K1 ["GeneratingMesh"]
       10 NAMECALL                         R2 R2 K3 ["getText"]
       12 CALL                             R2 3 1
       13 SETTABLE                         R2 R0 R1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       17 GETTABLEKS                       R1 R1 K4 ["GeneratingTexture"]
       19 GETUPVAL                         R2 1
       20 LOADK                            R4 K2 ["MeshGen"]
       21 LOADK                            R5 K4 ["GeneratingTexture"]
       22 NAMECALL                         R2 R2 K3 ["getText"]
       24 CALL                             R2 3 1
       25 SETTABLE                         R2 R0 R1
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       29 GETTABLEKS                       R1 R1 K5 ["GenerationFailed"]
       31 NEWTABLE                         R2 2 0
       33 LOADB                            R3 0
       34 GETUPVAL                         R4 1
       35 LOADK                            R6 K2 ["MeshGen"]
       36 LOADK                            R7 K6 ["MeshGenerationFailed"]
       37 NAMECALL                         R4 R4 K3 ["getText"]
       39 CALL                             R4 3 1
       40 SETTABLE                         R4 R2 R3
       41 LOADB                            R3 1
       42 GETUPVAL                         R4 1
       43 LOADK                            R6 K2 ["MeshGen"]
       44 LOADK                            R7 K7 ["TextureGenerationFailed"]
       45 NAMECALL                         R4 R4 K3 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLE                         R4 R2 R3
       49 SETTABLE                         R2 R0 R1
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       53 GETTABLEKS                       R1 R1 K8 ["Generated"]
       55 GETUPVAL                         R2 1
       56 LOADK                            R4 K2 ["MeshGen"]
       57 LOADK                            R5 K8 ["Generated"]
       58 NAMECALL                         R2 R2 K3 ["getText"]
       60 CALL                             R2 3 1
       61 SETTABLE                         R2 R0 R1
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       65 GETTABLEKS                       R1 R1 K9 ["Publishing"]
       67 GETUPVAL                         R2 1
       68 LOADK                            R4 K2 ["MeshGen"]
       69 LOADK                            R5 K9 ["Publishing"]
       70 NAMECALL                         R2 R2 K3 ["getText"]
       72 CALL                             R2 3 1
       73 SETTABLE                         R2 R0 R1
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       77 GETTABLEKS                       R1 R1 K10 ["PublishFailed"]
       79 GETUPVAL                         R2 1
       80 LOADK                            R4 K2 ["MeshGen"]
       81 LOADK                            R5 K10 ["PublishFailed"]
       82 NAMECALL                         R2 R2 K3 ["getText"]
       84 CALL                             R2 3 1
       85 SETTABLE                         R2 R0 R1
       86 GETUPVAL                         R1 0
       87 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       89 GETTABLEKS                       R1 R1 K11 ["Published"]
       91 GETUPVAL                         R2 1
       92 LOADK                            R4 K2 ["MeshGen"]
       93 LOADK                            R5 K11 ["Published"]
       94 NAMECALL                         R2 R2 K3 ["getText"]
       96 CALL                             R2 3 1
       97 SETTABLE                         R2 R0 R1
       98 GETUPVAL                         R1 0
       99 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
      101 GETTABLEKS                       R1 R1 K12 ["Inserting"]
      103 GETUPVAL                         R2 1
      104 LOADK                            R4 K2 ["MeshGen"]
      105 LOADK                            R5 K12 ["Inserting"]
      106 NAMECALL                         R2 R2 K3 ["getText"]
      108 CALL                             R2 3 1
      109 SETTABLE                         R2 R0 R1
      110 GETUPVAL                         R1 0
      111 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
      113 GETTABLEKS                       R1 R1 K13 ["InsertFailed"]
      115 GETUPVAL                         R2 1
      116 LOADK                            R4 K2 ["MeshGen"]
      117 LOADK                            R5 K13 ["InsertFailed"]
      118 NAMECALL                         R2 R2 K3 ["getText"]
      120 CALL                             R2 3 1
      121 SETTABLE                         R2 R0 R1
      122 NEWTABLE                         R1 8 0
      124 GETUPVAL                         R2 0
      125 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      127 GETTABLEKS                       R2 R2 K5 ["GenerationFailed"]
      129 GETUPVAL                         R3 1
      130 LOADK                            R5 K2 ["MeshGen"]
      131 LOADK                            R6 K5 ["GenerationFailed"]
      132 NAMECALL                         R3 R3 K3 ["getText"]
      134 CALL                             R3 3 1
      135 SETTABLE                         R3 R1 R2
      136 GETUPVAL                         R2 0
      137 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      139 GETTABLEKS                       R2 R2 K15 ["GenerationModerated"]
      141 GETUPVAL                         R3 1
      142 LOADK                            R5 K2 ["MeshGen"]
      143 LOADK                            R6 K15 ["GenerationModerated"]
      144 DUPTABLE                         R7 K17 [{"link"}]
      145 GETUPVAL                         R8 2
      146 CALL                             R8 0 1
      147 SETTABLEKS                       R8 R7 K16 ["link"]
      149 NAMECALL                         R3 R3 K3 ["getText"]
      151 CALL                             R3 4 1
      152 SETTABLE                         R3 R1 R2
      153 GETUPVAL                         R2 0
      154 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      156 GETTABLEKS                       R2 R2 K18 ["GenerationCanceled"]
      158 GETUPVAL                         R3 1
      159 LOADK                            R5 K2 ["MeshGen"]
      160 LOADK                            R6 K18 ["GenerationCanceled"]
      161 NAMECALL                         R3 R3 K3 ["getText"]
      163 CALL                             R3 3 1
      164 SETTABLE                         R3 R1 R2
      165 GETUPVAL                         R2 0
      166 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      168 GETTABLEKS                       R2 R2 K10 ["PublishFailed"]
      170 GETUPVAL                         R3 1
      171 LOADK                            R5 K2 ["MeshGen"]
      172 LOADK                            R6 K10 ["PublishFailed"]
      173 NAMECALL                         R3 R3 K3 ["getText"]
      175 CALL                             R3 3 1
      176 SETTABLE                         R3 R1 R2
      177 GETUPVAL                         R2 0
      178 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      180 GETTABLEKS                       R2 R2 K19 ["AssetPermissionCreationFailed"]
      182 GETUPVAL                         R3 1
      183 LOADK                            R5 K2 ["MeshGen"]
      184 LOADK                            R6 K19 ["AssetPermissionCreationFailed"]
      185 NAMECALL                         R3 R3 K3 ["getText"]
      187 CALL                             R3 3 1
      188 SETTABLE                         R3 R1 R2
      189 GETUPVAL                         R2 0
      190 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      192 GETTABLEKS                       R2 R2 K13 ["InsertFailed"]
      194 GETUPVAL                         R3 1
      195 LOADK                            R5 K2 ["MeshGen"]
      196 LOADK                            R6 K13 ["InsertFailed"]
      197 NAMECALL                         R3 R3 K3 ["getText"]
      199 CALL                             R3 3 1
      200 SETTABLE                         R3 R1 R2
      201 DUPTABLE                         R2 K24 [{"PreviewStateHeaderText", "FailureMessageText", "UnknownError", "Buttons"}]
      202 SETTABLEKS                       R0 R2 K20 ["PreviewStateHeaderText"]
      204 SETTABLEKS                       R1 R2 K21 ["FailureMessageText"]
      206 GETUPVAL                         R3 1
      207 LOADK                            R5 K2 ["MeshGen"]
      208 LOADK                            R6 K22 ["UnknownError"]
      209 NAMECALL                         R3 R3 K3 ["getText"]
      211 CALL                             R3 3 1
      212 SETTABLEKS                       R3 R2 K22 ["UnknownError"]
      214 DUPTABLE                         R3 K30 [{"Cancel", "Regenerate", "Publish", "AddToPlace", "TryAgain"}]
      215 GETUPVAL                         R4 1
      216 LOADK                            R6 K2 ["MeshGen"]
      217 LOADK                            R7 K25 ["Cancel"]
      218 NAMECALL                         R4 R4 K3 ["getText"]
      220 CALL                             R4 3 1
      221 SETTABLEKS                       R4 R3 K25 ["Cancel"]
      223 GETUPVAL                         R4 1
      224 LOADK                            R6 K2 ["MeshGen"]
      225 LOADK                            R7 K26 ["Regenerate"]
      226 NAMECALL                         R4 R4 K3 ["getText"]
      228 CALL                             R4 3 1
      229 SETTABLEKS                       R4 R3 K26 ["Regenerate"]
      231 GETUPVAL                         R4 1
      232 LOADK                            R6 K2 ["MeshGen"]
      233 LOADK                            R7 K27 ["Publish"]
      234 NAMECALL                         R4 R4 K3 ["getText"]
      236 CALL                             R4 3 1
      237 SETTABLEKS                       R4 R3 K27 ["Publish"]
      239 GETUPVAL                         R4 1
      240 LOADK                            R6 K2 ["MeshGen"]
      241 LOADK                            R7 K28 ["AddToPlace"]
      242 NAMECALL                         R4 R4 K3 ["getText"]
      244 CALL                             R4 3 1
      245 SETTABLEKS                       R4 R3 K28 ["AddToPlace"]
      247 GETUPVAL                         R4 1
      248 LOADK                            R6 K2 ["MeshGen"]
      249 LOADK                            R7 K29 ["TryAgain"]
      250 NAMECALL                         R4 R4 K3 ["getText"]
      252 CALL                             R4 3 1
      253 SETTABLEKS                       R4 R3 K29 ["TryAgain"]
      255 SETTABLEKS                       R3 R2 K23 ["Buttons"]
      257 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["PreviewState"]
        5 GETTABLEKS                       R3 R3 K2 ["GeneratingMesh"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R3 R0 K0 ["previewState"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["PreviewState"]
       16 GETTABLEKS                       R4 R4 K3 ["GeneratingTexture"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 GETTABLEKS                       R4 R0 K0 ["previewState"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K1 ["PreviewState"]
       27 GETTABLEKS                       R5 R5 K4 ["GenerationFailed"]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETTABLEKS                       R5 R0 K0 ["previewState"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K1 ["PreviewState"]
       38 GETTABLEKS                       R6 R6 K5 ["Generated"]
       40 JUMPIFEQ                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 GETTABLEKS                       R6 R0 K0 ["previewState"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K1 ["PreviewState"]
       49 GETTABLEKS                       R7 R7 K6 ["Publishing"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETTABLEKS                       R7 R0 K0 ["previewState"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K1 ["PreviewState"]
       60 GETTABLEKS                       R8 R8 K7 ["PublishFailed"]
       62 JUMPIFEQ                         R7 R8 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 GETTABLEKS                       R8 R0 K0 ["previewState"]
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K1 ["PreviewState"]
       71 GETTABLEKS                       R9 R9 K8 ["Published"]
       73 JUMPIFEQ                         R8 R9 ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 GETTABLEKS                       R9 R0 K0 ["previewState"]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K1 ["PreviewState"]
       82 GETTABLEKS                       R10 R10 K9 ["Inserting"]
       84 JUMPIFEQ                         R9 R10 ; [+2]
       86 LOADB                            R8 0 +1
       87 LOADB                            R8 1
       88 GETTABLEKS                       R10 R0 K0 ["previewState"]
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R11 R11 K1 ["PreviewState"]
       93 GETTABLEKS                       R11 R11 K10 ["InsertFailed"]
       95 JUMPIFEQ                         R10 R11 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 GETTABLEKS                       R11 R0 K11 ["failureReason"]
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K12 ["FailureReason"]
      104 GETTABLEKS                       R12 R12 K13 ["GenerationCanceled"]
      106 JUMPIFEQ                         R11 R12 ; [+2]
      108 LOADB                            R10 0 +1
      109 LOADB                            R10 1
      110 GETUPVAL                         R11 1
      111 MOVE                             R12 R0
      112 CALL                             R11 1 2
      113 GETUPVAL                         R13 2
      114 MOVE                             R14 R0
      115 CALL                             R13 1 2
      116 GETUPVAL                         R15 3
      117 GETTABLEKS                       R15 R15 K14 ["useCallback"]
      119 NEWCLOSURE                       R16 P0
      120 CAPTURE                          VAL R0
      121 NEWTABLE                         R17 0 1
      123 GETTABLEKS                       R18 R0 K15 ["cancelGeneration"]
      125 SETLIST                          R17 R18 1 [1]
      127 CALL                             R15 2 1
      128 GETUPVAL                         R16 3
      129 GETTABLEKS                       R16 R16 K14 ["useCallback"]
      131 NEWCLOSURE                       R17 P1
      132 CAPTURE                          VAL R0
      133 NEWTABLE                         R18 0 1
      135 GETTABLEKS                       R19 R0 K16 ["insertAssets"]
      137 SETLIST                          R18 R19 1 [1]
      139 CALL                             R16 2 1
      140 GETUPVAL                         R17 4
      141 GETTABLEKS                       R18 R0 K17 ["previewImages"]
      143 CALL                             R17 1 1
      144 GETUPVAL                         R18 5
      145 GETTABLEKS                       R19 R0 K18 ["className"]
      147 CALL                             R18 1 1
      148 GETUPVAL                         R19 3
      149 GETTABLEKS                       R19 R19 K14 ["useCallback"]
      151 DUPCLOSURE                       R20 K19 [PROTO_11]
      152 CAPTURE                          UPVAL U6
      153 NEWTABLE                         R21 0 0
      155 CALL                             R19 2 1
      156 GETUPVAL                         R20 3
      157 GETTABLEKS                       R20 R20 K20 ["useMemo"]
      159 DUPCLOSURE                       R21 K21 [PROTO_12]
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          UPVAL U8
      163 NEWTABLE                         R22 0 1
      165 GETUPVAL                         R23 7
      166 GETTABLEKS                       R23 R23 K22 ["locale"]
      168 SETLIST                          R22 R23 1 [1]
      170 CALL                             R20 2 1
      171 LOADNIL                          R21
      172 GETTABLEKS                       R22 R0 K0 ["previewState"]
      174 GETUPVAL                         R23 0
      175 GETTABLEKS                       R23 R23 K1 ["PreviewState"]
      177 GETTABLEKS                       R23 R23 K4 ["GenerationFailed"]
      179 JUMPIFNOTEQ                      R22 R23 ; [+10]
      181 GETTABLEKS                       R23 R20 K23 ["PreviewStateHeaderText"]
      183 GETTABLEKS                       R24 R0 K0 ["previewState"]
      185 GETTABLE                         R22 R23 R24
      186 GETTABLEKS                       R23 R17 K24 ["exists"]
      188 GETTABLE                         R21 R22 R23
      189 JUMP                             ; [+5]
      190 GETTABLEKS                       R22 R20 K23 ["PreviewStateHeaderText"]
      192 GETTABLEKS                       R23 R0 K0 ["previewState"]
      194 GETTABLE                         R21 R22 R23
      195 JUMPIF                           R4 ; [+1]
      196 JUMPIFNOT                        R7 ; [+8]
      197 GETTABLEKS                       R22 R0 K25 ["shouldShowChip"]
      199 JUMPIF                           R22 ; [+5]
      200 MOVE                             R22 R21
      201 LOADK                            R23 K26 [" "]
      202 GETTABLEKS                       R24 R0 K27 ["displayName"]
      204 CONCAT                           R21 R22 R24
      205 MOVE                             R22 R1
      206 JUMPIF                           R22 ; [+5]
      207 MOVE                             R22 R2
      208 JUMPIF                           R22 ; [+3]
      209 MOVE                             R22 R5
      210 JUMPIF                           R22 ; [+1]
      211 MOVE                             R22 R8
      212 MOVE                             R23 R3
      213 JUMPIF                           R23 ; [+3]
      214 MOVE                             R23 R6
      215 JUMPIF                           R23 ; [+1]
      216 MOVE                             R23 R9
      217 OR                               R24 R1 R2
      218 MOVE                             R25 R3
      219 JUMPIFNOT                        R25 ; [+3]
      220 MOVE                             R25 R11
      221 JUMPIFNOT                        R25 ; [+1]
      222 NOT                              R25 R10
      223 JUMPIF                           R4 ; [+2]
      224 MOVE                             R26 R6
      225 JUMPIFNOT                        R26 ; [+1]
      226 MOVE                             R26 R13
      227 OR                               R27 R7 R9
      228 GETUPVAL                         R28 9
      229 CALL                             R28 0 1
      230 GETUPVAL                         R29 10
      231 GETUPVAL                         R30 11
      232 GETUPVAL                         R31 12
      233 GETTABLEKS                       R31 R31 K28 ["assign"]
      235 DUPTABLE                         R32 K31 [{"canToggle", "headerChildren"}]
      236 LOADB                            R33 1
      237 SETTABLEKS                       R33 R32 K29 ["canToggle"]
      239 DUPTABLE                         R33 K34 [{"Text", "ChipArea"}]
      240 GETUPVAL                         R34 10
      241 GETUPVAL                         R35 13
      242 DUPTABLE                         R36 K37 [{"tag", "Text", "LayoutOrder"}]
      243 LOADK                            R37 K38 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
      244 SETTABLEKS                       R37 R36 K35 ["tag"]
      246 SETTABLEKS                       R21 R36 K32 ["Text"]
      248 MOVE                             R37 R28
      249 CALL                             R37 0 1
      250 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      252 DUPTABLE                         R37 K40 [{"Shimmer"}]
      253 MOVE                             R38 R22
      254 JUMPIFNOT                        R38 ; [+3]
      255 GETUPVAL                         R38 10
      256 GETUPVAL                         R39 14
      257 CALL                             R38 1 1
      258 SETTABLEKS                       R38 R37 K39 ["Shimmer"]
      260 CALL                             R34 3 1
      261 SETTABLEKS                       R34 R33 K32 ["Text"]
      263 GETTABLEKS                       R34 R0 K25 ["shouldShowChip"]
      265 JUMPIFNOT                        R34 ; [+54]
      266 GETUPVAL                         R34 10
      267 GETUPVAL                         R35 15
      268 DUPTABLE                         R36 K41 [{"tag", "LayoutOrder"}]
      269 LOADK                            R37 K42 ["fill align-x-left align-y-center"]
      270 SETTABLEKS                       R37 R36 K35 ["tag"]
      272 MOVE                             R37 R28
      273 CALL                             R37 0 1
      274 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      276 DUPTABLE                         R37 K44 [{"AssetLink"}]
      277 GETUPVAL                         R38 10
      278 GETUPVAL                         R39 16
      279 DUPTABLE                         R40 K50 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      280 GETTABLEKS                       R41 R0 K27 ["displayName"]
      282 SETTABLEKS                       R41 R40 K45 ["text"]
      284 GETTABLEKS                       R41 R18 K51 ["Image"]
      286 SETTABLEKS                       R41 R40 K46 ["leading"]
      288 GETTABLEKS                       R41 R0 K52 ["onChipClicked"]
      290 SETTABLEKS                       R41 R40 K47 ["onActivated"]
      292 LOADB                            R41 0
      293 SETTABLEKS                       R41 R40 K48 ["isChecked"]
      295 GETUPVAL                         R41 17
      296 GETTABLEKS                       R41 R41 K53 ["Enums"]
      298 GETTABLEKS                       R41 R41 K54 ["ChipSize"]
      300 GETTABLEKS                       R41 R41 K55 ["Small"]
      302 SETTABLEKS                       R41 R40 K49 ["size"]
      304 MOVE                             R41 R28
      305 CALL                             R41 0 1
      306 SETTABLEKS                       R41 R40 K36 ["LayoutOrder"]
      308 DUPTABLE                         R41 K40 [{"Shimmer"}]
      309 MOVE                             R42 R22
      310 JUMPIFNOT                        R42 ; [+3]
      311 GETUPVAL                         R42 10
      312 GETUPVAL                         R43 14
      313 CALL                             R42 1 1
      314 SETTABLEKS                       R42 R41 K39 ["Shimmer"]
      316 CALL                             R38 3 1
      317 SETTABLEKS                       R38 R37 K43 ["AssetLink"]
      319 CALL                             R34 3 1
      320 SETTABLEKS                       R34 R33 K33 ["ChipArea"]
      322 SETTABLEKS                       R33 R32 K30 ["headerChildren"]
      324 MOVE                             R33 R0
      325 CALL                             R31 2 1
      326 DUPTABLE                         R32 K58 [{"Preview", "InfoBar"}]
      327 JUMPIFNOT                        R3 ; [+2]
      328 LOADNIL                          R33
      329 JUMP                             ; [+138]
      330 GETTABLEKS                       R34 R17 K24 ["exists"]
      332 JUMPIF                           R34 ; [+27]
      333 GETUPVAL                         R33 10
      334 GETUPVAL                         R34 18
      335 DUPTABLE                         R35 K61 [{"Size", "radius", "LayoutOrder"}]
      336 GETIMPORT                        R36 K64 [UDim2.new]
      338 LOADN                            R37 1
      339 LOADN                            R38 0
      340 LOADN                            R39 0
      341 GETUPVAL                         R40 19
      342 CALL                             R36 4 1
      343 SETTABLEKS                       R36 R35 K59 ["Size"]
      345 GETUPVAL                         R36 17
      346 GETTABLEKS                       R36 R36 K53 ["Enums"]
      348 GETTABLEKS                       R36 R36 K65 ["Radius"]
      350 GETTABLEKS                       R36 R36 K55 ["Small"]
      352 SETTABLEKS                       R36 R35 K60 ["radius"]
      354 MOVE                             R36 R28
      355 CALL                             R36 0 1
      356 SETTABLEKS                       R36 R35 K36 ["LayoutOrder"]
      358 CALL                             R33 2 1
      359 JUMP                             ; [+108]
      360 GETUPVAL                         R33 10
      361 GETUPVAL                         R34 20
      362 DUPTABLE                         R35 K69 [{"tag", "Image", "Size", "BackgroundColor3", "ScaleType", "LayoutOrder", "testId"}]
      363 LOADK                            R36 K70 ["row size-full-0 auto-y bg-shift-200 radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      364 SETTABLEKS                       R36 R35 K35 ["tag"]
      366 GETTABLEKS                       R36 R17 K71 ["current"]
      368 SETTABLEKS                       R36 R35 K51 ["Image"]
      370 GETIMPORT                        R36 K64 [UDim2.new]
      372 LOADN                            R37 1
      373 LOADN                            R38 0
      374 LOADN                            R39 0
      375 GETUPVAL                         R40 19
      376 CALL                             R36 4 1
      377 SETTABLEKS                       R36 R35 K59 ["Size"]
      379 GETIMPORT                        R36 K74 [Color3.fromRGB]
      381 LOADN                            R37 0
      382 LOADN                            R38 0
      383 LOADN                            R39 0
      384 CALL                             R36 3 1
      385 SETTABLEKS                       R36 R35 K66 ["BackgroundColor3"]
      387 GETIMPORT                        R36 K77 [Enum.ScaleType.Fit]
      389 SETTABLEKS                       R36 R35 K67 ["ScaleType"]
      391 MOVE                             R36 R28
      392 CALL                             R36 0 1
      393 SETTABLEKS                       R36 R35 K36 ["LayoutOrder"]
      395 GETUPVAL                         R36 21
      396 GETTABLEKS                       R36 R36 K78 ["MeshGen"]
      398 GETTABLEKS                       R36 R36 K79 ["PreviewImage"]
      400 SETTABLEKS                       R36 R35 K68 ["testId"]
      402 DUPTABLE                         R36 K82 [{"LastPreview", "NextPreview"}]
      403 GETUPVAL                         R37 10
      404 GETUPVAL                         R38 22
      405 DUPTABLE                         R39 K84 [{"icon", "size", "onActivated", "LayoutOrder"}]
      406 GETUPVAL                         R40 17
      407 GETTABLEKS                       R40 R40 K53 ["Enums"]
      409 GETTABLEKS                       R40 R40 K85 ["IconName"]
      411 GETTABLEKS                       R40 R40 K86 ["ChevronLargeLeft"]
      413 SETTABLEKS                       R40 R39 K83 ["icon"]
      415 GETUPVAL                         R40 17
      416 GETTABLEKS                       R40 R40 K53 ["Enums"]
      418 GETTABLEKS                       R40 R40 K87 ["InputSize"]
      420 GETTABLEKS                       R40 R40 K55 ["Small"]
      422 SETTABLEKS                       R40 R39 K49 ["size"]
      424 GETTABLEKS                       R40 R17 K88 ["decrement"]
      426 SETTABLEKS                       R40 R39 K47 ["onActivated"]
      428 MOVE                             R40 R28
      429 CALL                             R40 0 1
      430 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      432 CALL                             R37 2 1
      433 SETTABLEKS                       R37 R36 K80 ["LastPreview"]
      435 GETUPVAL                         R37 10
      436 GETUPVAL                         R38 22
      437 DUPTABLE                         R39 K84 [{"icon", "size", "onActivated", "LayoutOrder"}]
      438 GETUPVAL                         R40 17
      439 GETTABLEKS                       R40 R40 K53 ["Enums"]
      441 GETTABLEKS                       R40 R40 K85 ["IconName"]
      443 GETTABLEKS                       R40 R40 K89 ["ChevronLargeRight"]
      445 SETTABLEKS                       R40 R39 K83 ["icon"]
      447 GETUPVAL                         R40 17
      448 GETTABLEKS                       R40 R40 K53 ["Enums"]
      450 GETTABLEKS                       R40 R40 K87 ["InputSize"]
      452 GETTABLEKS                       R40 R40 K55 ["Small"]
      454 SETTABLEKS                       R40 R39 K49 ["size"]
      456 GETTABLEKS                       R40 R17 K90 ["increment"]
      458 SETTABLEKS                       R40 R39 K47 ["onActivated"]
      460 MOVE                             R40 R28
      461 CALL                             R40 0 1
      462 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      464 CALL                             R37 2 1
      465 SETTABLEKS                       R37 R36 K81 ["NextPreview"]
      467 CALL                             R33 3 1
      468 SETTABLEKS                       R33 R32 K56 ["Preview"]
      470 GETUPVAL                         R33 10
      471 GETUPVAL                         R34 15
      472 DUPTABLE                         R35 K41 [{"tag", "LayoutOrder"}]
      473 LOADK                            R36 K91 ["size-full-0 auto-y gap-small row align-y-center"]
      474 SETTABLEKS                       R36 R35 K35 ["tag"]
      476 MOVE                             R36 R28
      477 CALL                             R36 0 1
      478 SETTABLEKS                       R36 R35 K36 ["LayoutOrder"]
      480 DUPTABLE                         R36 K94 [{"LeftSpace", "Buttons"}]
      481 GETUPVAL                         R37 10
      482 GETUPVAL                         R38 15
      483 DUPTABLE                         R39 K41 [{"tag", "LayoutOrder"}]
      484 LOADK                            R40 K95 ["fill size-0-800 auto-y"]
      485 SETTABLEKS                       R40 R39 K35 ["tag"]
      487 MOVE                             R40 R28
      488 CALL                             R40 0 1
      489 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      491 DUPTABLE                         R40 K97 [{"FailureMessage"}]
      492 MOVE                             R41 R23
      493 JUMPIFNOT                        R41 ; [+79]
      494 GETUPVAL                         R41 10
      495 GETUPVAL                         R42 15
      496 DUPTABLE                         R43 K41 [{"tag", "LayoutOrder"}]
      497 LOADK                            R44 K98 ["size-full-full auto-y row gap-xsmall align-y-center"]
      498 SETTABLEKS                       R44 R43 K35 ["tag"]
      500 MOVE                             R44 R28
      501 CALL                             R44 0 1
      502 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      504 DUPTABLE                         R44 K101 [{"ErrorIcon", "TextContainer"}]
      505 GETUPVAL                         R45 10
      506 GETUPVAL                         R46 23
      507 DUPTABLE                         R47 K103 [{"name", "size", "LayoutOrder"}]
      508 GETUPVAL                         R48 17
      509 GETTABLEKS                       R48 R48 K53 ["Enums"]
      511 GETTABLEKS                       R48 R48 K85 ["IconName"]
      513 GETTABLEKS                       R48 R48 K104 ["TriangleExclamation"]
      515 SETTABLEKS                       R48 R47 K102 ["name"]
      517 GETUPVAL                         R48 17
      518 GETTABLEKS                       R48 R48 K53 ["Enums"]
      520 GETTABLEKS                       R48 R48 K105 ["IconSize"]
      522 GETTABLEKS                       R48 R48 K106 ["Medium"]
      524 SETTABLEKS                       R48 R47 K49 ["size"]
      526 MOVE                             R48 R28
      527 CALL                             R48 0 1
      528 SETTABLEKS                       R48 R47 K36 ["LayoutOrder"]
      530 CALL                             R45 2 1
      531 SETTABLEKS                       R45 R44 K99 ["ErrorIcon"]
      533 GETUPVAL                         R45 10
      534 GETUPVAL                         R46 15
      535 DUPTABLE                         R47 K41 [{"tag", "LayoutOrder"}]
      536 LOADK                            R48 K107 ["shrink size-full-0 auto-y"]
      537 SETTABLEKS                       R48 R47 K35 ["tag"]
      539 MOVE                             R48 R28
      540 CALL                             R48 0 1
      541 SETTABLEKS                       R48 R47 K36 ["LayoutOrder"]
      543 DUPTABLE                         R48 K108 [{"Text"}]
      544 GETUPVAL                         R49 10
      545 GETUPVAL                         R50 24
      546 DUPTABLE                         R51 K111 [{"markdown", "linkCallback", "LayoutOrder"}]
      547 GETTABLEKS                       R53 R0 K11 ["failureReason"]
      549 JUMPIFNOT                        R53 ; [+6]
      550 GETTABLEKS                       R53 R20 K112 ["FailureMessageText"]
      552 GETTABLEKS                       R54 R0 K11 ["failureReason"]
      554 GETTABLE                         R52 R53 R54
      555 JUMPIF                           R52 ; [+2]
      556 GETTABLEKS                       R52 R20 K113 ["UnknownError"]
      558 SETTABLEKS                       R52 R51 K109 ["markdown"]
      560 SETTABLEKS                       R19 R51 K110 ["linkCallback"]
      562 MOVE                             R52 R28
      563 CALL                             R52 0 1
      564 SETTABLEKS                       R52 R51 K36 ["LayoutOrder"]
      566 CALL                             R49 2 1
      567 SETTABLEKS                       R49 R48 K32 ["Text"]
      569 CALL                             R45 3 1
      570 SETTABLEKS                       R45 R44 K100 ["TextContainer"]
      572 CALL                             R41 3 1
      573 SETTABLEKS                       R41 R40 K96 ["FailureMessage"]
      575 CALL                             R37 3 1
      576 SETTABLEKS                       R37 R36 K92 ["LeftSpace"]
      578 GETUPVAL                         R37 10
      579 GETUPVAL                         R38 15
      580 DUPTABLE                         R39 K41 [{"tag", "LayoutOrder"}]
      581 LOADK                            R40 K114 ["auto-xy row gap-small"]
      582 SETTABLEKS                       R40 R39 K35 ["tag"]
      584 MOVE                             R40 R28
      585 CALL                             R40 0 1
      586 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      588 DUPTABLE                         R40 K119 [{"CancelButton", "RegenerateButton", "PublishButton", "InsertButton"}]
      589 MOVE                             R41 R24
      590 JUMPIFNOT                        R41 ; [+34]
      591 GETUPVAL                         R41 10
      592 GETUPVAL                         R42 25
      593 DUPTABLE                         R43 K121 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      594 GETTABLEKS                       R44 R20 K93 ["Buttons"]
      596 GETTABLEKS                       R44 R44 K122 ["Cancel"]
      598 SETTABLEKS                       R44 R43 K45 ["text"]
      600 GETUPVAL                         R44 17
      601 GETTABLEKS                       R44 R44 K53 ["Enums"]
      603 GETTABLEKS                       R44 R44 K87 ["InputSize"]
      605 GETTABLEKS                       R44 R44 K55 ["Small"]
      607 SETTABLEKS                       R44 R43 K49 ["size"]
      609 GETUPVAL                         R44 17
      610 GETTABLEKS                       R44 R44 K53 ["Enums"]
      612 GETTABLEKS                       R44 R44 K123 ["ButtonVariant"]
      614 GETTABLEKS                       R44 R44 K124 ["Standard"]
      616 SETTABLEKS                       R44 R43 K120 ["variant"]
      618 SETTABLEKS                       R15 R43 K47 ["onActivated"]
      620 MOVE                             R44 R28
      621 CALL                             R44 0 1
      622 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      624 CALL                             R41 2 1
      625 SETTABLEKS                       R41 R40 K115 ["CancelButton"]
      627 MOVE                             R41 R25
      628 JUMPIFNOT                        R41 ; [+34]
      629 GETUPVAL                         R41 10
      630 GETUPVAL                         R42 25
      631 DUPTABLE                         R43 K121 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      632 GETTABLEKS                       R44 R20 K93 ["Buttons"]
      634 GETTABLEKS                       R44 R44 K125 ["Regenerate"]
      636 SETTABLEKS                       R44 R43 K45 ["text"]
      638 GETUPVAL                         R44 17
      639 GETTABLEKS                       R44 R44 K53 ["Enums"]
      641 GETTABLEKS                       R44 R44 K87 ["InputSize"]
      643 GETTABLEKS                       R44 R44 K55 ["Small"]
      645 SETTABLEKS                       R44 R43 K49 ["size"]
      647 GETUPVAL                         R44 17
      648 GETTABLEKS                       R44 R44 K53 ["Enums"]
      650 GETTABLEKS                       R44 R44 K123 ["ButtonVariant"]
      652 GETTABLEKS                       R44 R44 K124 ["Standard"]
      654 SETTABLEKS                       R44 R43 K120 ["variant"]
      656 SETTABLEKS                       R12 R43 K47 ["onActivated"]
      658 MOVE                             R44 R28
      659 CALL                             R44 0 1
      660 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      662 CALL                             R41 2 1
      663 SETTABLEKS                       R41 R40 K116 ["RegenerateButton"]
      665 MOVE                             R41 R26
      666 JUMPIFNOT                        R41 ; [+42]
      667 GETUPVAL                         R41 10
      668 GETUPVAL                         R42 25
      669 DUPTABLE                         R43 K127 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      670 JUMPIFNOT                        R23 ; [+5]
      671 GETTABLEKS                       R44 R20 K93 ["Buttons"]
      673 GETTABLEKS                       R44 R44 K128 ["TryAgain"]
      675 JUMP                             ; [+4]
      676 GETTABLEKS                       R44 R20 K93 ["Buttons"]
      678 GETTABLEKS                       R44 R44 K129 ["Publish"]
      680 SETTABLEKS                       R44 R43 K45 ["text"]
      682 GETUPVAL                         R44 17
      683 GETTABLEKS                       R44 R44 K53 ["Enums"]
      685 GETTABLEKS                       R44 R44 K87 ["InputSize"]
      687 GETTABLEKS                       R44 R44 K55 ["Small"]
      689 SETTABLEKS                       R44 R43 K49 ["size"]
      691 GETUPVAL                         R44 17
      692 GETTABLEKS                       R44 R44 K53 ["Enums"]
      694 GETTABLEKS                       R44 R44 K123 ["ButtonVariant"]
      696 GETTABLEKS                       R44 R44 K130 ["Emphasis"]
      698 SETTABLEKS                       R44 R43 K120 ["variant"]
      700 SETTABLEKS                       R5 R43 K126 ["isLoading"]
      702 SETTABLEKS                       R14 R43 K47 ["onActivated"]
      704 MOVE                             R44 R28
      705 CALL                             R44 0 1
      706 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      708 CALL                             R41 2 1
      709 SETTABLEKS                       R41 R40 K117 ["PublishButton"]
      711 MOVE                             R41 R27
      712 JUMPIFNOT                        R41 ; [+42]
      713 GETUPVAL                         R41 10
      714 GETUPVAL                         R42 25
      715 DUPTABLE                         R43 K127 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      716 JUMPIFNOT                        R23 ; [+5]
      717 GETTABLEKS                       R44 R20 K93 ["Buttons"]
      719 GETTABLEKS                       R44 R44 K128 ["TryAgain"]
      721 JUMP                             ; [+4]
      722 GETTABLEKS                       R44 R20 K93 ["Buttons"]
      724 GETTABLEKS                       R44 R44 K131 ["AddToPlace"]
      726 SETTABLEKS                       R44 R43 K45 ["text"]
      728 GETUPVAL                         R44 17
      729 GETTABLEKS                       R44 R44 K53 ["Enums"]
      731 GETTABLEKS                       R44 R44 K87 ["InputSize"]
      733 GETTABLEKS                       R44 R44 K55 ["Small"]
      735 SETTABLEKS                       R44 R43 K49 ["size"]
      737 GETUPVAL                         R44 17
      738 GETTABLEKS                       R44 R44 K53 ["Enums"]
      740 GETTABLEKS                       R44 R44 K123 ["ButtonVariant"]
      742 GETTABLEKS                       R44 R44 K130 ["Emphasis"]
      744 SETTABLEKS                       R44 R43 K120 ["variant"]
      746 SETTABLEKS                       R8 R43 K126 ["isLoading"]
      748 SETTABLEKS                       R16 R43 K47 ["onActivated"]
      750 MOVE                             R44 R28
      751 CALL                             R44 0 1
      752 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      754 CALL                             R41 2 1
      755 SETTABLEKS                       R41 R40 K118 ["InsertButton"]
      757 CALL                             R37 3 1
      758 SETTABLEKS                       R37 R36 K93 ["Buttons"]
      760 CALL                             R33 3 1
      761 SETTABLEKS                       R33 R32 K57 ["InfoBar"]
      763 CALL                             R29 3 -1
      764 RETURN                           R29 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Preparing"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+15]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["join"]
       17 MOVE                             R3 R0
       18 DUPTABLE                         R4 K5 [{"isError"}]
       19 SETTABLEKS                       R1 R4 K1 ["isError"]
       21 CALL                             R2 2 1
       22 MOVE                             R0 R2
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 3
       25 MOVE                             R4 R0
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 GETTABLEKS                       R2 R0 K2 ["mode"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K6 ["ShowPreview"]
       33 JUMPIFNOTEQ                      R2 R3 ; [+6]
       35 GETUPVAL                         R2 2
       36 GETUPVAL                         R3 4
       37 MOVE                             R4 R0
       38 CALL                             R2 2 -1
       39 RETURN                           R2 -1
       40 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 DUPTABLE                         R1 K5 [{"mode"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["Preparing"]
       19 SETTABLEKS                       R2 R1 K3 ["mode"]
       21 RETURN                           R1 1
       22 DUPTABLE                         R1 K15 [{"mode", "name", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta"}]
       23 GETTABLEKS                       R2 R0 K3 ["mode"]
       25 SETTABLEKS                       R2 R1 K3 ["mode"]
       27 GETTABLEKS                       R2 R0 K7 ["name"]
       29 SETTABLEKS                       R2 R1 K7 ["name"]
       31 GETTABLEKS                       R2 R0 K8 ["previewImages"]
       33 SETTABLEKS                       R2 R1 K8 ["previewImages"]
       35 GETTABLEKS                       R2 R0 K9 ["previewState"]
       37 SETTABLEKS                       R2 R1 K9 ["previewState"]
       39 GETTABLEKS                       R2 R0 K10 ["failureReason"]
       41 SETTABLEKS                       R2 R1 K10 ["failureReason"]
       43 GETTABLEKS                       R2 R0 K11 ["generationRetryCount"]
       45 SETTABLEKS                       R2 R1 K11 ["generationRetryCount"]
       47 GETTABLEKS                       R2 R0 K12 ["publishAttemptCount"]
       49 SETTABLEKS                       R2 R1 K12 ["publishAttemptCount"]
       51 GETTABLEKS                       R2 R0 K13 ["validatedArgs"]
       53 SETTABLEKS                       R2 R1 K13 ["validatedArgs"]
       55 GETTABLEKS                       R2 R0 K14 ["generationMeta"]
       57 SETTABLEKS                       R2 R1 K14 ["generationMeta"]
       59 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R2 R3 ; [+14]
       15 DUPTABLE                         R2 K7 [{"type", "mode", "isError"}]
       16 LOADK                            R3 K8 ["MeshGen"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K9 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["isError"]
       27 RETURN                           R2 1
       28 DUPTABLE                         R2 K27 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       29 LOADK                            R3 K8 ["MeshGen"]
       30 SETTABLEKS                       R3 R2 K5 ["type"]
       32 GETTABLEKS                       R3 R0 K3 ["mode"]
       34 SETTABLEKS                       R3 R2 K3 ["mode"]
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K10 ["expanded"]
       39 GETTABLEKS                       R3 R0 K11 ["name"]
       41 SETTABLEKS                       R3 R2 K11 ["name"]
       43 GETTABLEKS                       R3 R0 K11 ["name"]
       45 SETTABLEKS                       R3 R2 K12 ["displayName"]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K13 ["className"]
       50 GETTABLEKS                       R3 R0 K14 ["previewImages"]
       52 SETTABLEKS                       R3 R2 K14 ["previewImages"]
       54 GETTABLEKS                       R3 R0 K15 ["previewState"]
       56 SETTABLEKS                       R3 R2 K15 ["previewState"]
       58 GETTABLEKS                       R3 R0 K16 ["failureReason"]
       60 SETTABLEKS                       R3 R2 K16 ["failureReason"]
       62 GETTABLEKS                       R3 R0 K17 ["generationRetryCount"]
       64 SETTABLEKS                       R3 R2 K17 ["generationRetryCount"]
       66 GETTABLEKS                       R3 R0 K18 ["publishAttemptCount"]
       68 SETTABLEKS                       R3 R2 K18 ["publishAttemptCount"]
       70 GETTABLEKS                       R3 R0 K19 ["validatedArgs"]
       72 SETTABLEKS                       R3 R2 K19 ["validatedArgs"]
       74 GETTABLEKS                       R3 R0 K20 ["generationMeta"]
       76 SETTABLEKS                       R3 R2 K20 ["generationMeta"]
       78 GETUPVAL                         R3 2
       79 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       81 LOADK                            R4 K21 ["retryGeneration"]
       82 CALL                             R3 1 1
       83 SETTABLEKS                       R3 R2 K21 ["retryGeneration"]
       85 GETUPVAL                         R3 2
       86 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       88 LOADK                            R4 K22 ["cancelGeneration"]
       89 CALL                             R3 1 1
       90 SETTABLEKS                       R3 R2 K22 ["cancelGeneration"]
       92 GETUPVAL                         R3 2
       93 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       95 LOADK                            R4 K23 ["publishAssets"]
       96 CALL                             R3 1 1
       97 SETTABLEKS                       R3 R2 K23 ["publishAssets"]
       99 GETUPVAL                         R3 2
      100 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
      102 LOADK                            R4 K24 ["insertAssets"]
      103 CALL                             R3 1 1
      104 SETTABLEKS                       R3 R2 K24 ["insertAssets"]
      106 LOADB                            R3 0
      107 SETTABLEKS                       R3 R2 K25 ["shouldShowChip"]
      109 GETUPVAL                         R3 2
      110 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
      112 LOADK                            R4 K26 ["onChipClicked"]
      113 CALL                             R3 1 1
      114 SETTABLEKS                       R3 R2 K26 ["onChipClicked"]
      116 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Guest"]
       25 GETTABLEKS                       R4 R4 K11 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["MarkdownText"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["Serializer"]
       62 GETTABLEKS                       R9 R9 K18 ["SerializerTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["ShimmerGradient"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Util"]
       76 GETTABLEKS                       R11 R11 K20 ["TestIds"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Resources"]
       83 GETTABLEKS                       R12 R12 K22 ["Localization"]
       85 GETTABLEKS                       R12 R12 K23 ["Translator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Types"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K26 ["useClassIcon"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K27 ["useContentPropState"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K28 ["useWrappingIndex"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K1 [script]
      116 LOADK                            R18 K29 ["MeshGen"]
      117 NAMECALL                         R16 R16 K3 ["FindFirstAncestor"]
      119 CALL                             R16 2 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R16 K30 ["MeshGenConstants"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R16 K31 ["MeshGenTypes"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K32 ["Flags"]
      134 GETTABLEKS                       R20 R20 K33 ["FFlagAssistantMultipleChatPersistence"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K5 [require]
      139 GETTABLEKS                       R21 R0 K32 ["Flags"]
      141 GETTABLEKS                       R21 R21 K34 ["FIntConvAIMeshGenGenerationRetryLimit"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K5 [require]
      146 GETTABLEKS                       R22 R0 K32 ["Flags"]
      148 GETTABLEKS                       R22 R22 K35 ["FIntConvAIMeshGenPublishAttemptLimit"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K5 [require]
      153 GETTABLEKS                       R23 R0 K32 ["Flags"]
      155 GETTABLEKS                       R23 R23 K36 ["FStringConvAIMeshGenModerationUrl"]
      157 CALL                             R22 1 1
      158 GETTABLEKS                       R23 R4 K37 ["Button"]
      160 GETTABLEKS                       R24 R4 K38 ["Chip"]
      162 GETTABLEKS                       R25 R4 K39 ["Icon"]
      164 GETTABLEKS                       R26 R4 K40 ["IconButton"]
      166 GETTABLEKS                       R27 R4 K41 ["Image"]
      168 GETTABLEKS                       R28 R4 K42 ["Skeleton"]
      170 GETTABLEKS                       R29 R4 K43 ["Text"]
      172 GETTABLEKS                       R30 R4 K44 ["View"]
      174 GETTABLEKS                       R31 R7 K45 ["createNextOrder"]
      176 GETTABLEKS                       R32 R6 K46 ["createElement"]
      178 GETTABLEKS                       R33 R17 K47 ["Enums"]
      180 GETTABLEKS                       R34 R17 K48 ["PREVIEW_HEIGHT"]
      182 DUPTABLE                         R35 K51 [{"Preparing", "ShowPreview"}]
      183 LOADK                            R36 K49 ["Preparing"]
      184 SETTABLEKS                       R36 R35 K49 ["Preparing"]
      186 LOADK                            R36 K50 ["ShowPreview"]
      187 SETTABLEKS                       R36 R35 K50 ["ShowPreview"]
      189 DUPCLOSURE                       R36 K52 [PROTO_0]
      190 CAPTURE                          VAL R31
      191 CAPTURE                          VAL R32
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R10
      194 DUPCLOSURE                       R37 K53 [PROTO_3]
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R31
      198 CAPTURE                          VAL R32
      199 CAPTURE                          VAL R36
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R9
      203 DUPCLOSURE                       R38 K54 [PROTO_5]
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R20
      207 DUPCLOSURE                       R39 K55 [PROTO_7]
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R21
      211 DUPCLOSURE                       R40 K56 [PROTO_8]
      212 CAPTURE                          VAL R15
      213 DUPCLOSURE                       R41 K57 [PROTO_13]
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R38
      216 CAPTURE                          VAL R39
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R31
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R36
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R30
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R34
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R10
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R23
      240 DUPCLOSURE                       R42 K58 [PROTO_14]
      241 CAPTURE                          VAL R35
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R32
      244 CAPTURE                          VAL R37
      245 CAPTURE                          VAL R41
      246 DUPTABLE                         R43 K61 [{"toMeta", "fromMeta"}]
      247 DUPCLOSURE                       R44 K62 [PROTO_15]
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R35
      250 SETTABLEKS                       R44 R43 K59 ["toMeta"]
      252 DUPCLOSURE                       R44 K63 [PROTO_16]
      253 CAPTURE                          VAL R19
      254 CAPTURE                          VAL R35
      255 CAPTURE                          VAL R7
      256 SETTABLEKS                       R44 R43 K60 ["fromMeta"]
      258 DUPTABLE                         R44 K68 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      259 LOADK                            R45 K29 ["MeshGen"]
      260 SETTABLEKS                       R45 R44 K64 ["Type"]
      262 GETTABLEKS                       R45 R6 K69 ["memo"]
      264 MOVE                             R46 R42
      265 CALL                             R45 1 1
      266 SETTABLEKS                       R45 R44 K65 ["ContentWidget"]
      268 SETTABLEKS                       R43 R44 K66 ["Serialization"]
      270 SETTABLEKS                       R35 R44 K67 ["Modes"]
      272 RETURN                           R44 1
