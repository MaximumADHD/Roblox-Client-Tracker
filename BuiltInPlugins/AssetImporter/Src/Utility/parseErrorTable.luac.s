PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+7]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K3 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K4 ["table"] ; [+15]
       15 JUMPIFNOTEQKS                    R0 K5 ["Could not read file content"] ; [+7]
       17 LOADK                            R6 K6 ["Error"]
       18 LOADK                            R7 K7 ["FileOpenError"]
       19 NAMECALL                         R4 R1 K8 ["getText"]
       21 CALL                             R4 3 -1
       22 RETURN                           R4 -1
       23 LOADK                            R6 K9 ["HttpError"]
       24 LOADK                            R7 K10 ["500"]
       25 NAMECALL                         R4 R1 K8 ["getText"]
       27 CALL                             R4 3 -1
       28 RETURN                           R4 -1
       29 LOADNIL                          R4
       30 GETIMPORT                        R5 K12 [next]
       32 GETTABLEKS                       R6 R3 K13 ["httpResponse"]
       34 CALL                             R5 1 1
       35 JUMPIFEQKNIL                     R5 ; [+10]
       37 GETUPVAL                         R5 1
       38 MOVE                             R6 R1
       39 LOADK                            R7 K9 ["HttpError"]
       40 GETTABLEKS                       R8 R3 K13 ["httpResponse"]
       42 GETTABLEKS                       R8 R8 K14 ["statusCode"]
       44 CALL                             R5 3 1
       45 MOVE                             R4 R5
       46 GETIMPORT                        R5 K17 [string.find]
       48 GETTABLEKS                       R6 R3 K18 ["simpleErrorMessage"]
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R7 R7 K19 ["ErrorCode"]
       53 GETTABLEKS                       R7 R7 K20 ["CorruptedFile"]
       55 CALL                             R5 2 1
       56 JUMPIFNOT                        R5 ; [+6]
       57 LOADK                            R7 K21 ["ParseError"]
       58 LOADK                            R8 K20 ["CorruptedFile"]
       59 NAMECALL                         R5 R1 K8 ["getText"]
       61 CALL                             R5 3 -1
       62 RETURN                           R5 -1
       63 GETTABLEKS                       R5 R3 K22 ["reason"]
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K19 ["ErrorCode"]
       68 GETTABLEKS                       R6 R6 K23 ["AssetDependencyError"]
       70 JUMPIFNOTEQ                      R5 R6 ; [+10]
       72 GETUPVAL                         R5 1
       73 MOVE                             R6 R1
       74 LOADK                            R7 K9 ["HttpError"]
       75 LOADK                            R8 K24 ["DependenciesLimitExceeded"]
       76 GETTABLEKS                       R9 R3 K25 ["metadata"]
       78 CALL                             R5 4 1
       79 MOVE                             R4 R5
       80 JUMP                             ; [+45]
       81 GETIMPORT                        R5 K17 [string.find]
       83 GETTABLEKS                       R6 R3 K18 ["simpleErrorMessage"]
       85 GETUPVAL                         R7 2
       86 GETTABLEKS                       R7 R7 K19 ["ErrorCode"]
       88 GETTABLEKS                       R7 R7 K26 ["ModerationError"]
       90 CALL                             R5 2 1
       91 JUMPIFNOT                        R5 ; [+7]
       92 GETUPVAL                         R5 1
       93 MOVE                             R6 R1
       94 LOADK                            R7 K9 ["HttpError"]
       95 LOADK                            R8 K27 ["UploadResultBadIdParse"]
       96 CALL                             R5 3 1
       97 MOVE                             R4 R5
       98 JUMP                             ; [+27]
       99 GETIMPORT                        R5 K17 [string.find]
      101 GETTABLEKS                       R6 R3 K18 ["simpleErrorMessage"]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R7 R7 K19 ["ErrorCode"]
      106 GETTABLEKS                       R7 R7 K28 ["ImageResolutionError"]
      108 CALL                             R5 2 1
      109 JUMPIFNOT                        R5 ; [+16]
      110 DUPTABLE                         R5 K30 [{"pixelLimit"}]
      111 GETIMPORT                        R6 K32 [string.match]
      113 GETTABLEKS                       R7 R3 K18 ["simpleErrorMessage"]
      115 LOADK                            R8 K33 ["(%d+)%s+pixels"]
      116 CALL                             R6 2 1
      117 SETTABLEKS                       R6 R5 K29 ["pixelLimit"]
      119 GETUPVAL                         R6 1
      120 MOVE                             R7 R1
      121 LOADK                            R8 K9 ["HttpError"]
      122 LOADK                            R9 K34 ["ImageResolution"]
      123 MOVE                             R10 R5
      124 CALL                             R6 4 1
      125 MOVE                             R4 R6
      126 JUMPIFNOT                        R4 ; [+2]
      127 MOVE                             R5 R4
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R5 R3 K18 ["simpleErrorMessage"]
      131 MOVE                             R7 R5
      132 LOADK                            R8 K35 ["\n"]
      133 LOADK                            R11 K36 ["Upload"]
      134 LOADK                            R12 K37 ["OperationId"]
      135 DUPTABLE                         R13 K39 [{"operationId"}]
      136 GETTABLEKS                       R14 R3 K38 ["operationId"]
      138 SETTABLEKS                       R14 R13 K38 ["operationId"]
      140 NAMECALL                         R9 R1 K8 ["getText"]
      142 CALL                             R9 4 1
      143 CONCAT                           R6 R7 R9
      144 RETURN                           R6 1

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
       40 SETGLOBAL                        R5 K14 ["parseErrorTable"]
       42 GETGLOBAL                        R5 K14 ["parseErrorTable"]
       44 RETURN                           R5 1
