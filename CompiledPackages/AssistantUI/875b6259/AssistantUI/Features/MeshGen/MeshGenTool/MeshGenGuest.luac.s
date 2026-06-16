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
      289 DUPTABLE                         R10 K57 [{"generateImage", "multiMeshGenInferenceServiceOverride", "imageGenModelOverride", "multiTextureImageInput", "enableMeshScaleFactorTensor"}]
      290 LOADK                            R11 K58 ["true"]
      291 SETTABLEKS                       R11 R10 K52 ["generateImage"]
      293 GETUPVAL                         R11 6
      294 CALL                             R11 0 1
      295 SETTABLEKS                       R11 R10 K53 ["multiMeshGenInferenceServiceOverride"]
      297 GETUPVAL                         R11 7
      298 CALL                             R11 0 1
      299 SETTABLEKS                       R11 R10 K54 ["imageGenModelOverride"]
      301 LOADK                            R11 K58 ["true"]
      302 SETTABLEKS                       R11 R10 K55 ["multiTextureImageInput"]
      304 LOADK                            R11 K58 ["true"]
      305 SETTABLEKS                       R11 R10 K56 ["enableMeshScaleFactorTensor"]
      307 MOVE                             R9 R10
      308 GETTABLEKS                       R10 R0 K59 ["isManualRun"]
      310 JUMPIFEQKNIL                     R10 ; [+16]
      312 FASTCALL1                        TYPEOF R10 ; [+3]
      313 MOVE                             R14 R10
      314 GETIMPORT                        R13 K1 [typeof]
      316 CALL                             R13 1 1
      317 JUMPIFEQKS                       R13 K60 ["boolean"] ; [+2]
      319 LOADB                            R12 0 +1
      320 LOADB                            R12 1
      321 FASTCALL2K                       ASSERT R12 K61 ; [+4]
      323 LOADK                            R13 K61 ["isManualRun must be a boolean"]
      324 GETIMPORT                        R11 K5 [assert]
      326 CALL                             R11 2 0
      327 GETTABLEKS                       R11 R0 K62 ["selectedInstanceRef"]
      329 LOADNIL                          R12
      330 JUMPIFEQKNIL                     R11 ; [+34]
      332 FASTCALL1                        TYPEOF R11 ; [+3]
      333 MOVE                             R16 R11
      334 GETIMPORT                        R15 K1 [typeof]
      336 CALL                             R15 1 1
      337 JUMPIFEQKS                       R15 K2 ["table"] ; [+2]
      339 LOADB                            R14 0 +1
      340 LOADB                            R14 1
      341 FASTCALL2K                       ASSERT R14 K63 ; [+4]
      343 LOADK                            R15 K63 ["selectedInstanceRef must be a table"]
      344 GETIMPORT                        R13 K5 [assert]
      346 CALL                             R13 2 0
      347 GETTABLEKS                       R16 R11 K64 ["uniqueId"]
      349 FASTCALL1                        TYPEOF R16 ; [+2]
      350 GETIMPORT                        R15 K1 [typeof]
      352 CALL                             R15 1 1
      353 JUMPIFEQKS                       R15 K13 ["string"] ; [+2]
      355 LOADB                            R14 0 +1
      356 LOADB                            R14 1
      357 FASTCALL2K                       ASSERT R14 K65 ; [+4]
      359 LOADK                            R15 K65 ["selectedInstanceRef.uniqueId must be a string"]
      360 GETIMPORT                        R13 K5 [assert]
      362 CALL                             R13 2 0
      363 GETTABLEKS                       R12 R11 K64 ["uniqueId"]
      365 DUPTABLE                         R13 K68 [{"textPrompt", "size", "maxTriangles", "partNames", "segmentationMode", "adminOptions", "hintImage", "isManualRun", "selectedUniqueId"}]
      366 SETTABLEKS                       R1 R13 K6 ["textPrompt"]
      368 SETTABLEKS                       R4 R13 K15 ["size"]
      370 SETTABLEKS                       R5 R13 K36 ["maxTriangles"]
      372 SETTABLEKS                       R6 R13 K49 ["partNames"]
      374 SETTABLEKS                       R7 R13 K41 ["segmentationMode"]
      376 SETTABLEKS                       R9 R13 K66 ["adminOptions"]
      378 SETTABLEKS                       R8 R13 K7 ["hintImage"]
      380 SETTABLEKS                       R10 R13 K59 ["isManualRun"]
      382 SETTABLEKS                       R12 R13 K67 ["selectedUniqueId"]
      384 RETURN                           R13 1

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
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K7 ["adminOptions"]
       32 SETTABLEKS                       R2 R1 K7 ["adminOptions"]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K8 ["hintImage"]
       37 SETTABLEKS                       R2 R1 K8 ["hintImage"]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K9 ["selectedUniqueId"]
       42 SETTABLEKS                       R2 R1 K9 ["selectedUniqueId"]
       44 CALL                             R0 1 1
       45 RETURN                           R0 1

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
       37 CALL                             R5 1 2
       38 JUMPIF                           R5 ; [+2]
       39 MOVE                             R7 R6
       40 JUMP                             ; [+1]
       41 LOADK                            R7 K12 [""]
       42 JUMPIFNOT                        R5 ; [+3]
       43 GETTABLEKS                       R8 R6 K13 ["generationId"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 GETUPVAL                         R9 2
       48 CALL                             R9 0 1
       49 JUMPIFNOT                        R9 ; [+10]
       50 GETIMPORT                        R9 K15 [print]
       52 LOADK                            R11 K16 ["[MeshGen] generationId: "]
       53 FASTCALL1                        TOSTRING R8 ; [+3]
       54 MOVE                             R13 R8
       55 GETIMPORT                        R12 K18 [tostring]
       57 CALL                             R12 1 1
       58 CONCAT                           R10 R11 R12
       59 CALL                             R9 1 0
       60 GETTABLEKS                       R9 R0 K19 ["toolArgs"]
       62 GETTABLEKS                       R9 R9 K20 ["environment"]
       64 GETTABLEKS                       R10 R9 K21 ["EventLogger"]
       66 GETTABLEKS                       R10 R10 K22 ["logMeshGenCompleted"]
       68 DUPTABLE                         R11 K27 [{"requestId", "generationId", "success", "errorMessage", "prompt"}]
       69 GETTABLEKS                       R12 R2 K23 ["requestId"]
       71 SETTABLEKS                       R12 R11 K23 ["requestId"]
       73 SETTABLEKS                       R8 R11 K13 ["generationId"]
       75 SETTABLEKS                       R5 R11 K24 ["success"]
       77 SETTABLEKS                       R7 R11 K25 ["errorMessage"]
       79 SETTABLEKS                       R4 R11 K26 ["prompt"]
       81 CALL                             R10 1 0
       82 JUMPIF                           R5 ; [+44]
       83 GETIMPORT                        R10 K30 [string.find]
       85 GETIMPORT                        R11 K32 [string.lower]
       87 MOVE                             R12 R7
       88 CALL                             R11 1 1
       89 LOADK                            R12 K33 ["moderat"]
       90 CALL                             R10 2 1
       91 JUMPIFNOT                        R10 ; [+9]
       92 GETTABLEKS                       R10 R3 K34 ["setFailureReason"]
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K35 ["FailureReason"]
       97 GETTABLEKS                       R11 R11 K36 ["GenerationModerated"]
       99 CALL                             R10 1 0
      100 JUMP                             ; [+8]
      101 GETTABLEKS                       R10 R3 K34 ["setFailureReason"]
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K35 ["FailureReason"]
      106 GETTABLEKS                       R11 R11 K37 ["GenerationFailed"]
      108 CALL                             R10 1 0
      109 GETIMPORT                        R10 K39 [warn]
      111 LOADK                            R12 K40 ["Mesh generation failed with error: %* (requestId=%*)"]
      112 FASTCALL1                        TOSTRING R7 ; [+3]
      113 MOVE                             R15 R7
      114 GETIMPORT                        R14 K18 [tostring]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R2 K23 ["requestId"]
      119 NAMECALL                         R12 R12 K41 ["format"]
      121 CALL                             R12 3 1
      122 MOVE                             R11 R12
      123 CALL                             R10 1 0
      124 LOADB                            R10 0
      125 MOVE                             R11 R7
      126 RETURN                           R10 2
      127 DUPTABLE                         R11 K43 [{"type", "requestId", "generationId", "generationName"}]
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K1 ["GenerationMetaType"]
      131 GETTABLEKS                       R12 R12 K44 ["Generated"]
      133 SETTABLEKS                       R12 R11 K0 ["type"]
      135 GETTABLEKS                       R12 R2 K23 ["requestId"]
      137 SETTABLEKS                       R12 R11 K23 ["requestId"]
      139 SETTABLEKS                       R8 R11 K13 ["generationId"]
      141 SETTABLEKS                       R4 R11 K42 ["generationName"]
      143 MOVE                             R12 R2
      144 LOADNIL                          R13
      145 LOADNIL                          R14
      146 FORGPREP                         R12
      147 LOADNIL                          R17
      148 SETTABLE                         R17 R2 R15
      149 FORGLOOP                         R12 1 ; [-3]
      151 GETUPVAL                         R12 3
      152 GETTABLEKS                       R12 R12 K45 ["assign"]
      154 MOVE                             R13 R2
      155 MOVE                             R14 R11
      156 CALL                             R12 2 0
      157 MOVE                             R10 R2
      158 GETTABLEKS                       R11 R3 K46 ["updateWidget"]
      160 NEWCLOSURE                       R12 P1
      161 CAPTURE                          UPVAL U0
      162 CAPTURE                          VAL R10
      163 CALL                             R11 1 0
      164 LOADB                            R11 1
      165 MOVE                             R12 R6
      166 RETURN                           R11 2

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
        0 GETTABLEKS                       R4 R1 K0 ["type"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["GenerationMetaType"]
        5 GETTABLEKS                       R5 R5 K2 ["Published"]
        7 JUMPIFEQ                         R4 R5 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Generation meta must be of type 'Published'"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K6 ["setPreviewState"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K7 ["PreviewState"]
       25 GETTABLEKS                       R4 R4 K8 ["Inserting"]
       27 CALL                             R3 1 0
       28 GETIMPORT                        R3 K10 [pcall]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CALL                             R3 1 2
       34 JUMPIF                           R3 ; [+2]
       35 MOVE                             R5 R4
       36 JUMP                             ; [+1]
       37 LOADK                            R5 K11 [""]
       38 GETTABLEKS                       R6 R0 K12 ["toolArgs"]
       40 GETTABLEKS                       R6 R6 K13 ["environment"]
       42 GETTABLEKS                       R7 R6 K14 ["EventLogger"]
       44 GETTABLEKS                       R7 R7 K15 ["logMeshGenMeshInserted"]
       46 DUPTABLE                         R8 K20 [{"requestId", "generationId", "success", "errorMessage"}]
       47 GETTABLEKS                       R9 R1 K16 ["requestId"]
       49 SETTABLEKS                       R9 R8 K16 ["requestId"]
       51 GETTABLEKS                       R9 R1 K17 ["generationId"]
       53 SETTABLEKS                       R9 R8 K17 ["generationId"]
       55 SETTABLEKS                       R3 R8 K18 ["success"]
       57 SETTABLEKS                       R5 R8 K19 ["errorMessage"]
       59 CALL                             R7 1 0
       60 JUMPIF                           R3 ; [+20]
       61 GETTABLEKS                       R7 R2 K21 ["setFailureReason"]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K22 ["FailureReason"]
       66 GETTABLEKS                       R8 R8 K23 ["InsertFailed"]
       68 CALL                             R7 1 0
       69 GETIMPORT                        R7 K25 [warn]
       71 LOADK                            R9 K26 ["Failed to insert assets with error: %*"]
       72 MOVE                             R11 R5
       73 NAMECALL                         R9 R9 K27 ["format"]
       75 CALL                             R9 2 1
       76 MOVE                             R8 R9
       77 CALL                             R7 1 0
       78 LOADB                            R7 0
       79 MOVE                             R8 R5
       80 RETURN                           R7 2
       81 GETTABLEKS                       R7 R2 K6 ["setPreviewState"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K7 ["PreviewState"]
       86 GETTABLEKS                       R8 R8 K2 ["Published"]
       88 CALL                             R7 1 0
       89 LOADB                            R7 1
       90 RETURN                           R7 1

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
        3 CALL                             R0 2 2
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 3
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
       10 DUPCLOSURE                       R4 K1 [PROTO_32]
       11 CALL                             R3 1 0
       12 RETURN                           R0 2

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
       43 CALL                             R0 2 2
       44 JUMPIFNOT                        R0 ; [+7]
       45 GETUPVAL                         R2 6
       46 GETUPVAL                         R3 4
       47 CALL                             R2 1 1
       48 GETTABLEKS                       R3 R2 K5 ["updateWidget"]
       50 DUPCLOSURE                       R4 K6 [PROTO_34]
       51 CALL                             R3 1 0
       52 RETURN                           R0 2

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
       59 CAPTURE                          UPVAL U1
       60 SETTABLEKS                       R10 R2 K8 ["insertAssets"]
       62 GETUPVAL                         R10 7
       63 CALL                             R10 0 1
       64 JUMPIFNOT                        R10 ; [+10]
       65 NEWCLOSURE                       R10 P5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U1
       73 SETTABLEKS                       R10 R2 K9 ["addToPlace"]
       75 NEWCLOSURE                       R10 P6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R10 R2 K10 ["onChipClicked"]
       81 CLOSEUPVALS                      R5
       82 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
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
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_59:
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
      105 JUMPIFNOT                        R2 ; [+44]
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
      145 GETUPVAL                         R3 10
      146 GETTABLEKS                       R3 R3 K2 ["fn"]
      148 MOVE                             R4 R2
      149 CALL                             R3 1 0
      150 GETUPVAL                         R2 13
      151 LOADB                            R3 1
      152 SETTABLEKS                       R3 R2 K4 ["value"]
      154 GETUPVAL                         R2 14
      155 LOADB                            R3 1
      156 SETTABLEKS                       R3 R2 K4 ["value"]
      158 GETUPVAL                         R2 15
      159 GETTABLEKS                       R2 R2 K2 ["fn"]
      161 JUMPIFNOT                        R2 ; [+5]
      162 GETUPVAL                         R2 15
      163 GETTABLEKS                       R2 R2 K2 ["fn"]
      165 LOADB                            R3 0
      166 CALL                             R2 1 0
      167 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_69:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["value"]
        8 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fn"]
        3 RETURN                           R0 0

PROTO_73:
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

PROTO_74:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["fn"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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
       24 JUMPIFNOT                        R4 ; [+26]
       25 JUMPIFNOT                        R2 ; [+9]
       26 GETIMPORT                        R4 K5 [print]
       28 LOADK                            R5 K6 ["[MeshGen] createViewportBoundingBoxAsync succeeded, uniqueId:"]
       29 MOVE                             R6 R1
       30 JUMPIFNOT                        R6 ; [+2]
       31 GETTABLEKS                       R6 R1 K7 ["uniqueId"]
       33 CALL                             R4 2 0
       34 JUMP                             ; [+16]
       35 GETIMPORT                        R4 K9 [warn]
       37 LOADK                            R5 K10 ["[MeshGen] createViewportBoundingBoxAsync FAILED:"]
       38 FASTCALL1                        TOSTRING R3 ; [+3]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R6 K12 [tostring]
       42 CALL                             R6 1 1
       43 CALL                             R4 2 0
       44 JUMP                             ; [+6]
       45 GETTABLEKS                       R2 R0 K2 ["bridge"]
       47 GETTABLEKS                       R2 R2 K13 ["getSelectedBoundingBox"]
       49 CALL                             R2 0 1
       50 MOVE                             R1 R2
       51 DUPTABLE                         R2 K15 [{"fn"}]
       52 LOADNIL                          R3
       53 SETTABLEKS                       R3 R2 K14 ["fn"]
       55 DUPTABLE                         R3 K15 [{"fn"}]
       56 LOADNIL                          R4
       57 SETTABLEKS                       R4 R3 K14 ["fn"]
       59 DUPTABLE                         R4 K17 [{"value"}]
       60 LOADB                            R5 0
       61 SETTABLEKS                       R5 R4 K16 ["value"]
       63 DUPTABLE                         R5 K17 [{"value"}]
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R5 K16 ["value"]
       67 GETUPVAL                         R7 5
       68 GETUPVAL                         R8 6
       69 GETTABLEKS                       R8 R8 K18 ["PromptMode"]
       71 GETTABLEKS                       R8 R8 K19 ["Text"]
       73 JUMPIFNOTEQ                      R7 R8 ; [+3]
       75 GETUPVAL                         R6 7
       76 JUMP                             ; [+1]
       77 GETUPVAL                         R6 8
       78 DUPTABLE                         R7 K15 [{"fn"}]
       79 LOADNIL                          R8
       80 SETTABLEKS                       R8 R7 K14 ["fn"]
       82 DUPTABLE                         R8 K15 [{"fn"}]
       83 LOADNIL                          R9
       84 SETTABLEKS                       R9 R8 K14 ["fn"]
       86 DUPTABLE                         R9 K15 [{"fn"}]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K14 ["fn"]
       90 DUPTABLE                         R10 K15 [{"fn"}]
       91 LOADNIL                          R11
       92 SETTABLEKS                       R11 R10 K14 ["fn"]
       94 DUPTABLE                         R11 K15 [{"fn"}]
       95 LOADNIL                          R12
       96 SETTABLEKS                       R12 R11 K14 ["fn"]
       98 NEWCLOSURE                       R12 P0
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          REF R4
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          REF R6
      108 CAPTURE                          VAL R2
      109 NEWCLOSURE                       R13 P1
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          REF R6
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          UPVAL U13
      123 CAPTURE                          REF R4
      124 CAPTURE                          REF R5
      125 CAPTURE                          VAL R3
      126 MOVE                             R14 R12
      127 CALL                             R14 0 0
      128 NEWTABLE                         R14 0 0
      130 GETUPVAL                         R15 3
      131 CALL                             R15 0 1
      132 JUMPIFNOT                        R15 ; [+73]
      133 MOVE                             R16 R14
      134 GETUPVAL                         R17 14
      135 GETTABLEKS                       R17 R17 K20 ["createSelectRowDefinition"]
      137 DUPTABLE                         R18 K27 [{"label", "prop", "initialValue", "options", "onChanged", "registerSetBadges"}]
      138 GETUPVAL                         R19 15
      139 LOADK                            R21 K28 ["MeshGen"]
      140 LOADK                            R22 K29 ["InputPromptModeTitle"]
      141 NAMECALL                         R19 R19 K30 ["getText"]
      143 CALL                             R19 3 1
      144 SETTABLEKS                       R19 R18 K21 ["label"]
      146 LOADK                            R19 K31 ["promptMode"]
      147 SETTABLEKS                       R19 R18 K22 ["prop"]
      149 GETUPVAL                         R19 5
      150 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      152 DUPTABLE                         R19 K33 [{"items"}]
      153 NEWTABLE                         R20 0 2
      155 DUPTABLE                         R21 K36 [{"id", "text"}]
      156 GETUPVAL                         R22 6
      157 GETTABLEKS                       R22 R22 K18 ["PromptMode"]
      159 GETTABLEKS                       R22 R22 K19 ["Text"]
      161 SETTABLEKS                       R22 R21 K34 ["id"]
      163 GETUPVAL                         R22 15
      164 LOADK                            R24 K37 ["Gen3d"]
      165 LOADK                            R25 K38 ["PromptModeText"]
      166 NAMECALL                         R22 R22 K30 ["getText"]
      168 CALL                             R22 3 1
      169 SETTABLEKS                       R22 R21 K35 ["text"]
      171 DUPTABLE                         R22 K36 [{"id", "text"}]
      172 GETUPVAL                         R23 6
      173 GETTABLEKS                       R23 R23 K18 ["PromptMode"]
      175 GETTABLEKS                       R23 R23 K39 ["Image"]
      177 SETTABLEKS                       R23 R22 K34 ["id"]
      179 GETUPVAL                         R23 15
      180 LOADK                            R25 K37 ["Gen3d"]
      181 LOADK                            R26 K40 ["PromptModeImage"]
      182 NAMECALL                         R23 R23 K30 ["getText"]
      184 CALL                             R23 3 1
      185 SETTABLEKS                       R23 R22 K35 ["text"]
      187 SETLIST                          R20 R21 2 [1]
      189 SETTABLEKS                       R20 R19 K32 ["items"]
      191 SETTABLEKS                       R19 R18 K24 ["options"]
      193 NEWCLOSURE                       R19 P2
      194 CAPTURE                          VAL R13
      195 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      197 NEWCLOSURE                       R19 P3
      198 CAPTURE                          VAL R11
      199 SETTABLEKS                       R19 R18 K26 ["registerSetBadges"]
      201 CALL                             R17 1 -1
      202 FASTCALL                         TABLE_INSERT ; [+2]
      203 GETIMPORT                        R15 K43 [table.insert]
      205 CALL                             R15 -1 0
      206 MOVE                             R16 R14
      207 GETUPVAL                         R17 14
      208 GETTABLEKS                       R17 R17 K44 ["createStringRowDefinition"]
      210 DUPTABLE                         R18 K48 [{"label", "prop", "initialValue", "multiLine", "initialVisible", "registerSetVisible", "onChanged"}]
      211 GETUPVAL                         R19 15
      212 LOADK                            R21 K28 ["MeshGen"]
      213 LOADK                            R22 K49 ["InputPromptTitle"]
      214 NAMECALL                         R19 R19 K30 ["getText"]
      216 CALL                             R19 3 1
      217 SETTABLEKS                       R19 R18 K21 ["label"]
      219 LOADK                            R19 K50 ["textPrompt"]
      220 SETTABLEKS                       R19 R18 K22 ["prop"]
      222 GETUPVAL                         R20 3
      223 CALL                             R20 0 1
      224 JUMPIFNOT                        R20 ; [+10]
      225 GETUPVAL                         R20 5
      226 GETUPVAL                         R21 6
      227 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      229 GETTABLEKS                       R21 R21 K39 ["Image"]
      231 JUMPIFNOTEQ                      R20 R21 ; [+3]
      233 LOADK                            R19 K51 [""]
      234 JUMP                             ; [+1]
      235 GETUPVAL                         R19 9
      236 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      238 LOADB                            R19 1
      239 SETTABLEKS                       R19 R18 K45 ["multiLine"]
      241 GETUPVAL                         R20 3
      242 CALL                             R20 0 1
      243 JUMPIFNOT                        R20 ; [+11]
      244 GETUPVAL                         R20 5
      245 GETUPVAL                         R21 6
      246 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      248 GETTABLEKS                       R21 R21 K19 ["Text"]
      250 JUMPIFEQ                         R20 R21 ; [+2]
      252 LOADB                            R19 0 +1
      253 LOADB                            R19 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R19
      256 SETTABLEKS                       R19 R18 K46 ["initialVisible"]
      258 GETUPVAL                         R20 3
      259 CALL                             R20 0 1
      260 JUMPIFNOT                        R20 ; [+3]
      261 NEWCLOSURE                       R19 P4
      262 CAPTURE                          VAL R7
      263 JUMP                             ; [+1]
      264 LOADNIL                          R19
      265 SETTABLEKS                       R19 R18 K47 ["registerSetVisible"]
      267 NEWCLOSURE                       R19 P5
      268 CAPTURE                          UPVAL U9
      269 CAPTURE                          REF R4
      270 CAPTURE                          REF R5
      271 CAPTURE                          VAL R3
      272 CAPTURE                          VAL R2
      273 CAPTURE                          UPVAL U3
      274 CAPTURE                          UPVAL U10
      275 CAPTURE                          UPVAL U5
      276 CAPTURE                          UPVAL U6
      277 CAPTURE                          UPVAL U11
      278 CAPTURE                          VAL R12
      279 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      281 CALL                             R17 1 -1
      282 FASTCALL                         TABLE_INSERT ; [+2]
      283 GETIMPORT                        R15 K43 [table.insert]
      285 CALL                             R15 -1 0
      286 GETUPVAL                         R15 3
      287 CALL                             R15 0 1
      288 JUMPIFNOT                        R15 ; [+61]
      289 MOVE                             R16 R14
      290 GETUPVAL                         R17 14
      291 GETTABLEKS                       R17 R17 K52 ["createHintImageRowDefinition"]
      293 DUPTABLE                         R18 K53 [{"label", "prop", "initialValue", "initialVisible", "registerSetVisible", "onChanged"}]
      294 GETUPVAL                         R19 15
      295 LOADK                            R21 K28 ["MeshGen"]
      296 LOADK                            R22 K54 ["InputHintImageTitle"]
      297 NAMECALL                         R19 R19 K30 ["getText"]
      299 CALL                             R19 3 1
      300 SETTABLEKS                       R19 R18 K21 ["label"]
      302 LOADK                            R19 K55 ["hintImage"]
      303 SETTABLEKS                       R19 R18 K22 ["prop"]
      305 GETUPVAL                         R20 5
      306 GETUPVAL                         R21 6
      307 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      309 GETTABLEKS                       R21 R21 K39 ["Image"]
      311 JUMPIFNOTEQ                      R20 R21 ; [+9]
      313 GETUPVAL                         R20 13
      314 JUMPIFNOT                        R20 ; [+6]
      315 GETUPVAL                         R19 16
      316 GETTABLEKS                       R19 R19 K56 ["getImage"]
      318 GETUPVAL                         R20 13
      319 CALL                             R19 1 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R19
      322 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      324 GETUPVAL                         R20 5
      325 GETUPVAL                         R21 6
      326 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      328 GETTABLEKS                       R21 R21 K39 ["Image"]
      330 JUMPIFEQ                         R20 R21 ; [+2]
      332 LOADB                            R19 0 +1
      333 LOADB                            R19 1
      334 SETTABLEKS                       R19 R18 K46 ["initialVisible"]
      336 NEWCLOSURE                       R19 P6
      337 CAPTURE                          VAL R8
      338 SETTABLEKS                       R19 R18 K47 ["registerSetVisible"]
      340 NEWCLOSURE                       R19 P7
      341 CAPTURE                          UPVAL U13
      342 CAPTURE                          UPVAL U16
      343 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      345 CALL                             R17 1 -1
      346 FASTCALL                         TABLE_INSERT ; [+2]
      347 GETIMPORT                        R15 K43 [table.insert]
      349 CALL                             R15 -1 0
      350 MOVE                             R16 R14
      351 GETUPVAL                         R17 14
      352 GETTABLEKS                       R17 R17 K57 ["createNumberRowDefinition"]
      354 DUPTABLE                         R18 K58 [{"label", "prop", "initialValue", "options"}]
      355 GETUPVAL                         R19 15
      356 LOADK                            R21 K28 ["MeshGen"]
      357 LOADK                            R22 K59 ["InputTriangleCountTitle"]
      358 NAMECALL                         R19 R19 K30 ["getText"]
      360 CALL                             R19 3 1
      361 SETTABLEKS                       R19 R18 K21 ["label"]
      363 LOADK                            R19 K60 ["maxTriangles"]
      364 SETTABLEKS                       R19 R18 K22 ["prop"]
      366 GETUPVAL                         R19 17
      367 CALL                             R19 0 1
      368 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      370 DUPTABLE                         R19 K63 [{"min", "max"}]
      371 GETUPVAL                         R20 18
      372 SETTABLEKS                       R20 R19 K61 ["min"]
      374 GETUPVAL                         R20 19
      375 SETTABLEKS                       R20 R19 K62 ["max"]
      377 SETTABLEKS                       R19 R18 K24 ["options"]
      379 CALL                             R17 1 -1
      380 FASTCALL                         TABLE_INSERT ; [+2]
      381 GETIMPORT                        R15 K43 [table.insert]
      383 CALL                             R15 -1 0
      384 GETUPVAL                         R15 10
      385 CALL                             R15 0 1
      386 JUMPIFNOT                        R15 ; [+98]
      387 MOVE                             R16 R14
      388 GETUPVAL                         R17 14
      389 GETTABLEKS                       R17 R17 K64 ["createPartNamesRowDefinition"]
      391 DUPTABLE                         R18 K71 [{"label", "prop", "initialValue", "isLoading", "registerSetValue", "registerSetIsLoading", "onChanged", "onCancelPressed", "onSuggestPressed", "infoPopoverNamespace"}]
      392 GETUPVAL                         R19 15
      393 LOADK                            R21 K28 ["MeshGen"]
      394 LOADK                            R22 K72 ["InputPartNamesTitle"]
      395 NAMECALL                         R19 R19 K30 ["getText"]
      397 CALL                             R19 3 1
      398 SETTABLEKS                       R19 R18 K21 ["label"]
      400 LOADK                            R19 K73 ["partNames"]
      401 SETTABLEKS                       R19 R18 K22 ["prop"]
      403 GETUPVAL                         R20 3
      404 CALL                             R20 0 1
      405 JUMPIFNOT                        R20 ; [+6]
      406 LENGTH                           R20 R6
      407 LOADN                            R21 0
      408 JUMPIFNOTLT                      R21 R20 ; [+3]
      410 MOVE                             R19 R6
      411 JUMP                             ; [+1]
      412 LOADNIL                          R19
      413 SETTABLEKS                       R19 R18 K23 ["initialValue"]
      415 GETUPVAL                         R20 3
      416 CALL                             R20 0 1
      417 JUMPIFNOT                        R20 ; [+19]
      418 LOADB                            R19 0
      419 GETUPVAL                         R20 5
      420 GETUPVAL                         R21 6
      421 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      423 GETTABLEKS                       R21 R21 K19 ["Text"]
      425 JUMPIFNOTEQ                      R20 R21 ; [+18]
      427 GETUPVAL                         R19 11
      428 JUMPIFNOT                        R19 ; [+15]
      429 GETUPVAL                         R21 9
      430 LENGTH                           R20 R21
      431 LOADN                            R21 0
      432 JUMPIFLT                         R21 R20 ; [+2]
      434 LOADB                            R19 0 +1
      435 LOADB                            R19 1
      436 JUMP                             ; [+7]
      437 GETUPVAL                         R21 9
      438 LENGTH                           R20 R21
      439 LOADN                            R21 0
      440 JUMPIFLT                         R21 R20 ; [+2]
      442 LOADB                            R19 0 +1
      443 LOADB                            R19 1
      444 SETTABLEKS                       R19 R18 K65 ["isLoading"]
      446 NEWCLOSURE                       R19 P8
      447 CAPTURE                          VAL R2
      448 SETTABLEKS                       R19 R18 K66 ["registerSetValue"]
      450 NEWCLOSURE                       R19 P9
      451 CAPTURE                          VAL R3
      452 SETTABLEKS                       R19 R18 K67 ["registerSetIsLoading"]
      454 GETUPVAL                         R20 3
      455 CALL                             R20 0 1
      456 JUMPIFNOT                        R20 ; [+3]
      457 NEWCLOSURE                       R19 P10
      458 CAPTURE                          REF R6
      459 JUMP                             ; [+1]
      460 LOADNIL                          R19
      461 SETTABLEKS                       R19 R18 K25 ["onChanged"]
      463 NEWCLOSURE                       R19 P11
      464 CAPTURE                          REF R4
      465 CAPTURE                          REF R5
      466 SETTABLEKS                       R19 R18 K68 ["onCancelPressed"]
      468 NEWCLOSURE                       R19 P12
      469 CAPTURE                          VAL R12
      470 SETTABLEKS                       R19 R18 K69 ["onSuggestPressed"]
      472 GETUPVAL                         R20 3
      473 CALL                             R20 0 1
      474 JUMPIFNOT                        R20 ; [+2]
      475 LOADK                            R19 K74 ["MeshGenSegmentation"]
      476 JUMP                             ; [+1]
      477 LOADNIL                          R19
      478 SETTABLEKS                       R19 R18 K70 ["infoPopoverNamespace"]
      480 CALL                             R17 1 -1
      481 FASTCALL                         TABLE_INSERT ; [+2]
      482 GETIMPORT                        R15 K43 [table.insert]
      484 CALL                             R15 -1 0
      485 GETUPVAL                         R15 3
      486 CALL                             R15 0 1
      487 JUMPIFNOT                        R15 ; [+54]
      488 GETUPVAL                         R15 10
      489 CALL                             R15 0 1
      490 JUMPIFNOT                        R15 ; [+51]
      491 MOVE                             R16 R14
      492 GETUPVAL                         R17 14
      493 GETTABLEKS                       R17 R17 K75 ["createSuggestSegmentationRowDefinition"]
      495 DUPTABLE                         R18 K81 [{"label", "prop", "initialChecked", "initialEnabled", "registerSetIsEnabled", "onCheckedChanged", "onRefreshPressed"}]
      496 LOADK                            R19 K51 [""]
      497 SETTABLEKS                       R19 R18 K21 ["label"]
      499 LOADK                            R19 K82 ["suggestSegmentation"]
      500 SETTABLEKS                       R19 R18 K22 ["prop"]
      502 GETUPVAL                         R19 11
      503 SETTABLEKS                       R19 R18 K76 ["initialChecked"]
      505 GETUPVAL                         R20 5
      506 GETUPVAL                         R21 6
      507 GETTABLEKS                       R21 R21 K18 ["PromptMode"]
      509 GETTABLEKS                       R21 R21 K19 ["Text"]
      511 JUMPIFEQ                         R20 R21 ; [+2]
      513 LOADB                            R19 0 +1
      514 LOADB                            R19 1
      515 SETTABLEKS                       R19 R18 K77 ["initialEnabled"]
      517 NEWCLOSURE                       R19 P13
      518 CAPTURE                          VAL R10
      519 SETTABLEKS                       R19 R18 K78 ["registerSetIsEnabled"]
      521 NEWCLOSURE                       R19 P14
      522 CAPTURE                          UPVAL U11
      523 CAPTURE                          UPVAL U5
      524 CAPTURE                          UPVAL U6
      525 CAPTURE                          UPVAL U9
      526 CAPTURE                          VAL R3
      527 CAPTURE                          VAL R12
      528 CAPTURE                          REF R4
      529 CAPTURE                          REF R5
      530 SETTABLEKS                       R19 R18 K79 ["onCheckedChanged"]
      532 NEWCLOSURE                       R19 P15
      533 CAPTURE                          VAL R3
      534 CAPTURE                          VAL R12
      535 SETTABLEKS                       R19 R18 K80 ["onRefreshPressed"]
      537 CALL                             R17 1 -1
      538 FASTCALL                         TABLE_INSERT ; [+2]
      539 GETIMPORT                        R15 K43 [table.insert]
      541 CALL                             R15 -1 0
      542 MOVE                             R16 R14
      543 GETUPVAL                         R17 14
      544 GETTABLEKS                       R17 R17 K83 ["createInstanceRowDefinition"]
      546 DUPTABLE                         R18 K84 [{"label", "prop", "initialValue", "initialVisible", "options"}]
      547 GETUPVAL                         R19 15
      548 LOADK                            R21 K28 ["MeshGen"]
      549 LOADK                            R22 K85 ["InputBoundingBox"]
      550 NAMECALL                         R19 R19 K30 ["getText"]
      552 CALL                             R19 3 1
      553 SETTABLEKS                       R19 R18 K21 ["label"]
      555 LOADK                            R19 K86 ["selectedInstanceRef"]
      556 SETTABLEKS                       R19 R18 K22 ["prop"]
      558 SETTABLEKS                       R1 R18 K23 ["initialValue"]
      560 GETUPVAL                         R20 3
      561 CALL                             R20 0 1
      562 JUMPIFNOT                        R20 ; [+2]
      563 LOADB                            R19 0
      564 JUMP                             ; [+1]
      565 LOADNIL                          R19
      566 SETTABLEKS                       R19 R18 K46 ["initialVisible"]
      568 DUPTABLE                         R19 K88 [{"isA"}]
      569 NEWTABLE                         R20 0 1
      571 GETUPVAL                         R21 20
      572 GETTABLEKS                       R21 R21 K89 ["BOUNDING_BOX_INSTANCE_TYPE"]
      574 SETLIST                          R20 R21 1 [1]
      576 SETTABLEKS                       R20 R19 K87 ["isA"]
      578 SETTABLEKS                       R19 R18 K24 ["options"]
      580 CALL                             R17 1 -1
      581 FASTCALL                         TABLE_INSERT ; [+2]
      582 GETIMPORT                        R15 K43 [table.insert]
      584 CALL                             R15 -1 0
      585 DUPTABLE                         R15 K95 [{"description", "confirmButtonText", "propertyRows", "onCancel", "canConfirm"}]
      586 GETUPVAL                         R16 15
      587 LOADK                            R18 K28 ["MeshGen"]
      588 LOADK                            R19 K96 ["InputDisclaimer"]
      589 NAMECALL                         R16 R16 K30 ["getText"]
      591 CALL                             R16 3 1
      592 SETTABLEKS                       R16 R15 K90 ["description"]
      594 GETUPVAL                         R16 15
      595 LOADK                            R18 K28 ["MeshGen"]
      596 LOADK                            R19 K97 ["InputGenerateMesh"]
      597 NAMECALL                         R16 R16 K30 ["getText"]
      599 CALL                             R16 3 1
      600 SETTABLEKS                       R16 R15 K91 ["confirmButtonText"]
      602 SETTABLEKS                       R14 R15 K92 ["propertyRows"]
      604 GETUPVAL                         R17 3
      605 CALL                             R17 0 1
      606 JUMPIFNOT                        R17 ; [+4]
      607 NEWCLOSURE                       R16 P16
      608 CAPTURE                          VAL R0
      609 CAPTURE                          REF R1
      610 JUMP                             ; [+1]
      611 LOADNIL                          R16
      612 SETTABLEKS                       R16 R15 K93 ["onCancel"]
      614 GETUPVAL                         R17 21
      615 CALL                             R17 0 1
      616 JUMPIFNOT                        R17 ; [+5]
      617 NEWCLOSURE                       R16 P17
      618 CAPTURE                          UPVAL U3
      619 CAPTURE                          UPVAL U5
      620 CAPTURE                          UPVAL U6
      621 JUMP                             ; [+1]
      622 LOADNIL                          R16
      623 SETTABLEKS                       R16 R15 K94 ["canConfirm"]
      625 CLOSEUPVALS                      R1
      626 RETURN                           R15 1

PROTO_78:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_79:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_80:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_81:
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
      182 DUPCLOSURE                       R7 K50 [PROTO_53]
      183 CAPTURE                          UPVAL U15
      184 LOADK                            R8 K51 [""]
      185 LOADNIL                          R9
      186 GETUPVAL                         R10 14
      187 GETTABLEKS                       R10 R10 K52 ["PromptMode"]
      189 GETTABLEKS                       R10 R10 K53 ["Text"]
      191 LOADB                            R11 1
      192 LOADK                            R12 K51 [""]
      193 LOADK                            R13 K51 [""]
      194 DUPTABLE                         R14 K58 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      195 LOADK                            R15 K59 ["generate_mesh"]
      196 SETTABLEKS                       R15 R14 K54 ["command"]
      198 DUPCLOSURE                       R15 K60 [PROTO_54]
      199 CAPTURE                          UPVAL U16
      200 SETTABLEKS                       R15 R14 K55 ["getDescription"]
      202 NEWCLOSURE                       R15 P6
      203 CAPTURE                          REF R8
      204 CAPTURE                          REF R9
      205 CAPTURE                          UPVAL U17
      206 CAPTURE                          REF R10
      207 CAPTURE                          UPVAL U14
      208 CAPTURE                          UPVAL U15
      209 CAPTURE                          UPVAL U10
      210 SETTABLEKS                       R15 R14 K56 ["mapToToolCall"]
      212 NEWCLOSURE                       R15 P7
      213 CAPTURE                          UPVAL U0
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R1
      216 CAPTURE                          UPVAL U17
      217 CAPTURE                          UPVAL U18
      218 CAPTURE                          REF R10
      219 CAPTURE                          UPVAL U14
      220 CAPTURE                          REF R12
      221 CAPTURE                          REF R13
      222 CAPTURE                          REF R8
      223 CAPTURE                          UPVAL U19
      224 CAPTURE                          REF R11
      225 CAPTURE                          UPVAL U20
      226 CAPTURE                          REF R9
      227 CAPTURE                          UPVAL U21
      228 CAPTURE                          UPVAL U16
      229 CAPTURE                          UPVAL U22
      230 CAPTURE                          UPVAL U23
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          UPVAL U12
      233 CAPTURE                          UPVAL U24
      234 CAPTURE                          UPVAL U25
      235 SETTABLEKS                       R15 R14 K57 ["getInputRequestArguments"]
      237 DUPTABLE                         R15 K62 [{"transformInitialContent"}]
      238 DUPCLOSURE                       R16 K63 [PROTO_78]
      239 CAPTURE                          UPVAL U3
      240 SETTABLEKS                       R16 R15 K61 ["transformInitialContent"]
      242 DUPTABLE                         R16 K71 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      243 SETTABLEKS                       R6 R16 K64 ["definition"]
      245 NEWTABLE                         R17 0 1
      247 MOVE                             R18 R14
      248 SETLIST                          R17 R18 1 [1]
      250 SETTABLEKS                       R17 R16 K65 ["slashCommands"]
      252 GETUPVAL                         R18 26
      253 CALL                             R18 0 1
      254 JUMPIFNOT                        R18 ; [+2]
      255 LOADNIL                          R17
      256 JUMP                             ; [+5]
      257 NEWTABLE                         R17 0 1
      259 GETUPVAL                         R18 3
      260 SETLIST                          R17 R18 1 [1]
      262 SETTABLEKS                       R17 R16 K66 ["contentWidgets"]
      264 SETTABLEKS                       R15 R16 K67 ["streamTransform"]
      266 DUPCLOSURE                       R17 K72 [PROTO_79]
      267 SETTABLEKS                       R17 R16 K68 ["getPreExecuteWarning"]
      269 GETUPVAL                         R18 26
      270 CALL                             R18 0 1
      271 JUMPIFNOT                        R18 ; [+2]
      272 LOADNIL                          R17
      273 JUMP                             ; [+2]
      274 DUPCLOSURE                       R17 K73 [PROTO_80]
      275 CAPTURE                          UPVAL U16
      276 SETTABLEKS                       R17 R16 K69 ["displayNameFunction"]
      278 DUPTABLE                         R17 K75 [{"resetTimeoutOnProgress"}]
      279 LOADB                            R18 1
      280 SETTABLEKS                       R18 R17 K74 ["resetTimeoutOnProgress"]
      282 SETTABLEKS                       R17 R16 K70 ["toolCallOptions"]
      284 CLOSEUPVALS                      R8
      285 RETURN                           R16 1

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
      156 GETTABLEKS                       R24 R24 K41 ["FFlagAssistantGen3dAutoSegmentation"]
      158 CALL                             R23 1 1
      159 GETIMPORT                        R24 K10 [require]
      161 GETTABLEKS                       R25 R0 K40 ["Flags"]
      163 GETTABLEKS                       R25 R25 K42 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K10 [require]
      168 GETTABLEKS                       R26 R0 K40 ["Flags"]
      170 GETTABLEKS                       R26 R26 K43 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K10 [require]
      175 GETTABLEKS                       R27 R0 K40 ["Flags"]
      177 GETTABLEKS                       R27 R27 K44 ["FFlagAssistantMultipleChatPersistence"]
      179 CALL                             R26 1 1
      180 GETIMPORT                        R27 K10 [require]
      182 GETTABLEKS                       R28 R0 K40 ["Flags"]
      184 GETTABLEKS                       R28 R28 K45 ["FFlagAssistantSegmentationPromptModeSelector"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K10 [require]
      189 GETTABLEKS                       R29 R0 K40 ["Flags"]
      191 GETTABLEKS                       R29 R29 K46 ["FFlagAssistantSplitToolsAndWidgets"]
      193 CALL                             R28 1 1
      194 GETIMPORT                        R29 K10 [require]
      196 GETTABLEKS                       R30 R0 K40 ["Flags"]
      198 GETTABLEKS                       R30 R30 K47 ["FFlagDebugLogAssistantUI"]
      200 CALL                             R29 1 1
      201 GETIMPORT                        R30 K10 [require]
      203 GETTABLEKS                       R31 R0 K40 ["Flags"]
      205 GETTABLEKS                       R31 R31 K48 ["FFlagGen3dSegmentationSelector"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K10 [require]
      210 GETTABLEKS                       R32 R0 K40 ["Flags"]
      212 GETTABLEKS                       R32 R32 K49 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      214 CALL                             R31 1 1
      215 GETIMPORT                        R32 K10 [require]
      217 GETTABLEKS                       R33 R0 K40 ["Flags"]
      219 GETTABLEKS                       R33 R33 K50 ["FStringAssistantMeshGenImageGenModelOverride"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K10 [require]
      224 GETTABLEKS                       R34 R0 K40 ["Flags"]
      226 GETTABLEKS                       R34 R34 K51 ["FStringAssistantMeshGenInferenceServiceOverride"]
      228 CALL                             R33 1 1
      229 GETTABLEKS                       R34 R5 K13 ["Util"]
      231 GETTABLEKS                       R34 R34 K52 ["ToolBuilder"]
      233 GETTABLEKS                       R35 R5 K13 ["Util"]
      235 GETTABLEKS                       R35 R35 K53 ["ToolResult"]
      237 GETTABLEKS                       R36 R11 K54 ["ToolNames"]
      239 GETTABLEKS                       R37 R18 K55 ["Enums"]
      241 GETTABLEKS                       R38 R18 K56 ["MAX_TRIANGLES_LOWER_BOUND"]
      243 GETTABLEKS                       R39 R18 K57 ["MAX_TRIANGLES_UPPER_BOUND"]
      245 GETTABLEKS                       R40 R18 K58 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      247 DUPCLOSURE                       R41 K59 [PROTO_0]
      248 CAPTURE                          VAL R16
      249 DUPCLOSURE                       R42 K60 [PROTO_1]
      250 CAPTURE                          VAL R2
      251 DUPCLOSURE                       R43 K61 [PROTO_3]
      252 CAPTURE                          VAL R27
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R38
      255 CAPTURE                          VAL R39
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R33
      259 CAPTURE                          VAL R32
      260 DUPCLOSURE                       R44 K62 [PROTO_4]
      261 CAPTURE                          VAL R3
      262 DUPCLOSURE                       R45 K63 [PROTO_5]
      263 CAPTURE                          VAL R3
      264 DUPCLOSURE                       R46 K64 [PROTO_15]
      265 CAPTURE                          VAL R26
      266 CAPTURE                          VAL R3
      267 CAPTURE                          VAL R37
      268 CAPTURE                          VAL R40
      269 DUPCLOSURE                       R47 K65 [PROTO_18]
      270 CAPTURE                          VAL R37
      271 CAPTURE                          VAL R46
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R3
      274 DUPCLOSURE                       R48 K66 [PROTO_21]
      275 CAPTURE                          VAL R37
      276 CAPTURE                          VAL R46
      277 CAPTURE                          VAL R3
      278 DUPCLOSURE                       R49 K67 [PROTO_23]
      279 CAPTURE                          VAL R37
      280 CAPTURE                          VAL R46
      281 DUPCLOSURE                       R50 K68 [PROTO_37]
      282 CAPTURE                          VAL R19
      283 CAPTURE                          VAL R46
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R47
      286 CAPTURE                          VAL R37
      287 CAPTURE                          VAL R48
      288 CAPTURE                          VAL R49
      289 CAPTURE                          VAL R25
      290 DUPCLOSURE                       R51 K69 [PROTO_38]
      291 CAPTURE                          VAL R19
      292 DUPCLOSURE                       R52 K70 [PROTO_39]
      293 CAPTURE                          VAL R43
      294 CAPTURE                          VAL R46
      295 CAPTURE                          VAL R37
      296 CAPTURE                          VAL R2
      297 CAPTURE                          VAL R19
      298 CAPTURE                          VAL R11
      299 CAPTURE                          VAL R50
      300 CAPTURE                          VAL R51
      301 CAPTURE                          VAL R21
      302 DUPCLOSURE                       R53 K71 [PROTO_41]
      303 CAPTURE                          VAL R46
      304 DUPCLOSURE                       R54 K72 [PROTO_42]
      305 CAPTURE                          VAL R46
      306 DUPCLOSURE                       R55 K73 [PROTO_48]
      307 CAPTURE                          VAL R46
      308 CAPTURE                          VAL R6
      309 CAPTURE                          VAL R1
      310 DUPTABLE                         R56 K77 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage"}]
      311 SETTABLEKS                       R53 R56 K74 ["updateContentHeader"]
      313 SETTABLEKS                       R54 R56 K75 ["setPreviewStateAsync"]
      315 SETTABLEKS                       R55 R56 K76 ["setPreviewImage"]
      317 DUPCLOSURE                       R57 K78 [PROTO_81]
      318 CAPTURE                          VAL R41
      319 CAPTURE                          VAL R26
      320 CAPTURE                          VAL R8
      321 CAPTURE                          VAL R19
      322 CAPTURE                          VAL R50
      323 CAPTURE                          VAL R51
      324 CAPTURE                          VAL R52
      325 CAPTURE                          VAL R12
      326 CAPTURE                          VAL R35
      327 CAPTURE                          VAL R34
      328 CAPTURE                          VAL R36
      329 CAPTURE                          VAL R38
      330 CAPTURE                          VAL R39
      331 CAPTURE                          VAL R23
      332 CAPTURE                          VAL R22
      333 CAPTURE                          VAL R10
      334 CAPTURE                          VAL R13
      335 CAPTURE                          VAL R27
      336 CAPTURE                          VAL R29
      337 CAPTURE                          VAL R30
      338 CAPTURE                          VAL R20
      339 CAPTURE                          VAL R7
      340 CAPTURE                          VAL R4
      341 CAPTURE                          VAL R31
      342 CAPTURE                          VAL R18
      343 CAPTURE                          VAL R24
      344 CAPTURE                          VAL R28
      345 DUPTABLE                         R58 K81 [{"bridge", "setupGuest"}]
      346 SETTABLEKS                       R56 R58 K79 ["bridge"]
      348 SETTABLEKS                       R57 R58 K80 ["setupGuest"]
      350 RETURN                           R58 1
