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
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R11 R11 K14 ["StudioDefaultPreset"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetSetting"]
        3 LOADK                            R1 K1 ["CIN:ReimportConfigs"]
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 JUMPIFNOTEQKS                    R0 K2 [""] ; [+2]
        9 RETURN                           R0 0
       10 GETIMPORT                        R1 K4 [pcall]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["JSONDecode"]
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
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["SetSetting"]
        8 LOADK                            R2 K2 ["CIN:ReimportConfigs"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ATTRIBUTE_KEY"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_KEY"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_KEY"]
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
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["getConfigFromId"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 -1
       30 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+2]
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["getConfigFromId"]
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
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R5 R5 K2 ["SetSetting"]
       32 LOADK                            R6 K3 ["CIN:ReimportConfigs"]
       33 MOVE                             R7 R4
       34 CALL                             R5 2 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["ATTRIBUTE_KEY"]
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
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["newConfig"]
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K0 ["ATTRIBUTE_KEY"]
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R0 K7 ["SetAttribute"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K8 ["updateConfigFromId"]
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
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K2 ["SetSetting"]
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
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+19]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+16]
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R6 R4 K0 ["id"]
       13 JUMPIFNOTEQ                      R5 R6 ; [+5]
       15 GETTABLEKS                       R5 R4 K0 ["id"]
       17 SETUPVAL                         R5 2
       18 RETURN                           R0 0
       19 FORGLOOP                         R0 2 ; [-10]
       21 RETURN                           R0 0

PROTO_12:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+19]
        4 GETUPVAL                         R1 0
        5 JUMPIFEQKNIL                     R1 ; [+16]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R7 R5 K0 ["id"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+5]
       16 GETTABLEKS                       R6 R5 K0 ["id"]
       18 SETUPVAL                         R6 2
       19 RETURN                           R0 0
       20 FORGLOOP                         R1 2 ; [-10]
       22 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["creatorTargetId"]
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 0
        5 JUMPIFEQKNIL                     R1 ; [+19]
        7 GETUPVAL                         R1 1
        8 JUMPIFEQKNIL                     R1 ; [+16]
       10 GETUPVAL                         R1 1
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R7 R5 K1 ["id"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+5]
       19 GETTABLEKS                       R6 R5 K1 ["id"]
       21 SETUPVAL                         R6 2
       22 RETURN                           R0 0
       23 FORGLOOP                         R1 2 ; [-10]
       25 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["getGroupsAsync"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R0
       13 CAPTURE                          REF R1
       14 CAPTURE                          UPVAL U0
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["getUniverseInfoAsync"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          REF R1
       21 CAPTURE                          REF R0
       22 CAPTURE                          UPVAL U0
       23 CALL                             R3 1 0
       24 CLOSEUPVALS                      R0
       25 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R0 K4 [{"filepath", "preset", "creatorId", "creatorType"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["filepath"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["preset"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K2 ["creatorId"]
       10 GETUPVAL                         R2 0
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADK                            R1 K5 ["group"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["creatorType"]
       17 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R0 K10 ["Lib"]
       17 GETTABLEKS                       R3 R3 K11 ["External"]
       19 GETTABLEKS                       R3 R3 K12 ["AssetImportService"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Lib"]
       26 GETTABLEKS                       R4 R4 K11 ["External"]
       28 GETTABLEKS                       R4 R4 K13 ["PluginStorage"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K14 ["Packages"]
       35 GETTABLEKS                       R5 R5 K15 ["SharedPluginConstants"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Lib"]
       42 GETTABLEKS                       R6 R6 K16 ["Constants"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K10 ["Lib"]
       49 GETTABLEKS                       R7 R7 K17 ["Reimport"]
       51 GETTABLEKS                       R7 R7 K18 ["Types"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K10 ["Lib"]
       58 GETTABLEKS                       R8 R8 K19 ["Networking"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K20 ["Flags"]
       65 GETTABLEKS                       R9 R9 K21 ["GetFFlagEnableGroupUpload"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 16 0
       70 GETTABLEKS                       R10 R4 K22 ["REIMPORT"]
       72 GETTABLEKS                       R10 R10 K23 ["ATTRIBUTE_KEY"]
       74 SETTABLEKS                       R10 R9 K23 ["ATTRIBUTE_KEY"]
       76 LOADK                            R10 K24 ["CIN:ReimportConfigs"]
       77 SETTABLEKS                       R10 R9 K25 ["REIMPORT_CONFIGS_SETTINGS_KEY"]
       79 LOADB                            R10 0
       80 NEWTABLE                         R11 0 0
       82 LOADNIL                          R12
       83 DUPCLOSURE                       R13 K26 [PROTO_0]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R8
       87 NEWCLOSURE                       R14 P1
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R13
       91 CAPTURE                          REF R10
       92 CAPTURE                          REF R11
       93 NEWCLOSURE                       R15 P2
       94 CAPTURE                          VAL R1
       95 CAPTURE                          REF R11
       96 CAPTURE                          VAL R3
       97 DUPCLOSURE                       R16 K27 [PROTO_3]
       98 CAPTURE                          VAL R9
       99 DUPCLOSURE                       R17 K28 [PROTO_4]
      100 CAPTURE                          VAL R9
      101 NEWCLOSURE                       R18 P5
      102 CAPTURE                          REF R10
      103 CAPTURE                          VAL R14
      104 CAPTURE                          REF R11
      105 SETTABLEKS                       R18 R9 K29 ["getConfigFromId"]
      107 DUPCLOSURE                       R18 K30 [PROTO_6]
      108 CAPTURE                          VAL R9
      109 SETTABLEKS                       R18 R9 K31 ["getConfigFromInstance"]
      111 NEWCLOSURE                       R18 P7
      112 CAPTURE                          REF R10
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R9
      115 CAPTURE                          REF R11
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R18 R9 K32 ["updateConfigFromId"]
      120 DUPCLOSURE                       R18 K33 [PROTO_8]
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R18 R9 K34 ["updateConfigFromInstance"]
      124 NEWCLOSURE                       R18 P9
      125 CAPTURE                          REF R10
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R1
      128 CAPTURE                          REF R11
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R18 R9 K35 ["newConfig"]
      132 NEWCLOSURE                       R18 P10
      133 CAPTURE                          REF R10
      134 CAPTURE                          REF R11
      135 SETTABLEKS                       R18 R9 K36 ["clearCache"]
      137 NEWCLOSURE                       R18 P11
      138 CAPTURE                          REF R12
      139 CAPTURE                          VAL R7
      140 NEWCLOSURE                       R19 P12
      141 CAPTURE                          REF R12
      142 SETTABLEKS                       R19 R9 K37 ["getDefaultConfig"]
      144 DUPCLOSURE                       R19 K38 [PROTO_16]
      145 CAPTURE                          VAL R18
      146 SETTABLEKS                       R19 R9 K39 ["init"]
      148 CLOSEUPVALS                      R10
      149 RETURN                           R9 1
