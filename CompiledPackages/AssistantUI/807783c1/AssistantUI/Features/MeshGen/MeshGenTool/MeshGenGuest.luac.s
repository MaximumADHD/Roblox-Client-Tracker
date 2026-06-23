PROTO_0:
        0 DUPTABLE                         R5 K3 [{"isThirdPartyRequest", "messageId", "contentId"}]
        1 SETTABLEKS                       R2 R5 K0 ["isThirdPartyRequest"]
        3 SETTABLEKS                       R3 R5 K1 ["messageId"]
        5 SETTABLEKS                       R4 R5 K2 ["contentId"]
        7 DUPTABLE                         R6 K5 [{"handlerArgs"}]
        8 SETTABLEKS                       R5 R6 K4 ["handlerArgs"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K6 ["createGuestContext"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 MOVE                             R10 R1
       16 LOADNIL                          R11
       17 CALL                             R7 4 -1
       18 RETURN                           R7 -1

PROTO_1:
        0 LOADK                            R1 K0 ["MeshGen-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_2:
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

PROTO_3:
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
      291 JUMPIF                           R10 ; [+19]
      292 DUPTABLE                         R10 K57 [{"generateImage", "multiMeshGenInferenceServiceOverride", "imageGenModelOverride", "multiTextureImageInput", "enableMeshScaleFactorTensor"}]
      293 LOADK                            R11 K58 ["true"]
      294 SETTABLEKS                       R11 R10 K52 ["generateImage"]
      296 GETUPVAL                         R11 7
      297 CALL                             R11 0 1
      298 SETTABLEKS                       R11 R10 K53 ["multiMeshGenInferenceServiceOverride"]
      300 GETUPVAL                         R11 8
      301 CALL                             R11 0 1
      302 SETTABLEKS                       R11 R10 K54 ["imageGenModelOverride"]
      304 LOADK                            R11 K58 ["true"]
      305 SETTABLEKS                       R11 R10 K55 ["multiTextureImageInput"]
      307 LOADK                            R11 K58 ["true"]
      308 SETTABLEKS                       R11 R10 K56 ["enableMeshScaleFactorTensor"]
      310 MOVE                             R9 R10
      311 GETTABLEKS                       R10 R0 K59 ["isManualRun"]
      313 JUMPIFEQKNIL                     R10 ; [+16]
      315 FASTCALL1                        TYPEOF R10 ; [+3]
      316 MOVE                             R14 R10
      317 GETIMPORT                        R13 K1 [typeof]
      319 CALL                             R13 1 1
      320 JUMPIFEQKS                       R13 K60 ["boolean"] ; [+2]
      322 LOADB                            R12 0 +1
      323 LOADB                            R12 1
      324 FASTCALL2K                       ASSERT R12 K61 ; [+4]
      326 LOADK                            R13 K61 ["isManualRun must be a boolean"]
      327 GETIMPORT                        R11 K5 [assert]
      329 CALL                             R11 2 0
      330 GETTABLEKS                       R11 R0 K62 ["selectedInstanceRef"]
      332 LOADNIL                          R12
      333 JUMPIFEQKNIL                     R11 ; [+34]
      335 FASTCALL1                        TYPEOF R11 ; [+3]
      336 MOVE                             R16 R11
      337 GETIMPORT                        R15 K1 [typeof]
      339 CALL                             R15 1 1
      340 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      342 LOADB                            R14 0 +1
      343 LOADB                            R14 1
      344 FASTCALL2K                       ASSERT R14 K63 ; [+4]
      346 LOADK                            R15 K63 ["selectedInstanceRef must be a table"]
      347 GETIMPORT                        R13 K5 [assert]
      349 CALL                             R13 2 0
      350 GETTABLEKS                       R16 R11 K64 ["uniqueId"]
      352 FASTCALL1                        TYPEOF R16 ; [+2]
      353 GETIMPORT                        R15 K1 [typeof]
      355 CALL                             R15 1 1
      356 JUMPIFEQKS                       R15 K13 ["string"] ; [+2]
      358 LOADB                            R14 0 +1
      359 LOADB                            R14 1
      360 FASTCALL2K                       ASSERT R14 K65 ; [+4]
      362 LOADK                            R15 K65 ["selectedInstanceRef.uniqueId must be a string"]
      363 GETIMPORT                        R13 K5 [assert]
      365 CALL                             R13 2 0
      366 GETTABLEKS                       R12 R11 K64 ["uniqueId"]
      368 DUPTABLE                         R13 K68 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      369 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      371 SETTABLEKS                       R4 R13 K15 ["size"]
      373 SETTABLEKS                       R5 R13 K36 ["maxTriangles"]
      375 SETTABLEKS                       R6 R13 K49 ["partNames"]
      377 SETTABLEKS                       R7 R13 K41 ["segmentationMode"]
      379 SETTABLEKS                       R9 R13 K66 ["adminOptions"]
      381 SETTABLEKS                       R8 R13 K7 ["hintImage"]
      383 SETTABLEKS                       R10 R13 K59 ["isManualRun"]
      385 SETTABLEKS                       R12 R13 K67 ["selectedUniqueId"]
      387 RETURN                           R13 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["messageId"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R3 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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
       15 GETUPVAL                         R2 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R2
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 NEWCLOSURE                       R6 P4
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R2
       19 DUPTABLE                         R7 K7 [{"updateWidget", "replaceContent", "setPreviewState", "setFailureReason", "setPreviewImage"}]
       20 SETTABLEKS                       R2 R7 K2 ["updateWidget"]
       22 SETTABLEKS                       R3 R7 K3 ["replaceContent"]
       24 SETTABLEKS                       R4 R7 K4 ["setPreviewState"]
       26 SETTABLEKS                       R5 R7 K5 ["setFailureReason"]
       28 SETTABLEKS                       R6 R7 K6 ["setPreviewImage"]
       30 RETURN                           R7 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R1 K1 ["Generated"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_18:
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
       61 GETTABLEKS                       R9 R0 K19 ["toolArgs"]
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R1 K1 ["Published"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_21:
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
       39 GETTABLEKS                       R7 R0 K12 ["toolArgs"]
       41 GETTABLEKS                       R7 R7 K13 ["environment"]
       43 JUMPIF                           R4 ; [+59]
       44 GETTABLEKS                       R8 R7 K14 ["EventLogger"]
       46 GETTABLEKS                       R8 R8 K15 ["logMeshGenPublishedAssets"]
       48 DUPTABLE                         R9 K22 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       49 GETTABLEKS                       R10 R1 K16 ["requestId"]
       51 SETTABLEKS                       R10 R9 K16 ["requestId"]
       53 GETTABLEKS                       R10 R1 K17 ["generationId"]
       55 SETTABLEKS                       R10 R9 K17 ["generationId"]
       57 SETTABLEKS                       R4 R9 K18 ["success"]
       59 SETTABLEKS                       R6 R9 K19 ["errorMessage"]
       61 LOADNIL                          R10
       62 SETTABLEKS                       R10 R9 K20 ["meshId"]
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K21 ["imageId"]
       67 CALL                             R8 1 0
       68 LOADK                            R10 K23 ["HTTP error %(status=(%d+)"]
       69 NAMECALL                         R8 R6 K24 ["match"]
       71 CALL                             R8 2 1
       72 JUMPIFNOTEQKS                    R8 K25 ["403"] ; [+10]
       74 GETTABLEKS                       R9 R3 K26 ["setFailureReason"]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K27 ["FailureReason"]
       79 GETTABLEKS                       R10 R10 K28 ["AssetPermissionCreationFailed"]
       81 CALL                             R9 1 0
       82 JUMP                             ; [+8]
       83 GETTABLEKS                       R9 R3 K26 ["setFailureReason"]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K27 ["FailureReason"]
       88 GETTABLEKS                       R10 R10 K29 ["PublishFailed"]
       90 CALL                             R9 1 0
       91 GETIMPORT                        R9 K31 [warn]
       93 LOADK                            R11 K32 ["Failed to publish assets with error: %*"]
       94 MOVE                             R13 R6
       95 NAMECALL                         R11 R11 K33 ["format"]
       97 CALL                             R11 2 1
       98 MOVE                             R10 R11
       99 CALL                             R9 1 0
      100 LOADB                            R9 0
      101 MOVE                             R10 R6
      102 RETURN                           R9 2
      103 GETTABLEKS                       R8 R5 K34 ["assets"]
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 GETTABLEKS                       R13 R12 K20 ["meshId"]
      110 LOADK                            R15 K35 ["%d+"]
      111 NAMECALL                         R13 R13 K24 ["match"]
      113 CALL                             R13 2 1
      114 GETTABLEKS                       R14 R12 K36 ["textureId"]
      116 LOADK                            R16 K35 ["%d+"]
      117 NAMECALL                         R14 R14 K24 ["match"]
      119 CALL                             R14 2 1
      120 GETTABLEKS                       R15 R7 K14 ["EventLogger"]
      122 GETTABLEKS                       R15 R15 K15 ["logMeshGenPublishedAssets"]
      124 DUPTABLE                         R16 K22 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
      125 GETTABLEKS                       R17 R1 K16 ["requestId"]
      127 SETTABLEKS                       R17 R16 K16 ["requestId"]
      129 GETTABLEKS                       R17 R1 K17 ["generationId"]
      131 SETTABLEKS                       R17 R16 K17 ["generationId"]
      133 SETTABLEKS                       R4 R16 K18 ["success"]
      135 SETTABLEKS                       R6 R16 K19 ["errorMessage"]
      137 FASTCALL1                        TONUMBER R13 ; [+3]
      138 MOVE                             R18 R13
      139 GETIMPORT                        R17 K38 [tonumber]
      141 CALL                             R17 1 1
      142 SETTABLEKS                       R17 R16 K20 ["meshId"]
      144 FASTCALL1                        TONUMBER R14 ; [+3]
      145 MOVE                             R18 R14
      146 GETIMPORT                        R17 K38 [tonumber]
      148 CALL                             R17 1 1
      149 SETTABLEKS                       R17 R16 K21 ["imageId"]
      151 CALL                             R15 1 0
      152 FORGLOOP                         R8 2 ; [-45]
      154 DUPTABLE                         R9 K40 [{"type", "requestId", "generationId", "generationName"}]
      155 GETUPVAL                         R10 0
      156 GETTABLEKS                       R10 R10 K1 ["GenerationMetaType"]
      158 GETTABLEKS                       R10 R10 K41 ["Published"]
      160 SETTABLEKS                       R10 R9 K0 ["type"]
      162 GETTABLEKS                       R10 R1 K16 ["requestId"]
      164 SETTABLEKS                       R10 R9 K16 ["requestId"]
      166 GETTABLEKS                       R10 R1 K17 ["generationId"]
      168 SETTABLEKS                       R10 R9 K17 ["generationId"]
      170 GETTABLEKS                       R10 R1 K39 ["generationName"]
      172 SETTABLEKS                       R10 R9 K39 ["generationName"]
      174 MOVE                             R10 R1
      175 LOADNIL                          R11
      176 LOADNIL                          R12
      177 FORGPREP                         R10
      178 LOADNIL                          R15
      179 SETTABLE                         R15 R1 R13
      180 FORGLOOP                         R10 1 ; [-3]
      182 GETUPVAL                         R10 2
      183 GETTABLEKS                       R10 R10 K42 ["assign"]
      185 MOVE                             R11 R1
      186 MOVE                             R12 R9
      187 CALL                             R10 2 0
      188 MOVE                             R8 R1
      189 GETTABLEKS                       R9 R3 K43 ["updateWidget"]
      191 NEWCLOSURE                       R10 P1
      192 CAPTURE                          UPVAL U0
      193 CAPTURE                          VAL R8
      194 CALL                             R9 1 0
      195 LOADB                            R9 1
      196 RETURN                           R9 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["insertAssetsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_23:
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
       73 GETTABLEKS                       R12 R0 K20 ["toolArgs"]
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["removeSelectedBoundsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 2
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R2 4
        7 GETUPVAL                         R3 1
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
       11 DUPCLOSURE                       R4 K1 [PROTO_32]
       12 CALL                             R3 1 0
       13 RETURN                           R0 2

PROTO_34:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_35:
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
       45 JUMPIFNOT                        R0 ; [+7]
       46 GETUPVAL                         R2 6
       47 GETUPVAL                         R3 4
       48 CALL                             R2 1 1
       49 GETTABLEKS                       R3 R2 K5 ["updateWidget"]
       51 DUPCLOSURE                       R4 K6 [PROTO_34]
       52 CALL                             R3 1 0
       53 RETURN                           R0 2

PROTO_36:
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

PROTO_37:
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
       60 CAPTURE                          UPVAL U1
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
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R10 R2 K9 ["addToPlace"]
       76 NEWCLOSURE                       R10 P6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R10 R2 K10 ["onChipClicked"]
       82 CLOSEUPVALS                      R5
       83 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K3 ["handlerArgs"]
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

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R0 K0 ["toolArgs"]
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
       32 DUPTABLE                         R6 K29 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K30 ["Type"]
       36 SETTABLEKS                       R7 R6 K4 ["type"]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K31 ["Modes"]
       41 GETTABLEKS                       R7 R7 K32 ["ShowPreview"]
       43 SETTABLEKS                       R7 R6 K11 ["mode"]
       45 LOADB                            R7 1
       46 SETTABLEKS                       R7 R6 K12 ["expanded"]
       48 GETTABLEKS                       R7 R2 K33 ["textPrompt"]
       50 SETTABLEKS                       R7 R6 K13 ["name"]
       52 GETTABLEKS                       R7 R2 K33 ["textPrompt"]
       54 SETTABLEKS                       R7 R6 K14 ["displayName"]
       56 LOADNIL                          R7
       57 SETTABLEKS                       R7 R6 K15 ["className"]
       59 LOADNIL                          R7
       60 SETTABLEKS                       R7 R6 K16 ["previewImages"]
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K34 ["PreviewState"]
       65 GETTABLEKS                       R7 R7 K35 ["GeneratingMesh"]
       67 SETTABLEKS                       R7 R6 K17 ["previewState"]
       69 LOADNIL                          R7
       70 SETTABLEKS                       R7 R6 K18 ["failureReason"]
       72 LOADNIL                          R7
       73 SETTABLEKS                       R7 R6 K19 ["generationRetryCount"]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K20 ["publishAttemptCount"]
       78 SETTABLEKS                       R2 R6 K21 ["validatedArgs"]
       80 SETTABLEKS                       R5 R6 K22 ["generationMeta"]
       82 GETUPVAL                         R7 5
       83 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
       85 LOADK                            R8 K23 ["retryGeneration"]
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K23 ["retryGeneration"]
       89 GETUPVAL                         R7 5
       90 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
       92 LOADK                            R8 K24 ["cancelGeneration"]
       93 CALL                             R7 1 1
       94 SETTABLEKS                       R7 R6 K24 ["cancelGeneration"]
       96 GETUPVAL                         R7 5
       97 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
       99 LOADK                            R8 K25 ["publishAssets"]
      100 CALL                             R7 1 1
      101 SETTABLEKS                       R7 R6 K25 ["publishAssets"]
      103 GETUPVAL                         R7 5
      104 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
      106 LOADK                            R8 K26 ["insertAssets"]
      107 CALL                             R7 1 1
      108 SETTABLEKS                       R7 R6 K26 ["insertAssets"]
      110 LOADB                            R7 0
      111 SETTABLEKS                       R7 R6 K27 ["shouldShowChip"]
      113 GETUPVAL                         R7 5
      114 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
      116 LOADK                            R8 K28 ["onChipClicked"]
      117 CALL                             R7 1 1
      118 SETTABLEKS                       R7 R6 K28 ["onChipClicked"]
      120 GETUPVAL                         R7 6
      121 MOVE                             R8 R0
      122 MOVE                             R9 R2
      123 MOVE                             R10 R6
      124 CALL                             R7 3 0
      125 GETTABLEKS                       R7 R3 K37 ["replaceContent"]
      127 MOVE                             R8 R6
      128 CALL                             R7 1 0
      129 GETUPVAL                         R7 7
      130 MOVE                             R8 R0
      131 MOVE                             R9 R6
      132 CALL                             R7 2 0
      133 GETTABLEKS                       R7 R6 K23 ["retryGeneration"]
      135 CALL                             R7 0 2
      136 JUMPIF                           R7 ; [+11]
      137 GETIMPORT                        R9 K39 [error]
      139 LOADK                            R11 K40 ["Mesh generation failed with error: "]
      140 FASTCALL1                        TOSTRING R8 ; [+3]
      141 MOVE                             R13 R8
      142 GETIMPORT                        R12 K42 [tostring]
      144 CALL                             R12 1 1
      145 CONCAT                           R10 R11 R12
      146 LOADN                            R11 0
      147 CALL                             R9 2 0
      148 GETTABLEKS                       R9 R2 K43 ["isManualRun"]
      150 JUMPIFNOT                        R9 ; [+2]
      151 LOADK                            R9 K44 ["Mesh generated successfully"]
      152 RETURN                           R9 1
      153 GETTABLEKS                       R9 R6 K25 ["publishAssets"]
      155 CALL                             R9 0 2
      156 JUMPIF                           R9 ; [+11]
      157 GETIMPORT                        R11 K39 [error]
      159 LOADK                            R13 K45 ["Failed to publish assets with error: "]
      160 FASTCALL1                        TOSTRING R10 ; [+3]
      161 MOVE                             R15 R10
      162 GETIMPORT                        R14 K42 [tostring]
      164 CALL                             R14 1 1
      165 CONCAT                           R12 R13 R14
      166 LOADN                            R13 0
      167 CALL                             R11 2 0
      168 GETTABLEKS                       R11 R6 K26 ["insertAssets"]
      170 CALL                             R11 0 2
      171 JUMPIF                           R11 ; [+11]
      172 GETIMPORT                        R13 K39 [error]
      174 LOADK                            R15 K46 ["Failed to insert assets with error: "]
      175 FASTCALL1                        TOSTRING R12 ; [+3]
      176 MOVE                             R17 R12
      177 GETIMPORT                        R16 K42 [tostring]
      179 CALL                             R16 1 1
      180 CONCAT                           R14 R15 R16
      181 LOADN                            R15 0
      182 CALL                             R13 2 0
      183 DUPTABLE                         R13 K48 [{"tag"}]
      184 GETUPVAL                         R14 8
      185 GETTABLEKS                       R14 R14 K49 ["getLinkTag"]
      187 GETTABLEKS                       R15 R5 K5 ["requestId"]
      189 CALL                             R14 1 1
      190 SETTABLEKS                       R14 R13 K47 ["tag"]
      192 RETURN                           R13 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["showChip"]
       13 SETTABLEKS                       R1 R0 K5 ["shouldShowChip"]
       15 DUPTABLE                         R1 K7 [{"rawTransformValues"}]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K6 ["rawTransformValues"]
       19 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewState"]
        5 GETTABLEKS                       R4 R0 K1 ["state"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R2 R1 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
        6 GETTABLEKS                       R3 R3 K3 ["logGen3DInstanceDeleted"]
        8 DUPTABLE                         R4 K8 [{"requestId", "generationId", "modelFlow", "secondsSinceInsertion"}]
        9 GETTABLEKS                       R5 R0 K4 ["requestId"]
       11 SETTABLEKS                       R5 R4 K4 ["requestId"]
       13 GETTABLEKS                       R5 R0 K5 ["generationId"]
       15 SETTABLEKS                       R5 R4 K5 ["generationId"]
       17 LOADK                            R5 K9 ["mesh"]
       18 SETTABLEKS                       R5 R4 K6 ["modelFlow"]
       20 GETTABLEKS                       R5 R0 K7 ["secondsSinceInsertion"]
       22 SETTABLEKS                       R5 R4 K7 ["secondsSinceInsertion"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 0
        4 LOADNIL                          R6
        5 MOVE                             R7 R0
        6 CALL                             R2 5 1
        7 GETTABLEKS                       R3 R1 K0 ["validatedArgs"]
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R2
       11 MOVE                             R6 R3
       12 MOVE                             R7 R1
       13 CALL                             R4 3 0
       14 GETUPVAL                         R4 4
       15 MOVE                             R5 R2
       16 MOVE                             R6 R1
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

PROTO_52:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADB                            R2 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K1 ["messageId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K3 ["contentId"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K2 [""]
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 MOVE                             R10 R4
       21 CALL                             R5 5 1
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R5
       24 MOVE                             R8 R0
       25 CALL                             R6 2 1
       26 RETURN                           R6 1

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_56:
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
       41 DUPTABLE                         R3 K12 [{"textPrompt", "size", "maxTriangles", "segmentationMode", "isManualRun", "selectedInstanceRef"}]
       42 SETTABLEKS                       R0 R3 K7 ["textPrompt"]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K8 ["size"]
       47 GETTABLEKS                       R4 R2 K4 ["maxTriangles"]
       49 SETTABLEKS                       R4 R3 K4 ["maxTriangles"]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K9 ["segmentationMode"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K10 ["isManualRun"]
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K11 ["selectedInstanceRef"]
       60 DUPTABLE                         R4 K15 [{"name", "arguments"}]
       61 GETUPVAL                         R5 6
       62 GETTABLEKS                       R5 R5 K16 ["MeshGen"]
       64 SETTABLEKS                       R5 R4 K13 ["name"]
       66 SETTABLEKS                       R3 R4 K14 ["arguments"]
       68 RETURN                           R4 1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_58:
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

PROTO_59:
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
       23 DUPTABLE                         R0 K4 [{"value"}]
       24 LOADB                            R1 0
       25 SETTABLEKS                       R1 R0 K3 ["value"]
       27 SETUPVAL                         R0 6
       28 GETIMPORT                        R1 K7 [task.spawn]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
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
       49 DUPTABLE                         R1 K6 [{"value"}]
       50 LOADB                            R2 0
       51 SETTABLEKS                       R2 R1 K0 ["value"]
       53 SETUPVAL                         R1 2
       54 GETIMPORT                        R2 K9 [task.delay]
       56 LOADN                            R3 2
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          UPVAL U10
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_70:
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

PROTO_71:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["value"]
        8 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["fn"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+36]
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
       33 GETTABLEKS                       R3 R3 K4 ["toolArgs"]
       35 GETTABLEKS                       R3 R3 K5 ["environment"]
       37 GETTABLEKS                       R3 R3 K6 ["EventLogger"]
       39 GETTABLEKS                       R3 R3 K7 ["logGen3DSegmentationRefresh"]
       41 DUPTABLE                         R4 K10 [{"modelFlow", "inputFormat"}]
       42 LOADK                            R5 K11 ["mesh"]
       43 SETTABLEKS                       R5 R4 K8 ["modelFlow"]
       45 SETTABLEKS                       R2 R4 K9 ["inputFormat"]
       47 CALL                             R3 1 0
       48 GETUPVAL                         R0 5
       49 CALL                             R0 0 0
       50 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
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

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 LOADB                            R3 0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 CALL                             R0 5 1
        7 LOADNIL                          R1
        8 GETUPVAL                         R2 3
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+34]
       11 GETIMPORT                        R2 K1 [pcall]
       13 GETTABLEKS                       R3 R0 K2 ["bridge"]
       15 GETTABLEKS                       R3 R3 K3 ["createViewportBoundingBoxAsync"]
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R1 R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R1
       22 GETUPVAL                         R4 4
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+29]
       25 JUMPIFNOT                        R2 ; [+9]
       26 GETIMPORT                        R4 K5 [print]
       28 LOADK                            R5 K6 ["[MeshGen] createViewportBoundingBoxAsync succeeded, uniqueId:"]
       29 MOVE                             R6 R1
       30 JUMPIFNOT                        R6 ; [+2]
       31 GETTABLEKS                       R6 R1 K7 ["uniqueId"]
       33 CALL                             R4 2 0
       34 JUMP                             ; [+19]
       35 GETIMPORT                        R4 K9 [warn]
       37 LOADK                            R5 K10 ["[MeshGen] createViewportBoundingBoxAsync FAILED:"]
       38 FASTCALL1                        TOSTRING R3 ; [+3]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R6 K12 [tostring]
       42 CALL                             R6 1 1
       43 CALL                             R4 2 0
       44 JUMP                             ; [+9]
       45 GETUPVAL                         R2 5
       46 CALL                             R2 0 1
       47 JUMPIFNOT                        R2 ; [+6]
       48 GETTABLEKS                       R2 R0 K2 ["bridge"]
       50 GETTABLEKS                       R2 R2 K13 ["getSelectedBoundingBox"]
       52 CALL                             R2 0 1
       53 MOVE                             R1 R2
       54 DUPTABLE                         R2 K15 [{"fn"}]
       55 LOADNIL                          R3
       56 SETTABLEKS                       R3 R2 K14 ["fn"]
       58 DUPTABLE                         R3 K15 [{"fn"}]
       59 LOADNIL                          R4
       60 SETTABLEKS                       R4 R3 K14 ["fn"]
       62 DUPTABLE                         R4 K17 [{"value"}]
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R4 K16 ["value"]
       66 DUPTABLE                         R5 K17 [{"value"}]
       67 LOADB                            R6 0
       68 SETTABLEKS                       R6 R5 K16 ["value"]
       70 GETUPVAL                         R7 6
       71 GETUPVAL                         R8 7
       72 GETTABLEKS                       R8 R8 K18 ["PromptMode"]
       74 GETTABLEKS                       R8 R8 K19 ["Text"]
       76 JUMPIFNOTEQ                      R7 R8 ; [+3]
       78 GETUPVAL                         R6 8
       79 JUMP                             ; [+1]
       80 GETUPVAL                         R6 9
       81 DUPTABLE                         R7 K15 [{"fn"}]
       82 LOADNIL                          R8
       83 SETTABLEKS                       R8 R7 K14 ["fn"]
       85 DUPTABLE                         R8 K15 [{"fn"}]
       86 LOADNIL                          R9
       87 SETTABLEKS                       R9 R8 K14 ["fn"]
       89 DUPTABLE                         R9 K15 [{"fn"}]
       90 LOADNIL                          R10
       91 SETTABLEKS                       R10 R9 K14 ["fn"]
       93 DUPTABLE                         R10 K15 [{"fn"}]
       94 LOADNIL                          R11
       95 SETTABLEKS                       R11 R10 K14 ["fn"]
       97 DUPTABLE                         R11 K15 [{"fn"}]
       98 LOADNIL                          R12
       99 SETTABLEKS                       R12 R11 K14 ["fn"]
      101 NEWCLOSURE                       R12 P0
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U7
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          REF R4
      109 CAPTURE                          UPVAL U13
      110 CAPTURE                          REF R6
      111 CAPTURE                          VAL R2
      112 NEWCLOSURE                       R13 P1
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          UPVAL U7
      115 CAPTURE                          UPVAL U8
      116 CAPTURE                          REF R6
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          UPVAL U11
      125 CAPTURE                          UPVAL U14
      126 CAPTURE                          UPVAL U15
      127 CAPTURE                          UPVAL U16
      128 CAPTURE                          UPVAL U17
      129 CAPTURE                          REF R4
      130 CAPTURE                          REF R5
      131 CAPTURE                          VAL R3
      132 MOVE                             R14 R12
      133 CALL                             R14 0 0
      134 NEWTABLE                         R14 0 0
      136 GETUPVAL                         R15 3
      137 CALL                             R15 0 1
      138 JUMPIFNOT                        R15 ; [+73]
      139 MOVE                             R16 R14
      140 GETUPVAL                         R17 18
      141 GETTABLEKS                       R17 R17 K20 ["createSelectRowDefinition"]
      143 DUPTABLE                         R18 K27 [{"label", "prop", "initialValue", "options", "onChanged", "registerSetBadges"}]
      144 GETUPVAL                         R19 19
      145 LOADK                            R21 K28 ["MeshGen"]
      146 LOADK                            R22 K29 ["InputPromptModeTitle"]
      147 NAMECALL                         R19 R19 K30 ["getText"]
      149 CALL                             R19 3 1
      150 SETTABLEKS                       R19 R18 K21 ["label"]
      152 LOADK                            R19 K31 ["promptMode"]
      153 SETTABLEKS                       R19 R18 K22 ["prop"]
      155 GETUPVAL                         R19 6
      156 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      158 DUPTABLE                         R19 K33 [{"items"}]
      159 NEWTABLE                         R20 0 2
      161 DUPTABLE                         R21 K36 [{"id", "text"}]
      162 GETUPVAL                         R22 7
      163 GETTABLEKS                       R22 R22 K18 ["PromptMode"]
      165 GETTABLEKS                       R22 R22 K19 ["Text"]
      167 SETTABLEKS                       R22 R21 K34 ["id"]
      169 GETUPVAL                         R22 19
      170 LOADK                            R24 K37 ["Gen3d"]
      171 LOADK                            R25 K38 ["PromptModeText"]
      172 NAMECALL                         R22 R22 K30 ["getText"]
      174 CALL                             R22 3 1
      175 SETTABLEKS                       R22 R21 K35 ["text"]
      177 DUPTABLE                         R22 K36 [{"id", "text"}]
      178 GETUPVAL                         R23 7
      179 GETTABLEKS                       R23 R23 K18 ["PromptMode"]
      181 GETTABLEKS                       R23 R23 K39 ["Image"]
      183 SETTABLEKS                       R23 R22 K34 ["id"]
      185 GETUPVAL                         R23 19
      186 LOADK                            R25 K37 ["Gen3d"]
      187 LOADK                            R26 K40 ["PromptModeImage"]
      188 NAMECALL                         R23 R23 K30 ["getText"]
      190 CALL                             R23 3 1
      191 SETTABLEKS                       R23 R22 K35 ["text"]
      193 SETLIST                          R20 R21 2 [1]
      195 SETTABLEKS                       R20 R19 K32 ["items"]
      197 SETTABLEKS                       R19 R18 K24 ["options"]
      199 NEWCLOSURE                       R19 P2
      200 CAPTURE                          VAL R13
      201 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      203 NEWCLOSURE                       R19 P3
      204 CAPTURE                          VAL R11
      205 SETTABLEKS                       R19 R18 K26 ["registerSetBadges"]
      207 CALL                             R17 1 -1
      208 FASTCALL                         TABLE_INSERT ; [+2]
      209 GETIMPORT                        R15 K43 [table.insert]
      211 CALL                             R15 -1 0
      212 GETUPVAL                         R15 10
      213 CALL                             R15 0 1
      214 JUMPIFNOT                        R15 ; [+80]
      215 MOVE                             R16 R14
      216 GETUPVAL                         R17 18
      217 GETTABLEKS                       R17 R17 K44 ["createStringRowDefinition"]
      219 DUPTABLE                         R18 K48 [{"label", "prop", "initialValue", "multiLine", "initialVisible", "registerSetVisible", "onChanged"}]
      220 GETUPVAL                         R19 19
      221 LOADK                            R21 K28 ["MeshGen"]
      222 LOADK                            R22 K49 ["InputPromptTitle"]
      223 NAMECALL                         R19 R19 K30 ["getText"]
      225 CALL                             R19 3 1
      226 SETTABLEKS                       R19 R18 K21 ["label"]
      228 LOADK                            R19 K50 ["textPrompt"]
      229 SETTABLEKS                       R19 R18 K22 ["prop"]
      231 GETUPVAL                         R20 3
      232 CALL                             R20 0 1
      233 JUMPIFNOT                        R20 ; [+10]
      234 GETUPVAL                         R20 6
      235 GETUPVAL                         R21 7
      236 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      238 GETTABLEKS                       R21 R21 K39 ["Image"]
      240 JUMPIFNOTEQ                      R20 R21 ; [+3]
      242 LOADK                            R19 K51 [""]
      243 JUMP                             ; [+1]
      244 GETUPVAL                         R19 11
      245 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      247 LOADB                            R19 1
      248 SETTABLEKS                       R19 R18 K45 ["multiLine"]
      250 GETUPVAL                         R20 3
      251 CALL                             R20 0 1
      252 JUMPIFNOT                        R20 ; [+11]
      253 GETUPVAL                         R20 6
      254 GETUPVAL                         R21 7
      255 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      257 GETTABLEKS                       R21 R21 K19 ["Text"]
      259 JUMPIFEQ                         R20 R21 ; [+2]
      261 LOADB                            R19 0 +1
      262 LOADB                            R19 1
      263 JUMP                             ; [+1]
      264 LOADNIL                          R19
      265 SETTABLEKS                       R19 R18 K46 ["initialVisible"]
      267 GETUPVAL                         R20 3
      268 CALL                             R20 0 1
      269 JUMPIFNOT                        R20 ; [+3]
      270 NEWCLOSURE                       R19 P4
      271 CAPTURE                          VAL R7
      272 JUMP                             ; [+1]
      273 LOADNIL                          R19
      274 SETTABLEKS                       R19 R18 K47 ["registerSetVisible"]
      276 NEWCLOSURE                       R19 P5
      277 CAPTURE                          UPVAL U11
      278 CAPTURE                          REF R4
      279 CAPTURE                          REF R5
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R2
      282 CAPTURE                          UPVAL U3
      283 CAPTURE                          UPVAL U10
      284 CAPTURE                          UPVAL U6
      285 CAPTURE                          UPVAL U7
      286 CAPTURE                          UPVAL U12
      287 CAPTURE                          VAL R12
      288 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      290 CALL                             R17 1 -1
      291 FASTCALL                         TABLE_INSERT ; [+2]
      292 GETIMPORT                        R15 K43 [table.insert]
      294 CALL                             R15 -1 0
      295 GETUPVAL                         R15 3
      296 CALL                             R15 0 1
      297 JUMPIFNOT                        R15 ; [+61]
      298 MOVE                             R16 R14
      299 GETUPVAL                         R17 18
      300 GETTABLEKS                       R17 R17 K52 ["createHintImageRowDefinition"]
      302 DUPTABLE                         R18 K53 [{"label", "prop", "initialValue", "initialVisible", "registerSetVisible", "onChanged"}]
      303 GETUPVAL                         R19 19
      304 LOADK                            R21 K28 ["MeshGen"]
      305 LOADK                            R22 K54 ["InputHintImageTitle"]
      306 NAMECALL                         R19 R19 K30 ["getText"]
      308 CALL                             R19 3 1
      309 SETTABLEKS                       R19 R18 K21 ["label"]
      311 LOADK                            R19 K55 ["hintImage"]
      312 SETTABLEKS                       R19 R18 K22 ["prop"]
      314 GETUPVAL                         R20 6
      315 GETUPVAL                         R21 7
      316 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      318 GETTABLEKS                       R21 R21 K39 ["Image"]
      320 JUMPIFNOTEQ                      R20 R21 ; [+9]
      322 GETUPVAL                         R20 14
      323 JUMPIFNOT                        R20 ; [+6]
      324 GETUPVAL                         R19 20
      325 GETTABLEKS                       R19 R19 K56 ["getImage"]
      327 GETUPVAL                         R20 14
      328 CALL                             R19 1 1
      329 JUMP                             ; [+1]
      330 LOADNIL                          R19
      331 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      333 GETUPVAL                         R20 6
      334 GETUPVAL                         R21 7
      335 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      337 GETTABLEKS                       R21 R21 K39 ["Image"]
      339 JUMPIFEQ                         R20 R21 ; [+2]
      341 LOADB                            R19 0 +1
      342 LOADB                            R19 1
      343 SETTABLEKS                       R19 R18 K46 ["initialVisible"]
      345 NEWCLOSURE                       R19 P6
      346 CAPTURE                          VAL R8
      347 SETTABLEKS                       R19 R18 K47 ["registerSetVisible"]
      349 NEWCLOSURE                       R19 P7
      350 CAPTURE                          UPVAL U14
      351 CAPTURE                          UPVAL U20
      352 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      354 CALL                             R17 1 -1
      355 FASTCALL                         TABLE_INSERT ; [+2]
      356 GETIMPORT                        R15 K43 [table.insert]
      358 CALL                             R15 -1 0
      359 MOVE                             R16 R14
      360 GETUPVAL                         R17 18
      361 GETTABLEKS                       R17 R17 K57 ["createNumberRowDefinition"]
      363 DUPTABLE                         R18 K58 [{"label", "prop", "initialValue", "options"}]
      364 GETUPVAL                         R19 19
      365 LOADK                            R21 K28 ["MeshGen"]
      366 LOADK                            R22 K59 ["InputTriangleCountTitle"]
      367 NAMECALL                         R19 R19 K30 ["getText"]
      369 CALL                             R19 3 1
      370 SETTABLEKS                       R19 R18 K21 ["label"]
      372 LOADK                            R19 K60 ["maxTriangles"]
      373 SETTABLEKS                       R19 R18 K22 ["prop"]
      375 GETUPVAL                         R19 21
      376 CALL                             R19 0 1
      377 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      379 DUPTABLE                         R19 K63 [{"min", "max"}]
      380 GETUPVAL                         R20 22
      381 SETTABLEKS                       R20 R19 K61 ["min"]
      383 GETUPVAL                         R20 23
      384 SETTABLEKS                       R20 R19 K62 ["max"]
      386 SETTABLEKS                       R19 R18 K24 ["options"]
      388 CALL                             R17 1 -1
      389 FASTCALL                         TABLE_INSERT ; [+2]
      390 GETIMPORT                        R15 K43 [table.insert]
      392 CALL                             R15 -1 0
      393 GETUPVAL                         R15 10
      394 CALL                             R15 0 1
      395 JUMPIFNOT                        R15 ; [+103]
      396 MOVE                             R16 R14
      397 GETUPVAL                         R17 18
      398 GETTABLEKS                       R17 R17 K64 ["createPartNamesRowDefinition"]
      400 DUPTABLE                         R18 K71 [{"label", "prop", "initialValue", "isLoading", "registerSetValue", "registerSetIsLoading", "onChanged", "onCancelPressed", "onSuggestPressed", "infoPopoverNamespace"}]
      401 GETUPVAL                         R19 19
      402 LOADK                            R21 K28 ["MeshGen"]
      403 LOADK                            R22 K72 ["InputPartNamesTitle"]
      404 NAMECALL                         R19 R19 K30 ["getText"]
      406 CALL                             R19 3 1
      407 SETTABLEKS                       R19 R18 K21 ["label"]
      409 LOADK                            R19 K73 ["partNames"]
      410 SETTABLEKS                       R19 R18 K22 ["prop"]
      412 GETUPVAL                         R20 3
      413 CALL                             R20 0 1
      414 JUMPIFNOT                        R20 ; [+6]
      415 LENGTH                           R20 R6
      416 LOADN                            R21 0
      417 JUMPIFNOTLT                      R21 R20 ; [+3]
      419 MOVE                             R19 R6
      420 JUMP                             ; [+1]
      421 LOADNIL                          R19
      422 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      424 GETUPVAL                         R20 3
      425 CALL                             R20 0 1
      426 JUMPIFNOT                        R20 ; [+19]
      427 LOADB                            R19 0
      428 GETUPVAL                         R20 6
      429 GETUPVAL                         R21 7
      430 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      432 GETTABLEKS                       R21 R21 K19 ["Text"]
      434 JUMPIFNOTEQ                      R20 R21 ; [+18]
      436 GETUPVAL                         R19 12
      437 JUMPIFNOT                        R19 ; [+15]
      438 GETUPVAL                         R21 11
      439 LENGTH                           R20 R21
      440 LOADN                            R21 0
      441 JUMPIFLT                         R21 R20 ; [+2]
      443 LOADB                            R19 0 +1
      444 LOADB                            R19 1
      445 JUMP                             ; [+7]
      446 GETUPVAL                         R21 11
      447 LENGTH                           R20 R21
      448 LOADN                            R21 0
      449 JUMPIFLT                         R21 R20 ; [+2]
      451 LOADB                            R19 0 +1
      452 LOADB                            R19 1
      453 SETTABLEKS                       R19 R18 K65 ["isLoading"]
      455 NEWCLOSURE                       R19 P8
      456 CAPTURE                          VAL R2
      457 SETTABLEKS                       R19 R18 K66 ["registerSetValue"]
      459 NEWCLOSURE                       R19 P9
      460 CAPTURE                          VAL R3
      461 SETTABLEKS                       R19 R18 K67 ["registerSetIsLoading"]
      463 GETUPVAL                         R20 3
      464 CALL                             R20 0 1
      465 JUMPIFNOT                        R20 ; [+8]
      466 NEWCLOSURE                       R19 P10
      467 CAPTURE                          REF R6
      468 CAPTURE                          UPVAL U15
      469 CAPTURE                          UPVAL U6
      470 CAPTURE                          UPVAL U7
      471 CAPTURE                          UPVAL U16
      472 CAPTURE                          UPVAL U17
      473 JUMP                             ; [+1]
      474 LOADNIL                          R19
      475 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      477 NEWCLOSURE                       R19 P11
      478 CAPTURE                          REF R4
      479 CAPTURE                          REF R5
      480 SETTABLEKS                       R19 R18 K68 ["onCancelPressed"]
      482 NEWCLOSURE                       R19 P12
      483 CAPTURE                          VAL R12
      484 SETTABLEKS                       R19 R18 K69 ["onSuggestPressed"]
      486 GETUPVAL                         R20 3
      487 CALL                             R20 0 1
      488 JUMPIFNOT                        R20 ; [+2]
      489 LOADK                            R19 K74 ["MeshGenSegmentation"]
      490 JUMP                             ; [+1]
      491 LOADNIL                          R19
      492 SETTABLEKS                       R19 R18 K70 ["infoPopoverNamespace"]
      494 CALL                             R17 1 -1
      495 FASTCALL                         TABLE_INSERT ; [+2]
      496 GETIMPORT                        R15 K43 [table.insert]
      498 CALL                             R15 -1 0
      499 GETUPVAL                         R15 3
      500 CALL                             R15 0 1
      501 JUMPIFNOT                        R15 ; [+58]
      502 GETUPVAL                         R15 10
      503 CALL                             R15 0 1
      504 JUMPIFNOT                        R15 ; [+55]
      505 MOVE                             R16 R14
      506 GETUPVAL                         R17 18
      507 GETTABLEKS                       R17 R17 K75 ["createSuggestSegmentationRowDefinition"]
      509 DUPTABLE                         R18 K81 [{"label", "prop", "initialChecked", "initialEnabled", "registerSetIsEnabled", "onCheckedChanged", "onRefreshPressed"}]
      510 LOADK                            R19 K51 [""]
      511 SETTABLEKS                       R19 R18 K21 ["label"]
      513 LOADK                            R19 K82 ["suggestSegmentation"]
      514 SETTABLEKS                       R19 R18 K22 ["prop"]
      516 GETUPVAL                         R19 12
      517 SETTABLEKS                       R19 R18 K76 ["initialChecked"]
      519 GETUPVAL                         R20 6
      520 GETUPVAL                         R21 7
      521 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      523 GETTABLEKS                       R21 R21 K19 ["Text"]
      525 JUMPIFEQ                         R20 R21 ; [+2]
      527 LOADB                            R19 0 +1
      528 LOADB                            R19 1
      529 SETTABLEKS                       R19 R18 K77 ["initialEnabled"]
      531 NEWCLOSURE                       R19 P13
      532 CAPTURE                          VAL R10
      533 SETTABLEKS                       R19 R18 K78 ["registerSetIsEnabled"]
      535 NEWCLOSURE                       R19 P14
      536 CAPTURE                          UPVAL U12
      537 CAPTURE                          UPVAL U6
      538 CAPTURE                          UPVAL U7
      539 CAPTURE                          UPVAL U11
      540 CAPTURE                          VAL R3
      541 CAPTURE                          VAL R12
      542 CAPTURE                          REF R4
      543 CAPTURE                          REF R5
      544 SETTABLEKS                       R19 R18 K79 ["onCheckedChanged"]
      546 NEWCLOSURE                       R19 P15
      547 CAPTURE                          VAL R3
      548 CAPTURE                          UPVAL U24
      549 CAPTURE                          UPVAL U11
      550 CAPTURE                          UPVAL U14
      551 CAPTURE                          VAL R0
      552 CAPTURE                          VAL R12
      553 SETTABLEKS                       R19 R18 K80 ["onRefreshPressed"]
      555 CALL                             R17 1 -1
      556 FASTCALL                         TABLE_INSERT ; [+2]
      557 GETIMPORT                        R15 K43 [table.insert]
      559 CALL                             R15 -1 0
      560 MOVE                             R16 R14
      561 GETUPVAL                         R17 18
      562 GETTABLEKS                       R17 R17 K83 ["createInstanceRowDefinition"]
      564 DUPTABLE                         R18 K84 [{"label", "prop", "initialValue", "initialVisible", "options"}]
      565 GETUPVAL                         R19 19
      566 LOADK                            R21 K28 ["MeshGen"]
      567 LOADK                            R22 K85 ["InputBoundingBox"]
      568 NAMECALL                         R19 R19 K30 ["getText"]
      570 CALL                             R19 3 1
      571 SETTABLEKS                       R19 R18 K21 ["label"]
      573 LOADK                            R19 K86 ["selectedInstanceRef"]
      574 SETTABLEKS                       R19 R18 K22 ["prop"]
      576 SETTABLEKS                       R1 R18 K23 ["initialValue"]
      578 GETUPVAL                         R20 3
      579 CALL                             R20 0 1
      580 JUMPIFNOT                        R20 ; [+2]
      581 LOADB                            R19 0
      582 JUMP                             ; [+1]
      583 LOADNIL                          R19
      584 SETTABLEKS                       R19 R18 K46 ["initialVisible"]
      586 DUPTABLE                         R19 K88 [{"isA"}]
      587 NEWTABLE                         R20 0 1
      589 GETUPVAL                         R21 25
      590 GETTABLEKS                       R21 R21 K89 ["BOUNDING_BOX_INSTANCE_TYPE"]
      592 SETLIST                          R20 R21 1 [1]
      594 SETTABLEKS                       R20 R19 K87 ["isA"]
      596 SETTABLEKS                       R19 R18 K24 ["options"]
      598 CALL                             R17 1 -1
      599 FASTCALL                         TABLE_INSERT ; [+2]
      600 GETIMPORT                        R15 K43 [table.insert]
      602 CALL                             R15 -1 0
      603 DUPTABLE                         R15 K95 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm"}]
      604 GETUPVAL                         R16 19
      605 LOADK                            R18 K28 ["MeshGen"]
      606 LOADK                            R19 K96 ["InputDisclaimer"]
      607 NAMECALL                         R16 R16 K30 ["getText"]
      609 CALL                             R16 3 1
      610 SETTABLEKS                       R16 R15 K90 ["description"]
      612 GETUPVAL                         R16 19
      613 LOADK                            R18 K28 ["MeshGen"]
      614 LOADK                            R19 K97 ["InputGenerateMesh"]
      615 NAMECALL                         R16 R16 K30 ["getText"]
      617 CALL                             R16 3 1
      618 SETTABLEKS                       R16 R15 K91 ["confirmButtonText"]
      620 SETTABLEKS                       R14 R15 K92 ["propertyRows"]
      622 GETUPVAL                         R17 3
      623 CALL                             R17 0 1
      624 JUMPIFNOT                        R17 ; [+4]
      625 NEWCLOSURE                       R16 P16
      626 CAPTURE                          VAL R0
      627 CAPTURE                          REF R1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R16
      630 SETTABLEKS                       R16 R15 K93 ["onCancel"]
      632 GETUPVAL                         R17 26
      633 CALL                             R17 0 1
      634 JUMPIFNOT                        R17 ; [+5]
      635 NEWCLOSURE                       R16 P17
      636 CAPTURE                          UPVAL U3
      637 CAPTURE                          UPVAL U6
      638 CAPTURE                          UPVAL U7
      639 JUMP                             ; [+1]
      640 LOADNIL                          R16
      641 SETTABLEKS                       R16 R15 K94 ["canConfirm"]
      643 CLOSEUPVALS                      R1
      644 RETURN                           R15 1

PROTO_79:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_80:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_81:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_82:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+13]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["registerHydrator"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["Type"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CALL                             R3 2 0
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U6
       25 NEWCLOSURE                       R4 P3
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U8
       29 GETUPVAL                         R5 9
       30 GETTABLEKS                       R5 R5 K2 ["define"]
       32 CALL                             R5 0 1
       33 GETUPVAL                         R7 10
       34 GETTABLEKS                       R7 R7 K3 ["MeshGen"]
       36 NAMECALL                         R5 R5 K4 ["setName"]
       38 CALL                             R5 2 1
       39 LOADK                            R7 K5 ["Generates a textured mesh from a prompt using AI."]
       40 NAMECALL                         R5 R5 K6 ["setDescription"]
       42 CALL                             R5 2 1
       43 LOADK                            R7 K7 ["textPrompt"]
       44 DUPTABLE                         R8 K10 [{"type", "description"}]
       45 LOADK                            R9 K11 ["string"]
       46 SETTABLEKS                       R9 R8 K8 ["type"]
       48 LOADK                            R9 K12 ["The text prompt describing the mesh to generate."]
       49 SETTABLEKS                       R9 R8 K9 ["description"]
       51 NAMECALL                         R5 R5 K13 ["addArgument"]
       53 CALL                             R5 3 1
       54 LOADK                            R7 K14 ["size"]
       55 DUPTABLE                         R8 K17 [{"type", "description", "properties", "required"}]
       56 LOADK                            R9 K18 ["object"]
       57 SETTABLEKS                       R9 R8 K8 ["type"]
       59 LOADK                            R9 K19 ["The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt."]
       60 SETTABLEKS                       R9 R8 K9 ["description"]
       62 DUPTABLE                         R9 K23 [{"x", "y", "z"}]
       63 DUPTABLE                         R10 K10 [{"type", "description"}]
       64 LOADK                            R11 K24 ["number"]
       65 SETTABLEKS                       R11 R10 K8 ["type"]
       67 LOADK                            R11 K25 ["X dimension scalar."]
       68 SETTABLEKS                       R11 R10 K9 ["description"]
       70 SETTABLEKS                       R10 R9 K20 ["x"]
       72 DUPTABLE                         R10 K10 [{"type", "description"}]
       73 LOADK                            R11 K24 ["number"]
       74 SETTABLEKS                       R11 R10 K8 ["type"]
       76 LOADK                            R11 K26 ["Y dimension scalar."]
       77 SETTABLEKS                       R11 R10 K9 ["description"]
       79 SETTABLEKS                       R10 R9 K21 ["y"]
       81 DUPTABLE                         R10 K10 [{"type", "description"}]
       82 LOADK                            R11 K24 ["number"]
       83 SETTABLEKS                       R11 R10 K8 ["type"]
       85 LOADK                            R11 K27 ["Z dimension scalar."]
       86 SETTABLEKS                       R11 R10 K9 ["description"]
       88 SETTABLEKS                       R10 R9 K22 ["z"]
       90 SETTABLEKS                       R9 R8 K15 ["properties"]
       92 NEWTABLE                         R9 0 3
       94 LOADK                            R10 K20 ["x"]
       95 LOADK                            R11 K21 ["y"]
       96 LOADK                            R12 K22 ["z"]
       97 SETLIST                          R9 R10 3 [1]
       99 SETTABLEKS                       R9 R8 K16 ["required"]
      101 NAMECALL                         R5 R5 K28 ["addOptionalArgument"]
      103 CALL                             R5 3 1
      104 LOADK                            R7 K29 ["maxTriangles"]
      105 DUPTABLE                         R8 K10 [{"type", "description"}]
      106 LOADK                            R9 K24 ["number"]
      107 SETTABLEKS                       R9 R8 K8 ["type"]
      109 LOADK                            R10 K30 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
      110 GETUPVAL                         R12 11
      111 GETUPVAL                         R13 12
      112 NAMECALL                         R10 R10 K31 ["format"]
      114 CALL                             R10 3 1
      115 MOVE                             R9 R10
      116 SETTABLEKS                       R9 R8 K9 ["description"]
      118 NAMECALL                         R5 R5 K28 ["addOptionalArgument"]
      120 CALL                             R5 3 1
      121 LOADK                            R7 K32 ["partNames"]
      122 DUPTABLE                         R8 K10 [{"type", "description"}]
      123 LOADK                            R9 K11 ["string"]
      124 SETTABLEKS                       R9 R8 K8 ["type"]
      126 GETUPVAL                         R10 13
      127 CALL                             R10 0 1
      128 JUMPIFNOT                        R10 ; [+2]
      129 LOADK                            R9 K33 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
      130 JUMP                             ; [+1]
      131 LOADK                            R9 K34 ["List of part names defining the schema for the generated mesh. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel') or a JSON array of strings. When provided, a SchemaDefinition is used instead of the default PredefinedSchema."]
      132 SETTABLEKS                       R9 R8 K9 ["description"]
      134 NAMECALL                         R5 R5 K28 ["addOptionalArgument"]
      136 CALL                             R5 3 1
      137 GETUPVAL                         R6 13
      138 CALL                             R6 0 1
      139 JUMPIFNOT                        R6 ; [+16]
      140 LOADK                            R8 K35 ["segmentation"]
      141 DUPTABLE                         R9 K37 [{"type", "enum", "description"}]
      142 LOADK                            R10 K11 ["string"]
      143 SETTABLEKS                       R10 R9 K8 ["type"]
      145 GETUPVAL                         R10 14
      146 GETTABLEKS                       R10 R10 K38 ["SegmentationArgValues"]
      148 SETTABLEKS                       R10 R9 K36 ["enum"]
      150 LOADK                            R10 K39 ["Controls how the mesh is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"]
      151 SETTABLEKS                       R10 R9 K9 ["description"]
      153 NAMECALL                         R6 R5 K28 ["addOptionalArgument"]
      155 CALL                             R6 3 0
      156 DUPTABLE                         R8 K45 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      157 LOADK                            R9 K46 ["Mesh Generation"]
      158 SETTABLEKS                       R9 R8 K40 ["title"]
      160 LOADB                            R9 0
      161 SETTABLEKS                       R9 R8 K41 ["readOnlyHint"]
      163 LOADB                            R9 0
      164 SETTABLEKS                       R9 R8 K42 ["destructiveHint"]
      166 LOADB                            R9 0
      167 SETTABLEKS                       R9 R8 K43 ["idempotentHint"]
      169 LOADB                            R9 0
      170 SETTABLEKS                       R9 R8 K44 ["openWorldHint"]
      172 NAMECALL                         R6 R5 K47 ["setAnnotations"]
      174 CALL                             R6 2 1
      175 MOVE                             R8 R4
      176 NAMECALL                         R6 R6 K48 ["setHandler"]
      178 CALL                             R6 2 1
      179 NAMECALL                         R6 R6 K49 ["build"]
      181 CALL                             R6 1 1
      182 DUPCLOSURE                       R7 K50 [PROTO_54]
      183 CAPTURE                          UPVAL U15
      184 LOADK                            R8 K51 [""]
      185 LOADNIL                          R9
      186 GETUPVAL                         R10 14
      187 GETTABLEKS                       R10 R10 K52 ["PromptMode"]
      189 GETTABLEKS                       R10 R10 K53 ["Text"]
      191 LOADB                            R11 1
      192 LOADK                            R12 K51 [""]
      193 LOADK                            R13 K51 [""]
      194 LOADB                            R14 0
      195 LOADB                            R15 0
      196 DUPTABLE                         R16 K58 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      197 LOADK                            R17 K59 ["generate_mesh"]
      198 SETTABLEKS                       R17 R16 K54 ["command"]
      200 DUPCLOSURE                       R17 K60 [PROTO_55]
      201 CAPTURE                          UPVAL U16
      202 SETTABLEKS                       R17 R16 K55 ["getDescription"]
      204 NEWCLOSURE                       R17 P6
      205 CAPTURE                          REF R8
      206 CAPTURE                          REF R9
      207 CAPTURE                          UPVAL U17
      208 CAPTURE                          REF R10
      209 CAPTURE                          UPVAL U14
      210 CAPTURE                          UPVAL U15
      211 CAPTURE                          UPVAL U10
      212 SETTABLEKS                       R17 R16 K56 ["mapToToolCall"]
      214 NEWCLOSURE                       R17 P7
      215 CAPTURE                          UPVAL U0
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R1
      218 CAPTURE                          UPVAL U17
      219 CAPTURE                          UPVAL U18
      220 CAPTURE                          UPVAL U19
      221 CAPTURE                          REF R10
      222 CAPTURE                          UPVAL U14
      223 CAPTURE                          REF R12
      224 CAPTURE                          REF R13
      225 CAPTURE                          UPVAL U20
      226 CAPTURE                          REF R8
      227 CAPTURE                          REF R11
      228 CAPTURE                          UPVAL U21
      229 CAPTURE                          REF R9
      230 CAPTURE                          UPVAL U22
      231 CAPTURE                          REF R14
      232 CAPTURE                          REF R15
      233 CAPTURE                          UPVAL U23
      234 CAPTURE                          UPVAL U16
      235 CAPTURE                          UPVAL U24
      236 CAPTURE                          UPVAL U25
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          UPVAL U12
      239 CAPTURE                          UPVAL U26
      240 CAPTURE                          UPVAL U27
      241 CAPTURE                          UPVAL U28
      242 SETTABLEKS                       R17 R16 K57 ["getInputRequestArguments"]
      244 DUPTABLE                         R17 K62 [{"transformInitialContent"}]
      245 DUPCLOSURE                       R18 K63 [PROTO_79]
      246 CAPTURE                          UPVAL U3
      247 SETTABLEKS                       R18 R17 K61 ["transformInitialContent"]
      249 DUPTABLE                         R18 K71 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      250 SETTABLEKS                       R6 R18 K64 ["definition"]
      252 NEWTABLE                         R19 0 1
      254 MOVE                             R20 R16
      255 SETLIST                          R19 R20 1 [1]
      257 SETTABLEKS                       R19 R18 K65 ["slashCommands"]
      259 GETUPVAL                         R20 29
      260 CALL                             R20 0 1
      261 JUMPIFNOT                        R20 ; [+2]
      262 LOADNIL                          R19
      263 JUMP                             ; [+5]
      264 NEWTABLE                         R19 0 1
      266 GETUPVAL                         R20 3
      267 SETLIST                          R19 R20 1 [1]
      269 SETTABLEKS                       R19 R18 K66 ["contentWidgets"]
      271 SETTABLEKS                       R17 R18 K67 ["streamTransform"]
      273 DUPCLOSURE                       R19 K72 [PROTO_80]
      274 SETTABLEKS                       R19 R18 K68 ["getPreExecuteWarning"]
      276 GETUPVAL                         R20 29
      277 CALL                             R20 0 1
      278 JUMPIFNOT                        R20 ; [+2]
      279 LOADNIL                          R19
      280 JUMP                             ; [+2]
      281 DUPCLOSURE                       R19 K73 [PROTO_81]
      282 CAPTURE                          UPVAL U16
      283 SETTABLEKS                       R19 R18 K69 ["displayNameFunction"]
      285 DUPTABLE                         R19 K75 [{"resetTimeoutOnProgress"}]
      286 LOADB                            R20 1
      287 SETTABLEKS                       R20 R19 K74 ["resetTimeoutOnProgress"]
      289 SETTABLEKS                       R19 R18 K70 ["toolCallOptions"]
      291 CLOSEUPVALS                      R8
      292 RETURN                           R18 1

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
      113 GETTABLEKS                       R17 R17 K31 ["MeshGenBridge"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K10 [require]
      118 GETTABLEKS                       R18 R15 K30 ["MeshGenTool"]
      120 GETTABLEKS                       R18 R18 K32 ["MeshGenBridgeTypes"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K10 [require]
      125 GETTABLEKS                       R19 R15 K33 ["MeshGenConstants"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K10 [require]
      130 GETTABLEKS                       R20 R15 K34 ["MeshGenContentWidget"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K10 [require]
      135 GETTABLEKS                       R21 R15 K35 ["MeshGenSchemaSelector"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K10 [require]
      140 GETTABLEKS                       R22 R15 K36 ["MeshGenTypes"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K10 [require]
      145 GETTABLEKS                       R23 R0 K37 ["Features"]
      147 GETTABLEKS                       R23 R23 K38 ["Gen3dUtils"]
      149 GETTABLEKS                       R23 R23 K39 ["SegmentationEnums"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R23 K10 [require]
      154 GETTABLEKS                       R24 R0 K40 ["Flags"]
      156 GETTABLEKS                       R24 R24 K41 ["FFlagAssistantGen3DTelemetryV2"]
      158 CALL                             R23 1 1
      159 GETIMPORT                        R24 K10 [require]
      161 GETTABLEKS                       R25 R0 K40 ["Flags"]
      163 GETTABLEKS                       R25 R25 K42 ["FFlagAssistantGen3dAutoSegmentation"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K10 [require]
      168 GETTABLEKS                       R26 R0 K40 ["Flags"]
      170 GETTABLEKS                       R26 R26 K43 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K10 [require]
      175 GETTABLEKS                       R27 R0 K40 ["Flags"]
      177 GETTABLEKS                       R27 R27 K44 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K10 [require]
      182 GETTABLEKS                       R28 R0 K40 ["Flags"]
      184 GETTABLEKS                       R28 R28 K45 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K10 [require]
      189 GETTABLEKS                       R29 R0 K40 ["Flags"]
      191 GETTABLEKS                       R29 R29 K46 ["FFlagAssistantMultipleChatPersistence"]
      193 CALL                             R28 1 1
      194 GETIMPORT                        R29 K10 [require]
      196 GETTABLEKS                       R30 R0 K40 ["Flags"]
      198 GETTABLEKS                       R30 R30 K47 ["FFlagAssistantSegmentationBridge"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K10 [require]
      203 GETTABLEKS                       R31 R0 K40 ["Flags"]
      205 GETTABLEKS                       R31 R31 K48 ["FFlagAssistantSegmentationPromptModeSelector"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K10 [require]
      210 GETTABLEKS                       R32 R0 K40 ["Flags"]
      212 GETTABLEKS                       R32 R32 K49 ["FFlagAssistantSegmentationUIFixes"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K10 [require]
      217 GETTABLEKS                       R33 R0 K40 ["Flags"]
      219 GETTABLEKS                       R33 R33 K50 ["FFlagAssistantSplitToolsAndWidgets"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K10 [require]
      224 GETTABLEKS                       R34 R0 K40 ["Flags"]
      226 GETTABLEKS                       R34 R34 K51 ["FFlagDebugLogAssistantUI"]
      228 CALL                             R33 1 1
      229 GETIMPORT                        R34 K10 [require]
      231 GETTABLEKS                       R35 R0 K40 ["Flags"]
      233 GETTABLEKS                       R35 R35 K52 ["FFlagGen3dSegmentationSelector"]
      235 CALL                             R34 1 1
      236 GETIMPORT                        R35 K10 [require]
      238 GETTABLEKS                       R36 R0 K40 ["Flags"]
      240 GETTABLEKS                       R36 R36 K53 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      242 CALL                             R35 1 1
      243 GETIMPORT                        R36 K10 [require]
      245 GETTABLEKS                       R37 R0 K40 ["Flags"]
      247 GETTABLEKS                       R37 R37 K54 ["FStringAssistantMeshGenImageGenModelOverride"]
      249 CALL                             R36 1 1
      250 GETIMPORT                        R37 K10 [require]
      252 GETTABLEKS                       R38 R0 K40 ["Flags"]
      254 GETTABLEKS                       R38 R38 K55 ["FStringAssistantMeshGenInferenceServiceOverride"]
      256 CALL                             R37 1 1
      257 GETTABLEKS                       R38 R5 K13 ["Util"]
      259 GETTABLEKS                       R38 R38 K56 ["ToolBuilder"]
      261 GETTABLEKS                       R39 R5 K13 ["Util"]
      263 GETTABLEKS                       R39 R39 K57 ["ToolResult"]
      265 GETTABLEKS                       R40 R11 K58 ["ToolNames"]
      267 GETTABLEKS                       R41 R18 K59 ["Enums"]
      269 GETTABLEKS                       R42 R18 K60 ["MAX_TRIANGLES_LOWER_BOUND"]
      271 GETTABLEKS                       R43 R18 K61 ["MAX_TRIANGLES_UPPER_BOUND"]
      273 GETTABLEKS                       R44 R18 K62 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      275 DUPCLOSURE                       R45 K63 [PROTO_0]
      276 CAPTURE                          VAL R16
      277 DUPCLOSURE                       R46 K64 [PROTO_1]
      278 CAPTURE                          VAL R2
      279 DUPCLOSURE                       R47 K65 [PROTO_3]
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R22
      282 CAPTURE                          VAL R42
      283 CAPTURE                          VAL R43
      284 CAPTURE                          VAL R24
      285 CAPTURE                          VAL R20
      286 CAPTURE                          VAL R27
      287 CAPTURE                          VAL R37
      288 CAPTURE                          VAL R36
      289 DUPCLOSURE                       R48 K66 [PROTO_4]
      290 CAPTURE                          VAL R3
      291 DUPCLOSURE                       R49 K67 [PROTO_5]
      292 CAPTURE                          VAL R3
      293 DUPCLOSURE                       R50 K68 [PROTO_15]
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R41
      297 CAPTURE                          VAL R44
      298 DUPCLOSURE                       R51 K69 [PROTO_18]
      299 CAPTURE                          VAL R41
      300 CAPTURE                          VAL R50
      301 CAPTURE                          VAL R27
      302 CAPTURE                          VAL R33
      303 CAPTURE                          VAL R23
      304 CAPTURE                          VAL R3
      305 DUPCLOSURE                       R52 K70 [PROTO_21]
      306 CAPTURE                          VAL R41
      307 CAPTURE                          VAL R50
      308 CAPTURE                          VAL R3
      309 DUPCLOSURE                       R53 K71 [PROTO_23]
      310 CAPTURE                          VAL R41
      311 CAPTURE                          VAL R50
      312 CAPTURE                          VAL R23
      313 DUPCLOSURE                       R54 K72 [PROTO_37]
      314 CAPTURE                          VAL R19
      315 CAPTURE                          VAL R50
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R51
      318 CAPTURE                          VAL R41
      319 CAPTURE                          VAL R52
      320 CAPTURE                          VAL R53
      321 CAPTURE                          VAL R26
      322 DUPCLOSURE                       R55 K73 [PROTO_38]
      323 CAPTURE                          VAL R19
      324 DUPCLOSURE                       R56 K74 [PROTO_39]
      325 CAPTURE                          VAL R47
      326 CAPTURE                          VAL R50
      327 CAPTURE                          VAL R41
      328 CAPTURE                          VAL R2
      329 CAPTURE                          VAL R19
      330 CAPTURE                          VAL R11
      331 CAPTURE                          VAL R54
      332 CAPTURE                          VAL R55
      333 CAPTURE                          VAL R21
      334 DUPCLOSURE                       R57 K75 [PROTO_41]
      335 CAPTURE                          VAL R50
      336 DUPCLOSURE                       R58 K76 [PROTO_42]
      337 CAPTURE                          VAL R50
      338 DUPCLOSURE                       R59 K77 [PROTO_48]
      339 CAPTURE                          VAL R50
      340 CAPTURE                          VAL R6
      341 CAPTURE                          VAL R1
      342 DUPCLOSURE                       R60 K78 [PROTO_49]
      343 DUPTABLE                         R61 K83 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage", "reportGeneratedInstanceDeleted"}]
      344 SETTABLEKS                       R57 R61 K79 ["updateContentHeader"]
      346 SETTABLEKS                       R58 R61 K80 ["setPreviewStateAsync"]
      348 SETTABLEKS                       R59 R61 K81 ["setPreviewImage"]
      350 SETTABLEKS                       R60 R61 K82 ["reportGeneratedInstanceDeleted"]
      352 DUPCLOSURE                       R62 K84 [PROTO_82]
      353 CAPTURE                          VAL R45
      354 CAPTURE                          VAL R28
      355 CAPTURE                          VAL R8
      356 CAPTURE                          VAL R19
      357 CAPTURE                          VAL R54
      358 CAPTURE                          VAL R55
      359 CAPTURE                          VAL R56
      360 CAPTURE                          VAL R12
      361 CAPTURE                          VAL R39
      362 CAPTURE                          VAL R38
      363 CAPTURE                          VAL R40
      364 CAPTURE                          VAL R42
      365 CAPTURE                          VAL R43
      366 CAPTURE                          VAL R24
      367 CAPTURE                          VAL R22
      368 CAPTURE                          VAL R10
      369 CAPTURE                          VAL R13
      370 CAPTURE                          VAL R30
      371 CAPTURE                          VAL R33
      372 CAPTURE                          VAL R29
      373 CAPTURE                          VAL R34
      374 CAPTURE                          VAL R20
      375 CAPTURE                          VAL R31
      376 CAPTURE                          VAL R7
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R35
      379 CAPTURE                          VAL R23
      380 CAPTURE                          VAL R18
      381 CAPTURE                          VAL R25
      382 CAPTURE                          VAL R32
      383 DUPTABLE                         R63 K87 [{"bridge", "setupGuest"}]
      384 SETTABLEKS                       R61 R63 K85 ["bridge"]
      386 SETTABLEKS                       R62 R63 K86 ["setupGuest"]
      388 RETURN                           R63 1
