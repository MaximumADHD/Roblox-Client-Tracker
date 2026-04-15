PROTO_0:
        0 DUPTABLE                         R5 K3 [{"isThirdPartyRequest", "messageId", "contentId"}]
        1 SETTABLEKS                       R2 R5 K0 ["isThirdPartyRequest"]
        3 SETTABLEKS                       R3 R5 K1 ["messageId"]
        5 SETTABLEKS                       R4 R5 K2 ["contentId"]
        7 DUPTABLE                         R6 K5 [{"handlerArgs"}]
        8 SETTABLEKS                       R5 R6 K4 ["handlerArgs"]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K6 ["createGuestContext"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 MOVE                             R10 R1
       16 LOADNIL                          R11
       17 CALL                             R7 4 -1
       18 RETURN                           R7 -1

PROTO_1:
        0 LOADK                            R1 K0 ["MeshGen-%*"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

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
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K6 ["textPrompt"]
       17 LOADB                            R4 0
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R6 R2
       20 GETIMPORT                        R5 K1 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+7]
       25 LENGTH                           R5 R2
       26 LOADN                            R6 0
       27 JUMPIFLT                         R6 R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       33 LOADK                            R5 K8 ["textPrompt must be a non-empty string"]
       34 GETIMPORT                        R3 K5 [assert]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R1 K9 ["size"]
       39 LOADNIL                          R4
       40 JUMPIFEQKNIL                     R3 ; [+116]
       42 FASTCALL1                        TYPEOF R3 ; [+3]
       43 MOVE                             R8 R3
       44 GETIMPORT                        R7 K1 [typeof]
       46 CALL                             R7 1 1
       47 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       53 LOADK                            R7 K10 ["size must be a table"]
       54 GETIMPORT                        R5 K5 [assert]
       56 CALL                             R5 2 0
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          VAL R3
       59 GETTABLEKS                       R6 R3 K11 ["x"]
       61 JUMPIFNOTEQKNIL                  R6 ; [+6]
       63 GETIMPORT                        R7 K13 [error]
       65 LOADK                            R8 K14 ["size.x must be defined"]
       66 LOADN                            R9 0
       67 CALL                             R7 2 0
       68 FASTCALL1                        TONUMBER R6 ; [+3]
       69 MOVE                             R8 R6
       70 GETIMPORT                        R7 K16 [tonumber]
       72 CALL                             R7 1 1
       73 JUMPIFNOTEQKNIL                  R7 ; [+6]
       75 GETIMPORT                        R8 K13 [error]
       77 LOADK                            R9 K17 ["size.x must be a number"]
       78 LOADN                            R10 0
       79 CALL                             R8 2 0
       80 LOADN                            R8 0
       81 JUMPIFNOTLE                      R7 R8 ; [+6]
       83 GETIMPORT                        R8 K13 [error]
       85 LOADK                            R9 K18 ["size.x must be a positive number"]
       86 LOADN                            R10 0
       87 CALL                             R8 2 0
       88 GETTABLEKS                       R6 R3 K19 ["y"]
       90 JUMPIFNOTEQKNIL                  R6 ; [+6]
       92 GETIMPORT                        R7 K13 [error]
       94 LOADK                            R8 K20 ["size.y must be defined"]
       95 LOADN                            R9 0
       96 CALL                             R7 2 0
       97 FASTCALL1                        TONUMBER R6 ; [+3]
       98 MOVE                             R8 R6
       99 GETIMPORT                        R7 K16 [tonumber]
      101 CALL                             R7 1 1
      102 JUMPIFNOTEQKNIL                  R7 ; [+6]
      104 GETIMPORT                        R8 K13 [error]
      106 LOADK                            R9 K21 ["size.y must be a number"]
      107 LOADN                            R10 0
      108 CALL                             R8 2 0
      109 LOADN                            R8 0
      110 JUMPIFNOTLE                      R7 R8 ; [+6]
      112 GETIMPORT                        R8 K13 [error]
      114 LOADK                            R9 K22 ["size.y must be a positive number"]
      115 LOADN                            R10 0
      116 CALL                             R8 2 0
      117 GETTABLEKS                       R6 R3 K23 ["z"]
      119 JUMPIFNOTEQKNIL                  R6 ; [+6]
      121 GETIMPORT                        R7 K13 [error]
      123 LOADK                            R8 K24 ["size.z must be defined"]
      124 LOADN                            R9 0
      125 CALL                             R7 2 0
      126 FASTCALL1                        TONUMBER R6 ; [+3]
      127 MOVE                             R8 R6
      128 GETIMPORT                        R7 K16 [tonumber]
      130 CALL                             R7 1 1
      131 JUMPIFNOTEQKNIL                  R7 ; [+6]
      133 GETIMPORT                        R8 K13 [error]
      135 LOADK                            R9 K25 ["size.z must be a number"]
      136 LOADN                            R10 0
      137 CALL                             R8 2 0
      138 LOADN                            R8 0
      139 JUMPIFNOTLE                      R7 R8 ; [+6]
      141 GETIMPORT                        R8 K13 [error]
      143 LOADK                            R9 K26 ["size.z must be a positive number"]
      144 LOADN                            R10 0
      145 CALL                             R8 2 0
      146 GETTABLEKS                       R7 R3 K11 ["x"]
      148 GETTABLEKS                       R8 R3 K19 ["y"]
      150 GETTABLEKS                       R9 R3 K23 ["z"]
      152 FASTCALL                         VECTOR ; [+2]
      153 GETIMPORT                        R6 K29 [Vector3.new]
      155 CALL                             R6 3 1
      156 MOVE                             R4 R6
      157 GETTABLEKS                       R5 R1 K30 ["maxTriangles"]
      159 JUMPIFEQKNIL                     R5 ; [+33]
      161 FASTCALL1                        TYPEOF R5 ; [+3]
      162 MOVE                             R9 R5
      163 GETIMPORT                        R8 K1 [typeof]
      165 CALL                             R8 1 1
      166 JUMPIFEQKS                       R8 K31 ["number"] ; [+2]
      168 LOADB                            R7 0 +1
      169 LOADB                            R7 1
      170 FASTCALL2K                       ASSERT R7 K32 ; [+4]
      172 LOADK                            R8 K32 ["maxTriangles must be a number"]
      173 GETIMPORT                        R6 K5 [assert]
      175 CALL                             R6 2 0
      176 GETUPVAL                         R6 0
      177 JUMPIFLT                         R5 R6 ; [+4]
      179 GETUPVAL                         R6 1
      180 JUMPIFNOTLT                      R6 R5 ; [+12]
      182 GETIMPORT                        R6 K13 [error]
      184 LOADK                            R8 K33 ["maxTriangles must be between %* and %* (inclusive)"]
      185 GETUPVAL                         R10 0
      186 GETUPVAL                         R11 1
      187 NAMECALL                         R8 R8 K34 ["format"]
      189 CALL                             R8 3 1
      190 MOVE                             R7 R8
      191 LOADN                            R8 0
      192 CALL                             R6 2 0
      193 GETTABLEKS                       R6 R1 K35 ["isManualRun"]
      195 JUMPIFEQKNIL                     R6 ; [+16]
      197 FASTCALL1                        TYPEOF R6 ; [+3]
      198 MOVE                             R10 R6
      199 GETIMPORT                        R9 K1 [typeof]
      201 CALL                             R9 1 1
      202 JUMPIFEQKS                       R9 K36 ["boolean"] ; [+2]
      204 LOADB                            R8 0 +1
      205 LOADB                            R8 1
      206 FASTCALL2K                       ASSERT R8 K37 ; [+4]
      208 LOADK                            R9 K37 ["isManualRun must be a boolean"]
      209 GETIMPORT                        R7 K5 [assert]
      211 CALL                             R7 2 0
      212 GETTABLEKS                       R7 R1 K38 ["selectedInstanceRef"]
      214 LOADNIL                          R8
      215 JUMPIFEQKNIL                     R7 ; [+34]
      217 FASTCALL1                        TYPEOF R7 ; [+3]
      218 MOVE                             R12 R7
      219 GETIMPORT                        R11 K1 [typeof]
      221 CALL                             R11 1 1
      222 JUMPIFEQKS                       R11 K2 ["table"] ; [+2]
      224 LOADB                            R10 0 +1
      225 LOADB                            R10 1
      226 FASTCALL2K                       ASSERT R10 K39 ; [+4]
      228 LOADK                            R11 K39 ["selectedInstanceRef must be a table"]
      229 GETIMPORT                        R9 K5 [assert]
      231 CALL                             R9 2 0
      232 GETTABLEKS                       R12 R7 K40 ["uniqueId"]
      234 FASTCALL1                        TYPEOF R12 ; [+2]
      235 GETIMPORT                        R11 K1 [typeof]
      237 CALL                             R11 1 1
      238 JUMPIFEQKS                       R11 K7 ["string"] ; [+2]
      240 LOADB                            R10 0 +1
      241 LOADB                            R10 1
      242 FASTCALL2K                       ASSERT R10 K41 ; [+4]
      244 LOADK                            R11 K41 ["selectedInstanceRef.uniqueId must be a string"]
      245 GETIMPORT                        R9 K5 [assert]
      247 CALL                             R9 2 0
      248 GETTABLEKS                       R8 R7 K40 ["uniqueId"]
      250 DUPTABLE                         R9 K43 [{"textPrompt", "size", "maxTriangles", "isManualRun", "selectedUniqueId"}]
      251 SETTABLEKS                       R2 R9 K6 ["textPrompt"]
      253 SETTABLEKS                       R4 R9 K9 ["size"]
      255 SETTABLEKS                       R5 R9 K30 ["maxTriangles"]
      257 SETTABLEKS                       R6 R9 K35 ["isManualRun"]
      259 SETTABLEKS                       R8 R9 K42 ["selectedUniqueId"]
      261 RETURN                           R9 1

PROTO_4:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADNIL                          R7
        5 SETTABLE                         R7 R0 R5
        6 FORGLOOP                         R2 1 ; [-3]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["assign"]
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
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["assign"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 0
       14 MOVE                             R2 R0
       15 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R2 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R3 K2 ["messageId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R4 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FailureReasonToPreviewStateMap"]
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
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R2 K3 [table.create]
        5 GETUPVAL                         R3 0
        6 LOADK                            R4 K4 [""]
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 SETTABLEKS                       R1 R0 K0 ["previewImages"]
       11 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["previewImages should be initialized"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 2
       20 SETTABLE                         R3 R1 R2
       21 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["externalHooks"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["generateAssetsAsync"]
        5 DUPTABLE                         R1 K7 [{"requestId", "textPrompt", "size", "maxTriangles", "selectedUniqueId"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["textPrompt"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K4 ["size"]
       17 SETTABLEKS                       R2 R1 K4 ["size"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K5 ["maxTriangles"]
       22 SETTABLEKS                       R2 R1 K5 ["maxTriangles"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R2 R3 K6 ["selectedUniqueId"]
       27 SETTABLEKS                       R2 R1 K6 ["selectedUniqueId"]
       29 CALL                             R0 1 1
       30 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R2 K1 ["Generated"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R5 R2 K0 ["type"]
        2 JUMPIFEQKS                       R5 K1 ["Initialized"] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["Generation meta must be of type 'Initialized'"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K5 ["setPreviewState"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R6 K7 ["GeneratingMesh"]
       22 CALL                             R4 1 0
       23 GETTABLEKS                       R4 R1 K8 ["textPrompt"]
       25 GETIMPORT                        R5 K10 [pcall]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 CALL                             R5 1 2
       33 JUMPIF                           R5 ; [+2]
       34 MOVE                             R7 R6
       35 JUMP                             ; [+1]
       36 LOADK                            R7 K11 [""]
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R8 R6 K12 ["generationId"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 GETTABLEKS                       R10 R0 K13 ["toolArgs"]
       44 GETTABLEKS                       R9 R10 K14 ["environment"]
       46 GETTABLEKS                       R11 R9 K15 ["EventLogger"]
       48 GETTABLEKS                       R10 R11 K16 ["logMeshGenCompleted"]
       50 DUPTABLE                         R11 K21 [{"requestId", "generationId", "success", "errorMessage", "prompt"}]
       51 GETTABLEKS                       R12 R2 K17 ["requestId"]
       53 SETTABLEKS                       R12 R11 K17 ["requestId"]
       55 SETTABLEKS                       R8 R11 K12 ["generationId"]
       57 SETTABLEKS                       R5 R11 K18 ["success"]
       59 SETTABLEKS                       R7 R11 K19 ["errorMessage"]
       61 SETTABLEKS                       R4 R11 K20 ["prompt"]
       63 CALL                             R10 1 0
       64 JUMPIF                           R5 ; [+38]
       65 GETIMPORT                        R10 K24 [string.find]
       67 GETIMPORT                        R11 K26 [string.lower]
       69 MOVE                             R12 R7
       70 CALL                             R11 1 1
       71 LOADK                            R12 K27 ["moderat"]
       72 CALL                             R10 2 1
       73 JUMPIFNOT                        R10 ; [+9]
       74 GETTABLEKS                       R10 R3 K28 ["setFailureReason"]
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R12 R13 K29 ["FailureReason"]
       79 GETTABLEKS                       R11 R12 K30 ["GenerationModerated"]
       81 CALL                             R10 1 0
       82 JUMP                             ; [+8]
       83 GETTABLEKS                       R10 R3 K28 ["setFailureReason"]
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R12 R13 K29 ["FailureReason"]
       88 GETTABLEKS                       R11 R12 K31 ["GenerationFailed"]
       90 CALL                             R10 1 0
       91 GETIMPORT                        R10 K33 [warn]
       93 LOADK                            R12 K34 ["Mesh generation failed with error: %*"]
       94 MOVE                             R14 R7
       95 NAMECALL                         R12 R12 K35 ["format"]
       97 CALL                             R12 2 1
       98 MOVE                             R11 R12
       99 CALL                             R10 1 0
      100 LOADB                            R10 0
      101 MOVE                             R11 R7
      102 RETURN                           R10 2
      103 DUPTABLE                         R11 K37 [{"type", "requestId", "generationId", "generationName"}]
      104 LOADK                            R12 K38 ["Generated"]
      105 SETTABLEKS                       R12 R11 K0 ["type"]
      107 GETTABLEKS                       R12 R2 K17 ["requestId"]
      109 SETTABLEKS                       R12 R11 K17 ["requestId"]
      111 SETTABLEKS                       R8 R11 K12 ["generationId"]
      113 SETTABLEKS                       R4 R11 K36 ["generationName"]
      115 MOVE                             R12 R2
      116 LOADNIL                          R13
      117 LOADNIL                          R14
      118 FORGPREP                         R12
      119 LOADNIL                          R17
      120 SETTABLE                         R17 R2 R15
      121 FORGLOOP                         R12 1 ; [-3]
      123 GETUPVAL                         R13 2
      124 GETTABLEKS                       R12 R13 K39 ["assign"]
      126 MOVE                             R13 R2
      127 MOVE                             R14 R11
      128 CALL                             R12 2 0
      129 MOVE                             R10 R2
      130 GETTABLEKS                       R11 R3 K40 ["updateWidget"]
      132 NEWCLOSURE                       R12 P1
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          VAL R10
      135 CALL                             R11 1 0
      136 LOADB                            R11 1
      137 MOVE                             R12 R6
      138 RETURN                           R11 2

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["publishAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{"requestId", "generationId", "hasPredeterminedSize"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["generationId"]
       14 SETTABLEKS                       R2 R1 K3 ["generationId"]
       16 GETUPVAL                         R2 2
       17 SETTABLEKS                       R2 R1 K4 ["hasPredeterminedSize"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
        3 GETTABLEKS                       R1 R2 K1 ["Published"]
        5 SETTABLEKS                       R1 R0 K2 ["previewState"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationMeta"]
       10 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R5 R1 K0 ["type"]
        2 JUMPIFEQKS                       R5 K1 ["Generated"] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["Generation meta must be of type 'Generated'"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K5 ["setPreviewState"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R6 K7 ["Publishing"]
       22 CALL                             R4 1 0
       23 GETIMPORT                        R4 K9 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CALL                             R4 1 2
       30 JUMPIF                           R4 ; [+2]
       31 MOVE                             R6 R5
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K10 [""]
       34 GETTABLEKS                       R8 R0 K11 ["toolArgs"]
       36 GETTABLEKS                       R7 R8 K12 ["environment"]
       38 JUMPIF                           R4 ; [+59]
       39 GETTABLEKS                       R9 R7 K13 ["EventLogger"]
       41 GETTABLEKS                       R8 R9 K14 ["logMeshGenPublishedAssets"]
       43 DUPTABLE                         R9 K21 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       44 GETTABLEKS                       R10 R1 K15 ["requestId"]
       46 SETTABLEKS                       R10 R9 K15 ["requestId"]
       48 GETTABLEKS                       R10 R1 K16 ["generationId"]
       50 SETTABLEKS                       R10 R9 K16 ["generationId"]
       52 SETTABLEKS                       R4 R9 K17 ["success"]
       54 SETTABLEKS                       R6 R9 K18 ["errorMessage"]
       56 LOADNIL                          R10
       57 SETTABLEKS                       R10 R9 K19 ["meshId"]
       59 LOADNIL                          R10
       60 SETTABLEKS                       R10 R9 K20 ["imageId"]
       62 CALL                             R8 1 0
       63 LOADK                            R10 K22 ["HTTP error %(status=(%d+)"]
       64 NAMECALL                         R8 R6 K23 ["match"]
       66 CALL                             R8 2 1
       67 JUMPIFNOTEQKS                    R8 K24 ["403"] ; [+10]
       69 GETTABLEKS                       R9 R3 K25 ["setFailureReason"]
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R11 R12 K26 ["FailureReason"]
       74 GETTABLEKS                       R10 R11 K27 ["AssetPermissionCreationFailed"]
       76 CALL                             R9 1 0
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R9 R3 K25 ["setFailureReason"]
       80 GETUPVAL                         R12 1
       81 GETTABLEKS                       R11 R12 K26 ["FailureReason"]
       83 GETTABLEKS                       R10 R11 K28 ["PublishFailed"]
       85 CALL                             R9 1 0
       86 GETIMPORT                        R9 K30 [warn]
       88 LOADK                            R11 K31 ["Failed to publish assets with error: %*"]
       89 MOVE                             R13 R6
       90 NAMECALL                         R11 R11 K32 ["format"]
       92 CALL                             R11 2 1
       93 MOVE                             R10 R11
       94 CALL                             R9 1 0
       95 LOADB                            R9 0
       96 MOVE                             R10 R6
       97 RETURN                           R9 2
       98 GETTABLEKS                       R8 R5 K33 ["assets"]
      100 LOADNIL                          R9
      101 LOADNIL                          R10
      102 FORGPREP                         R8
      103 GETTABLEKS                       R13 R12 K19 ["meshId"]
      105 LOADK                            R15 K34 ["%d+"]
      106 NAMECALL                         R13 R13 K23 ["match"]
      108 CALL                             R13 2 1
      109 GETTABLEKS                       R14 R12 K35 ["textureId"]
      111 LOADK                            R16 K34 ["%d+"]
      112 NAMECALL                         R14 R14 K23 ["match"]
      114 CALL                             R14 2 1
      115 GETTABLEKS                       R16 R7 K13 ["EventLogger"]
      117 GETTABLEKS                       R15 R16 K14 ["logMeshGenPublishedAssets"]
      119 DUPTABLE                         R16 K21 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
      120 GETTABLEKS                       R17 R1 K15 ["requestId"]
      122 SETTABLEKS                       R17 R16 K15 ["requestId"]
      124 GETTABLEKS                       R17 R1 K16 ["generationId"]
      126 SETTABLEKS                       R17 R16 K16 ["generationId"]
      128 SETTABLEKS                       R4 R16 K17 ["success"]
      130 SETTABLEKS                       R6 R16 K18 ["errorMessage"]
      132 FASTCALL1                        TONUMBER R13 ; [+3]
      133 MOVE                             R18 R13
      134 GETIMPORT                        R17 K37 [tonumber]
      136 CALL                             R17 1 1
      137 SETTABLEKS                       R17 R16 K19 ["meshId"]
      139 FASTCALL1                        TONUMBER R14 ; [+3]
      140 MOVE                             R18 R14
      141 GETIMPORT                        R17 K37 [tonumber]
      143 CALL                             R17 1 1
      144 SETTABLEKS                       R17 R16 K20 ["imageId"]
      146 CALL                             R15 1 0
      147 FORGLOOP                         R8 2 ; [-45]
      149 DUPTABLE                         R9 K39 [{"type", "requestId", "generationId", "generationName"}]
      150 LOADK                            R10 K40 ["Published"]
      151 SETTABLEKS                       R10 R9 K0 ["type"]
      153 GETTABLEKS                       R10 R1 K15 ["requestId"]
      155 SETTABLEKS                       R10 R9 K15 ["requestId"]
      157 GETTABLEKS                       R10 R1 K16 ["generationId"]
      159 SETTABLEKS                       R10 R9 K16 ["generationId"]
      161 GETTABLEKS                       R10 R1 K38 ["generationName"]
      163 SETTABLEKS                       R10 R9 K38 ["generationName"]
      165 MOVE                             R10 R1
      166 LOADNIL                          R11
      167 LOADNIL                          R12
      168 FORGPREP                         R10
      169 LOADNIL                          R15
      170 SETTABLE                         R15 R1 R13
      171 FORGLOOP                         R10 1 ; [-3]
      173 GETUPVAL                         R11 2
      174 GETTABLEKS                       R10 R11 K41 ["assign"]
      176 MOVE                             R11 R1
      177 MOVE                             R12 R9
      178 CALL                             R10 2 0
      179 MOVE                             R8 R1
      180 GETTABLEKS                       R9 R3 K42 ["updateWidget"]
      182 NEWCLOSURE                       R10 P1
      183 CAPTURE                          UPVAL U1
      184 CAPTURE                          VAL R8
      185 CALL                             R9 1 0
      186 LOADB                            R9 1
      187 RETURN                           R9 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["insertAssetsAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R4 R1 K0 ["type"]
        2 JUMPIFEQKS                       R4 K1 ["Published"] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["Generation meta must be of type 'Published'"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K5 ["setPreviewState"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K6 ["PreviewState"]
       20 GETTABLEKS                       R4 R5 K7 ["Inserting"]
       22 CALL                             R3 1 0
       23 GETIMPORT                        R3 K9 [pcall]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CALL                             R3 1 2
       29 JUMPIF                           R3 ; [+2]
       30 MOVE                             R5 R4
       31 JUMP                             ; [+1]
       32 LOADK                            R5 K10 [""]
       33 GETTABLEKS                       R7 R0 K11 ["toolArgs"]
       35 GETTABLEKS                       R6 R7 K12 ["environment"]
       37 GETTABLEKS                       R8 R6 K13 ["EventLogger"]
       39 GETTABLEKS                       R7 R8 K14 ["logMeshGenMeshInserted"]
       41 DUPTABLE                         R8 K19 [{"requestId", "generationId", "success", "errorMessage"}]
       42 GETTABLEKS                       R9 R1 K15 ["requestId"]
       44 SETTABLEKS                       R9 R8 K15 ["requestId"]
       46 GETTABLEKS                       R9 R1 K16 ["generationId"]
       48 SETTABLEKS                       R9 R8 K16 ["generationId"]
       50 SETTABLEKS                       R3 R8 K17 ["success"]
       52 SETTABLEKS                       R5 R8 K18 ["errorMessage"]
       54 CALL                             R7 1 0
       55 JUMPIF                           R3 ; [+20]
       56 GETTABLEKS                       R7 R2 K20 ["setFailureReason"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R9 R10 K21 ["FailureReason"]
       61 GETTABLEKS                       R8 R9 K22 ["InsertFailed"]
       63 CALL                             R7 1 0
       64 GETIMPORT                        R7 K24 [warn]
       66 LOADK                            R9 K25 ["Failed to insert assets with error: %*"]
       67 MOVE                             R11 R5
       68 NAMECALL                         R9 R9 K26 ["format"]
       70 CALL                             R9 2 1
       71 MOVE                             R8 R9
       72 CALL                             R7 1 0
       73 LOADB                            R7 0
       74 MOVE                             R8 R5
       75 RETURN                           R7 2
       76 GETTABLEKS                       R7 R2 K5 ["setPreviewState"]
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R9 R10 K6 ["PreviewState"]
       81 GETTABLEKS                       R8 R9 K1 ["Published"]
       83 CALL                             R7 1 0
       84 LOADB                            R7 1
       85 RETURN                           R7 1

PROTO_24:
        0 JUMPIF                           R0 ; [+24]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["bridge"]
        4 GETTABLEKS                       R2 R3 K1 ["removeSelectedBoundsAsync"]
        6 DUPTABLE                         R3 K3 [{"requestId"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["requestId"]
       10 SETTABLEKS                       R4 R3 K2 ["requestId"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["bridge"]
       16 GETTABLEKS                       R2 R3 K4 ["cancelGenerationAsync"]
       18 DUPTABLE                         R3 K3 [{"requestId"}]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K2 ["requestId"]
       22 SETTABLEKS                       R4 R3 K2 ["requestId"]
       24 CALL                             R2 1 0
       25 SETUPVAL                         R0 2
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K6 [type]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K7 ["string"] ; [+3]
       33 MOVE                             R2 R1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETUPVAL                         R2 3
       37 GETUPVAL                         R2 4
       38 JUMPIFNOT                        R2 ; [+18]
       39 GETUPVAL                         R2 4
       40 GETIMPORT                        R3 K10 [coroutine.running]
       42 CALL                             R3 0 1
       43 JUMPIFEQ                         R2 R3 ; [+13]
       45 GETIMPORT                        R2 K12 [coroutine.status]
       47 GETUPVAL                         R3 4
       48 CALL                             R2 1 1
       49 JUMPIFEQKS                       R2 K13 ["dead"] ; [+7]
       51 GETIMPORT                        R2 K16 [task.cancel]
       53 GETUPVAL                         R3 4
       54 CALL                             R2 1 0
       55 LOADNIL                          R2
       56 SETUPVAL                         R2 4
       57 GETUPVAL                         R2 5
       58 NAMECALL                         R2 R2 K17 ["Fire"]
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K9 ["setFailureReason"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R2 R3 K10 ["FailureReason"]
       31 GETTABLEKS                       R1 R2 K11 ["GenerationCanceled"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["size"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+16]
        6 LOADB                            R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["selectedUniqueId"]
       10 JUMPIFEQKNIL                     R1 ; [+10]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K1 ["selectedUniqueId"]
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["type"]
        3 JUMPIFEQKS                       R2 K1 ["Published"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K2 ; [+4]
        9 LOADK                            R2 K2 ["Generation meta must be of type 'Published'"]
       10 GETIMPORT                        R0 K4 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K5 ["bridge"]
       16 GETTABLEKS                       R0 R1 K6 ["selectLinkedAssets"]
       18 DUPTABLE                         R1 K8 [{"requestId"}]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K7 ["requestId"]
       22 SETTABLEKS                       R2 R1 K7 ["requestId"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_32:
        0 GETTABLEKS                       R3 R2 K0 ["mode"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Modes"]
        5 GETTABLEKS                       R4 R5 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R2 K3 ["generationMeta"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K4 ["new"]
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
       59 SETTABLEKS                       R10 R2 K8 ["insertAssets"]
       61 NEWCLOSURE                       R10 P5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R10 R2 K9 ["onChipClicked"]
       66 CLOSEUPVALS                      R5
       67 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Modes"]
        5 GETTABLEKS                       R3 R4 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K3 ["handlerArgs"]
       12 GETTABLEKS                       R2 R3 K4 ["isThirdPartyRequest"]
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K5 ["generationMeta"]
       18 GETTABLEKS                       R5 R0 K6 ["bridge"]
       20 GETTABLEKS                       R4 R5 K7 ["listenToLinkChanges"]
       22 DUPTABLE                         R5 K10 [{"generationName", "requestId"}]
       23 GETTABLEKS                       R6 R1 K11 ["name"]
       25 SETTABLEKS                       R6 R5 K8 ["generationName"]
       27 GETTABLEKS                       R6 R3 K9 ["requestId"]
       29 SETTABLEKS                       R6 R5 K9 ["requestId"]
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R5 R0 K0 ["toolArgs"]
        9 GETTABLEKS                       R4 R5 K1 ["environment"]
       11 GETTABLEKS                       R6 R4 K2 ["EventLogger"]
       13 GETTABLEKS                       R5 R6 K3 ["logMeshGenActivated"]
       15 CALL                             R5 0 0
       16 DUPTABLE                         R5 K6 [{"type", "requestId"}]
       17 LOADK                            R6 K7 ["Initialized"]
       18 SETTABLEKS                       R6 R5 K4 ["type"]
       20 LOADK                            R7 K8 ["MeshGen-%*"]
       21 GETUPVAL                         R9 2
       22 LOADB                            R11 0
       23 NAMECALL                         R9 R9 K9 ["GenerateGUID"]
       25 CALL                             R9 2 1
       26 NAMECALL                         R7 R7 K10 ["format"]
       28 CALL                             R7 2 1
       29 MOVE                             R6 R7
       30 SETTABLEKS                       R6 R5 K5 ["requestId"]
       32 DUPTABLE                         R6 K29 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K30 ["Type"]
       36 SETTABLEKS                       R7 R6 K4 ["type"]
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R8 R9 K31 ["Modes"]
       41 GETTABLEKS                       R7 R8 K32 ["ShowPreview"]
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
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R8 R9 K34 ["PreviewState"]
       65 GETTABLEKS                       R7 R8 K35 ["GeneratingMesh"]
       67 SETTABLEKS                       R7 R6 K17 ["previewState"]
       69 LOADNIL                          R7
       70 SETTABLEKS                       R7 R6 K18 ["failureReason"]
       72 LOADNIL                          R7
       73 SETTABLEKS                       R7 R6 K19 ["generationRetryCount"]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K20 ["publishAttemptCount"]
       78 SETTABLEKS                       R2 R6 K21 ["validatedArgs"]
       80 SETTABLEKS                       R5 R6 K22 ["generationMeta"]
       82 GETUPVAL                         R8 5
       83 GETTABLEKS                       R7 R8 K36 ["createUnimplemented"]
       85 LOADK                            R8 K23 ["retryGeneration"]
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K23 ["retryGeneration"]
       89 GETUPVAL                         R8 5
       90 GETTABLEKS                       R7 R8 K36 ["createUnimplemented"]
       92 LOADK                            R8 K24 ["cancelGeneration"]
       93 CALL                             R7 1 1
       94 SETTABLEKS                       R7 R6 K24 ["cancelGeneration"]
       96 GETUPVAL                         R8 5
       97 GETTABLEKS                       R7 R8 K36 ["createUnimplemented"]
       99 LOADK                            R8 K25 ["publishAssets"]
      100 CALL                             R7 1 1
      101 SETTABLEKS                       R7 R6 K25 ["publishAssets"]
      103 GETUPVAL                         R8 5
      104 GETTABLEKS                       R7 R8 K36 ["createUnimplemented"]
      106 LOADK                            R8 K26 ["insertAssets"]
      107 CALL                             R7 1 1
      108 SETTABLEKS                       R7 R6 K26 ["insertAssets"]
      110 LOADB                            R7 0
      111 SETTABLEKS                       R7 R6 K27 ["shouldShowChip"]
      113 GETUPVAL                         R8 5
      114 GETTABLEKS                       R7 R8 K36 ["createUnimplemented"]
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
      136 JUMPIF                           R7 ; [+10]
      137 GETIMPORT                        R9 K39 [error]
      139 LOADK                            R11 K40 ["Mesh generation failed with error: %*"]
      140 MOVE                             R13 R8
      141 NAMECALL                         R11 R11 K10 ["format"]
      143 CALL                             R11 2 1
      144 MOVE                             R10 R11
      145 LOADN                            R11 0
      146 CALL                             R9 2 0
      147 GETTABLEKS                       R9 R2 K41 ["isManualRun"]
      149 JUMPIFNOT                        R9 ; [+2]
      150 LOADK                            R9 K42 ["Mesh generated successfully"]
      151 RETURN                           R9 1
      152 GETTABLEKS                       R9 R6 K25 ["publishAssets"]
      154 CALL                             R9 0 2
      155 JUMPIF                           R9 ; [+10]
      156 GETIMPORT                        R11 K39 [error]
      158 LOADK                            R13 K43 ["Failed to publish assets with error: %*"]
      159 MOVE                             R15 R10
      160 NAMECALL                         R13 R13 K10 ["format"]
      162 CALL                             R13 2 1
      163 MOVE                             R12 R13
      164 LOADN                            R13 0
      165 CALL                             R11 2 0
      166 GETTABLEKS                       R11 R6 K26 ["insertAssets"]
      168 CALL                             R11 0 2
      169 JUMPIF                           R11 ; [+10]
      170 GETIMPORT                        R13 K39 [error]
      172 LOADK                            R15 K44 ["Failed to insert assets with error: %*"]
      173 MOVE                             R17 R12
      174 NAMECALL                         R15 R15 K10 ["format"]
      176 CALL                             R15 2 1
      177 MOVE                             R14 R15
      178 LOADN                            R15 0
      179 CALL                             R13 2 0
      180 DUPTABLE                         R13 K46 [{"tag"}]
      181 GETUPVAL                         R15 8
      182 GETTABLEKS                       R14 R15 K47 ["getLinkTag"]
      184 GETTABLEKS                       R15 R5 K5 ["requestId"]
      186 CALL                             R14 1 1
      187 SETTABLEKS                       R14 R13 K45 ["tag"]
      189 RETURN                           R13 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["showChip"]
       13 SETTABLEKS                       R1 R0 K5 ["shouldShowChip"]
       15 DUPTABLE                         R1 K7 [{"rawTransformValues"}]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K6 ["rawTransformValues"]
       19 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewState"]
        5 GETTABLEKS                       R4 R0 K1 ["state"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["toString"]
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

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"maxTriangles"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["getOptionalNumber"]
        9 GETTABLEKS                       R4 R1 K1 ["maxTriangles"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K1 ["maxTriangles"]
       14 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 DUPTABLE                         R1 K2 [{"maxTriangles"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["getOptionalNumber"]
        9 GETTABLEKS                       R4 R2 K1 ["maxTriangles"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R1 K1 ["maxTriangles"]
       14 DUPTABLE                         R2 K8 [{"textPrompt", "size", "maxTriangles", "isManualRun", "selectedInstanceRef"}]
       15 SETTABLEKS                       R0 R2 K4 ["textPrompt"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K5 ["size"]
       20 GETTABLEKS                       R3 R1 K1 ["maxTriangles"]
       22 SETTABLEKS                       R3 R2 K1 ["maxTriangles"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["isManualRun"]
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K7 ["selectedInstanceRef"]
       30 DUPTABLE                         R3 K11 [{"name", "arguments"}]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K12 ["MeshGen"]
       34 SETTABLEKS                       R4 R3 K9 ["name"]
       36 SETTABLEKS                       R2 R3 K10 ["arguments"]
       38 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 LOADB                            R3 0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 CALL                             R0 5 1
        7 GETTABLEKS                       R2 R0 K0 ["bridge"]
        9 GETTABLEKS                       R1 R2 K1 ["getSelectedBoundingBox"]
       11 CALL                             R1 0 1
       12 NEWTABLE                         R2 0 2
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["createNumberRowDefinition"]
       17 DUPTABLE                         R4 K7 [{"label", "prop", "initialValue", "options"}]
       18 GETUPVAL                         R5 4
       19 LOADK                            R7 K8 ["MeshGen"]
       20 LOADK                            R8 K9 ["InputTriangleCountTitle"]
       21 NAMECALL                         R5 R5 K10 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K3 ["label"]
       26 LOADK                            R5 K11 ["maxTriangles"]
       27 SETTABLEKS                       R5 R4 K4 ["prop"]
       29 GETUPVAL                         R5 5
       30 CALL                             R5 0 1
       31 SETTABLEKS                       R5 R4 K5 ["initialValue"]
       33 DUPTABLE                         R5 K14 [{"min", "max"}]
       34 GETUPVAL                         R6 6
       35 SETTABLEKS                       R6 R5 K12 ["min"]
       37 GETUPVAL                         R6 7
       38 SETTABLEKS                       R6 R5 K13 ["max"]
       40 SETTABLEKS                       R5 R4 K6 ["options"]
       42 CALL                             R3 1 1
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R4 R5 K15 ["createInstanceRowDefinition"]
       46 DUPTABLE                         R5 K7 [{"label", "prop", "initialValue", "options"}]
       47 GETUPVAL                         R6 4
       48 LOADK                            R8 K8 ["MeshGen"]
       49 LOADK                            R9 K16 ["InputBoundingBox"]
       50 NAMECALL                         R6 R6 K10 ["getText"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K3 ["label"]
       55 LOADK                            R6 K17 ["selectedInstanceRef"]
       56 SETTABLEKS                       R6 R5 K4 ["prop"]
       58 SETTABLEKS                       R1 R5 K5 ["initialValue"]
       60 DUPTABLE                         R6 K19 [{"isA"}]
       61 NEWTABLE                         R7 0 1
       63 GETUPVAL                         R9 8
       64 GETTABLEKS                       R8 R9 K20 ["BOUNDING_BOX_INSTANCE_TYPE"]
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K18 ["isA"]
       70 SETTABLEKS                       R6 R5 K6 ["options"]
       72 CALL                             R4 1 -1
       73 SETLIST                          R2 R3 -1 [1]
       75 DUPTABLE                         R3 K24 [{"description", "confirmButtonText", "propertyRows"}]
       76 GETUPVAL                         R4 4
       77 LOADK                            R6 K8 ["MeshGen"]
       78 LOADK                            R7 K25 ["InputDisclaimer"]
       79 NAMECALL                         R4 R4 K10 ["getText"]
       81 CALL                             R4 3 1
       82 SETTABLEKS                       R4 R3 K21 ["description"]
       84 GETUPVAL                         R4 4
       85 LOADK                            R6 K8 ["MeshGen"]
       86 LOADK                            R7 K26 ["InputGenerateMesh"]
       87 NAMECALL                         R4 R4 K10 ["getText"]
       89 CALL                             R4 3 1
       90 SETTABLEKS                       R4 R3 K22 ["confirmButtonText"]
       92 SETTABLEKS                       R2 R3 K23 ["propertyRows"]
       94 RETURN                           R3 1

PROTO_47:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_48:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_50:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+13]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K0 ["registerHydrator"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["Type"]
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
       29 GETUPVAL                         R6 9
       30 GETTABLEKS                       R5 R6 K2 ["define"]
       32 CALL                             R5 0 1
       33 GETUPVAL                         R8 10
       34 GETTABLEKS                       R7 R8 K3 ["MeshGen"]
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
      121 MOVE                             R7 R4
      122 NAMECALL                         R5 R5 K32 ["setHandler"]
      124 CALL                             R5 2 1
      125 NAMECALL                         R5 R5 K33 ["build"]
      127 CALL                             R5 1 1
      128 DUPCLOSURE                       R6 K34 [PROTO_43]
      129 CAPTURE                          UPVAL U13
      130 DUPTABLE                         R7 K39 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      131 GETUPVAL                         R9 14
      132 CALL                             R9 0 1
      133 JUMPIFNOT                        R9 ; [+2]
      134 LOADK                            R8 K40 ["generate_mesh"]
      135 JUMP                             ; [+1]
      136 LOADK                            R8 K41 ["generate"]
      137 SETTABLEKS                       R8 R7 K35 ["command"]
      139 DUPCLOSURE                       R8 K42 [PROTO_44]
      140 CAPTURE                          UPVAL U15
      141 SETTABLEKS                       R8 R7 K36 ["getDescription"]
      143 DUPCLOSURE                       R8 K43 [PROTO_45]
      144 CAPTURE                          UPVAL U13
      145 CAPTURE                          UPVAL U10
      146 SETTABLEKS                       R8 R7 K37 ["mapToToolCall"]
      148 NEWCLOSURE                       R8 P7
      149 CAPTURE                          UPVAL U0
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R1
      152 CAPTURE                          UPVAL U16
      153 CAPTURE                          UPVAL U15
      154 CAPTURE                          UPVAL U17
      155 CAPTURE                          UPVAL U11
      156 CAPTURE                          UPVAL U12
      157 CAPTURE                          UPVAL U18
      158 SETTABLEKS                       R8 R7 K38 ["getInputRequestArguments"]
      160 DUPTABLE                         R8 K45 [{"transformInitialContent"}]
      161 DUPCLOSURE                       R9 K46 [PROTO_47]
      162 CAPTURE                          UPVAL U3
      163 SETTABLEKS                       R9 R8 K44 ["transformInitialContent"]
      165 DUPTABLE                         R9 K54 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      166 SETTABLEKS                       R5 R9 K47 ["definition"]
      168 NEWTABLE                         R10 0 1
      170 MOVE                             R11 R7
      171 SETLIST                          R10 R11 1 [1]
      173 SETTABLEKS                       R10 R9 K48 ["slashCommands"]
      175 NEWTABLE                         R10 0 1
      177 GETUPVAL                         R11 3
      178 SETLIST                          R10 R11 1 [1]
      180 SETTABLEKS                       R10 R9 K49 ["contentWidgets"]
      182 SETTABLEKS                       R8 R9 K50 ["streamTransform"]
      184 DUPCLOSURE                       R10 K55 [PROTO_48]
      185 SETTABLEKS                       R10 R9 K51 ["getPreExecuteWarning"]
      187 DUPCLOSURE                       R10 K56 [PROTO_49]
      188 CAPTURE                          UPVAL U15
      189 SETTABLEKS                       R10 R9 K52 ["displayNameFunction"]
      191 DUPTABLE                         R10 K58 [{"resetTimeoutOnProgress"}]
      192 LOADB                            R11 1
      193 SETTABLEKS                       R11 R10 K57 ["resetTimeoutOnProgress"]
      195 SETTABLEKS                       R10 R9 K53 ["toolCallOptions"]
      197 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Components"]
       31 GETTABLEKS                       R5 R6 K14 ["PropertyRows"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R8 R0 K15 ["Util"]
       38 GETTABLEKS                       R7 R8 K16 ["Serializer"]
       40 GETTABLEKS                       R6 R7 K17 ["SerializerRegistry"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Parent"]
       47 GETTABLEKS                       R7 R8 K18 ["Signal"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K15 ["Util"]
       54 GETTABLEKS                       R8 R9 K19 ["SlashCommandArgs"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K20 ["Tools"]
       61 GETTABLEKS                       R9 R10 K21 ["ToolTypes"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R11 R0 K15 ["Util"]
       68 GETTABLEKS                       R10 R11 K22 ["ToolUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R13 R0 K23 ["Resources"]
       75 GETTABLEKS                       R12 R13 K24 ["Localization"]
       77 GETTABLEKS                       R11 R12 K25 ["Translator"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K26 ["Types"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R14 R0 K27 ["Flags"]
       89 GETTABLEKS                       R13 R14 K28 ["FFlagRenameGenerateCommands"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [script]
       94 LOADK                            R15 K29 ["MeshGen"]
       95 NAMECALL                         R13 R13 K3 ["FindFirstAncestor"]
       97 CALL                             R13 2 1
       98 GETIMPORT                        R14 K9 [require]
      100 GETTABLEKS                       R16 R13 K30 ["MeshGenTool"]
      102 GETTABLEKS                       R15 R16 K31 ["MeshGenBridge"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K9 [require]
      107 GETTABLEKS                       R17 R13 K30 ["MeshGenTool"]
      109 GETTABLEKS                       R16 R17 K32 ["MeshGenBridgeTypes"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K9 [require]
      114 GETTABLEKS                       R17 R13 K33 ["MeshGenConstants"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K9 [require]
      119 GETTABLEKS                       R18 R13 K34 ["MeshGenContentWidget"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K9 [require]
      124 GETTABLEKS                       R19 R13 K35 ["MeshGenTypes"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K9 [require]
      129 GETTABLEKS                       R21 R0 K27 ["Flags"]
      131 GETTABLEKS                       R20 R21 K36 ["FFlagAssistantMultipleChatPersistence"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K9 [require]
      136 GETTABLEKS                       R22 R0 K27 ["Flags"]
      138 GETTABLEKS                       R21 R22 K37 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      140 CALL                             R20 1 1
      141 GETTABLEKS                       R22 R3 K15 ["Util"]
      143 GETTABLEKS                       R21 R22 K38 ["ToolBuilder"]
      145 GETTABLEKS                       R23 R3 K15 ["Util"]
      147 GETTABLEKS                       R22 R23 K39 ["ToolResult"]
      149 GETTABLEKS                       R23 R8 K40 ["ToolNames"]
      151 GETTABLEKS                       R24 R16 K41 ["Enums"]
      153 GETTABLEKS                       R25 R16 K42 ["MAX_TRIANGLES_LOWER_BOUND"]
      155 GETTABLEKS                       R26 R16 K43 ["MAX_TRIANGLES_UPPER_BOUND"]
      157 GETTABLEKS                       R27 R16 K44 ["PREVIEW_IMAGE_COUNT"]
      159 DUPCLOSURE                       R28 K45 [PROTO_0]
      160 CAPTURE                          VAL R14
      161 DUPCLOSURE                       R29 K46 [PROTO_1]
      162 CAPTURE                          VAL R1
      163 DUPCLOSURE                       R30 K47 [PROTO_3]
      164 CAPTURE                          VAL R25
      165 CAPTURE                          VAL R26
      166 DUPCLOSURE                       R31 K48 [PROTO_4]
      167 CAPTURE                          VAL R2
      168 DUPCLOSURE                       R32 K49 [PROTO_5]
      169 CAPTURE                          VAL R2
      170 DUPCLOSURE                       R33 K50 [PROTO_15]
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R27
      175 DUPCLOSURE                       R34 K51 [PROTO_18]
      176 CAPTURE                          VAL R33
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R2
      179 DUPCLOSURE                       R35 K52 [PROTO_21]
      180 CAPTURE                          VAL R33
      181 CAPTURE                          VAL R24
      182 CAPTURE                          VAL R2
      183 DUPCLOSURE                       R36 K53 [PROTO_23]
      184 CAPTURE                          VAL R33
      185 CAPTURE                          VAL R24
      186 DUPCLOSURE                       R37 K54 [PROTO_32]
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R33
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R34
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R35
      193 CAPTURE                          VAL R36
      194 DUPCLOSURE                       R38 K55 [PROTO_33]
      195 CAPTURE                          VAL R17
      196 DUPCLOSURE                       R39 K56 [PROTO_34]
      197 CAPTURE                          VAL R30
      198 CAPTURE                          VAL R33
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R24
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R37
      204 CAPTURE                          VAL R38
      205 CAPTURE                          VAL R18
      206 DUPCLOSURE                       R40 K57 [PROTO_36]
      207 CAPTURE                          VAL R33
      208 DUPCLOSURE                       R41 K58 [PROTO_37]
      209 CAPTURE                          VAL R33
      210 DUPCLOSURE                       R42 K59 [PROTO_38]
      211 CAPTURE                          VAL R33
      212 DUPTABLE                         R43 K63 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage"}]
      213 SETTABLEKS                       R40 R43 K60 ["updateContentHeader"]
      215 SETTABLEKS                       R41 R43 K61 ["setPreviewStateAsync"]
      217 SETTABLEKS                       R42 R43 K62 ["setPreviewImage"]
      219 DUPCLOSURE                       R44 K64 [PROTO_50]
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R37
      225 CAPTURE                          VAL R38
      226 CAPTURE                          VAL R39
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R26
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R10
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R16
      239 DUPTABLE                         R45 K67 [{"bridge", "setupGuest"}]
      240 SETTABLEKS                       R43 R45 K65 ["bridge"]
      242 SETTABLEKS                       R44 R45 K66 ["setupGuest"]
      244 RETURN                           R45 1
