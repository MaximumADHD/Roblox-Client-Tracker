PROTO_0:
        0 GETTABLEKS                       R6 R0 K0 ["nonAssetIdSettingKeys"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 GETTABLE                         R13 R1 R10
        6 JUMPIFNOTEQKNIL                  R13 ; [+2]
        8 LOADB                            R12 0 +1
        9 LOADB                            R12 1
       10 LOADK                            R14 K1 ["AvatarSettingsProvider's "]
       11 MOVE                             R15 R3
       12 LOADK                            R16 K2 [" is missing key: "]
       13 MOVE                             R17 R10
       14 CONCAT                           R13 R14 R17
       15 FASTCALL2                        ASSERT R12 R13 ; [+3]
       17 GETIMPORT                        R11 K4 [assert]
       19 CALL                             R11 2 0
       20 GETTABLE                         R13 R2 R10
       21 JUMPIFNOTEQKNIL                  R13 ; [+2]
       23 LOADB                            R12 0 +1
       24 LOADB                            R12 1
       25 LOADK                            R13 K5 ["Saved setting's "]
       26 MOVE                             R15 R3
       27 LOADK                            R16 K2 [" is missing key: "]
       28 MOVE                             R17 R10
       29 CONCAT                           R14 R15 R17
       30 FASTCALL                         ASSERT ; [+2]
       31 GETIMPORT                        R11 K4 [assert]
       33 CALL                             R11 3 0
       34 MOVE                             R11 R4
       35 MOVE                             R12 R10
       36 CALL                             R11 1 0
       37 FORGLOOP                         R6 2 ; [-33]
       39 JUMPIFNOT                        R5 ; [+42]
       40 GETTABLEKS                       R6 R0 K6 ["assetIdSettingKeys"]
       42 JUMPIFNOT                        R6 ; [+39]
       43 GETTABLEKS                       R6 R0 K6 ["assetIdSettingKeys"]
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 FORGPREP                         R6
       48 GETTABLE                         R13 R1 R10
       49 JUMPIFNOTEQKNIL                  R13 ; [+2]
       51 LOADB                            R12 0 +1
       52 LOADB                            R12 1
       53 LOADK                            R14 K1 ["AvatarSettingsProvider's "]
       54 MOVE                             R15 R3
       55 LOADK                            R16 K2 [" is missing key: "]
       56 MOVE                             R17 R10
       57 CONCAT                           R13 R14 R17
       58 FASTCALL2                        ASSERT R12 R13 ; [+3]
       60 GETIMPORT                        R11 K4 [assert]
       62 CALL                             R11 2 0
       63 GETTABLE                         R13 R2 R10
       64 JUMPIFNOTEQKNIL                  R13 ; [+2]
       66 LOADB                            R12 0 +1
       67 LOADB                            R12 1
       68 LOADK                            R13 K5 ["Saved setting's "]
       69 MOVE                             R15 R3
       70 LOADK                            R16 K2 [" is missing key: "]
       71 MOVE                             R17 R10
       72 CONCAT                           R14 R15 R17
       73 FASTCALL                         ASSERT ; [+2]
       74 GETIMPORT                        R11 K4 [assert]
       76 CALL                             R11 3 0
       77 MOVE                             R11 R5
       78 MOVE                             R12 R10
       79 CALL                             R11 1 0
       80 FORGLOOP                         R6 2 ; [-33]
       82 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["nonAssetIdSettingKeys"]
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 GETTABLE                         R11 R1 R8
        6 JUMPIFNOTEQKNIL                  R11 ; [+2]
        8 LOADB                            R10 0 +1
        9 LOADB                            R10 1
       10 LOADK                            R12 K1 ["AvatarSettingsProvider's "]
       11 MOVE                             R13 R3
       12 LOADK                            R14 K2 [" is missing key: "]
       13 MOVE                             R15 R8
       14 CONCAT                           R11 R12 R15
       15 FASTCALL2                        ASSERT R10 R11 ; [+3]
       17 GETIMPORT                        R9 K4 [assert]
       19 CALL                             R9 2 0
       20 GETTABLE                         R11 R2 R8
       21 JUMPIFNOTEQKNIL                  R11 ; [+2]
       23 LOADB                            R10 0 +1
       24 LOADB                            R10 1
       25 LOADK                            R11 K5 ["Saved setting's "]
       26 MOVE                             R13 R3
       27 LOADK                            R14 K2 [" is missing key: "]
       28 MOVE                             R15 R8
       29 CONCAT                           R12 R13 R15
       30 FASTCALL                         ASSERT ; [+2]
       31 GETIMPORT                        R9 K4 [assert]
       33 CALL                             R9 3 0
       34 GETTABLE                         R9 R1 R8
       35 GETTABLEKS                       R9 R9 K6 ["value"]
       37 GETTABLE                         R10 R2 R8
       38 JUMPIFEQ                         R9 R10 ; [+3]
       40 LOADB                            R9 0
       41 RETURN                           R9 1
       42 FORGLOOP                         R4 2 ; [-38]
       44 GETTABLEKS                       R4 R0 K7 ["assetIdSettingKeys"]
       46 JUMPIFNOT                        R4 ; [+96]
       47 GETTABLEKS                       R4 R0 K7 ["assetIdSettingKeys"]
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 GETTABLE                         R11 R1 R8
       53 JUMPIFNOTEQKNIL                  R11 ; [+2]
       55 LOADB                            R10 0 +1
       56 LOADB                            R10 1
       57 LOADK                            R12 K1 ["AvatarSettingsProvider's "]
       58 MOVE                             R13 R3
       59 LOADK                            R14 K2 [" is missing key: "]
       60 MOVE                             R15 R8
       61 CONCAT                           R11 R12 R15
       62 FASTCALL2                        ASSERT R10 R11 ; [+3]
       64 GETIMPORT                        R9 K4 [assert]
       66 CALL                             R9 2 0
       67 GETTABLE                         R11 R2 R8
       68 JUMPIFNOTEQKNIL                  R11 ; [+2]
       70 LOADB                            R10 0 +1
       71 LOADB                            R10 1
       72 LOADK                            R11 K5 ["Saved setting's "]
       73 MOVE                             R13 R3
       74 LOADK                            R14 K2 [" is missing key: "]
       75 MOVE                             R15 R8
       76 CONCAT                           R12 R13 R15
       77 FASTCALL                         ASSERT ; [+2]
       78 GETIMPORT                        R9 K4 [assert]
       80 CALL                             R9 3 0
       81 GETTABLE                         R11 R1 R8
       82 GETTABLEKS                       R11 R11 K8 ["enabled"]
       84 JUMPIFNOTEQKNIL                  R11 ; [+2]
       86 LOADB                            R10 0 +1
       87 LOADB                            R10 1
       88 LOADK                            R12 K1 ["AvatarSettingsProvider's "]
       89 MOVE                             R13 R3
       90 LOADK                            R14 K9 [" table value with "]
       91 MOVE                             R15 R8
       92 LOADK                            R16 K10 [" is missing its enabled value"]
       93 CONCAT                           R11 R12 R16
       94 FASTCALL2                        ASSERT R10 R11 ; [+3]
       96 GETIMPORT                        R9 K4 [assert]
       98 CALL                             R9 2 0
       99 GETTABLE                         R11 R1 R8
      100 GETTABLEKS                       R11 R11 K11 ["assetId"]
      102 JUMPIFNOTEQKNIL                  R11 ; [+2]
      104 LOADB                            R10 0 +1
      105 LOADB                            R10 1
      106 LOADK                            R12 K1 ["AvatarSettingsProvider's "]
      107 MOVE                             R13 R3
      108 LOADK                            R14 K9 [" table value with "]
      109 MOVE                             R15 R8
      110 LOADK                            R16 K12 [" is missing its assetId value"]
      111 CONCAT                           R11 R12 R16
      112 FASTCALL2                        ASSERT R10 R11 ; [+3]
      114 GETIMPORT                        R9 K4 [assert]
      116 CALL                             R9 2 0
      117 GETTABLE                         R9 R1 R8
      118 GETTABLEKS                       R9 R9 K8 ["enabled"]
      120 GETTABLEKS                       R9 R9 K6 ["value"]
      122 GETTABLE                         R10 R2 R8
      123 GETTABLEKS                       R10 R10 K8 ["enabled"]
      125 JUMPIFEQ                         R9 R10 ; [+3]
      127 LOADB                            R9 0
      128 RETURN                           R9 1
      129 GETTABLE                         R9 R1 R8
      130 GETTABLEKS                       R9 R9 K11 ["assetId"]
      132 GETTABLEKS                       R9 R9 K6 ["value"]
      134 GETTABLE                         R10 R2 R8
      135 GETTABLEKS                       R10 R10 K11 ["assetId"]
      137 JUMPIFEQ                         R9 R10 ; [+3]
      139 LOADB                            R9 0
      140 RETURN                           R9 1
      141 FORGLOOP                         R4 2 ; [-90]
      143 LOADB                            R4 1
      144 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEKS                       R3 R3 K0 ["value"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 LOADK                            R4 K1 ["AvatarSettingsProvider's "]
        9 GETUPVAL                         R5 1
       10 LOADK                            R6 K2 [" table value with "]
       11 MOVE                             R7 R0
       12 LOADK                            R8 K3 [" is missing a value"]
       13 CONCAT                           R3 R4 R8
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K5 [assert]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 0
       21 GETTABLE                         R2 R3 R0
       22 GETTABLEKS                       R2 R2 K0 ["value"]
       24 SETTABLE                         R2 R1 R0
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEKS                       R3 R3 K0 ["enabled"]
        4 GETTABLEKS                       R3 R3 K1 ["value"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 LOADK                            R4 K2 ["AvatarSettingsProvider's "]
       11 GETUPVAL                         R5 1
       12 LOADK                            R6 K3 [" table value with "]
       13 MOVE                             R7 R0
       14 LOADK                            R8 K4 [" is missing its enabled value"]
       15 CONCAT                           R3 R4 R8
       16 FASTCALL2                        ASSERT R2 R3 ; [+3]
       18 GETIMPORT                        R1 K6 [assert]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R4 0
       22 GETTABLE                         R3 R4 R0
       23 GETTABLEKS                       R3 R3 K7 ["assetId"]
       25 GETTABLEKS                       R3 R3 K1 ["value"]
       27 JUMPIFNOTEQKNIL                  R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 LOADK                            R4 K2 ["AvatarSettingsProvider's "]
       32 GETUPVAL                         R5 1
       33 LOADK                            R6 K3 [" table value with "]
       34 MOVE                             R7 R0
       35 LOADK                            R8 K8 [" is missing its assetId value"]
       36 CONCAT                           R3 R4 R8
       37 FASTCALL2                        ASSERT R2 R3 ; [+3]
       39 GETIMPORT                        R1 K6 [assert]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R1 2
       43 DUPTABLE                         R2 K9 [{"enabled", "assetId"}]
       44 GETUPVAL                         R4 0
       45 GETTABLE                         R3 R4 R0
       46 GETTABLEKS                       R3 R3 K0 ["enabled"]
       48 GETTABLEKS                       R3 R3 K1 ["value"]
       50 SETTABLEKS                       R3 R2 K0 ["enabled"]
       52 GETUPVAL                         R4 0
       53 GETTABLE                         R3 R4 R0
       54 GETTABLEKS                       R3 R3 K7 ["assetId"]
       56 GETTABLEKS                       R3 R3 K1 ["value"]
       58 SETTABLEKS                       R3 R2 K7 ["assetId"]
       60 SETTABLE                         R2 R1 R0
       61 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R2 R2 K0 ["set"]
        4 LOADK                            R4 K1 ["AvatarSettingsProvider's "]
        5 GETUPVAL                         R5 1
        6 LOADK                            R6 K2 [" table value with "]
        7 MOVE                             R7 R0
        8 LOADK                            R8 K3 [" is missing a setter"]
        9 CONCAT                           R3 R4 R8
       10 FASTCALL2                        ASSERT R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLE                         R1 R2 R0
       17 GETTABLEKS                       R1 R1 K0 ["set"]
       19 GETUPVAL                         R3 2
       20 GETTABLE                         R2 R3 R0
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 RETURN                           R1 1

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R2 R2 K0 ["enabled"]
        4 GETTABLEKS                       R2 R2 K1 ["set"]
        6 LOADK                            R4 K2 ["AvatarSettingsProvider's "]
        7 GETUPVAL                         R5 1
        8 LOADK                            R6 K3 [" table value with "]
        9 MOVE                             R7 R0
       10 LOADK                            R8 K4 [" is missing its enabled setter"]
       11 CONCAT                           R3 R4 R8
       12 FASTCALL2                        ASSERT R2 R3 ; [+3]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R3 0
       18 GETTABLE                         R2 R3 R0
       19 GETTABLEKS                       R2 R2 K7 ["assetId"]
       21 GETTABLEKS                       R2 R2 K1 ["set"]
       23 LOADK                            R4 K2 ["AvatarSettingsProvider's "]
       24 GETUPVAL                         R5 1
       25 LOADK                            R6 K3 [" table value with "]
       26 MOVE                             R7 R0
       27 LOADK                            R8 K8 [" is missing its assetId setter"]
       28 CONCAT                           R3 R4 R8
       29 FASTCALL2                        ASSERT R2 R3 ; [+3]
       31 GETIMPORT                        R1 K6 [assert]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R4 2
       35 GETTABLE                         R3 R4 R0
       36 GETTABLEKS                       R3 R3 K0 ["enabled"]
       38 JUMPIFNOTEQKNIL                  R3 ; [+2]
       40 LOADB                            R2 0 +1
       41 LOADB                            R2 1
       42 LOADK                            R3 K9 ["Saved setting's "]
       43 GETUPVAL                         R5 1
       44 LOADK                            R6 K3 [" table value with "]
       45 MOVE                             R7 R0
       46 LOADK                            R8 K10 [" is missing its enabled value"]
       47 CONCAT                           R4 R5 R8
       48 FASTCALL                         ASSERT ; [+2]
       49 GETIMPORT                        R1 K6 [assert]
       51 CALL                             R1 3 0
       52 GETUPVAL                         R4 2
       53 GETTABLE                         R3 R4 R0
       54 GETTABLEKS                       R3 R3 K7 ["assetId"]
       56 JUMPIFNOTEQKNIL                  R3 ; [+2]
       58 LOADB                            R2 0 +1
       59 LOADB                            R2 1
       60 LOADK                            R3 K9 ["Saved setting's "]
       61 GETUPVAL                         R5 1
       62 LOADK                            R6 K3 [" table value with "]
       63 MOVE                             R7 R0
       64 LOADK                            R8 K11 [" is missing its assetId value"]
       65 CONCAT                           R4 R5 R8
       66 FASTCALL                         ASSERT ; [+2]
       67 GETIMPORT                        R1 K6 [assert]
       69 CALL                             R1 3 0
       70 GETUPVAL                         R2 0
       71 GETTABLE                         R1 R2 R0
       72 GETTABLEKS                       R1 R1 K0 ["enabled"]
       74 GETTABLEKS                       R1 R1 K1 ["set"]
       76 GETUPVAL                         R3 2
       77 GETTABLE                         R2 R3 R0
       78 GETTABLEKS                       R2 R2 K0 ["enabled"]
       80 CALL                             R1 1 0
       81 GETUPVAL                         R2 0
       82 GETTABLE                         R1 R2 R0
       83 GETTABLEKS                       R1 R1 K7 ["assetId"]
       85 GETTABLEKS                       R1 R1 K1 ["set"]
       87 GETUPVAL                         R3 2
       88 GETTABLE                         R2 R3 R0
       89 GETTABLEKS                       R2 R2 K7 ["assetId"]
       91 CALL                             R1 1 0
       92 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["PublishProvider"]
       17 GETTABLEKS                       R2 R2 K10 ["PublishedSettingsTypes"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 8 0
       22 DUPCLOSURE                       R3 K11 [PROTO_0]
       23 SETTABLEKS                       R3 R2 K12 ["runFunctionForSettingKeys"]
       25 DUPCLOSURE                       R3 K13 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K14 ["isEqual"]
       28 DUPCLOSURE                       R3 K15 [PROTO_3]
       29 SETTABLEKS                       R3 R2 K16 ["getSetPublishedSettingNonAssetIdValuesFunction"]
       31 DUPCLOSURE                       R3 K17 [PROTO_5]
       32 SETTABLEKS                       R3 R2 K18 ["getSetPublishedSettingAssetIdValuesFunction"]
       34 DUPCLOSURE                       R3 K19 [PROTO_7]
       35 SETTABLEKS                       R3 R2 K20 ["getSetSettingNonAssetIdValuesFunction"]
       37 DUPCLOSURE                       R3 K21 [PROTO_9]
       38 SETTABLEKS                       R3 R2 K22 ["getSetSettingAssetIdValuesFunction"]
       40 RETURN                           R2 1
