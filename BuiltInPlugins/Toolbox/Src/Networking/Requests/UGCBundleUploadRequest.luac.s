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
       40 LOADK                            R8 K13 ["CreationContextMissingIDVerification"]
       41 SETTABLEN                        R8 R7 106
       42 LOADK                            R8 K14 ["CreationContextAccessBlocked"]
       43 SETTABLEN                        R8 R7 107
       44 GETUPVAL                         R8 2
       45 CALL                             R8 0 1
       46 JUMPIFNOT                        R8 ; [+4]
       47 LOADK                            R8 K15 ["CreationContextMissingPremium"]
       48 SETTABLEN                        R8 R7 108
       49 LOADK                            R8 K16 ["CreationContextMissingGroupPermission"]
       50 SETTABLEN                        R8 R7 111
       51 NEWTABLE                         R8 1 0
       53 LOADK                            R9 K17 ["CreationContextDailyLimitReached"]
       54 SETTABLEN                        R9 R8 11
       55 NEWTABLE                         R9 0 1
       57 LOADK                            R10 K18 ["CreationContextServiceUnavailable"]
       58 SETTABLEN                        R10 R9 1
       59 NEWTABLE                         R10 8 0
       61 LOADN                            R11 144
       62 SETTABLE                         R5 R10 R11
       63 LOADN                            R11 145
       64 SETTABLE                         R6 R10 R11
       65 LOADN                            R11 147
       66 SETTABLE                         R7 R10 R11
       67 LOADN                            R11 156
       68 SETTABLE                         R8 R10 R11
       69 LOADN                            R11 247
       70 SETTABLE                         R9 R10 R11
       71 LOADNIL                          R11
       72 GETTABLEKS                       R13 R2 K19 ["StatusCode"]
       74 GETTABLE                         R12 R10 R13
       75 JUMPIFEQKNIL                     R12 ; [+50]
       77 GETTABLEKS                       R13 R2 K20 ["Body"]
       79 JUMPIFEQKNIL                     R13 ; [+46]
       81 GETTABLEKS                       R14 R2 K20 ["Body"]
       83 GETTABLEKS                       R13 R14 K21 ["errors"]
       85 JUMPIFEQKNIL                     R13 ; [+40]
       87 GETTABLEKS                       R16 R2 K20 ["Body"]
       89 GETTABLEKS                       R13 R16 K21 ["errors"]
       91 LOADNIL                          R14
       92 LOADNIL                          R15
       93 FORGPREP                         R13
       94 GETTABLEKS                       R19 R17 K22 ["code"]
       96 GETTABLE                         R18 R12 R19
       97 JUMPIFEQKNIL                     R18 ; [+18]
       99 JUMPIFNOTEQKNIL                  R11 ; [+8]
      101 LOADK                            R21 K23 ["AssetConfig"]
      102 MOVE                             R22 R18
      103 NAMECALL                         R19 R1 K24 ["getText"]
      105 CALL                             R19 3 1
      106 MOVE                             R11 R19
      107 JUMP                             ; [+8]
      108 MOVE                             R19 R11
      109 LOADK                            R20 K25 ["\n"]
      110 LOADK                            R23 K23 ["AssetConfig"]
      111 MOVE                             R24 R18
      112 NAMECALL                         R21 R1 K24 ["getText"]
      114 CALL                             R21 3 1
      115 CONCAT                           R11 R19 R21
      116 FORGLOOP                         R13 2 ; [-23]
      118 JUMPIFEQKNIL                     R11 ; [+7]
      120 MOVE                             R13 R11
      121 GETUPVAL                         R14 3
      122 MOVE                             R15 R4
      123 MOVE                             R16 R1
      124 CALL                             R14 2 1
      125 CONCAT                           R11 R13 R14
      126 GETUPVAL                         R13 4
      127 CALL                             R13 0 1
      128 JUMPIFNOT                        R13 ; [+14]
      129 GETUPVAL                         R14 5
      130 GETTABLEKS                       R13 R14 K26 ["UGCUploadRequestOperationIdEvent"]
      132 GETUPVAL                         R16 5
      133 GETTABLEKS                       R15 R16 K27 ["Status"]
      135 GETTABLEKS                       R14 R15 K28 ["Failure"]
      137 MOVE                             R15 R3
      138 LOADNIL                          R16
      139 GETUPVAL                         R17 6
      140 MOVE                             R18 R2
      141 CALL                             R17 1 1
      142 CALL                             R13 4 0
      143 GETUPVAL                         R14 7
      144 GETTABLEKS                       R13 R14 K29 ["shouldDebugWarnings"]
      146 CALL                             R13 0 1
      147 JUMPIFNOT                        R13 ; [+5]
      148 GETIMPORT                        R13 K31 [warn]
      150 LOADK                            R14 K32 ["Could not create UGC Bundle context and received response:"]
      151 MOVE                             R15 R2
      152 CALL                             R13 2 0
      153 JUMPIFEQKNIL                     R11 ; [+8]
      155 GETUPVAL                         R15 8
      156 MOVE                             R16 R11
      157 CALL                             R15 1 -1
      158 NAMECALL                         R13 R0 K33 ["dispatch"]
      160 CALL                             R13 -1 0
      161 JUMP                             ; [+16]
      162 GETUPVAL                         R15 8
      163 LOADK                            R21 K23 ["AssetConfig"]
      164 LOADK                            R22 K34 ["BundleContextCreationError"]
      165 NAMECALL                         R19 R1 K24 ["getText"]
      167 CALL                             R19 3 1
      168 MOVE                             R17 R19
      169 GETUPVAL                         R18 3
      170 MOVE                             R19 R4
      171 MOVE                             R20 R1
      172 CALL                             R18 2 1
      173 CONCAT                           R16 R17 R18
      174 CALL                             R15 1 -1
      175 NAMECALL                         R13 R0 K33 ["dispatch"]
      177 CALL                             R13 -1 0
      178 GETUPVAL                         R15 9
      179 LOADB                            R16 0
      180 CALL                             R15 1 -1
      181 NAMECALL                         R13 R0 K33 ["dispatch"]
      183 CALL                             R13 -1 0
      184 RETURN                           R0 0

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
       14 JUMPIFNOT                        R0 ; [+93]
       15 JUMPIFEQKNIL                     R1 ; [+92]
       17 JUMPIFEQKN                       R1 K2 [0] ; [+90]
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
       92 GETUPVAL                         R13 18
       93 GETTABLEKS                       R12 R13 K26 ["bundleUploadAssetsStep"]
       95 GETUPVAL                         R13 19
       96 GETTABLE                         R11 R12 R13
       97 NAMECALL                         R8 R8 K25 ["getText"]
       99 CALL                             R8 3 -1
      100 CALL                             R5 -1 -1
      101 NAMECALL                         R3 R3 K27 ["dispatch"]
      103 CALL                             R3 -1 0
      104 GETUPVAL                         R3 20
      105 MOVE                             R4 R1
      106 CALL                             R3 1 0
      107 RETURN                           R0 0
      108 GETUPVAL                         R2 21
      109 MOVE                             R3 R1
      110 CALL                             R2 1 0
      111 RETURN                           R0 0

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
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

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
       94 GETUPVAL                         R12 17
       95 GETTABLEKS                       R11 R12 K19 ["bundlePartsUploadError"]
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
       27 GETUPVAL                         R3 6
       28 GETUPVAL                         R9 7
       29 LOADK                            R11 K7 ["AssetConfig"]
       30 GETUPVAL                         R14 8
       31 GETTABLEKS                       R13 R14 K8 ["bundlePartsUploadError"]
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
        0 JUMPIFNOT                        R0 ; [+227]
        1 GETTABLEKS                       R1 R0 K0 ["operationId"]
        3 JUMPIFNOT                        R1 ; [+224]
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
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R4 R5 K9 ["isUGCBodyBundleType"]
       41 GETUPVAL                         R5 7
       42 CALL                             R4 1 1
       43 JUMPIFNOT                        R4 ; [+12]
       44 GETUPVAL                         R6 8
       45 GETTABLEKS                       R5 R6 K10 ["util"]
       47 GETTABLEKS                       R4 R5 K11 ["createUGCBodyPartFolders"]
       49 GETUPVAL                         R5 6
       50 GETUPVAL                         R6 9
       51 GETUPVAL                         R7 4
       52 LOADB                            R8 1
       53 CALL                             R4 4 1
       54 MOVE                             R3 R4
       55 JUMP                             ; [+8]
       56 GETUPVAL                         R5 5
       57 GETTABLEKS                       R4 R5 K12 ["createUGCShoesPartFolders"]
       59 GETUPVAL                         R5 6
       60 GETUPVAL                         R6 9
       61 GETUPVAL                         R7 7
       62 CALL                             R4 3 1
       63 MOVE                             R3 R4
       64 GETUPVAL                         R4 10
       65 GETUPVAL                         R6 11
       66 LOADK                            R7 K13 [0.05]
       67 GETUPVAL                         R8 12
       68 LOADK                            R10 K14 ["AssetConfig"]
       69 LOADK                            R11 K15 ["BundleUploadStepNumber"]
       70 DUPTABLE                         R12 K18 [{"currentStep", "totalSteps"}]
       71 LOADN                            R13 2
       72 SETTABLEKS                       R13 R12 K16 ["currentStep"]
       74 LOADN                            R13 4
       75 SETTABLEKS                       R13 R12 K17 ["totalSteps"]
       77 NAMECALL                         R8 R8 K19 ["getText"]
       79 CALL                             R8 4 1
       80 GETUPVAL                         R9 12
       81 LOADK                            R11 K14 ["AssetConfig"]
       82 GETUPVAL                         R14 13
       83 GETTABLEKS                       R13 R14 K20 ["bundleUploadAssetsStep"]
       85 GETUPVAL                         R14 4
       86 GETTABLE                         R12 R13 R14
       87 NAMECALL                         R9 R9 K19 ["getText"]
       89 CALL                             R9 3 -1
       90 CALL                             R6 -1 -1
       91 NAMECALL                         R4 R4 K21 ["dispatch"]
       93 CALL                             R4 -1 0
       94 GETUPVAL                         R4 2
       95 CALL                             R4 0 1
       96 JUMPIFNOT                        R4 ; [+11]
       97 GETUPVAL                         R5 3
       98 GETTABLEKS                       R4 R5 K22 ["UGCUploadAssetsEvent"]
      100 GETUPVAL                         R7 3
      101 GETTABLEKS                       R6 R7 K6 ["Status"]
      103 GETTABLEKS                       R5 R6 K23 ["Start"]
      105 GETUPVAL                         R6 4
      106 MOVE                             R7 R1
      107 CALL                             R4 3 0
      108 GETIMPORT                        R4 K27 [Enum.AssetCreatorType.User]
      110 MOVE                             R5 R2
      111 GETUPVAL                         R6 14
      112 CALL                             R6 0 1
      113 JUMPIFNOT                        R6 ; [+13]
      114 GETUPVAL                         R7 10
      115 NAMECALL                         R7 R7 K28 ["getState"]
      117 CALL                             R7 1 1
      118 GETTABLEKS                       R6 R7 K29 ["groupBundlesUploadEnabledForUser"]
      120 JUMPIFNOT                        R6 ; [+6]
      121 GETUPVAL                         R7 15
      122 JUMPIFEQKNIL                     R7 ; [+4]
      124 GETIMPORT                        R4 K31 [Enum.AssetCreatorType.Group]
      126 GETUPVAL                         R5 15
      127 NEWTABLE                         R6 0 0
      129 LOADN                            R7 0
      130 NEWTABLE                         R8 0 0
      132 GETIMPORT                        R9 K33 [pairs]
      134 MOVE                             R10 R3
      135 CALL                             R9 1 3
      136 FORGPREP_NEXT                    R9
      137 GETUPVAL                         R15 16
      138 GETUPVAL                         R16 12
      139 CALL                             R15 1 1
      140 GETTABLE                         R14 R15 R12
      141 JUMPIF                           R14 ; [+2]
      142 GETTABLEKS                       R14 R12 K34 ["Name"]
      144 ADDK                             R7 R7 K35 [1]
      145 LOADK                            R16 K36 ["%* - %*"]
      146 GETUPVAL                         R18 17
      147 MOVE                             R19 R14
      148 NAMECALL                         R16 R16 K37 ["format"]
      150 CALL                             R16 3 1
      151 MOVE                             R15 R16
      152 MOVE                             R17 R8
      153 GETUPVAL                         R19 18
      154 GETTABLEKS                       R18 R19 K38 ["new"]
      156 NEWCLOSURE                       R19 P0
      157 CAPTURE                          UPVAL U14
      158 CAPTURE                          UPVAL U19
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R1
      161 CAPTURE                          REF R4
      162 CAPTURE                          REF R5
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R15
      165 CAPTURE                          UPVAL U20
      166 CAPTURE                          UPVAL U21
      167 CAPTURE                          UPVAL U1
      168 CAPTURE                          UPVAL U22
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          VAL R6
      171 CAPTURE                          UPVAL U10
      172 CAPTURE                          UPVAL U11
      173 CAPTURE                          REF R7
      174 CAPTURE                          UPVAL U12
      175 CAPTURE                          UPVAL U13
      176 CAPTURE                          UPVAL U4
      177 CALL                             R18 1 -1
      178 FASTCALL                         TABLE_INSERT ; [+2]
      179 GETIMPORT                        R16 K41 [table.insert]
      181 CALL                             R16 -1 0
      182 FORGLOOP                         R9 2 ; [-46]
      184 GETUPVAL                         R10 18
      185 GETTABLEKS                       R9 R10 K42 ["all"]
      187 MOVE                             R10 R8
      188 CALL                             R9 1 1
      189 NEWCLOSURE                       R11 P1
      190 CAPTURE                          REF R7
      191 CAPTURE                          VAL R6
      192 CAPTURE                          UPVAL U2
      193 CAPTURE                          UPVAL U3
      194 CAPTURE                          UPVAL U4
      195 CAPTURE                          VAL R1
      196 CAPTURE                          UPVAL U10
      197 CAPTURE                          UPVAL U23
      198 CAPTURE                          UPVAL U24
      199 CAPTURE                          UPVAL U7
      200 CAPTURE                          UPVAL U17
      201 CAPTURE                          UPVAL U20
      202 CAPTURE                          UPVAL U12
      203 CAPTURE                          UPVAL U25
      204 CAPTURE                          UPVAL U26
      205 CAPTURE                          UPVAL U1
      206 CAPTURE                          UPVAL U27
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          UPVAL U28
      209 CAPTURE                          UPVAL U29
      210 NEWCLOSURE                       R12 P2
      211 CAPTURE                          UPVAL U2
      212 CAPTURE                          UPVAL U3
      213 CAPTURE                          UPVAL U4
      214 CAPTURE                          VAL R1
      215 CAPTURE                          UPVAL U1
      216 CAPTURE                          UPVAL U10
      217 CAPTURE                          UPVAL U27
      218 CAPTURE                          UPVAL U12
      219 CAPTURE                          UPVAL U13
      220 CAPTURE                          UPVAL U28
      221 CAPTURE                          UPVAL U25
      222 CAPTURE                          UPVAL U29
      223 NAMECALL                         R9 R9 K43 ["andThen"]
      225 CALL                             R9 3 0
      226 CLOSEUPVALS                      R4
      227 RETURN                           R0 0
      228 GETUPVAL                         R2 1
      229 GETTABLEKS                       R1 R2 K1 ["shouldDebugWarnings"]
      231 CALL                             R1 0 1
      232 JUMPIFNOT                        R1 ; [+5]
      233 GETIMPORT                        R1 K3 [warn]
      235 LOADK                            R2 K44 ["Unexpected UGCBundleUploadRequest response:"]
      236 MOVE                             R3 R0
      237 CALL                             R1 2 0
      238 GETUPVAL                         R1 2
      239 CALL                             R1 0 1
      240 JUMPIFNOT                        R1 ; [+14]
      241 GETUPVAL                         R2 3
      242 GETTABLEKS                       R1 R2 K5 ["UGCUploadRequestOperationIdEvent"]
      244 GETUPVAL                         R4 3
      245 GETTABLEKS                       R3 R4 K6 ["Status"]
      247 GETTABLEKS                       R2 R3 K45 ["Failure"]
      249 GETUPVAL                         R3 4
      250 LOADNIL                          R4
      251 GETUPVAL                         R5 30
      252 MOVE                             R6 R0
      253 CALL                             R5 1 1
      254 CALL                             R1 4 0
      255 GETUPVAL                         R1 10
      256 GETUPVAL                         R3 27
      257 GETUPVAL                         R7 12
      258 LOADK                            R9 K14 ["AssetConfig"]
      259 LOADK                            R10 K46 ["ValidationErrorUnknown"]
      260 NAMECALL                         R7 R7 K19 ["getText"]
      262 CALL                             R7 3 1
      263 MOVE                             R5 R7
      264 GETUPVAL                         R6 28
      265 GETUPVAL                         R7 25
      266 GETUPVAL                         R8 12
      267 CALL                             R6 2 1
      268 CONCAT                           R4 R5 R6
      269 CALL                             R3 1 -1
      270 NAMECALL                         R1 R1 K21 ["dispatch"]
      272 CALL                             R1 -1 0
      273 GETUPVAL                         R1 10
      274 GETUPVAL                         R3 29
      275 LOADB                            R4 0
      276 CALL                             R3 1 -1
      277 NAMECALL                         R1 R1 K21 ["dispatch"]
      279 CALL                             R1 -1 0
      280 RETURN                           R0 0

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
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U14
       68 CAPTURE                          UPVAL U15
       69 CAPTURE                          UPVAL U16
       70 CAPTURE                          UPVAL U17
       71 CAPTURE                          UPVAL U18
       72 CAPTURE                          UPVAL U19
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U20
       75 CAPTURE                          UPVAL U21
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          UPVAL U22
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
       91 CAPTURE                          UPVAL U15
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U26
       94 GETUPVAL                         R9 14
       95 LOADN                            R10 0
       96 GETUPVAL                         R11 15
       97 LOADK                            R13 K8 ["AssetConfig"]
       98 LOADK                            R14 K9 ["BundleUploadStepNumber"]
       99 DUPTABLE                         R15 K12 [{"currentStep", "totalSteps"}]
      100 LOADN                            R16 1
      101 SETTABLEKS                       R16 R15 K10 ["currentStep"]
      103 LOADN                            R16 4
      104 SETTABLEKS                       R16 R15 K11 ["totalSteps"]
      106 NAMECALL                         R11 R11 K13 ["getText"]
      108 CALL                             R11 4 1
      109 GETUPVAL                         R12 15
      110 LOADK                            R14 K8 ["AssetConfig"]
      111 LOADK                            R15 K14 ["BundleUploadPrepareStep"]
      112 NAMECALL                         R12 R12 K13 ["getText"]
      114 CALL                             R12 3 -1
      115 CALL                             R9 -1 -1
      116 NAMECALL                         R7 R0 K15 ["dispatch"]
      118 CALL                             R7 -1 0
      119 GETUPVAL                         R9 33
      120 GETUPVAL                         R12 6
      121 GETTABLEKS                       R11 R12 K16 ["SCREENS"]
      123 GETTABLEKS                       R10 R11 K17 ["UPLOADING_ASSET"]
      125 CALL                             R9 1 -1
      126 NAMECALL                         R7 R0 K15 ["dispatch"]
      128 CALL                             R7 -1 0
      129 GETUPVAL                         R8 0
      130 GETTABLEKS                       R7 R8 K18 ["getUGCBundleAssetQuantities"]
      132 MOVE                             R8 R2
      133 GETUPVAL                         R9 13
      134 GETUPVAL                         R10 1
      135 CALL                             R7 3 1
      136 JUMPIFNOTEQKNIL                  R7 ; [+25]
      138 GETUPVAL                         R10 28
      139 GETUPVAL                         R14 15
      140 LOADK                            R16 K8 ["AssetConfig"]
      141 LOADK                            R17 K19 ["ValidationErrorUnknown"]
      142 NAMECALL                         R14 R14 K13 ["getText"]
      144 CALL                             R14 3 1
      145 MOVE                             R12 R14
      146 GETUPVAL                         R13 29
      147 GETUPVAL                         R14 26
      148 GETUPVAL                         R15 15
      149 CALL                             R13 2 1
      150 CONCAT                           R11 R12 R13
      151 CALL                             R10 1 -1
      152 NAMECALL                         R8 R0 K15 ["dispatch"]
      154 CALL                             R8 -1 0
      155 GETUPVAL                         R10 30
      156 LOADB                            R11 0
      157 CALL                             R10 1 -1
      158 NAMECALL                         R8 R0 K15 ["dispatch"]
      160 CALL                             R8 -1 0
      161 RETURN                           R0 0
      162 GETUPVAL                         R8 10
      163 CALL                             R8 0 1
      164 JUMPIFNOT                        R8 ; [+10]
      165 GETUPVAL                         R9 11
      166 GETTABLEKS                       R8 R9 K20 ["UGCUploadRequestOperationIdEvent"]
      168 GETUPVAL                         R11 11
      169 GETTABLEKS                       R10 R11 K21 ["Status"]
      171 GETTABLEKS                       R9 R10 K22 ["Start"]
      173 MOVE                             R10 R1
      174 CALL                             R8 2 0
      175 GETUPVAL                         R8 25
      176 GETUPVAL                         R10 1
      177 MOVE                             R11 R7
      178 GETUPVAL                         R12 5
      179 GETUPVAL                         R13 7
      180 MOVE                             R14 R3
      181 MOVE                             R15 R4
      182 GETUPVAL                         R16 18
      183 NAMECALL                         R8 R8 K23 ["postBundleCreationContext"]
      185 CALL                             R8 8 1
      186 MOVE                             R10 R5
      187 MOVE                             R11 R6
      188 NAMECALL                         R8 R8 K24 ["andThen"]
      190 CALL                             R8 3 -1
      191 RETURN                           R8 -1

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
       14 CAPTURE                          VAL R5
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          VAL R6
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          VAL R10
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          VAL R9
       23 CAPTURE                          UPVAL U14
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
       35 CLOSEUPVALS                      R3
       36 RETURN                           R11 1

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
      121 GETTABLEKS                       R22 R23 K34 ["getFFlagEnableUGCBundleUploadBodyScale"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K12 [require]
      126 GETTABLEKS                       R24 R11 K32 ["SharedFlags"]
      128 GETTABLEKS                       R23 R24 K35 ["getFFlagEnableBodyColorSetUploadSupport"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K12 [require]
      133 GETTABLEKS                       R26 R2 K9 ["Src"]
      135 GETTABLEKS                       R25 R26 K36 ["Flags"]
      137 GETTABLEKS                       R24 R25 K37 ["getFFlagEnableUploadingGroupBundles"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K12 [require]
      142 GETTABLEKS                       R25 R11 K38 ["getRobuxMessageToAppend"]
      144 CALL                             R24 1 1
      145 DUPTABLE                         R25 K41 [{"bundlePartsUploadError", "bundleUploadAssetsStep"}]
      146 DUPTABLE                         R26 K45 [{"Body", "DynamicHead", "Shoes"}]
      147 LOADK                            R27 K46 ["BundlePartsUploadError"]
      148 SETTABLEKS                       R27 R26 K42 ["Body"]
      150 LOADK                            R27 K46 ["BundlePartsUploadError"]
      151 SETTABLEKS                       R27 R26 K43 ["DynamicHead"]
      153 LOADK                            R27 K47 ["ShoesBundlePartsUploadError"]
      154 SETTABLEKS                       R27 R26 K44 ["Shoes"]
      156 SETTABLEKS                       R26 R25 K39 ["bundlePartsUploadError"]
      158 DUPTABLE                         R26 K45 [{"Body", "DynamicHead", "Shoes"}]
      159 LOADK                            R27 K48 ["BundleUploadAssetsStep"]
      160 SETTABLEKS                       R27 R26 K42 ["Body"]
      162 LOADK                            R27 K48 ["BundleUploadAssetsStep"]
      163 SETTABLEKS                       R27 R26 K43 ["DynamicHead"]
      165 LOADK                            R27 K49 ["ShoesBundleUploadAssetsStep"]
      166 SETTABLEKS                       R27 R26 K44 ["Shoes"]
      168 SETTABLEKS                       R26 R25 K40 ["bundleUploadAssetsStep"]
      170 DUPCLOSURE                       R26 K50 [PROTO_0]
      171 DUPCLOSURE                       R27 K51 [PROTO_1]
      172 DUPCLOSURE                       R28 K52 [PROTO_2]
      173 DUPCLOSURE                       R29 K53 [PROTO_3]
      174 DUPCLOSURE                       R30 K54 [PROTO_4]
      175 DUPCLOSURE                       R31 K55 [PROTO_5]
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R6
      186 DUPCLOSURE                       R32 K56 [PROTO_14]
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R30
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R31
      209 CAPTURE                          VAL R5
      210 RETURN                           R32 1
