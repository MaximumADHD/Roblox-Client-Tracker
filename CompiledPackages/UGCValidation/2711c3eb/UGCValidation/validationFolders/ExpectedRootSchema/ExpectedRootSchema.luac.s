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
       88 JUMPIF                           R9 ; [+55]
       89 GETTABLEKS                       R10 R8 K14 ["_optional"]
       91 JUMPIF                           R10 ; [+52]
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
      135 GETUPVAL                         R15 3
      136 CALL                             R15 0 1
      137 JUMPIFNOT                        R15 ; [+2]
      138 MOVE                             R14 R0
      139 JUMP                             ; [+1]
      140 LOADNIL                          R14
      141 NAMECALL                         R10 R3 K27 ["fail"]
      143 CALL                             R10 4 0
      144 FORGLOOP                         R4 2 ; [-111]
      146 RETURN                           R0 0

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
       24 JUMPIFNOTLT                      R5 R4 ; [+23]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["Keys"]
       29 GETTABLEKS                       R6 R6 K8 ["AssetSchemaUnexpectedItems"]
       31 DUPTABLE                         R7 K10 [{"UnexpectedDescendantPaths"}]
       32 GETIMPORT                        R8 K12 [table.concat]
       34 MOVE                             R9 R3
       35 LOADK                            R10 K13 [", "]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K9 ["UnexpectedDescendantPaths"]
       39 GETUPVAL                         R9 1
       40 CALL                             R9 0 1
       41 JUMPIFNOT                        R9 ; [+2]
       42 MOVE                             R8 R0
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 NAMECALL                         R4 R2 K14 ["fail"]
       47 CALL                             R4 4 0
       48 RETURN                           R0 0

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
       20 JUMPIFNOT                        R6 ; [+24]
       21 GETUPVAL                         R6 1
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+12]
       24 GETTABLEKS                       R6 R4 K6 ["bundleType"]
       26 GETIMPORT                        R7 K10 [Enum.BundleType.Animations]
       28 JUMPIFNOTEQ                      R6 R7 ; [+7]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K11 ["generateAnimationPackBundleSchema"]
       33 CALL                             R6 0 1
       34 MOVE                             R5 R6
       35 JUMP                             ; [+18]
       36 GETTABLEKS                       R6 R1 K12 ["entrypointInput"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K13 ["generateBundleSchema"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 1
       43 MOVE                             R5 R7
       44 JUMP                             ; [+9]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K14 ["generateAssetSchema"]
       48 MOVE                             R7 R3
       49 GETTABLEKS                       R8 R4 K15 ["assetType"]
       51 MOVE                             R9 R2
       52 CALL                             R6 3 1
       53 MOVE                             R5 R6
       54 NEWTABLE                         R6 0 0
       56 GETTABLEKS                       R7 R5 K16 ["ClassName"]
       58 GETTABLEKS                       R8 R2 K16 ["ClassName"]
       60 JUMPIFEQ                         R7 R8 ; [+19]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K3 ["Keys"]
       65 GETTABLEKS                       R9 R9 K17 ["AssetSchemaWrongRootClass"]
       67 DUPTABLE                         R10 K20 [{"RootClass", "ExpectedClass"}]
       68 GETTABLEKS                       R11 R2 K16 ["ClassName"]
       70 SETTABLEKS                       R11 R10 K18 ["RootClass"]
       72 GETTABLEKS                       R11 R5 K16 ["ClassName"]
       74 SETTABLEKS                       R11 R10 K19 ["ExpectedClass"]
       76 NAMECALL                         R7 R0 K5 ["fail"]
       78 CALL                             R7 3 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R7 R5 K21 ["Name"]
       82 JUMPIFEQKNIL                     R7 ; [+45]
       84 GETTABLEKS                       R8 R5 K21 ["Name"]
       86 GETTABLEKS                       R9 R2 K21 ["Name"]
       88 FASTCALL1                        TYPE R8 ; [+3]
       89 MOVE                             R11 R8
       90 GETIMPORT                        R10 K23 [type]
       92 CALL                             R10 1 1
       93 JUMPIFNOTEQKS                    R10 K24 ["table"] ; [+11]
       95 GETIMPORT                        R10 K26 [table.find]
       97 MOVE                             R11 R8
       98 MOVE                             R12 R9
       99 CALL                             R10 2 1
      100 JUMPIFNOTEQKNIL                  R10 ; [+2]
      102 LOADB                            R7 0 +1
      103 LOADB                            R7 1
      104 JUMP                             ; [+4]
      105 JUMPIFEQ                         R8 R9 ; [+2]
      107 LOADB                            R7 0 +1
      108 LOADB                            R7 1
      109 JUMPIF                           R7 ; [+18]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R9 R9 K3 ["Keys"]
      113 GETTABLEKS                       R9 R9 K27 ["AssetSchemaWrongRootName"]
      115 DUPTABLE                         R10 K30 [{"RootName", "ExpectedName"}]
      116 GETTABLEKS                       R11 R2 K21 ["Name"]
      118 SETTABLEKS                       R11 R10 K28 ["RootName"]
      120 GETTABLEKS                       R11 R5 K21 ["Name"]
      122 SETTABLEKS                       R11 R10 K29 ["ExpectedName"]
      124 NAMECALL                         R7 R0 K5 ["fail"]
      126 CALL                             R7 3 0
      127 RETURN                           R0 0
      128 GETUPVAL                         R7 3
      129 MOVE                             R8 R2
      130 MOVE                             R9 R5
      131 MOVE                             R10 R6
      132 MOVE                             R11 R0
      133 CALL                             R7 4 0
      134 GETUPVAL                         R7 4
      135 MOVE                             R8 R2
      136 MOVE                             R9 R6
      137 MOVE                             R10 R0
      138 CALL                             R7 3 0
      139 RETURN                           R0 0

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
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K12 ["flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K12 ["flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidationAnimationPackSupport"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 4 0
       65 GETTABLEKS                       R10 R2 K16 ["AllUploadCategories"]
       67 SETTABLEKS                       R10 R9 K17 ["categories"]
       69 NEWTABLE                         R10 0 4
       71 GETTABLEKS                       R11 R3 K18 ["SharedDataMember"]
       73 GETTABLEKS                       R11 R11 K19 ["entrypointInput"]
       75 GETTABLEKS                       R12 R3 K18 ["SharedDataMember"]
       77 GETTABLEKS                       R12 R12 K20 ["rootInstance"]
       79 GETTABLEKS                       R13 R3 K18 ["SharedDataMember"]
       81 GETTABLEKS                       R13 R13 K21 ["uploadCategory"]
       83 GETTABLEKS                       R14 R3 K18 ["SharedDataMember"]
       85 GETTABLEKS                       R14 R14 K22 ["uploadEnum"]
       87 SETLIST                          R10 R11 4 [1]
       89 SETTABLEKS                       R10 R9 K23 ["requiredData"]
       91 DUPCLOSURE                       R10 K24 [PROTO_0]
       92 DUPCLOSURE                       R11 K25 [PROTO_1]
       93 DUPCLOSURE                       R12 K26 [PROTO_2]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R7
       98 DUPCLOSURE                       R13 K27 [PROTO_3]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R7
      101 DUPCLOSURE                       R14 K28 [PROTO_4]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 SETTABLEKS                       R14 R9 K29 ["run"]
      109 RETURN                           R9 1
