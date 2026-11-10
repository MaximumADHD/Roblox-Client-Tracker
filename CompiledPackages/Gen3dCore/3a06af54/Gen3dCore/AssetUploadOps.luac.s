PROTO_0:
        0 GETIMPORT                        R2 K1 [pcall]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 2
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R3 1
        7 DUPTABLE                         R4 K5 [{["success"] = False, ["errorDetails"]}]
        8 DUPTABLE                         R5 K9 [{["kind"] = "Network", ["networkError"]}]
        9 FASTCALL1                        TOSTRING R3 ; [+3]
       10 MOVE                             R7 R3
       11 GETIMPORT                        R6 K11 [tostring]
       13 CALL                             R6 1 1
       14 SETTABLEKS                       R6 R5 K8 ["networkError"]
       16 SETTABLEKS                       R5 R4 K4 ["errorDetails"]
       18 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["pollIntervalSec"]
        2 JUMPIF                           R3 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["POLL_INTERVAL_SEC"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R5 R0 K2 ["postStartAssetUploadAsync"]
        9 DUPTABLE                         R6 K6 [{"robloxctxAuthenticatedUserid", "robloxApiKey", "body"}]
       10 GETTABLEKS                       R7 R1 K7 ["userId"]
       12 SETTABLEKS                       R7 R6 K3 ["robloxctxAuthenticatedUserid"]
       14 GETTABLEKS                       R7 R1 K4 ["robloxApiKey"]
       16 SETTABLEKS                       R7 R6 K4 ["robloxApiKey"]
       18 DUPTABLE                         R7 K10 [{"generationId", "universeId"}]
       19 GETTABLEKS                       R8 R1 K8 ["generationId"]
       21 SETTABLEKS                       R8 R7 K8 ["generationId"]
       23 GETTABLEKS                       R8 R1 K9 ["universeId"]
       25 SETTABLEKS                       R8 R7 K9 ["universeId"]
       27 SETTABLEKS                       R7 R6 K5 ["body"]
       29 CALL                             R4 2 1
       30 GETTABLEKS                       R5 R4 K11 ["success"]
       32 JUMPIF                           R5 ; [+10]
       33 GETTABLEKS                       R5 R2 K12 ["throwError"]
       35 MOVE                             R6 R4
       36 LOADK                            R7 K13 ["UploadAsset.postStartAssetUploadAsync"]
       37 CALL                             R5 2 0
       38 GETIMPORT                        R5 K15 [error]
       40 LOADK                            R6 K16 ["UploadAsset.postStartAssetUploadAsync failed"]
       41 LOADN                            R7 0
       42 CALL                             R5 2 0
       43 GETTABLEKS                       R5 R4 K17 ["data"]
       45 GETTABLEKS                       R5 R5 K18 ["uploadId"]
       47 FASTCALL2K                       ASSERT R5 K19 ; [+5]
       49 MOVE                             R7 R5
       50 LOADK                            R8 K19 ["Expected uploadId in response from UploadAsset.postStartAssetUploadAsync"]
       51 GETIMPORT                        R6 K21 [assert]
       53 CALL                             R6 2 0
       54 GETTABLEKS                       R6 R2 K22 ["debugLog"]
       56 JUMPIFNOT                        R6 ; [+10]
       57 GETIMPORT                        R6 K24 [print]
       59 LOADK                            R7 K25 ["[AssetUploadOps] started: generationId=%* uploadId=%*"]
       60 GETTABLEKS                       R9 R1 K8 ["generationId"]
       62 MOVE                             R10 R5
       63 NAMECALL                         R7 R7 K26 ["format"]
       65 CALL                             R7 3 1
       66 CALL                             R6 1 0
       67 LOADN                            R8 1
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K27 ["MAX_POLL_ATTEMPTS"]
       71 LOADN                            R7 1
       72 FORNPREP                         R6
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R10 R0 K28 ["getAssetUploadStatusAsync"]
       76 DUPTABLE                         R11 K29 [{"robloxctxAuthenticatedUserid", "uploadId", "robloxApiKey"}]
       77 GETTABLEKS                       R12 R1 K7 ["userId"]
       79 SETTABLEKS                       R12 R11 K3 ["robloxctxAuthenticatedUserid"]
       81 SETTABLEKS                       R5 R11 K18 ["uploadId"]
       83 GETTABLEKS                       R12 R1 K4 ["robloxApiKey"]
       85 SETTABLEKS                       R12 R11 K4 ["robloxApiKey"]
       87 CALL                             R9 2 1
       88 GETTABLEKS                       R10 R9 K11 ["success"]
       90 JUMPIFNOT                        R10 ; [+69]
       91 GETTABLEKS                       R10 R9 K17 ["data"]
       93 GETTABLEKS                       R10 R10 K30 ["status"]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K31 ["STATUS_COMPLETED"]
       98 JUMPIFNOTEQ                      R10 R11 ; [+37]
      100 GETTABLEKS                       R11 R9 K17 ["data"]
      102 GETTABLEKS                       R11 R11 K32 ["result"]
      104 JUMPIFNOT                        R11 ; [+3]
      105 GETTABLEKS                       R12 R11 K33 ["assetId"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R12
      109 FASTCALL2K                       ASSERT R12 K34 ; [+5]
      111 MOVE                             R14 R12
      112 LOADK                            R15 K34 ["Expected assetId in response from UploadAsset.getAssetUploadStatusAsync"]
      113 GETIMPORT                        R13 K21 [assert]
      115 CALL                             R13 2 0
      116 GETTABLEKS                       R13 R2 K22 ["debugLog"]
      118 JUMPIFNOT                        R13 ; [+9]
      119 GETIMPORT                        R13 K24 [print]
      121 LOADK                            R14 K35 ["[AssetUploadOps] %* completed: assetId=%*"]
      122 MOVE                             R16 R5
      123 MOVE                             R17 R12
      124 NAMECALL                         R14 R14 K26 ["format"]
      126 CALL                             R14 3 1
      127 CALL                             R13 1 0
      128 DUPTABLE                         R13 K36 [{"assetId", "generationId"}]
      129 SETTABLEKS                       R12 R13 K33 ["assetId"]
      131 GETTABLEKS                       R14 R1 K8 ["generationId"]
      133 SETTABLEKS                       R14 R13 K8 ["generationId"]
      135 RETURN                           R13 1
      136 GETUPVAL                         R11 0
      137 GETTABLEKS                       R11 R11 K37 ["STATUS_FAILED"]
      139 JUMPIFEQ                         R10 R11 ; [+6]
      141 GETUPVAL                         R11 0
      142 GETTABLEKS                       R11 R11 K38 ["STATUS_CANCELED"]
      144 JUMPIFNOTEQ                      R10 R11 ; [+38]
      146 GETIMPORT                        R11 K15 [error]
      148 LOADK                            R12 K39 ["Asset upload %* %*"]
      149 MOVE                             R14 R5
      150 GETIMPORT                        R15 K42 [string.lower]
      152 MOVE                             R16 R10
      153 CALL                             R15 1 1
      154 NAMECALL                         R12 R12 K26 ["format"]
      156 CALL                             R12 3 1
      157 LOADN                            R13 0
      158 CALL                             R11 2 0
      159 JUMP                             ; [+23]
      160 GETTABLEKS                       R10 R9 K43 ["httpDetails"]
      162 JUMPIFEQKNIL                     R10 ; [+12]
      164 GETTABLEKS                       R10 R2 K12 ["throwError"]
      166 MOVE                             R11 R9
      167 LOADK                            R12 K44 ["UploadAsset.getAssetUploadStatusAsync"]
      168 CALL                             R10 2 0
      169 GETIMPORT                        R10 K15 [error]
      171 LOADK                            R11 K45 ["UploadAsset.getAssetUploadStatusAsync failed"]
      172 LOADN                            R12 0
      173 CALL                             R10 2 0
      174 JUMP                             ; [+8]
      175 GETIMPORT                        R10 K47 [warn]
      177 LOADK                            R11 K48 ["[Gen3d] asset upload %* transient poll failure"]
      178 MOVE                             R13 R5
      179 NAMECALL                         R11 R11 K26 ["format"]
      181 CALL                             R11 2 1
      182 CALL                             R10 1 0
      183 GETIMPORT                        R10 K51 [task.wait]
      185 MOVE                             R11 R3
      186 CALL                             R10 1 0
      187 FORNLOOP                         R6
      188 GETIMPORT                        R6 K15 [error]
      190 LOADK                            R7 K52 ["Asset upload %* timed out after %* attempts"]
      191 MOVE                             R9 R5
      192 GETUPVAL                         R10 0
      193 GETTABLEKS                       R10 R10 K27 ["MAX_POLL_ATTEMPTS"]
      195 NAMECALL                         R7 R7 K26 ["format"]
      197 CALL                             R7 3 1
      198 LOADN                            R8 0
      199 CALL                             R6 2 0
      200 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["HostSurface"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 NEWTABLE                         R4 1 0
       20 DUPCLOSURE                       R5 K9 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R5 R4 K10 ["publishAsync"]
       25 RETURN                           R4 1
