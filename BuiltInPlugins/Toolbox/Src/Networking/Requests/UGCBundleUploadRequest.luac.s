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
       81 GETTABLEKS                       R13 R2 K20 ["Body"]
       83 GETTABLEKS                       R13 R13 K21 ["errors"]
       85 JUMPIFEQKNIL                     R13 ; [+40]
       87 GETTABLEKS                       R13 R2 K20 ["Body"]
       89 GETTABLEKS                       R13 R13 K21 ["errors"]
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
      129 GETUPVAL                         R13 5
      130 GETTABLEKS                       R13 R13 K26 ["UGCUploadRequestOperationIdEvent"]
      132 GETUPVAL                         R14 5
      133 GETTABLEKS                       R14 R14 K27 ["Status"]
      135 GETTABLEKS                       R14 R14 K28 ["Failure"]
      137 MOVE                             R15 R3
      138 LOADNIL                          R16
      139 GETUPVAL                         R17 6
      140 MOVE                             R18 R2
      141 CALL                             R17 1 1
      142 CALL                             R13 4 0
      143 GETUPVAL                         R13 7
      144 GETTABLEKS                       R13 R13 K29 ["shouldDebugWarnings"]
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
        8 GETUPVAL                         R6 6
        9 GETTABLEKS                       R6 R6 K0 ["Name"]
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
       22 GETUPVAL                         R6 6
       23 GETTABLEKS                       R6 R6 K0 ["Name"]
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
       19 GETUPVAL                         R2 10
       20 GETTABLEKS                       R2 R2 K3 ["shouldDebugWarnings"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETIMPORT                        R2 K5 [warn]
       26 LOADK                            R3 K6 ["Received an assetId for an uploaded UGC bundle part:"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 11
       30 GETUPVAL                         R3 2
       31 CALL                             R2 1 1
       32 GETUPVAL                         R3 12
       33 GETTABLEKS                       R3 R3 K7 ["UGCIndividualAssetUploadEvent"]
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
       93 GETTABLEKS                       R12 R12 K26 ["bundleUploadAssetsStep"]
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
        0 JUMPIFNOT                        R0 ; [+245]
        1 GETTABLEKS                       R1 R0 K0 ["operationId"]
        3 JUMPIFNOT                        R1 ; [+242]
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
       88 DUPTABLE                         R12 K20 [{"currentStep", "totalSteps"}]
       89 LOADN                            R13 2
       90 SETTABLEKS                       R13 R12 K18 ["currentStep"]
       92 LOADN                            R13 4
       93 SETTABLEKS                       R13 R12 K19 ["totalSteps"]
       95 NAMECALL                         R8 R8 K21 ["getText"]
       97 CALL                             R8 4 1
       98 GETUPVAL                         R9 14
       99 LOADK                            R11 K16 ["AssetConfig"]
      100 GETUPVAL                         R13 15
      101 GETTABLEKS                       R13 R13 K22 ["bundleUploadAssetsStep"]
      103 GETUPVAL                         R14 4
      104 GETTABLE                         R12 R13 R14
      105 NAMECALL                         R9 R9 K21 ["getText"]
      107 CALL                             R9 3 -1
      108 CALL                             R6 -1 -1
      109 NAMECALL                         R4 R4 K23 ["dispatch"]
      111 CALL                             R4 -1 0
      112 GETUPVAL                         R4 2
      113 CALL                             R4 0 1
      114 JUMPIFNOT                        R4 ; [+11]
      115 GETUPVAL                         R4 3
      116 GETTABLEKS                       R4 R4 K24 ["UGCUploadAssetsEvent"]
      118 GETUPVAL                         R5 3
      119 GETTABLEKS                       R5 R5 K6 ["Status"]
      121 GETTABLEKS                       R5 R5 K25 ["Start"]
      123 GETUPVAL                         R6 4
      124 MOVE                             R7 R1
      125 CALL                             R4 3 0
      126 GETIMPORT                        R4 K29 [Enum.AssetCreatorType.User]
      128 MOVE                             R5 R2
      129 GETUPVAL                         R6 16
      130 CALL                             R6 0 1
      131 JUMPIFNOT                        R6 ; [+13]
      132 GETUPVAL                         R6 12
      133 NAMECALL                         R6 R6 K30 ["getState"]
      135 CALL                             R6 1 1
      136 GETTABLEKS                       R6 R6 K31 ["groupBundlesUploadEnabledForUser"]
      138 JUMPIFNOT                        R6 ; [+6]
      139 GETUPVAL                         R7 17
      140 JUMPIFEQKNIL                     R7 ; [+4]
      142 GETIMPORT                        R4 K33 [Enum.AssetCreatorType.Group]
      144 GETUPVAL                         R5 17
      145 NEWTABLE                         R6 0 0
      147 LOADN                            R7 0
      148 NEWTABLE                         R8 0 0
      150 GETIMPORT                        R9 K35 [pairs]
      152 MOVE                             R10 R3
      153 CALL                             R9 1 3
      154 FORGPREP_NEXT                    R9
      155 GETUPVAL                         R15 18
      156 GETUPVAL                         R16 14
      157 CALL                             R15 1 1
      158 GETTABLE                         R14 R15 R12
      159 JUMPIF                           R14 ; [+2]
      160 GETTABLEKS                       R14 R12 K36 ["Name"]
      162 ADDK                             R7 R7 K37 [1]
      163 LOADK                            R16 K38 ["%* - %*"]
      164 GETUPVAL                         R18 19
      165 MOVE                             R19 R14
      166 NAMECALL                         R16 R16 K39 ["format"]
      168 CALL                             R16 3 1
      169 MOVE                             R15 R16
      170 MOVE                             R17 R8
      171 GETUPVAL                         R18 20
      172 GETTABLEKS                       R18 R18 K40 ["new"]
      174 NEWCLOSURE                       R19 P0
      175 CAPTURE                          UPVAL U16
      176 CAPTURE                          UPVAL U21
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R1
      179 CAPTURE                          REF R4
      180 CAPTURE                          REF R5
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R15
      183 CAPTURE                          UPVAL U22
      184 CAPTURE                          UPVAL U23
      185 CAPTURE                          UPVAL U1
      186 CAPTURE                          UPVAL U24
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          VAL R6
      189 CAPTURE                          UPVAL U12
      190 CAPTURE                          UPVAL U13
      191 CAPTURE                          REF R7
      192 CAPTURE                          UPVAL U14
      193 CAPTURE                          UPVAL U15
      194 CAPTURE                          UPVAL U4
      195 CALL                             R18 1 -1
      196 FASTCALL                         TABLE_INSERT ; [+2]
      197 GETIMPORT                        R16 K43 [table.insert]
      199 CALL                             R16 -1 0
      200 FORGLOOP                         R9 2 ; [-46]
      202 GETUPVAL                         R9 20
      203 GETTABLEKS                       R9 R9 K44 ["all"]
      205 MOVE                             R10 R8
      206 CALL                             R9 1 1
      207 NEWCLOSURE                       R11 P1
      208 CAPTURE                          REF R7
      209 CAPTURE                          VAL R6
      210 CAPTURE                          UPVAL U2
      211 CAPTURE                          UPVAL U3
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          VAL R1
      214 CAPTURE                          UPVAL U12
      215 CAPTURE                          UPVAL U25
      216 CAPTURE                          UPVAL U26
      217 CAPTURE                          UPVAL U7
      218 CAPTURE                          UPVAL U19
      219 CAPTURE                          UPVAL U22
      220 CAPTURE                          UPVAL U14
      221 CAPTURE                          UPVAL U27
      222 CAPTURE                          UPVAL U28
      223 CAPTURE                          UPVAL U1
      224 CAPTURE                          UPVAL U29
      225 CAPTURE                          UPVAL U15
      226 CAPTURE                          UPVAL U30
      227 CAPTURE                          UPVAL U31
      228 NEWCLOSURE                       R12 P2
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U3
      231 CAPTURE                          UPVAL U4
      232 CAPTURE                          VAL R1
      233 CAPTURE                          UPVAL U1
      234 CAPTURE                          UPVAL U12
      235 CAPTURE                          UPVAL U29
      236 CAPTURE                          UPVAL U14
      237 CAPTURE                          UPVAL U15
      238 CAPTURE                          UPVAL U30
      239 CAPTURE                          UPVAL U27
      240 CAPTURE                          UPVAL U31
      241 NAMECALL                         R9 R9 K45 ["andThen"]
      243 CALL                             R9 3 0
      244 CLOSEUPVALS                      R4
      245 RETURN                           R0 0
      246 GETUPVAL                         R1 1
      247 GETTABLEKS                       R1 R1 K1 ["shouldDebugWarnings"]
      249 CALL                             R1 0 1
      250 JUMPIFNOT                        R1 ; [+5]
      251 GETIMPORT                        R1 K3 [warn]
      253 LOADK                            R2 K46 ["Unexpected UGCBundleUploadRequest response:"]
      254 MOVE                             R3 R0
      255 CALL                             R1 2 0
      256 GETUPVAL                         R1 2
      257 CALL                             R1 0 1
      258 JUMPIFNOT                        R1 ; [+14]
      259 GETUPVAL                         R1 3
      260 GETTABLEKS                       R1 R1 K5 ["UGCUploadRequestOperationIdEvent"]
      262 GETUPVAL                         R2 3
      263 GETTABLEKS                       R2 R2 K6 ["Status"]
      265 GETTABLEKS                       R2 R2 K47 ["Failure"]
      267 GETUPVAL                         R3 4
      268 LOADNIL                          R4
      269 GETUPVAL                         R5 32
      270 MOVE                             R6 R0
      271 CALL                             R5 1 1
      272 CALL                             R1 4 0
      273 GETUPVAL                         R1 12
      274 GETUPVAL                         R3 29
      275 GETUPVAL                         R7 14
      276 LOADK                            R9 K16 ["AssetConfig"]
      277 LOADK                            R10 K48 ["ValidationErrorUnknown"]
      278 NAMECALL                         R7 R7 K21 ["getText"]
      280 CALL                             R7 3 1
      281 MOVE                             R5 R7
      282 GETUPVAL                         R6 30
      283 GETUPVAL                         R7 27
      284 GETUPVAL                         R8 14
      285 CALL                             R6 2 1
      286 CONCAT                           R4 R5 R6
      287 CALL                             R3 1 -1
      288 NAMECALL                         R1 R1 K23 ["dispatch"]
      290 CALL                             R1 -1 0
      291 GETUPVAL                         R1 12
      292 GETUPVAL                         R3 31
      293 LOADB                            R4 0
      294 CALL                             R3 1 -1
      295 NAMECALL                         R1 R1 K23 ["dispatch"]
      297 CALL                             R1 -1 0
      298 RETURN                           R0 0

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
       74 CAPTURE                          UPVAL U21
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U22
       77 CAPTURE                          UPVAL U23
       78 CAPTURE                          UPVAL U7
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
       93 CAPTURE                          UPVAL U17
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U28
       96 GETUPVAL                         R9 16
       97 LOADN                            R10 0
       98 GETUPVAL                         R11 17
       99 LOADK                            R13 K8 ["AssetConfig"]
      100 LOADK                            R14 K9 ["BundleUploadStepNumber"]
      101 DUPTABLE                         R15 K12 [{"currentStep", "totalSteps"}]
      102 LOADN                            R16 1
      103 SETTABLEKS                       R16 R15 K10 ["currentStep"]
      105 LOADN                            R16 4
      106 SETTABLEKS                       R16 R15 K11 ["totalSteps"]
      108 NAMECALL                         R11 R11 K13 ["getText"]
      110 CALL                             R11 4 1
      111 GETUPVAL                         R12 17
      112 LOADK                            R14 K8 ["AssetConfig"]
      113 LOADK                            R15 K14 ["BundleUploadPrepareStep"]
      114 NAMECALL                         R12 R12 K13 ["getText"]
      116 CALL                             R12 3 -1
      117 CALL                             R9 -1 -1
      118 NAMECALL                         R7 R0 K15 ["dispatch"]
      120 CALL                             R7 -1 0
      121 GETUPVAL                         R9 35
      122 GETUPVAL                         R10 6
      123 GETTABLEKS                       R10 R10 K16 ["SCREENS"]
      125 GETTABLEKS                       R10 R10 K17 ["UPLOADING_ASSET"]
      127 CALL                             R9 1 -1
      128 NAMECALL                         R7 R0 K15 ["dispatch"]
      130 CALL                             R7 -1 0
      131 GETUPVAL                         R7 0
      132 GETTABLEKS                       R7 R7 K18 ["getUGCBundleAssetQuantities"]
      134 MOVE                             R8 R2
      135 GETUPVAL                         R9 13
      136 GETUPVAL                         R10 1
      137 CALL                             R7 3 1
      138 JUMPIFNOTEQKNIL                  R7 ; [+25]
      140 GETUPVAL                         R10 30
      141 GETUPVAL                         R14 17
      142 LOADK                            R16 K8 ["AssetConfig"]
      143 LOADK                            R17 K19 ["ValidationErrorUnknown"]
      144 NAMECALL                         R14 R14 K13 ["getText"]
      146 CALL                             R14 3 1
      147 MOVE                             R12 R14
      148 GETUPVAL                         R13 31
      149 GETUPVAL                         R14 28
      150 GETUPVAL                         R15 17
      151 CALL                             R13 2 1
      152 CONCAT                           R11 R12 R13
      153 CALL                             R10 1 -1
      154 NAMECALL                         R8 R0 K15 ["dispatch"]
      156 CALL                             R8 -1 0
      157 GETUPVAL                         R10 32
      158 LOADB                            R11 0
      159 CALL                             R10 1 -1
      160 NAMECALL                         R8 R0 K15 ["dispatch"]
      162 CALL                             R8 -1 0
      163 RETURN                           R0 0
      164 GETUPVAL                         R8 10
      165 CALL                             R8 0 1
      166 JUMPIFNOT                        R8 ; [+10]
      167 GETUPVAL                         R8 11
      168 GETTABLEKS                       R8 R8 K20 ["UGCUploadRequestOperationIdEvent"]
      170 GETUPVAL                         R9 11
      171 GETTABLEKS                       R9 R9 K21 ["Status"]
      173 GETTABLEKS                       R9 R9 K22 ["Start"]
      175 MOVE                             R10 R1
      176 CALL                             R8 2 0
      177 GETUPVAL                         R8 27
      178 GETUPVAL                         R10 1
      179 MOVE                             R11 R7
      180 GETUPVAL                         R12 5
      181 GETUPVAL                         R13 7
      182 MOVE                             R14 R3
      183 MOVE                             R15 R4
      184 GETUPVAL                         R16 20
      185 NAMECALL                         R8 R8 K23 ["postBundleCreationContext"]
      187 CALL                             R8 8 1
      188 MOVE                             R10 R5
      189 MOVE                             R11 R6
      190 NAMECALL                         R8 R8 K24 ["andThen"]
      192 CALL                             R8 3 -1
      193 RETURN                           R8 -1

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
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U11
       18 CAPTURE                          VAL R6
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          VAL R10
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          VAL R9
       25 CAPTURE                          UPVAL U16
       26 CAPTURE                          UPVAL U17
       27 CAPTURE                          UPVAL U18
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R7
       30 CAPTURE                          VAL R8
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
       19 GETTABLEKS                       R3 R2 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Actions"]
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
       45 GETTABLEKS                       R9 R2 K9 ["Src"]
       47 GETTABLEKS                       R9 R9 K17 ["Localization"]
       49 GETTABLEKS                       R9 R9 K18 ["getLocalizedAssetTextMap"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R2 K9 ["Src"]
       54 GETTABLEKS                       R9 R9 K19 ["Networking"]
       56 GETTABLEKS                       R9 R9 K20 ["Requests"]
       58 GETIMPORT                        R10 K12 [require]
       60 GETTABLEKS                       R11 R9 K21 ["UGCCreateBundleRequest"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R11 R2 K9 ["Src"]
       65 GETTABLEKS                       R11 R11 K22 ["Util"]
       67 GETIMPORT                        R12 K12 [require]
       69 GETTABLEKS                       R13 R11 K23 ["Analytics"]
       71 GETTABLEKS                       R13 R13 K23 ["Analytics"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K12 [require]
       76 GETTABLEKS                       R14 R11 K24 ["AssetConfigConstants"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K12 [require]
       81 GETTABLEKS                       R15 R11 K25 ["AssetConfigUtil"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K12 [require]
       86 GETTABLEKS                       R16 R11 K26 ["AnimationConfigUtil"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K12 [require]
       91 GETTABLEKS                       R17 R11 K27 ["DebugFlags"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K12 [require]
       96 GETTABLEKS                       R18 R11 K28 ["getUserId"]
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R18 R2 K29 ["Packages"]
      101 GETIMPORT                        R19 K12 [require]
      103 GETTABLEKS                       R20 R18 K30 ["Framework"]
      105 CALL                             R19 1 1
      106 GETTABLEKS                       R19 R19 K22 ["Util"]
      108 GETTABLEKS                       R19 R19 K31 ["Promise"]
      110 GETIMPORT                        R20 K12 [require]
      112 GETTABLEKS                       R21 R18 K32 ["UGCValidation"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K12 [require]
      117 GETTABLEKS                       R22 R11 K33 ["SharedFlags"]
      119 GETTABLEKS                       R22 R22 K34 ["getFFlagEnableUGCUploadFlowAnalytics"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K12 [require]
      124 GETTABLEKS                       R23 R11 K33 ["SharedFlags"]
      126 GETTABLEKS                       R23 R23 K35 ["getFFlagEnableUGCBundleUploadBodyScale"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K12 [require]
      131 GETTABLEKS                       R24 R11 K33 ["SharedFlags"]
      133 GETTABLEKS                       R24 R24 K36 ["getFFlagEnableBodyColorSetUploadSupport"]
      135 CALL                             R23 1 1
      136 GETIMPORT                        R24 K12 [require]
      138 GETTABLEKS                       R25 R2 K9 ["Src"]
      140 GETTABLEKS                       R25 R25 K37 ["Flags"]
      142 GETTABLEKS                       R25 R25 K38 ["getFFlagEnableUploadingGroupBundles"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K12 [require]
      147 GETTABLEKS                       R26 R2 K9 ["Src"]
      149 GETTABLEKS                       R26 R26 K37 ["Flags"]
      151 GETTABLEKS                       R26 R26 K39 ["getFFlagEnableUploadingAvatarAnimations"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K12 [require]
      156 GETTABLEKS                       R27 R11 K40 ["getRobuxMessageToAppend"]
      158 CALL                             R26 1 1
      159 DUPTABLE                         R27 K43 [{"bundlePartsUploadError", "bundleUploadAssetsStep"}]
      160 DUPTABLE                         R28 K47 [{"Body", "DynamicHead", "Shoes"}]
      161 LOADK                            R29 K48 ["BundlePartsUploadError"]
      162 SETTABLEKS                       R29 R28 K44 ["Body"]
      164 LOADK                            R29 K48 ["BundlePartsUploadError"]
      165 SETTABLEKS                       R29 R28 K45 ["DynamicHead"]
      167 LOADK                            R29 K49 ["ShoesBundlePartsUploadError"]
      168 SETTABLEKS                       R29 R28 K46 ["Shoes"]
      170 SETTABLEKS                       R28 R27 K41 ["bundlePartsUploadError"]
      172 DUPTABLE                         R28 K47 [{"Body", "DynamicHead", "Shoes"}]
      173 LOADK                            R29 K50 ["BundleUploadAssetsStep"]
      174 SETTABLEKS                       R29 R28 K44 ["Body"]
      176 LOADK                            R29 K50 ["BundleUploadAssetsStep"]
      177 SETTABLEKS                       R29 R28 K45 ["DynamicHead"]
      179 LOADK                            R29 K51 ["ShoesBundleUploadAssetsStep"]
      180 SETTABLEKS                       R29 R28 K46 ["Shoes"]
      182 SETTABLEKS                       R28 R27 K42 ["bundleUploadAssetsStep"]
      184 MOVE                             R28 R25
      185 CALL                             R28 0 1
      186 JUMPIFNOT                        R28 ; [+10]
      187 GETTABLEKS                       R28 R27 K41 ["bundlePartsUploadError"]
      189 LOADK                            R29 K48 ["BundlePartsUploadError"]
      190 SETTABLEKS                       R29 R28 K52 ["AvatarAnimations"]
      192 GETTABLEKS                       R28 R27 K42 ["bundleUploadAssetsStep"]
      194 LOADK                            R29 K50 ["BundleUploadAssetsStep"]
      195 SETTABLEKS                       R29 R28 K52 ["AvatarAnimations"]
      197 DUPCLOSURE                       R28 K53 [PROTO_0]
      198 DUPCLOSURE                       R29 K54 [PROTO_1]
      199 DUPCLOSURE                       R30 K55 [PROTO_2]
      200 DUPCLOSURE                       R31 K56 [PROTO_3]
      201 DUPCLOSURE                       R32 K57 [PROTO_4]
      202 DUPCLOSURE                       R33 K58 [PROTO_5]
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R26
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R28
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R6
      213 DUPCLOSURE                       R34 K59 [PROTO_14]
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R27
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R8
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R32
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R28
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R5
      239 RETURN                           R34 1
