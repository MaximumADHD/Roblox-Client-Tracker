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
       84 GETUPVAL                         R6 2
       85 CALL                             R6 0 1
       86 JUMPIFNOT                        R6 ; [+84]
       87 GETTABLEKS                       R6 R5 K15 ["creatorId"]
       89 JUMPIFEQKNIL                     R6 ; [+21]
       91 GETTABLEKS                       R7 R5 K15 ["creatorId"]
       93 FASTCALL1                        TYPE R7 ; [+2]
       94 GETIMPORT                        R6 K1 [type]
       96 CALL                             R6 1 1
       97 JUMPIFEQKS                       R6 K16 ["number"] ; [+13]
       99 GETIMPORT                        R6 K7 [warn]
      101 LOADK                            R8 K17 ["creatorId for reimport config '%*' could not be loaded"]
      102 MOVE                             R10 R4
      103 NAMECALL                         R8 R8 K9 ["format"]
      105 CALL                             R8 2 1
      106 MOVE                             R7 R8
      107 CALL                             R6 1 0
      108 LOADNIL                          R6
      109 SETTABLEKS                       R6 R5 K15 ["creatorId"]
      111 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      113 JUMPIFEQKNIL                     R6 ; [+43]
      115 GETTABLEKS                       R7 R5 K18 ["creatorType"]
      117 FASTCALL1                        TYPE R7 ; [+2]
      118 GETIMPORT                        R6 K1 [type]
      120 CALL                             R6 1 1
      121 JUMPIFEQKS                       R6 K5 ["string"] ; [+13]
      123 GETIMPORT                        R6 K7 [warn]
      125 LOADK                            R8 K19 ["groupId for reimport config '%*' could not be loaded"]
      126 MOVE                             R10 R4
      127 NAMECALL                         R8 R8 K9 ["format"]
      129 CALL                             R8 2 1
      130 MOVE                             R7 R8
      131 CALL                             R6 1 0
      132 LOADNIL                          R6
      133 SETTABLEKS                       R6 R5 K18 ["creatorType"]
      135 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      137 JUMPIFEQKS                       R6 K20 ["user"] ; [+19]
      139 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      141 JUMPIFEQKS                       R6 K21 ["group"] ; [+15]
      143 GETIMPORT                        R6 K7 [warn]
      145 LOADK                            R8 K22 ["creatorType for reimport config '%*' is invalid, must be either 'user' or 'group', found: '%*'"]
      146 MOVE                             R10 R4
      147 GETTABLEKS                       R11 R5 K18 ["creatorType"]
      149 NAMECALL                         R8 R8 K9 ["format"]
      151 CALL                             R8 3 1
      152 MOVE                             R7 R8
      153 CALL                             R6 1 0
      154 LOADNIL                          R6
      155 SETTABLEKS                       R6 R5 K18 ["creatorType"]
      157 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      159 JUMPIFNOTEQKNIL                  R6 ; [+4]
      161 LOADNIL                          R6
      162 SETTABLEKS                       R6 R5 K15 ["creatorId"]
      164 GETTABLEKS                       R6 R5 K15 ["creatorId"]
      166 JUMPIFNOTEQKNIL                  R6 ; [+4]
      168 LOADNIL                          R6
      169 SETTABLEKS                       R6 R5 K18 ["creatorType"]
      171 FORGLOOP                         R1 2 ; [-159]
      173 LOADNIL                          R1
      174 RETURN                           R1 1

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
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+2]
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["getConfigFromId"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFEQKNIL                     R3 ; [+12]
       11 JUMPIF                           R2 ; [+10]
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLE                         R9 R1 R7
       17 JUMPIFNOTEQKNIL                  R9 ; [+2]
       19 SETTABLE                         R8 R1 R7
       20 FORGLOOP                         R4 2 ; [-5]
       22 GETUPVAL                         R4 3
       23 SETTABLE                         R1 R4 R0
       24 GETUPVAL                         R4 4
       25 GETUPVAL                         R6 3
       26 NAMECALL                         R4 R4 K1 ["JSONEncode"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R5 R6 K2 ["SetSetting"]
       32 LOADK                            R6 K3 ["CIN:ReimportConfigs"]
       33 MOVE                             R7 R4
       34 CALL                             R5 2 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["ATTRIBUTE_KEY"]
        3 NAMECALL                         R4 R0 K1 ["GetAttribute"]
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R4 ; [+9]
        7 FASTCALL1                        TYPE R4 ; [+3]
        8 MOVE                             R6 R4
        9 GETIMPORT                        R5 K3 [type]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+3]
       14 JUMPIFNOTEQKS                    R4 K5 [""] ; [+3]
       16 LOADNIL                          R3
       17 JUMP                             ; [+1]
       18 MOVE                             R3 R4
       19 JUMPIFNOTEQKNIL                  R3 ; [+14]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K6 ["newConfig"]
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K0 ["ATTRIBUTE_KEY"]
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R0 K7 ["SetAttribute"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K8 ["updateConfigFromId"]
       37 MOVE                             R5 R3
       38 MOVE                             R6 R1
       39 MOVE                             R7 R2
       40 CALL                             R4 3 0
       41 RETURN                           R0 0

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
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R9 R0 K19 ["Flags"]
       58 GETTABLEKS                       R8 R9 K20 ["GetFFlagEnableGroupUpload"]
       60 CALL                             R7 1 1
       61 NEWTABLE                         R8 16 0
       63 GETTABLEKS                       R10 R4 K21 ["REIMPORT"]
       65 GETTABLEKS                       R9 R10 K22 ["ATTRIBUTE_KEY"]
       67 SETTABLEKS                       R9 R8 K22 ["ATTRIBUTE_KEY"]
       69 LOADK                            R9 K23 ["CIN:ReimportConfigs"]
       70 SETTABLEKS                       R9 R8 K24 ["REIMPORT_CONFIGS_SETTINGS_KEY"]
       72 LOADB                            R9 0
       73 NEWTABLE                         R10 0 0
       75 DUPCLOSURE                       R11 K25 [PROTO_0]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 NEWCLOSURE                       R12 P1
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R11
       83 CAPTURE                          REF R9
       84 CAPTURE                          REF R10
       85 NEWCLOSURE                       R13 P2
       86 CAPTURE                          VAL R1
       87 CAPTURE                          REF R10
       88 CAPTURE                          VAL R3
       89 DUPCLOSURE                       R14 K26 [PROTO_3]
       90 CAPTURE                          VAL R8
       91 DUPCLOSURE                       R15 K27 [PROTO_4]
       92 CAPTURE                          VAL R8
       93 NEWCLOSURE                       R16 P5
       94 CAPTURE                          REF R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          REF R10
       97 SETTABLEKS                       R16 R8 K28 ["getConfigFromId"]
       99 DUPCLOSURE                       R16 K29 [PROTO_6]
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R16 R8 K30 ["getConfigFromInstance"]
      103 NEWCLOSURE                       R16 P7
      104 CAPTURE                          REF R9
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R8
      107 CAPTURE                          REF R10
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R16 R8 K31 ["updateConfigFromId"]
      112 DUPCLOSURE                       R16 K32 [PROTO_8]
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R16 R8 K33 ["updateConfigFromInstance"]
      116 NEWCLOSURE                       R16 P9
      117 CAPTURE                          REF R9
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R1
      120 CAPTURE                          REF R10
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R16 R8 K34 ["newConfig"]
      124 NEWCLOSURE                       R16 P10
      125 CAPTURE                          REF R9
      126 CAPTURE                          REF R10
      127 SETTABLEKS                       R16 R8 K35 ["clearCache"]
      129 DUPCLOSURE                       R16 K36 [PROTO_11]
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R16 R8 K37 ["getOrCreateReimportConfig"]
      133 CLOSEUPVALS                      R9
      134 RETURN                           R8 1
