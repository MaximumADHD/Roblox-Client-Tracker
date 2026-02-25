PROTO_0:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R1 R0 K0 ["Body"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["Body"]
        6 GETTABLEKS                       R1 R2 K1 ["errors"]
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 GETTABLEKS                       R5 R0 K0 ["Body"]
       14 GETTABLEKS                       R2 R5 K1 ["errors"]
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
       40 GETUPVAL                         R8 2
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+4]
       43 LOADK                            R8 K13 ["CreationContextMissingIDVerification"]
       44 SETTABLEN                        R8 R7 106
       45 LOADK                            R8 K14 ["CreationContextAccessBlocked"]
       46 SETTABLEN                        R8 R7 107
       47 GETUPVAL                         R8 3
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+4]
       50 LOADK                            R8 K15 ["CreationContextMissingPremium"]
       51 SETTABLEN                        R8 R7 108
       52 LOADK                            R8 K16 ["CreationContextMissingGroupPermission"]
       53 SETTABLEN                        R8 R7 111
       54 NEWTABLE                         R8 1 0
       56 LOADK                            R9 K17 ["CreationContextDailyLimitReached"]
       57 SETTABLEN                        R9 R8 11
       58 NEWTABLE                         R9 0 1
       60 LOADK                            R10 K18 ["CreationContextServiceUnavailable"]
       61 SETTABLEN                        R10 R9 1
       62 NEWTABLE                         R10 8 0
       64 LOADN                            R11 144
       65 SETTABLE                         R5 R10 R11
       66 LOADN                            R11 145
       67 SETTABLE                         R6 R10 R11
       68 LOADN                            R11 147
       69 SETTABLE                         R7 R10 R11
       70 LOADN                            R11 156
       71 SETTABLE                         R8 R10 R11
       72 LOADN                            R11 247
       73 SETTABLE                         R9 R10 R11
       74 LOADNIL                          R11
       75 GETTABLEKS                       R13 R2 K19 ["StatusCode"]
       77 GETTABLE                         R12 R10 R13
       78 JUMPIFEQKNIL                     R12 ; [+50]
       80 GETTABLEKS                       R13 R2 K20 ["Body"]
       82 JUMPIFEQKNIL                     R13 ; [+46]
       84 GETTABLEKS                       R14 R2 K20 ["Body"]
       86 GETTABLEKS                       R13 R14 K21 ["errors"]
       88 JUMPIFEQKNIL                     R13 ; [+40]
       90 GETTABLEKS                       R16 R2 K20 ["Body"]
       92 GETTABLEKS                       R13 R16 K21 ["errors"]
       94 LOADNIL                          R14
       95 LOADNIL                          R15
       96 FORGPREP                         R13
       97 GETTABLEKS                       R19 R17 K22 ["code"]
       99 GETTABLE                         R18 R12 R19
      100 JUMPIFEQKNIL                     R18 ; [+18]
      102 JUMPIFNOTEQKNIL                  R11 ; [+8]
      104 LOADK                            R21 K23 ["AssetConfig"]
      105 MOVE                             R22 R18
      106 NAMECALL                         R19 R1 K24 ["getText"]
      108 CALL                             R19 3 1
      109 MOVE                             R11 R19
      110 JUMP                             ; [+8]
      111 MOVE                             R19 R11
      112 LOADK                            R20 K25 ["\n"]
      113 LOADK                            R23 K23 ["AssetConfig"]
      114 MOVE                             R24 R18
      115 NAMECALL                         R21 R1 K24 ["getText"]
      117 CALL                             R21 3 1
      118 CONCAT                           R11 R19 R21
      119 FORGLOOP                         R13 2 ; [-23]
      121 JUMPIFEQKNIL                     R11 ; [+7]
      123 MOVE                             R13 R11
      124 GETUPVAL                         R14 4
      125 MOVE                             R15 R4
      126 MOVE                             R16 R1
      127 CALL                             R14 2 1
      128 CONCAT                           R11 R13 R14
      129 GETUPVAL                         R13 5
      130 CALL                             R13 0 1
      131 JUMPIFNOT                        R13 ; [+14]
      132 GETUPVAL                         R14 6
      133 GETTABLEKS                       R13 R14 K26 ["UGCUploadRequestOperationIdEvent"]
      135 GETUPVAL                         R16 6
      136 GETTABLEKS                       R15 R16 K27 ["Status"]
      138 GETTABLEKS                       R14 R15 K28 ["Failure"]
      140 MOVE                             R15 R3
      141 LOADNIL                          R16
      142 GETUPVAL                         R17 7
      143 MOVE                             R18 R2
      144 CALL                             R17 1 1
      145 CALL                             R13 4 0
      146 GETUPVAL                         R14 8
      147 GETTABLEKS                       R13 R14 K29 ["shouldDebugWarnings"]
      149 CALL                             R13 0 1
      150 JUMPIFNOT                        R13 ; [+5]
      151 GETIMPORT                        R13 K31 [warn]
      153 LOADK                            R14 K32 ["Could not create UGC Bundle context and received response:"]
      154 MOVE                             R15 R2
      155 CALL                             R13 2 0
      156 JUMPIFEQKNIL                     R11 ; [+8]
      158 GETUPVAL                         R15 9
      159 MOVE                             R16 R11
      160 CALL                             R15 1 -1
      161 NAMECALL                         R13 R0 K33 ["dispatch"]
      163 CALL                             R13 -1 0
      164 JUMP                             ; [+16]
      165 GETUPVAL                         R15 9
      166 LOADK                            R21 K23 ["AssetConfig"]
      167 LOADK                            R22 K34 ["BundleContextCreationError"]
      168 NAMECALL                         R19 R1 K24 ["getText"]
      170 CALL                             R19 3 1
      171 MOVE                             R17 R19
      172 GETUPVAL                         R18 4
      173 MOVE                             R19 R4
      174 MOVE                             R20 R1
      175 CALL                             R18 2 1
      176 CONCAT                           R16 R17 R18
      177 CALL                             R15 1 -1
      178 NAMECALL                         R13 R0 K33 ["dispatch"]
      180 CALL                             R13 -1 0
      181 GETUPVAL                         R15 10
      182 LOADB                            R16 0
      183 CALL                             R15 1 -1
      184 NAMECALL                         R13 R0 K33 ["dispatch"]
      186 CALL                             R13 -1 0
      187 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 GETUPVAL                         R7 6
        9 GETTABLEKS                       R6 R7 K0 ["Name"]
       11 GETUPVAL                         R7 7
       12 GETUPVAL                         R8 8
       13 NAMECALL                         R0 R0 K1 ["createAssetAndWaitForAssetId"]
       15 CALL                             R0 8 -1
       16 RETURN                           R0 -1
       17 GETUPVAL                         R0 9
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 5
       22 GETUPVAL                         R7 6
       23 GETTABLEKS                       R6 R7 K0 ["Name"]
       25 GETUPVAL                         R7 7
       26 GETUPVAL                         R8 8
       27 NAMECALL                         R0 R0 K1 ["createAssetAndWaitForAssetId"]
       29 CALL                             R0 8 -1
       30 RETURN                           R0 -1

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
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CALL                             R0 1 2
       14 JUMPIFNOT                        R0 ; [+98]
       15 JUMPIFEQKNIL                     R1 ; [+97]
       17 JUMPIFEQKN                       R1 K2 [0] ; [+95]
       19 GETUPVAL                         R3 10
       20 GETTABLEKS                       R2 R3 K3 ["shouldDebugWarnings"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETIMPORT                        R2 K5 [warn]
       26 LOADK                            R3 K6 ["Received an assetId for an uploaded UGC bundle part:"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 11
       30 GETUPVAL                         R3 2
       31 CALL                             R2 1 1
       32 GETUPVAL                         R4 12
       33 GETTABLEKS                       R3 R4 K7 ["UGCIndividualAssetUploadEvent"]
       35 MOVE                             R4 R1
       36 JUMPIF                           R2 ; [+2]
       37 LOADNIL                          R5
       38 JUMP                             ; [+22]
       39 LOADNIL                          R6
       40 FASTCALL1                        TYPE R2 ; [+3]
       41 MOVE                             R8 R2
       42 GETIMPORT                        R7 K9 [type]
       44 CALL                             R7 1 1
       45 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+8]
       47 GETIMPORT                        R7 K12 [table.concat]
       49 MOVE                             R8 R2
       50 LOADK                            R9 K13 [", "]
       51 CALL                             R7 2 1
       52 MOVE                             R6 R7
       53 JUMP                             ; [+6]
       54 FASTCALL1                        TOSTRING R2 ; [+3]
       55 MOVE                             R8 R2
       56 GETIMPORT                        R7 K15 [tostring]
       58 CALL                             R7 1 1
       59 MOVE                             R6 R7
       60 MOVE                             R5 R6
       61 CALL                             R3 2 0
       62 GETUPVAL                         R4 13
       63 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       65 MOVE                             R5 R1
       66 GETIMPORT                        R3 K17 [table.insert]
       68 CALL                             R3 2 0
       69 GETUPVAL                         R3 14
       70 GETUPVAL                         R5 15
       71 GETUPVAL                         R10 13
       72 LENGTH                           R9 R10
       73 MULK                             R8 R9 K19 [0.8]
       74 GETUPVAL                         R9 16
       75 DIV                              R7 R8 R9
       76 ADDK                             R6 R7 K18 [0.05]
       77 GETUPVAL                         R7 17
       78 LOADK                            R9 K20 ["AssetConfig"]
       79 LOADK                            R10 K21 ["BundleUploadStepNumber"]
       80 DUPTABLE                         R11 K24 [{"currentStep", "totalSteps"}]
       81 LOADN                            R12 2
       82 SETTABLEKS                       R12 R11 K22 ["currentStep"]
       84 LOADN                            R12 4
       85 SETTABLEKS                       R12 R11 K23 ["totalSteps"]
       87 NAMECALL                         R7 R7 K25 ["getText"]
       89 CALL                             R7 4 1
       90 GETUPVAL                         R8 17
       91 LOADK                            R10 K20 ["AssetConfig"]
       92 GETUPVAL                         R12 18
       93 CALL                             R12 0 1
       94 JUMPIFNOT                        R12 ; [+6]
       95 GETUPVAL                         R13 19
       96 GETTABLEKS                       R12 R13 K26 ["bundleUploadAssetsStep"]
       98 GETUPVAL                         R13 20
       99 GETTABLE                         R11 R12 R13
      100 JUMP                             ; [+1]
      101 LOADK                            R11 K27 ["BundleUploadAssetsStep"]
      102 NAMECALL                         R8 R8 K25 ["getText"]
      104 CALL                             R8 3 -1
      105 CALL                             R5 -1 -1
      106 NAMECALL                         R3 R3 K28 ["dispatch"]
      108 CALL                             R3 -1 0
      109 GETUPVAL                         R3 21
      110 MOVE                             R4 R1
      111 CALL                             R3 1 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R2 22
      114 MOVE                             R3 R1
      115 CALL                             R2 1 0
      116 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          UPVAL U19
       23 CAPTURE                          UPVAL U20
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

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
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K0 ["UGCUploadAssetsEvent"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K1 ["Status"]
       18 GETTABLEKS                       R2 R3 K2 ["Success"]
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
       68 GETUPVAL                         R2 3
       69 GETTABLEKS                       R1 R2 K0 ["UGCUploadAssetsEvent"]
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R3 R4 K1 ["Status"]
       74 GETTABLEKS                       R2 R3 K12 ["Failure"]
       76 GETUPVAL                         R3 4
       77 GETUPVAL                         R4 5
       78 LOADNIL                          R5
       79 LOADK                            R6 K13 ["Bundle Upload Assets Error"]
       80 CALL                             R1 5 0
       81 GETUPVAL                         R2 15
       82 GETTABLEKS                       R1 R2 K14 ["shouldDebugWarnings"]
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
       95 CALL                             R11 0 1
       96 JUMPIFNOT                        R11 ; [+6]
       97 GETUPVAL                         R12 18
       98 GETTABLEKS                       R11 R12 K19 ["bundlePartsUploadError"]
      100 GETUPVAL                         R12 4
      101 GETTABLE                         R10 R11 R12
      102 JUMP                             ; [+1]
      103 LOADK                            R10 K20 ["BundlePartsUploadError"]
      104 NAMECALL                         R7 R7 K21 ["getText"]
      106 CALL                             R7 3 1
      107 MOVE                             R5 R7
      108 GETUPVAL                         R6 19
      109 GETUPVAL                         R7 13
      110 GETUPVAL                         R8 12
      111 CALL                             R6 2 1
      112 CONCAT                           R4 R5 R6
      113 CALL                             R3 1 -1
      114 NAMECALL                         R1 R1 K11 ["dispatch"]
      116 CALL                             R1 -1 0
      117 GETUPVAL                         R1 6
      118 GETUPVAL                         R3 20
      119 LOADB                            R4 0
      120 CALL                             R3 1 -1
      121 NAMECALL                         R1 R1 K11 ["dispatch"]
      123 CALL                             R1 -1 0
      124 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["UGCUploadAssetsEvent"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["Status"]
        9 GETTABLEKS                       R2 R3 K2 ["Failure"]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 3
       13 LOADNIL                          R5
       14 MOVE                             R6 R0
       15 CALL                             R1 5 0
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R1 R2 K3 ["shouldDebugWarnings"]
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETIMPORT                        R1 K5 [warn]
       23 LOADK                            R2 K6 ["Unexpected UGCBundleUploadRequest error:"]
       24 MOVE                             R3 R0
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 5
       27 CALL                             R1 0 1
       28 JUMPIFNOT                        R1 ; [+31]
       29 GETUPVAL                         R1 6
       30 GETUPVAL                         R3 7
       31 GETUPVAL                         R9 8
       32 LOADK                            R11 K7 ["AssetConfig"]
       33 GETUPVAL                         R13 9
       34 CALL                             R13 0 1
       35 JUMPIFNOT                        R13 ; [+6]
       36 GETUPVAL                         R14 10
       37 GETTABLEKS                       R13 R14 K8 ["bundlePartsUploadError"]
       39 GETUPVAL                         R14 2
       40 GETTABLE                         R12 R13 R14
       41 JUMP                             ; [+1]
       42 LOADK                            R12 K9 ["BundlePartsUploadError"]
       43 NAMECALL                         R9 R9 K10 ["getText"]
       45 CALL                             R9 3 1
       46 MOVE                             R5 R9
       47 GETUPVAL                         R9 11
       48 GETUPVAL                         R10 12
       49 GETUPVAL                         R11 8
       50 CALL                             R9 2 1
       51 MOVE                             R6 R9
       52 LOADK                            R7 K11 ["\n\n"]
       53 MOVE                             R8 R0
       54 CONCAT                           R4 R5 R8
       55 CALL                             R3 1 -1
       56 NAMECALL                         R1 R1 K12 ["dispatch"]
       58 CALL                             R1 -1 0
       59 JUMP                             ; [+27]
       60 GETUPVAL                         R1 6
       61 GETUPVAL                         R3 7
       62 GETUPVAL                         R7 8
       63 LOADK                            R9 K7 ["AssetConfig"]
       64 GETUPVAL                         R11 9
       65 CALL                             R11 0 1
       66 JUMPIFNOT                        R11 ; [+6]
       67 GETUPVAL                         R12 10
       68 GETTABLEKS                       R11 R12 K8 ["bundlePartsUploadError"]
       70 GETUPVAL                         R12 2
       71 GETTABLE                         R10 R11 R12
       72 JUMP                             ; [+1]
       73 LOADK                            R10 K9 ["BundlePartsUploadError"]
       74 NAMECALL                         R7 R7 K10 ["getText"]
       76 CALL                             R7 3 1
       77 MOVE                             R5 R7
       78 GETUPVAL                         R6 11
       79 GETUPVAL                         R7 12
       80 GETUPVAL                         R8 8
       81 CALL                             R6 2 1
       82 CONCAT                           R4 R5 R6
       83 CALL                             R3 1 -1
       84 NAMECALL                         R1 R1 K12 ["dispatch"]
       86 CALL                             R1 -1 0
       87 GETUPVAL                         R1 6
       88 GETUPVAL                         R3 13
       89 LOADB                            R4 0
       90 CALL                             R3 1 -1
       91 NAMECALL                         R1 R1 K12 ["dispatch"]
       93 CALL                             R1 -1 0
       94 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+239]
        1 GETTABLEKS                       R1 R0 K0 ["operationId"]
        3 JUMPIFNOT                        R1 ; [+236]
        4 GETTABLEKS                       R1 R0 K0 ["operationId"]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["shouldDebugWarnings"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["operationId received for UGC bundle upload:"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+11]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["UGCUploadRequestOperationIdEvent"]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K6 ["Status"]
       27 GETTABLEKS                       R4 R5 K7 ["Success"]
       29 GETUPVAL                         R5 4
       30 MOVE                             R6 R1
       31 CALL                             R3 3 0
       32 GETUPVAL                         R4 5
       33 GETTABLEKS                       R3 R4 K8 ["sanitizeForValidation"]
       35 GETUPVAL                         R4 6
       36 CALL                             R3 1 0
       37 LOADNIL                          R3
       38 GETUPVAL                         R4 7
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+6]
       41 GETUPVAL                         R5 5
       42 GETTABLEKS                       R4 R5 K9 ["isUGCBodyBundleType"]
       44 GETUPVAL                         R5 8
       45 CALL                             R4 1 1
       46 JUMPIFNOT                        R4 ; [+12]
       47 GETUPVAL                         R6 9
       48 GETTABLEKS                       R5 R6 K10 ["util"]
       50 GETTABLEKS                       R4 R5 K11 ["createUGCBodyPartFolders"]
       52 GETUPVAL                         R5 6
       53 GETUPVAL                         R6 10
       54 GETUPVAL                         R7 4
       55 LOADB                            R8 1
       56 CALL                             R4 4 1
       57 MOVE                             R3 R4
       58 JUMP                             ; [+8]
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R4 R5 K12 ["createUGCShoesPartFolders"]
       62 GETUPVAL                         R5 6
       63 GETUPVAL                         R6 10
       64 GETUPVAL                         R7 8
       65 CALL                             R4 3 1
       66 MOVE                             R3 R4
       67 GETUPVAL                         R4 11
       68 GETUPVAL                         R6 12
       69 LOADK                            R7 K13 [0.05]
       70 GETUPVAL                         R8 13
       71 LOADK                            R10 K14 ["AssetConfig"]
       72 LOADK                            R11 K15 ["BundleUploadStepNumber"]
       73 DUPTABLE                         R12 K18 [{"currentStep", "totalSteps"}]
       74 LOADN                            R13 2
       75 SETTABLEKS                       R13 R12 K16 ["currentStep"]
       77 LOADN                            R13 4
       78 SETTABLEKS                       R13 R12 K17 ["totalSteps"]
       80 NAMECALL                         R8 R8 K19 ["getText"]
       82 CALL                             R8 4 1
       83 GETUPVAL                         R9 13
       84 LOADK                            R11 K14 ["AssetConfig"]
       85 GETUPVAL                         R13 7
       86 CALL                             R13 0 1
       87 JUMPIFNOT                        R13 ; [+6]
       88 GETUPVAL                         R14 14
       89 GETTABLEKS                       R13 R14 K20 ["bundleUploadAssetsStep"]
       91 GETUPVAL                         R14 4
       92 GETTABLE                         R12 R13 R14
       93 JUMP                             ; [+1]
       94 LOADK                            R12 K21 ["BundleUploadAssetsStep"]
       95 NAMECALL                         R9 R9 K19 ["getText"]
       97 CALL                             R9 3 -1
       98 CALL                             R6 -1 -1
       99 NAMECALL                         R4 R4 K22 ["dispatch"]
      101 CALL                             R4 -1 0
      102 GETUPVAL                         R4 2
      103 CALL                             R4 0 1
      104 JUMPIFNOT                        R4 ; [+11]
      105 GETUPVAL                         R5 3
      106 GETTABLEKS                       R4 R5 K23 ["UGCUploadAssetsEvent"]
      108 GETUPVAL                         R7 3
      109 GETTABLEKS                       R6 R7 K6 ["Status"]
      111 GETTABLEKS                       R5 R6 K24 ["Start"]
      113 GETUPVAL                         R6 4
      114 MOVE                             R7 R1
      115 CALL                             R4 3 0
      116 GETIMPORT                        R4 K28 [Enum.AssetCreatorType.User]
      118 MOVE                             R5 R2
      119 GETUPVAL                         R6 15
      120 CALL                             R6 0 1
      121 JUMPIFNOT                        R6 ; [+13]
      122 GETUPVAL                         R7 11
      123 NAMECALL                         R7 R7 K29 ["getState"]
      125 CALL                             R7 1 1
      126 GETTABLEKS                       R6 R7 K30 ["groupBundlesUploadEnabledForUser"]
      128 JUMPIFNOT                        R6 ; [+6]
      129 GETUPVAL                         R7 16
      130 JUMPIFEQKNIL                     R7 ; [+4]
      132 GETIMPORT                        R4 K32 [Enum.AssetCreatorType.Group]
      134 GETUPVAL                         R5 16
      135 NEWTABLE                         R6 0 0
      137 LOADN                            R7 0
      138 NEWTABLE                         R8 0 0
      140 GETIMPORT                        R9 K34 [pairs]
      142 MOVE                             R10 R3
      143 CALL                             R9 1 3
      144 FORGPREP_NEXT                    R9
      145 GETUPVAL                         R15 17
      146 GETUPVAL                         R16 13
      147 CALL                             R15 1 1
      148 GETTABLE                         R14 R15 R12
      149 JUMPIF                           R14 ; [+2]
      150 GETTABLEKS                       R14 R12 K35 ["Name"]
      152 ADDK                             R7 R7 K36 [1]
      153 LOADK                            R16 K37 ["%* - %*"]
      154 GETUPVAL                         R18 18
      155 MOVE                             R19 R14
      156 NAMECALL                         R16 R16 K38 ["format"]
      158 CALL                             R16 3 1
      159 MOVE                             R15 R16
      160 MOVE                             R17 R8
      161 GETUPVAL                         R19 19
      162 GETTABLEKS                       R18 R19 K39 ["new"]
      164 NEWCLOSURE                       R19 P0
      165 CAPTURE                          UPVAL U15
      166 CAPTURE                          UPVAL U20
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R1
      169 CAPTURE                          REF R4
      170 CAPTURE                          REF R5
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R15
      173 CAPTURE                          UPVAL U21
      174 CAPTURE                          UPVAL U22
      175 CAPTURE                          UPVAL U1
      176 CAPTURE                          UPVAL U23
      177 CAPTURE                          UPVAL U3
      178 CAPTURE                          VAL R6
      179 CAPTURE                          UPVAL U11
      180 CAPTURE                          UPVAL U12
      181 CAPTURE                          REF R7
      182 CAPTURE                          UPVAL U13
      183 CAPTURE                          UPVAL U7
      184 CAPTURE                          UPVAL U14
      185 CAPTURE                          UPVAL U4
      186 CALL                             R18 1 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R16 K42 [table.insert]
      190 CALL                             R16 -1 0
      191 FORGLOOP                         R9 2 ; [-47]
      193 GETUPVAL                         R10 19
      194 GETTABLEKS                       R9 R10 K43 ["all"]
      196 MOVE                             R10 R8
      197 CALL                             R9 1 1
      198 NEWCLOSURE                       R11 P1
      199 CAPTURE                          REF R7
      200 CAPTURE                          VAL R6
      201 CAPTURE                          UPVAL U2
      202 CAPTURE                          UPVAL U3
      203 CAPTURE                          UPVAL U4
      204 CAPTURE                          VAL R1
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          UPVAL U24
      207 CAPTURE                          UPVAL U25
      208 CAPTURE                          UPVAL U8
      209 CAPTURE                          UPVAL U18
      210 CAPTURE                          UPVAL U21
      211 CAPTURE                          UPVAL U13
      212 CAPTURE                          UPVAL U26
      213 CAPTURE                          UPVAL U27
      214 CAPTURE                          UPVAL U1
      215 CAPTURE                          UPVAL U28
      216 CAPTURE                          UPVAL U7
      217 CAPTURE                          UPVAL U14
      218 CAPTURE                          UPVAL U29
      219 CAPTURE                          UPVAL U30
      220 NEWCLOSURE                       R12 P2
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          UPVAL U3
      223 CAPTURE                          UPVAL U4
      224 CAPTURE                          VAL R1
      225 CAPTURE                          UPVAL U1
      226 CAPTURE                          UPVAL U31
      227 CAPTURE                          UPVAL U11
      228 CAPTURE                          UPVAL U28
      229 CAPTURE                          UPVAL U13
      230 CAPTURE                          UPVAL U7
      231 CAPTURE                          UPVAL U14
      232 CAPTURE                          UPVAL U29
      233 CAPTURE                          UPVAL U26
      234 CAPTURE                          UPVAL U30
      235 NAMECALL                         R9 R9 K44 ["andThen"]
      237 CALL                             R9 3 0
      238 CLOSEUPVALS                      R4
      239 RETURN                           R0 0
      240 GETUPVAL                         R2 1
      241 GETTABLEKS                       R1 R2 K1 ["shouldDebugWarnings"]
      243 CALL                             R1 0 1
      244 JUMPIFNOT                        R1 ; [+5]
      245 GETIMPORT                        R1 K3 [warn]
      247 LOADK                            R2 K45 ["Unexpected UGCBundleUploadRequest response:"]
      248 MOVE                             R3 R0
      249 CALL                             R1 2 0
      250 GETUPVAL                         R1 2
      251 CALL                             R1 0 1
      252 JUMPIFNOT                        R1 ; [+14]
      253 GETUPVAL                         R2 3
      254 GETTABLEKS                       R1 R2 K5 ["UGCUploadRequestOperationIdEvent"]
      256 GETUPVAL                         R4 3
      257 GETTABLEKS                       R3 R4 K6 ["Status"]
      259 GETTABLEKS                       R2 R3 K46 ["Failure"]
      261 GETUPVAL                         R3 4
      262 LOADNIL                          R4
      263 GETUPVAL                         R5 32
      264 MOVE                             R6 R0
      265 CALL                             R5 1 1
      266 CALL                             R1 4 0
      267 GETUPVAL                         R1 11
      268 GETUPVAL                         R3 28
      269 GETUPVAL                         R7 13
      270 LOADK                            R9 K14 ["AssetConfig"]
      271 LOADK                            R10 K47 ["ValidationErrorUnknown"]
      272 NAMECALL                         R7 R7 K19 ["getText"]
      274 CALL                             R7 3 1
      275 MOVE                             R5 R7
      276 GETUPVAL                         R6 29
      277 GETUPVAL                         R7 26
      278 GETUPVAL                         R8 13
      279 CALL                             R6 2 1
      280 CONCAT                           R4 R5 R6
      281 CALL                             R3 1 -1
      282 NAMECALL                         R1 R1 K22 ["dispatch"]
      284 CALL                             R1 -1 0
      285 GETUPVAL                         R1 11
      286 GETUPVAL                         R3 30
      287 LOADB                            R4 0
      288 CALL                             R3 1 -1
      289 NAMECALL                         R1 R1 K22 ["dispatch"]
      291 CALL                             R1 -1 0
      292 RETURN                           R0 0

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
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAvatarAssetTypeAsString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["Clone"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 3
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+6]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["getBodyScaleValues"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 GETUPVAL                         R5 4
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+6]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K3 ["getBodyColorSet"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 GETUPVAL                         R6 5
       30 JUMPIFNOT                        R6 ; [+9]
       31 GETUPVAL                         R5 5
       32 LOADN                            R7 1
       33 GETUPVAL                         R9 6
       34 GETTABLEKS                       R8 R9 K4 ["NAME_CHARACTER_LIMIT"]
       36 NAMECALL                         R5 R5 K5 ["sub"]
       38 CALL                             R5 3 1
       39 JUMP                             ; [+1]
       40 LOADK                            R5 K6 [""]
       41 SETUPVAL                         R5 5
       42 GETUPVAL                         R6 7
       43 JUMPIFNOT                        R6 ; [+9]
       44 GETUPVAL                         R5 7
       45 LOADN                            R7 1
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R8 R9 K7 ["DESCRIPTION_CHARACTER_LIMIT"]
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
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          UPVAL U14
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U15
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
       87 CAPTURE                          UPVAL U32
       88 CAPTURE                          UPVAL U33
       89 NEWCLOSURE                       R6 P1
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          UPVAL U34
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U16
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U27
       96 GETUPVAL                         R9 15
       97 LOADN                            R10 0
       98 GETUPVAL                         R11 16
       99 LOADK                            R13 K8 ["AssetConfig"]
      100 LOADK                            R14 K9 ["BundleUploadStepNumber"]
      101 DUPTABLE                         R15 K12 [{"currentStep", "totalSteps"}]
      102 LOADN                            R16 1
      103 SETTABLEKS                       R16 R15 K10 ["currentStep"]
      105 LOADN                            R16 4
      106 SETTABLEKS                       R16 R15 K11 ["totalSteps"]
      108 NAMECALL                         R11 R11 K13 ["getText"]
      110 CALL                             R11 4 1
      111 GETUPVAL                         R12 16
      112 LOADK                            R14 K8 ["AssetConfig"]
      113 LOADK                            R15 K14 ["BundleUploadPrepareStep"]
      114 NAMECALL                         R12 R12 K13 ["getText"]
      116 CALL                             R12 3 -1
      117 CALL                             R9 -1 -1
      118 NAMECALL                         R7 R0 K15 ["dispatch"]
      120 CALL                             R7 -1 0
      121 GETUPVAL                         R9 35
      122 GETUPVAL                         R12 6
      123 GETTABLEKS                       R11 R12 K16 ["SCREENS"]
      125 GETTABLEKS                       R10 R11 K17 ["UPLOADING_ASSET"]
      127 CALL                             R9 1 -1
      128 NAMECALL                         R7 R0 K15 ["dispatch"]
      130 CALL                             R7 -1 0
      131 GETUPVAL                         R8 12
      132 CALL                             R8 0 1
      133 JUMPIFNOT                        R8 ; [+8]
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R7 R8 K18 ["getUGCBundleAssetQuantities"]
      137 MOVE                             R8 R2
      138 GETUPVAL                         R9 14
      139 GETUPVAL                         R10 1
      140 CALL                             R7 3 1
      141 JUMP                             ; [+7]
      142 GETUPVAL                         R8 0
      143 GETTABLEKS                       R7 R8 K19 ["getUGCBodyBundleAssetQuantities"]
      145 MOVE                             R8 R2
      146 GETUPVAL                         R9 14
      147 GETUPVAL                         R10 1
      148 CALL                             R7 3 1
      149 JUMPIFNOTEQKNIL                  R7 ; [+25]
      151 GETUPVAL                         R10 29
      152 GETUPVAL                         R14 16
      153 LOADK                            R16 K8 ["AssetConfig"]
      154 LOADK                            R17 K20 ["ValidationErrorUnknown"]
      155 NAMECALL                         R14 R14 K13 ["getText"]
      157 CALL                             R14 3 1
      158 MOVE                             R12 R14
      159 GETUPVAL                         R13 30
      160 GETUPVAL                         R14 27
      161 GETUPVAL                         R15 16
      162 CALL                             R13 2 1
      163 CONCAT                           R11 R12 R13
      164 CALL                             R10 1 -1
      165 NAMECALL                         R8 R0 K15 ["dispatch"]
      167 CALL                             R8 -1 0
      168 GETUPVAL                         R10 31
      169 LOADB                            R11 0
      170 CALL                             R10 1 -1
      171 NAMECALL                         R8 R0 K15 ["dispatch"]
      173 CALL                             R8 -1 0
      174 RETURN                           R0 0
      175 GETUPVAL                         R8 10
      176 CALL                             R8 0 1
      177 JUMPIFNOT                        R8 ; [+10]
      178 GETUPVAL                         R9 11
      179 GETTABLEKS                       R8 R9 K21 ["UGCUploadRequestOperationIdEvent"]
      181 GETUPVAL                         R11 11
      182 GETTABLEKS                       R10 R11 K22 ["Status"]
      184 GETTABLEKS                       R9 R10 K23 ["Start"]
      186 MOVE                             R10 R1
      187 CALL                             R8 2 0
      188 GETUPVAL                         R8 26
      189 GETUPVAL                         R10 1
      190 MOVE                             R11 R7
      191 GETUPVAL                         R12 5
      192 GETUPVAL                         R13 7
      193 MOVE                             R14 R3
      194 MOVE                             R15 R4
      195 GETUPVAL                         R16 19
      196 NAMECALL                         R8 R8 K24 ["postBundleCreationContext"]
      198 CALL                             R8 8 1
      199 MOVE                             R10 R5
      200 MOVE                             R11 R6
      201 NAMECALL                         R8 R8 K25 ["andThen"]
      203 CALL                             R8 3 -1
      204 RETURN                           R8 -1

PROTO_14:
        0 NEWCLOSURE                       R11 P0
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
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          VAL R6
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          VAL R10
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          VAL R9
       24 CAPTURE                          UPVAL U15
       25 CAPTURE                          UPVAL U16
       26 CAPTURE                          UPVAL U17
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R7
       29 CAPTURE                          VAL R8
       30 CAPTURE                          UPVAL U18
       31 CAPTURE                          UPVAL U19
       32 CAPTURE                          UPVAL U20
       33 CAPTURE                          UPVAL U21
       34 CAPTURE                          UPVAL U22
       35 CAPTURE                          UPVAL U23
       36 CAPTURE                          UPVAL U24
       37 CLOSEUPVALS                      R3
       38 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["PublishService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Toolbox"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R4 R2 K9 ["Src"]
       21 GETTABLEKS                       R3 R4 K10 ["Actions"]
       23 GETIMPORT                        R4 K12 [require]
       25 GETTABLEKS                       R5 R3 K13 ["NetworkError"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K12 [require]
       30 GETTABLEKS                       R6 R3 K14 ["SetCurrentScreen"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K12 [require]
       35 GETTABLEKS                       R7 R3 K15 ["UploadResult"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K12 [require]
       40 GETTABLEKS                       R8 R3 K16 ["SetProgressBarInfo"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K12 [require]
       45 GETTABLEKS                       R11 R2 K9 ["Src"]
       47 GETTABLEKS                       R10 R11 K17 ["Localization"]
       49 GETTABLEKS                       R9 R10 K18 ["getLocalizedAssetTextMap"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R11 R2 K9 ["Src"]
       54 GETTABLEKS                       R10 R11 K19 ["Networking"]
       56 GETTABLEKS                       R9 R10 K20 ["Requests"]
       58 GETIMPORT                        R10 K12 [require]
       60 GETTABLEKS                       R11 R9 K21 ["UGCCreateBundleRequest"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R12 R2 K9 ["Src"]
       65 GETTABLEKS                       R11 R12 K22 ["Util"]
       67 GETIMPORT                        R12 K12 [require]
       69 GETTABLEKS                       R14 R11 K23 ["Analytics"]
       71 GETTABLEKS                       R13 R14 K23 ["Analytics"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K12 [require]
       76 GETTABLEKS                       R14 R11 K24 ["AssetConfigConstants"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K12 [require]
       81 GETTABLEKS                       R15 R11 K25 ["AssetConfigUtil"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K12 [require]
       86 GETTABLEKS                       R16 R11 K26 ["DebugFlags"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K12 [require]
       91 GETTABLEKS                       R17 R11 K27 ["getUserId"]
       93 CALL                             R16 1 1
       94 GETTABLEKS                       R17 R2 K28 ["Packages"]
       96 GETIMPORT                        R20 K12 [require]
       98 GETTABLEKS                       R21 R17 K29 ["Framework"]
      100 CALL                             R20 1 1
      101 GETTABLEKS                       R19 R20 K22 ["Util"]
      103 GETTABLEKS                       R18 R19 K30 ["Promise"]
      105 GETIMPORT                        R19 K12 [require]
      107 GETTABLEKS                       R20 R17 K31 ["UGCValidation"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K12 [require]
      112 GETTABLEKS                       R22 R11 K32 ["SharedFlags"]
      114 GETTABLEKS                       R21 R22 K33 ["getFFlagEnableUGCUploadFlowAnalytics"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K12 [require]
      119 GETTABLEKS                       R23 R11 K32 ["SharedFlags"]
      121 GETTABLEKS                       R22 R23 K34 ["getFFlagAddPublishServiceErrorToUploadFailureMsg"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K12 [require]
      126 GETTABLEKS                       R24 R11 K32 ["SharedFlags"]
      128 GETTABLEKS                       R23 R24 K35 ["getFFlagEnableNewToolboxCreationContextErrors"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K12 [require]
      133 GETTABLEKS                       R25 R11 K32 ["SharedFlags"]
      135 GETTABLEKS                       R24 R25 K36 ["getFFlagEnableUGCBundleUploadBodyScale"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K12 [require]
      140 GETTABLEKS                       R26 R11 K32 ["SharedFlags"]
      142 GETTABLEKS                       R25 R26 K37 ["getFFlagEnableBodyColorSetUploadSupport"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K12 [require]
      147 GETTABLEKS                       R28 R2 K9 ["Src"]
      149 GETTABLEKS                       R27 R28 K38 ["Flags"]
      151 GETTABLEKS                       R26 R27 K39 ["getFFlagEnableUploadingGroupBundles"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K12 [require]
      156 GETTABLEKS                       R29 R2 K9 ["Src"]
      158 GETTABLEKS                       R28 R29 K38 ["Flags"]
      160 GETTABLEKS                       R27 R28 K40 ["getFFlagEnableUploadingShoes"]
      162 CALL                             R26 1 1
      163 GETIMPORT                        R27 K12 [require]
      165 GETTABLEKS                       R28 R11 K41 ["getRobuxMessageToAppend"]
      167 CALL                             R27 1 1
      168 DUPTABLE                         R28 K44 [{"bundlePartsUploadError", "bundleUploadAssetsStep"}]
      169 DUPTABLE                         R29 K48 [{"Body", "DynamicHead", "Shoes"}]
      170 LOADK                            R30 K49 ["BundlePartsUploadError"]
      171 SETTABLEKS                       R30 R29 K45 ["Body"]
      173 LOADK                            R30 K49 ["BundlePartsUploadError"]
      174 SETTABLEKS                       R30 R29 K46 ["DynamicHead"]
      176 LOADK                            R30 K50 ["ShoesBundlePartsUploadError"]
      177 SETTABLEKS                       R30 R29 K47 ["Shoes"]
      179 SETTABLEKS                       R29 R28 K42 ["bundlePartsUploadError"]
      181 DUPTABLE                         R29 K48 [{"Body", "DynamicHead", "Shoes"}]
      182 LOADK                            R30 K51 ["BundleUploadAssetsStep"]
      183 SETTABLEKS                       R30 R29 K45 ["Body"]
      185 LOADK                            R30 K51 ["BundleUploadAssetsStep"]
      186 SETTABLEKS                       R30 R29 K46 ["DynamicHead"]
      188 LOADK                            R30 K52 ["ShoesBundleUploadAssetsStep"]
      189 SETTABLEKS                       R30 R29 K47 ["Shoes"]
      191 SETTABLEKS                       R29 R28 K43 ["bundleUploadAssetsStep"]
      193 DUPCLOSURE                       R29 K53 [PROTO_0]
      194 DUPCLOSURE                       R30 K54 [PROTO_1]
      195 DUPCLOSURE                       R31 K55 [PROTO_2]
      196 DUPCLOSURE                       R32 K56 [PROTO_3]
      197 DUPCLOSURE                       R33 K57 [PROTO_4]
      198 DUPCLOSURE                       R34 K58 [PROTO_5]
      199 CAPTURE                          VAL R23
      200 CAPTURE                          VAL R24
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R27
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R29
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R6
      210 DUPCLOSURE                       R35 K59 [PROTO_14]
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R26
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R33
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R29
      234 CAPTURE                          VAL R34
      235 CAPTURE                          VAL R5
      236 RETURN                           R35 1
