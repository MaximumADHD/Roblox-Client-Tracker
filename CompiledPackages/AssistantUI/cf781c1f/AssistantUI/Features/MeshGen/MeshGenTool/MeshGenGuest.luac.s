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
       17 LOADB                            R3 0
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K1 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K7 ["string"] ; [+7]
       25 LENGTH                           R4 R1
       26 LOADN                            R5 0
       27 JUMPIFLT                         R5 R4 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       33 LOADK                            R4 K8 ["textPrompt must be a non-empty string"]
       34 GETIMPORT                        R2 K5 [assert]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K9 ["size"]
       39 LOADNIL                          R3
       40 JUMPIFEQKNIL                     R2 ; [+116]
       42 FASTCALL1                        TYPEOF R2 ; [+3]
       43 MOVE                             R7 R2
       44 GETIMPORT                        R6 K1 [typeof]
       46 CALL                             R6 1 1
       47 JUMPIFEQKS                       R6 K2 ["table"] ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       53 LOADK                            R6 K10 ["size must be a table"]
       54 GETIMPORT                        R4 K5 [assert]
       56 CALL                             R4 2 0
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          VAL R2
       59 GETTABLEKS                       R5 R2 K11 ["x"]
       61 JUMPIFNOTEQKNIL                  R5 ; [+6]
       63 GETIMPORT                        R6 K13 [error]
       65 LOADK                            R7 K14 ["size.x must be defined"]
       66 LOADN                            R8 0
       67 CALL                             R6 2 0
       68 FASTCALL1                        TONUMBER R5 ; [+3]
       69 MOVE                             R7 R5
       70 GETIMPORT                        R6 K16 [tonumber]
       72 CALL                             R6 1 1
       73 JUMPIFNOTEQKNIL                  R6 ; [+6]
       75 GETIMPORT                        R7 K13 [error]
       77 LOADK                            R8 K17 ["size.x must be a number"]
       78 LOADN                            R9 0
       79 CALL                             R7 2 0
       80 LOADN                            R7 0
       81 JUMPIFNOTLE                      R6 R7 ; [+6]
       83 GETIMPORT                        R7 K13 [error]
       85 LOADK                            R8 K18 ["size.x must be a positive number"]
       86 LOADN                            R9 0
       87 CALL                             R7 2 0
       88 GETTABLEKS                       R5 R2 K19 ["y"]
       90 JUMPIFNOTEQKNIL                  R5 ; [+6]
       92 GETIMPORT                        R6 K13 [error]
       94 LOADK                            R7 K20 ["size.y must be defined"]
       95 LOADN                            R8 0
       96 CALL                             R6 2 0
       97 FASTCALL1                        TONUMBER R5 ; [+3]
       98 MOVE                             R7 R5
       99 GETIMPORT                        R6 K16 [tonumber]
      101 CALL                             R6 1 1
      102 JUMPIFNOTEQKNIL                  R6 ; [+6]
      104 GETIMPORT                        R7 K13 [error]
      106 LOADK                            R8 K21 ["size.y must be a number"]
      107 LOADN                            R9 0
      108 CALL                             R7 2 0
      109 LOADN                            R7 0
      110 JUMPIFNOTLE                      R6 R7 ; [+6]
      112 GETIMPORT                        R7 K13 [error]
      114 LOADK                            R8 K22 ["size.y must be a positive number"]
      115 LOADN                            R9 0
      116 CALL                             R7 2 0
      117 GETTABLEKS                       R5 R2 K23 ["z"]
      119 JUMPIFNOTEQKNIL                  R5 ; [+6]
      121 GETIMPORT                        R6 K13 [error]
      123 LOADK                            R7 K24 ["size.z must be defined"]
      124 LOADN                            R8 0
      125 CALL                             R6 2 0
      126 FASTCALL1                        TONUMBER R5 ; [+3]
      127 MOVE                             R7 R5
      128 GETIMPORT                        R6 K16 [tonumber]
      130 CALL                             R6 1 1
      131 JUMPIFNOTEQKNIL                  R6 ; [+6]
      133 GETIMPORT                        R7 K13 [error]
      135 LOADK                            R8 K25 ["size.z must be a number"]
      136 LOADN                            R9 0
      137 CALL                             R7 2 0
      138 LOADN                            R7 0
      139 JUMPIFNOTLE                      R6 R7 ; [+6]
      141 GETIMPORT                        R7 K13 [error]
      143 LOADK                            R8 K26 ["size.z must be a positive number"]
      144 LOADN                            R9 0
      145 CALL                             R7 2 0
      146 GETTABLEKS                       R6 R2 K11 ["x"]
      148 GETTABLEKS                       R7 R2 K19 ["y"]
      150 GETTABLEKS                       R8 R2 K23 ["z"]
      152 FASTCALL                         VECTOR ; [+2]
      153 GETIMPORT                        R5 K29 [Vector3.new]
      155 CALL                             R5 3 1
      156 MOVE                             R3 R5
      157 GETTABLEKS                       R4 R0 K30 ["maxTriangles"]
      159 JUMPIFEQKNIL                     R4 ; [+33]
      161 FASTCALL1                        TYPEOF R4 ; [+3]
      162 MOVE                             R8 R4
      163 GETIMPORT                        R7 K1 [typeof]
      165 CALL                             R7 1 1
      166 JUMPIFEQKS                       R7 K31 ["number"] ; [+2]
      168 LOADB                            R6 0 +1
      169 LOADB                            R6 1
      170 FASTCALL2K                       ASSERT R6 K32 ; [+4]
      172 LOADK                            R7 K32 ["maxTriangles must be a number"]
      173 GETIMPORT                        R5 K5 [assert]
      175 CALL                             R5 2 0
      176 GETUPVAL                         R5 0
      177 JUMPIFLT                         R4 R5 ; [+4]
      179 GETUPVAL                         R5 1
      180 JUMPIFNOTLT                      R5 R4 ; [+12]
      182 GETIMPORT                        R5 K13 [error]
      184 LOADK                            R7 K33 ["maxTriangles must be between %* and %* (inclusive)"]
      185 GETUPVAL                         R9 0
      186 GETUPVAL                         R10 1
      187 NAMECALL                         R7 R7 K34 ["format"]
      189 CALL                             R7 3 1
      190 MOVE                             R6 R7
      191 LOADN                            R7 0
      192 CALL                             R5 2 0
      193 GETTABLEKS                       R5 R0 K35 ["isManualRun"]
      195 JUMPIFEQKNIL                     R5 ; [+16]
      197 FASTCALL1                        TYPEOF R5 ; [+3]
      198 MOVE                             R9 R5
      199 GETIMPORT                        R8 K1 [typeof]
      201 CALL                             R8 1 1
      202 JUMPIFEQKS                       R8 K36 ["boolean"] ; [+2]
      204 LOADB                            R7 0 +1
      205 LOADB                            R7 1
      206 FASTCALL2K                       ASSERT R7 K37 ; [+4]
      208 LOADK                            R8 K37 ["isManualRun must be a boolean"]
      209 GETIMPORT                        R6 K5 [assert]
      211 CALL                             R6 2 0
      212 GETTABLEKS                       R6 R0 K38 ["selectedInstanceRef"]
      214 LOADNIL                          R7
      215 JUMPIFEQKNIL                     R6 ; [+34]
      217 FASTCALL1                        TYPEOF R6 ; [+3]
      218 MOVE                             R11 R6
      219 GETIMPORT                        R10 K1 [typeof]
      221 CALL                             R10 1 1
      222 JUMPIFEQKS                       R10 K2 ["table"] ; [+2]
      224 LOADB                            R9 0 +1
      225 LOADB                            R9 1
      226 FASTCALL2K                       ASSERT R9 K39 ; [+4]
      228 LOADK                            R10 K39 ["selectedInstanceRef must be a table"]
      229 GETIMPORT                        R8 K5 [assert]
      231 CALL                             R8 2 0
      232 GETTABLEKS                       R11 R6 K40 ["uniqueId"]
      234 FASTCALL1                        TYPEOF R11 ; [+2]
      235 GETIMPORT                        R10 K1 [typeof]
      237 CALL                             R10 1 1
      238 JUMPIFEQKS                       R10 K7 ["string"] ; [+2]
      240 LOADB                            R9 0 +1
      241 LOADB                            R9 1
      242 FASTCALL2K                       ASSERT R9 K41 ; [+4]
      244 LOADK                            R10 K41 ["selectedInstanceRef.uniqueId must be a string"]
      245 GETIMPORT                        R8 K5 [assert]
      247 CALL                             R8 2 0
      248 GETTABLEKS                       R7 R6 K40 ["uniqueId"]
      250 DUPTABLE                         R8 K43 [{"textPrompt", "size", "maxTriangles", "isManualRun", "selectedUniqueId"}]
      251 SETTABLEKS                       R1 R8 K6 ["textPrompt"]
      253 SETTABLEKS                       R3 R8 K9 ["size"]
      255 SETTABLEKS                       R4 R8 K30 ["maxTriangles"]
      257 SETTABLEKS                       R5 R8 K35 ["isManualRun"]
      259 SETTABLEKS                       R7 R8 K42 ["selectedUniqueId"]
      261 RETURN                           R8 1

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
        5 DUPTABLE                         R1 K7 [{"requestId", "textPrompt", "size", "maxTriangles", "selectedUniqueId"}]
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
       25 GETTABLEKS                       R2 R2 K6 ["selectedUniqueId"]
       27 SETTABLEKS                       R2 R1 K6 ["selectedUniqueId"]
       29 CALL                             R0 1 1
       30 RETURN                           R0 1

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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R5 K7 ["GeneratingMesh"]
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
       42 GETTABLEKS                       R9 R0 K13 ["toolArgs"]
       44 GETTABLEKS                       R9 R9 K14 ["environment"]
       46 GETTABLEKS                       R10 R9 K15 ["EventLogger"]
       48 GETTABLEKS                       R10 R10 K16 ["logMeshGenCompleted"]
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
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K29 ["FailureReason"]
       79 GETTABLEKS                       R11 R11 K30 ["GenerationModerated"]
       81 CALL                             R10 1 0
       82 JUMP                             ; [+8]
       83 GETTABLEKS                       R10 R3 K28 ["setFailureReason"]
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K29 ["FailureReason"]
       88 GETTABLEKS                       R11 R11 K31 ["GenerationFailed"]
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
      123 GETUPVAL                         R12 2
      124 GETTABLEKS                       R12 R12 K39 ["assign"]
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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K6 ["PreviewState"]
       20 GETTABLEKS                       R5 R5 K7 ["Publishing"]
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
       34 GETTABLEKS                       R7 R0 K11 ["toolArgs"]
       36 GETTABLEKS                       R7 R7 K12 ["environment"]
       38 JUMPIF                           R4 ; [+59]
       39 GETTABLEKS                       R8 R7 K13 ["EventLogger"]
       41 GETTABLEKS                       R8 R8 K14 ["logMeshGenPublishedAssets"]
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
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K26 ["FailureReason"]
       74 GETTABLEKS                       R10 R10 K27 ["AssetPermissionCreationFailed"]
       76 CALL                             R9 1 0
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R9 R3 K25 ["setFailureReason"]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K26 ["FailureReason"]
       83 GETTABLEKS                       R10 R10 K28 ["PublishFailed"]
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
      115 GETTABLEKS                       R15 R7 K13 ["EventLogger"]
      117 GETTABLEKS                       R15 R15 K14 ["logMeshGenPublishedAssets"]
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
      173 GETUPVAL                         R10 2
      174 GETTABLEKS                       R10 R10 K41 ["assign"]
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
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["PreviewState"]
       20 GETTABLEKS                       R4 R4 K7 ["Inserting"]
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
       33 GETTABLEKS                       R6 R0 K11 ["toolArgs"]
       35 GETTABLEKS                       R6 R6 K12 ["environment"]
       37 GETTABLEKS                       R7 R6 K13 ["EventLogger"]
       39 GETTABLEKS                       R7 R7 K14 ["logMeshGenMeshInserted"]
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
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K21 ["FailureReason"]
       61 GETTABLEKS                       R8 R8 K22 ["InsertFailed"]
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
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R8 R8 K6 ["PreviewState"]
       81 GETTABLEKS                       R8 R8 K1 ["Published"]
       83 CALL                             R7 1 0
       84 LOADB                            R7 1
       85 RETURN                           R7 1

