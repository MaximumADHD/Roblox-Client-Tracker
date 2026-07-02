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
        0 NEWTABLE                         R7 8 0
        2 LOADK                            R8 K0 ["CreateBundleInvalidBundleName"]
        3 SETTABLEN                        R8 R7 2
        4 LOADK                            R8 K1 ["CreateBundleInvalidAssetIds"]
        5 SETTABLEN                        R8 R7 3
        6 LOADK                            R8 K2 ["CreateBundleInvalidOperationId"]
        7 SETTABLEN                        R8 R7 4
        8 LOADK                            R8 K3 ["CreateBundleInvalidBundleType"]
        9 SETTABLEN                        R8 R7 5
       10 LOADK                            R8 K4 ["CreateBundleInvalidCreateBundleRequest"]
       11 SETTABLEN                        R8 R7 6
       12 LOADK                            R8 K5 ["CreateBundleInvalidBundleDescription"]
       13 SETTABLEN                        R8 R7 7
       14 LOADK                            R8 K6 ["CreateBundleGroupCreatorNotSupported"]
       15 SETTABLEN                        R8 R7 11
       16 LOADK                            R8 K7 ["CreateBundleInvalidCreationFee"]
       17 SETTABLEN                        R8 R7 13
       18 NEWTABLE                         R8 1 0
       20 LOADN                            R9 0
       21 LOADK                            R10 K8 ["CreateBundleAuthorizationDenied"]
       22 SETTABLE                         R10 R8 R9
       23 NEWTABLE                         R9 4 0
       25 LOADN                            R10 0
       26 LOADK                            R11 K9 ["CreateBundleTokenValidationFailed"]
       27 SETTABLE                         R11 R9 R10
       28 LOADK                            R10 K10 ["CreateBundleItemNotAllowedInBundle"]
       29 SETTABLEN                        R10 R9 9
       30 LOADK                            R10 K11 ["CreateBundleCreatorMismatch"]
       31 SETTABLEN                        R10 R9 12
       32 NEWTABLE                         R10 1 0
       34 LOADK                            R11 K12 ["CreateBundleInvalidState"]
       35 SETTABLEN                        R11 R10 10
       36 NEWTABLE                         R11 1 0
       38 LOADK                            R12 K13 ["CreateBundleUnsupportedBundleType"]
       39 SETTABLEN                        R12 R11 8
       40 NEWTABLE                         R12 0 1
       42 LOADK                            R13 K14 ["CreateBundleServiceUnavailable"]
       43 SETTABLEN                        R13 R12 1
       44 NEWTABLE                         R13 8 0
       46 LOADN                            R14 400
       47 SETTABLE                         R7 R13 R14
       48 LOADN                            R14 401
       49 SETTABLE                         R8 R13 R14
       50 LOADN                            R14 403
       51 SETTABLE                         R9 R13 R14
       52 LOADN                            R14 412
       53 SETTABLE                         R10 R13 R14
       54 LOADN                            R14 501
       55 SETTABLE                         R11 R13 R14
       56 LOADN                            R14 503
       57 SETTABLE                         R12 R13 R14
       58 LOADNIL                          R14
       59 GETTABLEKS                       R16 R2 K15 ["StatusCode"]
       61 GETTABLE                         R15 R13 R16
       62 JUMPIFEQKNIL                     R15 ; [+50]
       64 GETTABLEKS                       R16 R2 K16 ["Body"]
       66 JUMPIFEQKNIL                     R16 ; [+46]
       68 GETTABLEKS                       R16 R2 K16 ["Body"]
       70 GETTABLEKS                       R16 R16 K17 ["errors"]
       72 JUMPIFEQKNIL                     R16 ; [+40]
       74 GETTABLEKS                       R16 R2 K16 ["Body"]
       76 GETTABLEKS                       R16 R16 K17 ["errors"]
       78 LOADNIL                          R17
       79 LOADNIL                          R18
       80 FORGPREP                         R16
       81 GETTABLEKS                       R22 R20 K18 ["code"]
       83 GETTABLE                         R21 R15 R22
       84 JUMPIFEQKNIL                     R21 ; [+18]
       86 JUMPIFNOTEQKNIL                  R14 ; [+8]
       88 LOADK                            R24 K19 ["AssetConfig"]
       89 MOVE                             R25 R21
       90 NAMECALL                         R22 R1 K20 ["getText"]
       92 CALL                             R22 3 1
       93 MOVE                             R14 R22
       94 JUMP                             ; [+8]
       95 MOVE                             R22 R14
       96 LOADK                            R23 K21 ["\n"]
       97 LOADK                            R26 K19 ["AssetConfig"]
       98 MOVE                             R27 R21
       99 NAMECALL                         R24 R1 K20 ["getText"]
      101 CALL                             R24 3 1
      102 CONCAT                           R14 R22 R24
      103 FORGLOOP                         R16 2 ; [-23]
      105 JUMPIFEQKNIL                     R14 ; [+7]
      107 MOVE                             R16 R14
      108 GETUPVAL                         R17 0
      109 MOVE                             R18 R6
      110 MOVE                             R19 R1
      111 CALL                             R17 2 1
      112 CONCAT                           R14 R16 R17
      113 GETUPVAL                         R16 1
      114 CALL                             R16 0 1
      115 JUMPIFNOT                        R16 ; [+16]
      116 GETUPVAL                         R16 2
      117 GETTABLEKS                       R16 R16 K22 ["UGCUploadRequestBundleCreationStatusEvent"]
      119 GETUPVAL                         R17 2
      120 GETTABLEKS                       R17 R17 K23 ["Status"]
      122 GETTABLEKS                       R17 R17 K24 ["Failure"]
      124 MOVE                             R18 R3
      125 MOVE                             R19 R4
      126 MOVE                             R20 R5
      127 LOADNIL                          R21
      128 GETUPVAL                         R22 3
      129 MOVE                             R23 R2
      130 CALL                             R22 1 1
      131 CALL                             R16 6 0
      132 GETUPVAL                         R16 4
      133 GETTABLEKS                       R16 R16 K25 ["shouldDebugWarnings"]
      135 CALL                             R16 0 1
      136 JUMPIFNOT                        R16 ; [+5]
      137 GETIMPORT                        R16 K27 [warn]
      139 LOADK                            R17 K28 ["Could not create UGC Bundle and received response:"]
      140 MOVE                             R18 R2
      141 CALL                             R16 2 0
      142 JUMPIFEQKNIL                     R14 ; [+8]
      144 GETUPVAL                         R18 5
      145 MOVE                             R19 R14
      146 CALL                             R18 1 -1
      147 NAMECALL                         R16 R0 K29 ["dispatch"]
      149 CALL                             R16 -1 0
      150 JUMP                             ; [+16]
      151 GETUPVAL                         R18 5
      152 LOADK                            R24 K19 ["AssetConfig"]
      153 LOADK                            R25 K30 ["CreateBundleGenericError"]
      154 NAMECALL                         R22 R1 K20 ["getText"]
      156 CALL                             R22 3 1
      157 MOVE                             R20 R22
      158 GETUPVAL                         R21 0
      159 MOVE                             R22 R6
      160 MOVE                             R23 R1
      161 CALL                             R21 2 1
      162 CONCAT                           R19 R20 R21
      163 CALL                             R18 1 -1
      164 NAMECALL                         R16 R0 K29 ["dispatch"]
      166 CALL                             R16 -1 0
      167 GETUPVAL                         R18 6
      168 LOADB                            R19 0
      169 CALL                             R18 1 -1
      170 NAMECALL                         R16 R0 K29 ["dispatch"]
      172 CALL                             R16 -1 0
      173 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 LOADN                            R5 1
        3 GETUPVAL                         R6 2
        4 LOADK                            R8 K0 ["AssetConfig"]
        5 LOADK                            R9 K1 ["BundleUploadStepNumber"]
        6 DUPTABLE                         R10 K5 [{["currentStep"] = 4, ["totalSteps"] = 4}]
        7 NAMECALL                         R6 R6 K6 ["getText"]
        9 CALL                             R6 4 1
       10 GETUPVAL                         R7 2
       11 LOADK                            R9 K0 ["AssetConfig"]
       12 LOADK                            R10 K7 ["BundleUploadCompleteStep"]
       13 NAMECALL                         R7 R7 K6 ["getText"]
       15 CALL                             R7 3 -1
       16 CALL                             R4 -1 -1
       17 NAMECALL                         R2 R2 K8 ["dispatch"]
       19 CALL                             R2 -1 0
       20 JUMPIFNOT                        R0 ; [+55]
       21 GETUPVAL                         R2 3
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+14]
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K9 ["UGCUploadGetBundleCreationStatusEvent"]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K10 ["Status"]
       30 GETTABLEKS                       R3 R3 K11 ["Success"]
       32 GETUPVAL                         R4 5
       33 GETUPVAL                         R5 6
       34 GETUPVAL                         R6 7
       35 GETUPVAL                         R7 8
       36 MOVE                             R8 R0
       37 CALL                             R2 6 0
       38 GETUPVAL                         R2 9
       39 GETTABLEKS                       R2 R2 K12 ["shouldDebugWarnings"]
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETIMPORT                        R2 K14 [warn]
       45 LOADK                            R3 K15 ["UGC bundled creation succeeded with returned bundleId:"]
       46 MOVE                             R4 R0
       47 CALL                             R2 2 0
       48 GETUPVAL                         R2 10
       49 JUMPIFEQKNIL                     R2 ; [+11]
       51 GETUPVAL                         R2 0
       52 GETUPVAL                         R4 11
       53 GETUPVAL                         R5 12
       54 MOVE                             R6 R0
       55 GETUPVAL                         R7 10
       56 GETUPVAL                         R8 2
       57 CALL                             R4 4 -1
       58 NAMECALL                         R2 R2 K8 ["dispatch"]
       60 CALL                             R2 -1 0
       61 GETUPVAL                         R2 0
       62 GETUPVAL                         R4 13
       63 MOVE                             R5 R0
       64 CALL                             R4 1 -1
       65 NAMECALL                         R2 R2 K8 ["dispatch"]
       67 CALL                             R2 -1 0
       68 GETUPVAL                         R2 0
       69 GETUPVAL                         R4 14
       70 LOADB                            R5 1
       71 CALL                             R4 1 -1
       72 NAMECALL                         R2 R2 K8 ["dispatch"]
       74 CALL                             R2 -1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 3
       77 CALL                             R2 0 1
       78 JUMPIFNOT                        R2 ; [+17]
       79 GETUPVAL                         R2 4
       80 GETTABLEKS                       R2 R2 K9 ["UGCUploadGetBundleCreationStatusEvent"]
       82 GETUPVAL                         R3 4
       83 GETTABLEKS                       R3 R3 K10 ["Status"]
       85 GETTABLEKS                       R3 R3 K16 ["Failure"]
       87 GETUPVAL                         R4 5
       88 GETUPVAL                         R5 6
       89 GETUPVAL                         R6 7
       90 GETUPVAL                         R7 8
       91 LOADNIL                          R8
       92 GETUPVAL                         R9 15
       93 MOVE                             R10 R1
       94 CALL                             R9 1 1
       95 CALL                             R2 7 0
       96 GETUPVAL                         R2 9
       97 GETTABLEKS                       R2 R2 K12 ["shouldDebugWarnings"]
       99 CALL                             R2 0 1
      100 JUMPIFNOT                        R2 ; [+5]
      101 GETIMPORT                        R2 K14 [warn]
      103 LOADK                            R3 K17 ["UGC bundled creation failed and returned the response body:"]
      104 MOVE                             R4 R1
      105 CALL                             R2 2 0
      106 GETUPVAL                         R2 0
      107 GETUPVAL                         R4 16
      108 GETUPVAL                         R6 17
      109 JUMPIFEQKNIL                     R6 ; [+23]
      111 GETUPVAL                         R7 17
      112 GETTABLEKS                       R8 R1 K18 ["status"]
      114 GETTABLE                         R6 R7 R8
      115 JUMPIFEQKNIL                     R6 ; [+17]
      117 GETUPVAL                         R8 2
      118 LOADK                            R10 K0 ["AssetConfig"]
      119 GETUPVAL                         R12 17
      120 GETTABLEKS                       R13 R1 K18 ["status"]
      122 GETTABLE                         R11 R12 R13
      123 NAMECALL                         R8 R8 K6 ["getText"]
      125 CALL                             R8 3 1
      126 MOVE                             R6 R8
      127 GETUPVAL                         R7 18
      128 GETUPVAL                         R8 19
      129 GETUPVAL                         R9 2
      130 CALL                             R7 2 1
      131 CONCAT                           R5 R6 R7
      132 JUMP                             ; [+13]
      133 GETUPVAL                         R8 2
      134 LOADK                            R10 K0 ["AssetConfig"]
      135 LOADK                            R11 K19 ["ValidationErrorUnknown"]
      136 NAMECALL                         R8 R8 K6 ["getText"]
      138 CALL                             R8 3 1
      139 MOVE                             R6 R8
      140 GETUPVAL                         R7 18
      141 GETUPVAL                         R8 19
      142 GETUPVAL                         R9 2
      143 LOADB                            R10 1
      144 CALL                             R7 3 1
      145 CONCAT                           R5 R6 R7
      146 CALL                             R4 1 -1
      147 NAMECALL                         R2 R2 K8 ["dispatch"]
      149 CALL                             R2 -1 0
      150 GETUPVAL                         R2 0
      151 GETUPVAL                         R4 14
      152 LOADB                            R5 0
      153 CALL                             R4 1 -1
      154 NAMECALL                         R2 R2 K8 ["dispatch"]
      156 CALL                             R2 -1 0
      157 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["creationStatusId"]
        2 JUMPIFNOT                        R1 ; [+92]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["UGCUploadRequestBundleCreationStatusEvent"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["Status"]
       12 GETTABLEKS                       R3 R3 K3 ["Success"]
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 GETUPVAL                         R6 4
       17 MOVE                             R7 R1
       18 CALL                             R2 5 0
       19 GETUPVAL                         R2 5
       20 GETTABLEKS                       R2 R2 K4 ["shouldDebugWarnings"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETIMPORT                        R2 K6 [warn]
       26 LOADK                            R3 K7 ["Received a creationStatusId to create a bundle:"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 6
       30 GETUPVAL                         R4 7
       31 LOADK                            R5 K8 [0.9]
       32 GETUPVAL                         R6 8
       33 LOADK                            R8 K9 ["AssetConfig"]
       34 LOADK                            R9 K10 ["BundleUploadStepNumber"]
       35 DUPTABLE                         R10 K14 [{["currentStep"] = 4, ["totalSteps"] = 4}]
       36 NAMECALL                         R6 R6 K15 ["getText"]
       38 CALL                             R6 4 1
       39 GETUPVAL                         R7 8
       40 LOADK                            R9 K9 ["AssetConfig"]
       41 LOADK                            R10 K16 ["BundleUploadGenerateBundleIdStep"]
       42 NAMECALL                         R7 R7 K15 ["getText"]
       44 CALL                             R7 3 -1
       45 CALL                             R4 -1 -1
       46 NAMECALL                         R2 R2 K17 ["dispatch"]
       48 CALL                             R2 -1 0
       49 GETUPVAL                         R2 0
       50 CALL                             R2 0 1
       51 JUMPIFNOT                        R2 ; [+13]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K18 ["UGCUploadGetBundleCreationStatusEvent"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K2 ["Status"]
       58 GETTABLEKS                       R3 R3 K19 ["Start"]
       60 GETUPVAL                         R4 2
       61 GETUPVAL                         R5 3
       62 GETUPVAL                         R6 4
       63 MOVE                             R7 R1
       64 CALL                             R2 5 0
       65 GETUPVAL                         R2 6
       66 GETUPVAL                         R4 9
       67 GETUPVAL                         R5 10
       68 MOVE                             R6 R1
       69 NEWCLOSURE                       R7 P0
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          UPVAL U11
       81 CAPTURE                          UPVAL U12
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U13
       84 CAPTURE                          UPVAL U14
       85 CAPTURE                          UPVAL U15
       86 CAPTURE                          UPVAL U16
       87 CAPTURE                          UPVAL U17
       88 CAPTURE                          UPVAL U18
       89 CAPTURE                          UPVAL U19
       90 CALL                             R4 3 -1
       91 NAMECALL                         R2 R2 K17 ["dispatch"]
       93 CALL                             R2 -1 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R2 0
       96 CALL                             R2 0 1
       97 JUMPIFNOT                        R2 ; [+16]
       98 GETUPVAL                         R2 1
       99 GETTABLEKS                       R2 R2 K1 ["UGCUploadRequestBundleCreationStatusEvent"]
      101 GETUPVAL                         R3 1
      102 GETTABLEKS                       R3 R3 K2 ["Status"]
      104 GETTABLEKS                       R3 R3 K20 ["Failure"]
      106 GETUPVAL                         R4 2
      107 GETUPVAL                         R5 3
      108 GETUPVAL                         R6 4
      109 LOADNIL                          R7
      110 GETUPVAL                         R8 15
      111 MOVE                             R9 R0
      112 CALL                             R8 1 1
      113 CALL                             R2 6 0
      114 GETUPVAL                         R2 5
      115 GETTABLEKS                       R2 R2 K4 ["shouldDebugWarnings"]
      117 CALL                             R2 0 1
      118 JUMPIFNOT                        R2 ; [+5]
      119 GETIMPORT                        R2 K6 [warn]
      121 LOADK                            R3 K21 ["Unexpected UGCCreateBundleRequest respoonse:"]
      122 MOVE                             R4 R0
      123 CALL                             R2 2 0
      124 GETUPVAL                         R2 6
      125 GETUPVAL                         R4 16
      126 GETUPVAL                         R5 8
      127 LOADK                            R7 K9 ["AssetConfig"]
      128 LOADK                            R8 K22 ["CreateBundleGenericError"]
      129 NAMECALL                         R5 R5 K15 ["getText"]
      131 CALL                             R5 3 -1
      132 CALL                             R4 -1 -1
      133 NAMECALL                         R2 R2 K17 ["dispatch"]
      135 CALL                             R2 -1 0
      136 GETUPVAL                         R2 6
      137 GETUPVAL                         R4 14
      138 LOADB                            R5 0
      139 CALL                             R4 1 -1
      140 NAMECALL                         R2 R2 K17 ["dispatch"]
      142 CALL                             R2 -1 0
      143 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 4
        8 GETUPVAL                         R6 5
        9 GETUPVAL                         R7 6
       10 GETUPVAL                         R8 7
       11 CALL                             R1 7 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 4 0
        2 LOADK                            R2 K0 ["BundleCreationValidationFailed"]
        3 SETTABLEN                        R2 R1 3
        4 LOADK                            R2 K1 ["BundleCreationInsufficientFunds"]
        5 SETTABLEN                        R2 R1 4
        6 LOADK                            R2 K2 ["BundleCreationFeeMismatch"]
        7 SETTABLEN                        R2 R1 6
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getAvatarAssetTypeAsString"]
       15 GETUPVAL                         R4 2
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 GETUPVAL                         R4 0
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+27]
       21 GETUPVAL                         R4 3
       22 JUMPIF                           R4 ; [+2]
       23 LOADNIL                          R3
       24 JUMP                             ; [+24]
       25 LOADNIL                          R5
       26 FASTCALL1                        TYPE R4 ; [+3]
       27 MOVE                             R7 R4
       28 GETIMPORT                        R6 K5 [type]
       30 CALL                             R6 1 1
       31 JUMPIFNOTEQKS                    R6 K6 ["table"] ; [+8]
       33 GETIMPORT                        R6 K8 [table.concat]
       35 MOVE                             R7 R4
       36 LOADK                            R8 K9 [", "]
       37 CALL                             R6 2 1
       38 MOVE                             R5 R6
       39 JUMP                             ; [+6]
       40 FASTCALL1                        TOSTRING R4 ; [+3]
       41 MOVE                             R7 R4
       42 GETIMPORT                        R6 K11 [tostring]
       44 CALL                             R6 1 1
       45 MOVE                             R5 R6
       46 MOVE                             R3 R5
       47 JUMP                             ; [+1]
       48 LOADNIL                          R3
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          REF R2
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          UPVAL U10
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          UPVAL U12
       63 CAPTURE                          UPVAL U13
       64 CAPTURE                          UPVAL U14
       65 CAPTURE                          UPVAL U15
       66 CAPTURE                          UPVAL U16
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U17
       69 CAPTURE                          UPVAL U18
       70 NEWCLOSURE                       R5 P1
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U19
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          REF R2
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          UPVAL U18
       79 GETUPVAL                         R8 7
       80 LOADK                            R9 K12 [0.85]
       81 GETUPVAL                         R10 8
       82 LOADK                            R12 K13 ["AssetConfig"]
       83 LOADK                            R13 K14 ["BundleUploadStepNumber"]
       84 DUPTABLE                         R14 K19 [{["currentStep"] = 3, ["totalSteps"] = 4}]
       85 NAMECALL                         R10 R10 K20 ["getText"]
       87 CALL                             R10 4 1
       88 GETUPVAL                         R11 8
       89 LOADK                            R13 K13 ["AssetConfig"]
       90 LOADK                            R14 K21 ["BundleUploadCreateBundleStep"]
       91 NAMECALL                         R11 R11 K20 ["getText"]
       93 CALL                             R11 3 -1
       94 CALL                             R8 -1 -1
       95 NAMECALL                         R6 R0 K22 ["dispatch"]
       97 CALL                             R6 -1 0
       98 GETUPVAL                         R6 0
       99 CALL                             R6 0 1
      100 JUMPIFNOT                        R6 ; [+12]
      101 GETUPVAL                         R6 4
      102 GETTABLEKS                       R6 R6 K23 ["UGCUploadRequestBundleCreationStatusEvent"]
      104 GETUPVAL                         R7 4
      105 GETTABLEKS                       R7 R7 K24 ["Status"]
      107 GETTABLEKS                       R7 R7 K25 ["Start"]
      109 MOVE                             R8 R2
      110 GETUPVAL                         R9 5
      111 MOVE                             R10 R3
      112 CALL                             R6 4 0
      113 GETUPVAL                         R6 10
      114 GETUPVAL                         R8 2
      115 GETUPVAL                         R9 20
      116 GETUPVAL                         R10 21
      117 GETUPVAL                         R11 3
      118 GETUPVAL                         R12 5
      119 GETUPVAL                         R13 18
      120 NAMECALL                         R6 R6 K26 ["postCreateBundle"]
      122 CALL                             R6 7 1
      123 MOVE                             R8 R4
      124 MOVE                             R9 R5
      125 NAMECALL                         R6 R6 K27 ["andThen"]
      127 CALL                             R6 3 -1
      128 CLOSEUPVALS                      R2
      129 RETURN                           R6 -1

PROTO_7:
        0 NEWCLOSURE                       R9 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R4
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R5
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R6
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R8
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          VAL R7
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["NetworkError"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetAssetId"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetProgressBarInfo"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["UploadResult"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R0 K4 ["Src"]
       33 GETTABLEKS                       R6 R6 K12 ["Networking"]
       35 GETTABLEKS                       R6 R6 K13 ["Requests"]
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R6 K14 ["PollForBundleCreationStatus"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R0 K4 ["Src"]
       44 GETTABLEKS                       R8 R8 K15 ["Util"]
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R10 R8 K16 ["Analytics"]
       50 GETTABLEKS                       R10 R10 K16 ["Analytics"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K7 [require]
       55 GETTABLEKS                       R11 R8 K17 ["AssetConfigUtil"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K7 [require]
       60 GETTABLEKS                       R12 R8 K18 ["DebugFlags"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K7 [require]
       65 GETTABLEKS                       R13 R8 K19 ["SharedFlags"]
       67 GETTABLEKS                       R13 R13 K20 ["getFFlagEnableUGCUploadFlowAnalytics"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K7 [require]
       72 GETTABLEKS                       R14 R6 K21 ["UGCBundleUploadDataSharingRequest"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K7 [require]
       77 GETTABLEKS                       R15 R8 K22 ["getRobuxMessageToAppend"]
       79 CALL                             R14 1 1
       80 DUPCLOSURE                       R15 K23 [PROTO_0]
       81 DUPCLOSURE                       R16 K24 [PROTO_1]
       82 DUPCLOSURE                       R17 K25 [PROTO_2]
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R5
       90 DUPCLOSURE                       R18 K26 [PROTO_7]
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R17
      104 RETURN                           R18 1
