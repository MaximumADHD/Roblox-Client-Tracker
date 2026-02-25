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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["errors"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETUPVAL                         R9 0
       12 CALL                             R9 0 1
       13 JUMPIFNOT                        R9 ; [+35]
       14 GETUPVAL                         R9 1
       15 MOVE                             R10 R8
       16 CALL                             R9 1 1
       17 GETTABLEKS                       R10 R8 K1 ["assetType"]
       19 JUMPIFNOTEQKNIL                  R10 ; [+9]
       21 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       23 MOVE                             R11 R3
       24 MOVE                             R12 R9
       25 GETIMPORT                        R10 K4 [table.insert]
       27 CALL                             R10 2 0
       28 JUMP                             ; [+46]
       29 GETTABLEKS                       R11 R8 K1 ["assetType"]
       31 GETTABLE                         R10 R2 R11
       32 JUMPIFNOTEQKNIL                  R10 ; [+6]
       34 GETTABLEKS                       R10 R8 K1 ["assetType"]
       36 NEWTABLE                         R11 0 0
       38 SETTABLE                         R11 R2 R10
       39 GETTABLEKS                       R12 R8 K1 ["assetType"]
       41 GETTABLE                         R11 R2 R12
       42 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       44 MOVE                             R12 R9
       45 GETIMPORT                        R10 K4 [table.insert]
       47 CALL                             R10 2 0
       48 JUMP                             ; [+26]
       49 GETTABLEKS                       R9 R8 K1 ["assetType"]
       51 JUMPIFEQKNIL                     R9 ; [+23]
       53 GETTABLEKS                       R10 R8 K1 ["assetType"]
       55 GETTABLE                         R9 R2 R10
       56 JUMPIFNOTEQKNIL                  R9 ; [+6]
       58 GETTABLEKS                       R9 R8 K1 ["assetType"]
       60 NEWTABLE                         R10 0 0
       62 SETTABLE                         R10 R2 R9
       63 GETUPVAL                         R9 1
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R12 R8 K1 ["assetType"]
       68 GETTABLE                         R11 R2 R12
       69 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       71 MOVE                             R12 R9
       72 GETIMPORT                        R10 K4 [table.insert]
       74 CALL                             R10 2 0
       75 FORGLOOP                         R4 2 ; [-65]
       77 GETTABLEKS                       R4 R0 K5 ["pieces"]
       79 LOADNIL                          R5
       80 LOADNIL                          R6
       81 FORGPREP                         R4
       82 GETTABLEKS                       R10 R8 K1 ["assetType"]
       84 GETTABLE                         R9 R2 R10
       85 JUMPIF                           R9 ; [+2]
       86 NEWTABLE                         R9 0 0
       88 DUPTABLE                         R12 K9 [{"assetType", "instance", "required", "errors", "type"}]
       89 GETTABLEKS                       R13 R8 K1 ["assetType"]
       91 SETTABLEKS                       R13 R12 K1 ["assetType"]
       93 GETTABLEKS                       R13 R8 K6 ["instance"]
       95 SETTABLEKS                       R13 R12 K6 ["instance"]
       97 GETTABLEKS                       R15 R8 K10 ["settings"]
       99 GETTABLEKS                       R14 R15 K11 ["minimumQuantity"]
      101 LOADN                            R15 0
      102 JUMPIFLT                         R15 R14 ; [+2]
      104 LOADB                            R13 0 +1
      105 LOADB                            R13 1
      106 SETTABLEKS                       R13 R12 K7 ["required"]
      108 SETTABLEKS                       R9 R12 K0 ["errors"]
      110 LENGTH                           R14 R9
      111 LOADN                            R15 0
      112 JUMPIFNOTLT                      R15 R14 ; [+5]
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R13 R14 K12 ["error"]
      117 JUMP                             ; [+11]
      118 GETTABLEKS                       R14 R8 K13 ["status"]
      120 JUMPIFNOTEQKS                    R14 K14 ["finished"] ; [+5]
      122 GETUPVAL                         R14 2
      123 GETTABLEKS                       R13 R14 K15 ["success"]
      125 JUMP                             ; [+3]
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R13 R14 K16 ["pending"]
      129 SETTABLEKS                       R13 R12 K8 ["type"]
      131 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      133 MOVE                             R11 R1
      134 GETIMPORT                        R10 K4 [table.insert]
      136 CALL                             R10 2 0
      137 FORGLOOP                         R4 2 ; [-56]
      139 GETUPVAL                         R4 0
      140 CALL                             R4 0 1
      141 JUMPIFNOT                        R4 ; [+31]
      142 DUPTABLE                         R6 K9 [{"assetType", "instance", "required", "errors", "type"}]
      143 LOADNIL                          R7
      144 SETTABLEKS                       R7 R6 K1 ["assetType"]
      146 GETUPVAL                         R7 3
      147 SETTABLEKS                       R7 R6 K6 ["instance"]
      149 LOADB                            R7 1
      150 SETTABLEKS                       R7 R6 K7 ["required"]
      152 SETTABLEKS                       R3 R6 K0 ["errors"]
      154 LENGTH                           R8 R3
      155 LOADN                            R9 0
      156 JUMPIFNOTLT                      R9 R8 ; [+5]
      158 GETUPVAL                         R8 2
      159 GETTABLEKS                       R7 R8 K12 ["error"]
      161 JUMP                             ; [+3]
      162 GETUPVAL                         R8 2
      163 GETTABLEKS                       R7 R8 K16 ["pending"]
      165 SETTABLEKS                       R7 R6 K8 ["type"]
      167 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
      169 MOVE                             R5 R1
      170 GETIMPORT                        R4 K4 [table.insert]
      172 CALL                             R4 2 0
      173 GETUPVAL                         R5 4
      174 GETTABLEKS                       R4 R5 K17 ["setUGCBundleValidationResults"]
      176 JUMPIFNOT                        R4 ; [+5]
      177 GETUPVAL                         R5 4
      178 GETTABLEKS                       R4 R5 K17 ["setUGCBundleValidationResults"]
      180 MOVE                             R5 R1
      181 CALL                             R4 1 0
      182 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NAMECALL                         R1 R1 K0 ["setState"]
       11 CALL                             R1 2 0
       12 NEWTABLE                         R1 0 0
       14 GETTABLEKS                       R2 R0 K1 ["errors"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R9 6
       20 MOVE                             R10 R6
       21 CALL                             R9 1 1
       22 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       24 MOVE                             R8 R1
       25 GETIMPORT                        R7 K4 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-10]
       30 GETUPVAL                         R2 7
       31 CALL                             R2 0 1
       32 JUMPIF                           R2 ; [+3]
       33 GETUPVAL                         R2 8
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+34]
       36 GETUPVAL                         R3 5
       37 GETTABLEKS                       R2 R3 K5 ["assetTypeEnum"]
       39 GETUPVAL                         R5 9
       40 GETTABLEKS                       R4 R5 K6 ["UGCBundleTypes"]
       42 GETTABLEKS                       R3 R4 K7 ["Body"]
       44 JUMPIFNOTEQ                      R2 R3 ; [+25]
       46 GETUPVAL                         R3 10
       47 GETTABLEKS                       R2 R3 K8 ["ValidateBody"]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R4 R5 K9 ["instances"]
       52 GETTABLEN                        R3 R4 1
       53 GETUPVAL                         R5 5
       54 GETTABLEKS                       R4 R5 K10 ["Localization"]
       56 CALL                             R2 2 1
       57 MOVE                             R3 R2
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       63 MOVE                             R9 R1
       64 MOVE                             R10 R7
       65 GETIMPORT                        R8 K4 [table.insert]
       67 CALL                             R8 2 0
       68 FORGLOOP                         R3 2 ; [-8]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R2 R3 K11 ["validationCallback"]
       73 LENGTH                           R4 R1
       74 JUMPIFEQKN                       R4 K12 [0] ; [+2]
       76 LOADB                            R3 0 +1
       77 LOADB                            R3 1
       78 MOVE                             R4 R1
       79 CALL                             R2 2 0
       80 RETURN                           R0 0

