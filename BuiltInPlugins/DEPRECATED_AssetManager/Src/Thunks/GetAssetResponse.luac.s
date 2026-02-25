PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+16]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETTABLEKS                       R2 R1 K1 ["FinalPage"]
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 1
       13 ADDK                             R3 R4 K2 [1]
       14 SETTABLEKS                       R3 R2 K3 ["pageNumber"]
       16 JUMP                             ; [+15]
       17 GETUPVAL                         R2 2
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K3 ["pageNumber"]
       21 JUMP                             ; [+10]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R3 R1 K4 ["previousPageCursor"]
       25 SETTABLEKS                       R3 R2 K4 ["previousPageCursor"]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R3 R1 K5 ["nextPageCursor"]
       30 SETTABLEKS                       R3 R2 K5 ["nextPageCursor"]
       32 NEWTABLE                         R2 0 0
       34 GETUPVAL                         R4 0
       35 JUMPIFEQKNIL                     R4 ; [+4]
       37 GETTABLEKS                       R3 R1 K6 ["Aliases"]
       39 JUMPIF                           R3 ; [+2]
       40 GETTABLEKS                       R3 R1 K7 ["data"]
       42 GETIMPORT                        R4 K9 [pairs]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 3
       46 FORGPREP_NEXT                    R4
       47 NEWTABLE                         R9 8 0
       49 GETUPVAL                         R10 0
       50 JUMPIFNOT                        R10 ; [+9]
       51 GETTABLEKS                       R10 R8 K10 ["Asset"]
       53 SETTABLEKS                       R10 R9 K11 ["asset"]
       55 GETTABLEKS                       R10 R8 K12 ["TargetId"]
       57 SETTABLEKS                       R10 R9 K13 ["id"]
       59 JUMP                             ; [+1]
       60 MOVE                             R9 R8
       61 GETUPVAL                         R12 3
       62 GETUPVAL                         R13 4
       63 GETTABLE                         R11 R12 R13
       64 GETTABLEKS                       R10 R11 K14 ["AssetType"]
       66 SETTABLEKS                       R10 R9 K15 ["assetType"]
       68 GETUPVAL                         R10 5
       69 SETTABLEKS                       R10 R9 K16 ["layoutOrder"]
       71 GETUPVAL                         R10 5
       72 ADDK                             R10 R10 K2 [1]
       73 SETUPVAL                         R10 5
       74 LOADB                            R10 0
       75 GETUPVAL                         R11 0
       76 JUMPIFNOT                        R11 ; [+28]
       77 GETIMPORT                        R11 K9 [pairs]
       79 GETUPVAL                         R12 0
       80 CALL                             R11 1 3
       81 FORGPREP_NEXT                    R11
       82 JUMPIFNOT                        R15 ; [+18]
       83 GETIMPORT                        R16 K19 [string.find]
       85 GETTABLEKS                       R17 R8 K20 ["Name"]
       87 MOVE                             R18 R14
       88 CALL                             R16 2 1
       89 JUMPIFNOT                        R16 ; [+11]
       90 GETIMPORT                        R16 K22 [string.gsub]
       92 GETTABLEKS                       R17 R8 K20 ["Name"]
       94 MOVE                             R18 R14
       95 LOADK                            R19 K23 [""]
       96 CALL                             R16 3 1
       97 SETTABLEKS                       R16 R9 K24 ["name"]
       99 LOADB                            R10 1
      100 JUMP                             ; [+1]
      101 JUMPIF                           R10 ; [+2]
      102 FORGLOOP                         R11 2 ; [-21]
      104 JUMPIFNOT                        R10 ; [+23]
      105 GETUPVAL                         R13 6
      106 GETTABLEKS                       R12 R13 K25 ["Dictionary"]
      108 GETTABLEKS                       R11 R12 K26 ["join"]
      110 MOVE                             R12 R2
      111 NEWTABLE                         R13 1 0
      113 GETUPVAL                         R15 0
      114 JUMPIFEQKNIL                     R15 ; [+4]
      116 GETTABLEKS                       R14 R9 K13 ["id"]
      118 JUMPIF                           R14 ; [+6]
      119 GETTABLEKS                       R15 R8 K13 ["id"]
      121 FASTCALL1                        TOSTRING R15 ; [+2]
      122 GETIMPORT                        R14 K28 [tostring]
      124 CALL                             R14 1 1
      125 SETTABLE                         R9 R13 R14
      126 CALL                             R11 2 1
      127 MOVE                             R2 R11
      128 FORGLOOP                         R4 2 ; [-82]
      130 GETUPVAL                         R4 2
      131 GETUPVAL                         R7 6
      132 GETTABLEKS                       R6 R7 K25 ["Dictionary"]
      134 GETTABLEKS                       R5 R6 K26 ["join"]
      136 GETUPVAL                         R7 2
      137 GETTABLEKS                       R6 R7 K29 ["assets"]
      139 MOVE                             R7 R2
      140 CALL                             R5 2 1
      141 SETTABLEKS                       R5 R4 K29 ["assets"]
      143 GETUPVAL                         R4 2
      144 GETUPVAL                         R5 5
      145 GETTABLEKS                       R6 R1 K1 ["FinalPage"]
      147 RETURN                           R4 3

PROTO_1:
        0 GETTABLEKS                       R6 R0 K0 ["index"]
        2 JUMPIFNOT                        R6 ; [+4]
        3 GETTABLEKS                       R6 R0 K0 ["index"]
        5 ADDK                             R5 R6 K1 [1]
        6 JUMPIF                           R5 ; [+1]
        7 LOADN                            R5 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R5
       15 CAPTURE                          UPVAL U1
       16 CLOSEUPVALS                      R5
       17 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["Screens"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
