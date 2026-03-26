PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
        7 GETIMPORT                        R3 K4 [table.find]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 JUMPIFEQ                         R0 R1 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+7]
        7 GETIMPORT                        R1 K4 [table.concat]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 [" or "]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K1 [type]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       20 RETURN                           R0 1
       21 LOADK                            R1 K7 ["*"]
       22 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R4 1
        1 SETTABLE                         R4 R2 R0
        2 GETTABLEKS                       R4 R1 K0 ["_children"]
        4 JUMPIF                           R4 ; [+2]
        5 NEWTABLE                         R4 0 0
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 LOADB                            R9 0
       11 NAMECALL                         R10 R0 K1 ["GetChildren"]
       13 CALL                             R10 1 3
       14 FORGPREP                         R10
       15 GETTABLE                         R15 R2 R14
       16 JUMPIFNOTEQKNIL                  R15 ; [+45]
       18 GETTABLEKS                       R15 R14 K2 ["ClassName"]
       20 GETTABLEKS                       R16 R8 K2 ["ClassName"]
       22 JUMPIFNOTEQ                      R15 R16 ; [+39]
       24 GETTABLEKS                       R15 R8 K3 ["Name"]
       26 JUMPIFEQKNIL                     R15 ; [+27]
       28 GETTABLEKS                       R16 R8 K3 ["Name"]
       30 GETTABLEKS                       R17 R14 K3 ["Name"]
       32 FASTCALL1                        TYPE R16 ; [+3]
       33 MOVE                             R19 R16
       34 GETIMPORT                        R18 K5 [type]
       36 CALL                             R18 1 1
       37 JUMPIFNOTEQKS                    R18 K6 ["table"] ; [+11]
       39 GETIMPORT                        R18 K8 [table.find]
       41 MOVE                             R19 R16
       42 MOVE                             R20 R17
       43 CALL                             R18 2 1
       44 JUMPIFNOTEQKNIL                  R18 ; [+2]
       46 LOADB                            R15 0 +1
       47 LOADB                            R15 1
       48 JUMP                             ; [+4]
       49 JUMPIFEQ                         R16 R17 ; [+2]
       51 LOADB                            R15 0 +1
       52 LOADB                            R15 1
       53 JUMPIFNOT                        R15 ; [+8]
       54 GETUPVAL                         R15 0
       55 MOVE                             R16 R14
       56 MOVE                             R17 R8
       57 MOVE                             R18 R2
       58 MOVE                             R19 R3
       59 CALL                             R15 4 0
       60 LOADB                            R9 1
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R10 2 ; [-48]
       64 JUMPIF                           R9 ; [+49]
       65 GETTABLEKS                       R10 R8 K9 ["_optional"]
       67 JUMPIF                           R10 ; [+46]
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R13 R14 K10 ["Keys"]
       71 GETTABLEKS                       R12 R13 K11 ["AssetSchemaMissingItem"]
       73 DUPTABLE                         R13 K15 [{"ParentPath", "ExpectedClass", "ExpectedName"}]
       74 NAMECALL                         R14 R0 K16 ["GetFullName"]
       76 CALL                             R14 1 1
       77 SETTABLEKS                       R14 R13 K12 ["ParentPath"]
       79 GETTABLEKS                       R14 R8 K2 ["ClassName"]
       81 SETTABLEKS                       R14 R13 K13 ["ExpectedClass"]
       83 GETTABLEKS                       R15 R8 K3 ["Name"]
       85 FASTCALL1                        TYPE R15 ; [+3]
       86 MOVE                             R17 R15
       87 GETIMPORT                        R16 K5 [type]
       89 CALL                             R16 1 1
       90 JUMPIFNOTEQKS                    R16 K6 ["table"] ; [+8]
       92 GETIMPORT                        R16 K18 [table.concat]
       94 MOVE                             R17 R15
       95 LOADK                            R18 K19 [" or "]
       96 CALL                             R16 2 1
       97 MOVE                             R14 R16
       98 JUMP                             ; [+10]
       99 FASTCALL1                        TYPE R15 ; [+3]
      100 MOVE                             R17 R15
      101 GETIMPORT                        R16 K5 [type]
      103 CALL                             R16 1 1
      104 JUMPIFNOTEQKS                    R16 K20 ["string"] ; [+3]
      106 MOVE                             R14 R15
      107 JUMP                             ; [+1]
      108 LOADK                            R14 K21 ["*"]
      109 SETTABLEKS                       R14 R13 K14 ["ExpectedName"]
      111 NAMECALL                         R10 R3 K22 ["fail"]
      113 CALL                             R10 3 0
      114 FORGLOOP                         R4 2 ; [-105]
      116 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 NAMECALL                         R5 R0 K2 ["GetDescendants"]
        6 CALL                             R5 1 -1
        7 CALL                             R4 -1 3
        8 FORGPREP_NEXT                    R4
        9 GETTABLE                         R9 R1 R8
       10 JUMPIFNOTEQKNIL                  R9 ; [+9]
       12 MOVE                             R10 R3
       13 NAMECALL                         R11 R8 K3 ["GetFullName"]
       15 CALL                             R11 1 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R9 K6 [table.insert]
       19 CALL                             R9 -1 0
       20 FORGLOOP                         R4 2 ; [-12]
       22 LENGTH                           R4 R3
       23 LOADN                            R5 0
       24 JUMPIFNOTLT                      R5 R4 ; [+17]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K7 ["Keys"]
       29 GETTABLEKS                       R6 R7 K8 ["AssetSchemaUnexpectedItems"]
       31 DUPTABLE                         R7 K10 [{"UnexpectedDescendantPaths"}]
       32 GETIMPORT                        R8 K12 [table.concat]
       34 MOVE                             R9 R3
       35 LOADK                            R10 K13 [", "]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K9 ["UnexpectedDescendantPaths"]
       39 NAMECALL                         R4 R2 K14 ["fail"]
       41 CALL                             R4 3 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadCategory"]
        4 GETTABLEKS                       R4 R1 K2 ["uploadEnum"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+10]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R8 R9 K3 ["Keys"]
       11 GETTABLEKS                       R7 R8 K4 ["SelectionCountNotOne"]
       13 NAMECALL                         R5 R0 K5 ["fail"]
       15 CALL                             R5 2 0
       16 RETURN                           R0 0
       17 LOADNIL                          R5
       18 GETTABLEKS                       R6 R4 K6 ["bundleType"]
       20 JUMPIFNOT                        R6 ; [+9]
       21 GETTABLEKS                       R6 R1 K7 ["entrypointInput"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R7 R8 K8 ["generateBundleSchema"]
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 MOVE                             R5 R7
       29 JUMP                             ; [+9]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K9 ["generateAssetSchema"]
       33 MOVE                             R7 R3
       34 GETTABLEKS                       R8 R4 K10 ["assetType"]
       36 MOVE                             R9 R2
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 NEWTABLE                         R6 0 0
       41 GETTABLEKS                       R7 R5 K11 ["ClassName"]
       43 GETTABLEKS                       R8 R2 K11 ["ClassName"]
       45 JUMPIFEQ                         R7 R8 ; [+19]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K3 ["Keys"]
       50 GETTABLEKS                       R9 R10 K12 ["AssetSchemaWrongRootClass"]
       52 DUPTABLE                         R10 K15 [{"RootClass", "ExpectedClass"}]
       53 GETTABLEKS                       R11 R2 K11 ["ClassName"]
       55 SETTABLEKS                       R11 R10 K13 ["RootClass"]
       57 GETTABLEKS                       R11 R5 K11 ["ClassName"]
       59 SETTABLEKS                       R11 R10 K14 ["ExpectedClass"]
       61 NAMECALL                         R7 R0 K5 ["fail"]
       63 CALL                             R7 3 0
       64 RETURN                           R0 0
       65 GETTABLEKS                       R7 R5 K16 ["Name"]
       67 JUMPIFEQKNIL                     R7 ; [+45]
       69 GETTABLEKS                       R8 R5 K16 ["Name"]
       71 GETTABLEKS                       R9 R2 K16 ["Name"]
       73 FASTCALL1                        TYPE R8 ; [+3]
       74 MOVE                             R11 R8
       75 GETIMPORT                        R10 K18 [type]
       77 CALL                             R10 1 1
       78 JUMPIFNOTEQKS                    R10 K19 ["table"] ; [+11]
       80 GETIMPORT                        R10 K21 [table.find]
       82 MOVE                             R11 R8
       83 MOVE                             R12 R9
       84 CALL                             R10 2 1
       85 JUMPIFNOTEQKNIL                  R10 ; [+2]
       87 LOADB                            R7 0 +1
       88 LOADB                            R7 1
       89 JUMP                             ; [+4]
       90 JUMPIFEQ                         R8 R9 ; [+2]
       92 LOADB                            R7 0 +1
       93 LOADB                            R7 1
       94 JUMPIF                           R7 ; [+18]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R10 R11 K3 ["Keys"]
       98 GETTABLEKS                       R9 R10 K22 ["AssetSchemaWrongRootName"]
      100 DUPTABLE                         R10 K25 [{"RootName", "ExpectedName"}]
      101 GETTABLEKS                       R11 R2 K16 ["Name"]
      103 SETTABLEKS                       R11 R10 K23 ["RootName"]
      105 GETTABLEKS                       R11 R5 K16 ["Name"]
      107 SETTABLEKS                       R11 R10 K24 ["ExpectedName"]
      109 NAMECALL                         R7 R0 K5 ["fail"]
      111 CALL                             R7 3 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R7 2
      114 MOVE                             R8 R2
      115 MOVE                             R9 R5
      116 MOVE                             R10 R6
      117 MOVE                             R11 R0
      118 CALL                             R7 4 0
      119 GETUPVAL                         R7 3
      120 MOVE                             R8 R2
      121 MOVE                             R9 R6
      122 MOVE                             R10 R0
      123 CALL                             R7 3 0
      124 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R5 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K5 ["util"]
       32 GETTABLEKS                       R5 R6 K10 ["CreateExpectedSchema"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K8 ["validationSystem"]
       39 GETTABLEKS                       R6 R7 K11 ["ErrorSourceStrings"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 4 0
       44 GETTABLEKS                       R7 R2 K12 ["AllUploadCategories"]
       46 SETTABLEKS                       R7 R6 K13 ["categories"]
       48 NEWTABLE                         R7 0 4
       50 GETTABLEKS                       R9 R3 K14 ["SharedDataMember"]
       52 GETTABLEKS                       R8 R9 K15 ["entrypointInput"]
       54 GETTABLEKS                       R10 R3 K14 ["SharedDataMember"]
       56 GETTABLEKS                       R9 R10 K16 ["rootInstance"]
       58 GETTABLEKS                       R11 R3 K14 ["SharedDataMember"]
       60 GETTABLEKS                       R10 R11 K17 ["uploadCategory"]
       62 GETTABLEKS                       R12 R3 K14 ["SharedDataMember"]
       64 GETTABLEKS                       R11 R12 K18 ["uploadEnum"]
       66 SETLIST                          R7 R8 4 [1]
       68 SETTABLEKS                       R7 R6 K19 ["requiredData"]
       70 DUPCLOSURE                       R7 K20 [PROTO_0]
       71 DUPCLOSURE                       R8 K21 [PROTO_1]
       72 DUPCLOSURE                       R9 K22 [PROTO_2]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R5
       75 DUPCLOSURE                       R10 K23 [PROTO_3]
       76 CAPTURE                          VAL R5
       77 DUPCLOSURE                       R11 K24 [PROTO_4]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R11 R6 K25 ["run"]
       84 RETURN                           R6 1
