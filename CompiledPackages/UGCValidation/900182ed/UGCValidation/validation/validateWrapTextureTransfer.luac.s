PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Head"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshUVValuesInReference"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["ReferenceCageMeshContent"]
        2 LOADB                            R3 0
        3 GETTABLEKS                       R4 R2 K1 ["Uri"]
        5 JUMPIFEQKNIL                     R4 ; [+7]
        7 GETTABLEKS                       R4 R2 K1 ["Uri"]
        9 JUMPIFNOTEQKS                    R4 K2 [""] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R0
       15 LOADK                            R6 K0 ["ReferenceCageMeshContent"]
       16 MOVE                             R7 R1
       17 CALL                             R4 3 2
       18 JUMPIF                           R4 ; [+48]
       19 LOADNIL                          R6
       20 JUMPIF                           R3 ; [+20]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K3 ["reportFailure"]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K4 ["ErrorType"]
       27 GETTABLEKS                       R8 R9 K5 ["validateWrapTextureTransfer_NoCage"]
       29 LOADNIL                          R9
       30 MOVE                             R10 R1
       31 CALL                             R7 3 0
       32 GETIMPORT                        R7 K8 [string.format]
       34 LOADK                            R8 K9 ["No ReferenceCageContent provided for %s"]
       35 NAMECALL                         R9 R0 K10 ["GetFullName"]
       37 CALL                             R9 1 -1
       38 CALL                             R7 -1 1
       39 MOVE                             R6 R7
       40 JUMP                             ; [+19]
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K3 ["reportFailure"]
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R9 R10 K4 ["ErrorType"]
       47 GETTABLEKS                       R8 R9 K11 ["validateWrapTextureTransfer_FailedToLoadCage"]
       49 LOADNIL                          R9
       50 MOVE                             R10 R1
       51 CALL                             R7 3 0
       52 GETIMPORT                        R7 K8 [string.format]
       54 LOADK                            R8 K12 ["Failed to load ReferenceCageContent for %s"]
       55 NAMECALL                         R9 R0 K10 ["GetFullName"]
       57 CALL                             R9 1 -1
       58 CALL                             R7 -1 1
       59 MOVE                             R6 R7
       60 LOADB                            R7 0
       61 NEWTABLE                         R8 0 1
       63 MOVE                             R9 R6
       64 SETLIST                          R8 R9 1 [1]
       66 RETURN                           R7 2
       67 GETUPVAL                         R6 2
       68 NEWCLOSURE                       R7 P0
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R5
       72 MOVE                             R8 R1
       73 CALL                             R6 2 2
       74 JUMPIF                           R6 ; [+32]
       75 GETIMPORT                        R8 K8 [string.format]
       77 LOADK                            R9 K13 ["Failed to load UVs for '%s'. Make sure the UV map exists and try again."]
       78 NAMECALL                         R10 R0 K10 ["GetFullName"]
       80 CALL                             R10 1 -1
       81 CALL                             R8 -1 1
       82 GETTABLEKS                       R9 R1 K14 ["isServer"]
       84 JUMPIFNOT                        R9 ; [+4]
       85 GETIMPORT                        R9 K16 [error]
       87 MOVE                             R10 R8
       88 CALL                             R9 1 0
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R9 R10 K3 ["reportFailure"]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R11 R12 K4 ["ErrorType"]
       95 GETTABLEKS                       R10 R11 K17 ["validateWrapTextureTransfer_FailedToLoadUV"]
       97 LOADNIL                          R11
       98 MOVE                             R12 R1
       99 CALL                             R9 3 0
      100 LOADB                            R9 0
      101 NEWTABLE                         R10 0 1
      103 MOVE                             R11 R8
      104 SETLIST                          R10 R11 1 [1]
      106 RETURN                           R9 2
      107 JUMPIF                           R7 ; [+24]
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R8 R9 K3 ["reportFailure"]
      111 GETUPVAL                         R11 1
      112 GETTABLEKS                       R10 R11 K4 ["ErrorType"]
      114 GETTABLEKS                       R9 R10 K18 ["validateWrapTextureTransfer_InvalidUV"]
      116 LOADNIL                          R10
      117 MOVE                             R11 R1
      118 CALL                             R8 3 0
      119 LOADB                            R8 0
      120 NEWTABLE                         R9 0 1
      122 GETIMPORT                        R10 K8 [string.format]
      124 LOADK                            R11 K19 ["Found invalid UV value for cage of '%s'. You need to edit the UV map to fix this issue."]
      125 NAMECALL                         R12 R0 K10 ["GetFullName"]
      127 CALL                             R12 1 -1
      128 CALL                             R10 -1 -1
      129 SETLIST                          R9 R10 -1 [1]
      131 RETURN                           R8 2
      132 LOADB                            R8 1
      133 RETURN                           R8 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["MAKEUP_INFO"]
        6 LOADK                            R6 K3 ["WrapTextureTransfer"]
        7 NAMECALL                         R4 R0 K4 ["FindFirstChildOfClass"]
        9 CALL                             R4 2 1
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 GETIMPORT                        R7 K7 [string.format]
       16 LOADK                            R8 K8 ["WrapTextureTransfer child not found for %s"]
       17 GETTABLEKS                       R9 R0 K9 ["Name"]
       19 CALL                             R7 2 -1
       20 FASTCALL                         ASSERT ; [+2]
       21 GETIMPORT                        R5 K11 [assert]
       23 CALL                             R5 -1 0
       24 GETUPVAL                         R5 1
       25 MOVE                             R6 R4
       26 MOVE                             R7 R1
       27 CALL                             R5 2 2
       28 JUMPIF                           R5 ; [+3]
       29 LOADB                            R7 0
       30 MOVE                             R8 R6
       31 RETURN                           R7 2
       32 GETTABLEKS                       R5 R4 K12 ["UVMinBound"]
       34 GETTABLEKS                       R8 R3 K13 ["WrapTextureTransferUVBounds"]
       36 GETTABLEKS                       R7 R8 K14 ["MinBound"]
       38 NAMECALL                         R5 R5 K15 ["FuzzyEq"]
       40 CALL                             R5 2 1
       41 JUMPIF                           R5 ; [+38]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R5 R6 K16 ["reportFailure"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K17 ["ErrorType"]
       48 GETTABLEKS                       R6 R7 K18 ["validateWrapTextureTransfer_InvalidMinBound"]
       50 LOADNIL                          R7
       51 MOVE                             R8 R1
       52 CALL                             R5 3 0
       53 LOADB                            R5 0
       54 NEWTABLE                         R6 0 1
       56 GETIMPORT                        R7 K7 [string.format]
       58 LOADK                            R8 K19 ["%s.UVMinBound [%s] does not match required UVMinBound of [%s]"]
       59 NAMECALL                         R9 R4 K20 ["GetFullName"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R11 R4 K12 ["UVMinBound"]
       64 FASTCALL1                        TOSTRING R11 ; [+2]
       65 GETIMPORT                        R10 K22 [tostring]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R13 R3 K13 ["WrapTextureTransferUVBounds"]
       70 GETTABLEKS                       R12 R13 K14 ["MinBound"]
       72 FASTCALL1                        TOSTRING R12 ; [+2]
       73 GETIMPORT                        R11 K22 [tostring]
       75 CALL                             R11 1 1
       76 CALL                             R7 4 -1
       77 SETLIST                          R6 R7 -1 [1]
       79 RETURN                           R5 2
       80 GETTABLEKS                       R5 R4 K23 ["UVMaxBound"]
       82 GETTABLEKS                       R8 R3 K13 ["WrapTextureTransferUVBounds"]
       84 GETTABLEKS                       R7 R8 K24 ["MaxBound"]
       86 NAMECALL                         R5 R5 K15 ["FuzzyEq"]
       88 CALL                             R5 2 1
       89 JUMPIF                           R5 ; [+38]
       90 GETUPVAL                         R6 2
       91 GETTABLEKS                       R5 R6 K16 ["reportFailure"]
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R7 R8 K17 ["ErrorType"]
       96 GETTABLEKS                       R6 R7 K25 ["validateWrapTextureTransfer_InvalidMaxBound"]
       98 LOADNIL                          R7
       99 MOVE                             R8 R1
      100 CALL                             R5 3 0
      101 LOADB                            R5 0
      102 NEWTABLE                         R6 0 1
      104 GETIMPORT                        R7 K7 [string.format]
      106 LOADK                            R8 K26 ["%s.UVMaxBound [%s] does not match required UVMaxBound of [%s]"]
      107 NAMECALL                         R9 R4 K20 ["GetFullName"]
      109 CALL                             R9 1 1
      110 GETTABLEKS                       R11 R4 K23 ["UVMaxBound"]
      112 FASTCALL1                        TOSTRING R11 ; [+2]
      113 GETIMPORT                        R10 K22 [tostring]
      115 CALL                             R10 1 1
      116 GETTABLEKS                       R13 R3 K13 ["WrapTextureTransferUVBounds"]
      118 GETTABLEKS                       R12 R13 K24 ["MaxBound"]
      120 FASTCALL1                        TOSTRING R12 ; [+2]
      121 GETIMPORT                        R11 K22 [tostring]
      123 CALL                             R11 1 1
      124 CALL                             R7 4 -1
      125 SETLIST                          R6 R7 -1 [1]
      127 RETURN                           R5 2
      128 GETUPVAL                         R6 2
      129 GETTABLEKS                       R5 R6 K27 ["recordScriptTime"]
      131 GETIMPORT                        R7 K29 [script]
      133 GETTABLEKS                       R6 R7 K9 ["Name"]
      135 MOVE                             R7 R2
      136 MOVE                             R8 R1
      137 CALL                             R5 3 0
      138 LOADB                            R5 1
      139 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Constants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["WrapTargetCageUVReferenceValues"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R7 R1 K12 ["util"]
       32 GETTABLEKS                       R6 R7 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K8 [require]
       37 GETTABLEKS                       R8 R1 K12 ["util"]
       39 GETTABLEKS                       R7 R8 K14 ["pcallDeferred"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K8 [require]
       44 GETTABLEKS                       R9 R1 K12 ["util"]
       46 GETTABLEKS                       R8 R9 K15 ["getEditableMeshFromContext"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K16 [PROTO_1]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R9 K17 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R2
       59 RETURN                           R9 1
