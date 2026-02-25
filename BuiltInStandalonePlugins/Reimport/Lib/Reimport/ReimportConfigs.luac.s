PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADK                            R1 K3 ["reimport configs must be a table"]
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K4 ["filepath"]
       15 JUMPIFNOT                        R6 ; [+20]
       16 GETTABLEKS                       R7 R5 K4 ["filepath"]
       18 FASTCALL1                        TYPE R7 ; [+2]
       19 GETIMPORT                        R6 K1 [type]
       21 CALL                             R6 1 1
       22 JUMPIFEQKS                       R6 K5 ["string"] ; [+13]
       24 GETIMPORT                        R6 K7 [warn]
       26 LOADK                            R8 K8 ["filepath for reimport config '%*' could not be loaded"]
       27 MOVE                             R10 R4
       28 NAMECALL                         R8 R8 K9 ["format"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 CALL                             R6 1 0
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K4 ["filepath"]
       36 GETTABLEKS                       R6 R5 K10 ["preset"]
       38 JUMPIFNOT                        R6 ; [+45]
       39 GETTABLEKS                       R7 R5 K4 ["filepath"]
       41 FASTCALL1                        TYPE R7 ; [+2]
       42 GETIMPORT                        R6 K1 [type]
       44 CALL                             R6 1 1
       45 JUMPIFEQKS                       R6 K5 ["string"] ; [+14]
       47 GETIMPORT                        R6 K7 [warn]
       49 LOADK                            R8 K11 ["preset for reimport config '%*' could not be loaded"]
       50 MOVE                             R10 R4
       51 NAMECALL                         R8 R8 K9 ["format"]
       53 CALL                             R8 2 1
       54 MOVE                             R7 R8
       55 CALL                             R6 1 0
       56 LOADNIL                          R6
       57 SETTABLEKS                       R6 R5 K10 ["preset"]
       59 JUMP                             ; [+24]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R8 R5 K10 ["preset"]
       63 NAMECALL                         R6 R6 K12 ["GetPreset"]
       65 CALL                             R6 2 1
       66 JUMPIFNOTEQKNIL                  R6 ; [+17]
       68 GETIMPORT                        R6 K7 [warn]
       70 LOADK                            R8 K13 ["preset '%*' does not exits, falling back to '%*' preset"]
       71 GETTABLEKS                       R10 R5 K10 ["preset"]
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R11 R12 K14 ["StudioDefaultPreset"]
       76 NAMECALL                         R8 R8 K9 ["format"]
       78 CALL                             R8 3 1
       79 MOVE                             R7 R8
       80 CALL                             R6 1 0
       81 LOADNIL                          R6
       82 SETTABLEKS                       R6 R5 K10 ["preset"]
       84 FORGLOOP                         R1 2 ; [-72]
       86 LOADNIL                          R1
       87 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GetSetting"]
        3 LOADK                            R1 K1 ["CIN:ReimportConfigs"]
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 JUMPIFNOTEQKS                    R0 K2 [""] ; [+2]
        9 RETURN                           R0 0
       10 GETIMPORT                        R1 K4 [pcall]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K5 ["JSONDecode"]
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R0
       17 CALL                             R1 3 2
       18 JUMPIF                           R1 ; [+7]
       19 GETIMPORT                        R3 K7 [warn]
       21 LOADK                            R5 K8 ["Failed to decode reimport configs from disk: "]
       22 MOVE                             R6 R2
       23 CONCAT                           R4 R5 R6
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 MOVE                             R3 R2
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 JUMPIFEQKNIL                     R4 ; [+12]
       32 GETIMPORT                        R5 K7 [warn]
       34 LOADK                            R7 K9 ["Reimport configs validation failed: %*"]
       35 MOVE                             R9 R4
       36 NAMECALL                         R7 R7 K10 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R6 R7
       40 CALL                             R5 1 0
       41 NEWTABLE                         R3 0 0
       43 LOADB                            R5 1
       44 SETUPVAL                         R5 3
       45 SETUPVAL                         R3 4
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["SetSetting"]
        8 LOADK                            R2 K2 ["CIN:ReimportConfigs"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ATTRIBUTE_KEY"]
        3 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+9]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [type]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+3]
       14 JUMPIFNOTEQKS                    R1 K5 [""] ; [+3]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ATTRIBUTE_KEY"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R0 K1 ["SetAttribute"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 2
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ATTRIBUTE_KEY"]
        3 NAMECALL                         R2 R0 K1 ["GetAttribute"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+9]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       14 JUMPIFNOTEQKS                    R2 K5 [""] ; [+3]
       16 LOADNIL                          R1
       17 JUMP                             ; [+1]
       18 MOVE                             R1 R2
       19 JUMPIFNOTEQKNIL                  R1 ; [+4]
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 RETURN                           R2 2
       24 MOVE                             R2 R1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K6 ["getConfigFromId"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 -1
       30 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["getConfigFromId"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+11]
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLE                         R8 R1 R6
       16 JUMPIFNOTEQKNIL                  R8 ; [+2]
       18 SETTABLE                         R7 R1 R6
       19 FORGLOOP                         R3 2 ; [-5]
       21 GETUPVAL                         R3 3
       22 SETTABLE                         R1 R3 R0
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R5 3
       25 NAMECALL                         R3 R3 K1 ["JSONEncode"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R4 R5 K2 ["SetSetting"]
       31 LOADK                            R5 K3 ["CIN:ReimportConfigs"]
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["ATTRIBUTE_KEY"]
        3 NAMECALL                         R3 R0 K1 ["GetAttribute"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+9]
        7 FASTCALL1                        TYPE R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [type]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+3]
       14 JUMPIFNOTEQKS                    R3 K5 [""] ; [+3]
       16 LOADNIL                          R2
       17 JUMP                             ; [+1]
       18 MOVE                             R2 R3
       19 JUMPIFNOTEQKNIL                  R2 ; [+14]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K6 ["newConfig"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K0 ["ATTRIBUTE_KEY"]
       29 MOVE                             R7 R3
       30 NAMECALL                         R4 R0 K7 ["SetAttribute"]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K8 ["updateConfigFromId"]
       37 MOVE                             R4 R2
       38 MOVE                             R5 R1
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 2
        5 LOADB                            R3 0
        6 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 3
       10 SETTABLE                         R0 R2 R1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 3
       13 NAMECALL                         R2 R2 K1 ["JSONEncode"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R3 R4 K2 ["SetSetting"]
       19 LOADK                            R4 K3 ["CIN:ReimportConfigs"]
       20 MOVE                             R5 R2
       21 CALL                             R3 2 0
       22 RETURN                           R1 1

PROTO_10:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 NEWTABLE                         R0 0 0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getConfigFromInstance"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R4 R3
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R4 0 0
       10 GETTABLEKS                       R5 R4 K1 ["filepath"]
       12 JUMPIFNOTEQKNIL                  R5 ; [+5]
       14 MOVE                             R5 R1
       15 CALL                             R5 0 1
       16 SETTABLEKS                       R5 R4 K1 ["filepath"]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R4
       20 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Lib"]
       17 GETTABLEKS                       R4 R5 K11 ["External"]
       19 GETTABLEKS                       R3 R4 K12 ["AssetImportService"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R0 K10 ["Lib"]
       26 GETTABLEKS                       R5 R6 K11 ["External"]
       28 GETTABLEKS                       R4 R5 K13 ["PluginStorage"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R0 K14 ["Packages"]
       35 GETTABLEKS                       R5 R6 K15 ["SharedPluginConstants"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R0 K10 ["Lib"]
       42 GETTABLEKS                       R6 R7 K16 ["Constants"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Lib"]
       49 GETTABLEKS                       R8 R9 K17 ["Reimport"]
       51 GETTABLEKS                       R7 R8 K18 ["Types"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 8 0
       56 GETTABLEKS                       R9 R4 K19 ["REIMPORT"]
       58 GETTABLEKS                       R8 R9 K20 ["ATTRIBUTE_KEY"]
       60 SETTABLEKS                       R8 R7 K20 ["ATTRIBUTE_KEY"]
       62 LOADB                            R8 0
       63 NEWTABLE                         R9 0 0
       65 DUPCLOSURE                       R10 K21 [PROTO_0]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 NEWCLOSURE                       R11 P1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R10
       72 CAPTURE                          REF R8
       73 CAPTURE                          REF R9
       74 NEWCLOSURE                       R12 P2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          REF R9
       77 CAPTURE                          VAL R3
       78 DUPCLOSURE                       R13 K22 [PROTO_3]
       79 CAPTURE                          VAL R7
       80 DUPCLOSURE                       R14 K23 [PROTO_4]
       81 CAPTURE                          VAL R7
       82 NEWCLOSURE                       R15 P5
       83 CAPTURE                          REF R8
       84 CAPTURE                          VAL R11
       85 CAPTURE                          REF R9
       86 SETTABLEKS                       R15 R7 K24 ["getConfigFromId"]
       88 DUPCLOSURE                       R15 K25 [PROTO_6]
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R15 R7 K26 ["getConfigFromInstance"]
       92 NEWCLOSURE                       R15 P7
       93 CAPTURE                          REF R8
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R7
       96 CAPTURE                          REF R9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R15 R7 K27 ["updateConfigFromId"]
      101 DUPCLOSURE                       R15 K28 [PROTO_8]
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R15 R7 K29 ["updateConfigFromInstance"]
      105 NEWCLOSURE                       R15 P9
      106 CAPTURE                          REF R8
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R1
      109 CAPTURE                          REF R9
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R15 R7 K30 ["newConfig"]
      113 NEWCLOSURE                       R15 P10
      114 CAPTURE                          REF R8
      115 CAPTURE                          REF R9
      116 SETTABLEKS                       R15 R7 K31 ["clearCache"]
      118 DUPCLOSURE                       R15 K32 [PROTO_11]
      119 CAPTURE                          VAL R7
      120 SETTABLEKS                       R15 R7 K33 ["getOrCreateReimportConfig"]
      122 CLOSEUPVALS                      R8
      123 RETURN                           R7 1