PROTO_11:
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
       75 LOADNIL                          R3
       76 GETUPVAL                         R4 4
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+14]
       79 GETTABLEKS                       R6 R0 K0 ["props"]
       81 GETTABLEKS                       R5 R6 K6 ["instances"]
       83 GETTABLEN                        R4 R5 1
       84 NAMECALL                         R4 R4 K18 ["Clone"]
       86 CALL                             R4 1 1
       87 MOVE                             R3 R4
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R4 R5 K19 ["sanitizeForValidation"]
       91 MOVE                             R5 R3
       92 CALL                             R4 1 0
       93 NEWCLOSURE                       R4 P0
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U5
       96 NEWCLOSURE                       R5 P1
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          VAL R4
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          REF R3
      101 CAPTURE                          VAL R1
      102 GETUPVAL                         R7 7
      103 CALL                             R7 0 1
      104 JUMPIFNOT                        R7 ; [+13]
      105 GETTABLEKS                       R7 R1 K2 ["assetTypeEnum"]
      107 GETUPVAL                         R10 3
      108 GETTABLEKS                       R9 R10 K20 ["UGCBundleTypes"]
      110 GETTABLEKS                       R8 R9 K21 ["Shoes"]
      112 JUMPIFNOTEQ                      R7 R8 ; [+5]
      114 GETUPVAL                         R7 8
      115 GETTABLEKS                       R6 R7 K22 ["validateShoesBundleReadyForUpload"]
      117 JUMP                             ; [+3]
      118 GETUPVAL                         R7 8
      119 GETTABLEKS                       R6 R7 K23 ["validateBundleReadyForUpload"]
      121 GETTABLEKS                       R7 R1 K2 ["assetTypeEnum"]
      123 GETTABLEKS                       R8 R1 K6 ["instances"]
      125 JUMPIFEQKNIL                     R8 ; [+60]
      127 LOADNIL                          R8
      128 GETUPVAL                         R10 8
      129 GETTABLEKS                       R9 R10 K24 ["isFolderStructureEnabled"]
      131 JUMPIFNOT                        R9 ; [+24]
      132 GETUPVAL                         R10 8
      133 GETTABLEKS                       R9 R10 K24 ["isFolderStructureEnabled"]
      135 CALL                             R9 0 1
      136 JUMPIFNOT                        R9 ; [+19]
      137 DUPTABLE                         R9 K26 [{"studioPluginName"}]
      138 LOADK                            R10 K27 ["Toolbox"]
      139 SETTABLEKS                       R10 R9 K25 ["studioPluginName"]
      141 MOVE                             R8 R9
      142 GETUPVAL                         R10 8
      143 GETTABLEKS                       R9 R10 K28 ["isEntrypointMergingEnabled"]
      145 JUMPIFNOT                        R9 ; [+10]
      146 GETUPVAL                         R10 8
      147 GETTABLEKS                       R9 R10 K28 ["isEntrypointMergingEnabled"]
      149 CALL                             R9 0 1
      150 JUMPIFNOT                        R9 ; [+5]
      151 NEWCLOSURE                       R9 P2
      152 CAPTURE                          UPVAL U1
      153 CAPTURE                          VAL R1
      154 SETTABLEKS                       R9 R8 K29 ["localizationCallback"]
      156 MOVE                             R9 R6
      157 GETTABLEKS                       R11 R1 K6 ["instances"]
      159 GETTABLEN                        R10 R11 1
      160 GETTABLEKS                       R11 R1 K30 ["allowedBundleTypeSettings"]
      162 GETTABLEKS                       R12 R7 K31 ["rawValue"]
      164 CALL                             R12 0 1
      165 MOVE                             R13 R5
      166 LOADNIL                          R14
      167 MOVE                             R15 R8
      168 CALL                             R9 6 1
      169 NEWCLOSURE                       R11 P3
      170 CAPTURE                          UPVAL U4
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U9
      173 CAPTURE                          UPVAL U10
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R4
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          UPVAL U12
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          UPVAL U1
      181 NAMECALL                         R9 R9 K32 ["andThen"]
      183 CALL                             R9 2 1
      184 SETTABLEKS                       R9 R0 K33 ["validationPromise"]
      186 CLOSEUPVALS                      R3
      187 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["cancelValidationTasks"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
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
       37 GETUPVAL                         R8 2
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+3]
       40 GETTABLEKS                       R8 R1 K10 ["isUGCBodyBundleType"]
       42 JUMPIFNOT                        R8 ; [+121]
       43 MOVE                             R9 R6
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R10 R11 K11 ["createElement"]
       47 GETUPVAL                         R11 4
       48 DUPTABLE                         R12 K19 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       49 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
       51 SETTABLEKS                       R13 R12 K12 ["AutomaticSize"]
       53 GETIMPORT                        R13 K24 [Enum.HorizontalAlignment.Left]
       55 SETTABLEKS                       R13 R12 K13 ["HorizontalAlignment"]
       57 GETIMPORT                        R13 K27 [Enum.FillDirection.Horizontal]
       59 SETTABLEKS                       R13 R12 K14 ["Layout"]
       61 LOADN                            R13 255
       62 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       64 GETIMPORT                        R13 K30 [UDim2.fromScale]
       66 LOADN                            R14 1
       67 LOADN                            R15 0
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K16 ["Size"]
       71 LOADN                            R13 8
       72 SETTABLEKS                       R13 R12 K17 ["Spacing"]
       74 GETIMPORT                        R13 K32 [Enum.VerticalAlignment.Top]
       76 SETTABLEKS                       R13 R12 K18 ["VerticalAlignment"]
       78 DUPTABLE                         R13 K35 [{"Icon", "UGCWarningText"}]
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R14 R15 K11 ["createElement"]
       82 LOADK                            R15 K36 ["ImageLabel"]
       83 DUPTABLE                         R16 K40 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
       84 LOADN                            R17 1
       85 SETTABLEKS                       R17 R16 K37 ["BackgroundTransparency"]
       87 GETUPVAL                         R18 5
       88 GETTABLEKS                       R17 R18 K41 ["WARNING_ICON"]
       90 SETTABLEKS                       R17 R16 K38 ["Image"]
       92 GETTABLEKS                       R17 R3 K42 ["warningColor"]
       94 SETTABLEKS                       R17 R16 K39 ["ImageColor3"]
       96 LOADN                            R17 1
       97 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
       99 GETIMPORT                        R17 K44 [UDim2.fromOffset]
      101 LOADN                            R18 22
      102 LOADN                            R19 22
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K16 ["Size"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K33 ["Icon"]
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R14 R15 K11 ["createElement"]
      112 LOADK                            R15 K45 ["TextLabel"]
      113 DUPTABLE                         R16 K53 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      114 GETIMPORT                        R17 K22 [Enum.AutomaticSize.Y]
      116 SETTABLEKS                       R17 R16 K12 ["AutomaticSize"]
      118 LOADN                            R17 1
      119 SETTABLEKS                       R17 R16 K37 ["BackgroundTransparency"]
      121 GETUPVAL                         R18 6
      122 GETTABLEKS                       R17 R18 K54 ["FONT"]
      124 SETTABLEKS                       R17 R16 K46 ["Font"]
      126 LOADN                            R17 2
      127 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      129 GETIMPORT                        R17 K30 [UDim2.fromScale]
      131 LOADN                            R18 1
      132 LOADN                            R19 0
      133 CALL                             R17 2 1
      134 SETTABLEKS                       R17 R16 K16 ["Size"]
      136 SETTABLEKS                       R5 R16 K47 ["Text"]
      138 GETTABLEKS                       R17 R3 K42 ["warningColor"]
      140 SETTABLEKS                       R17 R16 K48 ["TextColor3"]
      142 LOADN                            R17 22
      143 SETTABLEKS                       R17 R16 K49 ["TextSize"]
      145 LOADB                            R17 1
      146 SETTABLEKS                       R17 R16 K50 ["TextWrapped"]
      148 GETIMPORT                        R17 K55 [Enum.TextXAlignment.Left]
      150 SETTABLEKS                       R17 R16 K51 ["TextXAlignment"]
      152 GETIMPORT                        R17 K57 [Enum.TextYAlignment.Center]
      154 SETTABLEKS                       R17 R16 K52 ["TextYAlignment"]
      156 CALL                             R14 2 1
      157 SETTABLEKS                       R14 R13 K34 ["UGCWarningText"]
      159 CALL                             R10 3 -1
      160 FASTCALL                         TABLE_INSERT ; [+2]
      161 GETIMPORT                        R8 K60 [table.insert]
      163 CALL                             R8 -1 0
      164 MOVE                             R8 R4
      165 LOADNIL                          R9
      166 LOADNIL                          R10
      167 FORGPREP                         R8
      168 GETTABLEKS                       R15 R3 K61 ["validationStyles"]
      170 GETTABLEKS                       R16 R12 K62 ["type"]
      172 GETTABLE                         R14 R15 R16
      173 FASTCALL2K                       ASSERT R14 K63 ; [+4]
      175 LOADK                            R15 K63 ["No validation style for validation result type"]
      176 GETIMPORT                        R13 K65 [assert]
      178 CALL                             R13 2 1
      179 LOADNIL                          R14
      180 GETUPVAL                         R16 7
      181 GETTABLEKS                       R15 R16 K66 ["AssetTypeRequiresFolderForUpload"]
      183 GETTABLEKS                       R16 R12 K67 ["assetType"]
      185 CALL                             R15 1 1
      186 JUMPIFNOT                        R15 ; [+9]
      187 GETTABLEKS                       R15 R12 K68 ["instance"]
      189 JUMPIFNOT                        R15 ; [+4]
      190 GETUPVAL                         R15 8
      191 GETTABLEKS                       R16 R12 K68 ["instance"]
      193 CALL                             R15 1 1
      194 MOVE                             R14 R15
      195 JUMP                             ; [+29]
      196 GETTABLEKS                       R15 R12 K68 ["instance"]
      198 JUMPIFNOT                        R15 ; [+25]
      199 GETTABLEKS                       R16 R12 K68 ["instance"]
      201 GETIMPORT                        R17 K70 [Instance.new]
      203 LOADK                            R18 K71 ["Model"]
      204 CALL                             R17 1 1
      205 NAMECALL                         R18 R16 K72 ["Clone"]
      207 CALL                             R18 1 1
      208 MOVE                             R19 R18
      209 LOADK                            R22 K73 ["BasePart"]
      210 NAMECALL                         R20 R19 K74 ["IsA"]
      212 CALL                             R20 2 1
      213 JUMPIF                           R20 ; [+5]
      214 LOADK                            R22 K73 ["BasePart"]
      215 NAMECALL                         R20 R18 K75 ["FindFirstChildWhichIsA"]
      217 CALL                             R20 2 1
      218 MOVE                             R19 R20
      219 SETTABLEKS                       R19 R17 K76 ["PrimaryPart"]
      221 SETTABLEKS                       R17 R18 K77 ["Parent"]
      223 MOVE                             R15 R17
      224 MOVE                             R14 R15
      225 LOADNIL                          R15
      226 GETUPVAL                         R16 9
      227 CALL                             R16 0 1
      228 JUMPIFNOT                        R16 ; [+39]
      229 GETTABLEKS                       R16 R12 K67 ["assetType"]
      231 JUMPIFNOTEQKNIL                  R16 ; [+21]
      233 GETUPVAL                         R16 2
      234 CALL                             R16 0 1
      235 JUMPIFNOT                        R16 ; [+3]
      236 GETTABLEKS                       R16 R1 K10 ["isUGCBodyBundleType"]
      238 JUMPIFNOT                        R16 ; [+7]
      239 LOADK                            R18 K6 ["AssetConfig"]
      240 LOADK                            R19 K78 ["ValidationFullBody"]
      241 NAMECALL                         R16 R2 K8 ["getText"]
      243 CALL                             R16 3 1
      244 MOVE                             R15 R16
      245 JUMP                             ; [+36]
      246 LOADK                            R18 K6 ["AssetConfig"]
      247 LOADK                            R19 K79 ["ValidationShoePair"]
      248 NAMECALL                         R16 R2 K8 ["getText"]
      250 CALL                             R16 3 1
      251 MOVE                             R15 R16
      252 JUMP                             ; [+29]
      253 GETUPVAL                         R18 10
      254 GETTABLEKS                       R19 R1 K1 ["Localization"]
      256 CALL                             R18 1 1
      257 GETTABLEKS                       R19 R12 K67 ["assetType"]
      259 GETTABLE                         R17 R18 R19
      260 FASTCALL2K                       ASSERT R17 K80 ; [+4]
      262 LOADK                            R18 K80 ["Couldn't find localized text for asset type"]
      263 GETIMPORT                        R16 K65 [assert]
      265 CALL                             R16 2 1
      266 MOVE                             R15 R16
      267 JUMP                             ; [+14]
      268 GETUPVAL                         R18 10
      269 GETTABLEKS                       R19 R1 K1 ["Localization"]
      271 CALL                             R18 1 1
      272 GETTABLEKS                       R19 R12 K67 ["assetType"]
      274 GETTABLE                         R17 R18 R19
      275 FASTCALL2K                       ASSERT R17 K80 ; [+4]
      277 LOADK                            R18 K80 ["Couldn't find localized text for asset type"]
      278 GETIMPORT                        R16 K65 [assert]
      280 CALL                             R16 2 1
      281 MOVE                             R15 R16
      282 MOVE                             R17 R6
      283 GETUPVAL                         R19 3
      284 GETTABLEKS                       R18 R19 K11 ["createElement"]
      286 GETUPVAL                         R19 4
      287 DUPTABLE                         R20 K81 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      288 GETIMPORT                        R21 K22 [Enum.AutomaticSize.Y]
      290 SETTABLEKS                       R21 R20 K12 ["AutomaticSize"]
      292 GETIMPORT                        R21 K24 [Enum.HorizontalAlignment.Left]
      294 SETTABLEKS                       R21 R20 K13 ["HorizontalAlignment"]
      296 GETIMPORT                        R21 K27 [Enum.FillDirection.Horizontal]
      298 SETTABLEKS                       R21 R20 K14 ["Layout"]
      300 SETTABLEKS                       R11 R20 K15 ["LayoutOrder"]
      302 GETIMPORT                        R21 K30 [UDim2.fromScale]
      304 LOADN                            R22 1
      305 LOADN                            R23 0
      306 CALL                             R21 2 1
      307 SETTABLEKS                       R21 R20 K16 ["Size"]
      309 LOADN                            R21 5
      310 SETTABLEKS                       R21 R20 K17 ["Spacing"]
      312 DUPTABLE                         R21 K85 [{"Preview", "AssetName", "ValidationArea"}]
      313 GETUPVAL                         R23 3
      314 GETTABLEKS                       R22 R23 K11 ["createElement"]
      316 GETUPVAL                         R23 4
      317 DUPTABLE                         R24 K87 [{"BackgroundColor", "LayoutOrder", "Size"}]
      318 GETTABLEKS                       R25 R3 K88 ["previewBackgroundColor"]
      320 SETTABLEKS                       R25 R24 K86 ["BackgroundColor"]
      322 NAMECALL                         R25 R7 K89 ["getNextOrder"]
      324 CALL                             R25 1 1
      325 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      327 GETIMPORT                        R25 K44 [UDim2.fromOffset]
      329 GETTABLEKS                       R26 R3 K90 ["previewSize"]
      331 GETTABLEKS                       R27 R3 K90 ["previewSize"]
      333 CALL                             R25 2 1
      334 SETTABLEKS                       R25 R24 K16 ["Size"]
      336 DUPTABLE                         R25 K93 [{"UICorner", "PreviewModel"}]
      337 GETUPVAL                         R27 3
      338 GETTABLEKS                       R26 R27 K11 ["createElement"]
      340 LOADK                            R27 K91 ["UICorner"]
      341 DUPTABLE                         R28 K95 [{"CornerRadius"}]
      342 GETIMPORT                        R29 K97 [UDim.new]
      344 LOADN                            R30 0
      345 LOADN                            R31 10
      346 CALL                             R29 2 1
      347 SETTABLEKS                       R29 R28 K94 ["CornerRadius"]
      349 CALL                             R26 2 1
      350 SETTABLEKS                       R26 R25 K91 ["UICorner"]
      352 GETTABLEKS                       R27 R12 K68 ["instance"]
      354 JUMPIFNOT                        R27 ; [+27]
      355 GETTABLEKS                       R27 R14 K76 ["PrimaryPart"]
      357 JUMPIFEQKNIL                     R27 ; [+24]
      359 GETUPVAL                         R27 3
      360 GETTABLEKS                       R26 R27 K11 ["createElement"]
      362 GETUPVAL                         R27 11
      363 DUPTABLE                         R28 K101 [{"FocusDirection", "Model", "ShouldMuteModelSounds", "Static"}]
      364 GETTABLEKS                       R31 R14 K76 ["PrimaryPart"]
      366 GETTABLEKS                       R30 R31 K102 ["CFrame"]
      368 GETTABLEKS                       R29 R30 K103 ["LookVector"]
      370 SETTABLEKS                       R29 R28 K98 ["FocusDirection"]
      372 SETTABLEKS                       R14 R28 K71 ["Model"]
      374 LOADB                            R29 1
      375 SETTABLEKS                       R29 R28 K99 ["ShouldMuteModelSounds"]
      377 LOADB                            R29 1
      378 SETTABLEKS                       R29 R28 K100 ["Static"]
      380 CALL                             R26 2 1
      381 JUMP                             ; [+15]
      382 GETUPVAL                         R27 3
      383 GETTABLEKS                       R26 R27 K11 ["createElement"]
      385 GETUPVAL                         R27 12
      386 DUPTABLE                         R28 K104 [{"Image", "ImageColor3"}]
      387 GETUPVAL                         R30 5
      388 GETTABLEKS                       R29 R30 K105 ["PLACEHOLDER_ICON"]
      390 SETTABLEKS                       R29 R28 K38 ["Image"]
      392 GETTABLEKS                       R29 R3 K106 ["placeholderIconColor"]
      394 SETTABLEKS                       R29 R28 K39 ["ImageColor3"]
      396 CALL                             R26 2 1
      397 SETTABLEKS                       R26 R25 K92 ["PreviewModel"]
      399 CALL                             R22 3 1
      400 SETTABLEKS                       R22 R21 K82 ["Preview"]
      402 GETUPVAL                         R23 3
      403 GETTABLEKS                       R22 R23 K11 ["createElement"]
      405 GETUPVAL                         R23 13
      406 DUPTABLE                         R24 K107 [{"AutomaticSize", "LayoutOrder", "Text", "TextSize", "TextXAlignment"}]
      407 GETIMPORT                        R25 K109 [Enum.AutomaticSize.XY]
      409 SETTABLEKS                       R25 R24 K12 ["AutomaticSize"]
      411 NAMECALL                         R25 R7 K89 ["getNextOrder"]
      413 CALL                             R25 1 1
      414 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      416 GETTABLEKS                       R26 R12 K110 ["required"]
      418 JUMPIFNOT                        R26 ; [+4]
      419 MOVE                             R26 R15
      420 LOADK                            R27 K111 ["*"]
      421 CONCAT                           R25 R26 R27
      422 JUMP                             ; [+1]
      423 MOVE                             R25 R15
      424 SETTABLEKS                       R25 R24 K47 ["Text"]
      426 GETTABLEKS                       R25 R3 K112 ["nameTextSize"]
      428 SETTABLEKS                       R25 R24 K49 ["TextSize"]
      430 GETIMPORT                        R25 K55 [Enum.TextXAlignment.Left]
      432 SETTABLEKS                       R25 R24 K51 ["TextXAlignment"]
      434 DUPTABLE                         R25 K114 [{"UISizeConstraint"}]
      435 GETUPVAL                         R27 3
      436 GETTABLEKS                       R26 R27 K11 ["createElement"]
      438 LOADK                            R27 K113 ["UISizeConstraint"]
      439 DUPTABLE                         R28 K116 [{"MinSize"}]
      440 GETIMPORT                        R29 K118 [Vector2.new]
      442 GETTABLEKS                       R30 R3 K119 ["nameMinWidth"]
      444 LOADN                            R31 0
      445 CALL                             R29 2 1
      446 SETTABLEKS                       R29 R28 K115 ["MinSize"]
      448 CALL                             R26 2 1
      449 SETTABLEKS                       R26 R25 K113 ["UISizeConstraint"]
      451 CALL                             R22 3 1
      452 SETTABLEKS                       R22 R21 K83 ["AssetName"]
      454 GETUPVAL                         R23 3
      455 GETTABLEKS                       R22 R23 K11 ["createElement"]
      457 GETUPVAL                         R23 4
      458 DUPTABLE                         R24 K121 [{"AutomaticSize", "LayoutOrder", "Layout", "OnClick", "Spacing"}]
      459 GETIMPORT                        R25 K109 [Enum.AutomaticSize.XY]
      461 SETTABLEKS                       R25 R24 K12 ["AutomaticSize"]
      463 NAMECALL                         R25 R7 K89 ["getNextOrder"]
      465 CALL                             R25 1 1
      466 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      468 GETIMPORT                        R25 K27 [Enum.FillDirection.Horizontal]
      470 SETTABLEKS                       R25 R24 K14 ["Layout"]
      472 GETTABLEKS                       R26 R12 K62 ["type"]
      474 GETUPVAL                         R28 14
      475 GETTABLEKS                       R27 R28 K122 ["error"]
      477 JUMPIFNOTEQ                      R26 R27 ; [+4]
      479 GETTABLEKS                       R25 R1 K123 ["onClickError"]
      481 JUMP                             ; [+1]
      482 LOADNIL                          R25
      483 SETTABLEKS                       R25 R24 K120 ["OnClick"]
      485 LOADN                            R25 5
      486 SETTABLEKS                       R25 R24 K17 ["Spacing"]
      488 DUPTABLE                         R25 K126 [{"ValidationIcon", "ValidationText"}]
      489 GETUPVAL                         R27 3
      490 GETTABLEKS                       R26 R27 K11 ["createElement"]
      492 GETUPVAL                         R27 12
      493 DUPTABLE                         R28 K127 [{"Image", "ImageColor3", "LayoutOrder", "Size"}]
      494 GETUPVAL                         R32 5
      495 GETTABLEKS                       R31 R32 K128 ["UGCValidationStatus"]
      497 GETTABLEKS                       R32 R12 K62 ["type"]
      499 GETTABLE                         R30 R31 R32
      500 FASTCALL2K                       ASSERT R30 K129 ; [+4]
      502 LOADK                            R31 K129 ["No icon for validation result type"]
      503 GETIMPORT                        R29 K65 [assert]
      505 CALL                             R29 2 1
      506 SETTABLEKS                       R29 R28 K38 ["Image"]
      508 GETTABLEKS                       R29 R13 K130 ["iconColor"]
      510 SETTABLEKS                       R29 R28 K39 ["ImageColor3"]
      512 NAMECALL                         R29 R7 K89 ["getNextOrder"]
      514 CALL                             R29 1 1
      515 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      517 GETIMPORT                        R29 K44 [UDim2.fromOffset]
      519 GETTABLEKS                       R30 R3 K131 ["validationIconSize"]
      521 GETTABLEKS                       R31 R3 K131 ["validationIconSize"]
      523 CALL                             R29 2 1
      524 SETTABLEKS                       R29 R28 K16 ["Size"]
      526 CALL                             R26 2 1
      527 SETTABLEKS                       R26 R25 K124 ["ValidationIcon"]
      529 GETUPVAL                         R27 3
      530 GETTABLEKS                       R26 R27 K11 ["createElement"]
      532 GETUPVAL                         R27 13
      533 DUPTABLE                         R28 K133 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor"}]
      534 GETIMPORT                        R29 K109 [Enum.AutomaticSize.XY]
      536 SETTABLEKS                       R29 R28 K12 ["AutomaticSize"]
      538 NAMECALL                         R29 R7 K89 ["getNextOrder"]
      540 CALL                             R29 1 1
      541 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      543 GETTABLEKS                       R30 R12 K62 ["type"]
      545 GETUPVAL                         R32 14
      546 GETTABLEKS                       R31 R32 K134 ["success"]
      548 JUMPIFNOTEQ                      R30 R31 ; [+7]
      550 LOADK                            R31 K6 ["AssetConfig"]
      551 LOADK                            R32 K135 ["ValidationSuccess"]
      552 NAMECALL                         R29 R2 K8 ["getText"]
      554 CALL                             R29 3 1
      555 JUMP                             ; [+49]
      556 GETTABLEKS                       R30 R12 K62 ["type"]
      558 GETUPVAL                         R32 14
      559 GETTABLEKS                       R31 R32 K136 ["pending"]
      561 JUMPIFNOTEQ                      R30 R31 ; [+7]
      563 LOADK                            R31 K6 ["AssetConfig"]
      564 LOADK                            R32 K137 ["ValidatingInProgress"]
      565 NAMECALL                         R29 R2 K8 ["getText"]
      567 CALL                             R29 3 1
      568 JUMP                             ; [+36]
      569 GETTABLEKS                       R30 R12 K62 ["type"]
      571 GETUPVAL                         R32 14
      572 GETTABLEKS                       R31 R32 K122 ["error"]
      574 JUMPIFNOTEQ                      R30 R31 ; [+20]
      576 LOADK                            R31 K6 ["AssetConfig"]
      577 GETTABLEKS                       R34 R12 K138 ["errors"]
      579 LENGTH                           R33 R34
      580 JUMPIFNOTEQKN                    R33 K139 [1] ; [+3]
      582 LOADK                            R32 K140 ["ValidationErrorSingular"]
      583 JUMP                             ; [+1]
      584 LOADK                            R32 K141 ["ValidationErrorPlural"]
      585 DUPTABLE                         R33 K143 [{"errorCount"}]
      586 GETTABLEKS                       R35 R12 K138 ["errors"]
      588 LENGTH                           R34 R35
      589 SETTABLEKS                       R34 R33 K142 ["errorCount"]
      591 NAMECALL                         R29 R2 K8 ["getText"]
      593 CALL                             R29 4 1
      594 JUMP                             ; [+10]
      595 GETIMPORT                        R29 K144 [error]
      597 LOADK                            R31 K145 ["Unknown validation result type \"%*\""]
      598 GETTABLEKS                       R33 R12 K62 ["type"]
      600 NAMECALL                         R31 R31 K146 ["format"]
      602 CALL                             R31 2 1
      603 MOVE                             R30 R31
      604 CALL                             R29 1 1
      605 SETTABLEKS                       R29 R28 K47 ["Text"]
      607 GETTABLEKS                       R29 R13 K147 ["textColor"]
      609 SETTABLEKS                       R29 R28 K132 ["TextColor"]
      611 CALL                             R26 2 1
      612 SETTABLEKS                       R26 R25 K125 ["ValidationText"]
      614 CALL                             R22 3 1
      615 SETTABLEKS                       R22 R21 K84 ["ValidationArea"]
      617 CALL                             R18 3 -1
      618 FASTCALL                         TABLE_INSERT ; [+2]
      619 GETIMPORT                        R16 K60 [table.insert]
      621 CALL                             R16 -1 0
      622 FORGLOOP                         R8 2 ; [-455]
      624 GETUPVAL                         R9 3
      625 GETTABLEKS                       R8 R9 K11 ["createElement"]
      627 GETUPVAL                         R9 4
      628 DUPTABLE                         R10 K148 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing"}]
      629 GETIMPORT                        R11 K22 [Enum.AutomaticSize.Y]
      631 SETTABLEKS                       R11 R10 K12 ["AutomaticSize"]
      633 GETIMPORT                        R11 K150 [Enum.FillDirection.Vertical]
      635 SETTABLEKS                       R11 R10 K14 ["Layout"]
      637 GETTABLEKS                       R11 R1 K15 ["LayoutOrder"]
      639 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      641 GETIMPORT                        R11 K30 [UDim2.fromScale]
      643 LOADN                            R12 1
      644 LOADN                            R13 0
      645 CALL                             R11 2 1
      646 SETTABLEKS                       R11 R10 K16 ["Size"]
      648 LOADN                            R11 18
      649 SETTABLEKS                       R11 R10 K17 ["Spacing"]
      651 MOVE                             R11 R6
      652 CALL                             R8 3 -1
      653 RETURN                           R8 -1

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
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Localization"]
       27 GETTABLEKS                       R4 R5 K11 ["getLocalizedAssetTextMap"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R4 R5 K12 ["Util"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["Images"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R4 K14 ["Constants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R4 K15 ["AssetConfigUtil"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R10 R4 K16 ["Analytics"]
       53 GETTABLEKS                       R9 R10 K16 ["Analytics"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R4 K17 ["AssetConfigConstants"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R4 K18 ["fixUpPreValidation"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R4 K19 ["DebugFlags"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R0 K6 ["Packages"]
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R12 K20 ["Cryo"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K5 [require]
       80 GETTABLEKS                       R15 R12 K21 ["UGCValidation"]
       82 CALL                             R14 1 1
       83 GETTABLEKS                       R15 R1 K22 ["UI"]
       85 GETTABLEKS                       R16 R15 K23 ["Image"]
       87 GETTABLEKS                       R17 R15 K24 ["Pane"]
       89 GETTABLEKS                       R18 R15 K25 ["TextLabel"]
       91 GETTABLEKS                       R19 R15 K26 ["AssetRenderModel"]
       93 GETIMPORT                        R20 K5 [require]
       95 GETTABLEKS                       R22 R4 K27 ["SharedFlags"]
       97 GETTABLEKS                       R21 R22 K28 ["getFFlagUGCBundleValidationFullBodyErrors"]
       99 CALL                             R20 1 1
      100 GETIMPORT                        R21 K5 [require]
      102 GETTABLEKS                       R24 R0 K9 ["Src"]
      104 GETTABLEKS                       R23 R24 K29 ["Flags"]
      106 GETTABLEKS                       R22 R23 K30 ["getFFlagEnableUploadingShoes"]
      108 CALL                             R21 1 1
      109 GETIMPORT                        R22 K32 [game]
      111 LOADK                            R24 K33 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      112 LOADB                            R25 0
      113 NAMECALL                         R22 R22 K34 ["DefineFastFlag"]
      115 CALL                             R22 3 1
      116 GETIMPORT                        R23 K32 [game]
      118 LOADK                            R25 K35 ["DisableSubmitButtonForValidationInInit"]
      119 LOADB                            R26 0
      120 NAMECALL                         R23 R23 K34 ["DefineFastFlag"]
      122 CALL                             R23 3 1
      123 GETIMPORT                        R24 K5 [require]
      125 GETTABLEKS                       R26 R4 K27 ["SharedFlags"]
      127 GETTABLEKS                       R25 R26 K36 ["getFFlagEnableUGCBundleUploadBodyScale"]
      129 CALL                             R24 1 1
      130 GETIMPORT                        R25 K5 [require]
      132 GETTABLEKS                       R28 R0 K9 ["Src"]
      134 GETTABLEKS                       R27 R28 K29 ["Flags"]
      136 GETTABLEKS                       R26 R27 K37 ["getFFlagRequireBodyColorsForBodyUpload"]
      138 CALL                             R25 1 1
      139 GETTABLEKS                       R26 R1 K38 ["ContextServices"]
      141 GETTABLEKS                       R27 R26 K39 ["withContext"]
      143 GETTABLEKS                       R29 R1 K12 ["Util"]
      145 GETTABLEKS                       R28 R29 K40 ["LayoutOrderIterator"]
      147 GETTABLEKS                       R31 R0 K9 ["Src"]
      149 GETTABLEKS                       R30 R31 K41 ["Components"]
      151 GETTABLEKS                       R29 R30 K42 ["AssetConfiguration"]
      153 GETIMPORT                        R30 K5 [require]
      155 GETTABLEKS                       R31 R29 K43 ["ValidationStatus"]
      157 CALL                             R30 1 1
      158 GETIMPORT                        R31 K5 [require]
      160 GETTABLEKS                       R33 R4 K27 ["SharedFlags"]
      162 GETTABLEKS                       R32 R33 K44 ["getFFlagEnableUGCUploadFlowAnalytics"]
      164 CALL                             R31 1 1
      165 DUPCLOSURE                       R32 K45 [PROTO_0]
      166 DUPCLOSURE                       R33 K46 [PROTO_1]
      167 GETTABLEKS                       R34 R2 K47 ["PureComponent"]
      169 LOADK                            R36 K48 ["UGCBundleValidation"]
      170 NAMECALL                         R34 R34 K49 ["extend"]
      172 CALL                             R34 2 1
      173 DUPCLOSURE                       R35 K50 [PROTO_4]
      174 CAPTURE                          VAL R31
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R23
      180 SETTABLEKS                       R35 R34 K51 ["init"]
      182 DUPCLOSURE                       R35 K52 [PROTO_5]
      183 SETTABLEKS                       R35 R34 K53 ["cancelValidationTasks"]
      185 DUPCLOSURE                       R35 K54 [PROTO_11]
      186 CAPTURE                          VAL R31
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R30
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R25
      199 SETTABLEKS                       R35 R34 K55 ["startUGCBundleValidation"]
      201 DUPCLOSURE                       R35 K56 [PROTO_12]
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R9
      204 SETTABLEKS                       R35 R34 K57 ["didUpdate"]
      206 DUPCLOSURE                       R35 K58 [PROTO_13]
      207 SETTABLEKS                       R35 R34 K59 ["willUnmount"]
      209 DUPCLOSURE                       R35 K60 [PROTO_14]
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R28
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R32
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R30
      225 SETTABLEKS                       R35 R34 K61 ["render"]
      227 MOVE                             R35 R27
      228 DUPTABLE                         R36 K63 [{"Localization", "Stylizer"}]
      229 GETTABLEKS                       R37 R26 K10 ["Localization"]
      231 SETTABLEKS                       R37 R36 K10 ["Localization"]
      233 GETTABLEKS                       R37 R26 K62 ["Stylizer"]
      235 SETTABLEKS                       R37 R36 K62 ["Stylizer"]
      237 CALL                             R35 1 1
      238 MOVE                             R36 R34
      239 CALL                             R35 1 1
      240 MOVE                             R34 R35
      241 RETURN                           R34 1
