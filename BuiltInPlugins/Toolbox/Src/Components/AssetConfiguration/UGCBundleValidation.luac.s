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
      163 JUMPIFNOT                        R4 ; [+43]
      164 DUPTABLE                         R6 K19 [{["assetType"] = , ["instance"], ["required"] = True, [4], ["type"]}]
      165 GETUPVAL                         R7 5
      166 SETTABLEKS                       R7 R6 K6 ["instance"]
      168 GETUPVAL                         R8 0
      169 CALL                             R8 0 1
      170 JUMPIFNOT                        R8 ; [+5]
      171 GETUPVAL                         R8 1
      172 JUMPIFNOT                        R8 ; [+3]
      173 NEWTABLE                         R7 0 0
      175 JUMP                             ; [+1]
      176 MOVE                             R7 R3
      177 SETTABLEKS                       R7 R6 K0 ["errors"]
      179 GETUPVAL                         R8 0
      180 CALL                             R8 0 1
      181 JUMPIFNOT                        R8 ; [+6]
      182 GETUPVAL                         R8 1
      183 JUMPIFNOT                        R8 ; [+4]
      184 GETUPVAL                         R7 4
      185 GETTABLEKS                       R7 R7 K12 ["success"]
      187 JUMP                             ; [+11]
      188 LENGTH                           R8 R3
      189 LOADN                            R9 0
      190 JUMPIFNOTLT                      R9 R8 ; [+5]
      192 GETUPVAL                         R7 4
      193 GETTABLEKS                       R7 R7 K13 ["error"]
      195 JUMP                             ; [+3]
      196 GETUPVAL                         R7 4
      197 GETTABLEKS                       R7 R7 K16 ["pending"]
      199 SETTABLEKS                       R7 R6 K8 ["type"]
      201 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
      203 MOVE                             R5 R1
      204 GETIMPORT                        R4 K4 [table.insert]
      206 CALL                             R4 2 0
      207 GETUPVAL                         R4 6
      208 GETTABLEKS                       R4 R4 K20 ["setUGCBundleValidationResults"]
      210 JUMPIFNOT                        R4 ; [+5]
      211 GETUPVAL                         R4 6
      212 GETTABLEKS                       R4 R4 K20 ["setUGCBundleValidationResults"]
      214 MOVE                             R5 R1
      215 CALL                             R4 1 0
      216 GETUPVAL                         R4 0
      217 CALL                             R4 0 1
      218 JUMPIFNOT                        R4 ; [+11]
      219 GETUPVAL                         R4 1
      220 JUMPIFNOT                        R4 ; [+9]
      221 GETUPVAL                         R4 7
      222 JUMPIF                           R4 ; [+7]
      223 LOADB                            R4 1
      224 SETUPVAL                         R4 7
      225 GETIMPORT                        R4 K23 [task.defer]
      227 NEWCLOSURE                       R5 P0
      228 CAPTURE                          UPVAL U8
      229 CALL                             R4 1 0
      230 RETURN                           R0 0

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
      129 JUMP                             ; [+26]
      130 GETUPVAL                         R9 10
      131 CALL                             R9 0 1
      132 JUMPIFNOT                        R9 ; [+20]
      133 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      135 GETUPVAL                         R10 3
      136 GETTABLEKS                       R10 R10 K20 ["UGCBundleTypes"]
      138 GETTABLEKS                       R10 R10 K23 ["AvatarAnimations"]
      140 JUMPIFNOTEQ                      R9 R10 ; [+12]
      142 GETUPVAL                         R9 11
      143 CALL                             R9 0 1
      144 JUMPIFNOT                        R9 ; [+4]
      145 GETUPVAL                         R9 9
      146 GETTABLEKS                       R8 R9 K24 ["validateAnimationBundleReadyForUpload"]
      148 JUMP                             ; [+7]
      149 GETUPVAL                         R9 9
      150 GETTABLEKS                       R8 R9 K25 ["validateBundleReadyForUpload"]
      152 JUMP                             ; [+3]
      153 GETUPVAL                         R9 9
      154 GETTABLEKS                       R8 R9 K25 ["validateBundleReadyForUpload"]
      156 GETTABLEKS                       R9 R1 K2 ["assetTypeEnum"]
      158 GETTABLEKS                       R10 R1 K6 ["instances"]
      160 JUMPIFEQKNIL                     R10 ; [+60]
      162 LOADNIL                          R10
      163 GETUPVAL                         R11 9
      164 GETTABLEKS                       R11 R11 K26 ["isFolderStructureEnabled"]
      166 JUMPIFNOT                        R11 ; [+21]
      167 GETUPVAL                         R11 9
      168 GETTABLEKS                       R11 R11 K26 ["isFolderStructureEnabled"]
      170 CALL                             R11 0 1
      171 JUMPIFNOT                        R11 ; [+16]
      172 DUPTABLE                         R11 K29 [{["studioPluginName"] = "Toolbox"}]
      173 MOVE                             R10 R11
      174 GETUPVAL                         R11 9
      175 GETTABLEKS                       R11 R11 K30 ["isEntrypointMergingEnabled"]
      177 JUMPIFNOT                        R11 ; [+10]
      178 GETUPVAL                         R11 9
      179 GETTABLEKS                       R11 R11 K30 ["isEntrypointMergingEnabled"]
      181 CALL                             R11 0 1
      182 JUMPIFNOT                        R11 ; [+5]
      183 NEWCLOSURE                       R11 P2
      184 CAPTURE                          UPVAL U1
      185 CAPTURE                          VAL R1
      186 SETTABLEKS                       R11 R10 K31 ["localizationCallback"]
      188 MOVE                             R11 R8
      189 GETTABLEKS                       R13 R1 K6 ["instances"]
      191 GETTABLEN                        R12 R13 1
      192 GETTABLEKS                       R13 R1 K32 ["allowedBundleTypeSettings"]
      194 GETTABLEKS                       R14 R9 K33 ["rawValue"]
      196 CALL                             R14 0 1
      197 MOVE                             R15 R7
      198 LOADNIL                          R16
      199 MOVE                             R17 R10
      200 CALL                             R11 6 1
      201 NEWCLOSURE                       R13 P3
      202 CAPTURE                          UPVAL U4
      203 CAPTURE                          VAL R3
      204 CAPTURE                          REF R4
      205 CAPTURE                          VAL R0
      206 CAPTURE                          UPVAL U6
      207 CAPTURE                          UPVAL U12
      208 CAPTURE                          UPVAL U13
      209 CAPTURE                          UPVAL U8
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R6
      212 CAPTURE                          UPVAL U14
      213 CAPTURE                          UPVAL U15
      214 CAPTURE                          UPVAL U3
      215 CAPTURE                          UPVAL U1
      216 NAMECALL                         R11 R11 K34 ["andThen"]
      218 CALL                             R11 2 1
      219 SETTABLEKS                       R11 R0 K35 ["validationPromise"]
      221 CLOSEUPVALS                      R4
      222 RETURN                           R0 0

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
       39 JUMPIFNOT                        R8 ; [+149]
       40 GETUPVAL                         R8 2
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+49]
       43 MOVE                             R9 R6
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R10 R10 K11 ["createElement"]
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R11 R11 K12 ["View"]
       50 DUPTABLE                         R12 K17 [{["tag"] = "row align-x-left align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"] = -1}]
       51 DUPTABLE                         R13 K20 [{"Icon", "UGCWarningText"}]
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R14 R14 K11 ["createElement"]
       55 GETUPVAL                         R15 4
       56 GETTABLEKS                       R15 R15 K21 ["Image"]
       58 DUPTABLE                         R16 K25 [{["tag"] = "content-system-warning", ["Image"], ["LayoutOrder"] = 1, ["Size"]}]
       59 GETUPVAL                         R17 5
       60 GETTABLEKS                       R17 R17 K26 ["WARNING_ICON"]
       62 SETTABLEKS                       R17 R16 K21 ["Image"]
       64 GETIMPORT                        R17 K29 [UDim2.fromOffset]
       66 LOADN                            R18 22
       67 LOADN                            R19 22
       68 CALL                             R17 2 1
       69 SETTABLEKS                       R17 R16 K24 ["Size"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K18 ["Icon"]
       74 GETUPVAL                         R14 3
       75 GETTABLEKS                       R14 R14 K11 ["createElement"]
       77 GETUPVAL                         R15 4
       78 GETTABLEKS                       R15 R15 K30 ["Text"]
       80 DUPTABLE                         R16 K33 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-system-warning", ["LayoutOrder"] = 2, ["Text"]}]
       81 SETTABLEKS                       R5 R16 K30 ["Text"]
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K19 ["UGCWarningText"]
       86 CALL                             R10 3 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R8 K36 [table.insert]
       90 CALL                             R8 -1 0
       91 JUMP                             ; [+97]
       92 MOVE                             R9 R6
       93 GETUPVAL                         R10 6
       94 GETTABLEKS                       R10 R10 K11 ["createElement"]
       96 GETUPVAL                         R11 7
       97 DUPTABLE                         R12 K43 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = -1, ["Size"], ["Spacing"] = 8, ["VerticalAlignment"]}]
       98 GETIMPORT                        R13 K46 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R13 R12 K37 ["AutomaticSize"]
      102 GETIMPORT                        R13 K48 [Enum.HorizontalAlignment.Left]
      104 SETTABLEKS                       R13 R12 K38 ["HorizontalAlignment"]
      106 GETIMPORT                        R13 K51 [Enum.FillDirection.Horizontal]
      108 SETTABLEKS                       R13 R12 K39 ["Layout"]
      110 GETIMPORT                        R13 K53 [UDim2.fromScale]
      112 LOADN                            R14 1
      113 LOADN                            R15 0
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K24 ["Size"]
      117 GETIMPORT                        R13 K55 [Enum.VerticalAlignment.Top]
      119 SETTABLEKS                       R13 R12 K42 ["VerticalAlignment"]
      121 DUPTABLE                         R13 K20 [{"Icon", "UGCWarningText"}]
      122 GETUPVAL                         R14 6
      123 GETTABLEKS                       R14 R14 K11 ["createElement"]
      125 LOADK                            R15 K56 ["ImageLabel"]
      126 DUPTABLE                         R16 K59 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["LayoutOrder"] = 1, ["Size"]}]
      127 GETUPVAL                         R17 5
      128 GETTABLEKS                       R17 R17 K26 ["WARNING_ICON"]
      130 SETTABLEKS                       R17 R16 K21 ["Image"]
      132 GETTABLEKS                       R17 R3 K60 ["warningColor"]
      134 SETTABLEKS                       R17 R16 K58 ["ImageColor3"]
      136 GETIMPORT                        R17 K29 [UDim2.fromOffset]
      138 LOADN                            R18 22
      139 LOADN                            R19 22
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K24 ["Size"]
      143 CALL                             R14 2 1
      144 SETTABLEKS                       R14 R13 K18 ["Icon"]
      146 GETUPVAL                         R14 6
      147 GETTABLEKS                       R14 R14 K11 ["createElement"]
      149 LOADK                            R15 K61 ["TextLabel"]
      150 DUPTABLE                         R16 K70 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 22, ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      151 GETIMPORT                        R17 K46 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R17 R16 K37 ["AutomaticSize"]
      155 GETUPVAL                         R17 8
      156 GETTABLEKS                       R17 R17 K71 ["FONT"]
      158 SETTABLEKS                       R17 R16 K62 ["Font"]
      160 GETIMPORT                        R17 K53 [UDim2.fromScale]
      162 LOADN                            R18 1
      163 LOADN                            R19 0
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K24 ["Size"]
      167 SETTABLEKS                       R5 R16 K30 ["Text"]
      169 GETTABLEKS                       R17 R3 K60 ["warningColor"]
      171 SETTABLEKS                       R17 R16 K63 ["TextColor3"]
      173 GETIMPORT                        R17 K72 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R17 R16 K68 ["TextXAlignment"]
      177 GETIMPORT                        R17 K74 [Enum.TextYAlignment.Center]
      179 SETTABLEKS                       R17 R16 K69 ["TextYAlignment"]
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K19 ["UGCWarningText"]
      184 CALL                             R10 3 -1
      185 FASTCALL                         TABLE_INSERT ; [+2]
      186 GETIMPORT                        R8 K36 [table.insert]
      188 CALL                             R8 -1 0
      189 MOVE                             R8 R4
      190 LOADNIL                          R9
      191 LOADNIL                          R10
      192 FORGPREP                         R8
      193 GETTABLEKS                       R15 R3 K75 ["validationStyles"]
      195 GETTABLEKS                       R16 R12 K76 ["type"]
      197 GETTABLE                         R14 R15 R16
      198 FASTCALL2K                       ASSERT R14 K77 ; [+4]
      200 LOADK                            R15 K77 ["No validation style for validation result type"]
      201 GETIMPORT                        R13 K79 [assert]
      203 CALL                             R13 2 1
      204 LOADNIL                          R14
      205 GETUPVAL                         R15 9
      206 CALL                             R15 0 1
      207 JUMPIFNOT                        R15 ; [+5]
      208 GETTABLEKS                       R15 R1 K80 ["isAnimationBundleType"]
      210 JUMPIFNOT                        R15 ; [+2]
      211 LOADNIL                          R14
      212 JUMP                             ; [+45]
      213 GETUPVAL                         R15 10
      214 GETTABLEKS                       R15 R15 K81 ["AssetTypeRequiresFolderForUpload"]
      216 GETTABLEKS                       R16 R12 K82 ["assetType"]
      218 CALL                             R15 1 1
      219 JUMPIFNOT                        R15 ; [+9]
      220 GETTABLEKS                       R15 R12 K83 ["instance"]
      222 JUMPIFNOT                        R15 ; [+4]
      223 GETUPVAL                         R15 11
      224 GETTABLEKS                       R16 R12 K83 ["instance"]
      226 CALL                             R15 1 1
      227 MOVE                             R14 R15
      228 JUMP                             ; [+29]
      229 GETTABLEKS                       R15 R12 K83 ["instance"]
      231 JUMPIFNOT                        R15 ; [+25]
      232 GETTABLEKS                       R16 R12 K83 ["instance"]
      234 GETIMPORT                        R17 K85 [Instance.new]
      236 LOADK                            R18 K86 ["Model"]
      237 CALL                             R17 1 1
      238 NAMECALL                         R18 R16 K87 ["Clone"]
      240 CALL                             R18 1 1
      241 MOVE                             R19 R18
      242 LOADK                            R22 K88 ["BasePart"]
      243 NAMECALL                         R20 R19 K89 ["IsA"]
      245 CALL                             R20 2 1
      246 JUMPIF                           R20 ; [+5]
      247 LOADK                            R22 K88 ["BasePart"]
      248 NAMECALL                         R20 R18 K90 ["FindFirstChildWhichIsA"]
      250 CALL                             R20 2 1
      251 MOVE                             R19 R20
      252 SETTABLEKS                       R19 R17 K91 ["PrimaryPart"]
      254 SETTABLEKS                       R17 R18 K92 ["Parent"]
      256 MOVE                             R15 R17
      257 MOVE                             R14 R15
      258 LOADNIL                          R15
      259 GETUPVAL                         R16 12
      260 CALL                             R16 0 1
      261 JUMPIFNOT                        R16 ; [+49]
      262 GETTABLEKS                       R16 R12 K82 ["assetType"]
      264 JUMPIFNOTEQKNIL                  R16 ; [+31]
      266 GETTABLEKS                       R16 R1 K10 ["isUGCBodyBundleType"]
      268 JUMPIFNOT                        R16 ; [+7]
      269 LOADK                            R18 K6 ["AssetConfig"]
      270 LOADK                            R19 K93 ["ValidationFullBody"]
      271 NAMECALL                         R16 R2 K8 ["getText"]
      273 CALL                             R16 3 1
      274 MOVE                             R15 R16
      275 JUMP                             ; [+49]
      276 GETUPVAL                         R16 9
      277 CALL                             R16 0 1
      278 JUMPIFNOT                        R16 ; [+10]
      279 GETTABLEKS                       R16 R1 K80 ["isAnimationBundleType"]
      281 JUMPIFNOT                        R16 ; [+7]
      282 LOADK                            R18 K6 ["AssetConfig"]
      283 LOADK                            R19 K94 ["UGCAvatarAnimationsBundleName"]
      284 NAMECALL                         R16 R2 K8 ["getText"]
      286 CALL                             R16 3 1
      287 MOVE                             R15 R16
      288 JUMP                             ; [+36]
      289 LOADK                            R18 K6 ["AssetConfig"]
      290 LOADK                            R19 K95 ["ValidationShoePair"]
      291 NAMECALL                         R16 R2 K8 ["getText"]
      293 CALL                             R16 3 1
      294 MOVE                             R15 R16
      295 JUMP                             ; [+29]
      296 GETUPVAL                         R18 13
      297 GETTABLEKS                       R19 R1 K1 ["Localization"]
      299 CALL                             R18 1 1
      300 GETTABLEKS                       R19 R12 K82 ["assetType"]
      302 GETTABLE                         R17 R18 R19
      303 FASTCALL2K                       ASSERT R17 K96 ; [+4]
      305 LOADK                            R18 K96 ["Couldn't find localized text for asset type"]
      306 GETIMPORT                        R16 K79 [assert]
      308 CALL                             R16 2 1
      309 MOVE                             R15 R16
      310 JUMP                             ; [+14]
      311 GETUPVAL                         R18 13
      312 GETTABLEKS                       R19 R1 K1 ["Localization"]
      314 CALL                             R18 1 1
      315 GETTABLEKS                       R19 R12 K82 ["assetType"]
      317 GETTABLE                         R17 R18 R19
      318 FASTCALL2K                       ASSERT R17 K96 ; [+4]
      320 LOADK                            R18 K96 ["Couldn't find localized text for asset type"]
      321 GETIMPORT                        R16 K79 [assert]
      323 CALL                             R16 2 1
      324 MOVE                             R15 R16
      325 GETTABLEKS                       R17 R12 K76 ["type"]
      327 GETUPVAL                         R18 14
      328 GETTABLEKS                       R18 R18 K97 ["success"]
      330 JUMPIFNOTEQ                      R17 R18 ; [+7]
      332 LOADK                            R18 K6 ["AssetConfig"]
      333 LOADK                            R19 K98 ["ValidationSuccess"]
      334 NAMECALL                         R16 R2 K8 ["getText"]
      336 CALL                             R16 3 1
      337 JUMP                             ; [+49]
      338 GETTABLEKS                       R17 R12 K76 ["type"]
      340 GETUPVAL                         R18 14
      341 GETTABLEKS                       R18 R18 K99 ["pending"]
      343 JUMPIFNOTEQ                      R17 R18 ; [+7]
      345 LOADK                            R18 K6 ["AssetConfig"]
      346 LOADK                            R19 K100 ["ValidatingInProgress"]
      347 NAMECALL                         R16 R2 K8 ["getText"]
      349 CALL                             R16 3 1
      350 JUMP                             ; [+36]
      351 GETTABLEKS                       R17 R12 K76 ["type"]
      353 GETUPVAL                         R18 14
      354 GETTABLEKS                       R18 R18 K101 ["error"]
      356 JUMPIFNOTEQ                      R17 R18 ; [+20]
      358 LOADK                            R18 K6 ["AssetConfig"]
      359 GETTABLEKS                       R21 R12 K102 ["errors"]
      361 LENGTH                           R20 R21
      362 JUMPIFNOTEQKN                    R20 K23 [1] ; [+3]
      364 LOADK                            R19 K103 ["ValidationErrorSingular"]
      365 JUMP                             ; [+1]
      366 LOADK                            R19 K104 ["ValidationErrorPlural"]
      367 DUPTABLE                         R20 K106 [{"errorCount"}]
      368 GETTABLEKS                       R22 R12 K102 ["errors"]
      370 LENGTH                           R21 R22
      371 SETTABLEKS                       R21 R20 K105 ["errorCount"]
      373 NAMECALL                         R16 R2 K8 ["getText"]
      375 CALL                             R16 4 1
      376 JUMP                             ; [+10]
      377 GETIMPORT                        R16 K107 [error]
      379 LOADK                            R18 K108 ["Unknown validation result type \"%*\""]
      380 GETTABLEKS                       R20 R12 K76 ["type"]
      382 NAMECALL                         R18 R18 K109 ["format"]
      384 CALL                             R18 2 1
      385 MOVE                             R17 R18
      386 CALL                             R16 1 1
      387 LOADNIL                          R17
      388 GETUPVAL                         R18 9
      389 CALL                             R18 0 1
      390 JUMPIFNOT                        R18 ; [+20]
      391 GETTABLEKS                       R18 R1 K80 ["isAnimationBundleType"]
      393 JUMPIFNOT                        R18 ; [+17]
      394 GETTABLEKS                       R18 R12 K82 ["assetType"]
      396 JUMPIFEQKNIL                     R18 ; [+9]
      398 GETUPVAL                         R19 15
      399 GETTABLEKS                       R19 R19 K110 ["getAvatarAnimationPartThumbnailUri"]
      401 GETTABLEKS                       R20 R18 K111 ["Name"]
      403 CALL                             R19 1 1
      404 MOVE                             R17 R19
      405 JUMP                             ; [+5]
      406 GETUPVAL                         R19 15
      407 GETTABLEKS                       R19 R19 K112 ["getAvatarAnimationsBundleThumbnailUri"]
      409 CALL                             R19 0 1
      410 MOVE                             R17 R19
      411 GETUPVAL                         R18 2
      412 CALL                             R18 0 1
      413 JUMPIFNOT                        R18 ; [+115]
      414 LOADB                            R18 0
      415 GETTABLEKS                       R19 R12 K83 ["instance"]
      417 JUMPIFEQKNIL                     R19 ; [+10]
      419 LOADB                            R18 0
      420 JUMPIFEQKNIL                     R14 ; [+7]
      422 GETTABLEKS                       R19 R14 K91 ["PrimaryPart"]
      424 JUMPIFNOTEQKNIL                  R19 ; [+2]
      426 LOADB                            R18 0 +1
      427 LOADB                            R18 1
      428 MOVE                             R20 R6
      429 GETUPVAL                         R21 3
      430 GETTABLEKS                       R21 R21 K11 ["createElement"]
      432 GETUPVAL                         R22 16
      433 DUPTABLE                         R23 K129 [{"LayoutOrder", "previewBackgroundColor", "previewSize", "placeholderIconColor", "nameMinWidth", "validationIconSize", "assetDisplayName", "validationStatusImage", "iconColor", "textColor", "validationMessage", "isValidationError", "onClickError", "model", "hasRenderablePreview", "focusDirection", "previewImage"}]
      434 SETTABLEKS                       R11 R23 K15 ["LayoutOrder"]
      436 GETTABLEKS                       R24 R3 K113 ["previewBackgroundColor"]
      438 SETTABLEKS                       R24 R23 K113 ["previewBackgroundColor"]
      440 GETTABLEKS                       R24 R3 K114 ["previewSize"]
      442 SETTABLEKS                       R24 R23 K114 ["previewSize"]
      444 GETTABLEKS                       R24 R3 K115 ["placeholderIconColor"]
      446 SETTABLEKS                       R24 R23 K115 ["placeholderIconColor"]
      448 GETTABLEKS                       R24 R3 K116 ["nameMinWidth"]
      450 SETTABLEKS                       R24 R23 K116 ["nameMinWidth"]
      452 GETTABLEKS                       R24 R3 K117 ["validationIconSize"]
      454 SETTABLEKS                       R24 R23 K117 ["validationIconSize"]
      456 GETTABLEKS                       R25 R12 K130 ["required"]
      458 JUMPIFNOT                        R25 ; [+4]
      459 MOVE                             R25 R15
      460 LOADK                            R26 K131 ["*"]
      461 CONCAT                           R24 R25 R26
      462 JUMP                             ; [+1]
      463 MOVE                             R24 R15
      464 SETTABLEKS                       R24 R23 K118 ["assetDisplayName"]
      466 GETUPVAL                         R26 5
      467 GETTABLEKS                       R26 R26 K132 ["UGCValidationStatus"]
      469 GETTABLEKS                       R27 R12 K76 ["type"]
      471 GETTABLE                         R25 R26 R27
      472 FASTCALL2K                       ASSERT R25 K133 ; [+4]
      474 LOADK                            R26 K133 ["No icon for validation result type"]
      475 GETIMPORT                        R24 K79 [assert]
      477 CALL                             R24 2 1
      478 SETTABLEKS                       R24 R23 K119 ["validationStatusImage"]
      480 GETTABLEKS                       R24 R13 K120 ["iconColor"]
      482 SETTABLEKS                       R24 R23 K120 ["iconColor"]
      484 GETTABLEKS                       R24 R13 K121 ["textColor"]
      486 SETTABLEKS                       R24 R23 K121 ["textColor"]
      488 SETTABLEKS                       R16 R23 K122 ["validationMessage"]
      490 GETTABLEKS                       R25 R12 K76 ["type"]
      492 GETUPVAL                         R26 14
      493 GETTABLEKS                       R26 R26 K101 ["error"]
      495 JUMPIFEQ                         R25 R26 ; [+2]
      497 LOADB                            R24 0 +1
      498 LOADB                            R24 1
      499 SETTABLEKS                       R24 R23 K123 ["isValidationError"]
      501 GETTABLEKS                       R24 R1 K124 ["onClickError"]
      503 SETTABLEKS                       R24 R23 K124 ["onClickError"]
      505 SETTABLEKS                       R14 R23 K125 ["model"]
      507 SETTABLEKS                       R18 R23 K126 ["hasRenderablePreview"]
      509 JUMPIFNOT                        R18 ; [+8]
      510 JUMPIFNOT                        R14 ; [+7]
      511 GETTABLEKS                       R24 R14 K91 ["PrimaryPart"]
      513 GETTABLEKS                       R24 R24 K134 ["CFrame"]
      515 GETTABLEKS                       R24 R24 K135 ["LookVector"]
      517 JUMP                             ; [+1]
      518 LOADNIL                          R24
      519 SETTABLEKS                       R24 R23 K127 ["focusDirection"]
      521 SETTABLEKS                       R17 R23 K128 ["previewImage"]
      523 CALL                             R21 2 -1
      524 FASTCALL                         TABLE_INSERT ; [+2]
      525 GETIMPORT                        R19 K36 [table.insert]
      527 CALL                             R19 -1 0
      528 JUMP                             ; [+267]
      529 MOVE                             R19 R6
      530 GETUPVAL                         R20 6
      531 GETTABLEKS                       R20 R20 K11 ["createElement"]
      533 GETUPVAL                         R21 7
      534 DUPTABLE                         R22 K137 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 5}]
      535 GETIMPORT                        R23 K46 [Enum.AutomaticSize.Y]
      537 SETTABLEKS                       R23 R22 K37 ["AutomaticSize"]
      539 GETIMPORT                        R23 K48 [Enum.HorizontalAlignment.Left]
      541 SETTABLEKS                       R23 R22 K38 ["HorizontalAlignment"]
      543 GETIMPORT                        R23 K51 [Enum.FillDirection.Horizontal]
      545 SETTABLEKS                       R23 R22 K39 ["Layout"]
      547 SETTABLEKS                       R11 R22 K15 ["LayoutOrder"]
      549 GETIMPORT                        R23 K53 [UDim2.fromScale]
      551 LOADN                            R24 1
      552 LOADN                            R25 0
      553 CALL                             R23 2 1
      554 SETTABLEKS                       R23 R22 K24 ["Size"]
      556 DUPTABLE                         R23 K141 [{"Preview", "AssetName", "ValidationArea"}]
      557 GETUPVAL                         R24 6
      558 GETTABLEKS                       R24 R24 K11 ["createElement"]
      560 GETUPVAL                         R25 7
      561 DUPTABLE                         R26 K143 [{"BackgroundColor", "LayoutOrder", "Size"}]
      562 GETTABLEKS                       R27 R3 K113 ["previewBackgroundColor"]
      564 SETTABLEKS                       R27 R26 K142 ["BackgroundColor"]
      566 NAMECALL                         R27 R7 K144 ["getNextOrder"]
      568 CALL                             R27 1 1
      569 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      571 GETIMPORT                        R27 K29 [UDim2.fromOffset]
      573 GETTABLEKS                       R28 R3 K114 ["previewSize"]
      575 GETTABLEKS                       R29 R3 K114 ["previewSize"]
      577 CALL                             R27 2 1
      578 SETTABLEKS                       R27 R26 K24 ["Size"]
      580 DUPTABLE                         R27 K147 [{"UICorner", "PreviewModel"}]
      581 GETUPVAL                         R28 6
      582 GETTABLEKS                       R28 R28 K11 ["createElement"]
      584 LOADK                            R29 K145 ["UICorner"]
      585 DUPTABLE                         R30 K149 [{"CornerRadius"}]
      586 GETIMPORT                        R31 K151 [UDim.new]
      588 LOADN                            R32 0
      589 LOADN                            R33 10
      590 CALL                             R31 2 1
      591 SETTABLEKS                       R31 R30 K148 ["CornerRadius"]
      593 CALL                             R28 2 1
      594 SETTABLEKS                       R28 R27 K145 ["UICorner"]
      596 GETTABLEKS                       R29 R12 K83 ["instance"]
      598 JUMPIFNOT                        R29 ; [+22]
      599 JUMPIFNOT                        R14 ; [+21]
      600 GETTABLEKS                       R29 R14 K91 ["PrimaryPart"]
      602 JUMPIFEQKNIL                     R29 ; [+18]
      604 GETUPVAL                         R28 6
      605 GETTABLEKS                       R28 R28 K11 ["createElement"]
      607 GETUPVAL                         R29 17
      608 DUPTABLE                         R30 K155 [{["FocusDirection"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Static"] = True}]
      609 GETTABLEKS                       R31 R14 K91 ["PrimaryPart"]
      611 GETTABLEKS                       R31 R31 K134 ["CFrame"]
      613 GETTABLEKS                       R31 R31 K135 ["LookVector"]
      615 SETTABLEKS                       R31 R30 K152 ["FocusDirection"]
      617 SETTABLEKS                       R14 R30 K86 ["Model"]
      619 CALL                             R28 2 1
      620 JUMP                             ; [+15]
      621 GETUPVAL                         R28 6
      622 GETTABLEKS                       R28 R28 K11 ["createElement"]
      624 GETUPVAL                         R29 18
      625 DUPTABLE                         R30 K156 [{"Image", "ImageColor3"}]
      626 GETUPVAL                         R31 5
      627 GETTABLEKS                       R31 R31 K157 ["PLACEHOLDER_ICON"]
      629 SETTABLEKS                       R31 R30 K21 ["Image"]
      631 GETTABLEKS                       R31 R3 K115 ["placeholderIconColor"]
      633 SETTABLEKS                       R31 R30 K58 ["ImageColor3"]
      635 CALL                             R28 2 1
      636 SETTABLEKS                       R28 R27 K146 ["PreviewModel"]
      638 CALL                             R24 3 1
      639 SETTABLEKS                       R24 R23 K138 ["Preview"]
      641 GETUPVAL                         R24 6
      642 GETTABLEKS                       R24 R24 K11 ["createElement"]
      644 GETUPVAL                         R25 19
      645 DUPTABLE                         R26 K158 [{"AutomaticSize", "LayoutOrder", "Text", "TextSize", "TextXAlignment"}]
      646 GETIMPORT                        R27 K160 [Enum.AutomaticSize.XY]
      648 SETTABLEKS                       R27 R26 K37 ["AutomaticSize"]
      650 NAMECALL                         R27 R7 K144 ["getNextOrder"]
      652 CALL                             R27 1 1
      653 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      655 GETTABLEKS                       R28 R12 K130 ["required"]
      657 JUMPIFNOT                        R28 ; [+4]
      658 MOVE                             R28 R15
      659 LOADK                            R29 K131 ["*"]
      660 CONCAT                           R27 R28 R29
      661 JUMP                             ; [+1]
      662 MOVE                             R27 R15
      663 SETTABLEKS                       R27 R26 K30 ["Text"]
      665 GETTABLEKS                       R27 R3 K161 ["nameTextSize"]
      667 SETTABLEKS                       R27 R26 K64 ["TextSize"]
      669 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      671 SETTABLEKS                       R27 R26 K68 ["TextXAlignment"]
      673 DUPTABLE                         R27 K163 [{"UISizeConstraint"}]
      674 GETUPVAL                         R28 6
      675 GETTABLEKS                       R28 R28 K11 ["createElement"]
      677 LOADK                            R29 K162 ["UISizeConstraint"]
      678 DUPTABLE                         R30 K165 [{"MinSize"}]
      679 GETIMPORT                        R31 K167 [Vector2.new]
      681 GETTABLEKS                       R32 R3 K116 ["nameMinWidth"]
      683 LOADN                            R33 0
      684 CALL                             R31 2 1
      685 SETTABLEKS                       R31 R30 K164 ["MinSize"]
      687 CALL                             R28 2 1
      688 SETTABLEKS                       R28 R27 K162 ["UISizeConstraint"]
      690 CALL                             R24 3 1
      691 SETTABLEKS                       R24 R23 K139 ["AssetName"]
      693 GETUPVAL                         R24 6
      694 GETTABLEKS                       R24 R24 K11 ["createElement"]
      696 GETUPVAL                         R25 7
      697 DUPTABLE                         R26 K169 [{["AutomaticSize"], ["LayoutOrder"], ["Layout"], ["OnClick"], ["Spacing"] = 5}]
      698 GETIMPORT                        R27 K160 [Enum.AutomaticSize.XY]
      700 SETTABLEKS                       R27 R26 K37 ["AutomaticSize"]
      702 NAMECALL                         R27 R7 K144 ["getNextOrder"]
      704 CALL                             R27 1 1
      705 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      707 GETIMPORT                        R27 K51 [Enum.FillDirection.Horizontal]
      709 SETTABLEKS                       R27 R26 K39 ["Layout"]
      711 GETTABLEKS                       R28 R12 K76 ["type"]
      713 GETUPVAL                         R29 14
      714 GETTABLEKS                       R29 R29 K101 ["error"]
      716 JUMPIFNOTEQ                      R28 R29 ; [+4]
      718 GETTABLEKS                       R27 R1 K124 ["onClickError"]
      720 JUMP                             ; [+1]
      721 LOADNIL                          R27
      722 SETTABLEKS                       R27 R26 K168 ["OnClick"]
      724 DUPTABLE                         R27 K172 [{"ValidationIcon", "ValidationText"}]
      725 GETUPVAL                         R28 6
      726 GETTABLEKS                       R28 R28 K11 ["createElement"]
      728 GETUPVAL                         R29 18
      729 DUPTABLE                         R30 K173 [{"Image", "ImageColor3", "LayoutOrder", "Size"}]
      730 GETUPVAL                         R33 5
      731 GETTABLEKS                       R33 R33 K132 ["UGCValidationStatus"]
      733 GETTABLEKS                       R34 R12 K76 ["type"]
      735 GETTABLE                         R32 R33 R34
      736 FASTCALL2K                       ASSERT R32 K133 ; [+4]
      738 LOADK                            R33 K133 ["No icon for validation result type"]
      739 GETIMPORT                        R31 K79 [assert]
      741 CALL                             R31 2 1
      742 SETTABLEKS                       R31 R30 K21 ["Image"]
      744 GETTABLEKS                       R31 R13 K120 ["iconColor"]
      746 SETTABLEKS                       R31 R30 K58 ["ImageColor3"]
      748 NAMECALL                         R31 R7 K144 ["getNextOrder"]
      750 CALL                             R31 1 1
      751 SETTABLEKS                       R31 R30 K15 ["LayoutOrder"]
      753 GETIMPORT                        R31 K29 [UDim2.fromOffset]
      755 GETTABLEKS                       R32 R3 K117 ["validationIconSize"]
      757 GETTABLEKS                       R33 R3 K117 ["validationIconSize"]
      759 CALL                             R31 2 1
      760 SETTABLEKS                       R31 R30 K24 ["Size"]
      762 CALL                             R28 2 1
      763 SETTABLEKS                       R28 R27 K170 ["ValidationIcon"]
      765 GETUPVAL                         R28 6
      766 GETTABLEKS                       R28 R28 K11 ["createElement"]
      768 GETUPVAL                         R29 19
      769 DUPTABLE                         R30 K175 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor"}]
      770 GETIMPORT                        R31 K160 [Enum.AutomaticSize.XY]
      772 SETTABLEKS                       R31 R30 K37 ["AutomaticSize"]
      774 NAMECALL                         R31 R7 K144 ["getNextOrder"]
      776 CALL                             R31 1 1
      777 SETTABLEKS                       R31 R30 K15 ["LayoutOrder"]
      779 SETTABLEKS                       R16 R30 K30 ["Text"]
      781 GETTABLEKS                       R31 R13 K121 ["textColor"]
      783 SETTABLEKS                       R31 R30 K174 ["TextColor"]
      785 CALL                             R28 2 1
      786 SETTABLEKS                       R28 R27 K171 ["ValidationText"]
      788 CALL                             R24 3 1
      789 SETTABLEKS                       R24 R23 K140 ["ValidationArea"]
      791 CALL                             R20 3 -1
      792 FASTCALL                         TABLE_INSERT ; [+2]
      793 GETIMPORT                        R18 K36 [table.insert]
      795 CALL                             R18 -1 0
      796 FORGLOOP                         R8 2 ; [-604]
      798 GETUPVAL                         R8 2
      799 CALL                             R8 0 1
      800 JUMPIFNOT                        R8 ; [+14]
      801 GETUPVAL                         R8 3
      802 GETTABLEKS                       R8 R8 K11 ["createElement"]
      804 GETUPVAL                         R9 4
      805 GETTABLEKS                       R9 R9 K12 ["View"]
      807 DUPTABLE                         R10 K177 [{["tag"] = "col align-x-left align-y-top gap-xlarge size-full-0 auto-y", ["LayoutOrder"]}]
      808 GETTABLEKS                       R11 R1 K15 ["LayoutOrder"]
      810 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      812 MOVE                             R11 R6
      813 CALL                             R8 3 -1
      814 RETURN                           R8 -1
      815 GETUPVAL                         R8 6
      816 GETTABLEKS                       R8 R8 K11 ["createElement"]
      818 GETUPVAL                         R9 7
      819 DUPTABLE                         R10 K179 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 18}]
      820 GETIMPORT                        R11 K46 [Enum.AutomaticSize.Y]
      822 SETTABLEKS                       R11 R10 K37 ["AutomaticSize"]
      824 GETIMPORT                        R11 K181 [Enum.FillDirection.Vertical]
      826 SETTABLEKS                       R11 R10 K39 ["Layout"]
      828 GETTABLEKS                       R11 R1 K15 ["LayoutOrder"]
      830 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      832 GETIMPORT                        R11 K53 [UDim2.fromScale]
      834 LOADN                            R12 1
      835 LOADN                            R13 0
      836 CALL                             R11 2 1
      837 SETTABLEKS                       R11 R10 K24 ["Size"]
      839 MOVE                             R11 R6
      840 CALL                             R8 3 -1
      841 RETURN                           R8 -1

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
      183 GETIMPORT                        R32 K5 [require]
      185 GETTABLEKS                       R33 R0 K10 ["Src"]
      187 GETTABLEKS                       R33 R33 K37 ["Flags"]
      189 GETTABLEKS                       R33 R33 K44 ["getFFlagEnableAvatarAnimationsValidation"]
      191 CALL                             R32 1 1
      192 GETTABLEKS                       R33 R1 K45 ["ContextServices"]
      194 GETTABLEKS                       R34 R33 K46 ["withContext"]
      196 GETTABLEKS                       R35 R1 K13 ["Util"]
      198 GETTABLEKS                       R35 R35 K47 ["LayoutOrderIterator"]
      200 GETTABLEKS                       R36 R0 K10 ["Src"]
      202 GETTABLEKS                       R36 R36 K48 ["Components"]
      204 GETTABLEKS                       R36 R36 K49 ["AssetConfiguration"]
      206 GETIMPORT                        R37 K5 [require]
      208 GETTABLEKS                       R38 R36 K50 ["BundleValidationRow"]
      210 CALL                             R37 1 1
      211 GETIMPORT                        R38 K5 [require]
      213 GETTABLEKS                       R39 R36 K51 ["ValidationStatus"]
      215 CALL                             R38 1 1
      216 GETIMPORT                        R39 K5 [require]
      218 GETTABLEKS                       R40 R5 K29 ["SharedFlags"]
      220 GETTABLEKS                       R40 R40 K52 ["getFFlagEnableUGCUploadFlowAnalytics"]
      222 CALL                             R39 1 1
      223 DUPCLOSURE                       R40 K53 [PROTO_0]
      224 DUPCLOSURE                       R41 K54 [PROTO_1]
      225 GETTABLEKS                       R42 R2 K55 ["PureComponent"]
      227 LOADK                            R44 K56 ["UGCBundleValidation"]
      228 NAMECALL                         R42 R42 K57 ["extend"]
      230 CALL                             R42 2 1
      231 DUPCLOSURE                       R43 K58 [PROTO_2]
      232 CAPTURE                          VAL R30
      233 CAPTURE                          VAL R31
      234 DUPCLOSURE                       R44 K59 [PROTO_5]
      235 CAPTURE                          VAL R39
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R24
      241 SETTABLEKS                       R44 R42 K60 ["init"]
      243 DUPCLOSURE                       R44 K61 [PROTO_6]
      244 SETTABLEKS                       R44 R42 K62 ["cancelValidationTasks"]
      246 DUPCLOSURE                       R44 K63 [PROTO_13]
      247 CAPTURE                          VAL R39
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R9
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R30
      252 CAPTURE                          VAL R43
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R38
      256 CAPTURE                          VAL R16
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R32
      259 CAPTURE                          VAL R14
      260 CAPTURE                          VAL R23
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R26
      263 SETTABLEKS                       R44 R42 K64 ["startUGCBundleValidation"]
      265 DUPCLOSURE                       R44 K65 [PROTO_14]
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R10
      268 SETTABLEKS                       R44 R42 K66 ["didUpdate"]
      270 DUPCLOSURE                       R44 K67 [PROTO_15]
      271 SETTABLEKS                       R44 R42 K68 ["willUnmount"]
      273 DUPCLOSURE                       R44 K69 [PROTO_16]
      274 CAPTURE                          VAL R14
      275 CAPTURE                          VAL R35
      276 CAPTURE                          VAL R29
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R2
      281 CAPTURE                          VAL R19
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R27
      284 CAPTURE                          VAL R8
      285 CAPTURE                          VAL R40
      286 CAPTURE                          VAL R22
      287 CAPTURE                          VAL R4
      288 CAPTURE                          VAL R38
      289 CAPTURE                          VAL R28
      290 CAPTURE                          VAL R37
      291 CAPTURE                          VAL R21
      292 CAPTURE                          VAL R18
      293 CAPTURE                          VAL R20
      294 SETTABLEKS                       R44 R42 K70 ["render"]
      296 MOVE                             R44 R34
      297 DUPTABLE                         R45 K72 [{"Localization", "Stylizer"}]
      298 GETTABLEKS                       R46 R33 K11 ["Localization"]
      300 SETTABLEKS                       R46 R45 K11 ["Localization"]
      302 GETTABLEKS                       R46 R33 K71 ["Stylizer"]
      304 SETTABLEKS                       R46 R45 K71 ["Stylizer"]
      306 CALL                             R44 1 1
      307 MOVE                             R45 R42
      308 CALL                             R44 1 1
      309 MOVE                             R42 R44
      310 RETURN                           R42 1