PROTO_24:
        0 JUMPIF                           R0 ; [+24]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["bridge"]
        4 GETTABLEKS                       R2 R2 K1 ["removeSelectedBoundsAsync"]
        6 DUPTABLE                         R3 K3 [{"requestId"}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["requestId"]
       10 SETTABLEKS                       R4 R3 K2 ["requestId"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["bridge"]
       16 GETTABLEKS                       R2 R2 K4 ["cancelGenerationAsync"]
       18 DUPTABLE                         R3 K3 [{"requestId"}]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K2 ["requestId"]
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
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K9 ["setFailureReason"]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K10 ["FailureReason"]
       31 GETTABLEKS                       R1 R1 K11 ["GenerationCanceled"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["type"]
        3 JUMPIFEQKS                       R2 K1 ["Published"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K2 ; [+4]
        9 LOADK                            R2 K2 ["Generation meta must be of type 'Published'"]
       10 GETIMPORT                        R0 K4 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K5 ["bridge"]
       16 GETTABLEKS                       R0 R0 K6 ["selectLinkedAssets"]
       18 DUPTABLE                         R1 K8 [{"requestId"}]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["requestId"]
       22 SETTABLEKS                       R2 R1 K7 ["requestId"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_32:
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
       59 SETTABLEKS                       R10 R2 K8 ["insertAssets"]
       61 NEWCLOSURE                       R10 P5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R10 R2 K9 ["onChipClicked"]
       66 CLOSEUPVALS                      R5
       67 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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
       16 LOADK                            R6 K7 ["Initialized"]
       17 SETTABLEKS                       R6 R5 K4 ["type"]
       19 LOADK                            R7 K8 ["MeshGen-%*"]
       20 GETUPVAL                         R9 2
       21 LOADB                            R11 0
       22 NAMECALL                         R9 R9 K9 ["GenerateGUID"]
       24 CALL                             R9 2 1
       25 NAMECALL                         R7 R7 K10 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 SETTABLEKS                       R6 R5 K5 ["requestId"]
       31 DUPTABLE                         R6 K29 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K30 ["Type"]
       35 SETTABLEKS                       R7 R6 K4 ["type"]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K31 ["Modes"]
       40 GETTABLEKS                       R7 R7 K32 ["ShowPreview"]
       42 SETTABLEKS                       R7 R6 K11 ["mode"]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K12 ["expanded"]
       47 GETTABLEKS                       R7 R2 K33 ["textPrompt"]
       49 SETTABLEKS                       R7 R6 K13 ["name"]
       51 GETTABLEKS                       R7 R2 K33 ["textPrompt"]
       53 SETTABLEKS                       R7 R6 K14 ["displayName"]
       55 LOADNIL                          R7
       56 SETTABLEKS                       R7 R6 K15 ["className"]
       58 LOADNIL                          R7
       59 SETTABLEKS                       R7 R6 K16 ["previewImages"]
       61 GETUPVAL                         R7 4
       62 GETTABLEKS                       R7 R7 K34 ["PreviewState"]
       64 GETTABLEKS                       R7 R7 K35 ["GeneratingMesh"]
       66 SETTABLEKS                       R7 R6 K17 ["previewState"]
       68 LOADNIL                          R7
       69 SETTABLEKS                       R7 R6 K18 ["failureReason"]
       71 LOADNIL                          R7
       72 SETTABLEKS                       R7 R6 K19 ["generationRetryCount"]
       74 LOADNIL                          R7
       75 SETTABLEKS                       R7 R6 K20 ["publishAttemptCount"]
       77 SETTABLEKS                       R2 R6 K21 ["validatedArgs"]
       79 SETTABLEKS                       R5 R6 K22 ["generationMeta"]
       81 GETUPVAL                         R7 5
       82 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
       84 LOADK                            R8 K23 ["retryGeneration"]
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R6 K23 ["retryGeneration"]
       88 GETUPVAL                         R7 5
       89 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
       91 LOADK                            R8 K24 ["cancelGeneration"]
       92 CALL                             R7 1 1
       93 SETTABLEKS                       R7 R6 K24 ["cancelGeneration"]
       95 GETUPVAL                         R7 5
       96 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
       98 LOADK                            R8 K25 ["publishAssets"]
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R6 K25 ["publishAssets"]
      102 GETUPVAL                         R7 5
      103 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
      105 LOADK                            R8 K26 ["insertAssets"]
      106 CALL                             R7 1 1
      107 SETTABLEKS                       R7 R6 K26 ["insertAssets"]
      109 LOADB                            R7 0
      110 SETTABLEKS                       R7 R6 K27 ["shouldShowChip"]
      112 GETUPVAL                         R7 5
      113 GETTABLEKS                       R7 R7 K36 ["createUnimplemented"]
      115 LOADK                            R8 K28 ["onChipClicked"]
      116 CALL                             R7 1 1
      117 SETTABLEKS                       R7 R6 K28 ["onChipClicked"]
      119 GETUPVAL                         R7 6
      120 MOVE                             R8 R0
      121 MOVE                             R9 R2
      122 MOVE                             R10 R6
      123 CALL                             R7 3 0
      124 GETTABLEKS                       R7 R3 K37 ["replaceContent"]
      126 MOVE                             R8 R6
      127 CALL                             R7 1 0
      128 GETUPVAL                         R7 7
      129 MOVE                             R8 R0
      130 MOVE                             R9 R6
      131 CALL                             R7 2 0
      132 GETTABLEKS                       R7 R6 K23 ["retryGeneration"]
      134 CALL                             R7 0 2
      135 JUMPIF                           R7 ; [+10]
      136 GETIMPORT                        R9 K39 [error]
      138 LOADK                            R11 K40 ["Mesh generation failed with error: %*"]
      139 MOVE                             R13 R8
      140 NAMECALL                         R11 R11 K10 ["format"]
      142 CALL                             R11 2 1
      143 MOVE                             R10 R11
      144 LOADN                            R11 0
      145 CALL                             R9 2 0
      146 GETTABLEKS                       R9 R2 K41 ["isManualRun"]
      148 JUMPIFNOT                        R9 ; [+2]
      149 LOADK                            R9 K42 ["Mesh generated successfully"]
      150 RETURN                           R9 1
      151 GETTABLEKS                       R9 R6 K25 ["publishAssets"]
      153 CALL                             R9 0 2
      154 JUMPIF                           R9 ; [+10]
      155 GETIMPORT                        R11 K39 [error]
      157 LOADK                            R13 K43 ["Failed to publish assets with error: %*"]
      158 MOVE                             R15 R10
      159 NAMECALL                         R13 R13 K10 ["format"]
      161 CALL                             R13 2 1
      162 MOVE                             R12 R13
      163 LOADN                            R13 0
      164 CALL                             R11 2 0
      165 GETTABLEKS                       R11 R6 K26 ["insertAssets"]
      167 CALL                             R11 0 2
      168 JUMPIF                           R11 ; [+10]
      169 GETIMPORT                        R13 K39 [error]
      171 LOADK                            R15 K44 ["Failed to insert assets with error: %*"]
      172 MOVE                             R17 R12
      173 NAMECALL                         R15 R15 K10 ["format"]
      175 CALL                             R15 2 1
      176 MOVE                             R14 R15
      177 LOADN                            R15 0
      178 CALL                             R13 2 0
      179 DUPTABLE                         R13 K46 [{"tag"}]
      180 GETUPVAL                         R14 8
      181 GETTABLEKS                       R14 R14 K47 ["getLinkTag"]
      183 GETTABLEKS                       R15 R5 K5 ["requestId"]
      185 CALL                             R14 1 1
      186 SETTABLEKS                       R14 R13 K45 ["tag"]
      188 RETURN                           R13 1

PROTO_35:
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

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 DUPTABLE                         R1 K2 [{"maxTriangles"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["getOptionalNumber"]
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
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K12 ["MeshGen"]
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
        7 GETTABLEKS                       R1 R0 K0 ["bridge"]
        9 GETTABLEKS                       R1 R1 K1 ["getSelectedBoundingBox"]
       11 CALL                             R1 0 1
       12 NEWTABLE                         R2 0 2
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["createNumberRowDefinition"]
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
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K15 ["createInstanceRowDefinition"]
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
       63 GETUPVAL                         R8 8
       64 GETTABLEKS                       R8 R8 K20 ["BOUNDING_BOX_INSTANCE_TYPE"]
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
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
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
      121 DUPTABLE                         R7 K37 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      122 LOADK                            R8 K38 ["Mesh Generation"]
      123 SETTABLEKS                       R8 R7 K32 ["title"]
      125 LOADB                            R8 0
      126 SETTABLEKS                       R8 R7 K33 ["readOnlyHint"]
      128 LOADB                            R8 0
      129 SETTABLEKS                       R8 R7 K34 ["destructiveHint"]
      131 LOADB                            R8 0
      132 SETTABLEKS                       R8 R7 K35 ["idempotentHint"]
      134 LOADB                            R8 0
      135 SETTABLEKS                       R8 R7 K36 ["openWorldHint"]
      137 NAMECALL                         R5 R5 K39 ["setAnnotations"]
      139 CALL                             R5 2 1
      140 MOVE                             R7 R4
      141 NAMECALL                         R5 R5 K40 ["setHandler"]
      143 CALL                             R5 2 1
      144 NAMECALL                         R5 R5 K41 ["build"]
      146 CALL                             R5 1 1
      147 DUPCLOSURE                       R6 K42 [PROTO_43]
      148 CAPTURE                          UPVAL U13
      149 DUPTABLE                         R7 K47 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      150 LOADK                            R8 K48 ["generate_mesh"]
      151 SETTABLEKS                       R8 R7 K43 ["command"]
      153 DUPCLOSURE                       R8 K49 [PROTO_44]
      154 CAPTURE                          UPVAL U14
      155 SETTABLEKS                       R8 R7 K44 ["getDescription"]
      157 DUPCLOSURE                       R8 K50 [PROTO_45]
      158 CAPTURE                          UPVAL U13
      159 CAPTURE                          UPVAL U10
      160 SETTABLEKS                       R8 R7 K45 ["mapToToolCall"]
      162 NEWCLOSURE                       R8 P7
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R1
      166 CAPTURE                          UPVAL U15
      167 CAPTURE                          UPVAL U14
      168 CAPTURE                          UPVAL U16
      169 CAPTURE                          UPVAL U11
      170 CAPTURE                          UPVAL U12
      171 CAPTURE                          UPVAL U17
      172 SETTABLEKS                       R8 R7 K46 ["getInputRequestArguments"]
      174 DUPTABLE                         R8 K52 [{"transformInitialContent"}]
      175 DUPCLOSURE                       R9 K53 [PROTO_47]
      176 CAPTURE                          UPVAL U3
      177 SETTABLEKS                       R9 R8 K51 ["transformInitialContent"]
      179 DUPTABLE                         R9 K61 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      180 SETTABLEKS                       R5 R9 K54 ["definition"]
      182 NEWTABLE                         R10 0 1
      184 MOVE                             R11 R7
      185 SETLIST                          R10 R11 1 [1]
      187 SETTABLEKS                       R10 R9 K55 ["slashCommands"]
      189 NEWTABLE                         R10 0 1
      191 GETUPVAL                         R11 3
      192 SETLIST                          R10 R11 1 [1]
      194 SETTABLEKS                       R10 R9 K56 ["contentWidgets"]
      196 SETTABLEKS                       R8 R9 K57 ["streamTransform"]
      198 DUPCLOSURE                       R10 K62 [PROTO_48]
      199 SETTABLEKS                       R10 R9 K58 ["getPreExecuteWarning"]
      201 DUPCLOSURE                       R10 K63 [PROTO_49]
      202 CAPTURE                          UPVAL U14
      203 SETTABLEKS                       R10 R9 K59 ["displayNameFunction"]
      205 DUPTABLE                         R10 K65 [{"resetTimeoutOnProgress"}]
      206 LOADB                            R11 1
      207 SETTABLEKS                       R11 R10 K64 ["resetTimeoutOnProgress"]
      209 SETTABLEKS                       R10 R9 K60 ["toolCallOptions"]
      211 RETURN                           R9 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Components"]
       31 GETTABLEKS                       R5 R5 K14 ["PropertyRows"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["Serializer"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Parent"]
       45 GETTABLEKS                       R7 R7 K17 ["Signal"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K15 ["Util"]
       52 GETTABLEKS                       R8 R8 K18 ["SlashCommandArgs"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K19 ["Tools"]
       59 GETTABLEKS                       R9 R9 K20 ["ToolTypes"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K15 ["Util"]
       66 GETTABLEKS                       R10 R10 K21 ["ToolUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K22 ["Resources"]
       73 GETTABLEKS                       R11 R11 K23 ["Localization"]
       75 GETTABLEKS                       R11 R11 K24 ["Translator"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K25 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K1 [script]
       85 LOADK                            R14 K26 ["MeshGen"]
       86 NAMECALL                         R12 R12 K3 ["FindFirstAncestor"]
       88 CALL                             R12 2 1
       89 GETIMPORT                        R13 K9 [require]
       91 GETTABLEKS                       R14 R12 K27 ["MeshGenTool"]
       93 GETTABLEKS                       R14 R14 K28 ["MeshGenBridge"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K9 [require]
       98 GETTABLEKS                       R15 R12 K27 ["MeshGenTool"]
      100 GETTABLEKS                       R15 R15 K29 ["MeshGenBridgeTypes"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K9 [require]
      105 GETTABLEKS                       R16 R12 K30 ["MeshGenConstants"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K9 [require]
      110 GETTABLEKS                       R17 R12 K31 ["MeshGenContentWidget"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K9 [require]
      115 GETTABLEKS                       R18 R12 K32 ["MeshGenTypes"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K9 [require]
      120 GETTABLEKS                       R19 R0 K33 ["Flags"]
      122 GETTABLEKS                       R19 R19 K34 ["FFlagAssistantMultipleChatPersistence"]
      124 CALL                             R18 1 1
      125 GETIMPORT                        R19 K9 [require]
      127 GETTABLEKS                       R20 R0 K33 ["Flags"]
      129 GETTABLEKS                       R20 R20 K35 ["FIntAssistantMeshGenMaxTrianglesDefault"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R20 R3 K15 ["Util"]
      134 GETTABLEKS                       R20 R20 K36 ["ToolBuilder"]
      136 GETTABLEKS                       R21 R3 K15 ["Util"]
      138 GETTABLEKS                       R21 R21 K37 ["ToolResult"]
      140 GETTABLEKS                       R22 R8 K38 ["ToolNames"]
      142 GETTABLEKS                       R23 R15 K39 ["Enums"]
      144 GETTABLEKS                       R24 R15 K40 ["MAX_TRIANGLES_LOWER_BOUND"]
      146 GETTABLEKS                       R25 R15 K41 ["MAX_TRIANGLES_UPPER_BOUND"]
      148 GETTABLEKS                       R26 R15 K42 ["PREVIEW_IMAGE_COUNT"]
      150 DUPCLOSURE                       R27 K43 [PROTO_0]
      151 CAPTURE                          VAL R13
      152 DUPCLOSURE                       R28 K44 [PROTO_1]
      153 CAPTURE                          VAL R1
      154 DUPCLOSURE                       R29 K45 [PROTO_3]
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R25
      157 DUPCLOSURE                       R30 K46 [PROTO_4]
      158 CAPTURE                          VAL R2
      159 DUPCLOSURE                       R31 K47 [PROTO_5]
      160 CAPTURE                          VAL R2
      161 DUPCLOSURE                       R32 K48 [PROTO_15]
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R26
      166 DUPCLOSURE                       R33 K49 [PROTO_18]
      167 CAPTURE                          VAL R32
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R2
      170 DUPCLOSURE                       R34 K50 [PROTO_21]
      171 CAPTURE                          VAL R32
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R2
      174 DUPCLOSURE                       R35 K51 [PROTO_23]
      175 CAPTURE                          VAL R32
      176 CAPTURE                          VAL R23
      177 DUPCLOSURE                       R36 K52 [PROTO_32]
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R32
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R33
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R34
      184 CAPTURE                          VAL R35
      185 DUPCLOSURE                       R37 K53 [PROTO_33]
      186 CAPTURE                          VAL R16
      187 DUPCLOSURE                       R38 K54 [PROTO_34]
      188 CAPTURE                          VAL R29
      189 CAPTURE                          VAL R32
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R36
      195 CAPTURE                          VAL R37
      196 CAPTURE                          VAL R17
      197 DUPCLOSURE                       R39 K55 [PROTO_36]
      198 CAPTURE                          VAL R32
      199 DUPCLOSURE                       R40 K56 [PROTO_37]
      200 CAPTURE                          VAL R32
      201 DUPCLOSURE                       R41 K57 [PROTO_38]
      202 CAPTURE                          VAL R32
      203 DUPTABLE                         R42 K61 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage"}]
      204 SETTABLEKS                       R39 R42 K58 ["updateContentHeader"]
      206 SETTABLEKS                       R40 R42 K59 ["setPreviewStateAsync"]
      208 SETTABLEKS                       R41 R42 K60 ["setPreviewImage"]
      210 DUPCLOSURE                       R43 K62 [PROTO_50]
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R36
      216 CAPTURE                          VAL R37
      217 CAPTURE                          VAL R38
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R15
      229 DUPTABLE                         R44 K65 [{"bridge", "setupGuest"}]
      230 SETTABLEKS                       R42 R44 K63 ["bridge"]
      232 SETTABLEKS                       R43 R44 K64 ["setupGuest"]
      234 RETURN                           R44 1
