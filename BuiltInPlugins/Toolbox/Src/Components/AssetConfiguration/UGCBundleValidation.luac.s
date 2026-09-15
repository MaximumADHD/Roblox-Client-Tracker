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
       39 LOADK                            R2 K12 ["Unknown error type: %*"]
       40 GETTABLEKS                       R4 R0 K0 ["error"]
       42 GETTABLEKS                       R4 R4 K1 ["type"]
       44 NAMECALL                         R2 R2 K13 ["format"]
       46 CALL                             R2 2 1
       47 CALL                             R1 1 1
       48 RETURN                           R1 1

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
       10 JUMPIF                           R4 ; [+41]
       11 GETTABLEKS                       R4 R0 K0 ["errors"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETUPVAL                         R9 2
       17 MOVE                             R10 R8
       18 CALL                             R9 1 1
       19 GETTABLEKS                       R10 R8 K1 ["assetType"]
       21 JUMPIFNOTEQKNIL                  R10 ; [+9]
       23 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       25 MOVE                             R11 R3
       26 MOVE                             R12 R9
       27 GETIMPORT                        R10 K4 [table.insert]
       29 CALL                             R10 2 0
       30 JUMP                             ; [+19]
       31 GETTABLEKS                       R11 R8 K1 ["assetType"]
       33 GETTABLE                         R10 R2 R11
       34 JUMPIFNOTEQKNIL                  R10 ; [+6]
       36 GETTABLEKS                       R10 R8 K1 ["assetType"]
       38 NEWTABLE                         R11 0 0
       40 SETTABLE                         R11 R2 R10
       41 GETTABLEKS                       R12 R8 K1 ["assetType"]
       43 GETTABLE                         R11 R2 R12
       44 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       46 MOVE                             R12 R9
       47 GETIMPORT                        R10 K4 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R4 2 ; [-35]
       52 GETTABLEKS                       R4 R0 K5 ["pieces"]
       54 LOADNIL                          R5
       55 LOADNIL                          R6
       56 FORGPREP                         R4
       57 GETUPVAL                         R10 0
       58 CALL                             R10 0 1
       59 JUMPIFNOT                        R10 ; [+5]
       60 GETUPVAL                         R10 1
       61 JUMPIFNOT                        R10 ; [+3]
       62 NEWTABLE                         R9 0 0
       64 JUMP                             ; [+6]
       65 GETTABLEKS                       R10 R8 K1 ["assetType"]
       67 GETTABLE                         R9 R2 R10
       68 JUMPIF                           R9 ; [+2]
       69 NEWTABLE                         R9 0 0
       71 DUPTABLE                         R12 K9 [{"assetType", "instance", "required", "errors", "type"}]
       72 GETTABLEKS                       R13 R8 K1 ["assetType"]
       74 SETTABLEKS                       R13 R12 K1 ["assetType"]
       76 GETTABLEKS                       R13 R8 K6 ["instance"]
       78 SETTABLEKS                       R13 R12 K6 ["instance"]
       80 GETTABLEKS                       R14 R8 K10 ["settings"]
       82 GETTABLEKS                       R14 R14 K11 ["minimumQuantity"]
       84 LOADN                            R15 0
       85 JUMPIFLT                         R15 R14 ; [+2]
       87 LOADB                            R13 0 +1
       88 LOADB                            R13 1
       89 SETTABLEKS                       R13 R12 K7 ["required"]
       91 SETTABLEKS                       R9 R12 K0 ["errors"]
       93 GETUPVAL                         R14 0
       94 CALL                             R14 0 1
       95 JUMPIFNOT                        R14 ; [+6]
       96 GETUPVAL                         R14 1
       97 JUMPIFNOT                        R14 ; [+4]
       98 GETUPVAL                         R13 3
       99 GETTABLEKS                       R13 R13 K12 ["success"]
      101 JUMP                             ; [+19]
      102 LENGTH                           R14 R9
      103 LOADN                            R15 0
      104 JUMPIFNOTLT                      R15 R14 ; [+5]
      106 GETUPVAL                         R13 3
      107 GETTABLEKS                       R13 R13 K13 ["error"]
      109 JUMP                             ; [+11]
      110 GETTABLEKS                       R14 R8 K14 ["status"]
      112 JUMPIFNOTEQKS                    R14 K15 ["finished"] ; [+5]
      114 GETUPVAL                         R13 3
      115 GETTABLEKS                       R13 R13 K12 ["success"]
      117 JUMP                             ; [+3]
      118 GETUPVAL                         R13 3
      119 GETTABLEKS                       R13 R13 K16 ["pending"]
      121 SETTABLEKS                       R13 R12 K8 ["type"]
      123 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      125 MOVE                             R11 R1
      126 GETIMPORT                        R10 K4 [table.insert]
      128 CALL                             R10 2 0
      129 FORGLOOP                         R4 2 ; [-73]
      131 DUPTABLE                         R6 K19 [{["assetType"] = , ["instance"], ["required"] = True, [4], ["type"]}]
      132 GETUPVAL                         R7 4
      133 SETTABLEKS                       R7 R6 K6 ["instance"]
      135 GETUPVAL                         R8 0
      136 CALL                             R8 0 1
      137 JUMPIFNOT                        R8 ; [+5]
      138 GETUPVAL                         R8 1
      139 JUMPIFNOT                        R8 ; [+3]
      140 NEWTABLE                         R7 0 0
      142 JUMP                             ; [+1]
      143 MOVE                             R7 R3
      144 SETTABLEKS                       R7 R6 K0 ["errors"]
      146 GETUPVAL                         R8 0
      147 CALL                             R8 0 1
      148 JUMPIFNOT                        R8 ; [+6]
      149 GETUPVAL                         R8 1
      150 JUMPIFNOT                        R8 ; [+4]
      151 GETUPVAL                         R7 3
      152 GETTABLEKS                       R7 R7 K12 ["success"]
      154 JUMP                             ; [+11]
      155 LENGTH                           R8 R3
      156 LOADN                            R9 0
      157 JUMPIFNOTLT                      R9 R8 ; [+5]
      159 GETUPVAL                         R7 3
      160 GETTABLEKS                       R7 R7 K13 ["error"]
      162 JUMP                             ; [+3]
      163 GETUPVAL                         R7 3
      164 GETTABLEKS                       R7 R7 K16 ["pending"]
      166 SETTABLEKS                       R7 R6 K8 ["type"]
      168 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
      170 MOVE                             R5 R1
      171 GETIMPORT                        R4 K4 [table.insert]
      173 CALL                             R4 2 0
      174 GETUPVAL                         R4 5
      175 GETTABLEKS                       R4 R4 K20 ["setUGCBundleValidationResults"]
      177 JUMPIFNOT                        R4 ; [+5]
      178 GETUPVAL                         R4 5
      179 GETTABLEKS                       R4 R4 K20 ["setUGCBundleValidationResults"]
      181 MOVE                             R5 R1
      182 CALL                             R4 1 0
      183 GETUPVAL                         R4 0
      184 CALL                             R4 0 1
      185 JUMPIFNOT                        R4 ; [+11]
      186 GETUPVAL                         R4 1
      187 JUMPIFNOT                        R4 ; [+9]
      188 GETUPVAL                         R4 6
      189 JUMPIF                           R4 ; [+7]
      190 LOADB                            R4 1
      191 SETUPVAL                         R4 6
      192 GETIMPORT                        R4 K23 [task.defer]
      194 NEWCLOSURE                       R5 P0
      195 CAPTURE                          UPVAL U7
      196 CALL                             R4 1 0
      197 RETURN                           R0 0

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
       17 GETUPVAL                         R1 3
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 NAMECALL                         R1 R1 K1 ["setState"]
       25 CALL                             R1 2 0
       26 NEWTABLE                         R1 0 0
       28 GETTABLEKS                       R2 R0 K2 ["errors"]
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETUPVAL                         R9 8
       34 MOVE                             R10 R6
       35 CALL                             R9 1 1
       36 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K5 [table.insert]
       41 CALL                             R7 2 0
       42 FORGLOOP                         R2 2 ; [-10]
       44 GETUPVAL                         R2 9
       45 CALL                             R2 0 1
       46 JUMPIF                           R2 ; [+3]
       47 GETUPVAL                         R2 10
       48 CALL                             R2 0 1
       49 JUMPIFNOT                        R2 ; [+34]
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R2 R2 K6 ["assetTypeEnum"]
       53 GETUPVAL                         R3 11
       54 GETTABLEKS                       R3 R3 K7 ["UGCBundleTypes"]
       56 GETTABLEKS                       R3 R3 K8 ["Body"]
       58 JUMPIFNOTEQ                      R2 R3 ; [+25]
       60 GETUPVAL                         R2 12
       61 GETTABLEKS                       R2 R2 K9 ["ValidateBody"]
       63 GETUPVAL                         R4 7
       64 GETTABLEKS                       R4 R4 K10 ["instances"]
       66 GETTABLEN                        R3 R4 1
       67 GETUPVAL                         R4 7
       68 GETTABLEKS                       R4 R4 K11 ["Localization"]
       70 CALL                             R2 2 1
       71 MOVE                             R3 R2
       72 LOADNIL                          R4
       73 LOADNIL                          R5
       74 FORGPREP                         R3
       75 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       77 MOVE                             R9 R1
       78 MOVE                             R10 R7
       79 GETIMPORT                        R8 K5 [table.insert]
       81 CALL                             R8 2 0
       82 FORGLOOP                         R3 2 ; [-8]
       84 GETUPVAL                         R2 3
       85 GETTABLEKS                       R2 R2 K0 ["validationCallback"]
       87 LENGTH                           R4 R1
       88 JUMPIFEQKN                       R4 K12 [0] ; [+2]
       90 LOADB                            R3 0 +1
       91 LOADB                            R3 1
       92 MOVE                             R4 R1
       93 CALL                             R2 2 0
       94 RETURN                           R0 0

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
       85 GETTABLEKS                       R6 R0 K0 ["props"]
       87 GETTABLEKS                       R6 R6 K6 ["instances"]
       89 GETTABLEN                        R5 R6 1
       90 NAMECALL                         R5 R5 K18 ["Clone"]
       92 CALL                             R5 1 1
       93 GETUPVAL                         R6 1
       94 GETTABLEKS                       R6 R6 K19 ["sanitizeForValidation"]
       96 MOVE                             R7 R5
       97 CALL                             R6 1 0
       98 NEWCLOSURE                       R6 P0
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U6
      101 NEWCLOSURE                       R7 P1
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R1
      108 CAPTURE                          REF R4
      109 CAPTURE                          VAL R0
      110 LOADNIL                          R8
      111 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      113 GETUPVAL                         R10 3
      114 GETTABLEKS                       R10 R10 K20 ["UGCBundleTypes"]
      116 GETTABLEKS                       R10 R10 K21 ["Shoes"]
      118 JUMPIFNOTEQ                      R9 R10 ; [+5]
      120 GETUPVAL                         R9 8
      121 GETTABLEKS                       R8 R9 K22 ["validateShoesBundleReadyForUpload"]
      123 JUMP                             ; [+19]
      124 GETUPVAL                         R9 9
      125 CALL                             R9 0 1
      126 JUMPIFNOT                        R9 ; [+13]
      127 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      129 GETUPVAL                         R10 3
      130 GETTABLEKS                       R10 R10 K20 ["UGCBundleTypes"]
      132 GETTABLEKS                       R10 R10 K23 ["AvatarAnimations"]
      134 JUMPIFNOTEQ                      R9 R10 ; [+5]
      136 GETUPVAL                         R9 8
      137 GETTABLEKS                       R8 R9 K24 ["validateAnimationBundleReadyForUpload"]
      139 JUMP                             ; [+3]
      140 GETUPVAL                         R9 8
      141 GETTABLEKS                       R8 R9 K25 ["validateBundleReadyForUpload"]
      143 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      145 GETTABLEKS                       R10 R1 K6 ["instances"]
      147 JUMPIFEQKNIL                     R10 ; [+61]
      149 DUPTABLE                         R10 K29 [{["studioPluginName"] = "Toolbox", ["localizationCallback"]}]
      150 NEWCLOSURE                       R11 P2
      151 CAPTURE                          UPVAL U1
      152 CAPTURE                          VAL R1
      153 SETTABLEKS                       R11 R10 K28 ["localizationCallback"]
      155 GETTABLEKS                       R12 R1 K6 ["instances"]
      157 GETTABLEN                        R11 R12 1
      158 GETUPVAL                         R12 10
      159 CALL                             R12 0 1
      160 JUMPIFNOT                        R12 ; [+18]
      161 GETUPVAL                         R12 9
      162 CALL                             R12 0 1
      163 JUMPIFNOT                        R12 ; [+15]
      164 GETTABLEKS                       R12 R1 K2 ["assetTypeEnum"]
      166 GETUPVAL                         R13 3
      167 GETTABLEKS                       R13 R13 K20 ["UGCBundleTypes"]
      169 GETTABLEKS                       R13 R13 K23 ["AvatarAnimations"]
      171 JUMPIFNOTEQ                      R12 R13 ; [+7]
      173 GETUPVAL                         R12 11
      174 GETTABLEKS                       R12 R12 K30 ["transformBundleForUpload"]
      176 MOVE                             R13 R11
      177 CALL                             R12 1 1
      178 MOVE                             R11 R12
      179 MOVE                             R12 R8
      180 MOVE                             R13 R11
      181 GETTABLEKS                       R14 R1 K31 ["allowedBundleTypeSettings"]
      183 GETTABLEKS                       R15 R9 K32 ["rawValue"]
      185 CALL                             R15 0 1
      186 MOVE                             R16 R7
      187 LOADNIL                          R17
      188 MOVE                             R18 R10
      189 CALL                             R12 6 1
      190 NEWCLOSURE                       R14 P3
      191 CAPTURE                          UPVAL U4
      192 CAPTURE                          VAL R3
      193 CAPTURE                          REF R4
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U12
      196 CAPTURE                          UPVAL U13
      197 CAPTURE                          UPVAL U7
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R6
      200 CAPTURE                          UPVAL U14
      201 CAPTURE                          UPVAL U15
      202 CAPTURE                          UPVAL U3
      203 CAPTURE                          UPVAL U1
      204 NAMECALL                         R12 R12 K33 ["andThen"]
      206 CALL                             R12 2 1
      207 SETTABLEKS                       R12 R0 K34 ["validationPromise"]
      209 CLOSEUPVALS                      R4
      210 RETURN                           R0 0

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
       33 GETTABLEKS                       R7 R1 K9 ["isUGCBodyBundleType"]
       35 JUMPIFNOT                        R7 ; [+48]
       36 MOVE                             R8 R6
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K10 ["createElement"]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K11 ["View"]
       43 DUPTABLE                         R11 K16 [{["tag"] = "row align-x-left align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"] = -1}]
       44 DUPTABLE                         R12 K19 [{"Icon", "UGCWarningText"}]
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R13 R13 K10 ["createElement"]
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R14 R14 K20 ["Image"]
       51 DUPTABLE                         R15 K24 [{["tag"] = "content-system-warning", ["Image"], ["LayoutOrder"] = 1, ["Size"]}]
       52 GETUPVAL                         R16 3
       53 GETTABLEKS                       R16 R16 K25 ["WARNING_ICON"]
       55 SETTABLEKS                       R16 R15 K20 ["Image"]
       57 GETIMPORT                        R16 K28 [UDim2.fromOffset]
       59 LOADN                            R17 22
       60 LOADN                            R18 22
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K23 ["Size"]
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K17 ["Icon"]
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K10 ["createElement"]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R14 R14 K29 ["Text"]
       73 DUPTABLE                         R15 K32 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-system-warning", ["LayoutOrder"] = 2, ["Text"]}]
       74 SETTABLEKS                       R5 R15 K29 ["Text"]
       76 CALL                             R13 2 1
       77 SETTABLEKS                       R13 R12 K18 ["UGCWarningText"]
       79 CALL                             R9 3 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R7 K35 [table.insert]
       83 CALL                             R7 -1 0
       84 MOVE                             R7 R4
       85 LOADNIL                          R8
       86 LOADNIL                          R9
       87 FORGPREP                         R7
       88 GETTABLEKS                       R14 R3 K36 ["validationStyles"]
       90 GETTABLEKS                       R15 R11 K37 ["type"]
       92 GETTABLE                         R13 R14 R15
       93 FASTCALL2K                       ASSERT R13 K38 ; [+4]
       95 LOADK                            R14 K38 ["No validation style for validation result type"]
       96 GETIMPORT                        R12 K40 [assert]
       98 CALL                             R12 2 1
       99 LOADNIL                          R13
      100 GETUPVAL                         R14 4
      101 CALL                             R14 0 1
      102 JUMPIFNOT                        R14 ; [+5]
      103 GETTABLEKS                       R14 R1 K41 ["isAnimationBundleType"]
      105 JUMPIFNOT                        R14 ; [+2]
      106 LOADNIL                          R13
      107 JUMP                             ; [+45]
      108 GETUPVAL                         R14 5
      109 GETTABLEKS                       R14 R14 K42 ["AssetTypeRequiresFolderForUpload"]
      111 GETTABLEKS                       R15 R11 K43 ["assetType"]
      113 CALL                             R14 1 1
      114 JUMPIFNOT                        R14 ; [+9]
      115 GETTABLEKS                       R14 R11 K44 ["instance"]
      117 JUMPIFNOT                        R14 ; [+4]
      118 GETUPVAL                         R14 6
      119 GETTABLEKS                       R15 R11 K44 ["instance"]
      121 CALL                             R14 1 1
      122 MOVE                             R13 R14
      123 JUMP                             ; [+29]
      124 GETTABLEKS                       R14 R11 K44 ["instance"]
      126 JUMPIFNOT                        R14 ; [+25]
      127 GETTABLEKS                       R15 R11 K44 ["instance"]
      129 GETIMPORT                        R16 K47 [Instance.new]
      131 LOADK                            R17 K48 ["Model"]
      132 CALL                             R16 1 1
      133 NAMECALL                         R17 R15 K49 ["Clone"]
      135 CALL                             R17 1 1
      136 MOVE                             R18 R17
      137 LOADK                            R21 K50 ["BasePart"]
      138 NAMECALL                         R19 R18 K51 ["IsA"]
      140 CALL                             R19 2 1
      141 JUMPIF                           R19 ; [+5]
      142 LOADK                            R21 K50 ["BasePart"]
      143 NAMECALL                         R19 R17 K52 ["FindFirstChildWhichIsA"]
      145 CALL                             R19 2 1
      146 MOVE                             R18 R19
      147 SETTABLEKS                       R18 R16 K53 ["PrimaryPart"]
      149 SETTABLEKS                       R16 R17 K54 ["Parent"]
      151 MOVE                             R14 R16
      152 MOVE                             R13 R14
      153 GETTABLEKS                       R15 R11 K43 ["assetType"]
      155 JUMPIFNOTEQKNIL                  R15 ; [+28]
      157 GETTABLEKS                       R15 R1 K9 ["isUGCBodyBundleType"]
      159 JUMPIFNOT                        R15 ; [+6]
      160 LOADK                            R16 K6 ["AssetConfig"]
      161 LOADK                            R17 K55 ["ValidationFullBody"]
      162 NAMECALL                         R14 R2 K8 ["getText"]
      164 CALL                             R14 3 1
      165 JUMP                             ; [+31]
      166 GETUPVAL                         R15 4
      167 CALL                             R15 0 1
      168 JUMPIFNOT                        R15 ; [+9]
      169 GETTABLEKS                       R15 R1 K41 ["isAnimationBundleType"]
      171 JUMPIFNOT                        R15 ; [+6]
      172 LOADK                            R16 K6 ["AssetConfig"]
      173 LOADK                            R17 K56 ["UGCAvatarAnimationsBundleName"]
      174 NAMECALL                         R14 R2 K8 ["getText"]
      176 CALL                             R14 3 1
      177 JUMP                             ; [+19]
      178 LOADK                            R16 K6 ["AssetConfig"]
      179 LOADK                            R17 K57 ["ValidationShoePair"]
      180 NAMECALL                         R14 R2 K8 ["getText"]
      182 CALL                             R14 3 1
      183 JUMP                             ; [+13]
      184 GETUPVAL                         R16 7
      185 GETTABLEKS                       R17 R1 K1 ["Localization"]
      187 CALL                             R16 1 1
      188 GETTABLEKS                       R17 R11 K43 ["assetType"]
      190 GETTABLE                         R15 R16 R17
      191 FASTCALL2K                       ASSERT R15 K58 ; [+4]
      193 LOADK                            R16 K58 ["Couldn't find localized text for asset type"]
      194 GETIMPORT                        R14 K40 [assert]
      196 CALL                             R14 2 1
      197 GETTABLEKS                       R16 R11 K37 ["type"]
      199 GETUPVAL                         R17 8
      200 GETTABLEKS                       R17 R17 K59 ["success"]
      202 JUMPIFNOTEQ                      R16 R17 ; [+7]
      204 LOADK                            R17 K6 ["AssetConfig"]
      205 LOADK                            R18 K60 ["ValidationSuccess"]
      206 NAMECALL                         R15 R2 K8 ["getText"]
      208 CALL                             R15 3 1
      209 JUMP                             ; [+48]
      210 GETTABLEKS                       R16 R11 K37 ["type"]
      212 GETUPVAL                         R17 8
      213 GETTABLEKS                       R17 R17 K61 ["pending"]
      215 JUMPIFNOTEQ                      R16 R17 ; [+7]
      217 LOADK                            R17 K6 ["AssetConfig"]
      218 LOADK                            R18 K62 ["ValidatingInProgress"]
      219 NAMECALL                         R15 R2 K8 ["getText"]
      221 CALL                             R15 3 1
      222 JUMP                             ; [+35]
      223 GETTABLEKS                       R16 R11 K37 ["type"]
      225 GETUPVAL                         R17 8
      226 GETTABLEKS                       R17 R17 K63 ["error"]
      228 JUMPIFNOTEQ                      R16 R17 ; [+20]
      230 LOADK                            R17 K6 ["AssetConfig"]
      231 GETTABLEKS                       R20 R11 K64 ["errors"]
      233 LENGTH                           R19 R20
      234 JUMPIFNOTEQKN                    R19 K22 [1] ; [+3]
      236 LOADK                            R18 K65 ["ValidationErrorSingular"]
      237 JUMP                             ; [+1]
      238 LOADK                            R18 K66 ["ValidationErrorPlural"]
      239 DUPTABLE                         R19 K68 [{"errorCount"}]
      240 GETTABLEKS                       R21 R11 K64 ["errors"]
      242 LENGTH                           R20 R21
      243 SETTABLEKS                       R20 R19 K67 ["errorCount"]
      245 NAMECALL                         R15 R2 K8 ["getText"]
      247 CALL                             R15 4 1
      248 JUMP                             ; [+9]
      249 GETIMPORT                        R15 K69 [error]
      251 LOADK                            R16 K70 ["Unknown validation result type \"%*\""]
      252 GETTABLEKS                       R18 R11 K37 ["type"]
      254 NAMECALL                         R16 R16 K71 ["format"]
      256 CALL                             R16 2 1
      257 CALL                             R15 1 1
      258 LOADNIL                          R16
      259 GETUPVAL                         R17 4
      260 CALL                             R17 0 1
      261 JUMPIFNOT                        R17 ; [+20]
      262 GETTABLEKS                       R17 R1 K41 ["isAnimationBundleType"]
      264 JUMPIFNOT                        R17 ; [+17]
      265 GETTABLEKS                       R17 R11 K43 ["assetType"]
      267 JUMPIFEQKNIL                     R17 ; [+9]
      269 GETUPVAL                         R18 9
      270 GETTABLEKS                       R18 R18 K72 ["getAvatarAnimationPartThumbnailUri"]
      272 GETTABLEKS                       R19 R17 K73 ["Name"]
      274 CALL                             R18 1 1
      275 MOVE                             R16 R18
      276 JUMP                             ; [+5]
      277 GETUPVAL                         R18 9
      278 GETTABLEKS                       R18 R18 K74 ["getAvatarAnimationsBundleThumbnailUri"]
      280 CALL                             R18 0 1
      281 MOVE                             R16 R18
      282 LOADB                            R17 0
      283 GETTABLEKS                       R18 R11 K44 ["instance"]
      285 JUMPIFEQKNIL                     R18 ; [+10]
      287 LOADB                            R17 0
      288 JUMPIFEQKNIL                     R13 ; [+7]
      290 GETTABLEKS                       R18 R13 K53 ["PrimaryPart"]
      292 JUMPIFNOTEQKNIL                  R18 ; [+2]
      294 LOADB                            R17 0 +1
      295 LOADB                            R17 1
      296 MOVE                             R19 R6
      297 GETUPVAL                         R20 1
      298 GETTABLEKS                       R20 R20 K10 ["createElement"]
      300 GETUPVAL                         R21 10
      301 DUPTABLE                         R22 K91 [{"LayoutOrder", "previewBackgroundColor", "previewSize", "placeholderIconColor", "nameMinWidth", "validationIconSize", "assetDisplayName", "validationStatusImage", "iconColor", "textColor", "validationMessage", "isValidationError", "onClickError", "model", "hasRenderablePreview", "focusDirection", "previewImage"}]
      302 SETTABLEKS                       R10 R22 K14 ["LayoutOrder"]
      304 GETTABLEKS                       R23 R3 K75 ["previewBackgroundColor"]
      306 SETTABLEKS                       R23 R22 K75 ["previewBackgroundColor"]
      308 GETTABLEKS                       R23 R3 K76 ["previewSize"]
      310 SETTABLEKS                       R23 R22 K76 ["previewSize"]
      312 GETTABLEKS                       R23 R3 K77 ["placeholderIconColor"]
      314 SETTABLEKS                       R23 R22 K77 ["placeholderIconColor"]
      316 GETTABLEKS                       R23 R3 K78 ["nameMinWidth"]
      318 SETTABLEKS                       R23 R22 K78 ["nameMinWidth"]
      320 GETTABLEKS                       R23 R3 K79 ["validationIconSize"]
      322 SETTABLEKS                       R23 R22 K79 ["validationIconSize"]
      324 GETTABLEKS                       R24 R11 K92 ["required"]
      326 JUMPIFNOT                        R24 ; [+4]
      327 MOVE                             R24 R14
      328 LOADK                            R25 K93 ["*"]
      329 CONCAT                           R23 R24 R25
      330 JUMP                             ; [+1]
      331 MOVE                             R23 R14
      332 SETTABLEKS                       R23 R22 K80 ["assetDisplayName"]
      334 GETUPVAL                         R25 3
      335 GETTABLEKS                       R25 R25 K94 ["UGCValidationStatus"]
      337 GETTABLEKS                       R26 R11 K37 ["type"]
      339 GETTABLE                         R24 R25 R26
      340 FASTCALL2K                       ASSERT R24 K95 ; [+4]
      342 LOADK                            R25 K95 ["No icon for validation result type"]
      343 GETIMPORT                        R23 K40 [assert]
      345 CALL                             R23 2 1
      346 SETTABLEKS                       R23 R22 K81 ["validationStatusImage"]
      348 GETTABLEKS                       R23 R12 K82 ["iconColor"]
      350 SETTABLEKS                       R23 R22 K82 ["iconColor"]
      352 GETTABLEKS                       R23 R12 K83 ["textColor"]
      354 SETTABLEKS                       R23 R22 K83 ["textColor"]
      356 SETTABLEKS                       R15 R22 K84 ["validationMessage"]
      358 GETTABLEKS                       R24 R11 K37 ["type"]
      360 GETUPVAL                         R25 8
      361 GETTABLEKS                       R25 R25 K63 ["error"]
      363 JUMPIFEQ                         R24 R25 ; [+2]
      365 LOADB                            R23 0 +1
      366 LOADB                            R23 1
      367 SETTABLEKS                       R23 R22 K85 ["isValidationError"]
      369 GETTABLEKS                       R23 R1 K86 ["onClickError"]
      371 SETTABLEKS                       R23 R22 K86 ["onClickError"]
      373 SETTABLEKS                       R13 R22 K87 ["model"]
      375 SETTABLEKS                       R17 R22 K88 ["hasRenderablePreview"]
      377 JUMPIFNOT                        R17 ; [+8]
      378 JUMPIFNOT                        R13 ; [+7]
      379 GETTABLEKS                       R23 R13 K53 ["PrimaryPart"]
      381 GETTABLEKS                       R23 R23 K96 ["CFrame"]
      383 GETTABLEKS                       R23 R23 K97 ["LookVector"]
      385 JUMP                             ; [+1]
      386 LOADNIL                          R23
      387 SETTABLEKS                       R23 R22 K89 ["focusDirection"]
      389 SETTABLEKS                       R16 R22 K90 ["previewImage"]
      391 CALL                             R20 2 -1
      392 FASTCALL                         TABLE_INSERT ; [+2]
      393 GETIMPORT                        R18 K35 [table.insert]
      395 CALL                             R18 -1 0
      396 FORGLOOP                         R7 2 ; [-309]
      398 GETUPVAL                         R7 1
      399 GETTABLEKS                       R7 R7 K10 ["createElement"]
      401 GETUPVAL                         R8 2
      402 GETTABLEKS                       R8 R8 K11 ["View"]
      404 DUPTABLE                         R9 K99 [{["tag"] = "col align-x-left align-y-top gap-xlarge size-full-0 auto-y", ["LayoutOrder"]}]
      405 GETTABLEKS                       R10 R1 K14 ["LayoutOrder"]
      407 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
      409 MOVE                             R10 R6
      410 CALL                             R7 3 -1
      411 RETURN                           R7 -1

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
       48 GETTABLEKS                       R8 R5 K15 ["AssetConfigUtil"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R5 K16 ["Analytics"]
       55 GETTABLEKS                       R9 R9 K16 ["Analytics"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R5 K17 ["AssetConfigConstants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R5 K18 ["fixUpPreValidation"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R5 K19 ["DebugFlags"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R0 K6 ["Packages"]
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R14 R12 K20 ["Cryo"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R12 K21 ["Foundation"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R16 R12 K22 ["UGCValidation"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K24 [game]
       92 LOADK                            R18 K25 ["ToolboxFixUGCBundleValidationCryoThingy1"]
       93 LOADB                            R19 0
       94 NAMECALL                         R16 R16 K26 ["DefineFastFlag"]
       96 CALL                             R16 3 1
       97 GETIMPORT                        R17 K24 [game]
       99 LOADK                            R19 K27 ["DisableSubmitButtonForValidationInInit"]
      100 LOADB                            R20 0
      101 NAMECALL                         R17 R17 K26 ["DefineFastFlag"]
      103 CALL                             R17 3 1
      104 GETIMPORT                        R18 K5 [require]
      106 GETTABLEKS                       R19 R5 K28 ["SharedFlags"]
      108 GETTABLEKS                       R19 R19 K29 ["getFFlagEnableUGCBundleUploadBodyScale"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R20 R0 K10 ["Src"]
      115 GETTABLEKS                       R20 R20 K30 ["Flags"]
      117 GETTABLEKS                       R20 R20 K31 ["getFFlagRequireBodyColorsForBodyUpload"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R21 R0 K10 ["Src"]
      124 GETTABLEKS                       R21 R21 K30 ["Flags"]
      126 GETTABLEKS                       R21 R21 K32 ["getFFlagEnableUploadingAvatarAnimations"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R22 R5 K33 ["AvatarAnimationStudioToolboxTextures"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K5 [require]
      136 GETTABLEKS                       R23 R0 K10 ["Src"]
      138 GETTABLEKS                       R23 R23 K30 ["Flags"]
      140 GETTABLEKS                       R23 R23 K34 ["getFFlagBundleBypassValidation"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K5 [require]
      145 GETTABLEKS                       R24 R0 K10 ["Src"]
      147 GETTABLEKS                       R24 R24 K30 ["Flags"]
      149 GETTABLEKS                       R24 R24 K35 ["getFStringBundlesToBypassValidation"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R25 R0 K10 ["Src"]
      156 GETTABLEKS                       R25 R25 K30 ["Flags"]
      158 GETTABLEKS                       R25 R25 K36 ["getFFlagToolboxAnimationRemoveModelWrapper"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K5 [require]
      163 GETTABLEKS                       R26 R5 K37 ["AvatarAnimationBundleUtil"]
      165 CALL                             R25 1 1
      166 GETTABLEKS                       R26 R1 K38 ["ContextServices"]
      168 GETTABLEKS                       R27 R26 K39 ["withContext"]
      170 GETTABLEKS                       R28 R0 K10 ["Src"]
      172 GETTABLEKS                       R28 R28 K40 ["Components"]
      174 GETTABLEKS                       R28 R28 K41 ["AssetConfiguration"]
      176 GETIMPORT                        R29 K5 [require]
      178 GETTABLEKS                       R30 R28 K42 ["BundleValidationRow"]
      180 CALL                             R29 1 1
      181 GETIMPORT                        R30 K5 [require]
      183 GETTABLEKS                       R31 R28 K43 ["ValidationStatus"]
      185 CALL                             R30 1 1
      186 GETIMPORT                        R31 K5 [require]
      188 GETTABLEKS                       R32 R5 K28 ["SharedFlags"]
      190 GETTABLEKS                       R32 R32 K44 ["getFFlagEnableUGCUploadFlowAnalytics"]
      192 CALL                             R31 1 1
      193 DUPCLOSURE                       R32 K45 [PROTO_0]
      194 DUPCLOSURE                       R33 K46 [PROTO_1]
      195 GETTABLEKS                       R34 R2 K47 ["PureComponent"]
      197 LOADK                            R36 K48 ["UGCBundleValidation"]
      198 NAMECALL                         R34 R34 K49 ["extend"]
      200 CALL                             R34 2 1
      201 DUPCLOSURE                       R35 K50 [PROTO_2]
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R23
      204 DUPCLOSURE                       R36 K51 [PROTO_5]
      205 CAPTURE                          VAL R31
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R17
      211 SETTABLEKS                       R36 R34 K52 ["init"]
      213 DUPCLOSURE                       R36 K53 [PROTO_6]
      214 SETTABLEKS                       R36 R34 K54 ["cancelValidationTasks"]
      216 DUPCLOSURE                       R36 K55 [PROTO_13]
      217 CAPTURE                          VAL R31
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R35
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R19
      233 SETTABLEKS                       R36 R34 K56 ["startUGCBundleValidation"]
      235 DUPCLOSURE                       R36 K57 [PROTO_14]
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R9
      238 SETTABLEKS                       R36 R34 K58 ["didUpdate"]
      240 DUPCLOSURE                       R36 K59 [PROTO_15]
      241 SETTABLEKS                       R36 R34 K60 ["willUnmount"]
      243 DUPCLOSURE                       R36 K61 [PROTO_16]
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R20
      249 CAPTURE                          VAL R7
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R29
      255 SETTABLEKS                       R36 R34 K62 ["render"]
      257 MOVE                             R36 R27
      258 DUPTABLE                         R37 K64 [{"Localization", "Stylizer"}]
      259 GETTABLEKS                       R38 R26 K11 ["Localization"]
      261 SETTABLEKS                       R38 R37 K11 ["Localization"]
      263 GETTABLEKS                       R38 R26 K63 ["Stylizer"]
      265 SETTABLEKS                       R38 R37 K63 ["Stylizer"]
      267 CALL                             R36 1 1
      268 MOVE                             R37 R34
      269 CALL                             R36 1 1
      270 MOVE                             R34 R36
      271 RETURN                           R34 1
