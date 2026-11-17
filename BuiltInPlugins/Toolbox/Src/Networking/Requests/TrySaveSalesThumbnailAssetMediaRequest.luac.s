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
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
       15 GETTABLEKS                       R4 R4 K1 ["UPLOADING_ASSET"]
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
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R3 R3 K1 ["SCREENS"]
       14 GETTABLEKS                       R3 R3 K2 ["UPLOADING_ASSET"]
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
       16 GETUPVAL                         R4 5
       17 GETTABLEKS                       R4 R4 K2 ["SCREENS"]
       19 GETTABLEKS                       R4 R4 K3 ["UPLOADING_ASSET"]
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
        1 DUPTABLE                         R2 K3 [{[1] = False, ["assetMedia"] = False}]
        2 NAMECALL                         R3 R0 K4 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K5 ["allowedAssetTypesForRelease"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          REF R1
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          REF R1
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          REF R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R7 R7 K6 ["iconFile"]
       34 JUMPIFNOT                        R7 ; [+18]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K7 ["networkInterface"]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K8 ["assetId"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K6 ["iconFile"]
       44 NAMECALL                         R7 R7 K9 ["uploadAssetThumbnail"]
       46 CALL                             R7 3 1
       47 MOVE                             R9 R5
       48 MOVE                             R10 R5
       49 NAMECALL                         R7 R7 K10 ["andThen"]
       51 CALL                             R7 3 0
       52 JUMP                             ; [+24]
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R2 K0 ["thumbnail"]
       56 GETUPVAL                         R7 0
       57 MOVE                             R8 R2
       58 LOADB                            R9 0
       59 CALL                             R7 2 1
       60 JUMPIF                           R7 ; [+16]
       61 GETUPVAL                         R9 1
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K11 ["SCREENS"]
       65 GETTABLEKS                       R10 R10 K12 ["UPLOADING_ASSET"]
       67 CALL                             R9 1 -1
       68 NAMECALL                         R7 R0 K13 ["dispatch"]
       70 CALL                             R7 -1 0
       71 GETUPVAL                         R9 3
       72 MOVE                             R10 R1
       73 CALL                             R9 1 -1
       74 NAMECALL                         R7 R0 K13 ["dispatch"]
       76 CALL                             R7 -1 0
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R7 R7 K14 ["assetMediaUpdateData"]
       80 JUMPIFNOT                        R7 ; [+22]
       81 GETUPVAL                         R9 5
       82 GETUPVAL                         R10 4
       83 GETTABLEKS                       R10 R10 K7 ["networkInterface"]
       85 GETUPVAL                         R11 4
       86 GETTABLEKS                       R11 R11 K8 ["assetId"]
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R12 R12 K14 ["assetMediaUpdateData"]
       91 GETUPVAL                         R13 4
       92 GETTABLEKS                       R13 R13 K15 ["assetTypeEnum"]
       94 CALL                             R9 4 -1
       95 NAMECALL                         R7 R0 K13 ["dispatch"]
       97 CALL                             R7 -1 1
       98 MOVE                             R9 R6
       99 NAMECALL                         R7 R7 K10 ["andThen"]
      101 CALL                             R7 2 0
      102 JUMP                             ; [+24]
      103 LOADB                            R7 1
      104 SETTABLEKS                       R7 R2 K2 ["assetMedia"]
      106 GETUPVAL                         R7 0
      107 MOVE                             R8 R2
      108 LOADB                            R9 0
      109 CALL                             R7 2 1
      110 JUMPIF                           R7 ; [+16]
      111 GETUPVAL                         R9 1
      112 GETUPVAL                         R10 2
      113 GETTABLEKS                       R10 R10 K11 ["SCREENS"]
      115 GETTABLEKS                       R10 R10 K12 ["UPLOADING_ASSET"]
      117 CALL                             R9 1 -1
      118 NAMECALL                         R7 R0 K13 ["dispatch"]
      120 CALL                             R7 -1 0
      121 GETUPVAL                         R9 3
      122 MOVE                             R10 R1
      123 CALL                             R9 1 -1
      124 NAMECALL                         R7 R0 K13 ["dispatch"]
      126 CALL                             R7 -1 0
      127 GETUPVAL                         R7 0
      128 MOVE                             R8 R2
      129 LOADB                            R9 0
      130 CALL                             R7 2 1
      131 JUMPIF                           R7 ; [+16]
      132 GETUPVAL                         R9 1
      133 GETUPVAL                         R10 2
      134 GETTABLEKS                       R10 R10 K11 ["SCREENS"]
      136 GETTABLEKS                       R10 R10 K12 ["UPLOADING_ASSET"]
      138 CALL                             R9 1 -1
      139 NAMECALL                         R7 R0 K13 ["dispatch"]
      141 CALL                             R7 -1 0
      142 GETUPVAL                         R9 3
      143 MOVE                             R10 R1
      144 CALL                             R9 1 -1
      145 NAMECALL                         R7 R0 K13 ["dispatch"]
      147 CALL                             R7 -1 0
      148 CLOSEUPVALS                      R1
      149 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R0 K3 ["Src"]
       19 GETTABLEKS                       R3 R3 K4 ["Util"]
       21 GETTABLEKS                       R3 R3 K7 ["DebugFlags"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R4 R1 K8 ["AssetConfigConstants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K9 ["AssetConfigUtil"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R0 K3 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Actions"]
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R7 R5 K11 ["SetCurrentScreen"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K6 [require]
       45 GETTABLEKS                       R8 R5 K12 ["UploadResult"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R0 K3 ["Src"]
       52 GETTABLEKS                       R9 R9 K13 ["Networking"]
       54 GETTABLEKS                       R9 R9 K14 ["Requests"]
       56 GETTABLEKS                       R9 R9 K15 ["UpdateAssetMediaDataRequest"]
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
