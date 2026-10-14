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
       15 JUMPIFNOT                        R6 ; [+19]
       16 GETTABLEKS                       R7 R5 K4 ["filepath"]
       18 FASTCALL1                        TYPE R7 ; [+2]
       19 GETIMPORT                        R6 K1 [type]
       21 CALL                             R6 1 1
       22 JUMPIFEQKS                       R6 K5 ["string"] ; [+12]
       24 GETIMPORT                        R6 K7 [warn]
       26 LOADK                            R7 K8 ["filepath for reimport config '%*' could not be loaded"]
       27 MOVE                             R9 R4
       28 NAMECALL                         R7 R7 K9 ["format"]
       30 CALL                             R7 2 1
       31 CALL                             R6 1 0
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K4 ["filepath"]
       35 GETTABLEKS                       R6 R5 K10 ["preset"]
       37 JUMPIFNOT                        R6 ; [+43]
       38 GETTABLEKS                       R7 R5 K4 ["filepath"]
       40 FASTCALL1                        TYPE R7 ; [+2]
       41 GETIMPORT                        R6 K1 [type]
       43 CALL                             R6 1 1
       44 JUMPIFEQKS                       R6 K5 ["string"] ; [+13]
       46 GETIMPORT                        R6 K7 [warn]
       48 LOADK                            R7 K11 ["preset for reimport config '%*' could not be loaded"]
       49 MOVE                             R9 R4
       50 NAMECALL                         R7 R7 K9 ["format"]
       52 CALL                             R7 2 1
       53 CALL                             R6 1 0
       54 LOADNIL                          R6
       55 SETTABLEKS                       R6 R5 K10 ["preset"]
       57 JUMP                             ; [+23]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R8 R5 K10 ["preset"]
       61 NAMECALL                         R6 R6 K12 ["GetPreset"]
       63 CALL                             R6 2 1
       64 JUMPIFNOTEQKNIL                  R6 ; [+16]
       66 GETIMPORT                        R6 K7 [warn]
       68 LOADK                            R7 K13 ["preset '%*' does not exits, falling back to '%*' preset"]
       69 GETTABLEKS                       R9 R5 K10 ["preset"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K14 ["StudioDefaultPreset"]
       74 NAMECALL                         R7 R7 K9 ["format"]
       76 CALL                             R7 3 1
       77 CALL                             R6 1 0
       78 LOADNIL                          R6
       79 SETTABLEKS                       R6 R5 K10 ["preset"]
       81 GETTABLEKS                       R6 R5 K15 ["creatorId"]
       83 JUMPIFEQKNIL                     R6 ; [+20]
       85 GETTABLEKS                       R7 R5 K15 ["creatorId"]
       87 FASTCALL1                        TYPE R7 ; [+2]
       88 GETIMPORT                        R6 K1 [type]
       90 CALL                             R6 1 1
       91 JUMPIFEQKS                       R6 K16 ["number"] ; [+12]
       93 GETIMPORT                        R6 K7 [warn]
       95 LOADK                            R7 K17 ["creatorId for reimport config '%*' could not be loaded"]
       96 MOVE                             R9 R4
       97 NAMECALL                         R7 R7 K9 ["format"]
       99 CALL                             R7 2 1
      100 CALL                             R6 1 0
      101 LOADNIL                          R6
      102 SETTABLEKS                       R6 R5 K15 ["creatorId"]
      104 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      106 JUMPIFEQKNIL                     R6 ; [+41]
      108 GETTABLEKS                       R7 R5 K18 ["creatorType"]
      110 FASTCALL1                        TYPE R7 ; [+2]
      111 GETIMPORT                        R6 K1 [type]
      113 CALL                             R6 1 1
      114 JUMPIFEQKS                       R6 K5 ["string"] ; [+12]
      116 GETIMPORT                        R6 K7 [warn]
      118 LOADK                            R7 K19 ["groupId for reimport config '%*' could not be loaded"]
      119 MOVE                             R9 R4
      120 NAMECALL                         R7 R7 K9 ["format"]
      122 CALL                             R7 2 1
      123 CALL                             R6 1 0
      124 LOADNIL                          R6
      125 SETTABLEKS                       R6 R5 K18 ["creatorType"]
      127 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      129 JUMPIFEQKS                       R6 K20 ["user"] ; [+18]
      131 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      133 JUMPIFEQKS                       R6 K21 ["group"] ; [+14]
      135 GETIMPORT                        R6 K7 [warn]
      137 LOADK                            R7 K22 ["creatorType for reimport config '%*' is invalid, must be either 'user' or 'group', found: '%*'"]
      138 MOVE                             R9 R4
      139 GETTABLEKS                       R10 R5 K18 ["creatorType"]
      141 NAMECALL                         R7 R7 K9 ["format"]
      143 CALL                             R7 3 1
      144 CALL                             R6 1 0
      145 LOADNIL                          R6
      146 SETTABLEKS                       R6 R5 K18 ["creatorType"]
      148 GETTABLEKS                       R6 R5 K18 ["creatorType"]
      150 JUMPIFNOTEQKNIL                  R6 ; [+4]
      152 LOADNIL                          R6
      153 SETTABLEKS                       R6 R5 K15 ["creatorId"]
      155 GETTABLEKS                       R6 R5 K15 ["creatorId"]
      157 JUMPIFNOTEQKNIL                  R6 ; [+4]
      159 LOADNIL                          R6
      160 SETTABLEKS                       R6 R5 K18 ["creatorType"]
      162 FORGLOOP                         R1 2 ; [-150]
      164 LOADNIL                          R1
      165 RETURN                           R1 1

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
       30 JUMPIFEQKNIL                     R4 ; [+11]
       32 GETIMPORT                        R5 K7 [warn]
       34 LOADK                            R6 K9 ["Reimport configs validation failed: %*"]
       35 MOVE                             R8 R4
       36 NAMECALL                         R6 R6 K10 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R5 1 0
       40 NEWTABLE                         R3 0 0
       42 LOADB                            R5 1
       43 SETUPVAL                         R5 3
       44 SETUPVAL                         R3 4
       45 RETURN                           R0 0

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
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["getConfigIdFromInstance"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["updateAction"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["REIMPORT"]
       21 GETTABLEKS                       R4 R4 K4 ["ACTION_EVENTS"]
       23 GETTABLEKS                       R4 R4 K5 ["CLEAR_REIMPORT_CONFIG"]
       25 DUPTABLE                         R5 K7 [{"Enabled"}]
       26 SETTABLEKS                       R0 R5 K6 ["Enabled"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_KEY"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R0 K1 ["SetAttribute"]
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 2
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConfigIdFromInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+4]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 RETURN                           R2 2
       10 MOVE                             R2 R1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["getConfigFromId"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 -1
       16 RETURN                           R2 -1

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
       35 GETUPVAL                         R4 6
       36 CALL                             R4 0 1
       37 JUMPIFNOT                        R4 ; [+16]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K0 ["getConfigFromId"]
       41 MOVE                             R5 R0
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 7
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 MOVE                             R10 R9
       48 MOVE                             R11 R0
       49 MOVE                             R12 R3
       50 MOVE                             R13 R4
       51 CALL                             R10 3 0
       52 FORGLOOP                         R5 2 ; [-6]
       54 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getConfigIdFromInstance"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+35]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["newConfig"]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K2 ["ATTRIBUTE_KEY"]
       15 MOVE                             R8 R4
       16 NAMECALL                         R5 R0 K3 ["SetAttribute"]
       18 CALL                             R5 3 0
       19 GETUPVAL                         R5 1
       20 CALL                             R5 0 0
       21 GETUPVAL                         R5 2
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+24]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K4 ["getConfigFromId"]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 3
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 MOVE                             R11 R10
       34 MOVE                             R12 R4
       35 LOADNIL                          R13
       36 MOVE                             R14 R5
       37 CALL                             R11 3 0
       38 FORGLOOP                         R6 2 ; [-6]
       40 RETURN                           R0 0
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K5 ["updateConfigFromId"]
       44 MOVE                             R5 R3
       45 MOVE                             R6 R1
       46 MOVE                             R7 R2
       47 CALL                             R4 3 0
       48 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConfigIdFromInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getConfigFromId"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["ATTRIBUTE_KEY"]
       16 LOADNIL                          R6
       17 NAMECALL                         R3 R0 K3 ["SetAttribute"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R3 1
       21 CALL                             R3 0 0
       22 GETUPVAL                         R3 2
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETUPVAL                         R3 3
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 FORGPREP                         R3
       29 MOVE                             R8 R7
       30 MOVE                             R9 R0
       31 MOVE                             R10 R2
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 2 ; [-5]
       35 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 NEWTABLE                         R0 0 0
        4 SETUPVAL                         R0 1
        5 NEWTABLE                         R0 0 0
        7 SETUPVAL                         R0 2
        8 NEWTABLE                         R0 0 0
       10 SETUPVAL                         R0 3
       11 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 DUPTABLE                         R0 K5 [{[1] = , ["preset"] = , ["creatorId"], ["creatorType"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K3 ["creatorId"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADK                            R1 K6 ["group"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K4 ["creatorType"]
       11 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["count"]
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["logInitEvent"]
        5 DUPTABLE                         R1 K2 [{"configCount"}]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K3 ["countConfigs"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K1 ["configCount"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K4 ["SelectionChanged"]
       16 GETUPVAL                         R2 4
       17 NAMECALL                         R0 R0 K5 ["Connect"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 4
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

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
      116 GETTABLEKS                       R14 R14 K29 ["GetFFlagReimportFileWatcher"]
      118 CALL                             R13 1 1
      119 NEWTABLE                         R14 16 0
      121 GETTABLEKS                       R15 R5 K30 ["REIMPORT"]
      123 GETTABLEKS                       R15 R15 K31 ["ATTRIBUTE_KEY"]
      125 SETTABLEKS                       R15 R14 K31 ["ATTRIBUTE_KEY"]
      127 LOADK                            R15 K32 ["CIN:ReimportConfigs"]
      128 SETTABLEKS                       R15 R14 K33 ["REIMPORT_CONFIGS_SETTINGS_KEY"]
      130 LOADB                            R15 0
      131 NEWTABLE                         R16 0 0
      133 LOADNIL                          R17
      134 NEWTABLE                         R18 0 0
      136 NEWTABLE                         R19 0 0
      138 DUPCLOSURE                       R20 K34 [PROTO_0]
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R6
      141 NEWCLOSURE                       R21 P1
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R20
      145 CAPTURE                          REF R15
      146 CAPTURE                          REF R16
      147 NEWCLOSURE                       R22 P2
      148 CAPTURE                          VAL R1
      149 CAPTURE                          REF R16
      150 CAPTURE                          VAL R4
      151 DUPCLOSURE                       R23 K35 [PROTO_3]
      152 CAPTURE                          VAL R14
      153 SETTABLEKS                       R23 R14 K36 ["getConfigIdFromInstance"]
      155 DUPCLOSURE                       R23 K37 [PROTO_4]
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R5
      160 DUPCLOSURE                       R24 K38 [PROTO_5]
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R23
      163 NEWCLOSURE                       R25 P6
      164 CAPTURE                          REF R15
      165 CAPTURE                          VAL R21
      166 CAPTURE                          REF R16
      167 SETTABLEKS                       R25 R14 K39 ["getConfigFromId"]
      169 DUPCLOSURE                       R25 K40 [PROTO_7]
      170 CAPTURE                          VAL R14
      171 SETTABLEKS                       R25 R14 K41 ["getConfigFromInstance"]
      173 NEWCLOSURE                       R25 P8
      174 CAPTURE                          REF R15
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R14
      177 CAPTURE                          REF R16
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R13
      181 CAPTURE                          REF R18
      182 SETTABLEKS                       R25 R14 K42 ["updateConfigFromId"]
      184 NEWCLOSURE                       R25 P9
      185 CAPTURE                          REF R18
      186 SETTABLEKS                       R25 R14 K43 ["registerConfigUpdateCallback"]
      188 NEWCLOSURE                       R25 P10
      189 CAPTURE                          REF R19
      190 SETTABLEKS                       R25 R14 K44 ["registerConfigRemovedCallback"]
      192 NEWCLOSURE                       R25 P11
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R13
      196 CAPTURE                          REF R18
      197 SETTABLEKS                       R25 R14 K45 ["updateConfigFromInstance"]
      199 NEWCLOSURE                       R25 P12
      200 CAPTURE                          REF R15
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R1
      203 CAPTURE                          REF R16
      204 CAPTURE                          VAL R4
      205 SETTABLEKS                       R25 R14 K46 ["newConfig"]
      207 NEWCLOSURE                       R25 P13
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R13
      211 CAPTURE                          REF R19
      212 SETTABLEKS                       R25 R14 K47 ["clearConfigFromInstance"]
      214 NEWCLOSURE                       R25 P14
      215 CAPTURE                          REF R15
      216 CAPTURE                          REF R16
      217 CAPTURE                          REF R18
      218 CAPTURE                          REF R19
      219 SETTABLEKS                       R25 R14 K48 ["clearCache"]
      221 NEWCLOSURE                       R25 P15
      222 CAPTURE                          REF R17
      223 CAPTURE                          VAL R8
      224 NEWCLOSURE                       R26 P16
      225 CAPTURE                          REF R17
      226 SETTABLEKS                       R26 R14 K49 ["getDefaultConfig"]
      228 NEWCLOSURE                       R26 P17
      229 CAPTURE                          REF R15
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R2
      232 CAPTURE                          REF R16
      233 SETTABLEKS                       R26 R14 K50 ["countConfigs"]
      235 DUPCLOSURE                       R26 K51 [PROTO_21]
      236 CAPTURE                          VAL R25
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R23
      241 SETTABLEKS                       R26 R14 K52 ["init"]
      243 CLOSEUPVALS                      R15
      244 RETURN                           R14 1
