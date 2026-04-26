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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["getAvatarAssetTypeAsString"]
       13 GETTABLEKS                       R6 R2 K3 ["currentAssetType"]
       15 CALL                             R5 1 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K4 ["shouldDebugWarnings"]
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+17]
       22 GETTABLEKS                       R7 R3 K5 ["validationState"]
       24 GETUPVAL                         R10 4
       25 GETTABLEKS                       R9 R10 K6 ["VALIDATION_STATE"]
       27 GETTABLEKS                       R8 R9 K7 ["VALIDATING"]
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
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R7 R8 K6 ["VALIDATION_STATE"]
       48 GETTABLEKS                       R6 R7 K12 ["SUCCESS"]
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R5 R3 K13 ["setValidationFailureReasons"]
       53 JUMPIFNOT                        R5 ; [+5]
       54 GETTABLEKS                       R5 R3 K13 ["setValidationFailureReasons"]
       56 NEWTABLE                         R6 0 0
       58 CALL                             R5 1 0
       59 GETUPVAL                         R5 1
       60 CALL                             R5 0 1
       61 JUMPIFNOT                        R5 ; [+84]
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R5 R6 K14 ["UGCBundleValidationEvent"]
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R7 R8 K15 ["Status"]
       68 GETTABLEKS                       R6 R7 K16 ["Success"]
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
      115 GETUPVAL                         R9 4
      116 GETTABLEKS                       R8 R9 K6 ["VALIDATION_STATE"]
      118 GETTABLEKS                       R7 R8 K26 ["FAILURE"]
      120 CALL                             R6 1 0
      121 GETTABLEKS                       R6 R3 K13 ["setValidationFailureReasons"]
      123 JUMPIFNOT                        R6 ; [+4]
      124 GETTABLEKS                       R6 R3 K13 ["setValidationFailureReasons"]
      126 MOVE                             R7 R5
      127 CALL                             R6 1 0
      128 GETUPVAL                         R6 1
      129 CALL                             R6 0 1
      130 JUMPIFNOT                        R6 ; [+15]
      131 GETUPVAL                         R7 5
      132 GETTABLEKS                       R6 R7 K14 ["UGCBundleValidationEvent"]
      134 GETUPVAL                         R9 5
      135 GETTABLEKS                       R8 R9 K15 ["Status"]
      137 GETTABLEKS                       R7 R8 K27 ["Failure"]
      139 MOVE                             R8 R4
      140 GETUPVAL                         R10 2
      141 GETTABLEKS                       R9 R10 K28 ["getValidationFailuresAsString"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setValidationState"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["setValidationState"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["VALIDATION_STATE"]
       10 GETTABLEKS                       R1 R2 K2 ["BEGIN"]
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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K3 ["shouldValidateAssetType"]
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
        0 GETTABLEKS                       R3 R0 K0 ["error"]
        2 GETTABLEKS                       R2 R3 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["message"] ; [+6]
        6 GETTABLEKS                       R2 R0 K0 ["error"]
        8 GETTABLEKS                       R1 R2 K2 ["message"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R3 R0 K0 ["error"]
       13 GETTABLEKS                       R2 R3 K1 ["type"]
       15 JUMPIFNOTEQKS                    R2 K3 ["notFound"] ; [+21]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K4 ["Localization"]
       20 LOADK                            R3 K5 ["AssetConfig"]
       21 LOADK                            R4 K6 ["ValidationErrorItemNotDetected"]
       22 DUPTABLE                         R5 K8 [{"itemName"}]
       23 GETUPVAL                         R7 1
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K4 ["Localization"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R0 K9 ["assetType"]
       30 GETTABLE                         R6 R7 R8
       31 SETTABLEKS                       R6 R5 K7 ["itemName"]
       33 NAMECALL                         R1 R1 K10 ["getText"]
       35 CALL                             R1 4 1
       36 RETURN                           R1 1
       37 GETIMPORT                        R1 K11 [error]
       39 LOADK                            R3 K12 ["Unknown error type: %*"]
       40 GETTABLEKS                       R6 R0 K0 ["error"]
       42 GETTABLEKS                       R5 R6 K1 ["type"]
       44 NAMECALL                         R3 R3 K13 ["format"]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 CALL                             R1 1 1
       49 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["validationCallback"]
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
      110 GETTABLEKS                       R15 R8 K10 ["settings"]
      112 GETTABLEKS                       R14 R15 K11 ["minimumQuantity"]
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
      128 GETUPVAL                         R14 4
      129 GETTABLEKS                       R13 R14 K12 ["success"]
      131 JUMP                             ; [+19]
      132 LENGTH                           R14 R9
      133 LOADN                            R15 0
      134 JUMPIFNOTLT                      R15 R14 ; [+5]
      136 GETUPVAL                         R14 4
      137 GETTABLEKS                       R13 R14 K13 ["error"]
      139 JUMP                             ; [+11]
      140 GETTABLEKS                       R14 R8 K14 ["status"]
      142 JUMPIFNOTEQKS                    R14 K15 ["finished"] ; [+5]
      144 GETUPVAL                         R14 4
      145 GETTABLEKS                       R13 R14 K12 ["success"]
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R14 4
      149 GETTABLEKS                       R13 R14 K16 ["pending"]
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
      190 GETUPVAL                         R8 4
      191 GETTABLEKS                       R7 R8 K12 ["success"]
      193 JUMP                             ; [+11]
      194 LENGTH                           R8 R3
      195 LOADN                            R9 0
      196 JUMPIFNOTLT                      R9 R8 ; [+5]
      198 GETUPVAL                         R8 4
      199 GETTABLEKS                       R7 R8 K13 ["error"]
      201 JUMP                             ; [+3]
      202 GETUPVAL                         R8 4
      203 GETTABLEKS                       R7 R8 K16 ["pending"]
      205 SETTABLEKS                       R7 R6 K8 ["type"]
      207 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
      209 MOVE                             R5 R1
      210 GETIMPORT                        R4 K4 [table.insert]
      212 CALL                             R4 2 0
      213 GETUPVAL                         R5 6
      214 GETTABLEKS                       R4 R5 K17 ["setUGCBundleValidationResults"]
      216 JUMPIFNOT                        R4 ; [+5]
      217 GETUPVAL                         R5 6
      218 GETTABLEKS                       R4 R5 K17 ["setUGCBundleValidationResults"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["validationResults"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["None"]
        5 JUMPIFEQ                         R2 R3 ; [+19]
        7 GETTABLEKS                       R2 R1 K0 ["validationResults"]
        9 JUMPIFEQKNIL                     R2 ; [+15]
       11 GETTABLEKS                       R3 R1 K0 ["validationResults"]
       13 LENGTH                           R2 R3
       14 JUMPIFEQKN                       R2 K2 [0] ; [+10]
       16 GETUPVAL                         R2 1
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETTABLEKS                       R2 R1 K0 ["validationResults"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K1 ["None"]
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
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R4 R5 K11 ["success"]
       58 SETTABLEKS                       R4 R3 K12 ["type"]
       60 LENGTH                           R4 R2
       61 SETTABLE                         R3 R2 R4
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R4 R5 K13 ["setUGCBundleValidationResults"]
       65 JUMPIFNOT                        R4 ; [+5]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R4 R5 K13 ["setUGCBundleValidationResults"]
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
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K0 ["validationCallback"]
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
       53 GETUPVAL                         R3 8
       54 GETTABLEKS                       R2 R3 K6 ["assetTypeEnum"]
       56 GETUPVAL                         R5 12
       57 GETTABLEKS                       R4 R5 K7 ["UGCBundleTypes"]
       59 GETTABLEKS                       R3 R4 K8 ["Body"]
       61 JUMPIFNOTEQ                      R2 R3 ; [+25]
       63 GETUPVAL                         R3 13
       64 GETTABLEKS                       R2 R3 K9 ["ValidateBody"]
       66 GETUPVAL                         R5 8
       67 GETTABLEKS                       R4 R5 K10 ["instances"]
       69 GETTABLEN                        R3 R4 1
       70 GETUPVAL                         R5 8
       71 GETTABLEKS                       R4 R5 K11 ["Localization"]
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
       87 GETUPVAL                         R3 3
       88 GETTABLEKS                       R2 R3 K0 ["validationCallback"]
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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["getAvatarAssetTypeAsString"]
        9 GETTABLEKS                       R4 R1 K2 ["assetTypeEnum"]
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["UGCBundleValidationEvent"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["Status"]
       19 GETTABLEKS                       R4 R5 K5 ["Start"]
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
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R5 R6 K9 ["VALIDATION_STATE"]
       40 GETTABLEKS                       R4 R5 K10 ["FAILURE"]
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
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R3 R4 K3 ["UGCBundleValidationEvent"]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R5 R6 K4 ["Status"]
       69 GETTABLEKS                       R4 R5 K16 ["Failure"]
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
       89 GETTABLEKS                       R8 R0 K0 ["props"]
       91 GETTABLEKS                       R7 R8 K6 ["instances"]
       93 GETTABLEN                        R6 R7 1
       94 NAMECALL                         R6 R6 K18 ["Clone"]
       96 CALL                             R6 1 1
       97 MOVE                             R5 R6
       98 GETUPVAL                         R7 1
       99 GETTABLEKS                       R6 R7 K19 ["sanitizeForValidation"]
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
      116 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R11 R12 K20 ["UGCBundleTypes"]
      121 GETTABLEKS                       R10 R11 K21 ["Shoes"]
      123 JUMPIFNOTEQ                      R9 R10 ; [+5]
      125 GETUPVAL                         R9 9
      126 GETTABLEKS                       R8 R9 K22 ["validateShoesBundleReadyForUpload"]
      128 JUMP                             ; [+3]
      129 GETUPVAL                         R9 9
      130 GETTABLEKS                       R8 R9 K23 ["validateBundleReadyForUpload"]
      132 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      134 GETTABLEKS                       R10 R1 K6 ["instances"]
      136 JUMPIFEQKNIL                     R10 ; [+63]
      138 LOADNIL                          R10
      139 GETUPVAL                         R12 9
      140 GETTABLEKS                       R11 R12 K24 ["isFolderStructureEnabled"]
      142 JUMPIFNOT                        R11 ; [+24]
      143 GETUPVAL                         R12 9
      144 GETTABLEKS                       R11 R12 K24 ["isFolderStructureEnabled"]
      146 CALL                             R11 0 1
      147 JUMPIFNOT                        R11 ; [+19]
      148 DUPTABLE                         R11 K26 [{"studioPluginName"}]
      149 LOADK                            R12 K27 ["Toolbox"]
      150 SETTABLEKS                       R12 R11 K25 ["studioPluginName"]
      152 MOVE                             R10 R11
      153 GETUPVAL                         R12 9
      154 GETTABLEKS                       R11 R12 K28 ["isEntrypointMergingEnabled"]
      156 JUMPIFNOT                        R11 ; [+10]
      157 GETUPVAL                         R12 9
      158 GETTABLEKS                       R11 R12 K28 ["isEntrypointMergingEnabled"]
      160 CALL                             R11 0 1
      161 JUMPIFNOT                        R11 ; [+5]
      162 NEWCLOSURE                       R11 P2
      163 CAPTURE                          UPVAL U1
      164 CAPTURE                          VAL R1
      165 SETTABLEKS                       R11 R10 K29 ["localizationCallback"]
      167 MOVE                             R11 R8
      168 GETTABLEKS                       R13 R1 K6 ["instances"]
      170 GETTABLEN                        R12 R13 1
      171 GETTABLEKS                       R13 R1 K30 ["allowedBundleTypeSettings"]
      173 GETTABLEKS                       R14 R9 K31 ["rawValue"]
      175 CALL                             R14 0 1
      176 MOVE                             R15 R7
      177 LOADNIL                          R16
      178 MOVE                             R17 R10
      179 CALL                             R11 6 1
      180 NEWCLOSURE                       R13 P3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          VAL R3
      183 CAPTURE                          REF R4
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U6
      186 CAPTURE                          UPVAL U10
      187 CAPTURE                          UPVAL U11
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R6
      191 CAPTURE                          UPVAL U12
      192 CAPTURE                          UPVAL U13
      193 CAPTURE                          UPVAL U3
      194 CAPTURE                          UPVAL U1
      195 NAMECALL                         R11 R11 K32 ["andThen"]
      197 CALL                             R11 2 1
      198 SETTABLEKS                       R11 R0 K33 ["validationPromise"]
      200 CLOSEUPVALS                      R4
      201 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R5 R3 K1 ["assetTypeEnum"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+8]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["isUGCBundleType"]
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
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K5 ["VALIDATION_STATE"]
       30 GETTABLEKS                       R5 R6 K6 ["BEGIN"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+10]
       34 GETTABLEKS                       R4 R3 K7 ["setValidationState"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K5 ["VALIDATION_STATE"]
       39 GETTABLEKS                       R5 R6 K8 ["VALIDATING"]
       41 CALL                             R4 1 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R4 R3 K4 ["validationState"]
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R6 R7 K5 ["VALIDATION_STATE"]
       48 GETTABLEKS                       R5 R6 K8 ["VALIDATING"]
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
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["ugcBundleValidation"]
        8 GETTABLEKS                       R5 R1 K4 ["validationResults"]
       10 JUMPIFEQKNIL                     R5 ; [+8]
       12 GETTABLEKS                       R5 R1 K4 ["validationResults"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K5 ["None"]
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
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K9 ["new"]
       36 CALL                             R7 0 1
       37 GETTABLEKS                       R8 R1 K10 ["isUGCBodyBundleType"]
       39 JUMPIFNOT                        R8 ; [+191]
       40 GETUPVAL                         R8 2
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+67]
       43 MOVE                             R9 R6
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R10 R11 K11 ["createElement"]
       47 GETUPVAL                         R12 4
       48 GETTABLEKS                       R11 R12 K12 ["View"]
       50 DUPTABLE                         R12 K15 [{"tag", "LayoutOrder"}]
       51 LOADK                            R13 K16 ["row gap-small align-x-left align-y-center size-full-0 auto-y"]
       52 SETTABLEKS                       R13 R12 K13 ["tag"]
       54 LOADN                            R13 255
       55 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       57 DUPTABLE                         R13 K19 [{"Icon", "UGCWarningText"}]
       58 GETUPVAL                         R15 3
       59 GETTABLEKS                       R14 R15 K11 ["createElement"]
       61 GETUPVAL                         R16 4
       62 GETTABLEKS                       R15 R16 K20 ["Image"]
       64 DUPTABLE                         R16 K22 [{"tag", "Image", "LayoutOrder", "Size"}]
       65 LOADK                            R17 K23 ["content-system-warning shrink-0"]
       66 SETTABLEKS                       R17 R16 K13 ["tag"]
       68 GETUPVAL                         R18 5
       69 GETTABLEKS                       R17 R18 K24 ["WARNING_ICON"]
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
       86 GETUPVAL                         R15 3
       87 GETTABLEKS                       R14 R15 K11 ["createElement"]
       89 GETUPVAL                         R16 4
       90 GETTABLEKS                       R15 R16 K28 ["Text"]
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
      111 GETUPVAL                         R11 6
      112 GETTABLEKS                       R10 R11 K11 ["createElement"]
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
      146 GETUPVAL                         R15 6
      147 GETTABLEKS                       R14 R15 K11 ["createElement"]
      149 LOADK                            R15 K52 ["ImageLabel"]
      150 DUPTABLE                         R16 K55 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      151 LOADN                            R17 1
      152 SETTABLEKS                       R17 R16 K53 ["BackgroundTransparency"]
      154 GETUPVAL                         R18 5
      155 GETTABLEKS                       R17 R18 K24 ["WARNING_ICON"]
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
      176 GETUPVAL                         R15 6
      177 GETTABLEKS                       R14 R15 K11 ["createElement"]
      179 LOADK                            R15 K57 ["TextLabel"]
      180 DUPTABLE                         R16 K64 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      181 GETIMPORT                        R17 K42 [Enum.AutomaticSize.Y]
      183 SETTABLEKS                       R17 R16 K34 ["AutomaticSize"]
      185 LOADN                            R17 1
      186 SETTABLEKS                       R17 R16 K53 ["BackgroundTransparency"]
      188 GETUPVAL                         R18 8
      189 GETTABLEKS                       R17 R18 K65 ["FONT"]
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
      247 GETUPVAL                         R16 9
      248 GETTABLEKS                       R15 R16 K74 ["AssetTypeRequiresFolderForUpload"]
      250 GETTABLEKS                       R16 R12 K75 ["assetType"]
      252 CALL                             R15 1 1
      253 JUMPIFNOT                        R15 ; [+9]
      254 GETTABLEKS                       R15 R12 K76 ["instance"]
      256 JUMPIFNOT                        R15 ; [+4]
      257 GETUPVAL                         R15 10
      258 GETTABLEKS                       R16 R12 K76 ["instance"]
      260 CALL                             R15 1 1
      261 MOVE                             R14 R15
      262 JUMP                             ; [+29]
      263 GETTABLEKS                       R15 R12 K76 ["instance"]
      265 JUMPIFNOT                        R15 ; [+25]
      266 GETTABLEKS                       R16 R12 K76 ["instance"]
      268 GETIMPORT                        R17 K78 [Instance.new]
      270 LOADK                            R18 K79 ["Model"]
      271 CALL                             R17 1 1
      272 NAMECALL                         R18 R16 K80 ["Clone"]
      274 CALL                             R18 1 1
      275 MOVE                             R19 R18
      276 LOADK                            R22 K81 ["BasePart"]
      277 NAMECALL                         R20 R19 K82 ["IsA"]
      279 CALL                             R20 2 1
      280 JUMPIF                           R20 ; [+5]
      281 LOADK                            R22 K81 ["BasePart"]
      282 NAMECALL                         R20 R18 K83 ["FindFirstChildWhichIsA"]
      284 CALL                             R20 2 1
      285 MOVE                             R19 R20
      286 SETTABLEKS                       R19 R17 K84 ["PrimaryPart"]
      288 SETTABLEKS                       R17 R18 K85 ["Parent"]
      290 MOVE                             R15 R17
      291 MOVE                             R14 R15
      292 LOADNIL                          R15
      293 GETUPVAL                         R16 11
      294 CALL                             R16 0 1
      295 JUMPIFNOT                        R16 ; [+36]
      296 GETTABLEKS                       R16 R12 K75 ["assetType"]
      298 JUMPIFNOTEQKNIL                  R16 ; [+18]
      300 GETTABLEKS                       R16 R1 K10 ["isUGCBodyBundleType"]
      302 JUMPIFNOT                        R16 ; [+7]
      303 LOADK                            R18 K6 ["AssetConfig"]
      304 LOADK                            R19 K86 ["ValidationFullBody"]
      305 NAMECALL                         R16 R2 K8 ["getText"]
      307 CALL                             R16 3 1
      308 MOVE                             R15 R16
      309 JUMP                             ; [+36]
      310 LOADK                            R18 K6 ["AssetConfig"]
      311 LOADK                            R19 K87 ["ValidationShoePair"]
      312 NAMECALL                         R16 R2 K8 ["getText"]
      314 CALL                             R16 3 1
      315 MOVE                             R15 R16
      316 JUMP                             ; [+29]
      317 GETUPVAL                         R18 12
      318 GETTABLEKS                       R19 R1 K1 ["Localization"]
      320 CALL                             R18 1 1
      321 GETTABLEKS                       R19 R12 K75 ["assetType"]
      323 GETTABLE                         R17 R18 R19
      324 FASTCALL2K                       ASSERT R17 K88 ; [+4]
      326 LOADK                            R18 K88 ["Couldn't find localized text for asset type"]
      327 GETIMPORT                        R16 K73 [assert]
      329 CALL                             R16 2 1
      330 MOVE                             R15 R16
      331 JUMP                             ; [+14]
      332 GETUPVAL                         R18 12
      333 GETTABLEKS                       R19 R1 K1 ["Localization"]
      335 CALL                             R18 1 1
      336 GETTABLEKS                       R19 R12 K75 ["assetType"]
      338 GETTABLE                         R17 R18 R19
      339 FASTCALL2K                       ASSERT R17 K88 ; [+4]
      341 LOADK                            R18 K88 ["Couldn't find localized text for asset type"]
      342 GETIMPORT                        R16 K73 [assert]
      344 CALL                             R16 2 1
      345 MOVE                             R15 R16
      346 GETTABLEKS                       R17 R12 K70 ["type"]
      348 GETUPVAL                         R19 13
      349 GETTABLEKS                       R18 R19 K89 ["success"]
      351 JUMPIFNOTEQ                      R17 R18 ; [+7]
      353 LOADK                            R18 K6 ["AssetConfig"]
      354 LOADK                            R19 K90 ["ValidationSuccess"]
      355 NAMECALL                         R16 R2 K8 ["getText"]
      357 CALL                             R16 3 1
      358 JUMP                             ; [+49]
      359 GETTABLEKS                       R17 R12 K70 ["type"]
      361 GETUPVAL                         R19 13
      362 GETTABLEKS                       R18 R19 K91 ["pending"]
      364 JUMPIFNOTEQ                      R17 R18 ; [+7]
      366 LOADK                            R18 K6 ["AssetConfig"]
      367 LOADK                            R19 K92 ["ValidatingInProgress"]
      368 NAMECALL                         R16 R2 K8 ["getText"]
      370 CALL                             R16 3 1
      371 JUMP                             ; [+36]
      372 GETTABLEKS                       R17 R12 K70 ["type"]
      374 GETUPVAL                         R19 13
      375 GETTABLEKS                       R18 R19 K93 ["error"]
      377 JUMPIFNOTEQ                      R17 R18 ; [+20]
      379 LOADK                            R18 K6 ["AssetConfig"]
      380 GETTABLEKS                       R21 R12 K94 ["errors"]
      382 LENGTH                           R20 R21
      383 JUMPIFNOTEQKN                    R20 K95 [1] ; [+3]
      385 LOADK                            R19 K96 ["ValidationErrorSingular"]
      386 JUMP                             ; [+1]
      387 LOADK                            R19 K97 ["ValidationErrorPlural"]
      388 DUPTABLE                         R20 K99 [{"errorCount"}]
      389 GETTABLEKS                       R22 R12 K94 ["errors"]
      391 LENGTH                           R21 R22
      392 SETTABLEKS                       R21 R20 K98 ["errorCount"]
      394 NAMECALL                         R16 R2 K8 ["getText"]
      396 CALL                             R16 4 1
      397 JUMP                             ; [+10]
      398 GETIMPORT                        R16 K100 [error]
      400 LOADK                            R18 K101 ["Unknown validation result type \"%*\""]
      401 GETTABLEKS                       R20 R12 K70 ["type"]
      403 NAMECALL                         R18 R18 K102 ["format"]
      405 CALL                             R18 2 1
      406 MOVE                             R17 R18
      407 CALL                             R16 1 1
      408 GETUPVAL                         R17 2
      409 CALL                             R17 0 1
      410 JUMPIFNOT                        R17 ; [+113]
      411 LOADB                            R17 0
      412 GETTABLEKS                       R18 R12 K76 ["instance"]
      414 JUMPIFEQKNIL                     R18 ; [+10]
      416 LOADB                            R17 0
      417 JUMPIFEQKNIL                     R14 ; [+7]
      419 GETTABLEKS                       R18 R14 K84 ["PrimaryPart"]
      421 JUMPIFNOTEQKNIL                  R18 ; [+2]
      423 LOADB                            R17 0 +1
      424 LOADB                            R17 1
      425 MOVE                             R19 R6
      426 GETUPVAL                         R21 3
      427 GETTABLEKS                       R20 R21 K11 ["createElement"]
      429 GETUPVAL                         R21 14
      430 DUPTABLE                         R22 K118 [{"LayoutOrder", "previewBackgroundColor", "previewSize", "placeholderIconColor", "nameMinWidth", "validationIconSize", "assetDisplayName", "validationStatusImage", "iconColor", "textColor", "validationMessage", "isValidationError", "onClickError", "model", "hasRenderablePreview", "focusDirection"}]
      431 SETTABLEKS                       R11 R22 K14 ["LayoutOrder"]
      433 GETTABLEKS                       R23 R3 K103 ["previewBackgroundColor"]
      435 SETTABLEKS                       R23 R22 K103 ["previewBackgroundColor"]
      437 GETTABLEKS                       R23 R3 K104 ["previewSize"]
      439 SETTABLEKS                       R23 R22 K104 ["previewSize"]
      441 GETTABLEKS                       R23 R3 K105 ["placeholderIconColor"]
      443 SETTABLEKS                       R23 R22 K105 ["placeholderIconColor"]
      445 GETTABLEKS                       R23 R3 K106 ["nameMinWidth"]
      447 SETTABLEKS                       R23 R22 K106 ["nameMinWidth"]
      449 GETTABLEKS                       R23 R3 K107 ["validationIconSize"]
      451 SETTABLEKS                       R23 R22 K107 ["validationIconSize"]
      453 GETTABLEKS                       R24 R12 K119 ["required"]
      455 JUMPIFNOT                        R24 ; [+4]
      456 MOVE                             R24 R15
      457 LOADK                            R25 K120 ["*"]
      458 CONCAT                           R23 R24 R25
      459 JUMP                             ; [+1]
      460 MOVE                             R23 R15
      461 SETTABLEKS                       R23 R22 K108 ["assetDisplayName"]
      463 GETUPVAL                         R26 5
      464 GETTABLEKS                       R25 R26 K121 ["UGCValidationStatus"]
      466 GETTABLEKS                       R26 R12 K70 ["type"]
      468 GETTABLE                         R24 R25 R26
      469 FASTCALL2K                       ASSERT R24 K122 ; [+4]
      471 LOADK                            R25 K122 ["No icon for validation result type"]
      472 GETIMPORT                        R23 K73 [assert]
      474 CALL                             R23 2 1
      475 SETTABLEKS                       R23 R22 K109 ["validationStatusImage"]
      477 GETTABLEKS                       R23 R13 K110 ["iconColor"]
      479 SETTABLEKS                       R23 R22 K110 ["iconColor"]
      481 GETTABLEKS                       R23 R13 K111 ["textColor"]
      483 SETTABLEKS                       R23 R22 K111 ["textColor"]
      485 SETTABLEKS                       R16 R22 K112 ["validationMessage"]
      487 GETTABLEKS                       R24 R12 K70 ["type"]
      489 GETUPVAL                         R26 13
      490 GETTABLEKS                       R25 R26 K93 ["error"]
      492 JUMPIFEQ                         R24 R25 ; [+2]
      494 LOADB                            R23 0 +1
      495 LOADB                            R23 1
      496 SETTABLEKS                       R23 R22 K113 ["isValidationError"]
      498 GETTABLEKS                       R23 R1 K114 ["onClickError"]
      500 SETTABLEKS                       R23 R22 K114 ["onClickError"]
      502 SETTABLEKS                       R14 R22 K115 ["model"]
      504 SETTABLEKS                       R17 R22 K116 ["hasRenderablePreview"]
      506 JUMPIFNOT                        R17 ; [+8]
      507 JUMPIFNOT                        R14 ; [+7]
      508 GETTABLEKS                       R25 R14 K84 ["PrimaryPart"]
      510 GETTABLEKS                       R24 R25 K123 ["CFrame"]
      512 GETTABLEKS                       R23 R24 K124 ["LookVector"]
      514 JUMP                             ; [+1]
      515 LOADNIL                          R23
      516 SETTABLEKS                       R23 R22 K117 ["focusDirection"]
      518 CALL                             R20 2 -1
      519 FASTCALL                         TABLE_INSERT ; [+2]
      520 GETIMPORT                        R18 K33 [table.insert]
      522 CALL                             R18 -1 0
      523 JUMP                             ; [+278]
      524 MOVE                             R18 R6
      525 GETUPVAL                         R20 6
      526 GETTABLEKS                       R19 R20 K11 ["createElement"]
      528 GETUPVAL                         R20 7
      529 DUPTABLE                         R21 K125 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      530 GETIMPORT                        R22 K42 [Enum.AutomaticSize.Y]
      532 SETTABLEKS                       R22 R21 K34 ["AutomaticSize"]
      534 GETIMPORT                        R22 K44 [Enum.HorizontalAlignment.Left]
      536 SETTABLEKS                       R22 R21 K35 ["HorizontalAlignment"]
      538 GETIMPORT                        R22 K47 [Enum.FillDirection.Horizontal]
      540 SETTABLEKS                       R22 R21 K36 ["Layout"]
      542 SETTABLEKS                       R11 R21 K14 ["LayoutOrder"]
      544 GETIMPORT                        R22 K49 [UDim2.fromScale]
      546 LOADN                            R23 1
      547 LOADN                            R24 0
      548 CALL                             R22 2 1
      549 SETTABLEKS                       R22 R21 K21 ["Size"]
      551 LOADN                            R22 5
      552 SETTABLEKS                       R22 R21 K37 ["Spacing"]
      554 DUPTABLE                         R22 K129 [{"Preview", "AssetName", "ValidationArea"}]
      555 GETUPVAL                         R24 6
      556 GETTABLEKS                       R23 R24 K11 ["createElement"]
      558 GETUPVAL                         R24 7
      559 DUPTABLE                         R25 K131 [{"BackgroundColor", "LayoutOrder", "Size"}]
      560 GETTABLEKS                       R26 R3 K103 ["previewBackgroundColor"]
      562 SETTABLEKS                       R26 R25 K130 ["BackgroundColor"]
      564 NAMECALL                         R26 R7 K132 ["getNextOrder"]
      566 CALL                             R26 1 1
      567 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      569 GETIMPORT                        R26 K27 [UDim2.fromOffset]
      571 GETTABLEKS                       R27 R3 K104 ["previewSize"]
      573 GETTABLEKS                       R28 R3 K104 ["previewSize"]
      575 CALL                             R26 2 1
      576 SETTABLEKS                       R26 R25 K21 ["Size"]
      578 DUPTABLE                         R26 K135 [{"UICorner", "PreviewModel"}]
      579 GETUPVAL                         R28 6
      580 GETTABLEKS                       R27 R28 K11 ["createElement"]
      582 LOADK                            R28 K133 ["UICorner"]
      583 DUPTABLE                         R29 K137 [{"CornerRadius"}]
      584 GETIMPORT                        R30 K139 [UDim.new]
      586 LOADN                            R31 0
      587 LOADN                            R32 10
      588 CALL                             R30 2 1
      589 SETTABLEKS                       R30 R29 K136 ["CornerRadius"]
      591 CALL                             R27 2 1
      592 SETTABLEKS                       R27 R26 K133 ["UICorner"]
      594 GETTABLEKS                       R28 R12 K76 ["instance"]
      596 JUMPIFNOT                        R28 ; [+27]
      597 GETTABLEKS                       R28 R14 K84 ["PrimaryPart"]
      599 JUMPIFEQKNIL                     R28 ; [+24]
      601 GETUPVAL                         R28 6
      602 GETTABLEKS                       R27 R28 K11 ["createElement"]
      604 GETUPVAL                         R28 15
      605 DUPTABLE                         R29 K143 [{"FocusDirection", "Model", "ShouldMuteModelSounds", "Static"}]
      606 GETTABLEKS                       R32 R14 K84 ["PrimaryPart"]
      608 GETTABLEKS                       R31 R32 K123 ["CFrame"]
      610 GETTABLEKS                       R30 R31 K124 ["LookVector"]
      612 SETTABLEKS                       R30 R29 K140 ["FocusDirection"]
      614 SETTABLEKS                       R14 R29 K79 ["Model"]
      616 LOADB                            R30 1
      617 SETTABLEKS                       R30 R29 K141 ["ShouldMuteModelSounds"]
      619 LOADB                            R30 1
      620 SETTABLEKS                       R30 R29 K142 ["Static"]
      622 CALL                             R27 2 1
      623 JUMP                             ; [+15]
      624 GETUPVAL                         R28 6
      625 GETTABLEKS                       R27 R28 K11 ["createElement"]
      627 GETUPVAL                         R28 16
      628 DUPTABLE                         R29 K144 [{"Image", "ImageColor3"}]
      629 GETUPVAL                         R31 5
      630 GETTABLEKS                       R30 R31 K145 ["PLACEHOLDER_ICON"]
      632 SETTABLEKS                       R30 R29 K20 ["Image"]
      634 GETTABLEKS                       R30 R3 K105 ["placeholderIconColor"]
      636 SETTABLEKS                       R30 R29 K54 ["ImageColor3"]
      638 CALL                             R27 2 1
      639 SETTABLEKS                       R27 R26 K134 ["PreviewModel"]
      641 CALL                             R23 3 1
      642 SETTABLEKS                       R23 R22 K126 ["Preview"]
      644 GETUPVAL                         R24 6
      645 GETTABLEKS                       R23 R24 K11 ["createElement"]
      647 GETUPVAL                         R24 17
      648 DUPTABLE                         R25 K146 [{"AutomaticSize", "LayoutOrder", "Text", "TextSize", "TextXAlignment"}]
      649 GETIMPORT                        R26 K148 [Enum.AutomaticSize.XY]
      651 SETTABLEKS                       R26 R25 K34 ["AutomaticSize"]
      653 NAMECALL                         R26 R7 K132 ["getNextOrder"]
      655 CALL                             R26 1 1
      656 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      658 GETTABLEKS                       R27 R12 K119 ["required"]
      660 JUMPIFNOT                        R27 ; [+4]
      661 MOVE                             R27 R15
      662 LOADK                            R28 K120 ["*"]
      663 CONCAT                           R26 R27 R28
      664 JUMP                             ; [+1]
      665 MOVE                             R26 R15
      666 SETTABLEKS                       R26 R25 K28 ["Text"]
      668 GETTABLEKS                       R26 R3 K149 ["nameTextSize"]
      670 SETTABLEKS                       R26 R25 K60 ["TextSize"]
      672 GETIMPORT                        R26 K66 [Enum.TextXAlignment.Left]
      674 SETTABLEKS                       R26 R25 K62 ["TextXAlignment"]
      676 DUPTABLE                         R26 K151 [{"UISizeConstraint"}]
      677 GETUPVAL                         R28 6
      678 GETTABLEKS                       R27 R28 K11 ["createElement"]
      680 LOADK                            R28 K150 ["UISizeConstraint"]
      681 DUPTABLE                         R29 K153 [{"MinSize"}]
      682 GETIMPORT                        R30 K155 [Vector2.new]
      684 GETTABLEKS                       R31 R3 K106 ["nameMinWidth"]
      686 LOADN                            R32 0
      687 CALL                             R30 2 1
      688 SETTABLEKS                       R30 R29 K152 ["MinSize"]
      690 CALL                             R27 2 1
      691 SETTABLEKS                       R27 R26 K150 ["UISizeConstraint"]
      693 CALL                             R23 3 1
      694 SETTABLEKS                       R23 R22 K127 ["AssetName"]
      696 GETUPVAL                         R24 6
      697 GETTABLEKS                       R23 R24 K11 ["createElement"]
      699 GETUPVAL                         R24 7
      700 DUPTABLE                         R25 K157 [{"AutomaticSize", "LayoutOrder", "Layout", "OnClick", "Spacing"}]
      701 GETIMPORT                        R26 K148 [Enum.AutomaticSize.XY]
      703 SETTABLEKS                       R26 R25 K34 ["AutomaticSize"]
      705 NAMECALL                         R26 R7 K132 ["getNextOrder"]
      707 CALL                             R26 1 1
      708 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      710 GETIMPORT                        R26 K47 [Enum.FillDirection.Horizontal]
      712 SETTABLEKS                       R26 R25 K36 ["Layout"]
      714 GETTABLEKS                       R27 R12 K70 ["type"]
      716 GETUPVAL                         R29 13
      717 GETTABLEKS                       R28 R29 K93 ["error"]
      719 JUMPIFNOTEQ                      R27 R28 ; [+4]
      721 GETTABLEKS                       R26 R1 K114 ["onClickError"]
      723 JUMP                             ; [+1]
      724 LOADNIL                          R26
      725 SETTABLEKS                       R26 R25 K156 ["OnClick"]
      727 LOADN                            R26 5
      728 SETTABLEKS                       R26 R25 K37 ["Spacing"]
      730 DUPTABLE                         R26 K160 [{"ValidationIcon", "ValidationText"}]
      731 GETUPVAL                         R28 6
      732 GETTABLEKS                       R27 R28 K11 ["createElement"]
      734 GETUPVAL                         R28 16
      735 DUPTABLE                         R29 K161 [{"Image", "ImageColor3", "LayoutOrder", "Size"}]
      736 GETUPVAL                         R33 5
      737 GETTABLEKS                       R32 R33 K121 ["UGCValidationStatus"]
      739 GETTABLEKS                       R33 R12 K70 ["type"]
      741 GETTABLE                         R31 R32 R33
      742 FASTCALL2K                       ASSERT R31 K122 ; [+4]
      744 LOADK                            R32 K122 ["No icon for validation result type"]
      745 GETIMPORT                        R30 K73 [assert]
      747 CALL                             R30 2 1
      748 SETTABLEKS                       R30 R29 K20 ["Image"]
      750 GETTABLEKS                       R30 R13 K110 ["iconColor"]
      752 SETTABLEKS                       R30 R29 K54 ["ImageColor3"]
      754 NAMECALL                         R30 R7 K132 ["getNextOrder"]
      756 CALL                             R30 1 1
      757 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      759 GETIMPORT                        R30 K27 [UDim2.fromOffset]
      761 GETTABLEKS                       R31 R3 K107 ["validationIconSize"]
      763 GETTABLEKS                       R32 R3 K107 ["validationIconSize"]
      765 CALL                             R30 2 1
      766 SETTABLEKS                       R30 R29 K21 ["Size"]
      768 CALL                             R27 2 1
      769 SETTABLEKS                       R27 R26 K158 ["ValidationIcon"]
      771 GETUPVAL                         R28 6
      772 GETTABLEKS                       R27 R28 K11 ["createElement"]
      774 GETUPVAL                         R28 17
      775 DUPTABLE                         R29 K163 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor"}]
      776 GETIMPORT                        R30 K148 [Enum.AutomaticSize.XY]
      778 SETTABLEKS                       R30 R29 K34 ["AutomaticSize"]
      780 NAMECALL                         R30 R7 K132 ["getNextOrder"]
      782 CALL                             R30 1 1
      783 SETTABLEKS                       R30 R29 K14 ["LayoutOrder"]
      785 SETTABLEKS                       R16 R29 K28 ["Text"]
      787 GETTABLEKS                       R30 R13 K111 ["textColor"]
      789 SETTABLEKS                       R30 R29 K162 ["TextColor"]
      791 CALL                             R27 2 1
      792 SETTABLEKS                       R27 R26 K159 ["ValidationText"]
      794 CALL                             R23 3 1
      795 SETTABLEKS                       R23 R22 K128 ["ValidationArea"]
      797 CALL                             R19 3 -1
      798 FASTCALL                         TABLE_INSERT ; [+2]
      799 GETIMPORT                        R17 K33 [table.insert]
      801 CALL                             R17 -1 0
      802 FORGLOOP                         R8 2 ; [-568]
      804 GETUPVAL                         R8 2
      805 CALL                             R8 0 1
      806 JUMPIFNOT                        R8 ; [+17]
      807 GETUPVAL                         R9 3
      808 GETTABLEKS                       R8 R9 K11 ["createElement"]
      810 GETUPVAL                         R10 4
      811 GETTABLEKS                       R9 R10 K12 ["View"]
      813 DUPTABLE                         R10 K15 [{"tag", "LayoutOrder"}]
      814 LOADK                            R11 K164 ["col align-x-left align-y-top gap-xlarge size-full-0 auto-y"]
      815 SETTABLEKS                       R11 R10 K13 ["tag"]
      817 GETTABLEKS                       R11 R1 K14 ["LayoutOrder"]
      819 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      821 MOVE                             R11 R6
      822 CALL                             R8 3 -1
      823 RETURN                           R8 -1
      824 GETUPVAL                         R9 6
      825 GETTABLEKS                       R8 R9 K11 ["createElement"]
      827 GETUPVAL                         R9 7
      828 DUPTABLE                         R10 K165 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing"}]
      829 GETIMPORT                        R11 K42 [Enum.AutomaticSize.Y]
      831 SETTABLEKS                       R11 R10 K34 ["AutomaticSize"]
      833 GETIMPORT                        R11 K167 [Enum.FillDirection.Vertical]
      835 SETTABLEKS                       R11 R10 K36 ["Layout"]
      837 GETTABLEKS                       R11 R1 K14 ["LayoutOrder"]
      839 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      841 GETIMPORT                        R11 K49 [UDim2.fromScale]
      843 LOADN                            R12 1
      844 LOADN                            R13 0
      845 CALL                             R11 2 1
      846 SETTABLEKS                       R11 R10 K21 ["Size"]
      848 LOADN                            R11 18
      849 SETTABLEKS                       R11 R10 K37 ["Spacing"]
      851 MOVE                             R11 R6
      852 CALL                             R8 3 -1
      853 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Localization"]
       34 GETTABLEKS                       R5 R6 K12 ["getLocalizedAssetTextMap"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R5 R6 K13 ["Util"]
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
       58 GETTABLEKS                       R11 R5 K17 ["Analytics"]
       60 GETTABLEKS                       R10 R11 K17 ["Analytics"]
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
      107 GETTABLEKS                       R24 R5 K29 ["SharedFlags"]
      109 GETTABLEKS                       R23 R24 K30 ["getFFlagUGCBundleValidationFullBodyErrors"]
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
      128 GETTABLEKS                       R27 R5 K29 ["SharedFlags"]
      130 GETTABLEKS                       R26 R27 K36 ["getFFlagEnableUGCBundleUploadBodyScale"]
      132 CALL                             R25 1 1
      133 GETIMPORT                        R26 K5 [require]
      135 GETTABLEKS                       R29 R0 K10 ["Src"]
      137 GETTABLEKS                       R28 R29 K37 ["Flags"]
      139 GETTABLEKS                       R27 R28 K38 ["getFFlagRequireBodyColorsForBodyUpload"]
      141 CALL                             R26 1 1
      142 GETIMPORT                        R27 K5 [require]
      144 GETTABLEKS                       R30 R0 K10 ["Src"]
      146 GETTABLEKS                       R29 R30 K37 ["Flags"]
      148 GETTABLEKS                       R28 R29 K39 ["getFFlagToolboxAssetConfigFoundationMigration"]
      150 CALL                             R27 1 1
      151 GETIMPORT                        R28 K5 [require]
      153 GETTABLEKS                       R31 R0 K10 ["Src"]
      155 GETTABLEKS                       R30 R31 K37 ["Flags"]
      157 GETTABLEKS                       R29 R30 K40 ["getFFlagBundleBypassValidation"]
      159 CALL                             R28 1 1
      160 GETIMPORT                        R29 K5 [require]
      162 GETTABLEKS                       R32 R0 K10 ["Src"]
      164 GETTABLEKS                       R31 R32 K37 ["Flags"]
      166 GETTABLEKS                       R30 R31 K41 ["getFStringBundlesToBypassValidation"]
      168 CALL                             R29 1 1
      169 GETTABLEKS                       R30 R1 K42 ["ContextServices"]
      171 GETTABLEKS                       R31 R30 K43 ["withContext"]
      173 GETTABLEKS                       R33 R1 K13 ["Util"]
      175 GETTABLEKS                       R32 R33 K44 ["LayoutOrderIterator"]
      177 GETTABLEKS                       R35 R0 K10 ["Src"]
      179 GETTABLEKS                       R34 R35 K45 ["Components"]
      181 GETTABLEKS                       R33 R34 K46 ["AssetConfiguration"]
      183 GETIMPORT                        R34 K5 [require]
      185 GETTABLEKS                       R35 R33 K47 ["BundleValidationRow"]
      187 CALL                             R34 1 1
      188 GETIMPORT                        R35 K5 [require]
      190 GETTABLEKS                       R36 R33 K48 ["ValidationStatus"]
      192 CALL                             R35 1 1
      193 GETIMPORT                        R36 K5 [require]
      195 GETTABLEKS                       R38 R5 K29 ["SharedFlags"]
      197 GETTABLEKS                       R37 R38 K49 ["getFFlagEnableUGCUploadFlowAnalytics"]
      199 CALL                             R36 1 1
      200 DUPCLOSURE                       R37 K50 [PROTO_0]
      201 DUPCLOSURE                       R38 K51 [PROTO_1]
      202 GETTABLEKS                       R39 R2 K52 ["PureComponent"]
      204 LOADK                            R41 K53 ["UGCBundleValidation"]
      205 NAMECALL                         R39 R39 K54 ["extend"]
      207 CALL                             R39 2 1
      208 DUPCLOSURE                       R40 K55 [PROTO_2]
      209 CAPTURE                          VAL R28
      210 CAPTURE                          VAL R29
      211 DUPCLOSURE                       R41 K56 [PROTO_5]
      212 CAPTURE                          VAL R36
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R24
      218 SETTABLEKS                       R41 R39 K57 ["init"]
      220 DUPCLOSURE                       R41 K58 [PROTO_6]
      221 SETTABLEKS                       R41 R39 K59 ["cancelValidationTasks"]
      223 DUPCLOSURE                       R41 K60 [PROTO_13]
      224 CAPTURE                          VAL R36
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R10
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R40
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R35
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R25
      237 CAPTURE                          VAL R26
      238 SETTABLEKS                       R41 R39 K61 ["startUGCBundleValidation"]
      240 DUPCLOSURE                       R41 K62 [PROTO_14]
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R10
      243 SETTABLEKS                       R41 R39 K63 ["didUpdate"]
      245 DUPCLOSURE                       R41 K64 [PROTO_15]
      246 SETTABLEKS                       R41 R39 K65 ["willUnmount"]
      248 DUPCLOSURE                       R41 K66 [PROTO_16]
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R15
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R7
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R37
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R35
      263 CAPTURE                          VAL R34
      264 CAPTURE                          VAL R21
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R20
      267 SETTABLEKS                       R41 R39 K67 ["render"]
      269 MOVE                             R41 R31
      270 DUPTABLE                         R42 K69 [{"Localization", "Stylizer"}]
      271 GETTABLEKS                       R43 R30 K11 ["Localization"]
      273 SETTABLEKS                       R43 R42 K11 ["Localization"]
      275 GETTABLEKS                       R43 R30 K68 ["Stylizer"]
      277 SETTABLEKS                       R43 R42 K68 ["Stylizer"]
      279 CALL                             R41 1 1
      280 MOVE                             R42 R39
      281 CALL                             R41 1 1
      282 MOVE                             R39 R41
      283 RETURN                           R39 1
