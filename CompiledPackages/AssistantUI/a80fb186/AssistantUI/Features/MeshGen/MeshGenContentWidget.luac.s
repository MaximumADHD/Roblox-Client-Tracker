PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["Root"]
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
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K7 ["Header"]
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "LayoutOrder", "testId"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R10 R11 K13 ["MeshGen"]
       46 GETTABLEKS                       R9 R10 K14 ["Expand"]
       48 SETTABLEKS                       R9 R8 K11 ["testId"]
       50 GETTABLEKS                       R9 R0 K15 ["headerChildren"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K7 ["Header"]
       55 GETTABLEKS                       R6 R0 K16 ["children"]
       57 JUMPIFNOT                        R6 ; [+15]
       58 GETUPVAL                         R6 1
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R7 R8 K8 ["Content"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["FailedToGenerate"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["toolResult"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K2 ["ToolRejected"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K3 ["Preparing"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
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
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R8 R9 K5 ["assign"]
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
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["retryGeneration"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["generationRetryCount"]
        4 LOADK                            R4 K0 ["generationRetryCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["useCallback"]
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
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["publishAssets"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["publishAttemptCount"]
        4 LOADK                            R4 K0 ["publishAttemptCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["useCallback"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancelGeneration"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["insertAssets"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R3 K2 ["openUrl"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
        5 GETTABLEKS                       R1 R2 K1 ["GeneratingMesh"]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["MeshGen"]
        9 LOADK                            R5 K1 ["GeneratingMesh"]
       10 NAMECALL                         R2 R2 K3 ["getText"]
       12 CALL                             R2 3 1
       13 SETTABLE                         R2 R0 R1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       17 GETTABLEKS                       R1 R2 K4 ["GeneratingTexture"]
       19 GETUPVAL                         R2 1
       20 LOADK                            R4 K2 ["MeshGen"]
       21 LOADK                            R5 K4 ["GeneratingTexture"]
       22 NAMECALL                         R2 R2 K3 ["getText"]
       24 CALL                             R2 3 1
       25 SETTABLE                         R2 R0 R1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       29 GETTABLEKS                       R1 R2 K5 ["GenerationFailed"]
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
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       53 GETTABLEKS                       R1 R2 K8 ["Generated"]
       55 GETUPVAL                         R2 1
       56 LOADK                            R4 K2 ["MeshGen"]
       57 LOADK                            R5 K8 ["Generated"]
       58 NAMECALL                         R2 R2 K3 ["getText"]
       60 CALL                             R2 3 1
       61 SETTABLE                         R2 R0 R1
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       65 GETTABLEKS                       R1 R2 K9 ["Publishing"]
       67 GETUPVAL                         R2 1
       68 LOADK                            R4 K2 ["MeshGen"]
       69 LOADK                            R5 K9 ["Publishing"]
       70 NAMECALL                         R2 R2 K3 ["getText"]
       72 CALL                             R2 3 1
       73 SETTABLE                         R2 R0 R1
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       77 GETTABLEKS                       R1 R2 K10 ["PublishFailed"]
       79 GETUPVAL                         R2 1
       80 LOADK                            R4 K2 ["MeshGen"]
       81 LOADK                            R5 K10 ["PublishFailed"]
       82 NAMECALL                         R2 R2 K3 ["getText"]
       84 CALL                             R2 3 1
       85 SETTABLE                         R2 R0 R1
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       89 GETTABLEKS                       R1 R2 K11 ["Published"]
       91 GETUPVAL                         R2 1
       92 LOADK                            R4 K2 ["MeshGen"]
       93 LOADK                            R5 K11 ["Published"]
       94 NAMECALL                         R2 R2 K3 ["getText"]
       96 CALL                             R2 3 1
       97 SETTABLE                         R2 R0 R1
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
      101 GETTABLEKS                       R1 R2 K12 ["Inserting"]
      103 GETUPVAL                         R2 1
      104 LOADK                            R4 K2 ["MeshGen"]
      105 LOADK                            R5 K12 ["Inserting"]
      106 NAMECALL                         R2 R2 K3 ["getText"]
      108 CALL                             R2 3 1
      109 SETTABLE                         R2 R0 R1
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
      113 GETTABLEKS                       R1 R2 K13 ["InsertFailed"]
      115 GETUPVAL                         R2 1
      116 LOADK                            R4 K2 ["MeshGen"]
      117 LOADK                            R5 K13 ["InsertFailed"]
      118 NAMECALL                         R2 R2 K3 ["getText"]
      120 CALL                             R2 3 1
      121 SETTABLE                         R2 R0 R1
      122 NEWTABLE                         R1 8 0
      124 GETUPVAL                         R4 0
      125 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      127 GETTABLEKS                       R2 R3 K5 ["GenerationFailed"]
      129 GETUPVAL                         R3 1
      130 LOADK                            R5 K2 ["MeshGen"]
      131 LOADK                            R6 K5 ["GenerationFailed"]
      132 NAMECALL                         R3 R3 K3 ["getText"]
      134 CALL                             R3 3 1
      135 SETTABLE                         R3 R1 R2
      136 GETUPVAL                         R4 0
      137 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      139 GETTABLEKS                       R2 R3 K15 ["GenerationModerated"]
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
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      156 GETTABLEKS                       R2 R3 K18 ["GenerationCanceled"]
      158 GETUPVAL                         R3 1
      159 LOADK                            R5 K2 ["MeshGen"]
      160 LOADK                            R6 K18 ["GenerationCanceled"]
      161 NAMECALL                         R3 R3 K3 ["getText"]
      163 CALL                             R3 3 1
      164 SETTABLE                         R3 R1 R2
      165 GETUPVAL                         R4 0
      166 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      168 GETTABLEKS                       R2 R3 K10 ["PublishFailed"]
      170 GETUPVAL                         R3 1
      171 LOADK                            R5 K2 ["MeshGen"]
      172 LOADK                            R6 K10 ["PublishFailed"]
      173 NAMECALL                         R3 R3 K3 ["getText"]
      175 CALL                             R3 3 1
      176 SETTABLE                         R3 R1 R2
      177 GETUPVAL                         R4 0
      178 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      180 GETTABLEKS                       R2 R3 K19 ["AssetPermissionCreationFailed"]
      182 GETUPVAL                         R3 1
      183 LOADK                            R5 K2 ["MeshGen"]
      184 LOADK                            R6 K19 ["AssetPermissionCreationFailed"]
      185 NAMECALL                         R3 R3 K3 ["getText"]
      187 CALL                             R3 3 1
      188 SETTABLE                         R3 R1 R2
      189 GETUPVAL                         R4 0
      190 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      192 GETTABLEKS                       R2 R3 K13 ["InsertFailed"]
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
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["PreviewState"]
        5 GETTABLEKS                       R3 R4 K2 ["GeneratingMesh"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R3 R0 K0 ["previewState"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K1 ["PreviewState"]
       16 GETTABLEKS                       R4 R5 K3 ["GeneratingTexture"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 GETTABLEKS                       R4 R0 K0 ["previewState"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K1 ["PreviewState"]
       27 GETTABLEKS                       R5 R6 K4 ["GenerationFailed"]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETTABLEKS                       R5 R0 K0 ["previewState"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K1 ["PreviewState"]
       38 GETTABLEKS                       R6 R7 K5 ["Generated"]
       40 JUMPIFEQ                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 GETTABLEKS                       R6 R0 K0 ["previewState"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K1 ["PreviewState"]
       49 GETTABLEKS                       R7 R8 K6 ["Publishing"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETTABLEKS                       R7 R0 K0 ["previewState"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K1 ["PreviewState"]
       60 GETTABLEKS                       R8 R9 K7 ["PublishFailed"]
       62 JUMPIFEQ                         R7 R8 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 GETTABLEKS                       R8 R0 K0 ["previewState"]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R10 R11 K1 ["PreviewState"]
       71 GETTABLEKS                       R9 R10 K8 ["Published"]
       73 JUMPIFEQ                         R8 R9 ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 GETTABLEKS                       R9 R0 K0 ["previewState"]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K1 ["PreviewState"]
       82 GETTABLEKS                       R10 R11 K9 ["Inserting"]
       84 JUMPIFEQ                         R9 R10 ; [+2]
       86 LOADB                            R8 0 +1
       87 LOADB                            R8 1
       88 GETTABLEKS                       R10 R0 K0 ["previewState"]
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R12 R13 K1 ["PreviewState"]
       93 GETTABLEKS                       R11 R12 K10 ["InsertFailed"]
       95 JUMPIFEQ                         R10 R11 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 GETTABLEKS                       R11 R0 K11 ["failureReason"]
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R13 R14 K12 ["FailureReason"]
      104 GETTABLEKS                       R12 R13 K13 ["GenerationCanceled"]
      106 JUMPIFEQ                         R11 R12 ; [+2]
      108 LOADB                            R10 0 +1
      109 LOADB                            R10 1
      110 GETUPVAL                         R11 1
      111 MOVE                             R12 R0
      112 CALL                             R11 1 2
      113 GETUPVAL                         R13 2
      114 MOVE                             R14 R0
      115 CALL                             R13 1 2
      116 GETUPVAL                         R16 3
      117 GETTABLEKS                       R15 R16 K14 ["useCallback"]
      119 NEWCLOSURE                       R16 P0
      120 CAPTURE                          VAL R0
      121 NEWTABLE                         R17 0 1
      123 GETTABLEKS                       R18 R0 K15 ["cancelGeneration"]
      125 SETLIST                          R17 R18 1 [1]
      127 CALL                             R15 2 1
      128 GETUPVAL                         R17 3
      129 GETTABLEKS                       R16 R17 K14 ["useCallback"]
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
      148 GETUPVAL                         R20 3
      149 GETTABLEKS                       R19 R20 K14 ["useCallback"]
      151 DUPCLOSURE                       R20 K19 [PROTO_11]
      152 CAPTURE                          UPVAL U6
      153 NEWTABLE                         R21 0 0
      155 CALL                             R19 2 1
      156 GETUPVAL                         R21 3
      157 GETTABLEKS                       R20 R21 K20 ["useMemo"]
      159 DUPCLOSURE                       R21 K21 [PROTO_12]
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          UPVAL U8
      163 NEWTABLE                         R22 0 1
      165 GETUPVAL                         R24 7
      166 GETTABLEKS                       R23 R24 K22 ["locale"]
      168 SETLIST                          R22 R23 1 [1]
      170 CALL                             R20 2 1
      171 LOADNIL                          R21
      172 GETTABLEKS                       R22 R0 K0 ["previewState"]
      174 GETUPVAL                         R25 0
      175 GETTABLEKS                       R24 R25 K1 ["PreviewState"]
      177 GETTABLEKS                       R23 R24 K4 ["GenerationFailed"]
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
      232 GETUPVAL                         R32 12
      233 GETTABLEKS                       R31 R32 K28 ["assign"]
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
      295 GETUPVAL                         R44 17
      296 GETTABLEKS                       R43 R44 K53 ["Enums"]
      298 GETTABLEKS                       R42 R43 K54 ["ChipSize"]
      300 GETTABLEKS                       R41 R42 K55 ["Small"]
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
      345 GETUPVAL                         R39 17
      346 GETTABLEKS                       R38 R39 K53 ["Enums"]
      348 GETTABLEKS                       R37 R38 K65 ["Radius"]
      350 GETTABLEKS                       R36 R37 K55 ["Small"]
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
      395 GETUPVAL                         R38 21
      396 GETTABLEKS                       R37 R38 K78 ["MeshGen"]
      398 GETTABLEKS                       R36 R37 K79 ["PreviewImage"]
      400 SETTABLEKS                       R36 R35 K68 ["testId"]
      402 DUPTABLE                         R36 K82 [{"LastPreview", "NextPreview"}]
      403 GETUPVAL                         R37 10
      404 GETUPVAL                         R38 22
      405 DUPTABLE                         R39 K84 [{"icon", "size", "onActivated", "LayoutOrder"}]
      406 GETUPVAL                         R43 17
      407 GETTABLEKS                       R42 R43 K53 ["Enums"]
      409 GETTABLEKS                       R41 R42 K85 ["IconName"]
      411 GETTABLEKS                       R40 R41 K86 ["ChevronLargeLeft"]
      413 SETTABLEKS                       R40 R39 K83 ["icon"]
      415 GETUPVAL                         R43 17
      416 GETTABLEKS                       R42 R43 K53 ["Enums"]
      418 GETTABLEKS                       R41 R42 K87 ["InputSize"]
      420 GETTABLEKS                       R40 R41 K55 ["Small"]
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
      438 GETUPVAL                         R43 17
      439 GETTABLEKS                       R42 R43 K53 ["Enums"]
      441 GETTABLEKS                       R41 R42 K85 ["IconName"]
      443 GETTABLEKS                       R40 R41 K89 ["ChevronLargeRight"]
      445 SETTABLEKS                       R40 R39 K83 ["icon"]
      447 GETUPVAL                         R43 17
      448 GETTABLEKS                       R42 R43 K53 ["Enums"]
      450 GETTABLEKS                       R41 R42 K87 ["InputSize"]
      452 GETTABLEKS                       R40 R41 K55 ["Small"]
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
      508 GETUPVAL                         R51 17
      509 GETTABLEKS                       R50 R51 K53 ["Enums"]
      511 GETTABLEKS                       R49 R50 K85 ["IconName"]
      513 GETTABLEKS                       R48 R49 K104 ["TriangleExclamation"]
      515 SETTABLEKS                       R48 R47 K102 ["name"]
      517 GETUPVAL                         R51 17
      518 GETTABLEKS                       R50 R51 K53 ["Enums"]
      520 GETTABLEKS                       R49 R50 K105 ["IconSize"]
      522 GETTABLEKS                       R48 R49 K106 ["Medium"]
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
      594 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      596 GETTABLEKS                       R44 R45 K122 ["Cancel"]
      598 SETTABLEKS                       R44 R43 K45 ["text"]
      600 GETUPVAL                         R47 17
      601 GETTABLEKS                       R46 R47 K53 ["Enums"]
      603 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      605 GETTABLEKS                       R44 R45 K55 ["Small"]
      607 SETTABLEKS                       R44 R43 K49 ["size"]
      609 GETUPVAL                         R47 17
      610 GETTABLEKS                       R46 R47 K53 ["Enums"]
      612 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      614 GETTABLEKS                       R44 R45 K124 ["Standard"]
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
      632 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      634 GETTABLEKS                       R44 R45 K125 ["Regenerate"]
      636 SETTABLEKS                       R44 R43 K45 ["text"]
      638 GETUPVAL                         R47 17
      639 GETTABLEKS                       R46 R47 K53 ["Enums"]
      641 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      643 GETTABLEKS                       R44 R45 K55 ["Small"]
      645 SETTABLEKS                       R44 R43 K49 ["size"]
      647 GETUPVAL                         R47 17
      648 GETTABLEKS                       R46 R47 K53 ["Enums"]
      650 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      652 GETTABLEKS                       R44 R45 K124 ["Standard"]
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
      671 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      673 GETTABLEKS                       R44 R45 K128 ["TryAgain"]
      675 JUMP                             ; [+4]
      676 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      678 GETTABLEKS                       R44 R45 K129 ["Publish"]
      680 SETTABLEKS                       R44 R43 K45 ["text"]
      682 GETUPVAL                         R47 17
      683 GETTABLEKS                       R46 R47 K53 ["Enums"]
      685 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      687 GETTABLEKS                       R44 R45 K55 ["Small"]
      689 SETTABLEKS                       R44 R43 K49 ["size"]
      691 GETUPVAL                         R47 17
      692 GETTABLEKS                       R46 R47 K53 ["Enums"]
      694 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      696 GETTABLEKS                       R44 R45 K130 ["Emphasis"]
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
      717 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      719 GETTABLEKS                       R44 R45 K128 ["TryAgain"]
      721 JUMP                             ; [+4]
      722 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      724 GETTABLEKS                       R44 R45 K131 ["AddToPlace"]
      726 SETTABLEKS                       R44 R43 K45 ["text"]
      728 GETUPVAL                         R47 17
      729 GETTABLEKS                       R46 R47 K53 ["Enums"]
      731 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      733 GETTABLEKS                       R44 R45 K55 ["Small"]
      735 SETTABLEKS                       R44 R43 K49 ["size"]
      737 GETUPVAL                         R47 17
      738 GETTABLEKS                       R46 R47 K53 ["Enums"]
      740 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      742 GETTABLEKS                       R44 R45 K130 ["Emphasis"]
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
        3 GETTABLEKS                       R2 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R2 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["Preparing"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+15]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K4 ["join"]
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
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K6 ["ShowPreview"]
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
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R1 R2 ; [+12]
       15 DUPTABLE                         R1 K6 [{"type", "mode"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K7 ["Preparing"]
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 RETURN                           R1 1
       26 DUPTABLE                         R1 K16 [{"type", "mode", "name", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta"}]
       27 GETTABLEKS                       R2 R0 K5 ["type"]
       29 SETTABLEKS                       R2 R1 K5 ["type"]
       31 GETTABLEKS                       R2 R0 K3 ["mode"]
       33 SETTABLEKS                       R2 R1 K3 ["mode"]
       35 GETTABLEKS                       R2 R0 K8 ["name"]
       37 SETTABLEKS                       R2 R1 K8 ["name"]
       39 GETTABLEKS                       R2 R0 K9 ["previewImages"]
       41 SETTABLEKS                       R2 R1 K9 ["previewImages"]
       43 GETTABLEKS                       R2 R0 K10 ["previewState"]
       45 SETTABLEKS                       R2 R1 K10 ["previewState"]
       47 GETTABLEKS                       R2 R0 K11 ["failureReason"]
       49 SETTABLEKS                       R2 R1 K11 ["failureReason"]
       51 GETTABLEKS                       R2 R0 K12 ["generationRetryCount"]
       53 SETTABLEKS                       R2 R1 K12 ["generationRetryCount"]
       55 GETTABLEKS                       R2 R0 K13 ["publishAttemptCount"]
       57 SETTABLEKS                       R2 R1 K13 ["publishAttemptCount"]
       59 GETTABLEKS                       R2 R0 K14 ["validatedArgs"]
       61 SETTABLEKS                       R2 R1 K14 ["validatedArgs"]
       63 GETTABLEKS                       R2 R0 K15 ["generationMeta"]
       65 SETTABLEKS                       R2 R1 K15 ["generationMeta"]
       67 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R1 R2 ; [+15]
       15 DUPTABLE                         R1 K7 [{"type", "mode", "isError"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K8 ["Preparing"]
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K6 ["isError"]
       28 RETURN                           R1 1
       29 DUPTABLE                         R1 K26 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       30 GETTABLEKS                       R2 R0 K5 ["type"]
       32 SETTABLEKS                       R2 R1 K5 ["type"]
       34 GETTABLEKS                       R2 R0 K3 ["mode"]
       36 SETTABLEKS                       R2 R1 K3 ["mode"]
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K9 ["expanded"]
       41 GETTABLEKS                       R2 R0 K10 ["name"]
       43 SETTABLEKS                       R2 R1 K10 ["name"]
       45 GETTABLEKS                       R2 R0 K10 ["name"]
       47 SETTABLEKS                       R2 R1 K11 ["displayName"]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K12 ["className"]
       52 GETTABLEKS                       R2 R0 K13 ["previewImages"]
       54 SETTABLEKS                       R2 R1 K13 ["previewImages"]
       56 GETTABLEKS                       R2 R0 K14 ["previewState"]
       58 SETTABLEKS                       R2 R1 K14 ["previewState"]
       60 GETTABLEKS                       R2 R0 K15 ["failureReason"]
       62 SETTABLEKS                       R2 R1 K15 ["failureReason"]
       64 GETTABLEKS                       R2 R0 K16 ["generationRetryCount"]
       66 SETTABLEKS                       R2 R1 K16 ["generationRetryCount"]
       68 GETTABLEKS                       R2 R0 K17 ["publishAttemptCount"]
       70 SETTABLEKS                       R2 R1 K17 ["publishAttemptCount"]
       72 GETTABLEKS                       R2 R0 K18 ["validatedArgs"]
       74 SETTABLEKS                       R2 R1 K18 ["validatedArgs"]
       76 GETTABLEKS                       R2 R0 K19 ["generationMeta"]
       78 SETTABLEKS                       R2 R1 K19 ["generationMeta"]
       80 GETUPVAL                         R3 2
       81 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
       83 LOADK                            R3 K20 ["retryGeneration"]
       84 CALL                             R2 1 1
       85 SETTABLEKS                       R2 R1 K20 ["retryGeneration"]
       87 GETUPVAL                         R3 2
       88 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
       90 LOADK                            R3 K21 ["cancelGeneration"]
       91 CALL                             R2 1 1
       92 SETTABLEKS                       R2 R1 K21 ["cancelGeneration"]
       94 GETUPVAL                         R3 2
       95 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
       97 LOADK                            R3 K22 ["publishAssets"]
       98 CALL                             R2 1 1
       99 SETTABLEKS                       R2 R1 K22 ["publishAssets"]
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
      104 LOADK                            R3 K23 ["insertAssets"]
      105 CALL                             R2 1 1
      106 SETTABLEKS                       R2 R1 K23 ["insertAssets"]
      108 LOADB                            R2 0
      109 SETTABLEKS                       R2 R1 K24 ["shouldShowChip"]
      111 GETUPVAL                         R3 2
      112 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
      114 LOADK                            R3 K25 ["onChipClicked"]
      115 CALL                             R2 1 1
      116 SETTABLEKS                       R2 R1 K25 ["onChipClicked"]
      118 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Guest"]
       25 GETTABLEKS                       R4 R5 K11 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["MarkdownText"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R8 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R9 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R10 K16 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R11 K18 ["TestIds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K19 ["Resources"]
       74 GETTABLEKS                       R12 R13 K20 ["Localization"]
       76 GETTABLEKS                       R11 R12 K21 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       88 GETTABLEKS                       R13 R14 K24 ["useClassIcon"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K23 ["Hooks"]
       95 GETTABLEKS                       R14 R15 K25 ["useContentPropState"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      102 GETTABLEKS                       R15 R16 K26 ["useWrappingIndex"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K1 [script]
      107 LOADK                            R17 K27 ["MeshGen"]
      108 NAMECALL                         R15 R15 K3 ["FindFirstAncestor"]
      110 CALL                             R15 2 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R15 K28 ["MeshGenConstants"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R15 K29 ["MeshGenTypes"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R20 R0 K30 ["Flags"]
      125 GETTABLEKS                       R19 R20 K31 ["FFlagAssistantMultipleChatPersistence"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K5 [require]
      130 GETTABLEKS                       R21 R0 K30 ["Flags"]
      132 GETTABLEKS                       R20 R21 K32 ["FIntConvAIMeshGenGenerationRetryLimit"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R22 R0 K30 ["Flags"]
      139 GETTABLEKS                       R21 R22 K33 ["FIntConvAIMeshGenPublishAttemptLimit"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K5 [require]
      144 GETTABLEKS                       R23 R0 K30 ["Flags"]
      146 GETTABLEKS                       R22 R23 K34 ["FStringConvAIMeshGenModerationUrl"]
      148 CALL                             R21 1 1
      149 GETTABLEKS                       R22 R4 K35 ["Button"]
      151 GETTABLEKS                       R23 R4 K36 ["Chip"]
      153 GETTABLEKS                       R24 R4 K37 ["Icon"]
      155 GETTABLEKS                       R25 R4 K38 ["IconButton"]
      157 GETTABLEKS                       R26 R4 K39 ["Image"]
      159 GETTABLEKS                       R27 R4 K40 ["Skeleton"]
      161 GETTABLEKS                       R28 R4 K41 ["Text"]
      163 GETTABLEKS                       R29 R4 K42 ["View"]
      165 GETTABLEKS                       R30 R7 K43 ["createNextOrder"]
      167 GETTABLEKS                       R31 R6 K44 ["createElement"]
      169 GETTABLEKS                       R32 R16 K45 ["Enums"]
      171 GETTABLEKS                       R33 R16 K46 ["PREVIEW_HEIGHT"]
      173 DUPTABLE                         R34 K49 [{"Preparing", "ShowPreview"}]
      174 LOADK                            R35 K47 ["Preparing"]
      175 SETTABLEKS                       R35 R34 K47 ["Preparing"]
      177 LOADK                            R35 K48 ["ShowPreview"]
      178 SETTABLEKS                       R35 R34 K48 ["ShowPreview"]
      180 DUPCLOSURE                       R35 K50 [PROTO_0]
      181 CAPTURE                          VAL R30
      182 CAPTURE                          VAL R31
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R9
      185 DUPCLOSURE                       R36 K51 [PROTO_3]
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R30
      189 CAPTURE                          VAL R31
      190 CAPTURE                          VAL R35
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R28
      193 CAPTURE                          VAL R8
      194 DUPCLOSURE                       R37 K52 [PROTO_5]
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R19
      198 DUPCLOSURE                       R38 K53 [PROTO_7]
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R20
      202 DUPCLOSURE                       R39 K54 [PROTO_8]
      203 CAPTURE                          VAL R14
      204 DUPCLOSURE                       R40 K55 [PROTO_13]
      205 CAPTURE                          VAL R32
      206 CAPTURE                          VAL R37
      207 CAPTURE                          VAL R38
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R30
      215 CAPTURE                          VAL R31
      216 CAPTURE                          VAL R35
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R29
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R33
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R22
      231 DUPCLOSURE                       R41 K56 [PROTO_14]
      232 CAPTURE                          VAL R34
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R31
      235 CAPTURE                          VAL R36
      236 CAPTURE                          VAL R40
      237 DUPCLOSURE                       R42 K57 [PROTO_15]
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R34
      240 DUPCLOSURE                       R43 K58 [PROTO_16]
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R34
      243 CAPTURE                          VAL R7
      244 DUPTABLE                         R44 K63 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      245 LOADK                            R45 K27 ["MeshGen"]
      246 SETTABLEKS                       R45 R44 K59 ["Type"]
      248 GETTABLEKS                       R45 R6 K64 ["memo"]
      250 MOVE                             R46 R41
      251 CALL                             R45 1 1
      252 SETTABLEKS                       R45 R44 K60 ["ContentWidget"]
      254 DUPTABLE                         R45 K67 [{"serialize", "deserialize"}]
      255 SETTABLEKS                       R42 R45 K65 ["serialize"]
      257 SETTABLEKS                       R43 R45 K66 ["deserialize"]
      259 SETTABLEKS                       R45 R44 K61 ["Serialization"]
      261 SETTABLEKS                       R34 R44 K62 ["Modes"]
      263 RETURN                           R44 1
