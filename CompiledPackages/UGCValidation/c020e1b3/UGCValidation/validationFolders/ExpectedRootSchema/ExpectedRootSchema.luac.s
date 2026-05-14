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
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+21]
        5 GETTABLEKS                       R4 R1 K0 ["_ignoreDescendants"]
        7 JUMPIFNOT                        R4 ; [+18]
        8 GETTABLEKS                       R6 R1 K1 ["_children"]
       10 NOT                              R5 R6
       11 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       13 LOADK                            R6 K2 ["if _ignoreDescendants is true, there should be no descendants in the schema as they would be ignored anyway"]
       14 GETIMPORT                        R4 K4 [assert]
       16 CALL                             R4 2 0
       17 NAMECALL                         R4 R0 K5 ["GetDescendants"]
       19 CALL                             R4 1 3
       20 FORGPREP                         R4
       21 LOADB                            R9 1
       22 SETTABLE                         R9 R2 R8
       23 FORGLOOP                         R4 2 ; [-3]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R4 R1 K1 ["_children"]
       28 JUMPIF                           R4 ; [+2]
       29 NEWTABLE                         R4 0 0
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 LOADB                            R9 0
       35 NAMECALL                         R10 R0 K6 ["GetChildren"]
       37 CALL                             R10 1 3
       38 FORGPREP                         R10
       39 GETTABLE                         R15 R2 R14
       40 JUMPIFNOTEQKNIL                  R15 ; [+45]
       42 GETTABLEKS                       R15 R14 K7 ["ClassName"]
       44 GETTABLEKS                       R16 R8 K7 ["ClassName"]
       46 JUMPIFNOTEQ                      R15 R16 ; [+39]
       48 GETTABLEKS                       R15 R8 K8 ["Name"]
       50 JUMPIFEQKNIL                     R15 ; [+27]
       52 GETTABLEKS                       R16 R8 K8 ["Name"]
       54 GETTABLEKS                       R17 R14 K8 ["Name"]
       56 FASTCALL1                        TYPE R16 ; [+3]
       57 MOVE                             R19 R16
       58 GETIMPORT                        R18 K10 [type]
       60 CALL                             R18 1 1
       61 JUMPIFNOTEQKS                    R18 K11 ["table"] ; [+11]
       63 GETIMPORT                        R18 K13 [table.find]
       65 MOVE                             R19 R16
       66 MOVE                             R20 R17
       67 CALL                             R18 2 1
       68 JUMPIFNOTEQKNIL                  R18 ; [+2]
       70 LOADB                            R15 0 +1
       71 LOADB                            R15 1
       72 JUMP                             ; [+4]
       73 JUMPIFEQ                         R16 R17 ; [+2]
       75 LOADB                            R15 0 +1
       76 LOADB                            R15 1
       77 JUMPIFNOT                        R15 ; [+8]
       78 GETUPVAL                         R15 1
       79 MOVE                             R16 R14
       80 MOVE                             R17 R8
       81 MOVE                             R18 R2
       82 MOVE                             R19 R3
       83 CALL                             R15 4 0
       84 LOADB                            R9 1
       85 JUMP                             ; [+2]
       86 FORGLOOP                         R10 2 ; [-48]
       88 JUMPIF                           R9 ; [+49]
       89 GETTABLEKS                       R10 R8 K14 ["_optional"]
       91 JUMPIF                           R10 ; [+46]
       92 GETUPVAL                         R12 2
       93 GETTABLEKS                       R12 R12 K15 ["Keys"]
       95 GETTABLEKS                       R12 R12 K16 ["AssetSchemaMissingItem"]
       97 DUPTABLE                         R13 K20 [{"ParentPath", "ExpectedClass", "ExpectedName"}]
       98 NAMECALL                         R14 R0 K21 ["GetFullName"]
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K17 ["ParentPath"]
      103 GETTABLEKS                       R14 R8 K7 ["ClassName"]
      105 SETTABLEKS                       R14 R13 K18 ["ExpectedClass"]
      107 GETTABLEKS                       R15 R8 K8 ["Name"]
      109 FASTCALL1                        TYPE R15 ; [+3]
      110 MOVE                             R17 R15
      111 GETIMPORT                        R16 K10 [type]
      113 CALL                             R16 1 1
      114 JUMPIFNOTEQKS                    R16 K11 ["table"] ; [+8]
      116 GETIMPORT                        R16 K23 [table.concat]
      118 MOVE                             R17 R15
      119 LOADK                            R18 K24 [" or "]
      120 CALL                             R16 2 1
      121 MOVE                             R14 R16
      122 JUMP                             ; [+10]
      123 FASTCALL1                        TYPE R15 ; [+3]
      124 MOVE                             R17 R15
      125 GETIMPORT                        R16 K10 [type]
      127 CALL                             R16 1 1
      128 JUMPIFNOTEQKS                    R16 K25 ["string"] ; [+3]
      130 MOVE                             R14 R15
      131 JUMP                             ; [+1]
      132 LOADK                            R14 K26 ["*"]
      133 SETTABLEKS                       R14 R13 K19 ["ExpectedName"]
      135 NAMECALL                         R10 R3 K27 ["fail"]
      137 CALL                             R10 3 0
      138 FORGLOOP                         R4 2 ; [-105]
      140 RETURN                           R0 0

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
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["Keys"]
       29 GETTABLEKS                       R6 R6 K8 ["AssetSchemaUnexpectedItems"]
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
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K3 ["Keys"]
       11 GETTABLEKS                       R7 R7 K4 ["SelectionCountNotOne"]
       13 NAMECALL                         R5 R0 K5 ["fail"]
       15 CALL                             R5 2 0
       16 RETURN                           R0 0
       17 LOADNIL                          R5
       18 GETTABLEKS                       R6 R4 K6 ["bundleType"]
       20 JUMPIFNOT                        R6 ; [+9]
       21 GETTABLEKS                       R6 R1 K7 ["entrypointInput"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K8 ["generateBundleSchema"]
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 MOVE                             R5 R7
       29 JUMP                             ; [+9]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K9 ["generateAssetSchema"]
       33 MOVE                             R7 R3
       34 GETTABLEKS                       R8 R4 K10 ["assetType"]
       36 MOVE                             R9 R2
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 NEWTABLE                         R6 0 0
       41 GETTABLEKS                       R7 R5 K11 ["ClassName"]
       43 GETTABLEKS                       R8 R2 K11 ["ClassName"]
       45 JUMPIFEQ                         R7 R8 ; [+19]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K3 ["Keys"]
       50 GETTABLEKS                       R9 R9 K12 ["AssetSchemaWrongRootClass"]
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
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R9 R9 K3 ["Keys"]
       98 GETTABLEKS                       R9 R9 K22 ["AssetSchemaWrongRootName"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["util"]
       32 GETTABLEKS                       R5 R5 K10 ["CreateExpectedSchema"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K8 ["validationSystem"]
       39 GETTABLEKS                       R6 R6 K11 ["ErrorSourceStrings"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K12 ["flags"]
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidationExtendSchemaToIgnoreDescendants"]
       48 CALL                             R6 1 1
       49 NEWTABLE                         R7 4 0
       51 GETTABLEKS                       R8 R2 K14 ["AllUploadCategories"]
       53 SETTABLEKS                       R8 R7 K15 ["categories"]
       55 NEWTABLE                         R8 0 4
       57 GETTABLEKS                       R9 R3 K16 ["SharedDataMember"]
       59 GETTABLEKS                       R9 R9 K17 ["entrypointInput"]
       61 GETTABLEKS                       R10 R3 K16 ["SharedDataMember"]
       63 GETTABLEKS                       R10 R10 K18 ["rootInstance"]
       65 GETTABLEKS                       R11 R3 K16 ["SharedDataMember"]
       67 GETTABLEKS                       R11 R11 K19 ["uploadCategory"]
       69 GETTABLEKS                       R12 R3 K16 ["SharedDataMember"]
       71 GETTABLEKS                       R12 R12 K20 ["uploadEnum"]
       73 SETLIST                          R8 R9 4 [1]
       75 SETTABLEKS                       R8 R7 K21 ["requiredData"]
       77 DUPCLOSURE                       R8 K22 [PROTO_0]
       78 DUPCLOSURE                       R9 K23 [PROTO_1]
       79 DUPCLOSURE                       R10 K24 [PROTO_2]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R5
       83 DUPCLOSURE                       R11 K25 [PROTO_3]
       84 CAPTURE                          VAL R5
       85 DUPCLOSURE                       R12 K26 [PROTO_4]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R12 R7 K27 ["run"]
       92 RETURN                           R7 1
