PROTO_0:
        0 LOADK                            R1 K0 ["MeshGen-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["size.%* must be defined"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 LOADN                            R4 0
       13 CALL                             R2 2 0
       14 FASTCALL1                        TONUMBER R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K5 [tonumber]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+11]
       21 GETIMPORT                        R3 K1 [error]
       23 LOADK                            R5 K6 ["size.%* must be a number"]
       24 MOVE                             R7 R0
       25 NAMECALL                         R5 R5 K3 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 LOADN                            R5 0
       30 CALL                             R3 2 0
       31 LOADN                            R3 0
       32 JUMPIFNOTLE                      R2 R3 ; [+11]
       34 GETIMPORT                        R3 K1 [error]
       36 LOADK                            R5 K7 ["size.%* must be a positive number"]
       37 MOVE                             R7 R0
       38 NAMECALL                         R5 R5 K3 ["format"]
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 LOADN                            R5 0
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 GETTABLEKS                       R2 R0 K7 ["hintImage"]
       19 GETUPVAL                         R3 0
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+19]
       22 GETTABLEKS                       R3 R0 K8 ["promptMode"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K9 ["PromptMode"]
       27 GETTABLEKS                       R4 R4 K10 ["Text"]
       29 JUMPIFNOTEQ                      R3 R4 ; [+3]
       31 LOADNIL                          R2
       32 JUMP                             ; [+8]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K9 ["PromptMode"]
       36 GETTABLEKS                       R4 R4 K11 ["Image"]
       38 JUMPIFNOTEQ                      R3 R4 ; [+2]
       40 LOADK                            R1 K12 [""]
       41 FASTCALL1                        TYPEOF R1 ; [+3]
       42 MOVE                             R6 R1
       43 GETIMPORT                        R5 K1 [typeof]
       45 CALL                             R5 1 1
       46 JUMPIFNOTEQKS                    R5 K13 ["string"] ; [+6]
       48 LOADB                            R4 1
       49 LENGTH                           R5 R1
       50 LOADN                            R6 0
       51 JUMPIFLT                         R6 R5 ; [+5]
       53 JUMPIFNOTEQKNIL                  R2 ; [+2]
       55 LOADB                            R4 0 +1
       56 LOADB                            R4 1
       57 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       59 LOADK                            R5 K14 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       60 GETIMPORT                        R3 K5 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R3 R0 K15 ["size"]
       65 LOADNIL                          R4
       66 JUMPIFEQKNIL                     R3 ; [+116]
       68 FASTCALL1                        TYPEOF R3 ; [+3]
       69 MOVE                             R8 R3
       70 GETIMPORT                        R7 K1 [typeof]
       72 CALL                             R7 1 1
       73 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 FASTCALL2K                       ASSERT R6 K16 ; [+4]
       79 LOADK                            R7 K16 ["size must be a table"]
       80 GETIMPORT                        R5 K5 [assert]
       82 CALL                             R5 2 0
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          VAL R3
       85 GETTABLEKS                       R6 R3 K17 ["x"]
       87 JUMPIFNOTEQKNIL                  R6 ; [+6]
       89 GETIMPORT                        R7 K19 [error]
       91 LOADK                            R8 K20 ["size.x must be defined"]
       92 LOADN                            R9 0
       93 CALL                             R7 2 0
       94 FASTCALL1                        TONUMBER R6 ; [+3]
       95 MOVE                             R8 R6
       96 GETIMPORT                        R7 K22 [tonumber]
       98 CALL                             R7 1 1
       99 JUMPIFNOTEQKNIL                  R7 ; [+6]
      101 GETIMPORT                        R8 K19 [error]
      103 LOADK                            R9 K23 ["size.x must be a number"]
      104 LOADN                            R10 0
      105 CALL                             R8 2 0
      106 LOADN                            R8 0
      107 JUMPIFNOTLE                      R7 R8 ; [+6]
      109 GETIMPORT                        R8 K19 [error]
      111 LOADK                            R9 K24 ["size.x must be a positive number"]
      112 LOADN                            R10 0
      113 CALL                             R8 2 0
      114 GETTABLEKS                       R6 R3 K25 ["y"]
      116 JUMPIFNOTEQKNIL                  R6 ; [+6]
      118 GETIMPORT                        R7 K19 [error]
      120 LOADK                            R8 K26 ["size.y must be defined"]
      121 LOADN                            R9 0
      122 CALL                             R7 2 0
      123 FASTCALL1                        TONUMBER R6 ; [+3]
      124 MOVE                             R8 R6
      125 GETIMPORT                        R7 K22 [tonumber]
      127 CALL                             R7 1 1
      128 JUMPIFNOTEQKNIL                  R7 ; [+6]
      130 GETIMPORT                        R8 K19 [error]
      132 LOADK                            R9 K27 ["size.y must be a number"]
      133 LOADN                            R10 0
      134 CALL                             R8 2 0
      135 LOADN                            R8 0
      136 JUMPIFNOTLE                      R7 R8 ; [+6]
      138 GETIMPORT                        R8 K19 [error]
      140 LOADK                            R9 K28 ["size.y must be a positive number"]
      141 LOADN                            R10 0
      142 CALL                             R8 2 0
      143 GETTABLEKS                       R6 R3 K29 ["z"]
      145 JUMPIFNOTEQKNIL                  R6 ; [+6]
      147 GETIMPORT                        R7 K19 [error]
      149 LOADK                            R8 K30 ["size.z must be defined"]
      150 LOADN                            R9 0
      151 CALL                             R7 2 0
      152 FASTCALL1                        TONUMBER R6 ; [+3]
      153 MOVE                             R8 R6
      154 GETIMPORT                        R7 K22 [tonumber]
      156 CALL                             R7 1 1
      157 JUMPIFNOTEQKNIL                  R7 ; [+6]
      159 GETIMPORT                        R8 K19 [error]
      161 LOADK                            R9 K31 ["size.z must be a number"]
      162 LOADN                            R10 0
      163 CALL                             R8 2 0
      164 LOADN                            R8 0
      165 JUMPIFNOTLE                      R7 R8 ; [+6]
      167 GETIMPORT                        R8 K19 [error]
      169 LOADK                            R9 K32 ["size.z must be a positive number"]
      170 LOADN                            R10 0
      171 CALL                             R8 2 0
      172 GETTABLEKS                       R7 R3 K17 ["x"]
      174 GETTABLEKS                       R8 R3 K25 ["y"]
      176 GETTABLEKS                       R9 R3 K29 ["z"]
      178 FASTCALL                         VECTOR ; [+2]
      179 GETIMPORT                        R6 K35 [Vector3.new]
      181 CALL                             R6 3 1
      182 MOVE                             R4 R6
      183 GETTABLEKS                       R5 R0 K36 ["maxTriangles"]
      185 JUMPIFEQKNIL                     R5 ; [+33]
      187 FASTCALL1                        TYPEOF R5 ; [+3]
      188 MOVE                             R9 R5
      189 GETIMPORT                        R8 K1 [typeof]
      191 CALL                             R8 1 1
      192 JUMPIFEQKS                       R8 K37 ["number"] ; [+2]
      194 LOADB                            R7 0 +1
      195 LOADB                            R7 1
      196 FASTCALL2K                       ASSERT R7 K38 ; [+4]
      198 LOADK                            R8 K38 ["maxTriangles must be a number"]
      199 GETIMPORT                        R6 K5 [assert]
      201 CALL                             R6 2 0
      202 GETUPVAL                         R6 2
      203 JUMPIFLT                         R5 R6 ; [+4]
      205 GETUPVAL                         R6 3
      206 JUMPIFNOTLT                      R6 R5 ; [+12]
      208 GETIMPORT                        R6 K19 [error]
      210 LOADK                            R8 K39 ["maxTriangles must be between %* and %* (inclusive)"]
      211 GETUPVAL                         R10 2
      212 GETUPVAL                         R11 3
      213 NAMECALL                         R8 R8 K40 ["format"]
      215 CALL                             R8 3 1
      216 MOVE                             R7 R8
      217 LOADN                            R8 0
      218 CALL                             R6 2 0
      219 LOADNIL                          R6
      220 LOADNIL                          R7
      221 GETTABLEKS                       R8 R0 K41 ["segmentationMode"]
      223 JUMPIFEQKNIL                     R8 ; [+30]
      225 LOADB                            R9 1
      226 GETTABLEKS                       R10 R0 K41 ["segmentationMode"]
      228 GETUPVAL                         R11 1
      229 GETTABLEKS                       R11 R11 K42 ["SegmentationMode"]
      231 GETTABLEKS                       R11 R11 K43 ["Functional"]
      233 JUMPIFEQ                         R10 R11 ; [+12]
      235 GETTABLEKS                       R10 R0 K41 ["segmentationMode"]
      237 GETUPVAL                         R11 1
      238 GETTABLEKS                       R11 R11 K42 ["SegmentationMode"]
      240 GETTABLEKS                       R11 R11 K44 ["Material"]
      242 JUMPIFEQ                         R10 R11 ; [+2]
      244 LOADB                            R9 0 +1
      245 LOADB                            R9 1
      246 FASTCALL2K                       ASSERT R9 K45 ; [+4]
      248 LOADK                            R10 K45 ["segmentationMode must be 'functional' or 'material'"]
      249 GETIMPORT                        R8 K5 [assert]
      251 CALL                             R8 2 0
      252 GETTABLEKS                       R7 R0 K41 ["segmentationMode"]
      254 GETUPVAL                         R8 4
      255 CALL                             R8 0 1
      256 JUMPIFNOT                        R8 ; [+22]
      257 GETTABLEKS                       R8 R0 K46 ["segmentation"]
      259 JUMPIF                           R8 ; [+8]
      260 GETUPVAL                         R8 5
      261 GETTABLEKS                       R8 R8 K47 ["inferUISegmentation"]
      263 GETTABLEKS                       R9 R0 K48 ["suggestSegmentation"]
      265 GETTABLEKS                       R10 R0 K49 ["partNames"]
      267 CALL                             R8 2 1
      268 GETUPVAL                         R9 5
      269 GETTABLEKS                       R9 R9 K50 ["resolveSegmentationAsync"]
      271 MOVE                             R10 R8
      272 GETTABLEKS                       R11 R0 K49 ["partNames"]
      274 MOVE                             R12 R1
      275 MOVE                             R13 R7
      276 CALL                             R9 4 1
      277 MOVE                             R6 R9
      278 JUMP                             ; [+7]
      279 GETUPVAL                         R8 5
      280 GETTABLEKS                       R8 R8 K51 ["parsePartNames"]
      282 GETTABLEKS                       R9 R0 K49 ["partNames"]
      284 CALL                             R8 1 1
      285 MOVE                             R6 R8
      286 GETTABLEKS                       R8 R0 K7 ["hintImage"]
      288 LOADNIL                          R9
      289 GETUPVAL                         R10 6
      290 CALL                             R10 0 1
      291 JUMPIF                           R10 ; [+10]
      292 DUPTABLE                         R10 K58 [{["generateImage"] = "true", ["multiMeshGenInferenceServiceOverride"], ["imageGenModelOverride"], ["multiTextureImageInput"] = "true", ["enableMeshScaleFactorTensor"] = "true"}]
      293 GETUPVAL                         R11 7
      294 CALL                             R11 0 1
      295 SETTABLEKS                       R11 R10 K54 ["multiMeshGenInferenceServiceOverride"]
      297 GETUPVAL                         R11 8
      298 CALL                             R11 0 1
      299 SETTABLEKS                       R11 R10 K55 ["imageGenModelOverride"]
      301 MOVE                             R9 R10
      302 GETTABLEKS                       R10 R0 K59 ["isManualRun"]
      304 JUMPIFEQKNIL                     R10 ; [+16]
      306 FASTCALL1                        TYPEOF R10 ; [+3]
      307 MOVE                             R14 R10
      308 GETIMPORT                        R13 K1 [typeof]
      310 CALL                             R13 1 1
      311 JUMPIFEQKS                       R13 K60 ["boolean"] ; [+2]
      313 LOADB                            R12 0 +1
      314 LOADB                            R12 1
      315 FASTCALL2K                       ASSERT R12 K61 ; [+4]
      317 LOADK                            R13 K61 ["isManualRun must be a boolean"]
      318 GETIMPORT                        R11 K5 [assert]
      320 CALL                             R11 2 0
      321 GETTABLEKS                       R11 R0 K62 ["selectedInstanceRef"]
      323 LOADNIL                          R12
      324 JUMPIFEQKNIL                     R11 ; [+34]
      326 FASTCALL1                        TYPEOF R11 ; [+3]
      327 MOVE                             R16 R11
      328 GETIMPORT                        R15 K1 [typeof]
      330 CALL                             R15 1 1
      331 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      333 LOADB                            R14 0 +1
      334 LOADB                            R14 1
      335 FASTCALL2K                       ASSERT R14 K63 ; [+4]
      337 LOADK                            R15 K63 ["selectedInstanceRef must be a table"]
      338 GETIMPORT                        R13 K5 [assert]
      340 CALL                             R13 2 0
      341 GETTABLEKS                       R16 R11 K64 ["uniqueId"]
      343 FASTCALL1                        TYPEOF R16 ; [+2]
      344 GETIMPORT                        R15 K1 [typeof]
      346 CALL                             R15 1 1
      347 JUMPIFEQKS                       R15 K13 ["string"] ; [+2]
      349 LOADB                            R14 0 +1
      350 LOADB                            R14 1
      351 FASTCALL2K                       ASSERT R14 K65 ; [+4]
      353 LOADK                            R15 K65 ["selectedInstanceRef.uniqueId must be a string"]
      354 GETIMPORT                        R13 K5 [assert]
      356 CALL                             R13 2 0
      357 GETTABLEKS                       R12 R11 K64 ["uniqueId"]
      359 DUPTABLE                         R13 K68 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      360 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      362 SETTABLEKS                       R4 R13 K15 ["size"]
      364 SETTABLEKS                       R5 R13 K36 ["maxTriangles"]
      366 SETTABLEKS                       R6 R13 K49 ["partNames"]
      368 SETTABLEKS                       R7 R13 K41 ["segmentationMode"]
      370 SETTABLEKS                       R9 R13 K66 ["adminOptions"]
      372 SETTABLEKS                       R8 R13 K7 ["hintImage"]
      374 SETTABLEKS                       R10 R13 K59 ["isManualRun"]
      376 SETTABLEKS                       R12 R13 K67 ["selectedUniqueId"]
      378 RETURN                           R13 1

PROTO_3:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADNIL                          R7
        5 SETTABLE                         R7 R0 R5
        6 FORGLOOP                         R2 1 ; [-3]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["assign"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 LOADNIL                          R8
        5 SETTABLE                         R8 R0 R6
        6 FORGLOOP                         R3 1 ; [-3]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["assign"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 0
       14 MOVE                             R2 R0
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["callArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["contentId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getContentHooks"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["editContent"]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        6 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       13 GETTABLEKS                       R3 R3 K2 ["contentId"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K4 ["editContent"]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        5 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       12 GETTABLEKS                       R3 R3 K2 ["contentId"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K4 ["editContent"]
       21 MOVE                             R6 R1
       22 CALL                             R5 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FailureReasonToPreviewStateMap"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["Invalid failure reason provided"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 SETTABLEKS                       R1 R0 K4 ["previewState"]
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R2 R0 K5 ["failureReason"]
       20 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        6 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       13 GETTABLEKS                       R3 R3 K2 ["contentId"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K4 ["editContent"]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["previewImages"]
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K3 [table.create]
        5 GETUPVAL                         R2 0
        6 LOADK                            R3 K4 [""]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K6 [table.clone]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 SETTABLE                         R4 R2 R3
       15 SETTABLEKS                       R2 R0 K0 ["previewImages"]
       17 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R3 0
        1 LOADN                            R4 1
        2 JUMPIFNOTLE                      R4 R0 ; [+6]
        4 GETUPVAL                         R4 0
        5 JUMPIFLE                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Index out of bounds for preview images"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["callArgs"]
       22 GETTABLEKS                       R3 R3 K4 ["isThirdPartyRequest"]
       24 JUMPIFNOT                        R3 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K3 ["callArgs"]
       29 GETTABLEKS                       R4 R4 K5 ["contentId"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K6 ["getContentHooks"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K7 ["editContent"]
       38 MOVE                             R7 R2
       39 CALL                             R6 1 0
       40 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R5 P3
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NEWCLOSURE                       R6 P4
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 DUPTABLE                         R7 K7 [{"updateWidget", "replaceContent", "setPreviewState", "setFailureReason", "setPreviewImage"}]
       23 SETTABLEKS                       R2 R7 K2 ["updateWidget"]
       25 SETTABLEKS                       R3 R7 K3 ["replaceContent"]
       27 SETTABLEKS                       R4 R7 K4 ["setPreviewState"]
       29 SETTABLEKS                       R5 R7 K5 ["setFailureReason"]
       31 SETTABLEKS                       R6 R7 K6 ["setPreviewImage"]
       33 RETURN                           R7 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["generateAssetsAsync"]
        5 DUPTABLE                         R1 K10 [{"requestId", "textPrompt", "size", "maxTriangles", "partNames", "adminOptions", "hintImage", "selectedUniqueId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["textPrompt"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K4 ["size"]
       17 SETTABLEKS                       R2 R1 K4 ["size"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K5 ["maxTriangles"]
       22 SETTABLEKS                       R2 R1 K5 ["maxTriangles"]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K6 ["partNames"]
       27 SETTABLEKS                       R2 R1 K6 ["partNames"]
       29 GETUPVAL                         R3 4
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+2]
       32 LOADNIL                          R2
       33 JUMP                             ; [+3]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K7 ["adminOptions"]
       37 SETTABLEKS                       R2 R1 K7 ["adminOptions"]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K8 ["hintImage"]
       42 SETTABLEKS                       R2 R1 K8 ["hintImage"]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K9 ["selectedUniqueId"]
       47 SETTABLEKS                       R2 R1 K9 ["selectedUniqueId"]
       49 CALL                             R0 1 1
       50 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R1 K1 ["Generated"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R5 R2 K0 ["type"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R6 R6 K2 ["Initialized"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Generation meta must be of type 'Initialized'"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K6 ["setPreviewState"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["PreviewState"]
       25 GETTABLEKS                       R5 R5 K8 ["GeneratingMesh"]
       27 CALL                             R4 1 0
       28 GETTABLEKS                       R4 R1 K9 ["textPrompt"]
       30 GETIMPORT                        R5 K11 [pcall]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U2
       38 CALL                             R5 1 2
       39 JUMPIF                           R5 ; [+2]
       40 MOVE                             R7 R6
       41 JUMP                             ; [+1]
       42 LOADK                            R7 K12 [""]
       43 JUMPIFNOT                        R5 ; [+3]
       44 GETTABLEKS                       R8 R6 K13 ["generationId"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R8
       48 GETUPVAL                         R9 3
       49 CALL                             R9 0 1
       50 JUMPIFNOT                        R9 ; [+10]
       51 GETIMPORT                        R9 K15 [print]
       53 LOADK                            R11 K16 ["[MeshGen] generationId: "]
       54 FASTCALL1                        TOSTRING R8 ; [+3]
       55 MOVE                             R13 R8
       56 GETIMPORT                        R12 K18 [tostring]
       58 CALL                             R12 1 1
       59 CONCAT                           R10 R11 R12
       60 CALL                             R9 1 0
       61 GETTABLEKS                       R9 R0 K19 ["initArgs"]
       63 GETTABLEKS                       R9 R9 K20 ["environment"]
       65 GETUPVAL                         R10 4
       66 CALL                             R10 0 1
       67 LOADB                            R11 0
       68 FASTCALL1                        TYPEOF R4 ; [+3]
       69 MOVE                             R13 R4
       70 GETIMPORT                        R12 K22 [typeof]
       72 CALL                             R12 1 1
       73 JUMPIFNOTEQKS                    R12 K23 ["string"] ; [+7]
       75 LENGTH                           R12 R4
       76 LOADN                            R13 0
       77 JUMPIFLT                         R13 R12 ; [+2]
       79 LOADB                            R11 0 +1
       80 LOADB                            R11 1
       81 GETTABLEKS                       R13 R1 K24 ["hintImage"]
       83 JUMPIFNOTEQKNIL                  R13 ; [+2]
       85 LOADB                            R12 0 +1
       86 LOADB                            R12 1
       87 JUMPIF                           R10 ; [+2]
       88 LOADNIL                          R13
       89 JUMP                             ; [+8]
       90 JUMPIFNOT                        R11 ; [+3]
       91 JUMPIFNOT                        R12 ; [+2]
       92 LOADK                            R13 K25 ["text+image"]
       93 JUMP                             ; [+4]
       94 JUMPIFNOT                        R12 ; [+2]
       95 LOADK                            R13 K26 ["image"]
       96 JUMP                             ; [+1]
       97 LOADK                            R13 K27 ["text"]
       98 JUMPIFNOT                        R10 ; [+14]
       99 LOADB                            R14 0
      100 GETTABLEKS                       R15 R1 K28 ["partNames"]
      102 JUMPIFEQKNIL                     R15 ; [+11]
      104 GETTABLEKS                       R16 R1 K28 ["partNames"]
      106 LENGTH                           R15 R16
      107 LOADN                            R16 0
      108 JUMPIFLT                         R16 R15 ; [+2]
      110 LOADB                            R14 0 +1
      111 LOADB                            R14 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R14
      114 JUMPIFNOT                        R10 ; [+3]
      115 GETTABLEKS                       R15 R1 K28 ["partNames"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R15
      119 GETTABLEKS                       R16 R9 K29 ["EventLogger"]
      121 GETTABLEKS                       R16 R16 K30 ["logMeshGenCompleted"]
      123 DUPTABLE                         R17 K39 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      124 GETTABLEKS                       R18 R2 K31 ["requestId"]
      126 SETTABLEKS                       R18 R17 K31 ["requestId"]
      128 SETTABLEKS                       R8 R17 K13 ["generationId"]
      130 SETTABLEKS                       R5 R17 K32 ["success"]
      132 SETTABLEKS                       R7 R17 K33 ["errorMessage"]
      134 SETTABLEKS                       R4 R17 K34 ["prompt"]
      136 JUMPIFNOT                        R10 ; [+2]
      137 LOADK                            R18 K40 ["mesh"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R18
      140 SETTABLEKS                       R18 R17 K35 ["modelFlow"]
      142 SETTABLEKS                       R13 R17 K36 ["inputFormat"]
      144 SETTABLEKS                       R14 R17 K37 ["segmentationEnabled"]
      146 SETTABLEKS                       R15 R17 K38 ["finalParts"]
      148 CALL                             R16 1 0
      149 JUMPIF                           R5 ; [+44]
      150 GETIMPORT                        R16 K42 [string.find]
      152 GETIMPORT                        R17 K44 [string.lower]
      154 MOVE                             R18 R7
      155 CALL                             R17 1 1
      156 LOADK                            R18 K45 ["moderat"]
      157 CALL                             R16 2 1
      158 JUMPIFNOT                        R16 ; [+9]
      159 GETTABLEKS                       R16 R3 K46 ["setFailureReason"]
      161 GETUPVAL                         R17 0
      162 GETTABLEKS                       R17 R17 K47 ["FailureReason"]
      164 GETTABLEKS                       R17 R17 K48 ["GenerationModerated"]
      166 CALL                             R16 1 0
      167 JUMP                             ; [+8]
      168 GETTABLEKS                       R16 R3 K46 ["setFailureReason"]
      170 GETUPVAL                         R17 0
      171 GETTABLEKS                       R17 R17 K47 ["FailureReason"]
      173 GETTABLEKS                       R17 R17 K49 ["GenerationFailed"]
      175 CALL                             R16 1 0
      176 GETIMPORT                        R16 K51 [warn]
      178 LOADK                            R18 K52 ["Mesh generation failed with error: %* (requestId=%*)"]
      179 FASTCALL1                        TOSTRING R7 ; [+3]
      180 MOVE                             R21 R7
      181 GETIMPORT                        R20 K18 [tostring]
      183 CALL                             R20 1 1
      184 GETTABLEKS                       R21 R2 K31 ["requestId"]
      186 NAMECALL                         R18 R18 K53 ["format"]
      188 CALL                             R18 3 1
      189 MOVE                             R17 R18
      190 CALL                             R16 1 0
      191 LOADB                            R16 0
      192 MOVE                             R17 R7
      193 RETURN                           R16 2
      194 DUPTABLE                         R17 K55 [{"type", "requestId", "generationId", "generationName"}]
      195 GETUPVAL                         R18 0
      196 GETTABLEKS                       R18 R18 K1 ["GenerationMetaType"]
      198 GETTABLEKS                       R18 R18 K56 ["Generated"]
      200 SETTABLEKS                       R18 R17 K0 ["type"]
      202 GETTABLEKS                       R18 R2 K31 ["requestId"]
      204 SETTABLEKS                       R18 R17 K31 ["requestId"]
      206 SETTABLEKS                       R8 R17 K13 ["generationId"]
      208 SETTABLEKS                       R4 R17 K54 ["generationName"]
      210 MOVE                             R18 R2
      211 LOADNIL                          R19
      212 LOADNIL                          R20
      213 FORGPREP                         R18
      214 LOADNIL                          R23
      215 SETTABLE                         R23 R2 R21
      216 FORGLOOP                         R18 1 ; [-3]
      218 GETUPVAL                         R18 5
      219 GETTABLEKS                       R18 R18 K57 ["assign"]
      221 MOVE                             R19 R2
      222 MOVE                             R20 R17
      223 CALL                             R18 2 0
      224 MOVE                             R16 R2
      225 GETTABLEKS                       R17 R3 K58 ["updateWidget"]
      227 NEWCLOSURE                       R18 P1
      228 CAPTURE                          UPVAL U0
      229 CAPTURE                          VAL R16
      230 CALL                             R17 1 0
      231 LOADB                            R17 1
      232 MOVE                             R18 R6
      233 RETURN                           R17 2

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["publishAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{"requestId", "generationId", "hasPredeterminedSize"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["generationId"]
       14 SETTABLEKS                       R2 R1 K3 ["generationId"]
       16 GETUPVAL                         R2 2
       17 SETTABLEKS                       R2 R1 K4 ["hasPredeterminedSize"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R1 K1 ["Published"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R6 R6 K2 ["Generated"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Generation meta must be of type 'Generated'"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K6 ["setPreviewState"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["PreviewState"]
       25 GETTABLEKS                       R5 R5 K8 ["Publishing"]
       27 CALL                             R4 1 0
       28 GETIMPORT                        R4 K10 [pcall]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CALL                             R4 1 2
       35 JUMPIF                           R4 ; [+2]
       36 MOVE                             R6 R5
       37 JUMP                             ; [+1]
       38 LOADK                            R6 K11 [""]
       39 GETTABLEKS                       R7 R0 K12 ["initArgs"]
       41 GETTABLEKS                       R7 R7 K13 ["environment"]
       43 JUMPIF                           R4 ; [+53]
       44 GETTABLEKS                       R8 R7 K14 ["EventLogger"]
       46 GETTABLEKS                       R8 R8 K15 ["logMeshGenPublishedAssets"]
       48 DUPTABLE                         R9 K23 [{["requestId"], ["generationId"], ["success"], ["errorMessage"], ["meshId"] = , ["imageId"] = }]
       49 GETTABLEKS                       R10 R1 K16 ["requestId"]
       51 SETTABLEKS                       R10 R9 K16 ["requestId"]
       53 GETTABLEKS                       R10 R1 K17 ["generationId"]
       55 SETTABLEKS                       R10 R9 K17 ["generationId"]
       57 SETTABLEKS                       R4 R9 K18 ["success"]
       59 SETTABLEKS                       R6 R9 K19 ["errorMessage"]
       61 CALL                             R8 1 0
       62 LOADK                            R10 K24 ["HTTP error %(status=(%d+)"]
       63 NAMECALL                         R8 R6 K25 ["match"]
       65 CALL                             R8 2 1
       66 JUMPIFNOTEQKS                    R8 K26 ["403"] ; [+10]
       68 GETTABLEKS                       R9 R3 K27 ["setFailureReason"]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K28 ["FailureReason"]
       73 GETTABLEKS                       R10 R10 K29 ["AssetPermissionCreationFailed"]
       75 CALL                             R9 1 0
       76 JUMP                             ; [+8]
       77 GETTABLEKS                       R9 R3 K27 ["setFailureReason"]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K28 ["FailureReason"]
       82 GETTABLEKS                       R10 R10 K30 ["PublishFailed"]
       84 CALL                             R9 1 0
       85 GETIMPORT                        R9 K32 [warn]
       87 LOADK                            R11 K33 ["Failed to publish assets with error: %*"]
       88 MOVE                             R13 R6
       89 NAMECALL                         R11 R11 K34 ["format"]
       91 CALL                             R11 2 1
       92 MOVE                             R10 R11
       93 CALL                             R9 1 0
       94 LOADB                            R9 0
       95 MOVE                             R10 R6
       96 RETURN                           R9 2
       97 GETTABLEKS                       R8 R5 K35 ["assets"]
       99 LOADNIL                          R9
      100 LOADNIL                          R10
      101 FORGPREP                         R8
      102 GETTABLEKS                       R13 R12 K20 ["meshId"]
      104 LOADK                            R15 K36 ["%d+"]
      105 NAMECALL                         R13 R13 K25 ["match"]
      107 CALL                             R13 2 1
      108 GETTABLEKS                       R14 R12 K37 ["textureId"]
      110 LOADK                            R16 K36 ["%d+"]
      111 NAMECALL                         R14 R14 K25 ["match"]
      113 CALL                             R14 2 1
      114 GETTABLEKS                       R15 R7 K14 ["EventLogger"]
      116 GETTABLEKS                       R15 R15 K15 ["logMeshGenPublishedAssets"]
      118 DUPTABLE                         R16 K38 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
      119 GETTABLEKS                       R17 R1 K16 ["requestId"]
      121 SETTABLEKS                       R17 R16 K16 ["requestId"]
      123 GETTABLEKS                       R17 R1 K17 ["generationId"]
      125 SETTABLEKS                       R17 R16 K17 ["generationId"]
      127 SETTABLEKS                       R4 R16 K18 ["success"]
      129 SETTABLEKS                       R6 R16 K19 ["errorMessage"]
      131 FASTCALL1                        TONUMBER R13 ; [+3]
      132 MOVE                             R18 R13
      133 GETIMPORT                        R17 K40 [tonumber]
      135 CALL                             R17 1 1
      136 SETTABLEKS                       R17 R16 K20 ["meshId"]
      138 FASTCALL1                        TONUMBER R14 ; [+3]
      139 MOVE                             R18 R14
      140 GETIMPORT                        R17 K40 [tonumber]
      142 CALL                             R17 1 1
      143 SETTABLEKS                       R17 R16 K22 ["imageId"]
      145 CALL                             R15 1 0
      146 FORGLOOP                         R8 2 ; [-45]
      148 DUPTABLE                         R9 K42 [{"type", "requestId", "generationId", "generationName"}]
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R10 R10 K1 ["GenerationMetaType"]
      152 GETTABLEKS                       R10 R10 K43 ["Published"]
      154 SETTABLEKS                       R10 R9 K0 ["type"]
      156 GETTABLEKS                       R10 R1 K16 ["requestId"]
      158 SETTABLEKS                       R10 R9 K16 ["requestId"]
      160 GETTABLEKS                       R10 R1 K17 ["generationId"]
      162 SETTABLEKS                       R10 R9 K17 ["generationId"]
      164 GETTABLEKS                       R10 R1 K41 ["generationName"]
      166 SETTABLEKS                       R10 R9 K41 ["generationName"]
      168 MOVE                             R10 R1
      169 LOADNIL                          R11
      170 LOADNIL                          R12
      171 FORGPREP                         R10
      172 LOADNIL                          R15
      173 SETTABLE                         R15 R1 R13
      174 FORGLOOP                         R10 1 ; [-3]
      176 GETUPVAL                         R10 2
      177 GETTABLEKS                       R10 R10 K44 ["assign"]
      179 MOVE                             R11 R1
      180 MOVE                             R12 R9
      181 CALL                             R10 2 0
      182 MOVE                             R8 R1
      183 GETTABLEKS                       R9 R3 K45 ["updateWidget"]
      185 NEWCLOSURE                       R10 P1
      186 CAPTURE                          UPVAL U0
      187 CAPTURE                          VAL R8
      188 CALL                             R9 1 0
      189 LOADB                            R9 1
      190 RETURN                           R9 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["insertAssetsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R6 R6 K2 ["Published"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Generation meta must be of type 'Published'"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K6 ["setPreviewState"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["PreviewState"]
       25 GETTABLEKS                       R5 R5 K8 ["Inserting"]
       27 CALL                             R4 1 0
       28 GETIMPORT                        R4 K10 [pcall]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CALL                             R4 1 2
       34 JUMPIF                           R4 ; [+2]
       35 MOVE                             R6 R5
       36 JUMP                             ; [+1]
       37 LOADK                            R6 K11 [""]
       38 GETUPVAL                         R7 2
       39 CALL                             R7 0 1
       40 GETTABLEKS                       R8 R2 K12 ["textPrompt"]
       42 LOADB                            R9 0
       43 FASTCALL1                        TYPEOF R8 ; [+3]
       44 MOVE                             R11 R8
       45 GETIMPORT                        R10 K14 [typeof]
       47 CALL                             R10 1 1
       48 JUMPIFNOTEQKS                    R10 K15 ["string"] ; [+7]
       50 LENGTH                           R10 R8
       51 LOADN                            R11 0
       52 JUMPIFLT                         R11 R10 ; [+2]
       54 LOADB                            R9 0 +1
       55 LOADB                            R9 1
       56 GETTABLEKS                       R11 R2 K16 ["hintImage"]
       58 JUMPIFNOTEQKNIL                  R11 ; [+2]
       60 LOADB                            R10 0 +1
       61 LOADB                            R10 1
       62 JUMPIF                           R7 ; [+2]
       63 LOADNIL                          R11
       64 JUMP                             ; [+8]
       65 JUMPIFNOT                        R9 ; [+3]
       66 JUMPIFNOT                        R10 ; [+2]
       67 LOADK                            R11 K17 ["text+image"]
       68 JUMP                             ; [+4]
       69 JUMPIFNOT                        R10 ; [+2]
       70 LOADK                            R11 K18 ["image"]
       71 JUMP                             ; [+1]
       72 LOADK                            R11 K19 ["text"]
       73 GETTABLEKS                       R12 R0 K20 ["initArgs"]
       75 GETTABLEKS                       R12 R12 K21 ["environment"]
       77 GETTABLEKS                       R13 R12 K22 ["EventLogger"]
       79 GETTABLEKS                       R13 R13 K23 ["logMeshGenMeshInserted"]
       81 DUPTABLE                         R14 K30 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
       82 GETTABLEKS                       R15 R1 K24 ["requestId"]
       84 SETTABLEKS                       R15 R14 K24 ["requestId"]
       86 GETTABLEKS                       R15 R1 K25 ["generationId"]
       88 SETTABLEKS                       R15 R14 K25 ["generationId"]
       90 SETTABLEKS                       R4 R14 K26 ["success"]
       92 SETTABLEKS                       R6 R14 K27 ["errorMessage"]
       94 JUMPIFNOT                        R7 ; [+2]
       95 LOADK                            R15 K31 ["mesh"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R15
       98 SETTABLEKS                       R15 R14 K28 ["modelFlow"]
      100 SETTABLEKS                       R11 R14 K29 ["inputFormat"]
      102 CALL                             R13 1 0
      103 JUMPIF                           R4 ; [+20]
      104 GETTABLEKS                       R13 R3 K32 ["setFailureReason"]
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R14 R14 K33 ["FailureReason"]
      109 GETTABLEKS                       R14 R14 K34 ["InsertFailed"]
      111 CALL                             R13 1 0
      112 GETIMPORT                        R13 K36 [warn]
      114 LOADK                            R15 K37 ["Failed to insert assets with error: %*"]
      115 MOVE                             R17 R6
      116 NAMECALL                         R15 R15 K38 ["format"]
      118 CALL                             R15 2 1
      119 MOVE                             R14 R15
      120 CALL                             R13 1 0
      121 LOADB                            R13 0
      122 MOVE                             R14 R6
      123 RETURN                           R13 2
      124 GETTABLEKS                       R13 R3 K6 ["setPreviewState"]
      126 GETUPVAL                         R14 0
      127 GETTABLEKS                       R14 R14 K7 ["PreviewState"]
      129 GETTABLEKS                       R14 R14 K2 ["Published"]
      131 CALL                             R13 1 0
      132 LOADB                            R13 1
      133 RETURN                           R13 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["removeSelectedBoundsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_25:
        0 JUMPIF                           R0 ; [+34]
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+10]
        8 GETIMPORT                        R4 K3 [warn]
       10 LOADK                            R6 K4 ["Failed to remove selected bounds: "]
       11 FASTCALL1                        TOSTRING R3 ; [+3]
       12 MOVE                             R8 R3
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K1 [pcall]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CALL                             R4 1 2
       24 JUMPIF                           R4 ; [+10]
       25 GETIMPORT                        R6 K3 [warn]
       27 LOADK                            R8 K7 ["Failed to cancel generation: "]
       28 FASTCALL1                        TOSTRING R5 ; [+3]
       29 MOVE                             R10 R5
       30 GETIMPORT                        R9 K6 [tostring]
       32 CALL                             R9 1 1
       33 CONCAT                           R7 R8 R9
       34 CALL                             R6 1 0
       35 SETUPVAL                         R0 2
       36 FASTCALL1                        TYPE R1 ; [+3]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R3 K9 [type]
       40 CALL                             R3 1 1
       41 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+3]
       43 MOVE                             R2 R1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 SETUPVAL                         R2 3
       47 GETUPVAL                         R2 4
       48 JUMPIFNOT                        R2 ; [+18]
       49 GETUPVAL                         R2 4
       50 GETIMPORT                        R3 K13 [coroutine.running]
       52 CALL                             R3 0 1
       53 JUMPIFEQ                         R2 R3 ; [+13]
       55 GETIMPORT                        R2 K15 [coroutine.status]
       57 GETUPVAL                         R3 4
       58 CALL                             R2 1 1
       59 JUMPIFEQKS                       R2 K16 ["dead"] ; [+7]
       61 GETIMPORT                        R2 K19 [task.cancel]
       63 GETUPVAL                         R3 4
       64 CALL                             R2 1 0
       65 LOADNIL                          R2
       66 SETUPVAL                         R2 4
       67 GETUPVAL                         R2 5
       68 NAMECALL                         R2 R2 K20 ["Fire"]
       70 CALL                             R2 1 0
       71 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 3
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R3 4
       10 AND                              R4 R0 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R3 4
       15 LOADB                            R4 0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R2 K2 [coroutine.status]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K3 ["dead"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       13 LOADK                            R2 K4 ["Generation thread already exists"]
       14 GETIMPORT                        R0 K6 [assert]
       16 CALL                             R0 2 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 2
       21 GETIMPORT                        R0 K9 [task.spawn]
       23 NEWCLOSURE                       R1 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 0
       31 GETUPVAL                         R0 1
       32 JUMPIFNOTEQKNIL                  R0 ; [+5]
       34 GETUPVAL                         R0 8
       35 NAMECALL                         R0 R0 K10 ["Wait"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R2 1
       39 JUMPIFNOTEQKNIL                  R2 ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 FASTCALL2K                       ASSERT R1 K11 ; [+4]
       45 LOADK                            R2 K11 ["Generation end result should not be nil after generation ends"]
       46 GETIMPORT                        R0 K6 [assert]
       48 CALL                             R0 2 0
       49 GETUPVAL                         R0 1
       50 GETUPVAL                         R1 2
       51 RETURN                           R0 2

PROTO_29:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation thread not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETIMPORT                        R2 K5 [coroutine.status]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K6 ["dead"] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       17 LOADK                            R2 K7 ["Generation thread already dead"]
       18 GETIMPORT                        R0 K2 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 LOADB                            R1 0
       23 LOADK                            R2 K8 ["Canceled"]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K9 ["setFailureReason"]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K10 ["FailureReason"]
       31 GETTABLEKS                       R1 R1 K11 ["GenerationCanceled"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["size"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+16]
        6 LOADB                            R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["selectedUniqueId"]
       10 JUMPIFEQKNIL                     R1 ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["selectedUniqueId"]
       15 LENGTH                           R1 R2
       16 LOADN                            R2 0
       17 JUMPIFLT                         R2 R1 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R3 3
       24 MOVE                             R4 R0
       25 CALL                             R1 3 -1
       26 RETURN                           R1 -1

PROTO_31:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 2
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R2 4
        7 GETTABLEKS                       R2 R2 K0 ["updateWidget"]
        9 DUPCLOSURE                       R3 K1 [PROTO_31]
       10 CALL                             R2 1 0
       11 RETURN                           R0 2

PROTO_33:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["type"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GenerationMetaType"]
        6 GETTABLEKS                       R1 R1 K2 ["Generated"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+31]
       10 LOADB                            R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["size"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+16]
       16 LOADB                            R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K4 ["selectedUniqueId"]
       20 JUMPIFEQKNIL                     R1 ; [+10]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K4 ["selectedUniqueId"]
       25 LENGTH                           R1 R2
       26 LOADN                            R2 0
       27 JUMPIFLT                         R2 R1 ; [+2]
       29 LOADB                            R0 0 +1
       30 LOADB                            R0 1
       31 GETUPVAL                         R1 3
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R3 0
       34 MOVE                             R4 R0
       35 CALL                             R1 3 2
       36 JUMPIF                           R1 ; [+3]
       37 LOADB                            R3 0
       38 MOVE                             R4 R2
       39 RETURN                           R3 2
       40 GETUPVAL                         R0 5
       41 GETUPVAL                         R1 4
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R3 2
       44 CALL                             R0 3 2
       45 JUMPIFNOT                        R0 ; [+5]
       46 GETUPVAL                         R2 6
       47 GETTABLEKS                       R2 R2 K5 ["updateWidget"]
       49 DUPCLOSURE                       R3 K6 [PROTO_33]
       50 CALL                             R2 1 0
       51 RETURN                           R0 2

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["type"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["GenerationMetaType"]
        6 GETTABLEKS                       R3 R3 K2 ["Published"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       14 LOADK                            R2 K3 ["Generation meta must be of type 'Published'"]
       15 GETIMPORT                        R0 K5 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K6 ["bridge"]
       21 GETTABLEKS                       R0 R0 K7 ["selectLinkedAssets"]
       23 DUPTABLE                         R1 K9 [{"requestId"}]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K8 ["requestId"]
       27 SETTABLEKS                       R2 R1 K8 ["requestId"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_36:
        0 GETTABLEKS                       R3 R2 K0 ["mode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Modes"]
        5 GETTABLEKS                       R4 R4 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R2 K3 ["generationMeta"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K4 ["new"]
       21 CALL                             R8 0 1
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          REF R6
       26 CAPTURE                          REF R7
       27 CAPTURE                          REF R5
       28 CAPTURE                          VAL R8
       29 NEWCLOSURE                       R10 P1
       30 CAPTURE                          REF R5
       31 CAPTURE                          REF R6
       32 CAPTURE                          REF R7
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R8
       39 SETTABLEKS                       R10 R2 K5 ["retryGeneration"]
       41 NEWCLOSURE                       R10 P2
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U4
       46 SETTABLEKS                       R10 R2 K6 ["cancelGeneration"]
       48 NEWCLOSURE                       R10 P3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R10 R2 K7 ["publishAssets"]
       55 NEWCLOSURE                       R10 P4
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R10 R2 K8 ["insertAssets"]
       63 GETUPVAL                         R10 7
       64 CALL                             R10 0 1
       65 JUMPIFNOT                        R10 ; [+10]
       66 NEWCLOSURE                       R10 P5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R10 R2 K9 ["addToPlace"]
       76 NEWCLOSURE                       R10 P6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R10 R2 K10 ["onChipClicked"]
       82 CLOSEUPVALS                      R5
       83 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K3 ["callArgs"]
       12 GETTABLEKS                       R2 R2 K4 ["isThirdPartyRequest"]
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K5 ["generationMeta"]
       18 GETTABLEKS                       R4 R0 K6 ["bridge"]
       20 GETTABLEKS                       R4 R4 K7 ["listenToLinkChanges"]
       22 DUPTABLE                         R5 K10 [{"generationName", "requestId"}]
       23 GETTABLEKS                       R6 R1 K11 ["name"]
       25 SETTABLEKS                       R6 R5 K8 ["generationName"]
       27 GETTABLEKS                       R6 R3 K9 ["requestId"]
       29 SETTABLEKS                       R6 R5 K9 ["requestId"]
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R0 K0 ["initArgs"]
        8 GETTABLEKS                       R4 R4 K1 ["environment"]
       10 GETTABLEKS                       R5 R4 K2 ["EventLogger"]
       12 GETTABLEKS                       R5 R5 K3 ["logMeshGenActivated"]
       14 CALL                             R5 0 0
       15 DUPTABLE                         R5 K6 [{"type", "requestId"}]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K7 ["GenerationMetaType"]
       19 GETTABLEKS                       R6 R6 K8 ["Initialized"]
       21 SETTABLEKS                       R6 R5 K4 ["type"]
       23 LOADK                            R7 K9 ["MeshGen-"]
       24 GETUPVAL                         R8 3
       25 LOADB                            R10 0
       26 NAMECALL                         R8 R8 K10 ["GenerateGUID"]
       28 CALL                             R8 2 1
       29 CONCAT                           R6 R7 R8
       30 SETTABLEKS                       R6 R5 K5 ["requestId"]
       32 DUPTABLE                         R6 K32 [{["type"], ["mode"], ["expanded"] = True, ["name"], ["displayName"], ["className"] = , ["previewImages"] = , ["previewState"], ["failureReason"] = , ["generationRetryCount"] = , ["publishAttemptCount"] = , ["validatedArgs"], ["generationMeta"], ["retryGeneration"], ["cancelGeneration"], ["publishAssets"], ["insertAssets"], ["shouldShowChip"] = False, ["onChipClicked"]}]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K33 ["Type"]
       36 SETTABLEKS                       R7 R6 K4 ["type"]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K34 ["Modes"]
       41 GETTABLEKS                       R7 R7 K35 ["ShowPreview"]
       43 SETTABLEKS                       R7 R6 K11 ["mode"]
       45 GETTABLEKS                       R7 R2 K36 ["textPrompt"]
       47 SETTABLEKS                       R7 R6 K14 ["name"]
       49 GETTABLEKS                       R7 R2 K36 ["textPrompt"]
       51 SETTABLEKS                       R7 R6 K15 ["displayName"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K37 ["PreviewState"]
       56 GETTABLEKS                       R7 R7 K38 ["GeneratingMesh"]
       58 SETTABLEKS                       R7 R6 K19 ["previewState"]
       60 SETTABLEKS                       R2 R6 K23 ["validatedArgs"]
       62 SETTABLEKS                       R5 R6 K24 ["generationMeta"]
       64 GETUPVAL                         R7 5
       65 GETTABLEKS                       R7 R7 K39 ["createUnimplemented"]
       67 LOADK                            R8 K25 ["retryGeneration"]
       68 CALL                             R7 1 1
       69 SETTABLEKS                       R7 R6 K25 ["retryGeneration"]
       71 GETUPVAL                         R7 5
       72 GETTABLEKS                       R7 R7 K39 ["createUnimplemented"]
       74 LOADK                            R8 K26 ["cancelGeneration"]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K26 ["cancelGeneration"]
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R7 R7 K39 ["createUnimplemented"]
       81 LOADK                            R8 K27 ["publishAssets"]
       82 CALL                             R7 1 1
       83 SETTABLEKS                       R7 R6 K27 ["publishAssets"]
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K39 ["createUnimplemented"]
       88 LOADK                            R8 K28 ["insertAssets"]
       89 CALL                             R7 1 1
       90 SETTABLEKS                       R7 R6 K28 ["insertAssets"]
       92 GETUPVAL                         R7 5
       93 GETTABLEKS                       R7 R7 K39 ["createUnimplemented"]
       95 LOADK                            R8 K31 ["onChipClicked"]
       96 CALL                             R7 1 1
       97 SETTABLEKS                       R7 R6 K31 ["onChipClicked"]
       99 GETUPVAL                         R7 6
      100 MOVE                             R8 R0
      101 MOVE                             R9 R2
      102 MOVE                             R10 R6
      103 CALL                             R7 3 0
      104 GETTABLEKS                       R7 R3 K40 ["replaceContent"]
      106 MOVE                             R8 R6
      107 CALL                             R7 1 0
      108 GETUPVAL                         R7 7
      109 MOVE                             R8 R0
      110 MOVE                             R9 R6
      111 CALL                             R7 2 0
      112 GETTABLEKS                       R7 R6 K25 ["retryGeneration"]
      114 CALL                             R7 0 2
      115 JUMPIF                           R7 ; [+11]
      116 GETIMPORT                        R9 K42 [error]
      118 LOADK                            R11 K43 ["Mesh generation failed with error: "]
      119 FASTCALL1                        TOSTRING R8 ; [+3]
      120 MOVE                             R13 R8
      121 GETIMPORT                        R12 K45 [tostring]
      123 CALL                             R12 1 1
      124 CONCAT                           R10 R11 R12
      125 LOADN                            R11 0
      126 CALL                             R9 2 0
      127 GETTABLEKS                       R9 R2 K46 ["isManualRun"]
      129 JUMPIFNOT                        R9 ; [+2]
      130 LOADK                            R9 K47 ["Mesh generated successfully"]
      131 RETURN                           R9 1
      132 GETTABLEKS                       R9 R6 K27 ["publishAssets"]
      134 CALL                             R9 0 2
      135 JUMPIF                           R9 ; [+11]
      136 GETIMPORT                        R11 K42 [error]
      138 LOADK                            R13 K48 ["Failed to publish assets with error: "]
      139 FASTCALL1                        TOSTRING R10 ; [+3]
      140 MOVE                             R15 R10
      141 GETIMPORT                        R14 K45 [tostring]
      143 CALL                             R14 1 1
      144 CONCAT                           R12 R13 R14
      145 LOADN                            R13 0
      146 CALL                             R11 2 0
      147 GETTABLEKS                       R11 R6 K28 ["insertAssets"]
      149 CALL                             R11 0 2
      150 JUMPIF                           R11 ; [+11]
      151 GETIMPORT                        R13 K42 [error]
      153 LOADK                            R15 K49 ["Failed to insert assets with error: "]
      154 FASTCALL1                        TOSTRING R12 ; [+3]
      155 MOVE                             R17 R12
      156 GETIMPORT                        R16 K45 [tostring]
      158 CALL                             R16 1 1
      159 CONCAT                           R14 R15 R16
      160 LOADN                            R15 0
      161 CALL                             R13 2 0
      162 DUPTABLE                         R13 K51 [{"tag"}]
      163 GETUPVAL                         R14 8
      164 GETTABLEKS                       R14 R14 K52 ["getLinkTag"]
      166 GETTABLEKS                       R15 R5 K5 ["requestId"]
      168 CALL                             R14 1 1
      169 SETTABLEKS                       R14 R13 K50 ["tag"]
      171 RETURN                           R13 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["showChip"]
       13 SETTABLEKS                       R1 R0 K5 ["shouldShowChip"]
       15 DUPTABLE                         R1 K8 [{["rawTransformValues"] = True}]
       16 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewState"]
        5 GETTABLEKS                       R4 R0 K1 ["state"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R3 1 1
        7 MOVE                             R4 R2
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R3
       10 CALL                             R4 1 0
       11 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["race"]
       10 NEWTABLE                         R2 0 2
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["delay"]
       16 LOADK                            R5 K3 [0.5]
       17 CALL                             R4 1 -1
       18 SETLIST                          R2 R3 -1 [1]
       20 CALL                             R1 1 1
       21 NAMECALL                         R1 R1 K4 ["await"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K5 ["setPreviewImage"]
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R3 2
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K0 ["image"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 JUMPIFNOTEQKS                    R3 K2 [""] ; [+7]
        9 GETTABLEKS                       R5 R2 K3 ["setPreviewImage"]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R3
       13 CALL                             R5 2 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R5 K6 [task.spawn]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
        6 GETTABLEKS                       R3 R3 K3 ["logGen3DInstanceDeleted"]
        8 DUPTABLE                         R4 K9 [{["requestId"], ["generationId"], ["modelFlow"] = "mesh", ["secondsSinceInsertion"]}]
        9 GETTABLEKS                       R5 R0 K4 ["requestId"]
       11 SETTABLEKS                       R5 R4 K4 ["requestId"]
       13 GETTABLEKS                       R5 R0 K5 ["generationId"]
       15 SETTABLEKS                       R5 R4 K5 ["generationId"]
       17 GETTABLEKS                       R5 R0 K8 ["secondsSinceInsertion"]
       19 SETTABLEKS                       R5 R4 K8 ["secondsSinceInsertion"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createGuestContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K4 [{["isThirdPartyRequest"] = False, ["contentId"]}]
        5 SETTABLEKS                       R0 R4 K3 ["contentId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R1 K5 ["validatedArgs"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R2
       12 MOVE                             R6 R3
       13 MOVE                             R7 R1
       14 CALL                             R4 3 0
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R2
       17 MOVE                             R6 R1
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createGuestContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"isThirdPartyRequest", "contentId"}]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R5 R1 K1 ["isThirdPartyRequest"]
        8 JUMPIF                           R5 ; [+1]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K1 ["isThirdPartyRequest"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R5 R1 K2 ["contentId"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADK                            R5 K4 [""]
       17 SETTABLEKS                       R5 R4 K2 ["contentId"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R2
       22 MOVE                             R5 R0
       23 CALL                             R3 2 1
       24 RETURN                           R3 1

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["toString"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K3 ["addText"]
       19 CALL                             R5 2 1
       20 NAMECALL                         R5 R5 K4 ["build"]
       22 CALL                             R5 1 -1
       23 RETURN                           R5 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"maxTriangles"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["getOptionalNumber"]
        9 GETTABLEKS                       R4 R1 K1 ["maxTriangles"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K1 ["maxTriangles"]
       14 RETURN                           R2 1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_54:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+3]
        6 GETTABLEN                        R2 R1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+14]
       13 GETUPVAL                         R3 1
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
       18 GETTABLEKS                       R2 R2 K1 ["Image"]
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
       24 GETTABLEKS                       R2 R2 K2 ["Text"]
       26 SETUPVAL                         R2 3
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K3 ["parseSlashCommandArgs"]
       30 MOVE                             R4 R0
       31 CALL                             R3 1 1
       32 DUPTABLE                         R2 K5 [{"maxTriangles"}]
       33 GETUPVAL                         R4 5
       34 GETTABLEKS                       R4 R4 K6 ["getOptionalNumber"]
       36 GETTABLEKS                       R5 R3 K4 ["maxTriangles"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R2 K4 ["maxTriangles"]
       41 DUPTABLE                         R3 K14 [{["textPrompt"], ["size"] = , ["maxTriangles"], ["segmentationMode"] = , ["isManualRun"] = True, ["selectedInstanceRef"] = }]
       42 SETTABLEKS                       R0 R3 K7 ["textPrompt"]
       44 GETTABLEKS                       R4 R2 K4 ["maxTriangles"]
       46 SETTABLEKS                       R4 R3 K4 ["maxTriangles"]
       48 DUPTABLE                         R4 K17 [{"name", "arguments"}]
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R5 R5 K18 ["MeshGen"]
       52 SETTABLEKS                       R5 R4 K15 ["name"]
       54 SETTABLEKS                       R3 R4 K16 ["arguments"]
       56 RETURN                           R4 1

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_56:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["value"]
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIF                           R0 ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETIMPORT                        R2 K5 [table.concat]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 [", "]
       18 CALL                             R2 2 1
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K7 [""]
       21 SETUPVAL                         R2 3
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K8 ["fn"]
       25 JUMPIFNOT                        R3 ; [+5]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K8 ["fn"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 LENGTH                           R0 R1
        6 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+11]
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K1 ["PromptMode"]
       16 GETTABLEKS                       R1 R1 K2 ["Text"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+3]
       20 GETUPVAL                         R0 5
       21 JUMPIF                           R0 ; [+1]
       22 RETURN                           R0 0
       23 DUPTABLE                         R0 K5 [{["value"] = False}]
       24 SETUPVAL                         R0 6
       25 GETIMPORT                        R1 K8 [task.spawn]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
        4 GETTABLEKS                       R2 R2 K1 ["Text"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+4]
        8 GETUPVAL                         R1 3
        9 SETUPVAL                         R1 2
       10 JUMP                             ; [+2]
       11 GETUPVAL                         R1 3
       12 SETUPVAL                         R1 4
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
       17 GETTABLEKS                       R2 R2 K1 ["Text"]
       19 JUMPIFNOTEQ                      R0 R2 ; [+3]
       21 GETUPVAL                         R1 2
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R1 4
       24 SETUPVAL                         R1 3
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K2 ["fn"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K2 ["fn"]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 6
       35 GETTABLEKS                       R2 R2 K2 ["fn"]
       37 JUMPIFNOT                        R2 ; [+13]
       38 GETUPVAL                         R2 6
       39 GETTABLEKS                       R2 R2 K2 ["fn"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       44 GETTABLEKS                       R4 R4 K1 ["Text"]
       46 JUMPIFEQ                         R0 R4 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 CALL                             R2 1 0
       51 GETUPVAL                         R2 7
       52 GETTABLEKS                       R2 R2 K2 ["fn"]
       54 JUMPIFNOT                        R2 ; [+13]
       55 GETUPVAL                         R2 7
       56 GETTABLEKS                       R2 R2 K2 ["fn"]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       61 GETTABLEKS                       R4 R4 K3 ["Image"]
       63 JUMPIFEQ                         R0 R4 ; [+2]
       65 LOADB                            R3 0 +1
       66 LOADB                            R3 1
       67 CALL                             R2 1 0
       68 GETUPVAL                         R2 8
       69 GETTABLEKS                       R2 R2 K2 ["fn"]
       71 JUMPIFNOT                        R2 ; [+13]
       72 GETUPVAL                         R2 8
       73 GETTABLEKS                       R2 R2 K2 ["fn"]
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       78 GETTABLEKS                       R4 R4 K1 ["Text"]
       80 JUMPIFEQ                         R0 R4 ; [+2]
       82 LOADB                            R3 0 +1
       83 LOADB                            R3 1
       84 CALL                             R2 1 0
       85 GETUPVAL                         R2 9
       86 GETTABLEKS                       R2 R2 K2 ["fn"]
       88 JUMPIFNOT                        R2 ; [+13]
       89 GETUPVAL                         R2 9
       90 GETTABLEKS                       R2 R2 K2 ["fn"]
       92 GETUPVAL                         R4 1
       93 GETTABLEKS                       R4 R4 K0 ["PromptMode"]
       95 GETTABLEKS                       R4 R4 K1 ["Text"]
       97 JUMPIFEQ                         R0 R4 ; [+2]
       99 LOADB                            R3 0 +1
      100 LOADB                            R3 1
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 10
      103 GETTABLEKS                       R2 R2 K2 ["fn"]
      105 JUMPIFNOT                        R2 ; [+80]
      106 NEWTABLE                         R2 0 0
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      111 GETTABLEKS                       R3 R3 K3 ["Image"]
      113 JUMPIFNOTEQ                      R0 R3 ; [+14]
      115 GETUPVAL                         R4 11
      116 LENGTH                           R3 R4
      117 LOADN                            R4 0
      118 JUMPIFNOTLT                      R4 R3 ; [+9]
      120 GETUPVAL                         R3 1
      121 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      123 GETTABLEKS                       R3 R3 K1 ["Text"]
      125 LOADB                            R4 1
      126 SETTABLE                         R4 R2 R3
      127 JUMP                             ; [+17]
      128 GETUPVAL                         R3 1
      129 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      131 GETTABLEKS                       R3 R3 K1 ["Text"]
      133 JUMPIFNOTEQ                      R0 R3 ; [+11]
      135 GETUPVAL                         R3 12
      136 JUMPIFEQKNIL                     R3 ; [+8]
      138 GETUPVAL                         R3 1
      139 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      141 GETTABLEKS                       R3 R3 K3 ["Image"]
      143 LOADB                            R4 1
      144 SETTABLE                         R4 R2 R3
      145 GETUPVAL                         R3 13
      146 CALL                             R3 0 1
      147 JUMPIFNOT                        R3 ; [+33]
      148 GETUPVAL                         R3 1
      149 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      151 GETTABLEKS                       R3 R3 K3 ["Image"]
      153 JUMPIFNOTEQ                      R0 R3 ; [+11]
      155 GETUPVAL                         R3 14
      156 JUMPIFNOT                        R3 ; [+8]
      157 GETUPVAL                         R3 1
      158 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      160 GETTABLEKS                       R3 R3 K1 ["Text"]
      162 LOADB                            R4 1
      163 SETTABLE                         R4 R2 R3
      164 JUMP                             ; [+16]
      165 GETUPVAL                         R3 1
      166 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      168 GETTABLEKS                       R3 R3 K1 ["Text"]
      170 JUMPIFNOTEQ                      R0 R3 ; [+10]
      172 GETUPVAL                         R3 15
      173 JUMPIFNOT                        R3 ; [+7]
      174 GETUPVAL                         R3 1
      175 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
      177 GETTABLEKS                       R3 R3 K3 ["Image"]
      179 LOADB                            R4 1
      180 SETTABLE                         R4 R2 R3
      181 GETUPVAL                         R3 10
      182 GETTABLEKS                       R3 R3 K2 ["fn"]
      184 MOVE                             R4 R2
      185 CALL                             R3 1 0
      186 GETUPVAL                         R2 16
      187 LOADB                            R3 1
      188 SETTABLEKS                       R3 R2 K4 ["value"]
      190 GETUPVAL                         R2 17
      191 LOADB                            R3 1
      192 SETTABLEKS                       R3 R2 K4 ["value"]
      194 GETUPVAL                         R2 18
      195 GETTABLEKS                       R2 R2 K2 ["fn"]
      197 JUMPIFNOT                        R2 ; [+5]
      198 GETUPVAL                         R2 18
      199 GETTABLEKS                       R2 R2 K2 ["fn"]
      201 LOADB                            R3 0
      202 CALL                             R2 1 0
      203 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["fn"]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["fn"]
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_63:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["value"]
        5 GETUPVAL                         R1 2
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["value"]
        9 LENGTH                           R1 R0
       10 JUMPIFNOTEQKN                    R1 K1 [0] ; [+20]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["fn"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["fn"]
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R1 R1 K2 ["fn"]
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R1 R1 K2 ["fn"]
       28 LOADK                            R2 K3 [""]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 5
       32 CALL                             R1 0 1
       33 JUMPIFNOT                        R1 ; [+15]
       34 GETUPVAL                         R1 6
       35 CALL                             R1 0 1
       36 JUMPIF                           R1 ; [+1]
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 7
       39 GETUPVAL                         R2 8
       40 GETTABLEKS                       R2 R2 K4 ["PromptMode"]
       42 GETTABLEKS                       R2 R2 K5 ["Text"]
       44 JUMPIFNOTEQ                      R1 R2 ; [+3]
       46 GETUPVAL                         R1 9
       47 JUMPIF                           R1 ; [+1]
       48 RETURN                           R0 0
       49 DUPTABLE                         R1 K7 [{[1] = False}]
       50 SETUPVAL                         R1 2
       51 GETIMPORT                        R2 K10 [task.delay]
       53 LOADN                            R3 2
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U10
       58 CALL                             R2 2 0
       59 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_65:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["storeImage"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_68:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+24]
        4 JUMPIFNOT                        R1 ; [+23]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
        9 GETTABLEKS                       R3 R3 K1 ["Text"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+9]
       13 LENGTH                           R3 R0
       14 LOADN                            R4 0
       15 JUMPIFLT                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 SETUPVAL                         R2 4
       20 RETURN                           R0 0
       21 LENGTH                           R3 R0
       22 LOADN                            R4 0
       23 JUMPIFLT                         R4 R3 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 SETUPVAL                         R2 5
       28 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["value"]
        8 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_72:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+25]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
        6 GETTABLEKS                       R2 R2 K1 ["Text"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+18]
       10 GETUPVAL                         R2 3
       11 LENGTH                           R1 R2
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R2 R1 ; [+13]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K2 ["fn"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K2 ["fn"]
       22 LOADB                            R2 1
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 5
       25 CALL                             R1 0 0
       26 RETURN                           R0 0
       27 JUMPIF                           R0 ; [+17]
       28 GETUPVAL                         R1 6
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R1 K3 ["value"]
       32 GETUPVAL                         R1 7
       33 LOADB                            R2 1
       34 SETTABLEKS                       R2 R1 K3 ["value"]
       36 GETUPVAL                         R1 4
       37 GETTABLEKS                       R1 R1 K2 ["fn"]
       39 JUMPIFNOT                        R1 ; [+5]
       40 GETUPVAL                         R1 4
       41 GETTABLEKS                       R1 R1 K2 ["fn"]
       43 LOADB                            R2 0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["fn"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+33]
       12 GETUPVAL                         R2 2
       13 LENGTH                           R1 R2
       14 LOADN                            R2 0
       15 JUMPIFLT                         R2 R1 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 GETUPVAL                         R2 3
       20 JUMPIFNOTEQKNIL                  R2 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIFNOT                        R0 ; [+3]
       25 JUMPIFNOT                        R1 ; [+2]
       26 LOADK                            R2 K1 ["text+image"]
       27 JUMP                             ; [+4]
       28 JUMPIFNOT                        R1 ; [+2]
       29 LOADK                            R2 K2 ["image"]
       30 JUMP                             ; [+1]
       31 LOADK                            R2 K3 ["text"]
       32 GETUPVAL                         R3 4
       33 GETTABLEKS                       R3 R3 K4 ["initArgs"]
       35 GETTABLEKS                       R3 R3 K5 ["environment"]
       37 GETTABLEKS                       R3 R3 K6 ["EventLogger"]
       39 GETTABLEKS                       R3 R3 K7 ["logGen3DSegmentationRefresh"]
       41 DUPTABLE                         R4 K11 [{["modelFlow"] = "mesh", ["inputFormat"]}]
       42 SETTABLEKS                       R2 R4 K10 ["inputFormat"]
       44 CALL                             R3 1 0
       45 GETUPVAL                         R0 5
       46 CALL                             R0 0 0
       47 RETURN                           R0 0

PROTO_74:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["bridge"]
        5 GETTABLEKS                       R1 R1 K3 ["destroyViewportBoundingBoxAsync"]
        7 DUPTABLE                         R2 K5 [{"uniqueId"}]
        8 GETUPVAL                         R4 1
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["uniqueId"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["uniqueId"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+32]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["PromptMode"]
        7 GETTABLEKS                       R2 R2 K1 ["Text"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+18]
       11 GETTABLEKS                       R1 R0 K2 ["textPrompt"]
       13 LOADB                            R2 0
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K4 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+7]
       21 LENGTH                           R3 R1
       22 LOADN                            R4 0
       23 JUMPIFLT                         R4 R3 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R0 K6 ["hintImage"]
       30 JUMPIFNOTEQKNIL                  R2 ; [+2]
       32 LOADB                            R1 0 +1
       33 LOADB                            R1 1
       34 RETURN                           R1 1
       35 GETTABLEKS                       R1 R0 K2 ["textPrompt"]
       37 GETTABLEKS                       R2 R0 K6 ["hintImage"]
       39 FASTCALL1                        TYPEOF R1 ; [+3]
       40 MOVE                             R5 R1
       41 GETIMPORT                        R4 K4 [typeof]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+6]
       46 LOADB                            R3 1
       47 LENGTH                           R4 R1
       48 LOADN                            R5 0
       49 JUMPIFLT                         R5 R4 ; [+5]
       51 JUMPIFNOTEQKNIL                  R2 ; [+2]
       53 LOADB                            R3 0 +1
       54 LOADB                            R3 1
       55 RETURN                           R3 1

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createGuestContext"]
        3 LOADNIL                          R1
        4 DUPTABLE                         R2 K5 [{["isThirdPartyRequest"] = False, ["contentId"] = }]
        5 CALL                             R0 2 1
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+34]
       10 GETIMPORT                        R2 K7 [pcall]
       12 GETTABLEKS                       R3 R0 K8 ["bridge"]
       14 GETTABLEKS                       R3 R3 K9 ["createViewportBoundingBoxAsync"]
       16 CALL                             R2 1 2
       17 JUMPIFNOT                        R2 ; [+2]
       18 MOVE                             R1 R3
       19 JUMP                             ; [+1]
       20 LOADNIL                          R1
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+29]
       24 JUMPIFNOT                        R2 ; [+9]
       25 GETIMPORT                        R4 K11 [print]
       27 LOADK                            R5 K12 ["[MeshGen] createViewportBoundingBoxAsync succeeded, uniqueId:"]
       28 MOVE                             R6 R1
       29 JUMPIFNOT                        R6 ; [+2]
       30 GETTABLEKS                       R6 R1 K13 ["uniqueId"]
       32 CALL                             R4 2 0
       33 JUMP                             ; [+19]
       34 GETIMPORT                        R4 K15 [warn]
       36 LOADK                            R5 K16 ["[MeshGen] createViewportBoundingBoxAsync FAILED:"]
       37 FASTCALL1                        TOSTRING R3 ; [+3]
       38 MOVE                             R7 R3
       39 GETIMPORT                        R6 K18 [tostring]
       41 CALL                             R6 1 1
       42 CALL                             R4 2 0
       43 JUMP                             ; [+9]
       44 GETUPVAL                         R2 3
       45 CALL                             R2 0 1
       46 JUMPIFNOT                        R2 ; [+6]
       47 GETTABLEKS                       R2 R0 K8 ["bridge"]
       49 GETTABLEKS                       R2 R2 K19 ["getSelectedBoundingBox"]
       51 CALL                             R2 0 1
       52 MOVE                             R1 R2
       53 DUPTABLE                         R2 K21 [{["fn"] = }]
       54 DUPTABLE                         R3 K21 [{["fn"] = }]
       55 DUPTABLE                         R4 K23 [{["value"] = False}]
       56 DUPTABLE                         R5 K23 [{["value"] = False}]
       57 GETUPVAL                         R7 4
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R8 R8 K24 ["PromptMode"]
       61 GETTABLEKS                       R8 R8 K25 ["Text"]
       63 JUMPIFNOTEQ                      R7 R8 ; [+3]
       65 GETUPVAL                         R6 6
       66 JUMP                             ; [+1]
       67 GETUPVAL                         R6 7
       68 DUPTABLE                         R7 K21 [{["fn"] = }]
       69 DUPTABLE                         R8 K21 [{["fn"] = }]
       70 DUPTABLE                         R9 K21 [{["fn"] = }]
       71 DUPTABLE                         R10 K21 [{["fn"] = }]
       72 DUPTABLE                         R11 K21 [{["fn"] = }]
       73 NEWCLOSURE                       R12 P0
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          REF R4
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          REF R6
       83 CAPTURE                          VAL R2
       84 NEWCLOSURE                       R13 P1
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          REF R6
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          UPVAL U13
       99 CAPTURE                          UPVAL U14
      100 CAPTURE                          UPVAL U15
      101 CAPTURE                          REF R4
      102 CAPTURE                          REF R5
      103 CAPTURE                          VAL R3
      104 MOVE                             R14 R12
      105 CALL                             R14 0 0
      106 NEWTABLE                         R14 0 0
      108 GETUPVAL                         R15 1
      109 CALL                             R15 0 1
      110 JUMPIFNOT                        R15 ; [+70]
      111 MOVE                             R16 R14
      112 GETUPVAL                         R17 16
      113 GETTABLEKS                       R17 R17 K26 ["createSelectRowDefinition"]
      115 DUPTABLE                         R18 K34 [{["label"], ["prop"] = "promptMode", ["initialValue"], ["options"], ["onChanged"], ["registerSetBadges"]}]
      116 GETUPVAL                         R19 17
      117 LOADK                            R21 K35 ["MeshGen"]
      118 LOADK                            R22 K36 ["InputPromptModeTitle"]
      119 NAMECALL                         R19 R19 K37 ["getText"]
      121 CALL                             R19 3 1
      122 SETTABLEKS                       R19 R18 K27 ["label"]
      124 GETUPVAL                         R19 4
      125 SETTABLEKS                       R19 R18 K30 ["initialValue"]
      127 DUPTABLE                         R19 K39 [{"items"}]
      128 NEWTABLE                         R20 0 2
      130 DUPTABLE                         R21 K42 [{"id", "text"}]
      131 GETUPVAL                         R22 5
      132 GETTABLEKS                       R22 R22 K24 ["PromptMode"]
      134 GETTABLEKS                       R22 R22 K25 ["Text"]
      136 SETTABLEKS                       R22 R21 K40 ["id"]
      138 GETUPVAL                         R22 17
      139 LOADK                            R24 K43 ["Gen3d"]
      140 LOADK                            R25 K44 ["PromptModeText"]
      141 NAMECALL                         R22 R22 K37 ["getText"]
      143 CALL                             R22 3 1
      144 SETTABLEKS                       R22 R21 K41 ["text"]
      146 DUPTABLE                         R22 K42 [{"id", "text"}]
      147 GETUPVAL                         R23 5
      148 GETTABLEKS                       R23 R23 K24 ["PromptMode"]
      150 GETTABLEKS                       R23 R23 K45 ["Image"]
      152 SETTABLEKS                       R23 R22 K40 ["id"]
      154 GETUPVAL                         R23 17
      155 LOADK                            R25 K43 ["Gen3d"]
      156 LOADK                            R26 K46 ["PromptModeImage"]
      157 NAMECALL                         R23 R23 K37 ["getText"]
      159 CALL                             R23 3 1
      160 SETTABLEKS                       R23 R22 K41 ["text"]
      162 SETLIST                          R20 R21 2 [1]
      164 SETTABLEKS                       R20 R19 K38 ["items"]
      166 SETTABLEKS                       R19 R18 K31 ["options"]
      168 NEWCLOSURE                       R19 P2
      169 CAPTURE                          VAL R13
      170 SETTABLEKS                       R19 R18 K32 ["onChanged"]
      172 NEWCLOSURE                       R19 P3
      173 CAPTURE                          VAL R11
      174 SETTABLEKS                       R19 R18 K33 ["registerSetBadges"]
      176 CALL                             R17 1 -1
      177 FASTCALL                         TABLE_INSERT ; [+2]
      178 GETIMPORT                        R15 K49 [table.insert]
      180 CALL                             R15 -1 0
      181 GETUPVAL                         R15 8
      182 CALL                             R15 0 1
      183 JUMPIFNOT                        R15 ; [+74]
      184 MOVE                             R16 R14
      185 GETUPVAL                         R17 16
      186 GETTABLEKS                       R17 R17 K50 ["createStringRowDefinition"]
      188 DUPTABLE                         R18 K56 [{["label"], ["prop"] = "textPrompt", ["initialValue"], ["multiLine"] = True, ["initialVisible"], ["registerSetVisible"], ["onChanged"]}]
      189 GETUPVAL                         R19 17
      190 LOADK                            R21 K35 ["MeshGen"]
      191 LOADK                            R22 K57 ["InputPromptTitle"]
      192 NAMECALL                         R19 R19 K37 ["getText"]
      194 CALL                             R19 3 1
      195 SETTABLEKS                       R19 R18 K27 ["label"]
      197 GETUPVAL                         R20 1
      198 CALL                             R20 0 1
      199 JUMPIFNOT                        R20 ; [+10]
      200 GETUPVAL                         R20 4
      201 GETUPVAL                         R21 5
      202 GETTABLEKS                       R21 R21 K24 ["PromptMode"]
      204 GETTABLEKS                       R21 R21 K45 ["Image"]
      206 JUMPIFNOTEQ                      R20 R21 ; [+3]
      208 LOADK                            R19 K58 [""]
      209 JUMP                             ; [+1]
      210 GETUPVAL                         R19 9
      211 SETTABLEKS                       R19 R18 K30 ["initialValue"]
      213 GETUPVAL                         R20 1
      214 CALL                             R20 0 1
      215 JUMPIFNOT                        R20 ; [+11]
      216 GETUPVAL                         R20 4
      217 GETUPVAL                         R21 5
      218 GETTABLEKS                       R21 R21 K24 ["PromptMode"]
      220 GETTABLEKS                       R21 R21 K25 ["Text"]
      222 JUMPIFEQ                         R20 R21 ; [+2]
      224 LOADB                            R19 0 +1
      225 LOADB                            R19 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R19
      228 SETTABLEKS                       R19 R18 K54 ["initialVisible"]
      230 GETUPVAL                         R20 1
      231 CALL                             R20 0 1
      232 JUMPIFNOT                        R20 ; [+3]
      233 NEWCLOSURE                       R19 P4
      234 CAPTURE                          VAL R7
      235 JUMP                             ; [+1]
      236 LOADNIL                          R19
      237 SETTABLEKS                       R19 R18 K55 ["registerSetVisible"]
      239 NEWCLOSURE                       R19 P5
      240 CAPTURE                          UPVAL U9
      241 CAPTURE                          REF R4
      242 CAPTURE                          REF R5
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R2
      245 CAPTURE                          UPVAL U1
      246 CAPTURE                          UPVAL U8
      247 CAPTURE                          UPVAL U4
      248 CAPTURE                          UPVAL U5
      249 CAPTURE                          UPVAL U10
      250 CAPTURE                          VAL R12
      251 SETTABLEKS                       R19 R18 K32 ["onChanged"]
      253 CALL                             R17 1 -1
      254 FASTCALL                         TABLE_INSERT ; [+2]
      255 GETIMPORT                        R15 K49 [table.insert]
      257 CALL                             R15 -1 0
      258 GETUPVAL                         R15 1
      259 CALL                             R15 0 1
      260 JUMPIFNOT                        R15 ; [+58]
      261 MOVE                             R16 R14
      262 GETUPVAL                         R17 16
      263 GETTABLEKS                       R17 R17 K59 ["createHintImageRowDefinition"]
      265 DUPTABLE                         R18 K61 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["initialVisible"], ["registerSetVisible"], ["onChanged"]}]
      266 GETUPVAL                         R19 17
      267 LOADK                            R21 K35 ["MeshGen"]
      268 LOADK                            R22 K62 ["InputHintImageTitle"]
      269 NAMECALL                         R19 R19 K37 ["getText"]
      271 CALL                             R19 3 1
      272 SETTABLEKS                       R19 R18 K27 ["label"]
      274 GETUPVAL                         R20 4
      275 GETUPVAL                         R21 5
      276 GETTABLEKS                       R21 R21 K24 ["PromptMode"]
      278 GETTABLEKS                       R21 R21 K45 ["Image"]
      280 JUMPIFNOTEQ                      R20 R21 ; [+9]
      282 GETUPVAL                         R20 12
      283 JUMPIFNOT                        R20 ; [+6]
      284 GETUPVAL                         R19 18
      285 GETTABLEKS                       R19 R19 K63 ["getImage"]
      287 GETUPVAL                         R20 12
      288 CALL                             R19 1 1
      289 JUMP                             ; [+1]
      290 LOADNIL                          R19
      291 SETTABLEKS                       R19 R18 K30 ["initialValue"]
      293 GETUPVAL                         R20 4
      294 GETUPVAL                         R21 5
      295 GETTABLEKS                       R21 R21 K24 ["PromptMode"]
      297 GETTABLEKS                       R21 R21 K45 ["Image"]
      299 JUMPIFEQ                         R20 R21 ; [+2]
      301 LOADB                            R19 0 +1
      302 LOADB                            R19 1
      303 SETTABLEKS                       R19 R18 K54 ["initialVisible"]
      305 NEWCLOSURE                       R19 P6
      306 CAPTURE                          VAL R8
      307 SETTABLEKS                       R19 R18 K55 ["registerSetVisible"]
      309 NEWCLOSURE                       R19 P7
      310 CAPTURE                          UPVAL U12
      311 CAPTURE                          UPVAL U18
      312 SETTABLEKS                       R19 R18 K32 ["onChanged"]
      314 CALL                             R17 1 -1
      315 FASTCALL                         TABLE_INSERT ; [+2]
      316 GETIMPORT                        R15 K49 [table.insert]
      318 CALL                             R15 -1 0
      319 MOVE                             R16 R14
      320 GETUPVAL                         R17 16
      321 GETTABLEKS                       R17 R17 K64 ["createNumberRowDefinition"]
      323 DUPTABLE                         R18 K66 [{["label"], ["prop"] = "maxTriangles", ["initialValue"], ["options"]}]
      324 GETUPVAL                         R19 17
      325 LOADK                            R21 K35 ["MeshGen"]
      326 LOADK                            R22 K67 ["InputTriangleCountTitle"]
      327 NAMECALL                         R19 R19 K37 ["getText"]
      329 CALL                             R19 3 1
      330 SETTABLEKS                       R19 R18 K27 ["label"]
      332 GETUPVAL                         R19 19
      333 CALL                             R19 0 1
      334 SETTABLEKS                       R19 R18 K30 ["initialValue"]
      336 DUPTABLE                         R19 K70 [{"min", "max"}]
      337 GETUPVAL                         R20 20
      338 SETTABLEKS                       R20 R19 K68 ["min"]
      340 GETUPVAL                         R20 21
      341 SETTABLEKS                       R20 R19 K69 ["max"]
      343 SETTABLEKS                       R19 R18 K31 ["options"]
      345 CALL                             R17 1 -1
      346 FASTCALL                         TABLE_INSERT ; [+2]
      347 GETIMPORT                        R15 K49 [table.insert]
      349 CALL                             R15 -1 0
      350 GETUPVAL                         R15 8
      351 CALL                             R15 0 1
      352 JUMPIFNOT                        R15 ; [+100]
      353 MOVE                             R16 R14
      354 GETUPVAL                         R17 16
      355 GETTABLEKS                       R17 R17 K71 ["createPartNamesRowDefinition"]
      357 DUPTABLE                         R18 K79 [{["label"], ["prop"] = "partNames", ["initialValue"], ["isLoading"], ["registerSetValue"], ["registerSetIsLoading"], ["onChanged"], ["onCancelPressed"], ["onSuggestPressed"], ["infoPopoverNamespace"]}]
      358 GETUPVAL                         R19 17
      359 LOADK                            R21 K35 ["MeshGen"]
      360 LOADK                            R22 K80 ["InputPartNamesTitle"]
      361 NAMECALL                         R19 R19 K37 ["getText"]
      363 CALL                             R19 3 1
      364 SETTABLEKS                       R19 R18 K27 ["label"]
      366 GETUPVAL                         R20 1
      367 CALL                             R20 0 1
      368 JUMPIFNOT                        R20 ; [+6]
      369 LENGTH                           R20 R6
      370 LOADN                            R21 0
      371 JUMPIFNOTLT                      R21 R20 ; [+3]
      373 MOVE                             R19 R6
      374 JUMP                             ; [+1]
      375 LOADNIL                          R19
      376 SETTABLEKS                       R19 R18 K30 ["initialValue"]
      378 GETUPVAL                         R20 1
      379 CALL                             R20 0 1
      380 JUMPIFNOT                        R20 ; [+19]
      381 LOADB                            R19 0
      382 GETUPVAL                         R20 4
      383 GETUPVAL                         R21 5
      384 GETTABLEKS                       R21 R21 K24 ["PromptMode"]
      386 GETTABLEKS                       R21 R21 K25 ["Text"]
      388 JUMPIFNOTEQ                      R20 R21 ; [+18]
      390 GETUPVAL                         R19 10
      391 JUMPIFNOT                        R19 ; [+15]
      392 GETUPVAL                         R21 9
      393 LENGTH                           R20 R21
      394 LOADN                            R21 0
      395 JUMPIFLT                         R21 R20 ; [+2]
      397 LOADB                            R19 0 +1
      398 LOADB                            R19 1
      399 JUMP                             ; [+7]
      400 GETUPVAL                         R21 9
      401 LENGTH                           R20 R21
      402 LOADN                            R21 0
      403 JUMPIFLT                         R21 R20 ; [+2]
      405 LOADB                            R19 0 +1
      406 LOADB                            R19 1
      407 SETTABLEKS                       R19 R18 K73 ["isLoading"]
      409 NEWCLOSURE                       R19 P8
      410 CAPTURE                          VAL R2
      411 SETTABLEKS                       R19 R18 K74 ["registerSetValue"]
      413 NEWCLOSURE                       R19 P9
      414 CAPTURE                          VAL R3
      415 SETTABLEKS                       R19 R18 K75 ["registerSetIsLoading"]
      417 GETUPVAL                         R20 1
      418 CALL                             R20 0 1
      419 JUMPIFNOT                        R20 ; [+8]
      420 NEWCLOSURE                       R19 P10
      421 CAPTURE                          REF R6
      422 CAPTURE                          UPVAL U13
      423 CAPTURE                          UPVAL U4
      424 CAPTURE                          UPVAL U5
      425 CAPTURE                          UPVAL U14
      426 CAPTURE                          UPVAL U15
      427 JUMP                             ; [+1]
      428 LOADNIL                          R19
      429 SETTABLEKS                       R19 R18 K32 ["onChanged"]
      431 NEWCLOSURE                       R19 P11
      432 CAPTURE                          REF R4
      433 CAPTURE                          REF R5
      434 SETTABLEKS                       R19 R18 K76 ["onCancelPressed"]
      436 NEWCLOSURE                       R19 P12
      437 CAPTURE                          VAL R12
      438 SETTABLEKS                       R19 R18 K77 ["onSuggestPressed"]
      440 GETUPVAL                         R20 1
      441 CALL                             R20 0 1
      442 JUMPIFNOT                        R20 ; [+2]
      443 LOADK                            R19 K81 ["MeshGenSegmentation"]
      444 JUMP                             ; [+1]
      445 LOADNIL                          R19
      446 SETTABLEKS                       R19 R18 K78 ["infoPopoverNamespace"]
      448 CALL                             R17 1 -1
      449 FASTCALL                         TABLE_INSERT ; [+2]
      450 GETIMPORT                        R15 K49 [table.insert]
      452 CALL                             R15 -1 0
      453 GETUPVAL                         R15 1
      454 CALL                             R15 0 1
      455 JUMPIFNOT                        R15 ; [+52]
      456 GETUPVAL                         R15 8
      457 CALL                             R15 0 1
      458 JUMPIFNOT                        R15 ; [+49]
      459 MOVE                             R16 R14
      460 GETUPVAL                         R17 16
      461 GETTABLEKS                       R17 R17 K82 ["createSuggestSegmentationRowDefinition"]
      463 DUPTABLE                         R18 K89 [{["label"] = "", ["prop"] = "suggestSegmentation", ["initialChecked"], ["initialEnabled"], ["registerSetIsEnabled"], ["onCheckedChanged"], ["onRefreshPressed"]}]
      464 GETUPVAL                         R19 10
      465 SETTABLEKS                       R19 R18 K84 ["initialChecked"]
      467 GETUPVAL                         R20 4
      468 GETUPVAL                         R21 5
      469 GETTABLEKS                       R21 R21 K24 ["PromptMode"]
      471 GETTABLEKS                       R21 R21 K25 ["Text"]
      473 JUMPIFEQ                         R20 R21 ; [+2]
      475 LOADB                            R19 0 +1
      476 LOADB                            R19 1
      477 SETTABLEKS                       R19 R18 K85 ["initialEnabled"]
      479 NEWCLOSURE                       R19 P13
      480 CAPTURE                          VAL R10
      481 SETTABLEKS                       R19 R18 K86 ["registerSetIsEnabled"]
      483 NEWCLOSURE                       R19 P14
      484 CAPTURE                          UPVAL U10
      485 CAPTURE                          UPVAL U4
      486 CAPTURE                          UPVAL U5
      487 CAPTURE                          UPVAL U9
      488 CAPTURE                          VAL R3
      489 CAPTURE                          VAL R12
      490 CAPTURE                          REF R4
      491 CAPTURE                          REF R5
      492 SETTABLEKS                       R19 R18 K87 ["onCheckedChanged"]
      494 NEWCLOSURE                       R19 P15
      495 CAPTURE                          VAL R3
      496 CAPTURE                          UPVAL U22
      497 CAPTURE                          UPVAL U9
      498 CAPTURE                          UPVAL U12
      499 CAPTURE                          VAL R0
      500 CAPTURE                          VAL R12
      501 SETTABLEKS                       R19 R18 K88 ["onRefreshPressed"]
      503 CALL                             R17 1 -1
      504 FASTCALL                         TABLE_INSERT ; [+2]
      505 GETIMPORT                        R15 K49 [table.insert]
      507 CALL                             R15 -1 0
      508 MOVE                             R16 R14
      509 GETUPVAL                         R17 16
      510 GETTABLEKS                       R17 R17 K90 ["createInstanceRowDefinition"]
      512 DUPTABLE                         R18 K92 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["initialVisible"], ["options"]}]
      513 GETUPVAL                         R19 17
      514 LOADK                            R21 K35 ["MeshGen"]
      515 LOADK                            R22 K93 ["InputBoundingBox"]
      516 NAMECALL                         R19 R19 K37 ["getText"]
      518 CALL                             R19 3 1
      519 SETTABLEKS                       R19 R18 K27 ["label"]
      521 SETTABLEKS                       R1 R18 K30 ["initialValue"]
      523 GETUPVAL                         R20 1
      524 CALL                             R20 0 1
      525 JUMPIFNOT                        R20 ; [+2]
      526 LOADB                            R19 0
      527 JUMP                             ; [+1]
      528 LOADNIL                          R19
      529 SETTABLEKS                       R19 R18 K54 ["initialVisible"]
      531 DUPTABLE                         R19 K95 [{"isA"}]
      532 NEWTABLE                         R20 0 1
      534 GETUPVAL                         R21 23
      535 GETTABLEKS                       R21 R21 K96 ["BOUNDING_BOX_INSTANCE_TYPE"]
      537 SETLIST                          R20 R21 1 [1]
      539 SETTABLEKS                       R20 R19 K94 ["isA"]
      541 SETTABLEKS                       R19 R18 K31 ["options"]
      543 CALL                             R17 1 -1
      544 FASTCALL                         TABLE_INSERT ; [+2]
      545 GETIMPORT                        R15 K49 [table.insert]
      547 CALL                             R15 -1 0
      548 DUPTABLE                         R15 K102 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm"}]
      549 GETUPVAL                         R16 17
      550 LOADK                            R18 K35 ["MeshGen"]
      551 LOADK                            R19 K103 ["InputDisclaimer"]
      552 NAMECALL                         R16 R16 K37 ["getText"]
      554 CALL                             R16 3 1
      555 SETTABLEKS                       R16 R15 K97 ["description"]
      557 GETUPVAL                         R16 17
      558 LOADK                            R18 K35 ["MeshGen"]
      559 LOADK                            R19 K104 ["InputGenerateMesh"]
      560 NAMECALL                         R16 R16 K37 ["getText"]
      562 CALL                             R16 3 1
      563 SETTABLEKS                       R16 R15 K98 ["confirmButtonText"]
      565 SETTABLEKS                       R14 R15 K99 ["propertyRows"]
      567 GETUPVAL                         R17 1
      568 CALL                             R17 0 1
      569 JUMPIFNOT                        R17 ; [+4]
      570 NEWCLOSURE                       R16 P16
      571 CAPTURE                          VAL R0
      572 CAPTURE                          REF R1
      573 JUMP                             ; [+1]
      574 LOADNIL                          R16
      575 SETTABLEKS                       R16 R15 K100 ["onCancel"]
      577 GETUPVAL                         R17 24
      578 CALL                             R17 0 1
      579 JUMPIFNOT                        R17 ; [+5]
      580 NEWCLOSURE                       R16 P17
      581 CAPTURE                          UPVAL U1
      582 CAPTURE                          UPVAL U4
      583 CAPTURE                          UPVAL U5
      584 JUMP                             ; [+1]
      585 LOADNIL                          R16
      586 SETTABLEKS                       R16 R15 K101 ["canConfirm"]
      588 CLOSEUPVALS                      R1
      589 RETURN                           R15 1

PROTO_77:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_78:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_79:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Type"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 2 0
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U6
       18 GETUPVAL                         R3 7
       19 GETTABLEKS                       R3 R3 K2 ["define"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R5 8
       23 GETTABLEKS                       R5 R5 K3 ["MeshGen"]
       25 NAMECALL                         R3 R3 K4 ["setName"]
       27 CALL                             R3 2 1
       28 LOADK                            R5 K5 ["Generates a textured mesh from a prompt using AI."]
       29 NAMECALL                         R3 R3 K6 ["setDescription"]
       31 CALL                             R3 2 1
       32 LOADK                            R5 K7 ["textPrompt"]
       33 DUPTABLE                         R6 K12 [{["type"] = "string", ["description"] = "The text prompt describing the mesh to generate."}]
       34 NAMECALL                         R3 R3 K13 ["addArgument"]
       36 CALL                             R3 3 1
       37 LOADK                            R5 K14 ["size"]
       38 DUPTABLE                         R6 K19 [{["type"] = "object", ["description"] = "The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt.", ["properties"], ["required"]}]
       39 DUPTABLE                         R7 K23 [{"x", "y", "z"}]
       40 DUPTABLE                         R8 K26 [{["type"] = "number", ["description"] = "X dimension scalar."}]
       41 SETTABLEKS                       R8 R7 K20 ["x"]
       43 DUPTABLE                         R8 K28 [{["type"] = "number", ["description"] = "Y dimension scalar."}]
       44 SETTABLEKS                       R8 R7 K21 ["y"]
       46 DUPTABLE                         R8 K30 [{["type"] = "number", ["description"] = "Z dimension scalar."}]
       47 SETTABLEKS                       R8 R7 K22 ["z"]
       49 SETTABLEKS                       R7 R6 K17 ["properties"]
       51 NEWTABLE                         R7 0 3
       53 LOADK                            R8 K20 ["x"]
       54 LOADK                            R9 K21 ["y"]
       55 LOADK                            R10 K22 ["z"]
       56 SETLIST                          R7 R8 3 [1]
       58 SETTABLEKS                       R7 R6 K18 ["required"]
       60 NAMECALL                         R3 R3 K31 ["addOptionalArgument"]
       62 CALL                             R3 3 1
       63 LOADK                            R5 K32 ["maxTriangles"]
       64 DUPTABLE                         R6 K33 [{["type"] = "number", ["description"]}]
       65 LOADK                            R8 K34 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
       66 GETUPVAL                         R10 9
       67 GETUPVAL                         R11 10
       68 NAMECALL                         R8 R8 K35 ["format"]
       70 CALL                             R8 3 1
       71 MOVE                             R7 R8
       72 SETTABLEKS                       R7 R6 K10 ["description"]
       74 NAMECALL                         R3 R3 K31 ["addOptionalArgument"]
       76 CALL                             R3 3 1
       77 LOADK                            R5 K36 ["partNames"]
       78 DUPTABLE                         R6 K37 [{["type"] = "string", ["description"]}]
       79 GETUPVAL                         R8 11
       80 CALL                             R8 0 1
       81 JUMPIFNOT                        R8 ; [+2]
       82 LOADK                            R7 K38 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       83 JUMP                             ; [+1]
       84 LOADK                            R7 K39 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
       85 SETTABLEKS                       R7 R6 K10 ["description"]
       87 NAMECALL                         R3 R3 K31 ["addOptionalArgument"]
       89 CALL                             R3 3 1
       90 GETUPVAL                         R4 11
       91 CALL                             R4 0 1
       92 JUMPIFNOT                        R4 ; [+10]
       93 LOADK                            R6 K40 ["segmentation"]
       94 DUPTABLE                         R7 K43 [{["type"] = "string", ["enum"], ["description"] = "Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       95 GETUPVAL                         R8 12
       96 GETTABLEKS                       R8 R8 K44 ["SegmentationArgValues"]
       98 SETTABLEKS                       R8 R7 K41 ["enum"]
      100 NAMECALL                         R4 R3 K31 ["addOptionalArgument"]
      102 CALL                             R4 3 0
      103 DUPTABLE                         R6 K52 [{["title"] = "Mesh Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      104 NAMECALL                         R4 R3 K53 ["setAnnotations"]
      106 CALL                             R4 2 1
      107 MOVE                             R6 R2
      108 NAMECALL                         R4 R4 K54 ["setHandler"]
      110 CALL                             R4 2 1
      111 NAMECALL                         R4 R4 K55 ["build"]
      113 CALL                             R4 1 1
      114 DUPCLOSURE                       R5 K56 [PROTO_52]
      115 CAPTURE                          UPVAL U13
      116 LOADK                            R6 K57 [""]
      117 LOADNIL                          R7
      118 GETUPVAL                         R8 12
      119 GETTABLEKS                       R8 R8 K58 ["PromptMode"]
      121 GETTABLEKS                       R8 R8 K59 ["Text"]
      123 LOADB                            R9 1
      124 LOADK                            R10 K57 [""]
      125 LOADK                            R11 K57 [""]
      126 LOADB                            R12 0
      127 LOADB                            R13 0
      128 DUPTABLE                         R14 K65 [{["command"] = "generate_mesh", ["getDescription"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      129 DUPCLOSURE                       R15 K66 [PROTO_53]
      130 CAPTURE                          UPVAL U14
      131 SETTABLEKS                       R15 R14 K62 ["getDescription"]
      133 NEWCLOSURE                       R15 P5
      134 CAPTURE                          REF R6
      135 CAPTURE                          REF R7
      136 CAPTURE                          UPVAL U15
      137 CAPTURE                          REF R8
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          UPVAL U13
      140 CAPTURE                          UPVAL U8
      141 SETTABLEKS                       R15 R14 K63 ["mapToToolCall"]
      143 NEWCLOSURE                       R15 P6
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U15
      146 CAPTURE                          UPVAL U16
      147 CAPTURE                          UPVAL U17
      148 CAPTURE                          REF R8
      149 CAPTURE                          UPVAL U12
      150 CAPTURE                          REF R10
      151 CAPTURE                          REF R11
      152 CAPTURE                          UPVAL U18
      153 CAPTURE                          REF R6
      154 CAPTURE                          REF R9
      155 CAPTURE                          UPVAL U19
      156 CAPTURE                          REF R7
      157 CAPTURE                          UPVAL U20
      158 CAPTURE                          REF R12
      159 CAPTURE                          REF R13
      160 CAPTURE                          UPVAL U21
      161 CAPTURE                          UPVAL U14
      162 CAPTURE                          UPVAL U22
      163 CAPTURE                          UPVAL U23
      164 CAPTURE                          UPVAL U9
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          UPVAL U24
      167 CAPTURE                          UPVAL U25
      168 CAPTURE                          UPVAL U26
      169 SETTABLEKS                       R15 R14 K64 ["getInputRequestArguments"]
      171 DUPTABLE                         R15 K68 [{"transformInitialContent"}]
      172 DUPCLOSURE                       R16 K69 [PROTO_77]
      173 CAPTURE                          UPVAL U1
      174 SETTABLEKS                       R16 R15 K67 ["transformInitialContent"]
      176 DUPTABLE                         R16 K77 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      177 SETTABLEKS                       R4 R16 K70 ["definition"]
      179 NEWTABLE                         R17 0 1
      181 MOVE                             R18 R14
      182 SETLIST                          R17 R18 1 [1]
      184 SETTABLEKS                       R17 R16 K71 ["slashCommands"]
      186 GETUPVAL                         R18 27
      187 CALL                             R18 0 1
      188 JUMPIFNOT                        R18 ; [+2]
      189 LOADNIL                          R17
      190 JUMP                             ; [+5]
      191 NEWTABLE                         R17 0 1
      193 GETUPVAL                         R18 1
      194 SETLIST                          R17 R18 1 [1]
      196 SETTABLEKS                       R17 R16 K72 ["contentWidgets"]
      198 SETTABLEKS                       R15 R16 K73 ["streamTransform"]
      200 DUPCLOSURE                       R17 K78 [PROTO_78]
      201 SETTABLEKS                       R17 R16 K74 ["getPreExecuteWarning"]
      203 GETUPVAL                         R18 27
      204 CALL                             R18 0 1
      205 JUMPIFNOT                        R18 ; [+2]
      206 LOADNIL                          R17
      207 JUMP                             ; [+2]
      208 DUPCLOSURE                       R17 K79 [PROTO_79]
      209 CAPTURE                          UPVAL U14
      210 SETTABLEKS                       R17 R16 K75 ["displayNameFunction"]
      212 DUPTABLE                         R17 K82 [{["resetTimeoutOnProgress"] = True}]
      213 SETTABLEKS                       R17 R16 K76 ["toolCallOptions"]
      215 CLOSEUPVALS                      R6
      216 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K14 ["ImageContentStore"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K15 ["ModelContextProtocol"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Parent"]
       44 GETTABLEKS                       R7 R7 K16 ["Promise"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K17 ["Components"]
       51 GETTABLEKS                       R8 R8 K18 ["PropertyRows"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K13 ["Util"]
       58 GETTABLEKS                       R9 R9 K19 ["Serializer"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K10 [require]
       63 GETTABLEKS                       R10 R0 K11 ["Parent"]
       65 GETTABLEKS                       R10 R10 K20 ["Signal"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K10 [require]
       70 GETTABLEKS                       R11 R0 K13 ["Util"]
       72 GETTABLEKS                       R11 R11 K21 ["SlashCommandArgs"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K10 [require]
       77 GETTABLEKS                       R12 R0 K22 ["Tools"]
       79 GETTABLEKS                       R12 R12 K23 ["ToolTypes"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K10 [require]
       84 GETTABLEKS                       R13 R0 K13 ["Util"]
       86 GETTABLEKS                       R13 R13 K24 ["ToolUtils"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETTABLEKS                       R14 R0 K25 ["Resources"]
       93 GETTABLEKS                       R14 R14 K26 ["Localization"]
       95 GETTABLEKS                       R14 R14 K27 ["Translator"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K10 [require]
      100 GETTABLEKS                       R15 R0 K28 ["Types"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K1 [script]
      105 LOADK                            R17 K29 ["MeshGen"]
      106 NAMECALL                         R15 R15 K3 ["FindFirstAncestor"]
      108 CALL                             R15 2 1
      109 GETIMPORT                        R16 K10 [require]
      111 GETTABLEKS                       R17 R15 K30 ["MeshGenTool"]
      113 GETTABLEKS                       R17 R17 K31 ["MeshGenBridgeTypes"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K10 [require]
      118 GETTABLEKS                       R18 R15 K32 ["MeshGenConstants"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K10 [require]
      123 GETTABLEKS                       R19 R15 K33 ["MeshGenContentWidget"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K10 [require]
      128 GETTABLEKS                       R20 R15 K34 ["MeshGenSchemaSelector"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K10 [require]
      133 GETTABLEKS                       R21 R15 K35 ["MeshGenTypes"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K10 [require]
      138 GETTABLEKS                       R22 R0 K36 ["Features"]
      140 GETTABLEKS                       R22 R22 K37 ["Gen3dUtils"]
      142 GETTABLEKS                       R22 R22 K38 ["SegmentationEnums"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K10 [require]
      147 GETTABLEKS                       R23 R0 K39 ["Flags"]
      149 GETTABLEKS                       R23 R23 K40 ["FFlagAssistantGen3DTelemetryV2"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R23 K10 [require]
      154 GETTABLEKS                       R24 R0 K39 ["Flags"]
      156 GETTABLEKS                       R24 R24 K41 ["FFlagAssistantGen3dAutoSegmentation"]
      158 CALL                             R23 1 1
      159 GETIMPORT                        R24 K10 [require]
      161 GETTABLEKS                       R25 R0 K39 ["Flags"]
      163 GETTABLEKS                       R25 R25 K42 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K10 [require]
      168 GETTABLEKS                       R26 R0 K39 ["Flags"]
      170 GETTABLEKS                       R26 R26 K43 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K10 [require]
      175 GETTABLEKS                       R27 R0 K39 ["Flags"]
      177 GETTABLEKS                       R27 R27 K44 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K10 [require]
      182 GETTABLEKS                       R28 R0 K39 ["Flags"]
      184 GETTABLEKS                       R28 R28 K45 ["FFlagAssistantSegmentationBridge"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K10 [require]
      189 GETTABLEKS                       R29 R0 K39 ["Flags"]
      191 GETTABLEKS                       R29 R29 K46 ["FFlagAssistantSegmentationPromptModeSelector"]
      193 CALL                             R28 1 1
      194 GETIMPORT                        R29 K10 [require]
      196 GETTABLEKS                       R30 R0 K39 ["Flags"]
      198 GETTABLEKS                       R30 R30 K47 ["FFlagAssistantSegmentationUIFixes"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K10 [require]
      203 GETTABLEKS                       R31 R0 K39 ["Flags"]
      205 GETTABLEKS                       R31 R31 K48 ["FFlagAssistantSplitToolsAndWidgets"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K10 [require]
      210 GETTABLEKS                       R32 R0 K39 ["Flags"]
      212 GETTABLEKS                       R32 R32 K49 ["FFlagDebugLogAssistantUI"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K10 [require]
      217 GETTABLEKS                       R33 R0 K39 ["Flags"]
      219 GETTABLEKS                       R33 R33 K50 ["FFlagGen3dSegmentationSelector"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K10 [require]
      224 GETTABLEKS                       R34 R0 K39 ["Flags"]
      226 GETTABLEKS                       R34 R34 K51 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      228 CALL                             R33 1 1
      229 GETIMPORT                        R34 K10 [require]
      231 GETTABLEKS                       R35 R0 K39 ["Flags"]
      233 GETTABLEKS                       R35 R35 K52 ["FStringAssistantMeshGenImageGenModelOverride"]
      235 CALL                             R34 1 1
      236 GETIMPORT                        R35 K10 [require]
      238 GETTABLEKS                       R36 R0 K39 ["Flags"]
      240 GETTABLEKS                       R36 R36 K53 ["FStringAssistantMeshGenInferenceServiceOverride"]
      242 CALL                             R35 1 1
      243 GETTABLEKS                       R36 R5 K13 ["Util"]
      245 GETTABLEKS                       R36 R36 K54 ["ToolBuilder"]
      247 GETTABLEKS                       R37 R5 K13 ["Util"]
      249 GETTABLEKS                       R37 R37 K55 ["ToolResult"]
      251 GETTABLEKS                       R38 R11 K56 ["ToolNames"]
      253 GETTABLEKS                       R39 R17 K57 ["Enums"]
      255 GETTABLEKS                       R40 R17 K58 ["MAX_TRIANGLES_LOWER_BOUND"]
      257 GETTABLEKS                       R41 R17 K59 ["MAX_TRIANGLES_UPPER_BOUND"]
      259 GETTABLEKS                       R42 R17 K60 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      261 DUPCLOSURE                       R43 K61 [PROTO_0]
      262 CAPTURE                          VAL R2
      263 DUPCLOSURE                       R44 K62 [PROTO_2]
      264 CAPTURE                          VAL R28
      265 CAPTURE                          VAL R21
      266 CAPTURE                          VAL R40
      267 CAPTURE                          VAL R41
      268 CAPTURE                          VAL R23
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R26
      271 CAPTURE                          VAL R35
      272 CAPTURE                          VAL R34
      273 DUPCLOSURE                       R45 K63 [PROTO_3]
      274 CAPTURE                          VAL R3
      275 DUPCLOSURE                       R46 K64 [PROTO_4]
      276 CAPTURE                          VAL R3
      277 DUPCLOSURE                       R47 K65 [PROTO_14]
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R39
      280 CAPTURE                          VAL R42
      281 DUPCLOSURE                       R48 K66 [PROTO_17]
      282 CAPTURE                          VAL R39
      283 CAPTURE                          VAL R47
      284 CAPTURE                          VAL R26
      285 CAPTURE                          VAL R31
      286 CAPTURE                          VAL R22
      287 CAPTURE                          VAL R3
      288 DUPCLOSURE                       R49 K67 [PROTO_20]
      289 CAPTURE                          VAL R39
      290 CAPTURE                          VAL R47
      291 CAPTURE                          VAL R3
      292 DUPCLOSURE                       R50 K68 [PROTO_22]
      293 CAPTURE                          VAL R39
      294 CAPTURE                          VAL R47
      295 CAPTURE                          VAL R22
      296 DUPCLOSURE                       R51 K69 [PROTO_36]
      297 CAPTURE                          VAL R18
      298 CAPTURE                          VAL R47
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R48
      301 CAPTURE                          VAL R39
      302 CAPTURE                          VAL R49
      303 CAPTURE                          VAL R50
      304 CAPTURE                          VAL R25
      305 DUPCLOSURE                       R52 K70 [PROTO_37]
      306 CAPTURE                          VAL R18
      307 DUPCLOSURE                       R53 K71 [PROTO_38]
      308 CAPTURE                          VAL R44
      309 CAPTURE                          VAL R47
      310 CAPTURE                          VAL R39
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R18
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R51
      315 CAPTURE                          VAL R52
      316 CAPTURE                          VAL R20
      317 DUPCLOSURE                       R54 K72 [PROTO_40]
      318 CAPTURE                          VAL R47
      319 DUPCLOSURE                       R55 K73 [PROTO_41]
      320 CAPTURE                          VAL R47
      321 DUPCLOSURE                       R56 K74 [PROTO_47]
      322 CAPTURE                          VAL R47
      323 CAPTURE                          VAL R6
      324 CAPTURE                          VAL R1
      325 DUPCLOSURE                       R57 K75 [PROTO_48]
      326 DUPTABLE                         R58 K80 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage", "reportGeneratedInstanceDeleted"}]
      327 SETTABLEKS                       R54 R58 K76 ["updateContentHeader"]
      329 SETTABLEKS                       R55 R58 K77 ["setPreviewStateAsync"]
      331 SETTABLEKS                       R56 R58 K78 ["setPreviewImage"]
      333 SETTABLEKS                       R57 R58 K79 ["reportGeneratedInstanceDeleted"]
      335 DUPCLOSURE                       R59 K81 [PROTO_80]
      336 CAPTURE                          VAL R8
      337 CAPTURE                          VAL R18
      338 CAPTURE                          VAL R51
      339 CAPTURE                          VAL R52
      340 CAPTURE                          VAL R53
      341 CAPTURE                          VAL R12
      342 CAPTURE                          VAL R37
      343 CAPTURE                          VAL R36
      344 CAPTURE                          VAL R38
      345 CAPTURE                          VAL R40
      346 CAPTURE                          VAL R41
      347 CAPTURE                          VAL R23
      348 CAPTURE                          VAL R21
      349 CAPTURE                          VAL R10
      350 CAPTURE                          VAL R13
      351 CAPTURE                          VAL R28
      352 CAPTURE                          VAL R31
      353 CAPTURE                          VAL R27
      354 CAPTURE                          VAL R32
      355 CAPTURE                          VAL R19
      356 CAPTURE                          VAL R29
      357 CAPTURE                          VAL R7
      358 CAPTURE                          VAL R4
      359 CAPTURE                          VAL R33
      360 CAPTURE                          VAL R22
      361 CAPTURE                          VAL R17
      362 CAPTURE                          VAL R24
      363 CAPTURE                          VAL R30
      364 DUPTABLE                         R60 K84 [{"bridge", "setupGuest"}]
      365 SETTABLEKS                       R58 R60 K82 ["bridge"]
      367 SETTABLEKS                       R59 R60 K83 ["setupGuest"]
      369 RETURN                           R60 1
