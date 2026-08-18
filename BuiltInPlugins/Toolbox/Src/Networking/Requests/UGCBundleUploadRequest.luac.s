PROTO_0:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R1 R0 K0 ["Body"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["Body"]
        6 GETTABLEKS                       R1 R1 K1 ["errors"]
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 GETTABLEKS                       R2 R0 K0 ["Body"]
       14 GETTABLEKS                       R2 R2 K1 ["errors"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 JUMPIFEQKNIL                     R1 ; [+10]
       21 MOVE                             R7 R1
       22 LOADK                            R8 K2 ["\n"]
       23 GETTABLEKS                       R9 R6 K3 ["code"]
       25 LOADK                            R10 K4 [": "]
       26 GETTABLEKS                       R11 R6 K5 ["message"]
       28 CONCAT                           R1 R7 R11
       29 JUMP                             ; [+6]
       30 GETTABLEKS                       R7 R6 K3 ["code"]
       32 LOADK                            R8 K4 [": "]
       33 GETTABLEKS                       R9 R6 K5 ["message"]
       35 CONCAT                           R1 R7 R9
       36 FORGLOOP                         R2 2 ; [-18]
       38 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       11 GETIMPORT                        R2 K4 [table.concat]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K5 [", "]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K7 [tostring]
       22 CALL                             R2 1 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["(%d+)$"]
        4 CALL                             R2 2 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R1 K5 [tonumber]
        8 CALL                             R1 -1 1
        9 RETURN                           R1 1

PROTO_3:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 LOADB                            R2 1
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NAMECALL                         R7 R6 K0 ["GetDescendants"]
        8 CALL                             R7 1 1
        9 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
       11 MOVE                             R9 R7
       12 MOVE                             R10 R6
       13 GETIMPORT                        R8 K3 [table.insert]
       15 CALL                             R8 2 0
       16 MOVE                             R8 R7
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 LOADK                            R15 K4 ["MeshPart"]
       21 NAMECALL                         R13 R12 K5 ["IsA"]
       23 CALL                             R13 2 1
       24 JUMPIFNOT                        R13 ; [+17]
       25 GETTABLEKS                       R14 R12 K6 ["MeshId"]
       27 GETIMPORT                        R16 K9 [string.match]
       29 MOVE                             R17 R14
       30 LOADK                            R18 K10 ["(%d+)$"]
       31 CALL                             R16 2 -1
       32 FASTCALL                         TONUMBER ; [+2]
       33 GETIMPORT                        R15 K12 [tonumber]
       35 CALL                             R15 -1 1
       36 MOVE                             R13 R15
       37 JUMPIFEQKNIL                     R13 ; [+25]
       39 LOADB                            R14 1
       40 SETTABLE                         R14 R1 R13
       41 JUMP                             ; [+21]
       42 LOADK                            R15 K13 ["WrapTarget"]
       43 NAMECALL                         R13 R12 K5 ["IsA"]
       45 CALL                             R13 2 1
       46 JUMPIFNOT                        R13 ; [+16]
       47 GETTABLEKS                       R14 R12 K14 ["CageMeshId"]
       49 GETIMPORT                        R16 K9 [string.match]
       51 MOVE                             R17 R14
       52 LOADK                            R18 K10 ["(%d+)$"]
       53 CALL                             R16 2 -1
       54 FASTCALL                         TONUMBER ; [+2]
       55 GETIMPORT                        R15 K12 [tonumber]
       57 CALL                             R15 -1 1
       58 MOVE                             R13 R15
       59 JUMPIFEQKNIL                     R13 ; [+3]
       61 LOADB                            R14 1
       62 SETTABLE                         R14 R1 R13
       63 FORGLOOP                         R8 2 ; [-44]
       65 FORGLOOP                         R2 2 ; [-60]
       67 NEWTABLE                         R2 0 0
       69 MOVE                             R3 R1
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 FORGPREP                         R3
       73 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       75 MOVE                             R9 R2
       76 MOVE                             R10 R6
       77 GETIMPORT                        R8 K3 [table.insert]
       79 CALL                             R8 2 0
       80 FORGLOOP                         R3 1 ; [-8]
       82 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R5 8 0
        2 LOADK                            R6 K0 ["CreationContextInvalidAssetQuantities"]
        3 SETTABLEN                        R6 R5 2
        4 LOADK                            R6 K1 ["CreationContextInvalidBundleType"]
        5 SETTABLEN                        R6 R5 3
        6 LOADK                            R6 K2 ["CreationContextInvalidCreateBundleRequest"]
        7 SETTABLEN                        R6 R5 4
        8 LOADK                            R6 K3 ["CreationContextInvalidBundleDescription"]
        9 SETTABLEN                        R6 R5 5
       10 LOADK                            R6 K4 ["CreationContextInvalidBundleName"]
       11 SETTABLEN                        R6 R5 6
       12 LOADK                            R6 K5 ["CreationContextInappropriateBundleDescription"]
       13 SETTABLEN                        R6 R5 7
       14 LOADK                            R6 K6 ["CreationContextInappropriateBundleName"]
       15 SETTABLEN                        R6 R5 8
       16 GETUPVAL                         R6 0
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADK                            R6 K7 ["CreationContextInvalidBodyScale"]
       20 SETTABLEN                        R6 R5 12
       21 GETUPVAL                         R6 1
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+2]
       24 LOADK                            R6 K8 ["CreationContextInvalidBodyColorSet"]
       25 SETTABLEN                        R6 R5 13
       26 NEWTABLE                         R6 2 0
       28 LOADN                            R7 0
       29 LOADK                            R8 K9 ["CreationContextAuthorizationDenied"]
       30 SETTABLE                         R8 R6 R7
       31 LOADK                            R7 K10 ["CreationContextUserNotFound"]
       32 SETTABLEN                        R7 R6 10
       33 NEWTABLE                         R7 2 0
       35 LOADN                            R8 0
       36 LOADK                            R9 K11 ["CreationContextTokenValidationFailed"]
       37 SETTABLE                         R9 R7 R8
       38 LOADK                            R8 K12 ["CreationContextDoesNotHavePermission"]
       39 SETTABLEN                        R8 R7 9
       40 LOADK                            R8 K13 ["CreationContextMissingIDVerification"]
       41 SETTABLEN                        R8 R7 106
       42 LOADK                            R8 K14 ["CreationContextAccessBlocked"]
       43 SETTABLEN                        R8 R7 107
       44 LOADK                            R8 K15 ["CreationContextMissingPremium"]
       45 SETTABLEN                        R8 R7 108
       46 LOADK                            R8 K16 ["CreationContextMissingGroupPermission"]
       47 SETTABLEN                        R8 R7 111
       48 NEWTABLE                         R8 1 0
       50 LOADK                            R9 K17 ["CreationContextDailyLimitReached"]
       51 SETTABLEN                        R9 R8 11
       52 GETUPVAL                         R9 2
       53 CALL                             R9 0 1
       54 JUMPIFNOT                        R9 ; [+2]
       55 LOADK                            R9 K18 ["CreationContextBundleUploadQuotaExceeded"]
       56 SETTABLEN                        R9 R8 21
       57 NEWTABLE                         R9 0 1
       59 LOADK                            R10 K19 ["CreationContextServiceUnavailable"]
       60 SETTABLEN                        R10 R9 1
       61 NEWTABLE                         R10 8 0
       63 LOADN                            R11 400
       64 SETTABLE                         R5 R10 R11
       65 LOADN                            R11 401
       66 SETTABLE                         R6 R10 R11
       67 LOADN                            R11 403
       68 SETTABLE                         R7 R10 R11
       69 LOADN                            R11 412
       70 SETTABLE                         R8 R10 R11
       71 LOADN                            R11 503
       72 SETTABLE                         R9 R10 R11
       73 LOADNIL                          R11
       74 GETTABLEKS                       R13 R2 K20 ["StatusCode"]
       76 GETTABLE                         R12 R10 R13
       77 JUMPIFEQKNIL                     R12 ; [+92]
       79 GETTABLEKS                       R13 R2 K21 ["Body"]
       81 JUMPIFEQKNIL                     R13 ; [+88]
       83 GETTABLEKS                       R13 R2 K21 ["Body"]
       85 GETTABLEKS                       R13 R13 K22 ["errors"]
       87 JUMPIFEQKNIL                     R13 ; [+82]
       89 GETTABLEKS                       R13 R2 K21 ["Body"]
       91 GETTABLEKS                       R13 R13 K22 ["errors"]
       93 LOADNIL                          R14
       94 LOADNIL                          R15
       95 FORGPREP                         R13
       96 GETTABLEKS                       R19 R17 K23 ["code"]
       98 GETTABLE                         R18 R12 R19
       99 JUMPIFEQKNIL                     R18 ; [+60]
      101 GETUPVAL                         R19 2
      102 CALL                             R19 0 1
      103 JUMPIFNOT                        R19 ; [+43]
      104 JUMPIFNOTEQKS                    R18 K18 ["CreationContextBundleUploadQuotaExceeded"] ; [+42]
      106 GETIMPORT                        R19 K26 [string.match]
      108 GETTABLEKS                       R21 R17 K28 ["message"]
      110 ORK                              R20 R21 K27 [""]
      111 LOADK                            R21 K29 ["You can only upload (%d+) (.+) bundles (%a+)%."]
      112 CALL                             R19 2 3
      113 LOADNIL                          R22
      114 JUMPIFEQKNIL                     R19 ; [+15]
      116 LOADK                            R25 K30 ["AssetConfig"]
      117 MOVE                             R26 R18
      118 DUPTABLE                         R27 K34 [{"quota", "bundleType", "quotaPeriod"}]
      119 SETTABLEKS                       R19 R27 K31 ["quota"]
      121 SETTABLEKS                       R20 R27 K32 ["bundleType"]
      123 SETTABLEKS                       R21 R27 K33 ["quotaPeriod"]
      125 NAMECALL                         R23 R1 K35 ["getText"]
      127 CALL                             R23 4 1
      128 MOVE                             R22 R23
      129 JUMP                             ; [+6]
      130 LOADK                            R25 K30 ["AssetConfig"]
      131 MOVE                             R26 R18
      132 NAMECALL                         R23 R1 K35 ["getText"]
      134 CALL                             R23 3 1
      135 MOVE                             R22 R23
      136 JUMPIFEQKNIL                     R22 ; [+23]
      138 JUMPIFNOTEQKNIL                  R11 ; [+3]
      140 MOVE                             R11 R22
      141 JUMP                             ; [+18]
      142 MOVE                             R23 R11
      143 LOADK                            R24 K36 ["\n"]
      144 MOVE                             R25 R22
      145 CONCAT                           R11 R23 R25
      146 JUMP                             ; [+13]
      147 LOADK                            R21 K30 ["AssetConfig"]
      148 MOVE                             R22 R18
      149 NAMECALL                         R19 R1 K35 ["getText"]
      151 CALL                             R19 3 1
      152 JUMPIFNOTEQKNIL                  R11 ; [+3]
      154 MOVE                             R11 R19
      155 JUMP                             ; [+4]
      156 MOVE                             R20 R11
      157 LOADK                            R21 K36 ["\n"]
      158 MOVE                             R22 R19
      159 CONCAT                           R11 R20 R22
      160 FORGLOOP                         R13 2 ; [-65]
      162 JUMPIFEQKNIL                     R11 ; [+7]
      164 MOVE                             R13 R11
      165 GETUPVAL                         R14 3
      166 MOVE                             R15 R4
      167 MOVE                             R16 R1
      168 CALL                             R14 2 1
      169 CONCAT                           R11 R13 R14
      170 GETUPVAL                         R13 4
      171 CALL                             R13 0 1
      172 JUMPIFNOT                        R13 ; [+14]
      173 GETUPVAL                         R13 5
      174 GETTABLEKS                       R13 R13 K37 ["UGCUploadRequestOperationIdEvent"]
      176 GETUPVAL                         R14 5
      177 GETTABLEKS                       R14 R14 K38 ["Status"]
      179 GETTABLEKS                       R14 R14 K39 ["Failure"]
      181 MOVE                             R15 R3
      182 LOADNIL                          R16
      183 GETUPVAL                         R17 6
      184 MOVE                             R18 R2
      185 CALL                             R17 1 1
      186 CALL                             R13 4 0
      187 GETUPVAL                         R13 7
      188 GETTABLEKS                       R13 R13 K40 ["shouldDebugWarnings"]
      190 CALL                             R13 0 1
      191 JUMPIFNOT                        R13 ; [+5]
      192 GETIMPORT                        R13 K42 [warn]
      194 LOADK                            R14 K43 ["Could not create UGC Bundle context and received response:"]
      195 MOVE                             R15 R2
      196 CALL                             R13 2 0
      197 JUMPIFEQKNIL                     R11 ; [+8]
      199 GETUPVAL                         R15 8
      200 MOVE                             R16 R11
      201 CALL                             R15 1 -1
      202 NAMECALL                         R13 R0 K44 ["dispatch"]
      204 CALL                             R13 -1 0
      205 JUMP                             ; [+16]
      206 GETUPVAL                         R15 8
      207 LOADK                            R21 K30 ["AssetConfig"]
      208 LOADK                            R22 K45 ["BundleContextCreationError"]
      209 NAMECALL                         R19 R1 K35 ["getText"]
      211 CALL                             R19 3 1
      212 MOVE                             R17 R19
      213 GETUPVAL                         R18 3
      214 MOVE                             R19 R4
      215 MOVE                             R20 R1
      216 CALL                             R18 2 1
      217 CONCAT                           R16 R17 R18
      218 CALL                             R15 1 -1
      219 NAMECALL                         R13 R0 K44 ["dispatch"]
      221 CALL                             R13 -1 0
      222 GETUPVAL                         R15 9
      223 LOADB                            R16 0
      224 CALL                             R15 1 -1
      225 NAMECALL                         R13 R0 K44 ["dispatch"]
      227 CALL                             R13 -1 0
      228 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 GETTABLEKS                       R6 R6 K0 ["Name"]
        8 GETUPVAL                         R7 6
        9 GETUPVAL                         R8 7
       10 NAMECALL                         R0 R0 K1 ["createAssetAndWaitForAssetId"]
       12 CALL                             R0 8 -1
       13 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CALL                             R0 1 2
       12 JUMPIFNOT                        R0 ; [+87]
       13 JUMPIFEQKNIL                     R1 ; [+86]
       15 JUMPIFEQKN                       R1 K2 [0] ; [+84]
       17 GETUPVAL                         R2 8
       18 GETTABLEKS                       R2 R2 K3 ["shouldDebugWarnings"]
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETIMPORT                        R2 K5 [warn]
       24 LOADK                            R3 K6 ["Received an assetId for an uploaded UGC bundle part:"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 9
       28 GETUPVAL                         R3 1
       29 CALL                             R2 1 1
       30 GETUPVAL                         R3 10
       31 GETTABLEKS                       R3 R3 K7 ["UGCIndividualAssetUploadEvent"]
       33 MOVE                             R4 R1
       34 JUMPIF                           R2 ; [+2]
       35 LOADNIL                          R5
       36 JUMP                             ; [+22]
       37 LOADNIL                          R6
       38 FASTCALL1                        TYPE R2 ; [+3]
       39 MOVE                             R8 R2
       40 GETIMPORT                        R7 K9 [type]
       42 CALL                             R7 1 1
       43 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+8]
       45 GETIMPORT                        R7 K12 [table.concat]
       47 MOVE                             R8 R2
       48 LOADK                            R9 K13 [", "]
       49 CALL                             R7 2 1
       50 MOVE                             R6 R7
       51 JUMP                             ; [+6]
       52 FASTCALL1                        TOSTRING R2 ; [+3]
       53 MOVE                             R8 R2
       54 GETIMPORT                        R7 K15 [tostring]
       56 CALL                             R7 1 1
       57 MOVE                             R6 R7
       58 MOVE                             R5 R6
       59 CALL                             R3 2 0
       60 GETUPVAL                         R4 11
       61 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       63 MOVE                             R5 R1
       64 GETIMPORT                        R3 K17 [table.insert]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R3 12
       68 GETUPVAL                         R5 13
       69 GETUPVAL                         R10 11
       70 LENGTH                           R9 R10
       71 MULK                             R8 R9 K19 [0.8]
       72 GETUPVAL                         R9 14
       73 DIV                              R7 R8 R9
       74 ADDK                             R6 R7 K18 [0.05]
       75 GETUPVAL                         R7 15
       76 LOADK                            R9 K20 ["AssetConfig"]
       77 LOADK                            R10 K21 ["BundleUploadStepNumber"]
       78 DUPTABLE                         R11 K26 [{["currentStep"] = 2, ["totalSteps"] = 4}]
       79 NAMECALL                         R7 R7 K27 ["getText"]
       81 CALL                             R7 4 1
       82 GETUPVAL                         R8 15
       83 LOADK                            R10 K20 ["AssetConfig"]
       84 GETUPVAL                         R12 16
       85 GETTABLEKS                       R12 R12 K28 ["bundleUploadAssetsStep"]
       87 GETUPVAL                         R13 17
       88 GETTABLE                         R11 R12 R13
       89 NAMECALL                         R8 R8 K27 ["getText"]
       91 CALL                             R8 3 -1
       92 CALL                             R5 -1 -1
       93 NAMECALL                         R3 R3 K29 ["dispatch"]
       95 CALL                             R3 -1 0
       96 GETUPVAL                         R3 18
       97 MOVE                             R4 R1
       98 CALL                             R3 1 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R2 19
      101 MOVE                             R3 R1
      102 CALL                             R2 1 0
      103 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+62]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 LENGTH                           R2 R3
        7 JUMPIFNOTEQ                      R1 R2 ; [+57]
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+37]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K0 ["UGCUploadAssetsEvent"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["Status"]
       18 GETTABLEKS                       R2 R2 K2 ["Success"]
       20 GETUPVAL                         R3 4
       21 GETUPVAL                         R4 5
       22 GETUPVAL                         R6 1
       23 JUMPIF                           R6 ; [+2]
       24 LOADNIL                          R5
       25 JUMP                             ; [+22]
       26 LOADNIL                          R7
       27 FASTCALL1                        TYPE R6 ; [+3]
       28 MOVE                             R9 R6
       29 GETIMPORT                        R8 K4 [type]
       31 CALL                             R8 1 1
       32 JUMPIFNOTEQKS                    R8 K5 ["table"] ; [+8]
       34 GETIMPORT                        R8 K7 [table.concat]
       36 MOVE                             R9 R6
       37 LOADK                            R10 K8 [", "]
       38 CALL                             R8 2 1
       39 MOVE                             R7 R8
       40 JUMP                             ; [+6]
       41 FASTCALL1                        TOSTRING R6 ; [+3]
       42 MOVE                             R9 R6
       43 GETIMPORT                        R8 K10 [tostring]
       45 CALL                             R8 1 1
       46 MOVE                             R7 R8
       47 MOVE                             R5 R7
       48 CALL                             R1 4 0
       49 GETUPVAL                         R1 6
       50 GETUPVAL                         R3 7
       51 GETUPVAL                         R4 8
       52 GETUPVAL                         R5 9
       53 GETUPVAL                         R6 10
       54 GETUPVAL                         R7 11
       55 GETUPVAL                         R8 1
       56 GETUPVAL                         R9 5
       57 GETUPVAL                         R10 12
       58 GETUPVAL                         R11 13
       59 GETUPVAL                         R12 14
       60 CALL                             R3 9 -1
       61 NAMECALL                         R1 R1 K11 ["dispatch"]
       63 CALL                             R1 -1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R1 2
       66 CALL                             R1 0 1
       67 JUMPIFNOT                        R1 ; [+13]
       68 GETUPVAL                         R1 3
       69 GETTABLEKS                       R1 R1 K0 ["UGCUploadAssetsEvent"]
       71 GETUPVAL                         R2 3
       72 GETTABLEKS                       R2 R2 K1 ["Status"]
       74 GETTABLEKS                       R2 R2 K12 ["Failure"]
       76 GETUPVAL                         R3 4
       77 GETUPVAL                         R4 5
       78 LOADNIL                          R5
       79 LOADK                            R6 K13 ["Bundle Upload Assets Error"]
       80 CALL                             R1 5 0
       81 GETUPVAL                         R1 15
       82 GETTABLEKS                       R1 R1 K14 ["shouldDebugWarnings"]
       84 CALL                             R1 0 1
       85 JUMPIFNOT                        R1 ; [+4]
       86 GETIMPORT                        R1 K16 [warn]
       88 LOADK                            R2 K17 ["Unexpected UGCBundleUploadRequest: Incorrect number of asset ids "]
       89 CALL                             R1 1 0
       90 GETUPVAL                         R1 6
       91 GETUPVAL                         R3 16
       92 GETUPVAL                         R7 12
       93 LOADK                            R9 K18 ["AssetConfig"]
       94 GETUPVAL                         R11 17
       95 GETTABLEKS                       R11 R11 K19 ["bundlePartsUploadError"]
       97 GETUPVAL                         R12 4
       98 GETTABLE                         R10 R11 R12
       99 NAMECALL                         R7 R7 K20 ["getText"]
      101 CALL                             R7 3 1
      102 MOVE                             R5 R7
      103 GETUPVAL                         R6 18
      104 GETUPVAL                         R7 13
      105 GETUPVAL                         R8 12
      106 CALL                             R6 2 1
      107 CONCAT                           R4 R5 R6
      108 CALL                             R3 1 -1
      109 NAMECALL                         R1 R1 K11 ["dispatch"]
      111 CALL                             R1 -1 0
      112 GETUPVAL                         R1 6
      113 GETUPVAL                         R3 19
      114 LOADB                            R4 0
      115 CALL                             R3 1 -1
      116 NAMECALL                         R1 R1 K11 ["dispatch"]
      118 CALL                             R1 -1 0
      119 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["UGCUploadAssetsEvent"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["Status"]
        9 GETTABLEKS                       R2 R2 K2 ["Failure"]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 3
       13 LOADNIL                          R5
       14 MOVE                             R6 R0
       15 CALL                             R1 5 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K3 ["shouldDebugWarnings"]
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETIMPORT                        R1 K5 [warn]
       23 LOADK                            R2 K6 ["Unexpected UGCBundleUploadRequest error:"]
       24 MOVE                             R3 R0
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 5
       27 GETUPVAL                         R3 6
       28 GETUPVAL                         R9 7
       29 LOADK                            R11 K7 ["AssetConfig"]
       30 GETUPVAL                         R13 8
       31 GETTABLEKS                       R13 R13 K8 ["bundlePartsUploadError"]
       33 GETUPVAL                         R14 2
       34 GETTABLE                         R12 R13 R14
       35 NAMECALL                         R9 R9 K9 ["getText"]
       37 CALL                             R9 3 1
       38 MOVE                             R5 R9
       39 GETUPVAL                         R9 9
       40 GETUPVAL                         R10 10
       41 GETUPVAL                         R11 7
       42 CALL                             R9 2 1
       43 MOVE                             R6 R9
       44 LOADK                            R7 K10 ["\n\n"]
       45 MOVE                             R8 R0
       46 CONCAT                           R4 R5 R8
       47 CALL                             R3 1 -1
       48 NAMECALL                         R1 R1 K11 ["dispatch"]
       50 CALL                             R1 -1 0
       51 GETUPVAL                         R1 5
       52 GETUPVAL                         R3 11
       53 LOADB                            R4 0
       54 CALL                             R3 1 -1
       55 NAMECALL                         R1 R1 K11 ["dispatch"]
       57 CALL                             R1 -1 0
       58 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+234]
        1 GETTABLEKS                       R1 R0 K0 ["operationId"]
        3 JUMPIFNOT                        R1 ; [+231]
        4 GETTABLEKS                       R1 R0 K0 ["operationId"]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["shouldDebugWarnings"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["operationId received for UGC bundle upload:"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+11]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K5 ["UGCUploadRequestOperationIdEvent"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K6 ["Status"]
       27 GETTABLEKS                       R4 R4 K7 ["Success"]
       29 GETUPVAL                         R5 4
       30 MOVE                             R6 R1
       31 CALL                             R3 3 0
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K8 ["sanitizeForValidation"]
       35 GETUPVAL                         R4 6
       36 CALL                             R3 1 0
       37 LOADNIL                          R3
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K9 ["isUGCBodyBundleType"]
       41 GETUPVAL                         R5 7
       42 CALL                             R4 1 1
       43 JUMPIFNOT                        R4 ; [+12]
       44 GETUPVAL                         R4 8
       45 GETTABLEKS                       R4 R4 K10 ["util"]
       47 GETTABLEKS                       R4 R4 K11 ["createUGCBodyPartFolders"]
       49 GETUPVAL                         R5 6
       50 GETUPVAL                         R6 9
       51 GETUPVAL                         R7 4
       52 LOADB                            R8 1
       53 CALL                             R4 4 1
       54 MOVE                             R3 R4
       55 JUMP                             ; [+26]
       56 GETUPVAL                         R4 10
       57 CALL                             R4 0 1
       58 JUMPIFNOT                        R4 ; [+15]
       59 GETUPVAL                         R4 5
       60 GETTABLEKS                       R4 R4 K12 ["isAnimationBundleType"]
       62 GETUPVAL                         R5 7
       63 CALL                             R4 1 1
       64 JUMPIFNOT                        R4 ; [+9]
       65 GETUPVAL                         R4 11
       66 GETTABLEKS                       R4 R4 K13 ["createAvatarAnimationsPartFolders"]
       68 GETUPVAL                         R5 6
       69 GETUPVAL                         R6 9
       70 GETUPVAL                         R7 7
       71 CALL                             R4 3 1
       72 MOVE                             R3 R4
       73 JUMP                             ; [+8]
       74 GETUPVAL                         R4 5
       75 GETTABLEKS                       R4 R4 K14 ["createUGCShoesPartFolders"]
       77 GETUPVAL                         R5 6
       78 GETUPVAL                         R6 9
       79 GETUPVAL                         R7 7
       80 CALL                             R4 3 1
       81 MOVE                             R3 R4
       82 GETUPVAL                         R4 12
       83 GETUPVAL                         R6 13
       84 LOADK                            R7 K15 [0.05]
       85 GETUPVAL                         R8 14
       86 LOADK                            R10 K16 ["AssetConfig"]
       87 LOADK                            R11 K17 ["BundleUploadStepNumber"]
       88 DUPTABLE                         R12 K22 [{["currentStep"] = 2, ["totalSteps"] = 4}]
       89 NAMECALL                         R8 R8 K23 ["getText"]
       91 CALL                             R8 4 1
       92 GETUPVAL                         R9 14
       93 LOADK                            R11 K16 ["AssetConfig"]
       94 GETUPVAL                         R13 15
       95 GETTABLEKS                       R13 R13 K24 ["bundleUploadAssetsStep"]
       97 GETUPVAL                         R14 4
       98 GETTABLE                         R12 R13 R14
       99 NAMECALL                         R9 R9 K23 ["getText"]
      101 CALL                             R9 3 -1
      102 CALL                             R6 -1 -1
      103 NAMECALL                         R4 R4 K25 ["dispatch"]
      105 CALL                             R4 -1 0
      106 GETUPVAL                         R4 2
      107 CALL                             R4 0 1
      108 JUMPIFNOT                        R4 ; [+11]
      109 GETUPVAL                         R4 3
      110 GETTABLEKS                       R4 R4 K26 ["UGCUploadAssetsEvent"]
      112 GETUPVAL                         R5 3
      113 GETTABLEKS                       R5 R5 K6 ["Status"]
      115 GETTABLEKS                       R5 R5 K27 ["Start"]
      117 GETUPVAL                         R6 4
      118 MOVE                             R7 R1
      119 CALL                             R4 3 0
      120 GETIMPORT                        R4 K31 [Enum.AssetCreatorType.User]
      122 MOVE                             R5 R2
      123 GETUPVAL                         R6 12
      124 NAMECALL                         R6 R6 K32 ["getState"]
      126 CALL                             R6 1 1
      127 GETTABLEKS                       R6 R6 K33 ["groupBundlesUploadEnabledForUser"]
      129 JUMPIFNOT                        R6 ; [+6]
      130 GETUPVAL                         R7 16
      131 JUMPIFEQKNIL                     R7 ; [+4]
      133 GETIMPORT                        R4 K35 [Enum.AssetCreatorType.Group]
      135 GETUPVAL                         R5 16
      136 NEWTABLE                         R7 0 0
      138 LOADN                            R8 0
      139 NEWTABLE                         R9 0 0
      141 GETIMPORT                        R10 K37 [pairs]
      143 MOVE                             R11 R3
      144 CALL                             R10 1 3
      145 FORGPREP_NEXT                    R10
      146 GETUPVAL                         R16 17
      147 GETUPVAL                         R17 14
      148 CALL                             R16 1 1
      149 GETTABLE                         R15 R16 R13
      150 JUMPIF                           R15 ; [+2]
      151 GETTABLEKS                       R15 R13 K38 ["Name"]
      153 ADDK                             R8 R8 K39 [1]
      154 LOADK                            R17 K40 ["%* - %*"]
      155 GETUPVAL                         R19 18
      156 MOVE                             R20 R15
      157 NAMECALL                         R17 R17 K41 ["format"]
      159 CALL                             R17 3 1
      160 MOVE                             R16 R17
      161 MOVE                             R18 R9
      162 GETUPVAL                         R19 19
      163 GETTABLEKS                       R19 R19 K42 ["new"]
      165 NEWCLOSURE                       R20 P0
      166 CAPTURE                          UPVAL U20
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R1
      169 CAPTURE                          REF R4
      170 CAPTURE                          REF R5
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R16
      173 CAPTURE                          UPVAL U21
      174 CAPTURE                          UPVAL U1
      175 CAPTURE                          UPVAL U22
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          VAL R7
      178 CAPTURE                          UPVAL U12
      179 CAPTURE                          UPVAL U13
      180 CAPTURE                          REF R8
      181 CAPTURE                          UPVAL U14
      182 CAPTURE                          UPVAL U15
      183 CAPTURE                          UPVAL U4
      184 CALL                             R19 1 -1
      185 FASTCALL                         TABLE_INSERT ; [+2]
      186 GETIMPORT                        R17 K45 [table.insert]
      188 CALL                             R17 -1 0
      189 FORGLOOP                         R10 2 ; [-44]
      191 GETUPVAL                         R10 19
      192 GETTABLEKS                       R10 R10 K46 ["all"]
      194 MOVE                             R11 R9
      195 CALL                             R10 1 1
      196 NEWCLOSURE                       R12 P1
      197 CAPTURE                          REF R8
      198 CAPTURE                          VAL R7
      199 CAPTURE                          UPVAL U2
      200 CAPTURE                          UPVAL U3
      201 CAPTURE                          UPVAL U4
      202 CAPTURE                          VAL R1
      203 CAPTURE                          UPVAL U12
      204 CAPTURE                          UPVAL U23
      205 CAPTURE                          UPVAL U24
      206 CAPTURE                          UPVAL U7
      207 CAPTURE                          UPVAL U18
      208 CAPTURE                          UPVAL U21
      209 CAPTURE                          UPVAL U14
      210 CAPTURE                          UPVAL U25
      211 CAPTURE                          UPVAL U26
      212 CAPTURE                          UPVAL U1
      213 CAPTURE                          UPVAL U27
      214 CAPTURE                          UPVAL U15
      215 CAPTURE                          UPVAL U28
      216 CAPTURE                          UPVAL U29
      217 NEWCLOSURE                       R13 P2
      218 CAPTURE                          UPVAL U2
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          UPVAL U4
      221 CAPTURE                          VAL R1
      222 CAPTURE                          UPVAL U1
      223 CAPTURE                          UPVAL U12
      224 CAPTURE                          UPVAL U27
      225 CAPTURE                          UPVAL U14
      226 CAPTURE                          UPVAL U15
      227 CAPTURE                          UPVAL U28
      228 CAPTURE                          UPVAL U25
      229 CAPTURE                          UPVAL U29
      230 NAMECALL                         R10 R10 K47 ["andThen"]
      232 CALL                             R10 3 0
      233 CLOSEUPVALS                      R4
      234 RETURN                           R0 0
      235 GETUPVAL                         R1 1
      236 GETTABLEKS                       R1 R1 K1 ["shouldDebugWarnings"]
      238 CALL                             R1 0 1
      239 JUMPIFNOT                        R1 ; [+5]
      240 GETIMPORT                        R1 K3 [warn]
      242 LOADK                            R2 K48 ["Unexpected UGCBundleUploadRequest response:"]
      243 MOVE                             R3 R0
      244 CALL                             R1 2 0
      245 GETUPVAL                         R1 2
      246 CALL                             R1 0 1
      247 JUMPIFNOT                        R1 ; [+14]
      248 GETUPVAL                         R1 3
      249 GETTABLEKS                       R1 R1 K5 ["UGCUploadRequestOperationIdEvent"]
      251 GETUPVAL                         R2 3
      252 GETTABLEKS                       R2 R2 K6 ["Status"]
      254 GETTABLEKS                       R2 R2 K49 ["Failure"]
      256 GETUPVAL                         R3 4
      257 LOADNIL                          R4
      258 GETUPVAL                         R5 30
      259 MOVE                             R6 R0
      260 CALL                             R5 1 1
      261 CALL                             R1 4 0
      262 GETUPVAL                         R1 12
      263 GETUPVAL                         R3 27
      264 GETUPVAL                         R7 14
      265 LOADK                            R9 K16 ["AssetConfig"]
      266 LOADK                            R10 K50 ["ValidationErrorUnknown"]
      267 NAMECALL                         R7 R7 K23 ["getText"]
      269 CALL                             R7 3 1
      270 MOVE                             R5 R7
      271 GETUPVAL                         R6 28
      272 GETUPVAL                         R7 25
      273 GETUPVAL                         R8 14
      274 CALL                             R6 2 1
      275 CONCAT                           R4 R5 R6
      276 CALL                             R3 1 -1
      277 NAMECALL                         R1 R1 K25 ["dispatch"]
      279 CALL                             R1 -1 0
      280 GETUPVAL                         R1 12
      281 GETUPVAL                         R3 29
      282 LOADB                            R4 0
      283 CALL                             R3 1 -1
      284 NAMECALL                         R1 R1 K25 ["dispatch"]
      286 CALL                             R1 -1 0
      287 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 4
        8 GETUPVAL                         R6 5
        9 CALL                             R1 5 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 GETUPVAL                         R5 4
       16 GETUPVAL                         R6 5
       17 CALL                             R1 5 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAvatarAssetTypeAsString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["Clone"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 3
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+6]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["getBodyScaleValues"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 GETUPVAL                         R5 4
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+6]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["getBodyColorSet"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 GETUPVAL                         R6 5
       30 JUMPIFNOT                        R6 ; [+9]
       31 GETUPVAL                         R5 5
       32 LOADN                            R7 1
       33 GETUPVAL                         R8 6
       34 GETTABLEKS                       R8 R8 K4 ["NAME_CHARACTER_LIMIT"]
       36 NAMECALL                         R5 R5 K5 ["sub"]
       38 CALL                             R5 3 1
       39 JUMP                             ; [+1]
       40 LOADK                            R5 K6 [""]
       41 SETUPVAL                         R5 5
       42 GETUPVAL                         R6 7
       43 JUMPIFNOT                        R6 ; [+9]
       44 GETUPVAL                         R5 7
       45 LOADN                            R7 1
       46 GETUPVAL                         R8 6
       47 GETTABLEKS                       R8 R8 K7 ["DESCRIPTION_CHARACTER_LIMIT"]
       49 NAMECALL                         R5 R5 K5 ["sub"]
       51 CALL                             R5 3 1
       52 JUMP                             ; [+1]
       53 LOADK                            R5 K6 [""]
       54 SETUPVAL                         R5 7
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          UPVAL U14
       67 CAPTURE                          UPVAL U15
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U16
       70 CAPTURE                          UPVAL U17
       71 CAPTURE                          UPVAL U18
       72 CAPTURE                          UPVAL U19
       73 CAPTURE                          UPVAL U20
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U21
       76 CAPTURE                          UPVAL U22
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U23
       79 CAPTURE                          UPVAL U24
       80 CAPTURE                          UPVAL U25
       81 CAPTURE                          UPVAL U26
       82 CAPTURE                          UPVAL U27
       83 CAPTURE                          UPVAL U28
       84 CAPTURE                          UPVAL U29
       85 CAPTURE                          UPVAL U30
       86 CAPTURE                          UPVAL U31
       87 NEWCLOSURE                       R6 P1
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U32
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U17
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U26
       94 GETUPVAL                         R9 16
       95 LOADN                            R10 0
       96 GETUPVAL                         R11 17
       97 LOADK                            R13 K8 ["AssetConfig"]
       98 LOADK                            R14 K9 ["BundleUploadStepNumber"]
       99 DUPTABLE                         R15 K14 [{["currentStep"] = 1, ["totalSteps"] = 4}]
      100 NAMECALL                         R11 R11 K15 ["getText"]
      102 CALL                             R11 4 1
      103 GETUPVAL                         R12 17
      104 LOADK                            R14 K8 ["AssetConfig"]
      105 LOADK                            R15 K16 ["BundleUploadPrepareStep"]
      106 NAMECALL                         R12 R12 K15 ["getText"]
      108 CALL                             R12 3 -1
      109 CALL                             R9 -1 -1
      110 NAMECALL                         R7 R0 K17 ["dispatch"]
      112 CALL                             R7 -1 0
      113 GETUPVAL                         R9 33
      114 GETUPVAL                         R10 6
      115 GETTABLEKS                       R10 R10 K18 ["SCREENS"]
      117 GETTABLEKS                       R10 R10 K19 ["UPLOADING_ASSET"]
      119 CALL                             R9 1 -1
      120 NAMECALL                         R7 R0 K17 ["dispatch"]
      122 CALL                             R7 -1 0
      123 GETUPVAL                         R7 0
      124 GETTABLEKS                       R7 R7 K20 ["getUGCBundleAssetQuantities"]
      126 MOVE                             R8 R2
      127 GETUPVAL                         R9 13
      128 GETUPVAL                         R10 1
      129 CALL                             R7 3 1
      130 JUMPIFNOTEQKNIL                  R7 ; [+25]
      132 GETUPVAL                         R10 28
      133 GETUPVAL                         R14 17
      134 LOADK                            R16 K8 ["AssetConfig"]
      135 LOADK                            R17 K21 ["ValidationErrorUnknown"]
      136 NAMECALL                         R14 R14 K15 ["getText"]
      138 CALL                             R14 3 1
      139 MOVE                             R12 R14
      140 GETUPVAL                         R13 29
      141 GETUPVAL                         R14 26
      142 GETUPVAL                         R15 17
      143 CALL                             R13 2 1
      144 CONCAT                           R11 R12 R13
      145 CALL                             R10 1 -1
      146 NAMECALL                         R8 R0 K17 ["dispatch"]
      148 CALL                             R8 -1 0
      149 GETUPVAL                         R10 30
      150 LOADB                            R11 0
      151 CALL                             R10 1 -1
      152 NAMECALL                         R8 R0 K17 ["dispatch"]
      154 CALL                             R8 -1 0
      155 RETURN                           R0 0
      156 GETUPVAL                         R8 10
      157 CALL                             R8 0 1
      158 JUMPIFNOT                        R8 ; [+10]
      159 GETUPVAL                         R8 11
      160 GETTABLEKS                       R8 R8 K22 ["UGCUploadRequestOperationIdEvent"]
      162 GETUPVAL                         R9 11
      163 GETTABLEKS                       R9 R9 K23 ["Status"]
      165 GETTABLEKS                       R9 R9 K24 ["Start"]
      167 MOVE                             R10 R1
      168 CALL                             R8 2 0
      169 GETUPVAL                         R8 25
      170 GETUPVAL                         R10 1
      171 MOVE                             R11 R7
      172 GETUPVAL                         R12 5
      173 GETUPVAL                         R13 7
      174 MOVE                             R14 R3
      175 MOVE                             R15 R4
      176 GETUPVAL                         R16 19
      177 GETUPVAL                         R17 34
      178 NAMECALL                         R8 R8 K25 ["postBundleCreationContext"]
      180 CALL                             R8 9 1
      181 MOVE                             R10 R5
      182 MOVE                             R11 R6
      183 NAMECALL                         R8 R8 K26 ["andThen"]
      185 CALL                             R8 3 -1
      186 RETURN                           R8 -1

PROTO_14:
        0 NEWCLOSURE                       R12 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          REF R3
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          REF R4
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          VAL R5
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U11
       18 CAPTURE                          VAL R6
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          VAL R10
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          VAL R9
       24 CAPTURE                          UPVAL U15
       25 CAPTURE                          UPVAL U16
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R8
       29 CAPTURE                          UPVAL U17
       30 CAPTURE                          UPVAL U18
       31 CAPTURE                          UPVAL U19
       32 CAPTURE                          UPVAL U20
       33 CAPTURE                          UPVAL U21
       34 CAPTURE                          UPVAL U22
       35 CAPTURE                          VAL R11
       36 CLOSEUPVALS                      R3
       37 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Toolbox"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Actions"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["NetworkError"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K11 [require]
       24 GETTABLEKS                       R5 R2 K13 ["SetCurrentScreen"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K11 [require]
       29 GETTABLEKS                       R6 R2 K14 ["UploadResult"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K11 [require]
       34 GETTABLEKS                       R7 R2 K15 ["SetProgressBarInfo"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K11 [require]
       39 GETTABLEKS                       R8 R1 K8 ["Src"]
       41 GETTABLEKS                       R8 R8 K16 ["Localization"]
       43 GETTABLEKS                       R8 R8 K17 ["getLocalizedAssetTextMap"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R1 K8 ["Src"]
       48 GETTABLEKS                       R8 R8 K18 ["Networking"]
       50 GETTABLEKS                       R8 R8 K19 ["Requests"]
       52 GETIMPORT                        R9 K11 [require]
       54 GETTABLEKS                       R10 R8 K20 ["UGCCreateBundleRequest"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R1 K8 ["Src"]
       59 GETTABLEKS                       R10 R10 K21 ["Util"]
       61 GETIMPORT                        R11 K11 [require]
       63 GETTABLEKS                       R12 R10 K22 ["Analytics"]
       65 GETTABLEKS                       R12 R12 K22 ["Analytics"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K11 [require]
       70 GETTABLEKS                       R13 R10 K23 ["AssetConfigConstants"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K11 [require]
       75 GETTABLEKS                       R14 R10 K24 ["AssetConfigUtil"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K11 [require]
       80 GETTABLEKS                       R15 R10 K25 ["AnimationConfigUtil"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K11 [require]
       85 GETTABLEKS                       R16 R10 K26 ["DebugFlags"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K11 [require]
       90 GETTABLEKS                       R17 R10 K27 ["getUserId"]
       92 CALL                             R16 1 1
       93 GETTABLEKS                       R17 R1 K28 ["Packages"]
       95 GETIMPORT                        R18 K11 [require]
       97 GETTABLEKS                       R19 R17 K29 ["Framework"]
       99 CALL                             R18 1 1
      100 GETTABLEKS                       R18 R18 K21 ["Util"]
      102 GETTABLEKS                       R18 R18 K30 ["Promise"]
      104 GETIMPORT                        R19 K11 [require]
      106 GETTABLEKS                       R20 R17 K31 ["UGCValidation"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K11 [require]
      111 GETTABLEKS                       R21 R10 K32 ["SharedFlags"]
      113 GETTABLEKS                       R21 R21 K33 ["getFFlagEnableUGCUploadFlowAnalytics"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K11 [require]
      118 GETTABLEKS                       R22 R10 K32 ["SharedFlags"]
      120 GETTABLEKS                       R22 R22 K34 ["getFFlagEnableUGCBundleUploadBodyScale"]
      122 CALL                             R21 1 1
      123 GETIMPORT                        R22 K11 [require]
      125 GETTABLEKS                       R23 R10 K32 ["SharedFlags"]
      127 GETTABLEKS                       R23 R23 K35 ["getFFlagEnableBodyColorSetUploadSupport"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K11 [require]
      132 GETTABLEKS                       R24 R1 K8 ["Src"]
      134 GETTABLEKS                       R24 R24 K36 ["Flags"]
      136 GETTABLEKS                       R24 R24 K37 ["getFFlagEnableUploadingAvatarAnimations"]
      138 CALL                             R23 1 1
      139 GETIMPORT                        R24 K11 [require]
      141 GETTABLEKS                       R25 R1 K8 ["Src"]
      143 GETTABLEKS                       R25 R25 K36 ["Flags"]
      145 GETTABLEKS                       R25 R25 K38 ["getFFlagToolboxDynamicUploadFee"]
      147 CALL                             R24 1 1
      148 GETIMPORT                        R25 K11 [require]
      150 GETTABLEKS                       R26 R10 K39 ["getRobuxMessageToAppend"]
      152 CALL                             R25 1 1
      153 DUPTABLE                         R26 K42 [{"bundlePartsUploadError", "bundleUploadAssetsStep"}]
      154 DUPTABLE                         R27 K48 [{["Body"] = "BundlePartsUploadError", ["DynamicHead"] = "BundlePartsUploadError", ["Shoes"] = "ShoesBundlePartsUploadError"}]
      155 SETTABLEKS                       R27 R26 K40 ["bundlePartsUploadError"]
      157 DUPTABLE                         R27 K51 [{["Body"] = "BundleUploadAssetsStep", ["DynamicHead"] = "BundleUploadAssetsStep", ["Shoes"] = "ShoesBundleUploadAssetsStep"}]
      158 SETTABLEKS                       R27 R26 K41 ["bundleUploadAssetsStep"]
      160 MOVE                             R27 R23
      161 CALL                             R27 0 1
      162 JUMPIFNOT                        R27 ; [+10]
      163 GETTABLEKS                       R27 R26 K40 ["bundlePartsUploadError"]
      165 LOADK                            R28 K52 ["AvatarAnimationsBundlePartsUploadError"]
      166 SETTABLEKS                       R28 R27 K53 ["AvatarAnimations"]
      168 GETTABLEKS                       R27 R26 K41 ["bundleUploadAssetsStep"]
      170 LOADK                            R28 K54 ["AvatarAnimationsBundleUploadAssetsStep"]
      171 SETTABLEKS                       R28 R27 K53 ["AvatarAnimations"]
      173 DUPCLOSURE                       R27 K55 [PROTO_0]
      174 DUPCLOSURE                       R28 K56 [PROTO_1]
      175 DUPCLOSURE                       R29 K57 [PROTO_2]
      176 DUPCLOSURE                       R30 K58 [PROTO_3]
      177 DUPCLOSURE                       R31 K59 [PROTO_4]
      178 DUPCLOSURE                       R32 K60 [PROTO_5]
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R27
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R5
      189 DUPCLOSURE                       R33 K61 [PROTO_14]
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R23
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R31
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R32
      212 CAPTURE                          VAL R4
      213 RETURN                           R33 1
