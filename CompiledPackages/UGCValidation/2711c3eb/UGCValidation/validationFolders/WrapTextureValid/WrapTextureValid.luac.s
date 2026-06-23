PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Head"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshUVValuesInReference"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 LOADK                            R5 K1 ["WrapTextureTransfer"]
        3 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+10]
        8 GETIMPORT                        R4 K4 [error]
       10 GETIMPORT                        R5 K7 [string.format]
       12 LOADK                            R6 K8 ["WrapTextureTransfer child not found for %s"]
       13 GETTABLEKS                       R7 R2 K9 ["Name"]
       15 CALL                             R5 2 -1
       16 CALL                             R4 -1 0
       17 GETTABLEKS                       R4 R1 K10 ["consumerConfig"]
       19 GETTABLEKS                       R4 R4 K11 ["source"]
       21 GETUPVAL                         R7 0
       22 GETTABLE                         R6 R7 R4
       23 JUMPIFEQKB                       R6 TRUE ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 GETUPVAL                         R8 1
       28 GETTABLE                         R7 R8 R4
       29 JUMPIFEQKB                       R7 TRUE ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 MOVE                             R9 R3
       34 NAMECALL                         R7 R0 K12 ["setReportingInstance"]
       36 CALL                             R7 2 0
       37 GETTABLEKS                       R7 R3 K13 ["ReferenceCageMeshContent"]
       39 LOADB                            R8 0
       40 GETTABLEKS                       R9 R7 K14 ["Uri"]
       42 JUMPIFEQKNIL                     R9 ; [+7]
       44 GETTABLEKS                       R9 R7 K14 ["Uri"]
       46 JUMPIFNOTEQKS                    R9 K15 [""] ; [+2]
       48 LOADB                            R8 0 +1
       49 LOADB                            R8 1
       50 GETTABLEKS                       R9 R1 K10 ["consumerConfig"]
       52 GETTABLEKS                       R9 R9 K16 ["preloadedEditableMeshes"]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K17 ["getEditableInstanceInfo"]
       57 MOVE                             R11 R7
       58 MOVE                             R12 R9
       59 LOADK                            R13 K18 ["EditableMesh"]
       60 MOVE                             R14 R6
       61 CALL                             R10 4 2
       62 JUMPIFNOT                        R10 ; [+4]
       63 JUMPIFNOT                        R11 ; [+3]
       64 GETTABLEKS                       R12 R11 K19 ["instance"]
       66 JUMPIF                           R12 ; [+42]
       67 JUMPIF                           R8 ; [+15]
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K20 ["Keys"]
       71 GETTABLEKS                       R14 R14 K21 ["WrapTexture_NoCage"]
       73 DUPTABLE                         R15 K23 [{"instanceName"}]
       74 NAMECALL                         R16 R3 K24 ["GetFullName"]
       76 CALL                             R16 1 1
       77 SETTABLEKS                       R16 R15 K22 ["instanceName"]
       79 NAMECALL                         R12 R0 K25 ["fail"]
       81 CALL                             R12 3 0
       82 RETURN                           R0 0
       83 JUMPIFNOT                        R5 ; [+10]
       84 GETIMPORT                        R14 K7 [string.format]
       86 LOADK                            R15 K26 ["Failed to load ReferenceCageContent for %s"]
       87 NAMECALL                         R16 R3 K24 ["GetFullName"]
       89 CALL                             R16 1 -1
       90 CALL                             R14 -1 -1
       91 NAMECALL                         R12 R0 K27 ["forceError"]
       93 CALL                             R12 -1 0
       94 GETUPVAL                         R14 3
       95 GETTABLEKS                       R14 R14 K20 ["Keys"]
       97 GETTABLEKS                       R14 R14 K28 ["WrapTexture_FailedToLoadCage"]
       99 DUPTABLE                         R15 K23 [{"instanceName"}]
      100 NAMECALL                         R16 R3 K24 ["GetFullName"]
      102 CALL                             R16 1 1
      103 SETTABLEKS                       R16 R15 K22 ["instanceName"]
      105 NAMECALL                         R12 R0 K25 ["fail"]
      107 CALL                             R12 3 0
      108 RETURN                           R0 0
      109 GETTABLEKS                       R12 R11 K19 ["instance"]
      111 GETIMPORT                        R13 K30 [pcall]
      113 NEWCLOSURE                       R14 P0
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          VAL R12
      117 CALL                             R13 1 2
      118 JUMPIF                           R13 ; [+26]
      119 JUMPIFNOT                        R5 ; [+10]
      120 GETIMPORT                        R17 K7 [string.format]
      122 LOADK                            R18 K31 ["Failed to load UVs for '%s'. Make sure the UV map exists and try again."]
      123 NAMECALL                         R19 R3 K24 ["GetFullName"]
      125 CALL                             R19 1 -1
      126 CALL                             R17 -1 -1
      127 NAMECALL                         R15 R0 K27 ["forceError"]
      129 CALL                             R15 -1 0
      130 GETUPVAL                         R17 3
      131 GETTABLEKS                       R17 R17 K20 ["Keys"]
      133 GETTABLEKS                       R17 R17 K32 ["WrapTexture_FailedToLoadUV"]
      135 DUPTABLE                         R18 K23 [{"instanceName"}]
      136 NAMECALL                         R19 R3 K24 ["GetFullName"]
      138 CALL                             R19 1 1
      139 SETTABLEKS                       R19 R18 K22 ["instanceName"]
      141 NAMECALL                         R15 R0 K25 ["fail"]
      143 CALL                             R15 3 0
      144 RETURN                           R0 0
      145 JUMPIF                           R14 ; [+15]
      146 GETUPVAL                         R17 3
      147 GETTABLEKS                       R17 R17 K20 ["Keys"]
      149 GETTABLEKS                       R17 R17 K33 ["WrapTexture_InvalidUV"]
      151 DUPTABLE                         R18 K23 [{"instanceName"}]
      152 NAMECALL                         R19 R3 K24 ["GetFullName"]
      154 CALL                             R19 1 1
      155 SETTABLEKS                       R19 R18 K22 ["instanceName"]
      157 NAMECALL                         R15 R0 K25 ["fail"]
      159 CALL                             R15 3 0
      160 RETURN                           R0 0
      161 GETUPVAL                         R15 6
      162 GETTABLEKS                       R15 R15 K34 ["MAKEUP_INFO"]
      164 GETTABLEKS                       R16 R3 K35 ["UVMinBound"]
      166 GETTABLEKS                       R18 R15 K36 ["WrapTextureTransferUVBounds"]
      168 GETTABLEKS                       R18 R18 K37 ["MinBound"]
      170 NAMECALL                         R16 R16 K38 ["FuzzyEq"]
      172 CALL                             R16 2 1
      173 JUMPIF                           R16 ; [+33]
      174 GETUPVAL                         R18 3
      175 GETTABLEKS                       R18 R18 K20 ["Keys"]
      177 GETTABLEKS                       R18 R18 K39 ["WrapTexture_InvalidMinBound"]
      179 DUPTABLE                         R19 K42 [{"instanceName", "actual", "expected"}]
      180 NAMECALL                         R20 R3 K24 ["GetFullName"]
      182 CALL                             R20 1 1
      183 SETTABLEKS                       R20 R19 K22 ["instanceName"]
      185 GETTABLEKS                       R21 R3 K35 ["UVMinBound"]
      187 FASTCALL1                        TOSTRING R21 ; [+2]
      188 GETIMPORT                        R20 K44 [tostring]
      190 CALL                             R20 1 1
      191 SETTABLEKS                       R20 R19 K40 ["actual"]
      193 GETTABLEKS                       R21 R15 K36 ["WrapTextureTransferUVBounds"]
      195 GETTABLEKS                       R21 R21 K37 ["MinBound"]
      197 FASTCALL1                        TOSTRING R21 ; [+2]
      198 GETIMPORT                        R20 K44 [tostring]
      200 CALL                             R20 1 1
      201 SETTABLEKS                       R20 R19 K41 ["expected"]
      203 NAMECALL                         R16 R0 K25 ["fail"]
      205 CALL                             R16 3 0
      206 RETURN                           R0 0
      207 GETTABLEKS                       R16 R3 K45 ["UVMaxBound"]
      209 GETTABLEKS                       R18 R15 K36 ["WrapTextureTransferUVBounds"]
      211 GETTABLEKS                       R18 R18 K46 ["MaxBound"]
      213 NAMECALL                         R16 R16 K38 ["FuzzyEq"]
      215 CALL                             R16 2 1
      216 JUMPIF                           R16 ; [+32]
      217 GETUPVAL                         R18 3
      218 GETTABLEKS                       R18 R18 K20 ["Keys"]
      220 GETTABLEKS                       R18 R18 K47 ["WrapTexture_InvalidMaxBound"]
      222 DUPTABLE                         R19 K42 [{"instanceName", "actual", "expected"}]
      223 NAMECALL                         R20 R3 K24 ["GetFullName"]
      225 CALL                             R20 1 1
      226 SETTABLEKS                       R20 R19 K22 ["instanceName"]
      228 GETTABLEKS                       R21 R3 K45 ["UVMaxBound"]
      230 FASTCALL1                        TOSTRING R21 ; [+2]
      231 GETIMPORT                        R20 K44 [tostring]
      233 CALL                             R20 1 1
      234 SETTABLEKS                       R20 R19 K40 ["actual"]
      236 GETTABLEKS                       R21 R15 K36 ["WrapTextureTransferUVBounds"]
      238 GETTABLEKS                       R21 R21 K46 ["MaxBound"]
      240 FASTCALL1                        TOSTRING R21 ; [+2]
      241 GETIMPORT                        R20 K44 [tostring]
      243 CALL                             R20 1 1
      244 SETTABLEKS                       R20 R19 K41 ["expected"]
      246 NAMECALL                         R16 R0 K25 ["fail"]
      248 CALL                             R16 3 0
      249 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["WrapTargetCageUVReferenceValues"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R8 R1 K10 ["util"]
       50 GETTABLEKS                       R8 R8 K16 ["createEditableInstancesForContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R1 K17 ["flags"]
       57 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateMigrateWrapAndMakeup"]
       59 CALL                             R8 1 1
       60 DUPTABLE                         R9 K23 [{"Publish", "Backend", "Internal", "InExpServer"}]
       61 LOADB                            R10 1
       62 SETTABLEKS                       R10 R9 K19 ["Publish"]
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K20 ["Backend"]
       67 LOADB                            R10 1
       68 SETTABLEKS                       R10 R9 K21 ["Internal"]
       70 LOADB                            R10 1
       71 SETTABLEKS                       R10 R9 K22 ["InExpServer"]
       73 DUPTABLE                         R10 K25 [{"InExpServer", "InExpClient"}]
       74 LOADB                            R11 1
       75 SETTABLEKS                       R11 R10 K22 ["InExpServer"]
       77 LOADB                            R11 1
       78 SETTABLEKS                       R11 R10 K24 ["InExpClient"]
       80 NEWTABLE                         R11 8 0
       82 SETTABLEKS                       R8 R11 K26 ["fflag"]
       84 NEWTABLE                         R12 0 1
       86 GETTABLEKS                       R13 R4 K27 ["UploadCategory"]
       88 GETTABLEKS                       R13 R13 K28 ["MAKEUP"]
       90 SETLIST                          R12 R13 1 [1]
       92 SETTABLEKS                       R12 R11 K29 ["categories"]
       94 NEWTABLE                         R12 0 2
       96 GETTABLEKS                       R13 R4 K30 ["SharedDataMember"]
       98 GETTABLEKS                       R13 R13 K31 ["rootInstance"]
      100 GETTABLEKS                       R14 R4 K30 ["SharedDataMember"]
      102 GETTABLEKS                       R14 R14 K32 ["consumerConfig"]
      104 SETLIST                          R12 R13 2 [1]
      106 SETTABLEKS                       R12 R11 K33 ["requiredData"]
      108 NEWTABLE                         R12 0 0
      110 SETTABLEKS                       R12 R11 K34 ["expectedFailures"]
      112 DUPCLOSURE                       R12 K35 [PROTO_1]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R12 R11 K36 ["run"]
      122 RETURN                           R11 1
