PROTO_0:
        0 NAMECALL                         R4 R0 K0 ["GetChildren"]
        2 CALL                             R4 1 1
        3 LENGTH                           R3 R4
        4 LOADN                            R4 0
        5 JUMPIFLT                         R4 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       11 LOADK                            R3 K1 ["Folder from limb validation did not have any instances"]
       12 GETIMPORT                        R1 K3 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K6 [Instance.new]
       17 LOADK                            R2 K7 ["Model"]
       18 CALL                             R1 1 1
       19 NAMECALL                         R2 R0 K0 ["GetChildren"]
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 NAMECALL                         R7 R6 K8 ["Clone"]
       25 CALL                             R7 1 1
       26 JUMPIFNOTEQKN                    R5 K9 [1] ; [+14]
       28 MOVE                             R8 R7
       29 LOADK                            R11 K10 ["BasePart"]
       30 NAMECALL                         R9 R8 K11 ["IsA"]
       32 CALL                             R9 2 1
       33 JUMPIF                           R9 ; [+5]
       34 LOADK                            R11 K10 ["BasePart"]
       35 NAMECALL                         R9 R7 K12 ["FindFirstChildWhichIsA"]
       37 CALL                             R9 2 1
       38 MOVE                             R8 R9
       39 SETTABLEKS                       R8 R1 K13 ["PrimaryPart"]
       41 SETTABLEKS                       R1 R7 K14 ["Parent"]
       43 FORGLOOP                         R2 2 ; [-21]
       45 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R2 R0 K4 ["Clone"]
        6 CALL                             R2 1 1
        7 MOVE                             R3 R2
        8 LOADK                            R6 K5 ["BasePart"]
        9 NAMECALL                         R4 R3 K6 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+5]
       13 LOADK                            R6 K5 ["BasePart"]
       14 NAMECALL                         R4 R2 K7 ["FindFirstChildWhichIsA"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R1 K8 ["PrimaryPart"]
       20 SETTABLEKS                       R1 R2 K9 ["Parent"]
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFEQKNIL                     R1 ; [+9]
        9 JUMPIFEQKS                       R1 K0 [""] ; [+7]
       11 JUMPIFEQKNIL                     R0 ; [+5]
       13 GETTABLEKS                       R2 R0 K1 ["Name"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R0 K1 ["Name"]
       21 GETIMPORT                        R3 K4 [string.gmatch]
       23 MOVE                             R4 R1
       24 LOADK                            R5 K5 ["([^,]+)"]
       25 CALL                             R3 2 3
       26 FORGPREP                         R3
       27 GETIMPORT                        R8 K7 [string.gsub]
       29 MOVE                             R9 R6
       30 LOADK                            R10 K8 ["^%s*(.-)%s*$"]
       31 LOADK                            R11 K9 ["%1"]
       32 CALL                             R8 3 1
       33 JUMPIFNOTEQ                      R8 R2 ; [+3]
       35 LOADB                            R8 1
       36 RETURN                           R8 1
       37 FORGLOOP                         R3 1 ; [-11]
       39 LOADB                            R3 0
       40 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["props"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["getAvatarAssetTypeAsString"]
       13 GETTABLEKS                       R6 R2 K3 ["currentAssetType"]
       15 CALL                             R5 1 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["shouldDebugWarnings"]
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+17]
       22 GETTABLEKS                       R7 R3 K5 ["validationState"]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K6 ["VALIDATION_STATE"]
       27 GETTABLEKS                       R8 R8 K7 ["VALIDATING"]
       29 JUMPIFEQ                         R7 R8 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       35 LOADK                            R7 K8 ["Validation state is expected to be `Validating`."]
       36 GETIMPORT                        R5 K10 [assert]
       38 CALL                             R5 2 0
       39 JUMPIFNOT                        R0 ; [+33]
       40 GETTABLEKS                       R5 R3 K11 ["setValidationState"]
       42 JUMPIFNOT                        R5 ; [+8]
       43 GETTABLEKS                       R5 R3 K11 ["setValidationState"]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K6 ["VALIDATION_STATE"]
       48 GETTABLEKS                       R6 R6 K12 ["SUCCESS"]
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R5 R3 K13 ["setValidationFailureReasons"]
       53 JUMPIFNOT                        R5 ; [+5]
       54 GETTABLEKS                       R5 R3 K13 ["setValidationFailureReasons"]
       56 NEWTABLE                         R6 0 0
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 1
       60 CALL                             R5 0 1
       61 JUMPIFNOT                        R5 ; [+84]
       62 GETUPVAL                         R5 5
       63 GETTABLEKS                       R5 R5 K14 ["UGCBundleValidationEvent"]
       65 GETUPVAL                         R6 5
       66 GETTABLEKS                       R6 R6 K15 ["Status"]
       68 GETTABLEKS                       R6 R6 K16 ["Success"]
       70 MOVE                             R7 R4
       71 CALL                             R5 2 0
       72 JUMP                             ; [+73]
       73 LENGTH                           R5 R1
       74 LOADN                            R6 0
       75 JUMPIFNOTLT                      R6 R5 ; [+17]
       77 GETTABLEKS                       R5 R3 K17 ["Localization"]
       79 LOADK                            R7 K18 ["AssetConfig"]
       80 LOADK                            R8 K19 ["AssetConfigOutputErrorHeading"]
       81 DUPTABLE                         R9 K21 [{"errorCount"}]
       82 LENGTH                           R10 R1
       83 SETTABLEKS                       R10 R9 K20 ["errorCount"]
       85 NAMECALL                         R5 R5 K22 ["getText"]
       87 CALL                             R5 4 1
       88 GETIMPORT                        R6 K24 [warn]
       90 MOVE                             R7 R5
       91 MOVE                             R8 R1
       92 CALL                             R6 2 0
       93 LENGTH                           R6 R1
       94 LOADN                            R7 0
       95 JUMPIFNOTLT                      R7 R6 ; [+3]
       97 MOVE                             R5 R1
       98 JUMP                             ; [+11]
       99 NEWTABLE                         R5 0 1
      101 GETTABLEKS                       R6 R3 K17 ["Localization"]
      103 LOADK                            R8 K18 ["AssetConfig"]
      104 LOADK                            R9 K25 ["ValidationErrorUnknown"]
      105 NAMECALL                         R6 R6 K22 ["getText"]
      107 CALL                             R6 3 -1
      108 SETLIST                          R5 R6 -1 [1]
      110 GETTABLEKS                       R6 R3 K11 ["setValidationState"]
      112 JUMPIFNOT                        R6 ; [+8]
      113 GETTABLEKS                       R6 R3 K11 ["setValidationState"]
      115 GETUPVAL                         R7 4
      116 GETTABLEKS                       R7 R7 K6 ["VALIDATION_STATE"]
      118 GETTABLEKS                       R7 R7 K26 ["FAILURE"]
      120 CALL                             R6 1 0
      121 GETTABLEKS                       R6 R3 K13 ["setValidationFailureReasons"]
      123 JUMPIFNOT                        R6 ; [+4]
      124 GETTABLEKS                       R6 R3 K13 ["setValidationFailureReasons"]
      126 MOVE                             R7 R5
      127 CALL                             R6 1 0
      128 GETUPVAL                         R6 1
      129 CALL                             R6 0 1
      130 JUMPIFNOT                        R6 ; [+15]
      131 GETUPVAL                         R6 5
      132 GETTABLEKS                       R6 R6 K14 ["UGCBundleValidationEvent"]
      134 GETUPVAL                         R7 5
      135 GETTABLEKS                       R7 R7 K15 ["Status"]
      137 GETTABLEKS                       R7 R7 K27 ["Failure"]
      139 MOVE                             R8 R4
      140 GETUPVAL                         R9 2
      141 GETTABLEKS                       R9 R9 K28 ["getValidationFailuresAsString"]
      143 MOVE                             R10 R5
      144 CALL                             R9 1 -1
      145 CALL                             R6 -1 0
      146 GETTABLEKS                       R5 R3 K29 ["onAssetValidationResultChanged"]
      148 JUMPIFNOT                        R5 ; [+4]
      149 GETTABLEKS                       R5 R3 K29 ["onAssetValidationResultChanged"]
      151 MOVE                             R6 R0
      152 CALL                             R5 1 0
      153 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setValidationState"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["setValidationState"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["VALIDATION_STATE"]
       10 GETTABLEKS                       R1 R1 K2 ["BEGIN"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 SETTABLEKS                       R2 R0 K1 ["validationCallback"]
       11 GETTABLEKS                       R2 R1 K2 ["assetTypeEnum"]
       13 JUMPIFEQKNIL                     R2 ; [+23]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["shouldValidateAssetType"]
       18 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+15]
       22 GETUPVAL                         R2 5
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETTABLEKS                       R2 R1 K4 ["onAssetValidationResultChanged"]
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETTABLEKS                       R2 R1 K4 ["onAssetValidationResultChanged"]
       29 LOADB                            R3 0
       30 CALL                             R2 1 0
       31 GETIMPORT                        R2 K7 [task.defer]
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U3
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["validationTask"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETIMPORT                        R1 K3 [task.cancel]
        6 GETTABLEKS                       R2 R0 K0 ["validationTask"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["validationTask"]
       12 GETTABLEKS                       R1 R0 K4 ["validationPromise"]
       14 JUMPIFEQKNIL                     R1 ; [+9]
       16 GETTABLEKS                       R1 R0 K4 ["validationPromise"]
       18 NAMECALL                         R1 R1 K2 ["cancel"]
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["validationPromise"]
       24 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["error"]
        2 GETTABLEKS                       R2 R2 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["message"] ; [+6]
        6 GETTABLEKS                       R1 R0 K0 ["error"]
        8 GETTABLEKS                       R1 R1 K2 ["message"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R2 R0 K0 ["error"]
       13 GETTABLEKS                       R2 R2 K1 ["type"]
       15 JUMPIFNOTEQKS                    R2 K3 ["notFound"] ; [+21]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K4 ["Localization"]
       20 LOADK                            R3 K5 ["AssetConfig"]
       21 LOADK                            R4 K6 ["ValidationErrorItemNotDetected"]
       22 DUPTABLE                         R5 K8 [{"itemName"}]
       23 GETUPVAL                         R7 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K4 ["Localization"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R0 K9 ["assetType"]
       30 GETTABLE                         R6 R7 R8
       31 SETTABLEKS                       R6 R5 K7 ["itemName"]
       33 NAMECALL                         R1 R1 K10 ["getText"]
       35 CALL                             R1 4 1
       36 RETURN                           R1 1
       37 GETIMPORT                        R1 K11 [error]
       39 LOADK                            R3 K12 ["Unknown error type: %*"]
       40 GETTABLEKS                       R5 R0 K0 ["error"]
       42 GETTABLEKS                       R5 R5 K1 ["type"]
       44 NAMECALL                         R3 R3 K13 ["format"]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 CALL                             R1 1 1
       49 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["validationCallback"]
        3 LOADB                            R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+2]
        9 GETUPVAL                         R4 1
       10 JUMPIF                           R4 ; [+71]
       11 GETTABLEKS                       R4 R0 K0 ["errors"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETUPVAL                         R9 2
       17 CALL                             R9 0 1
       18 JUMPIFNOT                        R9 ; [+35]
       19 GETUPVAL                         R9 3
       20 MOVE                             R10 R8
       21 CALL                             R9 1 1
       22 GETTABLEKS                       R10 R8 K1 ["assetType"]
       24 JUMPIFNOTEQKNIL                  R10 ; [+9]
       26 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       28 MOVE                             R11 R3
       29 MOVE                             R12 R9
       30 GETIMPORT                        R10 K4 [table.insert]
       32 CALL                             R10 2 0
       33 JUMP                             ; [+46]
       34 GETTABLEKS                       R11 R8 K1 ["assetType"]
       36 GETTABLE                         R10 R2 R11
       37 JUMPIFNOTEQKNIL                  R10 ; [+6]
       39 GETTABLEKS                       R10 R8 K1 ["assetType"]
       41 NEWTABLE                         R11 0 0
       43 SETTABLE                         R11 R2 R10
       44 GETTABLEKS                       R12 R8 K1 ["assetType"]
       46 GETTABLE                         R11 R2 R12
       47 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       49 MOVE                             R12 R9
       50 GETIMPORT                        R10 K4 [table.insert]
       52 CALL                             R10 2 0
       53 JUMP                             ; [+26]
       54 GETTABLEKS                       R9 R8 K1 ["assetType"]
       56 JUMPIFEQKNIL                     R9 ; [+23]
       58 GETTABLEKS                       R10 R8 K1 ["assetType"]
       60 GETTABLE                         R9 R2 R10
       61 JUMPIFNOTEQKNIL                  R9 ; [+6]
       63 GETTABLEKS                       R9 R8 K1 ["assetType"]
       65 NEWTABLE                         R10 0 0
       67 SETTABLE                         R10 R2 R9
       68 GETUPVAL                         R9 3
       69 MOVE                             R10 R8
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R12 R8 K1 ["assetType"]
       73 GETTABLE                         R11 R2 R12
       74 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       76 MOVE                             R12 R9
       77 GETIMPORT                        R10 K4 [table.insert]
       79 CALL                             R10 2 0
       80 FORGLOOP                         R4 2 ; [-65]
       82 GETTABLEKS                       R4 R0 K5 ["pieces"]
       84 LOADNIL                          R5
       85 LOADNIL                          R6
       86 FORGPREP                         R4
       87 GETUPVAL                         R10 0
       88 CALL                             R10 0 1
       89 JUMPIFNOT                        R10 ; [+5]
       90 GETUPVAL                         R10 1
       91 JUMPIFNOT                        R10 ; [+3]
       92 NEWTABLE                         R9 0 0
       94 JUMP                             ; [+6]
       95 GETTABLEKS                       R10 R8 K1 ["assetType"]
       97 GETTABLE                         R9 R2 R10
       98 JUMPIF                           R9 ; [+2]
       99 NEWTABLE                         R9 0 0
      101 DUPTABLE                         R12 K9 [{"assetType", "instance", "required", "errors", "type"}]
      102 GETTABLEKS                       R13 R8 K1 ["assetType"]
      104 SETTABLEKS                       R13 R12 K1 ["assetType"]
      106 GETTABLEKS                       R13 R8 K6 ["instance"]
      108 SETTABLEKS                       R13 R12 K6 ["instance"]
      110 GETTABLEKS                       R14 R8 K10 ["settings"]
      112 GETTABLEKS                       R14 R14 K11 ["minimumQuantity"]
      114 LOADN                            R15 0
      115 JUMPIFLT                         R15 R14 ; [+2]
      117 LOADB                            R13 0 +1
      118 LOADB                            R13 1
      119 SETTABLEKS                       R13 R12 K7 ["required"]
      121 SETTABLEKS                       R9 R12 K0 ["errors"]
      123 GETUPVAL                         R14 0
      124 CALL                             R14 0 1
      125 JUMPIFNOT                        R14 ; [+6]
      126 GETUPVAL                         R14 1
      127 JUMPIFNOT                        R14 ; [+4]
      128 GETUPVAL                         R13 4
      129 GETTABLEKS                       R13 R13 K12 ["success"]
      131 JUMP                             ; [+19]
      132 LENGTH                           R14 R9
      133 LOADN                            R15 0
      134 JUMPIFNOTLT                      R15 R14 ; [+5]
      136 GETUPVAL                         R13 4
      137 GETTABLEKS                       R13 R13 K13 ["error"]
      139 JUMP                             ; [+11]
      140 GETTABLEKS                       R14 R8 K14 ["status"]
      142 JUMPIFNOTEQKS                    R14 K15 ["finished"] ; [+5]
      144 GETUPVAL                         R13 4
      145 GETTABLEKS                       R13 R13 K12 ["success"]
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R13 4
      149 GETTABLEKS                       R13 R13 K16 ["pending"]
      151 SETTABLEKS                       R13 R12 K8 ["type"]
      153 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      155 MOVE                             R11 R1
      156 GETIMPORT                        R10 K4 [table.insert]
      158 CALL                             R10 2 0
      159 FORGLOOP                         R4 2 ; [-73]
      161 GETUPVAL                         R4 2
      162 CALL                             R4 0 1
      163 JUMPIFNOT                        R4 ; [+49]
      164 DUPTABLE                         R6 K9 [{"assetType", "instance", "required", "errors", "type"}]
      165 LOADNIL                          R7
      166 SETTABLEKS                       R7 R6 K1 ["assetType"]
      168 GETUPVAL                         R7 5
      169 SETTABLEKS                       R7 R6 K6 ["instance"]
      171 LOADB                            R7 1
      172 SETTABLEKS                       R7 R6 K7 ["required"]
      174 GETUPVAL                         R8 0
      175 CALL                             R8 0 1
      176 JUMPIFNOT                        R8 ; [+5]
      177 GETUPVAL                         R8 1
      178 JUMPIFNOT                        R8 ; [+3]
      179 NEWTABLE                         R7 0 0
      181 JUMP                             ; [+1]
      182 MOVE                             R7 R3
      183 SETTABLEKS                       R7 R6 K0 ["errors"]
      185 GETUPVAL                         R8 0
      186 CALL                             R8 0 1
      187 JUMPIFNOT                        R8 ; [+6]
      188 GETUPVAL                         R8 1
      189 JUMPIFNOT                        R8 ; [+4]
      190 GETUPVAL                         R7 4
      191 GETTABLEKS                       R7 R7 K12 ["success"]
      193 JUMP                             ; [+11]
      194 LENGTH                           R8 R3
      195 LOADN                            R9 0
      196 JUMPIFNOTLT                      R9 R8 ; [+5]
      198 GETUPVAL                         R7 4
      199 GETTABLEKS                       R7 R7 K13 ["error"]
      201 JUMP                             ; [+3]
      202 GETUPVAL                         R7 4
      203 GETTABLEKS                       R7 R7 K16 ["pending"]
      205 SETTABLEKS                       R7 R6 K8 ["type"]
      207 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
      209 MOVE                             R5 R1
      210 GETIMPORT                        R4 K4 [table.insert]
      212 CALL                             R4 2 0
      213 GETUPVAL                         R4 6
      214 GETTABLEKS                       R4 R4 K17 ["setUGCBundleValidationResults"]
      216 JUMPIFNOT                        R4 ; [+5]
      217 GETUPVAL                         R4 6
      218 GETTABLEKS                       R4 R4 K17 ["setUGCBundleValidationResults"]
      220 MOVE                             R5 R1
      221 CALL                             R4 1 0
      222 GETUPVAL                         R4 0
      223 CALL                             R4 0 1
      224 JUMPIFNOT                        R4 ; [+11]
      225 GETUPVAL                         R4 1
      226 JUMPIFNOT                        R4 ; [+9]
      227 GETUPVAL                         R4 7
      228 JUMPIF                           R4 ; [+7]
      229 LOADB                            R4 1
      230 SETUPVAL                         R4 7
      231 GETIMPORT                        R4 K20 [task.defer]
      233 NEWCLOSURE                       R5 P0
      234 CAPTURE                          UPVAL U8
      235 CALL                             R4 1 0
      236 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["validationResults"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["None"]
        5 JUMPIFEQ                         R2 R3 ; [+19]
        7 GETTABLEKS                       R2 R1 K0 ["validationResults"]
        9 JUMPIFEQKNIL                     R2 ; [+15]
       11 GETTABLEKS                       R3 R1 K0 ["validationResults"]
       13 LENGTH                           R2 R3
       14 JUMPIFEQKN                       R2 K2 [0] ; [+10]
       16 GETUPVAL                         R2 1
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETTABLEKS                       R2 R1 K0 ["validationResults"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["None"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+4]
       25 NEWTABLE                         R2 0 0
       27 RETURN                           R2 1
       28 GETIMPORT                        R2 K5 [table.clone]
       30 GETTABLEKS                       R3 R1 K0 ["validationResults"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [table.clone]
       35 LENGTH                           R5 R2
       36 GETTABLE                         R4 R2 R5
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R6 R3 K6 ["assetType"]
       40 JUMPIFEQKNIL                     R6 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       46 LOADK                            R6 K7 ["Expected last validation result to not have an asset type (full body)"]
       47 GETIMPORT                        R4 K9 [assert]
       49 CALL                             R4 2 0
       50 GETTABLEKS                       R5 R3 K10 ["errors"]
       52 LENGTH                           R4 R5
       53 JUMPIFNOTEQKN                    R4 K2 [0] ; [+6]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K11 ["success"]
       58 SETTABLEKS                       R4 R3 K12 ["type"]
       60 LENGTH                           R4 R2
       61 SETTABLE                         R3 R2 R4
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K13 ["setUGCBundleValidationResults"]
       65 JUMPIFNOT                        R4 ; [+5]
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K13 ["setUGCBundleValidationResults"]
       69 MOVE                             R5 R2
       70 CALL                             R4 1 0
       71 DUPTABLE                         R4 K15 [{"ugcBundleValidationResults"}]
       72 SETTABLEKS                       R2 R4 K14 ["ugcBundleValidationResults"]
       74 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+9]
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K0 ["validationCallback"]
       12 LOADB                            R2 1
       13 NEWTABLE                         R3 0 0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 4
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+9]
       20 GETUPVAL                         R1 3
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 NAMECALL                         R1 R1 K1 ["setState"]
       28 CALL                             R1 2 0
       29 NEWTABLE                         R1 0 0
       31 GETTABLEKS                       R2 R0 K2 ["errors"]
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 GETUPVAL                         R9 9
       37 MOVE                             R10 R6
       38 CALL                             R9 1 1
       39 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K5 [table.insert]
       44 CALL                             R7 2 0
       45 FORGLOOP                         R2 2 ; [-10]
       47 GETUPVAL                         R2 10
       48 CALL                             R2 0 1
       49 JUMPIF                           R2 ; [+3]
       50 GETUPVAL                         R2 11
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+34]
       53 GETUPVAL                         R2 8
       54 GETTABLEKS                       R2 R2 K6 ["assetTypeEnum"]
       56 GETUPVAL                         R3 12
       57 GETTABLEKS                       R3 R3 K7 ["UGCBundleTypes"]
       59 GETTABLEKS                       R3 R3 K8 ["Body"]
       61 JUMPIFNOTEQ                      R2 R3 ; [+25]
       63 GETUPVAL                         R2 13
       64 GETTABLEKS                       R2 R2 K9 ["ValidateBody"]
       66 GETUPVAL                         R4 8
       67 GETTABLEKS                       R4 R4 K10 ["instances"]
       69 GETTABLEN                        R3 R4 1
       70 GETUPVAL                         R4 8
       71 GETTABLEKS                       R4 R4 K11 ["Localization"]
       73 CALL                             R2 2 1
       74 MOVE                             R3 R2
       75 LOADNIL                          R4
       76 LOADNIL                          R5
       77 FORGPREP                         R3
       78 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       80 MOVE                             R9 R1
       81 MOVE                             R10 R7
       82 GETIMPORT                        R8 K5 [table.insert]
       84 CALL                             R8 2 0
       85 FORGLOOP                         R3 2 ; [-8]
       87 GETUPVAL                         R2 3
       88 GETTABLEKS                       R2 R2 K0 ["validationCallback"]
       90 LENGTH                           R4 R1
       91 JUMPIFEQKN                       R4 K12 [0] ; [+2]
       93 LOADB                            R3 0 +1
       94 LOADB                            R3 1
       95 MOVE                             R4 R1
       96 CALL                             R2 2 0
       97 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+17]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["getAvatarAssetTypeAsString"]
        9 GETTABLEKS                       R4 R1 K2 ["assetTypeEnum"]
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["UGCBundleValidationEvent"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["Status"]
       19 GETTABLEKS                       R4 R4 K5 ["Start"]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R3 R1 K6 ["instances"]
       25 JUMPIFEQKNIL                     R3 ; [+6]
       27 GETTABLEKS                       R4 R1 K6 ["instances"]
       29 LENGTH                           R3 R4
       30 JUMPIFEQKN                       R3 K7 [1] ; [+44]
       32 GETTABLEKS                       R3 R1 K8 ["setValidationState"]
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETTABLEKS                       R3 R1 K8 ["setValidationState"]
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K9 ["VALIDATION_STATE"]
       40 GETTABLEKS                       R4 R4 K10 ["FAILURE"]
       42 CALL                             R3 1 0
       43 GETTABLEKS                       R3 R1 K11 ["setValidationFailureReasons"]
       45 JUMPIFNOT                        R3 ; [+14]
       46 GETTABLEKS                       R3 R1 K11 ["setValidationFailureReasons"]
       48 NEWTABLE                         R4 0 1
       50 GETTABLEKS                       R5 R1 K12 ["Localization"]
       52 LOADK                            R7 K13 ["AssetConfig"]
       53 LOADK                            R8 K14 ["ValidationErrorBadSelectionCount"]
       54 NAMECALL                         R5 R5 K15 ["getText"]
       56 CALL                             R5 3 -1
       57 SETLIST                          R4 R5 -1 [1]
       59 CALL                             R3 1 0
       60 GETUPVAL                         R3 0
       61 CALL                             R3 0 1
       62 JUMPIFNOT                        R3 ; [+11]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R3 R3 K3 ["UGCBundleValidationEvent"]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K4 ["Status"]
       69 GETTABLEKS                       R4 R4 K16 ["Failure"]
       71 MOVE                             R5 R2
       72 LOADK                            R6 K17 ["Bad Selection Count"]
       73 CALL                             R3 3 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R4 4
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+5]
       78 GETUPVAL                         R3 5
       79 GETTABLEKS                       R4 R1 K2 ["assetTypeEnum"]
       81 CALL                             R3 1 1
       82 JUMP                             ; [+1]
       83 LOADB                            R3 0
       84 LOADB                            R4 0
       85 LOADNIL                          R5
       86 GETUPVAL                         R6 6
       87 CALL                             R6 0 1
       88 JUMPIFNOT                        R6 ; [+14]
       89 GETTABLEKS                       R7 R0 K0 ["props"]
       91 GETTABLEKS                       R7 R7 K6 ["instances"]
       93 GETTABLEN                        R6 R7 1
       94 NAMECALL                         R6 R6 K18 ["Clone"]
       96 CALL                             R6 1 1
       97 MOVE                             R5 R6
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R6 R6 K19 ["sanitizeForValidation"]
      101 MOVE                             R7 R5
      102 CALL                             R6 1 0
      103 NEWCLOSURE                       R6 P0
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U7
      106 NEWCLOSURE                       R7 P1
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          VAL R3
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          VAL R6
      111 CAPTURE                          UPVAL U8
      112 CAPTURE                          REF R5
      113 CAPTURE                          VAL R1
      114 CAPTURE                          REF R4
      115 CAPTURE                          VAL R0
      116 LOADNIL                          R8
      117 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      119 GETUPVAL                         R10 3
      120 GETTABLEKS                       R10 R10 K20 ["UGCBundleTypes"]
      122 GETTABLEKS                       R10 R10 K21 ["Shoes"]
      124 JUMPIFNOTEQ                      R9 R10 ; [+5]
      126 GETUPVAL                         R9 9
      127 GETTABLEKS                       R8 R9 K22 ["validateShoesBundleReadyForUpload"]
      129 JUMP                             ; [+19]
      130 GETUPVAL                         R9 10
      131 CALL                             R9 0 1
      132 JUMPIFNOT                        R9 ; [+13]
      133 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      135 GETUPVAL                         R10 3
      136 GETTABLEKS                       R10 R10 K20 ["UGCBundleTypes"]
      138 GETTABLEKS                       R10 R10 K23 ["AvatarAnimations"]
      140 JUMPIFNOTEQ                      R9 R10 ; [+5]
      142 GETUPVAL                         R9 9
      143 GETTABLEKS                       R8 R9 K24 ["validateBundleReadyForUpload"]
      145 JUMP                             ; [+3]
      146 GETUPVAL                         R9 9
      147 GETTABLEKS                       R8 R9 K24 ["validateBundleReadyForUpload"]
      149 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      151 GETTABLEKS                       R10 R1 K6 ["instances"]
      153 JUMPIFEQKNIL                     R10 ; [+63]
      155 LOADNIL                          R10
      156 GETUPVAL                         R11 9
      157 GETTABLEKS                       R11 R11 K25 ["isFolderStructureEnabled"]
      159 JUMPIFNOT                        R11 ; [+24]
      160 GETUPVAL                         R11 9
      161 GETTABLEKS                       R11 R11 K25 ["isFolderStructureEnabled"]
      163 CALL                             R11 0 1
      164 JUMPIFNOT                        R11 ; [+19]
      165 DUPTABLE                         R11 K27 [{"studioPluginName"}]
      166 LOADK                            R12 K28 ["Toolbox"]
      167 SETTABLEKS                       R12 R11 K26 ["studioPluginName"]
      169 MOVE                             R10 R11
      170 GETUPVAL                         R11 9
      171 GETTABLEKS                       R11 R11 K29 ["isEntrypointMergingEnabled"]
      173 JUMPIFNOT                        R11 ; [+10]
      174 GETUPVAL                         R11 9
      175 GETTABLEKS                       R11 R11 K29 ["isEntrypointMergingEnabled"]
      177 CALL                             R11 0 1
      178 JUMPIFNOT                        R11 ; [+5]
      179 NEWCLOSURE                       R11 P2
      180 CAPTURE                          UPVAL U1
      181 CAPTURE                          VAL R1
      182 SETTABLEKS                       R11 R10 K30 ["localizationCallback"]
      184 MOVE                             R11 R8
      185 GETTABLEKS                       R13 R1 K6 ["instances"]
      187 GETTABLEN                        R12 R13 1
      188 GETTABLEKS                       R13 R1 K31 ["allowedBundleTypeSettings"]
      190 GETTABLEKS                       R14 R9 K32 ["rawValue"]
      192 CALL                             R14 0 1
      193 MOVE                             R15 R7
      194 LOADNIL                          R16
      195 MOVE                             R17 R10
      196 CALL                             R11 6 1
      197 NEWCLOSURE                       R13 P3
      198 CAPTURE                          UPVAL U4
      199 CAPTURE                          VAL R3
      200 CAPTURE                          REF R4
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U6
      203 CAPTURE                          UPVAL U11
      204 CAPTURE                          UPVAL U12
      205 CAPTURE                          UPVAL U8
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R6
      208 CAPTURE                          UPVAL U13
      209 CAPTURE                          UPVAL U14
      210 CAPTURE                          UPVAL U3
      211 CAPTURE                          UPVAL U1
      212 NAMECALL                         R11 R11 K33 ["andThen"]
      214 CALL                             R11 2 1
      215 SETTABLEKS                       R11 R0 K34 ["validationPromise"]
      217 CLOSEUPVALS                      R4
      218 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R5 R3 K1 ["assetTypeEnum"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+8]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["isUGCBundleType"]
       11 GETTABLEKS                       R5 R3 K1 ["assetTypeEnum"]
       13 CALL                             R4 1 1
       14 JUMPIF                           R4 ; [+4]
       15 NAMECALL                         R4 R0 K3 ["cancelValidationTasks"]
       17 CALL                             R4 1 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R4 R3 K4 ["validationState"]
       21 GETTABLEKS                       R5 R1 K4 ["validationState"]
       23 JUMPIFEQ                         R4 R5 ; [+31]
       25 GETTABLEKS                       R4 R3 K4 ["validationState"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K5 ["VALIDATION_STATE"]
       30 GETTABLEKS                       R5 R5 K6 ["BEGIN"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+10]
       34 GETTABLEKS                       R4 R3 K7 ["setValidationState"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K5 ["VALIDATION_STATE"]
       39 GETTABLEKS                       R5 R5 K8 ["VALIDATING"]
       41 CALL                             R4 1 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R4 R3 K4 ["validationState"]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K5 ["VALIDATION_STATE"]
       48 GETTABLEKS                       R5 R5 K8 ["VALIDATING"]
       50 JUMPIFNOTEQ                      R4 R5 ; [+4]
       52 NAMECALL                         R4 R0 K9 ["startUGCBundleValidation"]
       54 CALL                             R4 1 0
       55 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["cancelValidationTasks"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["ugcBundleValidation"]
        8 GETTABLEKS                       R5 R1 K4 ["validationResults"]
       10 JUMPIFEQKNIL                     R5 ; [+8]
       12 GETTABLEKS                       R5 R1 K4 ["validationResults"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K5 ["None"]
       17 JUMPIFNOTEQ                      R5 R6 ; [+4]
       19 NEWTABLE                         R4 0 0
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R4 R1 K4 ["validationResults"]
       24 GETTABLEKS                       R5 R1 K1 ["Localization"]
       26 LOADK                            R7 K6 ["AssetConfig"]
       27 LOADK                            R8 K7 ["UGCPublishWarning"]
       28 NAMECALL                         R5 R5 K8 ["getText"]
       30 CALL                             R5 3 1
       31 NEWTABLE                         R6 0 0
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K9 ["new"]
       36 CALL                             R7 0 1
       37 GETTABLEKS                       R8 R1 K10 ["isUGCBodyBundleType"]
       39 JUMPIFNOT                        R8 ; [+191]
       40 GETUPVAL                         R8 2
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+67]
       43 MOVE                             R9 R6
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R10 R10 K11 ["createElement"]
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R11 R11 K12 ["View"]
       50 DUPTABLE                         R12 K15 [{"tag", "LayoutOrder"}]
       51 LOADK                            R13 K16 ["row gap-small align-x-left align-y-center size-full-0 auto-y"]
       52 SETTABLEKS                       R13 R12 K13 ["tag"]
       54 LOADN                            R13 255
       55 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       57 DUPTABLE                         R13 K19 [{"Icon", "UGCWarningText"}]
       58 GETUPVAL                         R14 3
       59 GETTABLEKS                       R14 R14 K11 ["createElement"]
       61 GETUPVAL                         R15 4
       62 GETTABLEKS                       R15 R15 K20 ["Image"]
       64 DUPTABLE                         R16 K22 [{"tag", "Image", "LayoutOrder", "Size"}]
       65 LOADK                            R17 K23 ["content-system-warning shrink-0"]
       66 SETTABLEKS                       R17 R16 K13 ["tag"]
       68 GETUPVAL                         R17 5
       69 GETTABLEKS                       R17 R17 K24 ["WARNING_ICON"]
       71 SETTABLEKS                       R17 R16 K20 ["Image"]
       73 LOADN                            R17 1
       74 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       76 GETIMPORT                        R17 K27 [UDim2.fromOffset]
       78 LOADN                            R18 22
       79 LOADN                            R19 22
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K21 ["Size"]
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K17 ["Icon"]
       86 GETUPVAL                         R14 3
       87 GETTABLEKS                       R14 R14 K11 ["createElement"]
       89 GETUPVAL                         R15 4
       90 GETTABLEKS                       R15 R15 K28 ["Text"]
       92 DUPTABLE                         R16 K29 [{"tag", "LayoutOrder", "Text"}]
       93 LOADK                            R17 K30 ["text-body-small text-align-x-left content-system-warning size-full-0 auto-y"]
       94 SETTABLEKS                       R17 R16 K13 ["tag"]
       96 LOADN                            R17 2
       97 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       99 SETTABLEKS                       R5 R16 K28 ["Text"]
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K18 ["UGCWarningText"]
      104 CALL                             R10 3 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R8 K33 [table.insert]
      108 CALL                             R8 -1 0
      109 JUMP                             ; [+121]
      110 MOVE                             R9 R6
      111 GETUPVAL                         R10 6
      112 GETTABLEKS                       R10 R10 K11 ["createElement"]
      114 GETUPVAL                         R11 7
      115 DUPTABLE                         R12 K39 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      116 GETIMPORT                        R13 K42 [Enum.AutomaticSize.Y]
      118 SETTABLEKS                       R13 R12 K34 ["AutomaticSize"]
      120 GETIMPORT                        R13 K44 [Enum.HorizontalAlignment.Left]
      122 SETTABLEKS                       R13 R12 K35 ["HorizontalAlignment"]
      124 GETIMPORT                        R13 K47 [Enum.FillDirection.Horizontal]
      126 SETTABLEKS                       R13 R12 K36 ["Layout"]
      128 LOADN                            R13 255
      129 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      131 GETIMPORT                        R13 K49 [UDim2.fromScale]
      133 LOADN                            R14 1
      134 LOADN                            R15 0
      135 CALL                             R13 2 1
      136 SETTABLEKS                       R13 R12 K21 ["Size"]
      138 LOADN                            R13 8
      139 SETTABLEKS                       R13 R12 K37 ["Spacing"]
      141 GETIMPORT                        R13 K51 [Enum.VerticalAlignment.Top]
      143 SETTABLEKS                       R13 R12 K38 ["VerticalAlignment"]
      145 DUPTABLE                         R13 K19 [{"Icon", "UGCWarningText"}]
      146 GETUPVAL                         R14 6
      147 GETTABLEKS                       R14 R14 K11 ["createElement"]
      149 LOADK                            R15 K52 ["ImageLabel"]
      150 DUPTABLE                         R16 K55 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      151 LOADN                            R17 1
      152 SETTABLEKS                       R17 R16 K53 ["BackgroundTransparency"]
      154 GETUPVAL                         R17 5
      155 GETTABLEKS                       R17 R17 K24 ["WARNING_ICON"]
      157 SETTABLEKS                       R17 R16 K20 ["Image"]
      159 GETTABLEKS                       R17 R3 K56 ["warningColor"]
      161 SETTABLEKS                       R17 R16 K54 ["ImageColor3"]
      163 LOADN                            R17 1
      164 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      166 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      168 LOADN                            R18 22
      169 LOADN                            R19 22
      170 CALL                             R17 2 1
      171 SETTABLEKS                       R17 R16 K21 ["Size"]
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K17 ["Icon"]
      176 GETUPVAL                         R14 6
      177 GETTABLEKS                       R14 R14 K11 ["createElement"]
      179 LOADK                            R15 K57 ["TextLabel"]
      180 DUPTABLE                         R16 K64 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      181 GETIMPORT                        R17 K42 [Enum.AutomaticSize.Y]
      183 SETTABLEKS                       R17 R16 K34 ["AutomaticSize"]
      185 LOADN                            R17 1
      186 SETTABLEKS                       R17 R16 K53 ["BackgroundTransparency"]
      188 GETUPVAL                         R17 8
      189 GETTABLEKS                       R17 R17 K65 ["FONT"]
      191 SETTABLEKS                       R17 R16 K58 ["Font"]
      193 LOADN                            R17 2
      194 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      196 GETIMPORT                        R17 K49 [UDim2.fromScale]
      198 LOADN                            R18 1
      199 LOADN                            R19 0
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K21 ["Size"]
      203 SETTABLEKS                       R5 R16 K28 ["Text"]
      205 GETTABLEKS                       R17 R3 K56 ["warningColor"]
      207 SETTABLEKS                       R17 R16 K59 ["TextColor3"]
      209 LOADN                            R17 22
      210 SETTABLEKS                       R17 R16 K60 ["TextSize"]
      212 LOADB                            R17 1
      213 SETTABLEKS                       R17 R16 K61 ["TextWrapped"]
      215 GETIMPORT                        R17 K66 [Enum.TextXAlignment.Left]
      217 SETTABLEKS                       R17 R16 K62 ["TextXAlignment"]
      219 GETIMPORT                        R17 K68 [Enum.TextYAlignment.Center]
      221 SETTABLEKS                       R17 R16 K63 ["TextYAlignment"]
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K18 ["UGCWarningText"]
      226 CALL                             R10 3 -1
      227 FASTCALL                         TABLE_INSERT ; [+2]
      228 GETIMPORT                        R8 K33 [table.insert]
      230 CALL                             R8 -1 0
      231 MOVE                             R8 R4
      232 LOADNIL                          R9
      233 LOADNIL                          R10
      234 FORGPREP                         R8
      235 GETTABLEKS                       R15 R3 K69 ["validationStyles"]
      237 GETTABLEKS                       R16 R12 K70 ["type"]
      239 GETTABLE                         R14 R15 R16
      240 FASTCALL2K                       ASSERT R14 K71 ; [+4]
      242 LOADK                            R15 K71 ["No validation style for validation result type"]
      243 GETIMPORT                        R13 K73 [assert]
      245 CALL                             R13 2 1
      246 LOADNIL                          R14
      247 GETUPVAL                         R15 9
      248 CALL                             R15 0 1
      249 JUMPIFNOT                        R15 ; [+5]
      250 GETTABLEKS                       R15 R1 K74 ["isAnimationBundleType"]
      252 JUMPIFNOT                        R15 ; [+2]
      253 LOADNIL                          R14
      254 JUMP                             ; [+45]
      255 GETUPVAL                         R15 10
      256 GETTABLEKS                       R15 R15 K75 ["AssetTypeRequiresFolderForUpload"]
      258 GETTABLEKS                       R16 R12 K76 ["assetType"]
      260 CALL                             R15 1 1
      261 JUMPIFNOT                        R15 ; [+9]
      262 GETTABLEKS                       R15 R12 K77 ["instance"]
      264 JUMPIFNOT                        R15 ; [+4]
      265 GETUPVAL                         R15 11
      266 GETTABLEKS                       R16 R12 K77 ["instance"]
      268 CALL                             R15 1 1
      269 MOVE                             R14 R15
      270 JUMP                             ; [+29]
      271 GETTABLEKS                       R15 R12 K77 ["instance"]
      273 JUMPIFNOT                        R15 ; [+25]
      274 GETTABLEKS                       R16 R12 K77 ["instance"]
      276 GETIMPORT                        R17 K79 [Instance.new]
      278 LOADK                            R18 K80 ["Model"]
      279 CALL                             R17 1 1
      280 NAMECALL                         R18 R16 K81 ["Clone"]
      282 CALL                             R18 1 1
      283 MOVE                             R19 R18
      284 LOADK                            R22 K82 ["BasePart"]
      285 NAMECALL                         R20 R19 K83 ["IsA"]
      287 CALL                             R20 2 1
      288 JUMPIF                           R20 ; [+5]
      289 LOADK                            R22 K82 ["BasePart"]
      290 NAMECALL                         R20 R18 K84 ["FindFirstChildWhichIsA"]
      292 CALL                             R20 2 1
      293 MOVE                             R19 R20
      294 SETTABLEKS                       R19 R17 K85 ["PrimaryPart"]
      296 SETTABLEKS                       R17 R18 K86 ["Parent"]
      298 MOVE                             R15 R17
      299 MOVE                             R14 R15
      300 LOADNIL                          R15
      301 GETUPVAL                         R16 12
      302 CALL                             R16 0 1
      303 JUMPIFNOT                        R16 ; [+49]
      304 GETTABLEKS                       R16 R12 K76 ["assetType"]
      306 JUMPIFNOTEQKNIL                  R16 ; [+31]
      308 GETTABLEKS                       R16 R1 K10 ["isUGCBodyBundleType"]
      310 JUMPIFNOT                        R16 ; [+7]
      311 LOADK                            R18 K6 ["AssetConfig"]
      312 LOADK                            R19 K87 ["ValidationFullBody"]
      313 NAMECALL                         R16 R2 K8 ["getText"]
      315 CALL                             R16 3 1
      316 MOVE                             R15 R16
      317 JUMP                             ; [+49]
      318 GETUPVAL                         R16 9
      319 CALL                             R16 0 1
      320 JUMPIFNOT                        R16 ; [+10]
      321 GETTABLEKS                       R16 R1 K74 ["isAnimationBundleType"]
      323 JUMPIFNOT                        R16 ; [+7]
      324 LOADK                            R18 K6 ["AssetConfig"]
      325 LOADK                            R19 K88 ["UGCAvatarAnimationsBundleName"]
      326 NAMECALL                         R16 R2 K8 ["getText"]
      328 CALL                             R16 3 1
      329 MOVE                             R15 R16
      330 JUMP                             ; [+36]
      331 LOADK                            R18 K6 ["AssetConfig"]
      332 LOADK                            R19 K89 ["ValidationShoePair"]
      333 NAMECALL                         R16 R2 K8 ["getText"]
      335 CALL                             R16 3 1
      336 MOVE                             R15 R16
      337 JUMP                             ; [+29]
      338 GETUPVAL                         R18 13
      339 GETTABLEKS                       R19 R1 K1 ["Localization"]
      341 CALL                             R18 1 1
      342 GETTABLEKS                       R19 R12 K76 ["assetType"]
      344 GETTABLE                         R17 R18 R19
      345 FASTCALL2K                       ASSERT R17 K90 ; [+4]
      347 LOADK                            R18 K90 ["Couldn't find localized text for asset type"]
      348 GETIMPORT                        R16 K73 [assert]
      350 CALL                             R16 2 1
      351 MOVE                             R15 R16
      352 JUMP                             ; [+14]
      353 GETUPVAL                         R18 13
      354 GETTABLEKS                       R19 R1 K1 ["Localization"]
      356 CALL                             R18 1 1
      357 GETTABLEKS                       R19 R12 K76 ["assetType"]
      359 GETTABLE                         R17 R18 R19
      360 FASTCALL2K                       ASSERT R17 K90 ; [+4]
      362 LOADK                            R18 K90 ["Couldn't find localized text for asset type"]
      363 GETIMPORT                        R16 K73 [assert]
      365 CALL                             R16 2 1
      366 MOVE                             R15 R16
      367 GETTABLEKS                       R17 R12 K70 ["type"]
      369 GETUPVAL                         R18 14
      370 GETTABLEKS                       R18 R18 K91 ["success"]
      372 JUMPIFNOTEQ                      R17 R18 ; [+7]
      374 LOADK                            R18 K6 ["AssetConfig"]
      375 LOADK                            R19 K92 ["ValidationSuccess"]
      376 NAMECALL                         R16 R2 K8 ["getText"]
      378 CALL                             R16 3 1
      379 JUMP                             ; [+49]
      380 GETTABLEKS                       R17 R12 K70 ["type"]
      382 GETUPVAL                         R18 14
      383 GETTABLEKS                       R18 R18 K93 ["pending"]
      385 JUMPIFNOTEQ                      R17 R18 ; [+7]
      387 LOADK                            R18 K6 ["AssetConfig"]
      388 LOADK                            R19 K94 ["ValidatingInProgress"]
      389 NAMECALL                         R16 R2 K8 ["getText"]
      391 CALL                             R16 3 1
      392 JUMP                             ; [+36]
      393 GETTABLEKS                       R17 R12 K70 ["type"]
      395 GETUPVAL                         R18 14
      396 GETTABLEKS                       R18 R18 K95 ["error"]
      398 JUMPIFNOTEQ                      R17 R18 ; [+20]
      400 LOADK                            R18 K6 ["AssetConfig"]
      401 GETTABLEKS                       R21 R12 K96 ["errors"]
      403 LENGTH                           R20 R21
      404 JUMPIFNOTEQKN                    R20 K97 [1] ; [+3]
      406 LOADK                            R19 K98 ["ValidationErrorSingular"]
      407 JUMP                             ; [+1]
      408 LOADK                            R19 K99 ["ValidationErrorPlural"]
      409 DUPTABLE                         R20 K101 [{"errorCount"}]
      410 GETTABLEKS                       R22 R12 K96 ["errors"]
      412 LENGTH                           R21 R22
      413 SETTABLEKS                       R21 R20 K100 ["errorCount"]
      415 NAMECALL                         R16 R2 K8 ["getText"]
      417 CALL                             R16 4 1
      418 JUMP                             ; [+10]
      419 GETIMPORT                        R16 K102 [error]
      421 LOADK                            R18 K103 ["Unknown validation result type \"%*\""]
      422 GETTABLEKS                       R20 R12 K70 ["type"]
      424 NAMECALL                         R18 R18 K104 ["format"]
      426 CALL                             R18 2 1
      427 MOVE                             R17 R18
      428 CALL                             R16 1 1
      429 LOADNIL                          R17
      430 GETUPVAL                         R18 9
      431 CALL                             R18 0 1
      432 JUMPIFNOT                        R18 ; [+19]
      433 GETTABLEKS                       R18 R1 K74 ["isAnimationBundleType"]
      435 JUMPIFNOT                        R18 ; [+16]
      436 GETTABLEKS                       R18 R12 K76 ["assetType"]
      438 JUMPIFEQKNIL                     R18 ; [+8]
      440 GETUPVAL                         R19 15
      441 GETTABLEKS                       R19 R19 K105 ["getAvatarAnimationPartThumbnailUri"]
      443 MOVE                             R20 R18
      444 CALL                             R19 1 1
      445 MOVE                             R17 R19
      446 JUMP                             ; [+5]
      447 GETUPVAL                         R19 15
      448 GETTABLEKS                       R19 R19 K106 ["getAvatarAnimationsBundleThumbnailUri"]
      450 CALL                             R19 0 1
      451 MOVE                             R17 R19
      452 GETUPVAL                         R18 2
      453 CALL                             R18 0 1
      454 JUMPIFNOT                        R18 ; [+115]
      455 LOADB                            R18 0
      456 GETTABLEKS                       R19 R12 K77 ["instance"]
      458 JUMPIFEQKNIL                     R19 ; [+10]
      460 LOADB                            R18 0
      461 JUMPIFEQKNIL                     R14 ; [+7]
      463 GETTABLEKS                       R19 R14 K85 ["PrimaryPart"]
      465 JUMPIFNOTEQKNIL                  R19 ; [+2]
      467 LOADB                            R18 0 +1
      468 LOADB                            R18 1
      469 MOVE                             R20 R6
      470 GETUPVAL                         R21 3
      471 GETTABLEKS                       R21 R21 K11 ["createElement"]
      473 GETUPVAL                         R22 16
      474 DUPTABLE                         R23 K123 [{"LayoutOrder", "previewBackgroundColor", "previewSize", "placeholderIconColor", "nameMinWidth", "validationIconSize", "assetDisplayName", "validationStatusImage", "iconColor", "textColor", "validationMessage", "isValidationError", "onClickError", "model", "hasRenderablePreview", "focusDirection", "previewImage"}]
      475 SETTABLEKS                       R11 R23 K14 ["LayoutOrder"]
      477 GETTABLEKS                       R24 R3 K107 ["previewBackgroundColor"]
      479 SETTABLEKS                       R24 R23 K107 ["previewBackgroundColor"]
      481 GETTABLEKS                       R24 R3 K108 ["previewSize"]
      483 SETTABLEKS                       R24 R23 K108 ["previewSize"]
      485 GETTABLEKS                       R24 R3 K109 ["placeholderIconColor"]
      487 SETTABLEKS                       R24 R23 K109 ["placeholderIconColor"]
      489 GETTABLEKS                       R24 R3 K110 ["nameMinWidth"]
      491 SETTABLEKS                       R24 R23 K110 ["nameMinWidth"]
      493 GETTABLEKS                       R24 R3 K111 ["validationIconSize"]
      495 SETTABLEKS                       R24 R23 K111 ["validationIconSize"]
      497 GETTABLEKS                       R25 R12 K124 ["required"]
      499 JUMPIFNOT                        R25 ; [+4]
      500 MOVE                             R25 R15
      501 LOADK                            R26 K125 ["*"]
      502 CONCAT                           R24 R25 R26
      503 JUMP                             ; [+1]
      504 MOVE                             R24 R15
      505 SETTABLEKS                       R24 R23 K112 ["assetDisplayName"]
      507 GETUPVAL                         R26 5
      508 GETTABLEKS                       R26 R26 K126 ["UGCValidationStatus"]
      510 GETTABLEKS                       R27 R12 K70 ["type"]
      512 GETTABLE                         R25 R26 R27
      513 FASTCALL2K                       ASSERT R25 K127 ; [+4]
      515 LOADK                            R26 K127 ["No icon for validation result type"]
      516 GETIMPORT                        R24 K73 [assert]
      518 CALL                             R24 2 1
      519 SETTABLEKS                       R24 R23 K113 ["validationStatusImage"]
      521 GETTABLEKS                       R24 R13 K114 ["iconColor"]
      523 SETTABLEKS                       R24 R23 K114 ["iconColor"]
      525 GETTABLEKS                       R24 R13 K115 ["textColor"]
      527 SETTABLEKS                       R24 R23 K115 ["textColor"]
      529 SETTABLEKS                       R16 R23 K116 ["validationMessage"]
      531 GETTABLEKS                       R25 R12 K70 ["type"]
      533 GETUPVAL                         R26 14
      534 GETTABLEKS                       R26 R26 K95 ["error"]
      536 JUMPIFEQ                         R25 R26 ; [+2]
      538 LOADB                            R24 0 +1
      539 LOADB                            R24 1
      540 SETTABLEKS                       R24 R23 K117 ["isValidationError"]
      542 GETTABLEKS                       R24 R1 K118 ["onClickError"]
      544 SETTABLEKS                       R24 R23 K118 ["onClickError"]
      546 SETTABLEKS                       R14 R23 K119 ["model"]
      548 SETTABLEKS                       R18 R23 K120 ["hasRenderablePreview"]
      550 JUMPIFNOT                        R18 ; [+8]
      551 JUMPIFNOT                        R14 ; [+7]
      552 GETTABLEKS                       R24 R14 K85 ["PrimaryPart"]
      554 GETTABLEKS                       R24 R24 K128 ["CFrame"]
      556 GETTABLEKS                       R24 R24 K129 ["LookVector"]
      558 JUMP                             ; [+1]
      559 LOADNIL                          R24
      560 SETTABLEKS                       R24 R23 K121 ["focusDirection"]
      562 SETTABLEKS                       R17 R23 K122 ["previewImage"]
      564 CALL                             R21 2 -1
      565 FASTCALL                         TABLE_INSERT ; [+2]
      566 GETIMPORT                        R19 K33 [table.insert]
      568 CALL                             R19 -1 0
      569 JUMP                             ; [+279]
      570 MOVE                             R19 R6
      571 GETUPVAL                         R20 6
      572 GETTABLEKS                       R20 R20 K11 ["createElement"]
      574 GETUPVAL                         R21 7
      575 DUPTABLE                         R22 K130 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      576 GETIMPORT                        R23 K42 [Enum.AutomaticSize.Y]
      578 SETTABLEKS                       R23 R22 K34 ["AutomaticSize"]
      580 GETIMPORT                        R23 K44 [Enum.HorizontalAlignment.Left]
      582 SETTABLEKS                       R23 R22 K35 ["HorizontalAlignment"]
      584 GETIMPORT                        R23 K47 [Enum.FillDirection.Horizontal]
      586 SETTABLEKS                       R23 R22 K36 ["Layout"]
      588 SETTABLEKS                       R11 R22 K14 ["LayoutOrder"]
      590 GETIMPORT                        R23 K49 [UDim2.fromScale]
      592 LOADN                            R24 1
      593 LOADN                            R25 0
      594 CALL                             R23 2 1
      595 SETTABLEKS                       R23 R22 K21 ["Size"]
      597 LOADN                            R23 5
      598 SETTABLEKS                       R23 R22 K37 ["Spacing"]
      600 DUPTABLE                         R23 K134 [{"Preview", "AssetName", "ValidationArea"}]
      601 GETUPVAL                         R24 6
      602 GETTABLEKS                       R24 R24 K11 ["createElement"]
      604 GETUPVAL                         R25 7
      605 DUPTABLE                         R26 K136 [{"BackgroundColor", "LayoutOrder", "Size"}]
      606 GETTABLEKS                       R27 R3 K107 ["previewBackgroundColor"]
      608 SETTABLEKS                       R27 R26 K135 ["BackgroundColor"]
      610 NAMECALL                         R27 R7 K137 ["getNextOrder"]
      612 CALL                             R27 1 1
      613 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      615 GETIMPORT                        R27 K27 [UDim2.fromOffset]
      617 GETTABLEKS                       R28 R3 K108 ["previewSize"]
      619 GETTABLEKS                       R29 R3 K108 ["previewSize"]
      621 CALL                             R27 2 1
      622 SETTABLEKS                       R27 R26 K21 ["Size"]
      624 DUPTABLE                         R27 K140 [{"UICorner", "PreviewModel"}]
      625 GETUPVAL                         R28 6
      626 GETTABLEKS                       R28 R28 K11 ["createElement"]
      628 LOADK                            R29 K138 ["UICorner"]
      629 DUPTABLE                         R30 K142 [{"CornerRadius"}]
      630 GETIMPORT                        R31 K144 [UDim.new]
      632 LOADN                            R32 0
      633 LOADN                            R33 10
      634 CALL                             R31 2 1
      635 SETTABLEKS                       R31 R30 K141 ["CornerRadius"]
      637 CALL                             R28 2 1
      638 SETTABLEKS                       R28 R27 K138 ["UICorner"]
      640 GETTABLEKS                       R29 R12 K77 ["instance"]
      642 JUMPIFNOT                        R29 ; [+28]
      643 JUMPIFNOT                        R14 ; [+27]
      644 GETTABLEKS                       R29 R14 K85 ["PrimaryPart"]
      646 JUMPIFEQKNIL                     R29 ; [+24]
      648 GETUPVAL                         R28 6
      649 GETTABLEKS                       R28 R28 K11 ["createElement"]
      651 GETUPVAL                         R29 17
      652 DUPTABLE                         R30 K148 [{"FocusDirection", "Model", "ShouldMuteModelSounds", "Static"}]
      653 GETTABLEKS                       R31 R14 K85 ["PrimaryPart"]
      655 GETTABLEKS                       R31 R31 K128 ["CFrame"]
      657 GETTABLEKS                       R31 R31 K129 ["LookVector"]
      659 SETTABLEKS                       R31 R30 K145 ["FocusDirection"]
      661 SETTABLEKS                       R14 R30 K80 ["Model"]
      663 LOADB                            R31 1
      664 SETTABLEKS                       R31 R30 K146 ["ShouldMuteModelSounds"]
      666 LOADB                            R31 1
      667 SETTABLEKS                       R31 R30 K147 ["Static"]
      669 CALL                             R28 2 1
      670 JUMP                             ; [+15]
      671 GETUPVAL                         R28 6
      672 GETTABLEKS                       R28 R28 K11 ["createElement"]
      674 GETUPVAL                         R29 18
      675 DUPTABLE                         R30 K149 [{"Image", "ImageColor3"}]
      676 GETUPVAL                         R31 5
      677 GETTABLEKS                       R31 R31 K150 ["PLACEHOLDER_ICON"]
      679 SETTABLEKS                       R31 R30 K20 ["Image"]
      681 GETTABLEKS                       R31 R3 K109 ["placeholderIconColor"]
      683 SETTABLEKS                       R31 R30 K54 ["ImageColor3"]
      685 CALL                             R28 2 1
      686 SETTABLEKS                       R28 R27 K139 ["PreviewModel"]
      688 CALL                             R24 3 1
      689 SETTABLEKS                       R24 R23 K131 ["Preview"]
      691 GETUPVAL                         R24 6
      692 GETTABLEKS                       R24 R24 K11 ["createElement"]
      694 GETUPVAL                         R25 19
      695 DUPTABLE                         R26 K151 [{"AutomaticSize", "LayoutOrder", "Text", "TextSize", "TextXAlignment"}]
      696 GETIMPORT                        R27 K153 [Enum.AutomaticSize.XY]
      698 SETTABLEKS                       R27 R26 K34 ["AutomaticSize"]
      700 NAMECALL                         R27 R7 K137 ["getNextOrder"]
      702 CALL                             R27 1 1
      703 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      705 GETTABLEKS                       R28 R12 K124 ["required"]
      707 JUMPIFNOT                        R28 ; [+4]
      708 MOVE                             R28 R15
      709 LOADK                            R29 K125 ["*"]
      710 CONCAT                           R27 R28 R29
      711 JUMP                             ; [+1]
      712 MOVE                             R27 R15
      713 SETTABLEKS                       R27 R26 K28 ["Text"]
      715 GETTABLEKS                       R27 R3 K154 ["nameTextSize"]
      717 SETTABLEKS                       R27 R26 K60 ["TextSize"]
      719 GETIMPORT                        R27 K66 [Enum.TextXAlignment.Left]
      721 SETTABLEKS                       R27 R26 K62 ["TextXAlignment"]
      723 DUPTABLE                         R27 K156 [{"UISizeConstraint"}]
      724 GETUPVAL                         R28 6
      725 GETTABLEKS                       R28 R28 K11 ["createElement"]
      727 LOADK                            R29 K155 ["UISizeConstraint"]
      728 DUPTABLE                         R30 K158 [{"MinSize"}]
      729 GETIMPORT                        R31 K160 [Vector2.new]
      731 GETTABLEKS                       R32 R3 K110 ["nameMinWidth"]
      733 LOADN                            R33 0
      734 CALL                             R31 2 1
      735 SETTABLEKS                       R31 R30 K157 ["MinSize"]
      737 CALL                             R28 2 1
      738 SETTABLEKS                       R28 R27 K155 ["UISizeConstraint"]
      740 CALL                             R24 3 1
      741 SETTABLEKS                       R24 R23 K132 ["AssetName"]
      743 GETUPVAL                         R24 6
      744 GETTABLEKS                       R24 R24 K11 ["createElement"]
      746 GETUPVAL                         R25 7
      747 DUPTABLE                         R26 K162 [{"AutomaticSize", "LayoutOrder", "Layout", "OnClick", "Spacing"}]
      748 GETIMPORT                        R27 K153 [Enum.AutomaticSize.XY]
      750 SETTABLEKS                       R27 R26 K34 ["AutomaticSize"]
      752 NAMECALL                         R27 R7 K137 ["getNextOrder"]
      754 CALL                             R27 1 1
      755 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      757 GETIMPORT                        R27 K47 [Enum.FillDirection.Horizontal]
      759 SETTABLEKS                       R27 R26 K36 ["Layout"]
      761 GETTABLEKS                       R28 R12 K70 ["type"]
      763 GETUPVAL                         R29 14
      764 GETTABLEKS                       R29 R29 K95 ["error"]
      766 JUMPIFNOTEQ                      R28 R29 ; [+4]
      768 GETTABLEKS                       R27 R1 K118 ["onClickError"]
      770 JUMP                             ; [+1]
      771 LOADNIL                          R27
      772 SETTABLEKS                       R27 R26 K161 ["OnClick"]
      774 LOADN                            R27 5
      775 SETTABLEKS                       R27 R26 K37 ["Spacing"]
      777 DUPTABLE                         R27 K165 [{"ValidationIcon", "ValidationText"}]
      778 GETUPVAL                         R28 6
      779 GETTABLEKS                       R28 R28 K11 ["createElement"]
      781 GETUPVAL                         R29 18
      782 DUPTABLE                         R30 K166 [{"Image", "ImageColor3", "LayoutOrder", "Size"}]
      783 GETUPVAL                         R33 5
      784 GETTABLEKS                       R33 R33 K126 ["UGCValidationStatus"]
      786 GETTABLEKS                       R34 R12 K70 ["type"]
      788 GETTABLE                         R32 R33 R34
      789 FASTCALL2K                       ASSERT R32 K127 ; [+4]
      791 LOADK                            R33 K127 ["No icon for validation result type"]
      792 GETIMPORT                        R31 K73 [assert]
      794 CALL                             R31 2 1
      795 SETTABLEKS                       R31 R30 K20 ["Image"]
      797 GETTABLEKS                       R31 R13 K114 ["iconColor"]
      799 SETTABLEKS                       R31 R30 K54 ["ImageColor3"]
      801 NAMECALL                         R31 R7 K137 ["getNextOrder"]
      803 CALL                             R31 1 1
      804 SETTABLEKS                       R31 R30 K14 ["LayoutOrder"]
      806 GETIMPORT                        R31 K27 [UDim2.fromOffset]
      808 GETTABLEKS                       R32 R3 K111 ["validationIconSize"]
      810 GETTABLEKS                       R33 R3 K111 ["validationIconSize"]
      812 CALL                             R31 2 1
      813 SETTABLEKS                       R31 R30 K21 ["Size"]
      815 CALL                             R28 2 1
      816 SETTABLEKS                       R28 R27 K163 ["ValidationIcon"]
      818 GETUPVAL                         R28 6
      819 GETTABLEKS                       R28 R28 K11 ["createElement"]
      821 GETUPVAL                         R29 19
      822 DUPTABLE                         R30 K168 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor"}]
      823 GETIMPORT                        R31 K153 [Enum.AutomaticSize.XY]
      825 SETTABLEKS                       R31 R30 K34 ["AutomaticSize"]
      827 NAMECALL                         R31 R7 K137 ["getNextOrder"]
      829 CALL                             R31 1 1
      830 SETTABLEKS                       R31 R30 K14 ["LayoutOrder"]
      832 SETTABLEKS                       R16 R30 K28 ["Text"]
      834 GETTABLEKS                       R31 R13 K115 ["textColor"]
      836 SETTABLEKS                       R31 R30 K167 ["TextColor"]
      838 CALL                             R28 2 1
      839 SETTABLEKS                       R28 R27 K164 ["ValidationText"]
      841 CALL                             R24 3 1
      842 SETTABLEKS                       R24 R23 K133 ["ValidationArea"]
      844 CALL                             R20 3 -1
      845 FASTCALL                         TABLE_INSERT ; [+2]
      846 GETIMPORT                        R18 K33 [table.insert]
      848 CALL                             R18 -1 0
      849 FORGLOOP                         R8 2 ; [-615]
      851 GETUPVAL                         R8 2
      852 CALL                             R8 0 1
      853 JUMPIFNOT                        R8 ; [+17]
      854 GETUPVAL                         R8 3
      855 GETTABLEKS                       R8 R8 K11 ["createElement"]
      857 GETUPVAL                         R9 4
      858 GETTABLEKS                       R9 R9 K12 ["View"]
      860 DUPTABLE                         R10 K15 [{"tag", "LayoutOrder"}]
      861 LOADK                            R11 K169 ["col align-x-left align-y-top gap-xlarge size-full-0 auto-y"]
      862 SETTABLEKS                       R11 R10 K13 ["tag"]
      864 GETTABLEKS                       R11 R1 K14 ["LayoutOrder"]
      866 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      868 MOVE                             R11 R6
      869 CALL                             R8 3 -1
      870 RETURN                           R8 -1
      871 GETUPVAL                         R8 6
      872 GETTABLEKS                       R8 R8 K11 ["createElement"]
      874 GETUPVAL                         R9 7
      875 DUPTABLE                         R10 K170 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing"}]
      876 GETIMPORT                        R11 K42 [Enum.AutomaticSize.Y]
      878 SETTABLEKS                       R11 R10 K34 ["AutomaticSize"]
      880 GETIMPORT                        R11 K172 [Enum.FillDirection.Vertical]
      882 SETTABLEKS                       R11 R10 K36 ["Layout"]
      884 GETTABLEKS                       R11 R1 K14 ["LayoutOrder"]
      886 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      888 GETIMPORT                        R11 K49 [UDim2.fromScale]
      890 LOADN                            R12 1
      891 LOADN                            R13 0
      892 CALL                             R11 2 1
      893 SETTABLEKS                       R11 R10 K21 ["Size"]
      895 LOADN                            R11 18
      896 SETTABLEKS                       R11 R10 K37 ["Spacing"]
      898 MOVE                             R11 R6
      899 CALL                             R8 3 -1
      900 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Localization"]
       34 GETTABLEKS                       R5 R5 K12 ["getLocalizedAssetTextMap"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K10 ["Src"]
       39 GETTABLEKS                       R5 R5 K13 ["Util"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R5 K14 ["Images"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R5 K15 ["Constants"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R5 K16 ["AssetConfigUtil"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R5 K17 ["Analytics"]
       60 GETTABLEKS                       R10 R10 K17 ["Analytics"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R5 K18 ["AssetConfigConstants"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R5 K19 ["fixUpPreValidation"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R5 K20 ["DebugFlags"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R0 K6 ["Packages"]
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R13 K21 ["Cryo"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R16 R13 K22 ["Foundation"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K5 [require]
       92 GETTABLEKS                       R17 R13 K23 ["UGCValidation"]
       94 CALL                             R16 1 1
       95 GETTABLEKS                       R17 R1 K24 ["UI"]
       97 GETTABLEKS                       R18 R17 K25 ["Image"]
       99 GETTABLEKS                       R19 R17 K26 ["Pane"]
      101 GETTABLEKS                       R20 R17 K27 ["TextLabel"]
      103 GETTABLEKS                       R21 R17 K28 ["AssetRenderModel"]
      105 GETIMPORT                        R22 K5 [require]
      107 GETTABLEKS                       R23 R5 K29 ["SharedFlags"]
      109 GETTABLEKS                       R23 R23 K30 ["getFFlagUGCBundleValidationFullBodyErrors"]
      111 CALL                             R22 1 1
      112 GETIMPORT                        R23 K32 [game]
      114 LOADK                            R25 K33 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      115 LOADB                            R26 0
      116 NAMECALL                         R23 R23 K34 ["DefineFastFlag"]
      118 CALL                             R23 3 1
      119 GETIMPORT                        R24 K32 [game]
      121 LOADK                            R26 K35 ["DisableSubmitButtonForValidationInInit"]
      122 LOADB                            R27 0
      123 NAMECALL                         R24 R24 K34 ["DefineFastFlag"]
      125 CALL                             R24 3 1
      126 GETIMPORT                        R25 K5 [require]
      128 GETTABLEKS                       R26 R5 K29 ["SharedFlags"]
      130 GETTABLEKS                       R26 R26 K36 ["getFFlagEnableUGCBundleUploadBodyScale"]
      132 CALL                             R25 1 1
      133 GETIMPORT                        R26 K5 [require]
      135 GETTABLEKS                       R27 R0 K10 ["Src"]
      137 GETTABLEKS                       R27 R27 K37 ["Flags"]
      139 GETTABLEKS                       R27 R27 K38 ["getFFlagRequireBodyColorsForBodyUpload"]
      141 CALL                             R26 1 1
      142 GETIMPORT                        R27 K5 [require]
      144 GETTABLEKS                       R28 R0 K10 ["Src"]
      146 GETTABLEKS                       R28 R28 K37 ["Flags"]
      148 GETTABLEKS                       R28 R28 K39 ["getFFlagEnableUploadingAvatarAnimations"]
      150 CALL                             R27 1 1
      151 GETIMPORT                        R28 K5 [require]
      153 GETTABLEKS                       R29 R5 K40 ["AvatarAnimationStudioToolboxTextures"]
      155 CALL                             R28 1 1
      156 GETIMPORT                        R29 K5 [require]
      158 GETTABLEKS                       R30 R0 K10 ["Src"]
      160 GETTABLEKS                       R30 R30 K37 ["Flags"]
      162 GETTABLEKS                       R30 R30 K41 ["getFFlagToolboxAssetConfigFoundationMigration"]
      164 CALL                             R29 1 1
      165 GETIMPORT                        R30 K5 [require]
      167 GETTABLEKS                       R31 R0 K10 ["Src"]
      169 GETTABLEKS                       R31 R31 K37 ["Flags"]
      171 GETTABLEKS                       R31 R31 K42 ["getFFlagBundleBypassValidation"]
      173 CALL                             R30 1 1
      174 GETIMPORT                        R31 K5 [require]
      176 GETTABLEKS                       R32 R0 K10 ["Src"]
      178 GETTABLEKS                       R32 R32 K37 ["Flags"]
      180 GETTABLEKS                       R32 R32 K43 ["getFStringBundlesToBypassValidation"]
      182 CALL                             R31 1 1
      183 GETTABLEKS                       R32 R1 K44 ["ContextServices"]
      185 GETTABLEKS                       R33 R32 K45 ["withContext"]
      187 GETTABLEKS                       R34 R1 K13 ["Util"]
      189 GETTABLEKS                       R34 R34 K46 ["LayoutOrderIterator"]
      191 GETTABLEKS                       R35 R0 K10 ["Src"]
      193 GETTABLEKS                       R35 R35 K47 ["Components"]
      195 GETTABLEKS                       R35 R35 K48 ["AssetConfiguration"]
      197 GETIMPORT                        R36 K5 [require]
      199 GETTABLEKS                       R37 R35 K49 ["BundleValidationRow"]
      201 CALL                             R36 1 1
      202 GETIMPORT                        R37 K5 [require]
      204 GETTABLEKS                       R38 R35 K50 ["ValidationStatus"]
      206 CALL                             R37 1 1
      207 GETIMPORT                        R38 K5 [require]
      209 GETTABLEKS                       R39 R5 K29 ["SharedFlags"]
      211 GETTABLEKS                       R39 R39 K51 ["getFFlagEnableUGCUploadFlowAnalytics"]
      213 CALL                             R38 1 1
      214 DUPCLOSURE                       R39 K52 [PROTO_0]
      215 DUPCLOSURE                       R40 K53 [PROTO_1]
      216 GETTABLEKS                       R41 R2 K54 ["PureComponent"]
      218 LOADK                            R43 K55 ["UGCBundleValidation"]
      219 NAMECALL                         R41 R41 K56 ["extend"]
      221 CALL                             R41 2 1
      222 DUPCLOSURE                       R42 K57 [PROTO_2]
      223 CAPTURE                          VAL R30
      224 CAPTURE                          VAL R31
      225 DUPCLOSURE                       R43 K58 [PROTO_5]
      226 CAPTURE                          VAL R38
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R9
      231 CAPTURE                          VAL R24
      232 SETTABLEKS                       R43 R41 K59 ["init"]
      234 DUPCLOSURE                       R43 K60 [PROTO_6]
      235 SETTABLEKS                       R43 R41 K61 ["cancelValidationTasks"]
      237 DUPCLOSURE                       R43 K62 [PROTO_13]
      238 CAPTURE                          VAL R38
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R30
      243 CAPTURE                          VAL R42
      244 CAPTURE                          VAL R22
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R37
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R23
      251 CAPTURE                          VAL R25
      252 CAPTURE                          VAL R26
      253 SETTABLEKS                       R43 R41 K63 ["startUGCBundleValidation"]
      255 DUPCLOSURE                       R43 K64 [PROTO_14]
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R10
      258 SETTABLEKS                       R43 R41 K65 ["didUpdate"]
      260 DUPCLOSURE                       R43 K66 [PROTO_15]
      261 SETTABLEKS                       R43 R41 K67 ["willUnmount"]
      263 DUPCLOSURE                       R43 K68 [PROTO_16]
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R34
      266 CAPTURE                          VAL R29
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R2
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R7
      273 CAPTURE                          VAL R27
      274 CAPTURE                          VAL R8
      275 CAPTURE                          VAL R39
      276 CAPTURE                          VAL R22
      277 CAPTURE                          VAL R4
      278 CAPTURE                          VAL R37
      279 CAPTURE                          VAL R28
      280 CAPTURE                          VAL R36
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R18
      283 CAPTURE                          VAL R20
      284 SETTABLEKS                       R43 R41 K69 ["render"]
      286 MOVE                             R43 R33
      287 DUPTABLE                         R44 K71 [{"Localization", "Stylizer"}]
      288 GETTABLEKS                       R45 R32 K11 ["Localization"]
      290 SETTABLEKS                       R45 R44 K11 ["Localization"]
      292 GETTABLEKS                       R45 R32 K70 ["Stylizer"]
      294 SETTABLEKS                       R45 R44 K70 ["Stylizer"]
      296 CALL                             R43 1 1
      297 MOVE                             R44 R41
      298 CALL                             R43 1 1
      299 MOVE                             R41 R43
      300 RETURN                           R41 1
