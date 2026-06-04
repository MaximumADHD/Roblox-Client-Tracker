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
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getSelectionIfOneInstance"]
        4 CALL                             R1 0 2
        5 JUMPIFNOT                        R1 ; [+23]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["ATTRIBUTE_KEY"]
        9 NAMECALL                         R4 R1 K2 ["GetAttribute"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+9]
       13 FASTCALL1                        TYPE R4 ; [+3]
       14 MOVE                             R6 R4
       15 GETIMPORT                        R5 K4 [type]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+3]
       20 JUMPIFNOTEQKS                    R4 K6 [""] ; [+3]
       22 LOADNIL                          R3
       23 JUMP                             ; [+1]
       24 MOVE                             R3 R4
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 LOADB                            R0 0 +1
       28 LOADB                            R0 1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K7 ["updateAction"]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K8 ["REIMPORT"]
       35 GETTABLEKS                       R4 R4 K9 ["ACTION_EVENTS"]
       37 GETTABLEKS                       R4 R4 K10 ["CLEAR_REIMPORT_CONFIG"]
       39 DUPTABLE                         R5 K12 [{"Enabled"}]
       40 SETTABLEKS                       R0 R5 K11 ["Enabled"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_KEY"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R0 K1 ["SetAttribute"]
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 2
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
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
       19 JUMPIFNOT                        R3 ; [+6]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["getConfigFromId"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 JUMPIFNOTEQKNIL                  R3 ; [+21]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["newConfig"]
       32 MOVE                             R6 R1
       33 CALL                             R5 1 1
       34 MOVE                             R3 R5
       35 MOVE                             R5 R3
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K0 ["ATTRIBUTE_KEY"]
       39 MOVE                             R9 R5
       40 NAMECALL                         R6 R0 K8 ["SetAttribute"]
       42 CALL                             R6 3 0
       43 GETUPVAL                         R6 1
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+10]
       46 GETUPVAL                         R6 2
       47 CALL                             R6 0 0
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K9 ["updateConfigFromId"]
       52 MOVE                             R6 R3
       53 MOVE                             R7 R1
       54 MOVE                             R8 R2
       55 CALL                             R5 3 0
       56 GETUPVAL                         R5 3
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+16]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K6 ["getConfigFromId"]
       62 MOVE                             R6 R3
       63 CALL                             R5 1 1
       64 GETUPVAL                         R6 4
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 FORGPREP                         R6
       68 MOVE                             R11 R10
       69 MOVE                             R12 R0
       70 MOVE                             R13 R4
       71 MOVE                             R14 R5
       72 CALL                             R11 3 0
       73 FORGLOOP                         R6 2 ; [-6]
       75 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ATTRIBUTE_KEY"]
        3 LOADNIL                          R4
        4 NAMECALL                         R1 R0 K1 ["SetAttribute"]
        6 CALL                             R1 3 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 GETUPVAL                         R1 2
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 NEWTABLE                         R0 0 0
        4 SETUPVAL                         R0 1
        5 NEWTABLE                         R0 0 0
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["count"]
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["logInitEvent"]
        8 DUPTABLE                         R1 K2 [{"configCount"}]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K3 ["countConfigs"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K1 ["configCount"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+9]
       19 GETUPVAL                         R0 5
       20 GETTABLEKS                       R0 R0 K4 ["SelectionChanged"]
       22 GETUPVAL                         R2 6
       23 NAMECALL                         R0 R0 K5 ["Connect"]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 6
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

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
       15 GETIMPORT                        R3 K1 [script]
       17 GETTABLEKS                       R3 R3 K10 ["Parent"]
       19 GETTABLEKS                       R3 R3 K10 ["Parent"]
       21 GETTABLEKS                       R3 R3 K10 ["Parent"]
       23 GETTABLEKS                       R3 R3 K11 ["Packages"]
       25 GETTABLEKS                       R3 R3 K12 ["Dash"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K9 [require]
       30 GETTABLEKS                       R4 R0 K13 ["Lib"]
       32 GETTABLEKS                       R4 R4 K14 ["External"]
       34 GETTABLEKS                       R4 R4 K15 ["AssetImportService"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K9 [require]
       39 GETTABLEKS                       R5 R0 K13 ["Lib"]
       41 GETTABLEKS                       R5 R5 K14 ["External"]
       43 GETTABLEKS                       R5 R5 K16 ["PluginStorage"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R6 R0 K11 ["Packages"]
       50 GETTABLEKS                       R6 R6 K17 ["SharedPluginConstants"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R7 R0 K13 ["Lib"]
       57 GETTABLEKS                       R7 R7 K18 ["Constants"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R0 K13 ["Lib"]
       64 GETTABLEKS                       R8 R8 K19 ["Reimport"]
       66 GETTABLEKS                       R8 R8 K20 ["Types"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R9 R0 K13 ["Lib"]
       73 GETTABLEKS                       R9 R9 K21 ["Networking"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R10 R0 K13 ["Lib"]
       80 GETTABLEKS                       R10 R10 K22 ["Util"]
       82 GETTABLEKS                       R10 R10 K23 ["Telemetry"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R11 R0 K13 ["Lib"]
       89 GETTABLEKS                       R11 R11 K24 ["Actions"]
       91 GETTABLEKS                       R11 R11 K25 ["ActionUtils"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R12 R0 K13 ["Lib"]
       98 GETTABLEKS                       R12 R12 K14 ["External"]
      100 GETTABLEKS                       R12 R12 K26 ["SelectionService"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K9 [require]
      105 GETTABLEKS                       R13 R0 K13 ["Lib"]
      107 GETTABLEKS                       R13 R13 K19 ["Reimport"]
      109 GETTABLEKS                       R13 R13 K27 ["SelectionHelper"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K9 [require]
      114 GETTABLEKS                       R14 R0 K28 ["Flags"]
      116 GETTABLEKS                       R14 R14 K29 ["GetFFlagEnableGroupUpload"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K9 [require]
      121 GETTABLEKS                       R15 R0 K28 ["Flags"]
      123 GETTABLEKS                       R15 R15 K30 ["GetFFlagReimportInitEvent"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K9 [require]
      128 GETTABLEKS                       R16 R0 K28 ["Flags"]
      130 GETTABLEKS                       R16 R16 K31 ["GetFFlagReimportClearAction"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R17 R0 K28 ["Flags"]
      137 GETTABLEKS                       R17 R17 K32 ["GetFFlagReimportFileWatcher"]
      139 CALL                             R16 1 1
      140 NEWTABLE                         R17 16 0
      142 GETTABLEKS                       R18 R5 K33 ["REIMPORT"]
      144 GETTABLEKS                       R18 R18 K34 ["ATTRIBUTE_KEY"]
      146 SETTABLEKS                       R18 R17 K34 ["ATTRIBUTE_KEY"]
      148 LOADK                            R18 K35 ["CIN:ReimportConfigs"]
      149 SETTABLEKS                       R18 R17 K36 ["REIMPORT_CONFIGS_SETTINGS_KEY"]
      151 LOADB                            R18 0
      152 NEWTABLE                         R19 0 0
      154 LOADNIL                          R20
      155 NEWTABLE                         R21 0 0
      157 DUPCLOSURE                       R22 K37 [PROTO_0]
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R13
      161 NEWCLOSURE                       R23 P1
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R22
      165 CAPTURE                          REF R18
      166 CAPTURE                          REF R19
      167 NEWCLOSURE                       R24 P2
      168 CAPTURE                          VAL R1
      169 CAPTURE                          REF R19
      170 CAPTURE                          VAL R4
      171 DUPCLOSURE                       R25 K38 [PROTO_3]
      172 CAPTURE                          VAL R17
      173 DUPCLOSURE                       R26 K39 [PROTO_4]
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R5
      178 DUPCLOSURE                       R27 K40 [PROTO_5]
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R26
      182 NEWCLOSURE                       R28 P6
      183 CAPTURE                          REF R18
      184 CAPTURE                          VAL R23
      185 CAPTURE                          REF R19
      186 SETTABLEKS                       R28 R17 K41 ["getConfigFromId"]
      188 DUPCLOSURE                       R28 K42 [PROTO_7]
      189 CAPTURE                          VAL R17
      190 SETTABLEKS                       R28 R17 K43 ["getConfigFromInstance"]
      192 NEWCLOSURE                       R28 P8
      193 CAPTURE                          REF R18
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R17
      196 CAPTURE                          REF R19
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R4
      199 SETTABLEKS                       R28 R17 K44 ["updateConfigFromId"]
      201 NEWCLOSURE                       R28 P9
      202 CAPTURE                          REF R21
      203 SETTABLEKS                       R28 R17 K45 ["registerConfigUpdateCallback"]
      205 NEWCLOSURE                       R28 P10
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R16
      210 CAPTURE                          REF R21
      211 SETTABLEKS                       R28 R17 K46 ["updateConfigFromInstance"]
      213 NEWCLOSURE                       R28 P11
      214 CAPTURE                          REF R18
      215 CAPTURE                          VAL R23
      216 CAPTURE                          VAL R1
      217 CAPTURE                          REF R19
      218 CAPTURE                          VAL R4
      219 SETTABLEKS                       R28 R17 K47 ["newConfig"]
      221 DUPCLOSURE                       R28 K48 [PROTO_12]
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R26
      225 SETTABLEKS                       R28 R17 K49 ["clearConfigFromInstance"]
      227 NEWCLOSURE                       R28 P13
      228 CAPTURE                          REF R18
      229 CAPTURE                          REF R19
      230 CAPTURE                          REF R21
      231 SETTABLEKS                       R28 R17 K50 ["clearCache"]
      233 NEWCLOSURE                       R28 P14
      234 CAPTURE                          REF R20
      235 CAPTURE                          VAL R8
      236 NEWCLOSURE                       R29 P15
      237 CAPTURE                          REF R20
      238 SETTABLEKS                       R29 R17 K51 ["getDefaultConfig"]
      240 NEWCLOSURE                       R29 P16
      241 CAPTURE                          REF R18
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R2
      244 CAPTURE                          REF R19
      245 SETTABLEKS                       R29 R17 K52 ["countConfigs"]
      247 DUPCLOSURE                       R29 K53 [PROTO_20]
      248 CAPTURE                          VAL R28
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R15
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R26
      255 SETTABLEKS                       R29 R17 K54 ["init"]
      257 CLOSEUPVALS                      R18
      258 RETURN                           R17 1
