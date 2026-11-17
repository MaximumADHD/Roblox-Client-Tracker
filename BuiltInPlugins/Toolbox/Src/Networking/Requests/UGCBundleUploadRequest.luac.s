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
       21 LOADK                            R6 K8 ["CreationContextInvalidBodyColorSet"]
       22 SETTABLEN                        R6 R5 13
       23 NEWTABLE                         R6 2 0
       25 LOADN                            R7 0
       26 LOADK                            R8 K9 ["CreationContextAuthorizationDenied"]
       27 SETTABLE                         R8 R6 R7
       28 LOADK                            R7 K10 ["CreationContextUserNotFound"]
       29 SETTABLEN                        R7 R6 10
       30 NEWTABLE                         R7 2 0
       32 LOADN                            R8 0
       33 LOADK                            R9 K11 ["CreationContextTokenValidationFailed"]
       34 SETTABLE                         R9 R7 R8
       35 LOADK                            R8 K12 ["CreationContextDoesNotHavePermission"]
       36 SETTABLEN                        R8 R7 9
       37 LOADK                            R8 K13 ["CreationContextMissingIDVerification"]
       38 SETTABLEN                        R8 R7 106
       39 LOADK                            R8 K14 ["CreationContextAccessBlocked"]
       40 SETTABLEN                        R8 R7 107
       41 LOADK                            R8 K15 ["CreationContextMissingPremium"]
       42 SETTABLEN                        R8 R7 108
       43 LOADK                            R8 K16 ["CreationContextMissingGroupPermission"]
       44 SETTABLEN                        R8 R7 111
       45 NEWTABLE                         R8 1 0
       47 LOADK                            R9 K17 ["CreationContextDailyLimitReached"]
       48 SETTABLEN                        R9 R8 11
       49 LOADK                            R9 K18 ["CreationContextBundleUploadQuotaExceeded"]
       50 SETTABLEN                        R9 R8 21
       51 NEWTABLE                         R9 0 1
       53 LOADK                            R10 K19 ["CreationContextServiceUnavailable"]
       54 SETTABLEN                        R10 R9 1
       55 NEWTABLE                         R10 8 0
       57 LOADN                            R11 400
       58 SETTABLE                         R5 R10 R11
       59 LOADN                            R11 401
       60 SETTABLE                         R6 R10 R11
       61 LOADN                            R11 403
       62 SETTABLE                         R7 R10 R11
       63 LOADN                            R11 412
       64 SETTABLE                         R8 R10 R11
       65 LOADN                            R11 503
       66 SETTABLE                         R9 R10 R11
       67 LOADNIL                          R11
       68 GETTABLEKS                       R13 R2 K20 ["StatusCode"]
       70 GETTABLE                         R12 R10 R13
       71 JUMPIFEQKNIL                     R12 ; [+89]
       73 GETTABLEKS                       R13 R2 K21 ["Body"]
       75 JUMPIFEQKNIL                     R13 ; [+85]
       77 GETTABLEKS                       R13 R2 K21 ["Body"]
       79 GETTABLEKS                       R13 R13 K22 ["errors"]
       81 JUMPIFEQKNIL                     R13 ; [+79]
       83 GETTABLEKS                       R13 R2 K21 ["Body"]
       85 GETTABLEKS                       R13 R13 K22 ["errors"]
       87 LOADNIL                          R14
       88 LOADNIL                          R15
       89 FORGPREP                         R13
       90 GETTABLEKS                       R19 R17 K23 ["code"]
       92 GETTABLE                         R18 R12 R19
       93 JUMPIFEQKNIL                     R18 ; [+57]
       95 JUMPIFNOTEQKS                    R18 K18 ["CreationContextBundleUploadQuotaExceeded"] ; [+42]
       97 GETIMPORT                        R19 K26 [string.match]
       99 GETTABLEKS                       R21 R17 K28 ["message"]
      101 ORK                              R20 R21 K27 [""]
      102 LOADK                            R21 K29 ["You can only upload (%d+) (.+) bundles (%a+)%."]
      103 CALL                             R19 2 3
      104 LOADNIL                          R22
      105 JUMPIFEQKNIL                     R19 ; [+15]
      107 LOADK                            R25 K30 ["AssetConfig"]
      108 MOVE                             R26 R18
      109 DUPTABLE                         R27 K34 [{"quota", "bundleType", "quotaPeriod"}]
      110 SETTABLEKS                       R19 R27 K31 ["quota"]
      112 SETTABLEKS                       R20 R27 K32 ["bundleType"]
      114 SETTABLEKS                       R21 R27 K33 ["quotaPeriod"]
      116 NAMECALL                         R23 R1 K35 ["getText"]
      118 CALL                             R23 4 1
      119 MOVE                             R22 R23
      120 JUMP                             ; [+6]
      121 LOADK                            R25 K30 ["AssetConfig"]
      122 MOVE                             R26 R18
      123 NAMECALL                         R23 R1 K35 ["getText"]
      125 CALL                             R23 3 1
      126 MOVE                             R22 R23
      127 JUMPIFEQKNIL                     R22 ; [+23]
      129 JUMPIFNOTEQKNIL                  R11 ; [+3]
      131 MOVE                             R11 R22
      132 JUMP                             ; [+18]
      133 MOVE                             R23 R11
      134 LOADK                            R24 K36 ["\n"]
      135 MOVE                             R25 R22
      136 CONCAT                           R11 R23 R25
      137 JUMP                             ; [+13]
      138 LOADK                            R21 K30 ["AssetConfig"]
      139 MOVE                             R22 R18
      140 NAMECALL                         R19 R1 K35 ["getText"]
      142 CALL                             R19 3 1
      143 JUMPIFNOTEQKNIL                  R11 ; [+3]
      145 MOVE                             R11 R19
      146 JUMP                             ; [+4]
      147 MOVE                             R20 R11
      148 LOADK                            R21 K36 ["\n"]
      149 MOVE                             R22 R19
      150 CONCAT                           R11 R20 R22
      151 FORGLOOP                         R13 2 ; [-62]
      153 JUMPIFEQKNIL                     R11 ; [+7]
      155 MOVE                             R13 R11
      156 GETUPVAL                         R14 1
      157 MOVE                             R15 R4
      158 MOVE                             R16 R1
      159 CALL                             R14 2 1
      160 CONCAT                           R11 R13 R14
      161 GETUPVAL                         R13 2
      162 CALL                             R13 0 1
      163 JUMPIFNOT                        R13 ; [+14]
      164 GETUPVAL                         R13 3
      165 GETTABLEKS                       R13 R13 K37 ["UGCUploadRequestOperationIdEvent"]
      167 GETUPVAL                         R14 3
      168 GETTABLEKS                       R14 R14 K38 ["Status"]
      170 GETTABLEKS                       R14 R14 K39 ["Failure"]
      172 MOVE                             R15 R3
      173 LOADNIL                          R16
      174 GETUPVAL                         R17 4
      175 MOVE                             R18 R2
      176 CALL                             R17 1 1
      177 CALL                             R13 4 0
      178 GETUPVAL                         R13 5
      179 GETTABLEKS                       R13 R13 K40 ["shouldDebugWarnings"]
      181 CALL                             R13 0 1
      182 JUMPIFNOT                        R13 ; [+5]
      183 GETIMPORT                        R13 K42 [warn]
      185 LOADK                            R14 K43 ["Could not create UGC Bundle context and received response:"]
      186 MOVE                             R15 R2
      187 CALL                             R13 2 0
      188 JUMPIFEQKNIL                     R11 ; [+8]
      190 GETUPVAL                         R15 6
      191 MOVE                             R16 R11
      192 CALL                             R15 1 -1
      193 NAMECALL                         R13 R0 K44 ["dispatch"]
      195 CALL                             R13 -1 0
      196 JUMP                             ; [+15]
      197 GETUPVAL                         R15 6
      198 LOADK                            R19 K30 ["AssetConfig"]
      199 LOADK                            R20 K45 ["BundleContextCreationError"]
      200 NAMECALL                         R17 R1 K35 ["getText"]
      202 CALL                             R17 3 1
      203 GETUPVAL                         R18 1
      204 MOVE                             R19 R4
      205 MOVE                             R20 R1
      206 CALL                             R18 2 1
      207 CONCAT                           R16 R17 R18
      208 CALL                             R15 1 -1
      209 NAMECALL                         R13 R0 K44 ["dispatch"]
      211 CALL                             R13 -1 0
      212 GETUPVAL                         R15 7
      213 LOADB                            R16 0
      214 CALL                             R15 1 -1
      215 NAMECALL                         R13 R0 K44 ["dispatch"]
      217 CALL                             R13 -1 0
      218 RETURN                           R0 0

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
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R0 K1 [pcall]
       12 CALL                             R0 1 2
       13 JUMPIFNOT                        R0 ; [+87]
       14 JUMPIFEQKNIL                     R1 ; [+86]
       16 JUMPIFEQKN                       R1 K2 [0] ; [+84]
       18 GETUPVAL                         R2 8
       19 GETTABLEKS                       R2 R2 K3 ["shouldDebugWarnings"]
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETIMPORT                        R2 K5 [warn]
       25 LOADK                            R3 K6 ["Received an assetId for an uploaded UGC bundle part:"]
       26 MOVE                             R4 R1
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 9
       29 GETUPVAL                         R3 1
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 10
       32 GETTABLEKS                       R3 R3 K7 ["UGCIndividualAssetUploadEvent"]
       34 MOVE                             R4 R1
       35 JUMPIF                           R2 ; [+2]
       36 LOADNIL                          R5
       37 JUMP                             ; [+22]
       38 LOADNIL                          R6
       39 FASTCALL1                        TYPE R2 ; [+3]
       40 MOVE                             R8 R2
       41 GETIMPORT                        R7 K9 [type]
       43 CALL                             R7 1 1
       44 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+8]
       46 GETIMPORT                        R7 K12 [table.concat]
       48 MOVE                             R8 R2
       49 LOADK                            R9 K13 [", "]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 JUMP                             ; [+6]
       53 FASTCALL1                        TOSTRING R2 ; [+3]
       54 MOVE                             R8 R2
       55 GETIMPORT                        R7 K15 [tostring]
       57 CALL                             R7 1 1
       58 MOVE                             R6 R7
       59 MOVE                             R5 R6
       60 CALL                             R3 2 0
       61 GETUPVAL                         R4 11
       62 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       64 MOVE                             R5 R1
       65 GETIMPORT                        R3 K17 [table.insert]
       67 CALL                             R3 2 0
       68 GETUPVAL                         R3 12
       69 GETUPVAL                         R5 13
       70 GETUPVAL                         R10 11
       71 LENGTH                           R9 R10
       72 MULK                             R8 R9 K19 [0.8]
       73 GETUPVAL                         R9 14
       74 DIV                              R7 R8 R9
       75 ADDK                             R6 R7 K18 [0.05]
       76 GETUPVAL                         R7 15
       77 LOADK                            R9 K20 ["AssetConfig"]
       78 LOADK                            R10 K21 ["BundleUploadStepNumber"]
       79 DUPTABLE                         R11 K26 [{["currentStep"] = 2, ["totalSteps"] = 4}]
       80 NAMECALL                         R7 R7 K27 ["getText"]
       82 CALL                             R7 4 1
       83 GETUPVAL                         R8 15
       84 LOADK                            R10 K20 ["AssetConfig"]
       85 GETUPVAL                         R12 16
       86 GETTABLEKS                       R12 R12 K28 ["bundleUploadAssetsStep"]
       88 GETUPVAL                         R13 17
       89 GETTABLE                         R11 R12 R13
       90 NAMECALL                         R8 R8 K27 ["getText"]
       92 CALL                             R8 3 -1
       93 CALL                             R5 -1 -1
       94 NAMECALL                         R3 R3 K29 ["dispatch"]
       96 CALL                             R3 -1 0
       97 GETUPVAL                         R3 18
       98 MOVE                             R4 R1
       99 CALL                             R3 1 0
      100 RETURN                           R0 0
      101 GETUPVAL                         R2 19
      102 MOVE                             R3 R1
      103 CALL                             R2 1 0
      104 RETURN                           R0 0

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
       92 GETUPVAL                         R5 12
       93 LOADK                            R7 K18 ["AssetConfig"]
       94 GETUPVAL                         R9 17
       95 GETTABLEKS                       R9 R9 K19 ["bundlePartsUploadError"]
       97 GETUPVAL                         R10 4
       98 GETTABLE                         R8 R9 R10
       99 NAMECALL                         R5 R5 K20 ["getText"]
      101 CALL                             R5 3 1
      102 GETUPVAL                         R6 18
      103 GETUPVAL                         R7 13
      104 GETUPVAL                         R8 12
      105 CALL                             R6 2 1
      106 CONCAT                           R4 R5 R6
      107 CALL                             R3 1 -1
      108 NAMECALL                         R1 R1 K11 ["dispatch"]
      110 CALL                             R1 -1 0
      111 GETUPVAL                         R1 6
      112 GETUPVAL                         R3 19
      113 LOADB                            R4 0
      114 CALL                             R3 1 -1
      115 NAMECALL                         R1 R1 K11 ["dispatch"]
      117 CALL                             R1 -1 0
      118 RETURN                           R0 0

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
       26 GETUPVAL                         R2 5
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETUPVAL                         R1 6
       30 MOVE                             R2 R0
       31 GETUPVAL                         R3 7
       32 CALL                             R1 2 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R1
       35 MOVE                             R2 R1
       36 JUMPIF                           R2 ; [+17]
       37 GETUPVAL                         R3 7
       38 LOADK                            R5 K7 ["AssetConfig"]
       39 GETUPVAL                         R7 8
       40 GETTABLEKS                       R7 R7 K8 ["bundlePartsUploadError"]
       42 GETUPVAL                         R8 2
       43 GETTABLE                         R6 R7 R8
       44 NAMECALL                         R3 R3 K9 ["getText"]
       46 CALL                             R3 3 1
       47 GETUPVAL                         R4 9
       48 GETUPVAL                         R5 10
       49 GETUPVAL                         R6 7
       50 CALL                             R4 2 1
       51 LOADK                            R5 K10 ["\n\n"]
       52 MOVE                             R6 R0
       53 CONCAT                           R2 R3 R6
       54 GETUPVAL                         R3 11
       55 GETUPVAL                         R5 12
       56 MOVE                             R6 R2
       57 CALL                             R5 1 -1
       58 NAMECALL                         R3 R3 K11 ["dispatch"]
       60 CALL                             R3 -1 0
       61 GETUPVAL                         R3 11
       62 GETUPVAL                         R5 13
       63 LOADB                            R6 0
       64 CALL                             R5 1 -1
       65 NAMECALL                         R3 R3 K11 ["dispatch"]
       67 CALL                             R3 -1 0
       68 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+232]
        1 GETTABLEKS                       R1 R0 K0 ["operationId"]
        3 JUMPIFNOT                        R1 ; [+229]
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
       55 JUMP                             ; [+23]
       56 GETUPVAL                         R4 5
       57 GETTABLEKS                       R4 R4 K12 ["isAnimationBundleType"]
       59 GETUPVAL                         R5 7
       60 CALL                             R4 1 1
       61 JUMPIFNOT                        R4 ; [+9]
       62 GETUPVAL                         R4 10
       63 GETTABLEKS                       R4 R4 K13 ["createAvatarAnimationsPartFolders"]
       65 GETUPVAL                         R5 6
       66 GETUPVAL                         R6 9
       67 GETUPVAL                         R7 7
       68 CALL                             R4 3 1
       69 MOVE                             R3 R4
       70 JUMP                             ; [+8]
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K14 ["createUGCShoesPartFolders"]
       74 GETUPVAL                         R5 6
       75 GETUPVAL                         R6 9
       76 GETUPVAL                         R7 7
       77 CALL                             R4 3 1
       78 MOVE                             R3 R4
       79 GETUPVAL                         R4 11
       80 GETUPVAL                         R6 12
       81 LOADK                            R7 K15 [0.05]
       82 GETUPVAL                         R8 13
       83 LOADK                            R10 K16 ["AssetConfig"]
       84 LOADK                            R11 K17 ["BundleUploadStepNumber"]
       85 DUPTABLE                         R12 K22 [{["currentStep"] = 2, ["totalSteps"] = 4}]
       86 NAMECALL                         R8 R8 K23 ["getText"]
       88 CALL                             R8 4 1
       89 GETUPVAL                         R9 13
       90 LOADK                            R11 K16 ["AssetConfig"]
       91 GETUPVAL                         R13 14
       92 GETTABLEKS                       R13 R13 K24 ["bundleUploadAssetsStep"]
       94 GETUPVAL                         R14 4
       95 GETTABLE                         R12 R13 R14
       96 NAMECALL                         R9 R9 K23 ["getText"]
       98 CALL                             R9 3 -1
       99 CALL                             R6 -1 -1
      100 NAMECALL                         R4 R4 K25 ["dispatch"]
      102 CALL                             R4 -1 0
      103 GETUPVAL                         R4 2
      104 CALL                             R4 0 1
      105 JUMPIFNOT                        R4 ; [+11]
      106 GETUPVAL                         R4 3
      107 GETTABLEKS                       R4 R4 K26 ["UGCUploadAssetsEvent"]
      109 GETUPVAL                         R5 3
      110 GETTABLEKS                       R5 R5 K6 ["Status"]
      112 GETTABLEKS                       R5 R5 K27 ["Start"]
      114 GETUPVAL                         R6 4
      115 MOVE                             R7 R1
      116 CALL                             R4 3 0
      117 GETIMPORT                        R4 K31 [Enum.AssetCreatorType.User]
      119 MOVE                             R5 R2
      120 GETUPVAL                         R6 11
      121 NAMECALL                         R6 R6 K32 ["getState"]
      123 CALL                             R6 1 1
      124 GETTABLEKS                       R6 R6 K33 ["groupBundlesUploadEnabledForUser"]
      126 JUMPIFNOT                        R6 ; [+6]
      127 GETUPVAL                         R7 15
      128 JUMPIFEQKNIL                     R7 ; [+4]
      130 GETIMPORT                        R4 K35 [Enum.AssetCreatorType.Group]
      132 GETUPVAL                         R5 15
      133 NEWTABLE                         R7 0 0
      135 LOADN                            R8 0
      136 NEWTABLE                         R9 0 0
      138 GETIMPORT                        R10 K37 [pairs]
      140 MOVE                             R11 R3
      141 CALL                             R10 1 3
      142 FORGPREP_NEXT                    R10
      143 GETUPVAL                         R16 16
      144 GETUPVAL                         R17 13
      145 CALL                             R16 1 1
      146 GETTABLE                         R15 R16 R13
      147 JUMPIF                           R15 ; [+2]
      148 GETTABLEKS                       R15 R13 K38 ["Name"]
      150 ADDK                             R8 R8 K39 [1]
      151 LOADK                            R16 K40 ["%* - %*"]
      152 GETUPVAL                         R18 17
      153 MOVE                             R19 R15
      154 NAMECALL                         R16 R16 K41 ["format"]
      156 CALL                             R16 3 1
      157 MOVE                             R18 R9
      158 GETUPVAL                         R19 18
      159 GETTABLEKS                       R19 R19 K42 ["new"]
      161 NEWCLOSURE                       R20 P0
      162 CAPTURE                          UPVAL U19
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R1
      165 CAPTURE                          REF R4
      166 CAPTURE                          REF R5
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R16
      169 CAPTURE                          UPVAL U20
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          UPVAL U21
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          VAL R7
      174 CAPTURE                          UPVAL U11
      175 CAPTURE                          UPVAL U12
      176 CAPTURE                          REF R8
      177 CAPTURE                          UPVAL U13
      178 CAPTURE                          UPVAL U14
      179 CAPTURE                          UPVAL U4
      180 CALL                             R19 1 -1
      181 FASTCALL                         TABLE_INSERT ; [+2]
      182 GETIMPORT                        R17 K45 [table.insert]
      184 CALL                             R17 -1 0
      185 FORGLOOP                         R10 2 ; [-43]
      187 GETUPVAL                         R10 18
      188 GETTABLEKS                       R10 R10 K46 ["all"]
      190 MOVE                             R11 R9
      191 CALL                             R10 1 1
      192 NEWCLOSURE                       R12 P1
      193 CAPTURE                          REF R8
      194 CAPTURE                          VAL R7
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          UPVAL U4
      198 CAPTURE                          VAL R1
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          UPVAL U22
      201 CAPTURE                          UPVAL U23
      202 CAPTURE                          UPVAL U7
      203 CAPTURE                          UPVAL U17
      204 CAPTURE                          UPVAL U20
      205 CAPTURE                          UPVAL U13
      206 CAPTURE                          UPVAL U24
      207 CAPTURE                          UPVAL U25
      208 CAPTURE                          UPVAL U1
      209 CAPTURE                          UPVAL U26
      210 CAPTURE                          UPVAL U14
      211 CAPTURE                          UPVAL U27
      212 CAPTURE                          UPVAL U28
      213 NEWCLOSURE                       R13 P2
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          UPVAL U3
      216 CAPTURE                          UPVAL U4
      217 CAPTURE                          VAL R1
      218 CAPTURE                          UPVAL U1
      219 CAPTURE                          UPVAL U29
      220 CAPTURE                          UPVAL U30
      221 CAPTURE                          UPVAL U13
      222 CAPTURE                          UPVAL U14
      223 CAPTURE                          UPVAL U27
      224 CAPTURE                          UPVAL U24
      225 CAPTURE                          UPVAL U11
      226 CAPTURE                          UPVAL U26
      227 CAPTURE                          UPVAL U28
      228 NAMECALL                         R10 R10 K47 ["andThen"]
      230 CALL                             R10 3 0
      231 CLOSEUPVALS                      R4
      232 RETURN                           R0 0
      233 GETUPVAL                         R1 1
      234 GETTABLEKS                       R1 R1 K1 ["shouldDebugWarnings"]
      236 CALL                             R1 0 1
      237 JUMPIFNOT                        R1 ; [+5]
      238 GETIMPORT                        R1 K3 [warn]
      240 LOADK                            R2 K48 ["Unexpected UGCBundleUploadRequest response:"]
      241 MOVE                             R3 R0
      242 CALL                             R1 2 0
      243 GETUPVAL                         R1 2
      244 CALL                             R1 0 1
      245 JUMPIFNOT                        R1 ; [+14]
      246 GETUPVAL                         R1 3
      247 GETTABLEKS                       R1 R1 K5 ["UGCUploadRequestOperationIdEvent"]
      249 GETUPVAL                         R2 3
      250 GETTABLEKS                       R2 R2 K6 ["Status"]
      252 GETTABLEKS                       R2 R2 K49 ["Failure"]
      254 GETUPVAL                         R3 4
      255 LOADNIL                          R4
      256 GETUPVAL                         R5 31
      257 MOVE                             R6 R0
      258 CALL                             R5 1 1
      259 CALL                             R1 4 0
      260 GETUPVAL                         R1 11
      261 GETUPVAL                         R3 26
      262 GETUPVAL                         R5 13
      263 LOADK                            R7 K16 ["AssetConfig"]
      264 LOADK                            R8 K50 ["ValidationErrorUnknown"]
      265 NAMECALL                         R5 R5 K23 ["getText"]
      267 CALL                             R5 3 1
      268 GETUPVAL                         R6 27
      269 GETUPVAL                         R7 24
      270 GETUPVAL                         R8 13
      271 CALL                             R6 2 1
      272 CONCAT                           R4 R5 R6
      273 CALL                             R3 1 -1
      274 NAMECALL                         R1 R1 K25 ["dispatch"]
      276 CALL                             R1 -1 0
      277 GETUPVAL                         R1 11
      278 GETUPVAL                         R3 28
      279 LOADB                            R4 0
      280 CALL                             R3 1 -1
      281 NAMECALL                         R1 R1 K25 ["dispatch"]
      283 CALL                             R1 -1 0
      284 RETURN                           R0 0

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
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["getBodyColorSet"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 GETUPVAL                         R6 4
       25 JUMPIFNOT                        R6 ; [+9]
       26 GETUPVAL                         R5 4
       27 LOADN                            R7 1
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R8 R8 K4 ["NAME_CHARACTER_LIMIT"]
       31 NAMECALL                         R5 R5 K5 ["sub"]
       33 CALL                             R5 3 1
       34 JUMP                             ; [+1]
       35 LOADK                            R5 K6 [""]
       36 SETUPVAL                         R5 4
       37 GETUPVAL                         R6 6
       38 JUMPIFNOT                        R6 ; [+9]
       39 GETUPVAL                         R5 6
       40 LOADN                            R7 1
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R8 R8 K7 ["DESCRIPTION_CHARACTER_LIMIT"]
       44 NAMECALL                         R5 R5 K5 ["sub"]
       46 CALL                             R5 3 1
       47 JUMP                             ; [+1]
       48 LOADK                            R5 K6 [""]
       49 SETUPVAL                         R5 6
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          UPVAL U12
       61 CAPTURE                          UPVAL U13
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U14
       64 CAPTURE                          UPVAL U15
       65 CAPTURE                          UPVAL U16
       66 CAPTURE                          UPVAL U17
       67 CAPTURE                          UPVAL U18
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U19
       70 CAPTURE                          UPVAL U20
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U21
       73 CAPTURE                          UPVAL U22
       74 CAPTURE                          UPVAL U23
       75 CAPTURE                          UPVAL U24
       76 CAPTURE                          UPVAL U25
       77 CAPTURE                          UPVAL U26
       78 CAPTURE                          UPVAL U27
       79 CAPTURE                          UPVAL U28
       80 CAPTURE                          UPVAL U29
       81 CAPTURE                          UPVAL U30
       82 CAPTURE                          UPVAL U31
       83 NEWCLOSURE                       R6 P1
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          UPVAL U32
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U15
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U24
       90 GETUPVAL                         R9 14
       91 LOADN                            R10 0
       92 GETUPVAL                         R11 15
       93 LOADK                            R13 K8 ["AssetConfig"]
       94 LOADK                            R14 K9 ["BundleUploadStepNumber"]
       95 DUPTABLE                         R15 K14 [{["currentStep"] = 1, ["totalSteps"] = 4}]
       96 NAMECALL                         R11 R11 K15 ["getText"]
       98 CALL                             R11 4 1
       99 GETUPVAL                         R12 15
      100 LOADK                            R14 K8 ["AssetConfig"]
      101 LOADK                            R15 K16 ["BundleUploadPrepareStep"]
      102 NAMECALL                         R12 R12 K15 ["getText"]
      104 CALL                             R12 3 -1
      105 CALL                             R9 -1 -1
      106 NAMECALL                         R7 R0 K17 ["dispatch"]
      108 CALL                             R7 -1 0
      109 GETUPVAL                         R9 33
      110 GETUPVAL                         R10 5
      111 GETTABLEKS                       R10 R10 K18 ["SCREENS"]
      113 GETTABLEKS                       R10 R10 K19 ["UPLOADING_ASSET"]
      115 CALL                             R9 1 -1
      116 NAMECALL                         R7 R0 K17 ["dispatch"]
      118 CALL                             R7 -1 0
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R7 R7 K20 ["getUGCBundleAssetQuantities"]
      122 MOVE                             R8 R2
      123 GETUPVAL                         R9 12
      124 GETUPVAL                         R10 1
      125 CALL                             R7 3 1
      126 JUMPIFNOTEQKNIL                  R7 ; [+24]
      128 GETUPVAL                         R10 26
      129 GETUPVAL                         R12 15
      130 LOADK                            R14 K8 ["AssetConfig"]
      131 LOADK                            R15 K21 ["ValidationErrorUnknown"]
      132 NAMECALL                         R12 R12 K15 ["getText"]
      134 CALL                             R12 3 1
      135 GETUPVAL                         R13 27
      136 GETUPVAL                         R14 24
      137 GETUPVAL                         R15 15
      138 CALL                             R13 2 1
      139 CONCAT                           R11 R12 R13
      140 CALL                             R10 1 -1
      141 NAMECALL                         R8 R0 K17 ["dispatch"]
      143 CALL                             R8 -1 0
      144 GETUPVAL                         R10 28
      145 LOADB                            R11 0
      146 CALL                             R10 1 -1
      147 NAMECALL                         R8 R0 K17 ["dispatch"]
      149 CALL                             R8 -1 0
      150 RETURN                           R0 0
      151 GETUPVAL                         R8 9
      152 CALL                             R8 0 1
      153 JUMPIFNOT                        R8 ; [+10]
      154 GETUPVAL                         R8 10
      155 GETTABLEKS                       R8 R8 K22 ["UGCUploadRequestOperationIdEvent"]
      157 GETUPVAL                         R9 10
      158 GETTABLEKS                       R9 R9 K23 ["Status"]
      160 GETTABLEKS                       R9 R9 K24 ["Start"]
      162 MOVE                             R10 R1
      163 CALL                             R8 2 0
      164 GETUPVAL                         R8 23
      165 GETUPVAL                         R10 1
      166 MOVE                             R11 R7
      167 GETUPVAL                         R12 4
      168 GETUPVAL                         R13 6
      169 MOVE                             R14 R3
      170 MOVE                             R15 R4
      171 GETUPVAL                         R16 17
      172 GETUPVAL                         R17 34
      173 NAMECALL                         R8 R8 K25 ["postBundleCreationContext"]
      175 CALL                             R8 9 1
      176 MOVE                             R10 R5
      177 MOVE                             R11 R6
      178 NAMECALL                         R8 R8 K26 ["andThen"]
      180 CALL                             R8 3 -1
      181 RETURN                           R8 -1

PROTO_14:
        0 NEWCLOSURE                       R12 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R3
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          REF R4
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          VAL R5
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          VAL R6
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          VAL R10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          VAL R9
       22 CAPTURE                          UPVAL U13
       23 CAPTURE                          UPVAL U14
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R7
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U15
       28 CAPTURE                          UPVAL U16
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
       90 GETTABLEKS                       R17 R10 K27 ["extractPublishValidationRejection"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K11 [require]
       95 GETTABLEKS                       R18 R10 K28 ["getUserId"]
       97 CALL                             R17 1 1
       98 GETTABLEKS                       R18 R1 K29 ["Packages"]
      100 GETIMPORT                        R19 K11 [require]
      102 GETTABLEKS                       R20 R18 K30 ["Framework"]
      104 CALL                             R19 1 1
      105 GETTABLEKS                       R19 R19 K21 ["Util"]
      107 GETTABLEKS                       R19 R19 K31 ["Promise"]
      109 GETIMPORT                        R20 K11 [require]
      111 GETTABLEKS                       R21 R18 K32 ["UGCValidation"]
      113 CALL                             R20 1 1
      114 GETIMPORT                        R21 K11 [require]
      116 GETTABLEKS                       R22 R10 K33 ["SharedFlags"]
      118 GETTABLEKS                       R22 R22 K34 ["getFFlagEnableUGCUploadFlowAnalytics"]
      120 CALL                             R21 1 1
      121 GETIMPORT                        R22 K11 [require]
      123 GETTABLEKS                       R23 R10 K33 ["SharedFlags"]
      125 GETTABLEKS                       R23 R23 K35 ["getFFlagEnableUGCBundleUploadBodyScale"]
      127 CALL                             R22 1 1
      128 GETIMPORT                        R23 K11 [require]
      130 GETTABLEKS                       R24 R1 K8 ["Src"]
      132 GETTABLEKS                       R24 R24 K36 ["Flags"]
      134 GETTABLEKS                       R24 R24 K37 ["getFFlagToolboxParsePublishValidationErrors"]
      136 CALL                             R23 1 1
      137 GETIMPORT                        R24 K11 [require]
      139 GETTABLEKS                       R25 R10 K38 ["getRobuxMessageToAppend"]
      141 CALL                             R24 1 1
      142 DUPTABLE                         R25 K41 [{"bundlePartsUploadError", "bundleUploadAssetsStep"}]
      143 DUPTABLE                         R26 K47 [{["Body"] = "BundlePartsUploadError", ["DynamicHead"] = "BundlePartsUploadError", ["Shoes"] = "ShoesBundlePartsUploadError"}]
      144 SETTABLEKS                       R26 R25 K39 ["bundlePartsUploadError"]
      146 DUPTABLE                         R26 K50 [{["Body"] = "BundleUploadAssetsStep", ["DynamicHead"] = "BundleUploadAssetsStep", ["Shoes"] = "ShoesBundleUploadAssetsStep"}]
      147 SETTABLEKS                       R26 R25 K40 ["bundleUploadAssetsStep"]
      149 GETTABLEKS                       R26 R25 K39 ["bundlePartsUploadError"]
      151 LOADK                            R27 K51 ["AvatarAnimationsBundlePartsUploadError"]
      152 SETTABLEKS                       R27 R26 K52 ["AvatarAnimations"]
      154 GETTABLEKS                       R26 R25 K40 ["bundleUploadAssetsStep"]
      156 LOADK                            R27 K53 ["AvatarAnimationsBundleUploadAssetsStep"]
      157 SETTABLEKS                       R27 R26 K52 ["AvatarAnimations"]
      159 DUPCLOSURE                       R26 K54 [PROTO_0]
      160 DUPCLOSURE                       R27 K55 [PROTO_1]
      161 DUPCLOSURE                       R28 K56 [PROTO_2]
      162 DUPCLOSURE                       R29 K57 [PROTO_3]
      163 DUPCLOSURE                       R30 K58 [PROTO_4]
      164 DUPCLOSURE                       R31 K59 [PROTO_5]
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R26
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R5
      173 DUPCLOSURE                       R32 K60 [PROTO_14]
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R30
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R31
      196 CAPTURE                          VAL R4
      197 RETURN                           R32 1
