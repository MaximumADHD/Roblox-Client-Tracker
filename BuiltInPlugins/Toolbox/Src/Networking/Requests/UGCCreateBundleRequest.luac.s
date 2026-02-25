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
       12 GETUPVAL                         R9 0
       13 JUMPIFNOT                        R9 ; [+2]
       14 LOADK                            R8 K5 ["CreateBundleInvalidBundleDescription"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R8
       17 SETTABLEN                        R8 R7 7
       18 GETUPVAL                         R9 0
       19 JUMPIFNOT                        R9 ; [+2]
       20 LOADK                            R8 K6 ["CreateBundleGroupCreatorNotSupported"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R8
       23 SETTABLEN                        R8 R7 11
       24 LOADK                            R8 K7 ["CreateBundleInvalidCreationFee"]
       25 SETTABLEN                        R8 R7 13
       26 NEWTABLE                         R8 1 0
       28 LOADN                            R9 0
       29 LOADK                            R10 K8 ["CreateBundleAuthorizationDenied"]
       30 SETTABLE                         R10 R8 R9
       31 NEWTABLE                         R9 4 0
       33 LOADN                            R10 0
       34 LOADK                            R11 K9 ["CreateBundleTokenValidationFailed"]
       35 SETTABLE                         R11 R9 R10
       36 GETUPVAL                         R11 0
       37 JUMPIFNOT                        R11 ; [+2]
       38 LOADK                            R10 K10 ["CreateBundleItemNotAllowedInBundle"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R10
       41 SETTABLEN                        R10 R9 9
       42 GETUPVAL                         R11 0
       43 JUMPIFNOT                        R11 ; [+2]
       44 LOADK                            R10 K11 ["CreateBundleCreatorMismatch"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R10
       47 SETTABLEN                        R10 R9 12
       48 GETUPVAL                         R11 0
       49 JUMPIFNOT                        R11 ; [+5]
       50 NEWTABLE                         R10 1 0
       52 LOADK                            R11 K12 ["CreateBundleInvalidState"]
       53 SETTABLEN                        R11 R10 10
       54 JUMP                             ; [+1]
       55 LOADNIL                          R10
       56 GETUPVAL                         R12 0
       57 JUMPIFNOT                        R12 ; [+5]
       58 NEWTABLE                         R11 1 0
       60 LOADK                            R12 K13 ["CreateBundleUnsupportedBundleType"]
       61 SETTABLEN                        R12 R11 8
       62 JUMP                             ; [+1]
       63 LOADNIL                          R11
       64 NEWTABLE                         R12 0 1
       66 LOADK                            R13 K14 ["CreateBundleServiceUnavailable"]
       67 SETTABLEN                        R13 R12 1
       68 NEWTABLE                         R13 8 0
       70 LOADN                            R14 144
       71 SETTABLE                         R7 R13 R14
       72 LOADN                            R14 145
       73 SETTABLE                         R8 R13 R14
       74 LOADN                            R14 147
       75 SETTABLE                         R9 R13 R14
       76 LOADN                            R14 156
       77 GETUPVAL                         R16 0
       78 JUMPIFNOT                        R16 ; [+2]
       79 MOVE                             R15 R10
       80 JUMP                             ; [+1]
       81 LOADNIL                          R15
       82 SETTABLE                         R15 R13 R14
       83 LOADN                            R14 245
       84 GETUPVAL                         R16 0
       85 JUMPIFNOT                        R16 ; [+2]
       86 MOVE                             R15 R11
       87 JUMP                             ; [+1]
       88 LOADNIL                          R15
       89 SETTABLE                         R15 R13 R14
       90 LOADN                            R14 247
       91 SETTABLE                         R12 R13 R14
       92 LOADNIL                          R14
       93 GETTABLEKS                       R16 R2 K15 ["StatusCode"]
       95 GETTABLE                         R15 R13 R16
       96 JUMPIFEQKNIL                     R15 ; [+50]
       98 GETTABLEKS                       R16 R2 K16 ["Body"]
      100 JUMPIFEQKNIL                     R16 ; [+46]
      102 GETTABLEKS                       R17 R2 K16 ["Body"]
      104 GETTABLEKS                       R16 R17 K17 ["errors"]
      106 JUMPIFEQKNIL                     R16 ; [+40]
      108 GETTABLEKS                       R19 R2 K16 ["Body"]
      110 GETTABLEKS                       R16 R19 K17 ["errors"]
      112 LOADNIL                          R17
      113 LOADNIL                          R18
      114 FORGPREP                         R16
      115 GETTABLEKS                       R22 R20 K18 ["code"]
      117 GETTABLE                         R21 R15 R22
      118 JUMPIFEQKNIL                     R21 ; [+18]
      120 JUMPIFNOTEQKNIL                  R14 ; [+8]
      122 LOADK                            R24 K19 ["AssetConfig"]
      123 MOVE                             R25 R21
      124 NAMECALL                         R22 R1 K20 ["getText"]
      126 CALL                             R22 3 1
      127 MOVE                             R14 R22
      128 JUMP                             ; [+8]
      129 MOVE                             R22 R14
      130 LOADK                            R23 K21 ["\n"]
      131 LOADK                            R26 K19 ["AssetConfig"]
      132 MOVE                             R27 R21
      133 NAMECALL                         R24 R1 K20 ["getText"]
      135 CALL                             R24 3 1
      136 CONCAT                           R14 R22 R24
      137 FORGLOOP                         R16 2 ; [-23]
      139 JUMPIFEQKNIL                     R14 ; [+7]
      141 MOVE                             R16 R14
      142 GETUPVAL                         R17 1
      143 MOVE                             R18 R6
      144 MOVE                             R19 R1
      145 CALL                             R17 2 1
      146 CONCAT                           R14 R16 R17
      147 GETUPVAL                         R16 2
      148 CALL                             R16 0 1
      149 JUMPIFNOT                        R16 ; [+16]
      150 GETUPVAL                         R17 3
      151 GETTABLEKS                       R16 R17 K22 ["UGCUploadRequestBundleCreationStatusEvent"]
      153 GETUPVAL                         R19 3
      154 GETTABLEKS                       R18 R19 K23 ["Status"]
      156 GETTABLEKS                       R17 R18 K24 ["Failure"]
      158 MOVE                             R18 R3
      159 MOVE                             R19 R4
      160 MOVE                             R20 R5
      161 LOADNIL                          R21
      162 GETUPVAL                         R22 4
      163 MOVE                             R23 R2
      164 CALL                             R22 1 1
      165 CALL                             R16 6 0
      166 GETUPVAL                         R17 5
      167 GETTABLEKS                       R16 R17 K25 ["shouldDebugWarnings"]
      169 CALL                             R16 0 1
      170 JUMPIFNOT                        R16 ; [+5]
      171 GETIMPORT                        R16 K27 [warn]
      173 LOADK                            R17 K28 ["Could not create UGC Bundle and received response:"]
      174 MOVE                             R18 R2
      175 CALL                             R16 2 0
      176 JUMPIFEQKNIL                     R14 ; [+8]
      178 GETUPVAL                         R18 6
      179 MOVE                             R19 R14
      180 CALL                             R18 1 -1
      181 NAMECALL                         R16 R0 K29 ["dispatch"]
      183 CALL                             R16 -1 0
      184 JUMP                             ; [+16]
      185 GETUPVAL                         R18 6
      186 LOADK                            R24 K19 ["AssetConfig"]
      187 LOADK                            R25 K30 ["CreateBundleGenericError"]
      188 NAMECALL                         R22 R1 K20 ["getText"]
      190 CALL                             R22 3 1
      191 MOVE                             R20 R22
      192 GETUPVAL                         R21 1
      193 MOVE                             R22 R6
      194 MOVE                             R23 R1
      195 CALL                             R21 2 1
      196 CONCAT                           R19 R20 R21
      197 CALL                             R18 1 -1
      198 NAMECALL                         R16 R0 K29 ["dispatch"]
      200 CALL                             R16 -1 0
      201 GETUPVAL                         R18 7
      202 LOADB                            R19 0
      203 CALL                             R18 1 -1
      204 NAMECALL                         R16 R0 K29 ["dispatch"]
      206 CALL                             R16 -1 0
      207 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 LOADN                            R5 1
        3 GETUPVAL                         R6 2
        4 LOADK                            R8 K0 ["AssetConfig"]
        5 LOADK                            R9 K1 ["BundleUploadStepNumber"]
        6 DUPTABLE                         R10 K4 [{"currentStep", "totalSteps"}]
        7 LOADN                            R11 4
        8 SETTABLEKS                       R11 R10 K2 ["currentStep"]
       10 LOADN                            R11 4
       11 SETTABLEKS                       R11 R10 K3 ["totalSteps"]
       13 NAMECALL                         R6 R6 K5 ["getText"]
       15 CALL                             R6 4 1
       16 GETUPVAL                         R7 2
       17 LOADK                            R9 K0 ["AssetConfig"]
       18 LOADK                            R10 K6 ["BundleUploadCompleteStep"]
       19 NAMECALL                         R7 R7 K5 ["getText"]
       21 CALL                             R7 3 -1
       22 CALL                             R4 -1 -1
       23 NAMECALL                         R2 R2 K7 ["dispatch"]
       25 CALL                             R2 -1 0
       26 JUMPIFNOT                        R0 ; [+55]
       27 GETUPVAL                         R2 3
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+14]
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R2 R3 K8 ["UGCUploadGetBundleCreationStatusEvent"]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R4 R5 K9 ["Status"]
       36 GETTABLEKS                       R3 R4 K10 ["Success"]
       38 GETUPVAL                         R4 5
       39 GETUPVAL                         R5 6
       40 GETUPVAL                         R6 7
       41 GETUPVAL                         R7 8
       42 MOVE                             R8 R0
       43 CALL                             R2 6 0
       44 GETUPVAL                         R3 9
       45 GETTABLEKS                       R2 R3 K11 ["shouldDebugWarnings"]
       47 CALL                             R2 0 1
       48 JUMPIFNOT                        R2 ; [+5]
       49 GETIMPORT                        R2 K13 [warn]
       51 LOADK                            R3 K14 ["UGC bundled creation succeeded with returned bundleId:"]
       52 MOVE                             R4 R0
       53 CALL                             R2 2 0
       54 GETUPVAL                         R2 10
       55 JUMPIFEQKNIL                     R2 ; [+11]
       57 GETUPVAL                         R2 0
       58 GETUPVAL                         R4 11
       59 GETUPVAL                         R5 12
       60 MOVE                             R6 R0
       61 GETUPVAL                         R7 10
       62 GETUPVAL                         R8 2
       63 CALL                             R4 4 -1
       64 NAMECALL                         R2 R2 K7 ["dispatch"]
       66 CALL                             R2 -1 0
       67 GETUPVAL                         R2 0
       68 GETUPVAL                         R4 13
       69 MOVE                             R5 R0
       70 CALL                             R4 1 -1
       71 NAMECALL                         R2 R2 K7 ["dispatch"]
       73 CALL                             R2 -1 0
       74 GETUPVAL                         R2 0
       75 GETUPVAL                         R4 14
       76 LOADB                            R5 1
       77 CALL                             R4 1 -1
       78 NAMECALL                         R2 R2 K7 ["dispatch"]
       80 CALL                             R2 -1 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R2 3
       83 CALL                             R2 0 1
       84 JUMPIFNOT                        R2 ; [+17]
       85 GETUPVAL                         R3 4
       86 GETTABLEKS                       R2 R3 K8 ["UGCUploadGetBundleCreationStatusEvent"]
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K9 ["Status"]
       91 GETTABLEKS                       R3 R4 K15 ["Failure"]
       93 GETUPVAL                         R4 5
       94 GETUPVAL                         R5 6
       95 GETUPVAL                         R6 7
       96 GETUPVAL                         R7 8
       97 LOADNIL                          R8
       98 GETUPVAL                         R9 15
       99 MOVE                             R10 R1
      100 CALL                             R9 1 1
      101 CALL                             R2 7 0
      102 GETUPVAL                         R2 16
      103 JUMPIFNOT                        R2 ; [+60]
      104 GETUPVAL                         R3 9
      105 GETTABLEKS                       R2 R3 K11 ["shouldDebugWarnings"]
      107 CALL                             R2 0 1
      108 JUMPIFNOT                        R2 ; [+5]
      109 GETIMPORT                        R2 K13 [warn]
      111 LOADK                            R3 K16 ["UGC bundled creation failed and returned the response body:"]
      112 MOVE                             R4 R1
      113 CALL                             R2 2 0
      114 GETUPVAL                         R2 0
      115 GETUPVAL                         R4 17
      116 GETUPVAL                         R6 18
      117 JUMPIFEQKNIL                     R6 ; [+23]
      119 GETUPVAL                         R7 18
      120 GETTABLEKS                       R8 R1 K17 ["status"]
      122 GETTABLE                         R6 R7 R8
      123 JUMPIFEQKNIL                     R6 ; [+17]
      125 GETUPVAL                         R8 2
      126 LOADK                            R10 K0 ["AssetConfig"]
      127 GETUPVAL                         R12 18
      128 GETTABLEKS                       R13 R1 K17 ["status"]
      130 GETTABLE                         R11 R12 R13
      131 NAMECALL                         R8 R8 K5 ["getText"]
      133 CALL                             R8 3 1
      134 MOVE                             R6 R8
      135 GETUPVAL                         R7 19
      136 GETUPVAL                         R8 20
      137 GETUPVAL                         R9 2
      138 CALL                             R7 2 1
      139 CONCAT                           R5 R6 R7
      140 JUMP                             ; [+18]
      141 GETUPVAL                         R8 2
      142 LOADK                            R10 K0 ["AssetConfig"]
      143 LOADK                            R11 K18 ["ValidationErrorUnknown"]
      144 NAMECALL                         R8 R8 K5 ["getText"]
      146 CALL                             R8 3 1
      147 MOVE                             R6 R8
      148 GETUPVAL                         R7 19
      149 GETUPVAL                         R8 20
      150 GETUPVAL                         R9 2
      151 GETUPVAL                         R11 21
      152 CALL                             R11 0 1
      153 JUMPIFNOT                        R11 ; [+2]
      154 LOADB                            R10 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R10
      157 CALL                             R7 3 1
      158 CONCAT                           R5 R6 R7
      159 CALL                             R4 1 -1
      160 NAMECALL                         R2 R2 K7 ["dispatch"]
      162 CALL                             R2 -1 0
      163 JUMP                             ; [+27]
      164 GETUPVAL                         R2 0
      165 GETUPVAL                         R4 17
      166 JUMPIFNOT                        R1 ; [+2]
      167 MOVE                             R5 R1
      168 JUMP                             ; [+18]
      169 GETUPVAL                         R8 2
      170 LOADK                            R10 K0 ["AssetConfig"]
      171 LOADK                            R11 K18 ["ValidationErrorUnknown"]
      172 NAMECALL                         R8 R8 K5 ["getText"]
      174 CALL                             R8 3 1
      175 MOVE                             R6 R8
      176 GETUPVAL                         R7 19
      177 GETUPVAL                         R8 20
      178 GETUPVAL                         R9 2
      179 GETUPVAL                         R11 21
      180 CALL                             R11 0 1
      181 JUMPIFNOT                        R11 ; [+2]
      182 LOADB                            R10 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R10
      185 CALL                             R7 3 1
      186 CONCAT                           R5 R6 R7
      187 CALL                             R4 1 -1
      188 NAMECALL                         R2 R2 K7 ["dispatch"]
      190 CALL                             R2 -1 0
      191 GETUPVAL                         R2 0
      192 GETUPVAL                         R4 14
      193 LOADB                            R5 0
      194 CALL                             R4 1 -1
      195 NAMECALL                         R2 R2 K7 ["dispatch"]
      197 CALL                             R2 -1 0
      198 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["creationStatusId"]
        2 JUMPIFNOT                        R1 ; [+100]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["UGCUploadRequestBundleCreationStatusEvent"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["Status"]
       12 GETTABLEKS                       R3 R4 K3 ["Success"]
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 GETUPVAL                         R6 4
       17 MOVE                             R7 R1
       18 CALL                             R2 5 0
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R2 R3 K4 ["shouldDebugWarnings"]
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
       35 DUPTABLE                         R10 K13 [{"currentStep", "totalSteps"}]
       36 LOADN                            R11 4
       37 SETTABLEKS                       R11 R10 K11 ["currentStep"]
       39 LOADN                            R11 4
       40 SETTABLEKS                       R11 R10 K12 ["totalSteps"]
       42 NAMECALL                         R6 R6 K14 ["getText"]
       44 CALL                             R6 4 1
       45 GETUPVAL                         R7 8
       46 LOADK                            R9 K9 ["AssetConfig"]
       47 LOADK                            R10 K15 ["BundleUploadGenerateBundleIdStep"]
       48 NAMECALL                         R7 R7 K14 ["getText"]
       50 CALL                             R7 3 -1
       51 CALL                             R4 -1 -1
       52 NAMECALL                         R2 R2 K16 ["dispatch"]
       54 CALL                             R2 -1 0
       55 GETUPVAL                         R2 0
       56 CALL                             R2 0 1
       57 JUMPIFNOT                        R2 ; [+13]
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R2 R3 K17 ["UGCUploadGetBundleCreationStatusEvent"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K2 ["Status"]
       64 GETTABLEKS                       R3 R4 K18 ["Start"]
       66 GETUPVAL                         R4 2
       67 GETUPVAL                         R5 3
       68 GETUPVAL                         R6 4
       69 MOVE                             R7 R1
       70 CALL                             R2 5 0
       71 GETUPVAL                         R2 6
       72 GETUPVAL                         R4 9
       73 GETUPVAL                         R5 10
       74 MOVE                             R6 R1
       75 NEWCLOSURE                       R7 P0
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U12
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U13
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          UPVAL U15
       92 CAPTURE                          UPVAL U16
       93 CAPTURE                          UPVAL U17
       94 CAPTURE                          UPVAL U18
       95 CAPTURE                          UPVAL U19
       96 CAPTURE                          UPVAL U20
       97 CAPTURE                          UPVAL U21
       98 CALL                             R4 3 -1
       99 NAMECALL                         R2 R2 K16 ["dispatch"]
      101 CALL                             R2 -1 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R2 0
      104 CALL                             R2 0 1
      105 JUMPIFNOT                        R2 ; [+16]
      106 GETUPVAL                         R3 1
      107 GETTABLEKS                       R2 R3 K1 ["UGCUploadRequestBundleCreationStatusEvent"]
      109 GETUPVAL                         R5 1
      110 GETTABLEKS                       R4 R5 K2 ["Status"]
      112 GETTABLEKS                       R3 R4 K19 ["Failure"]
      114 GETUPVAL                         R4 2
      115 GETUPVAL                         R5 3
      116 GETUPVAL                         R6 4
      117 LOADNIL                          R7
      118 GETUPVAL                         R8 15
      119 MOVE                             R9 R0
      120 CALL                             R8 1 1
      121 CALL                             R2 6 0
      122 GETUPVAL                         R3 5
      123 GETTABLEKS                       R2 R3 K4 ["shouldDebugWarnings"]
      125 CALL                             R2 0 1
      126 JUMPIFNOT                        R2 ; [+5]
      127 GETIMPORT                        R2 K6 [warn]
      129 LOADK                            R3 K20 ["Unexpected UGCCreateBundleRequest respoonse:"]
      130 MOVE                             R4 R0
      131 CALL                             R2 2 0
      132 GETUPVAL                         R2 6
      133 GETUPVAL                         R4 17
      134 GETUPVAL                         R5 8
      135 LOADK                            R7 K9 ["AssetConfig"]
      136 LOADK                            R8 K21 ["CreateBundleGenericError"]
      137 NAMECALL                         R5 R5 K14 ["getText"]
      139 CALL                             R5 3 -1
      140 CALL                             R4 -1 -1
      141 NAMECALL                         R2 R2 K16 ["dispatch"]
      143 CALL                             R2 -1 0
      144 GETUPVAL                         R2 6
      145 GETUPVAL                         R4 14
      146 LOADB                            R5 0
      147 CALL                             R4 1 -1
      148 NAMECALL                         R2 R2 K16 ["dispatch"]
      150 CALL                             R2 -1 0
      151 RETURN                           R0 0

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
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["getAvatarAssetTypeAsString"]
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
       67 CAPTURE                          UPVAL U17
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U18
       70 CAPTURE                          UPVAL U19
       71 CAPTURE                          UPVAL U20
       72 NEWCLOSURE                       R5 P1
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          UPVAL U21
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          REF R2
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U19
       81 GETUPVAL                         R8 7
       82 LOADK                            R9 K12 [0.85]
       83 GETUPVAL                         R10 8
       84 LOADK                            R12 K13 ["AssetConfig"]
       85 LOADK                            R13 K14 ["BundleUploadStepNumber"]
       86 DUPTABLE                         R14 K17 [{"currentStep", "totalSteps"}]
       87 LOADN                            R15 3
       88 SETTABLEKS                       R15 R14 K15 ["currentStep"]
       90 LOADN                            R15 4
       91 SETTABLEKS                       R15 R14 K16 ["totalSteps"]
       93 NAMECALL                         R10 R10 K18 ["getText"]
       95 CALL                             R10 4 1
       96 GETUPVAL                         R11 8
       97 LOADK                            R13 K13 ["AssetConfig"]
       98 LOADK                            R14 K19 ["BundleUploadCreateBundleStep"]
       99 NAMECALL                         R11 R11 K18 ["getText"]
      101 CALL                             R11 3 -1
      102 CALL                             R8 -1 -1
      103 NAMECALL                         R6 R0 K20 ["dispatch"]
      105 CALL                             R6 -1 0
      106 GETUPVAL                         R6 0
      107 CALL                             R6 0 1
      108 JUMPIFNOT                        R6 ; [+12]
      109 GETUPVAL                         R7 4
      110 GETTABLEKS                       R6 R7 K21 ["UGCUploadRequestBundleCreationStatusEvent"]
      112 GETUPVAL                         R9 4
      113 GETTABLEKS                       R8 R9 K22 ["Status"]
      115 GETTABLEKS                       R7 R8 K23 ["Start"]
      117 MOVE                             R8 R2
      118 GETUPVAL                         R9 5
      119 MOVE                             R10 R3
      120 CALL                             R6 4 0
      121 GETUPVAL                         R6 10
      122 GETUPVAL                         R8 2
      123 GETUPVAL                         R9 22
      124 GETUPVAL                         R10 23
      125 GETUPVAL                         R11 3
      126 GETUPVAL                         R12 5
      127 GETUPVAL                         R13 19
      128 NAMECALL                         R6 R6 K24 ["postCreateBundle"]
      130 CALL                             R6 7 1
      131 MOVE                             R8 R4
      132 MOVE                             R9 R5
      133 NAMECALL                         R6 R6 K25 ["andThen"]
      135 CALL                             R6 3 -1
      136 CLOSEUPVALS                      R2
      137 RETURN                           R6 -1

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
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          VAL R7
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
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
       31 GETTABLEKS                       R8 R0 K4 ["Src"]
       33 GETTABLEKS                       R7 R8 K12 ["Networking"]
       35 GETTABLEKS                       R6 R7 K13 ["Requests"]
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R6 K14 ["PollForBundleCreationStatus"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R9 R0 K4 ["Src"]
       44 GETTABLEKS                       R8 R9 K15 ["Util"]
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R11 R8 K16 ["Analytics"]
       50 GETTABLEKS                       R10 R11 K16 ["Analytics"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K7 [require]
       55 GETTABLEKS                       R11 R8 K17 ["AssetConfigUtil"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K7 [require]
       60 GETTABLEKS                       R12 R8 K18 ["DebugFlags"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K7 [require]
       65 GETTABLEKS                       R14 R8 K19 ["SharedFlags"]
       67 GETTABLEKS                       R13 R14 K20 ["getFFlagEnableUGCUploadFlowAnalytics"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K22 [game]
       72 LOADK                            R15 K23 ["EnableAddedCreateUGCBundleErrorCodes"]
       73 LOADB                            R16 0
       74 NAMECALL                         R13 R13 K24 ["DefineFastFlag"]
       76 CALL                             R13 3 1
       77 GETIMPORT                        R14 K7 [require]
       79 GETTABLEKS                       R15 R6 K25 ["UGCBundleUploadDataSharingRequest"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K7 [require]
       84 GETTABLEKS                       R17 R8 K19 ["SharedFlags"]
       86 GETTABLEKS                       R16 R17 K26 ["getFFlagEnableUnknownErrorCreatorDashboardMessage"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K7 [require]
       91 GETTABLEKS                       R17 R8 K27 ["getRobuxMessageToAppend"]
       93 CALL                             R16 1 1
       94 DUPCLOSURE                       R17 K28 [PROTO_0]
       95 DUPCLOSURE                       R18 K29 [PROTO_1]
       96 DUPCLOSURE                       R19 K30 [PROTO_2]
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R5
      105 DUPCLOSURE                       R20 K31 [PROTO_7]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R19
      121 RETURN                           R20 1
