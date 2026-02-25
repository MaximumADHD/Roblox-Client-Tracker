PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 0
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+18]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K0 ["SCREENS"]
       15 GETTABLEKS                       R4 R5 K1 ["UPLOADING_ASSET"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K2 ["dispatch"]
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 2
       22 GETUPVAL                         R3 5
       23 GETUPVAL                         R4 6
       24 CALL                             R3 1 -1
       25 NAMECALL                         R1 R1 K2 ["dispatch"]
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["thumbnail"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R0 2 1
        8 JUMPIF                           R0 ; [+18]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R4 R5 K1 ["SCREENS"]
       14 GETTABLEKS                       R3 R4 K2 ["UPLOADING_ASSET"]
       16 CALL                             R2 1 -1
       17 NAMECALL                         R0 R0 K3 ["dispatch"]
       19 CALL                             R0 -1 0
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 6
       23 CALL                             R2 1 -1
       24 NAMECALL                         R0 R0 K3 ["dispatch"]
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETTABLEKS                       R1 R0 K0 ["OverallSuccess"]
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K1 ["assetMedia"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 1
       11 LOADB                            R3 0
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+18]
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R5 R6 K2 ["SCREENS"]
       19 GETTABLEKS                       R4 R5 K3 ["UPLOADING_ASSET"]
       21 CALL                             R3 1 -1
       22 NAMECALL                         R1 R1 K4 ["dispatch"]
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 3
       26 GETUPVAL                         R3 6
       27 GETUPVAL                         R4 0
       28 CALL                             R3 1 -1
       29 NAMECALL                         R1 R1 K4 ["dispatch"]
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 DUPTABLE                         R2 K2 [{"thumbnail", "assetMedia"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["thumbnail"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["assetMedia"]
        8 NAMECALL                         R4 R0 K3 ["getState"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R3 R4 K4 ["allowedAssetTypesForRelease"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          REF R1
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          REF R1
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          REF R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R7 R8 K5 ["iconFile"]
       40 JUMPIFNOT                        R7 ; [+18]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R7 R8 K6 ["networkInterface"]
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R9 R10 K7 ["assetId"]
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R10 R11 K5 ["iconFile"]
       50 NAMECALL                         R7 R7 K8 ["uploadAssetThumbnail"]
       52 CALL                             R7 3 1
       53 MOVE                             R9 R5
       54 MOVE                             R10 R5
       55 NAMECALL                         R7 R7 K9 ["andThen"]
       57 CALL                             R7 3 0
       58 JUMP                             ; [+24]
       59 LOADB                            R7 1
       60 SETTABLEKS                       R7 R2 K0 ["thumbnail"]
       62 GETUPVAL                         R7 0
       63 MOVE                             R8 R2
       64 LOADB                            R9 0
       65 CALL                             R7 2 1
       66 JUMPIF                           R7 ; [+16]
       67 GETUPVAL                         R9 1
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R11 R12 K10 ["SCREENS"]
       71 GETTABLEKS                       R10 R11 K11 ["UPLOADING_ASSET"]
       73 CALL                             R9 1 -1
       74 NAMECALL                         R7 R0 K12 ["dispatch"]
       76 CALL                             R7 -1 0
       77 GETUPVAL                         R9 3
       78 MOVE                             R10 R1
       79 CALL                             R9 1 -1
       80 NAMECALL                         R7 R0 K12 ["dispatch"]
       82 CALL                             R7 -1 0
       83 GETUPVAL                         R8 4
       84 GETTABLEKS                       R7 R8 K13 ["assetMediaUpdateData"]
       86 JUMPIFNOT                        R7 ; [+22]
       87 GETUPVAL                         R9 5
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R10 R11 K6 ["networkInterface"]
       91 GETUPVAL                         R12 4
       92 GETTABLEKS                       R11 R12 K7 ["assetId"]
       94 GETUPVAL                         R13 4
       95 GETTABLEKS                       R12 R13 K13 ["assetMediaUpdateData"]
       97 GETUPVAL                         R14 4
       98 GETTABLEKS                       R13 R14 K14 ["assetTypeEnum"]
      100 CALL                             R9 4 -1
      101 NAMECALL                         R7 R0 K12 ["dispatch"]
      103 CALL                             R7 -1 1
      104 MOVE                             R9 R6
      105 NAMECALL                         R7 R7 K9 ["andThen"]
      107 CALL                             R7 2 0
      108 JUMP                             ; [+24]
      109 LOADB                            R7 1
      110 SETTABLEKS                       R7 R2 K1 ["assetMedia"]
      112 GETUPVAL                         R7 0
      113 MOVE                             R8 R2
      114 LOADB                            R9 0
      115 CALL                             R7 2 1
      116 JUMPIF                           R7 ; [+16]
      117 GETUPVAL                         R9 1
      118 GETUPVAL                         R12 2
      119 GETTABLEKS                       R11 R12 K10 ["SCREENS"]
      121 GETTABLEKS                       R10 R11 K11 ["UPLOADING_ASSET"]
      123 CALL                             R9 1 -1
      124 NAMECALL                         R7 R0 K12 ["dispatch"]
      126 CALL                             R7 -1 0
      127 GETUPVAL                         R9 3
      128 MOVE                             R10 R1
      129 CALL                             R9 1 -1
      130 NAMECALL                         R7 R0 K12 ["dispatch"]
      132 CALL                             R7 -1 0
      133 GETUPVAL                         R7 0
      134 MOVE                             R8 R2
      135 LOADB                            R9 0
      136 CALL                             R7 2 1
      137 JUMPIF                           R7 ; [+16]
      138 GETUPVAL                         R9 1
      139 GETUPVAL                         R12 2
      140 GETTABLEKS                       R11 R12 K10 ["SCREENS"]
      142 GETTABLEKS                       R10 R11 K11 ["UPLOADING_ASSET"]
      144 CALL                             R9 1 -1
      145 NAMECALL                         R7 R0 K12 ["dispatch"]
      147 CALL                             R7 -1 0
      148 GETUPVAL                         R9 3
      149 MOVE                             R10 R1
      150 CALL                             R9 1 -1
      151 NAMECALL                         R7 R0 K12 ["dispatch"]
      153 CALL                             R7 -1 0
      154 CLOSEUPVALS                      R1
      155 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R5 R0 K3 ["Src"]
       19 GETTABLEKS                       R4 R5 K4 ["Util"]
       21 GETTABLEKS                       R3 R4 K7 ["DebugFlags"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R4 R1 K8 ["AssetConfigConstants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K9 ["AssetConfigUtil"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R6 R0 K3 ["Src"]
       36 GETTABLEKS                       R5 R6 K10 ["Actions"]
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R7 R5 K11 ["SetCurrentScreen"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K6 [require]
       45 GETTABLEKS                       R8 R5 K12 ["UploadResult"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R12 R0 K3 ["Src"]
       52 GETTABLEKS                       R11 R12 K13 ["Networking"]
       54 GETTABLEKS                       R10 R11 K14 ["Requests"]
       56 GETTABLEKS                       R9 R10 K15 ["UpdateAssetMediaDataRequest"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R0 K16 ["Packages"]
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R9 K17 ["Framework"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R9 K18 ["Dash"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R11 K19 ["includes"]
       73 DUPCLOSURE                       R13 K20 [PROTO_4]
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 RETURN                           R13 1
