PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+7]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFEQKS                       R4 K4 ["table"] ; [+15]
       14 JUMPIFNOTEQKS                    R0 K5 ["Could not read file content"] ; [+7]
       16 LOADK                            R6 K6 ["Error"]
       17 LOADK                            R7 K7 ["FileOpenError"]
       18 NAMECALL                         R4 R1 K8 ["getText"]
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1
       22 LOADK                            R6 K9 ["HttpError"]
       23 LOADK                            R7 K10 ["500"]
       24 NAMECALL                         R4 R1 K8 ["getText"]
       26 CALL                             R4 3 -1
       27 RETURN                           R4 -1
       28 LOADNIL                          R4
       29 GETIMPORT                        R5 K12 [next]
       31 GETTABLEKS                       R6 R3 K13 ["httpResponse"]
       33 CALL                             R5 1 1
       34 JUMPIFEQKNIL                     R5 ; [+10]
       36 GETUPVAL                         R5 1
       37 MOVE                             R6 R1
       38 LOADK                            R7 K9 ["HttpError"]
       39 GETTABLEKS                       R8 R3 K13 ["httpResponse"]
       41 GETTABLEKS                       R8 R8 K14 ["statusCode"]
       43 CALL                             R5 3 1
       44 MOVE                             R4 R5
       45 GETIMPORT                        R5 K17 [string.find]
       47 GETTABLEKS                       R6 R3 K18 ["simpleErrorMessage"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K19 ["ErrorCode"]
       52 GETTABLEKS                       R7 R7 K20 ["CorruptedFile"]
       54 CALL                             R5 2 1
       55 JUMPIFNOT                        R5 ; [+6]
       56 LOADK                            R7 K21 ["ParseError"]
       57 LOADK                            R8 K20 ["CorruptedFile"]
       58 NAMECALL                         R5 R1 K8 ["getText"]
       60 CALL                             R5 3 -1
       61 RETURN                           R5 -1
       62 GETTABLEKS                       R5 R3 K22 ["reason"]
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R6 R6 K19 ["ErrorCode"]
       67 GETTABLEKS                       R6 R6 K23 ["AssetDependencyError"]
       69 JUMPIFNOTEQ                      R5 R6 ; [+10]
       71 GETUPVAL                         R5 1
       72 MOVE                             R6 R1
       73 LOADK                            R7 K9 ["HttpError"]
       74 LOADK                            R8 K24 ["DependenciesLimitExceeded"]
       75 GETTABLEKS                       R9 R3 K25 ["metadata"]
       77 CALL                             R5 4 1
       78 MOVE                             R4 R5
       79 JUMP                             ; [+45]
       80 GETIMPORT                        R5 K17 [string.find]
       82 GETTABLEKS                       R6 R3 K18 ["simpleErrorMessage"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K19 ["ErrorCode"]
       87 GETTABLEKS                       R7 R7 K26 ["ModerationError"]
       89 CALL                             R5 2 1
       90 JUMPIFNOT                        R5 ; [+7]
       91 GETUPVAL                         R5 1
       92 MOVE                             R6 R1
       93 LOADK                            R7 K9 ["HttpError"]
       94 LOADK                            R8 K27 ["UploadResultBadIdParse"]
       95 CALL                             R5 3 1
       96 MOVE                             R4 R5
       97 JUMP                             ; [+27]
       98 GETIMPORT                        R5 K17 [string.find]
      100 GETTABLEKS                       R6 R3 K18 ["simpleErrorMessage"]
      102 GETUPVAL                         R7 2
      103 GETTABLEKS                       R7 R7 K19 ["ErrorCode"]
      105 GETTABLEKS                       R7 R7 K28 ["ImageResolutionError"]
      107 CALL                             R5 2 1
      108 JUMPIFNOT                        R5 ; [+16]
      109 DUPTABLE                         R5 K30 [{"pixelLimit"}]
      110 GETIMPORT                        R6 K32 [string.match]
      112 GETTABLEKS                       R7 R3 K18 ["simpleErrorMessage"]
      114 LOADK                            R8 K33 ["(%d+)%s+pixels"]
      115 CALL                             R6 2 1
      116 SETTABLEKS                       R6 R5 K29 ["pixelLimit"]
      118 GETUPVAL                         R6 1
      119 MOVE                             R7 R1
      120 LOADK                            R8 K9 ["HttpError"]
      121 LOADK                            R9 K34 ["ImageResolution"]
      122 MOVE                             R10 R5
      123 CALL                             R6 4 1
      124 MOVE                             R4 R6
      125 JUMPIFNOT                        R4 ; [+2]
      126 MOVE                             R5 R4
      127 JUMP                             ; [+2]
      128 GETTABLEKS                       R5 R3 K18 ["simpleErrorMessage"]
      130 MOVE                             R7 R5
      131 LOADK                            R8 K35 ["\n"]
      132 LOADK                            R11 K36 ["Upload"]
      133 LOADK                            R12 K37 ["OperationId"]
      134 DUPTABLE                         R13 K39 [{"operationId"}]
      135 GETTABLEKS                       R14 R3 K38 ["operationId"]
      137 SETTABLEKS                       R14 R13 K38 ["operationId"]
      139 NAMECALL                         R9 R1 K8 ["getText"]
      141 CALL                             R9 4 1
      142 CONCAT                           R6 R7 R9
      143 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["HttpService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Utility"]
       33 GETTABLEKS                       R5 R5 K12 ["GetLocalizedString"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K13 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 SETGLOBAL                        R5 K14 ["parseErrorMessage"]
       42 GETGLOBAL                        R5 K14 ["parseErrorMessage"]
       44 RETURN                           R5 1
