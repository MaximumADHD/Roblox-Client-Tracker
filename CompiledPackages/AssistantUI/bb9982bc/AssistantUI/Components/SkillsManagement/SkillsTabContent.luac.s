PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getAll"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Changed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getAll"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 0
       16 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ErrorCodes"]
        3 GETTABLEKS                       R3 R2 K1 ["NameInvalid"]
        5 JUMPIFNOTEQ                      R1 R3 ; [+4]
        7 GETTABLEKS                       R3 R0 K1 ["NameInvalid"]
        9 RETURN                           R3 1
       10 GETTABLEKS                       R3 R2 K2 ["NameTaken"]
       12 JUMPIFNOTEQ                      R1 R3 ; [+4]
       14 GETTABLEKS                       R3 R0 K2 ["NameTaken"]
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R2 K3 ["EmptyBody"]
       19 JUMPIFNOTEQ                      R1 R3 ; [+4]
       21 GETTABLEKS                       R3 R0 K4 ["ImportEmptyBody"]
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R2 K5 ["ParseError"]
       26 JUMPIFNOTEQ                      R1 R3 ; [+4]
       28 GETTABLEKS                       R3 R0 K6 ["ImportParseError"]
       30 RETURN                           R3 1
       31 GETTABLEKS                       R3 R2 K7 ["ReadFailed"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+4]
       35 GETTABLEKS                       R3 R0 K8 ["ImportReadFailed"]
       37 RETURN                           R3 1
       38 GETTABLEKS                       R3 R0 K9 ["ImportFailed"]
       40 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOTEQ                      R3 R0 ; [+3]
        4 LOADNIL                          R2
        5 JUMP                             ; [+1]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getDisabledSetAsync"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["skill"]
       12 GETTABLEKS                       R3 R3 K3 ["source"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K4 ["Roblox"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["getEnabledSetAsync"]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R3
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K6 ["isEnabled"]
       32 JUMPIFNOT                        R4 ; [+41]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K7 ["unregister"]
       36 GETUPVAL                         R5 5
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K2 ["skill"]
       40 GETTABLEKS                       R6 R6 K3 ["source"]
       42 CALL                             R4 2 0
       43 GETUPVAL                         R4 6
       44 GETTABLEKS                       R4 R4 K8 ["store"]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K2 ["skill"]
       49 CALL                             R4 1 0
       50 GETUPVAL                         R4 5
       51 LOADB                            R5 1
       52 SETTABLE                         R5 R1 R4
       53 JUMPIFNOT                        R3 ; [+3]
       54 GETUPVAL                         R4 5
       55 LOADNIL                          R5
       56 SETTABLE                         R5 R3 R4
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K2 ["skill"]
       60 GETTABLEKS                       R4 R4 K3 ["source"]
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K9 ["User"]
       65 JUMPIFNOTEQ                      R4 R5 ; [+43]
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K10 ["unshadowRobloxSkill"]
       70 GETUPVAL                         R5 5
       71 MOVE                             R6 R1
       72 CALL                             R4 2 0
       73 JUMP                             ; [+35]
       74 GETUPVAL                         R4 6
       75 GETTABLEKS                       R4 R4 K11 ["remove"]
       77 GETUPVAL                         R5 5
       78 CALL                             R4 1 0
       79 GETUPVAL                         R4 4
       80 GETTABLEKS                       R4 R4 K12 ["register"]
       82 GETUPVAL                         R5 2
       83 GETTABLEKS                       R5 R5 K2 ["skill"]
       85 CALL                             R4 1 0
       86 GETUPVAL                         R4 5
       87 LOADNIL                          R5
       88 SETTABLE                         R5 R1 R4
       89 JUMPIFNOT                        R3 ; [+3]
       90 GETUPVAL                         R4 5
       91 LOADB                            R5 1
       92 SETTABLE                         R5 R3 R4
       93 GETUPVAL                         R4 2
       94 GETTABLEKS                       R4 R4 K2 ["skill"]
       96 GETTABLEKS                       R4 R4 K3 ["source"]
       98 GETUPVAL                         R5 3
       99 GETTABLEKS                       R5 R5 K9 ["User"]
      101 JUMPIFNOTEQ                      R4 R5 ; [+7]
      103 GETUPVAL                         R4 1
      104 GETTABLEKS                       R4 R4 K13 ["shadowRobloxSkill"]
      106 GETUPVAL                         R5 5
      107 MOVE                             R6 R1
      108 CALL                             R4 2 0
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K14 ["persistDisabledSetAsync"]
      112 MOVE                             R5 R0
      113 MOVE                             R6 R1
      114 CALL                             R4 2 0
      115 JUMPIFNOT                        R3 ; [+6]
      116 GETUPVAL                         R4 1
      117 GETTABLEKS                       R4 R4 K15 ["persistEnabledSetAsync"]
      119 MOVE                             R5 R0
      120 MOVE                             R6 R3
      121 CALL                             R4 2 0
      122 GETUPVAL                         R4 2
      123 GETTABLEKS                       R4 R4 K2 ["skill"]
      125 GETTABLEKS                       R4 R4 K3 ["source"]
      127 GETUPVAL                         R5 3
      128 GETTABLEKS                       R5 R5 K9 ["User"]
      130 JUMPIFNOTEQ                      R4 R5 ; [+45]
      132 GETUPVAL                         R4 2
      133 GETTABLEKS                       R4 R4 K2 ["skill"]
      135 GETTABLEKS                       R4 R4 K16 ["assetId"]
      137 JUMPIFNOT                        R4 ; [+38]
      138 GETIMPORT                        R4 K18 [pcall]
      140 GETTABLEKS                       R5 R0 K19 ["cloudSkillAssets"]
      142 GETTABLEKS                       R5 R5 K20 ["uploadAssetsAsync"]
      144 NEWTABLE                         R6 0 1
      146 DUPTABLE                         R7 K24 [{"assetId", "name", "description", "isDisabled"}]
      147 GETUPVAL                         R8 2
      148 GETTABLEKS                       R8 R8 K2 ["skill"]
      150 GETTABLEKS                       R8 R8 K16 ["assetId"]
      152 SETTABLEKS                       R8 R7 K16 ["assetId"]
      154 GETUPVAL                         R8 2
      155 GETTABLEKS                       R8 R8 K2 ["skill"]
      157 GETTABLEKS                       R8 R8 K21 ["name"]
      159 SETTABLEKS                       R8 R7 K21 ["name"]
      161 GETUPVAL                         R8 2
      162 GETTABLEKS                       R8 R8 K2 ["skill"]
      164 GETTABLEKS                       R8 R8 K22 ["description"]
      166 SETTABLEKS                       R8 R7 K22 ["description"]
      168 GETUPVAL                         R8 2
      169 GETTABLEKS                       R8 R8 K6 ["isEnabled"]
      171 SETTABLEKS                       R8 R7 K23 ["isDisabled"]
      173 SETLIST                          R6 R7 1 [1]
      175 CALL                             R4 2 0
      176 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K2 [task.spawn]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U6
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["refreshAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_8]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 JUMPIF                           R0 ; [+4]
       10 GETIMPORT                        R2 K4 [warn]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K2 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["onClose"]
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["onClose"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["prefill"]
       13 LOADK                            R1 K2 ["/rbx-create-skill "]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 GETUPVAL                         R2 4
        9 LOADB                            R3 0
       10 CALL                             R2 1 0
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R2 5
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R2 K3 [warn]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 0
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 GETIMPORT                        R2 K2 [task.spawn]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U5
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 2
        9 GETUPVAL                         R2 5
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 JUMPIF                           R0 ; [+4]
       13 GETIMPORT                        R2 K3 [warn]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 LOADB                            R4 1
        5 CALL                             R3 1 0
        6 GETIMPORT                        R3 K2 [task.spawn]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getBySource"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["User"]
       10 GETUPVAL                         R3 3
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+5]
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K0 ["get"]
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+12]
       19 GETTABLEKS                       R2 R1 K3 ["assetId"]
       21 JUMPIFNOT                        R2 ; [+9]
       22 GETIMPORT                        R2 K5 [pcall]
       24 GETTABLEKS                       R3 R0 K6 ["cloudSkillAssets"]
       26 GETTABLEKS                       R3 R3 K7 ["deleteAssetAsync"]
       28 GETTABLEKS                       R4 R1 K3 ["assetId"]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K8 ["unregister"]
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K2 ["User"]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K9 ["remove"]
       42 GETUPVAL                         R3 3
       43 CALL                             R2 1 0
       44 GETUPVAL                         R2 5
       45 GETTABLEKS                       R2 R2 K10 ["getDisabledSetAsync"]
       47 MOVE                             R3 R0
       48 CALL                             R2 1 1
       49 LOADB                            R3 0
       50 GETUPVAL                         R5 3
       51 GETTABLE                         R4 R2 R5
       52 JUMPIFNOT                        R4 ; [+4]
       53 GETUPVAL                         R4 3
       54 LOADNIL                          R5
       55 SETTABLE                         R5 R2 R4
       56 LOADB                            R3 1
       57 GETUPVAL                         R4 5
       58 GETTABLEKS                       R4 R4 K11 ["unshadowRobloxSkill"]
       60 GETUPVAL                         R5 3
       61 MOVE                             R6 R2
       62 CALL                             R4 2 1
       63 JUMPIFNOT                        R4 ; [+1]
       64 LOADB                            R3 1
       65 JUMPIFNOT                        R3 ; [+6]
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R4 R4 K12 ["persistDisabledSetAsync"]
       69 MOVE                             R5 R0
       70 MOVE                             R6 R2
       71 CALL                             R4 2 0
       72 GETUPVAL                         R4 6
       73 LOADNIL                          R5
       74 CALL                             R4 1 0
       75 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R0 K13 [{"Title", "Description", "CreateNew", "CreateFromText", "Refresh", "PersonalGroup", "RobloxGroup", "NameInvalid", "NameTaken", "ImportParseError", "ImportEmptyBody", "ImportReadFailed", "ImportFailed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K14 ["SettingsDialog"]
        3 LOADK                            R4 K15 ["SkillsTab"]
        4 NAMECALL                         R1 R1 K16 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K17 ["Skills"]
       11 LOADK                            R4 K1 ["Description"]
       12 NAMECALL                         R1 R1 K16 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Description"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K17 ["Skills"]
       19 LOADK                            R4 K2 ["CreateNew"]
       20 NAMECALL                         R1 R1 K16 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["CreateNew"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K17 ["Skills"]
       27 LOADK                            R4 K3 ["CreateFromText"]
       28 NAMECALL                         R1 R1 K16 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["CreateFromText"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K17 ["Skills"]
       35 LOADK                            R4 K4 ["Refresh"]
       36 NAMECALL                         R1 R1 K16 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Refresh"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K17 ["Skills"]
       43 LOADK                            R4 K5 ["PersonalGroup"]
       44 NAMECALL                         R1 R1 K16 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["PersonalGroup"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K17 ["Skills"]
       51 LOADK                            R4 K6 ["RobloxGroup"]
       52 NAMECALL                         R1 R1 K16 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["RobloxGroup"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K17 ["Skills"]
       59 LOADK                            R4 K18 ["CreateNameInvalid"]
       60 NAMECALL                         R1 R1 K16 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["NameInvalid"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K17 ["Skills"]
       67 LOADK                            R4 K19 ["CreateNameTaken"]
       68 NAMECALL                         R1 R1 K16 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["NameTaken"]
       73 GETUPVAL                         R1 0
       74 LOADK                            R3 K17 ["Skills"]
       75 LOADK                            R4 K9 ["ImportParseError"]
       76 NAMECALL                         R1 R1 K16 ["getText"]
       78 CALL                             R1 3 1
       79 SETTABLEKS                       R1 R0 K9 ["ImportParseError"]
       81 GETUPVAL                         R1 0
       82 LOADK                            R3 K17 ["Skills"]
       83 LOADK                            R4 K10 ["ImportEmptyBody"]
       84 NAMECALL                         R1 R1 K16 ["getText"]
       86 CALL                             R1 3 1
       87 SETTABLEKS                       R1 R0 K10 ["ImportEmptyBody"]
       89 GETUPVAL                         R1 0
       90 LOADK                            R3 K17 ["Skills"]
       91 LOADK                            R4 K11 ["ImportReadFailed"]
       92 NAMECALL                         R1 R1 K16 ["getText"]
       94 CALL                             R1 3 1
       95 SETTABLEKS                       R1 R0 K11 ["ImportReadFailed"]
       97 GETUPVAL                         R1 0
       98 LOADK                            R3 K17 ["Skills"]
       99 LOADK                            R4 K12 ["ImportFailed"]
      100 NAMECALL                         R1 R1 K16 ["getText"]
      102 CALL                             R1 3 1
      103 SETTABLEKS                       R1 R0 K12 ["ImportFailed"]
      105 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["importFromFileAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_24:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_23]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 JUMPIF                           R0 ; [+10]
       10 GETIMPORT                        R2 K4 [warn]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K5 ["ImportFailed"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K6 ["status"]
       22 JUMPIFNOTEQKS                    R2 K7 ["created"] ; [+6]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R3 R1 K8 ["name"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R2 R1 K6 ["status"]
       31 JUMPIFNOTEQKS                    R2 K9 ["error"] ; [+60]
       33 GETTABLEKS                       R2 R1 K10 ["detail"]
       35 JUMPIFNOT                        R2 ; [+11]
       36 GETIMPORT                        R2 K4 [warn]
       38 LOADK                            R3 K11 ["[Assistant][Skills] import failed (%*): %*"]
       39 GETTABLEKS                       R5 R1 K12 ["code"]
       41 GETTABLEKS                       R6 R1 K10 ["detail"]
       43 NAMECALL                         R3 R3 K13 ["format"]
       45 CALL                             R3 3 1
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 3
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R5 R1 K12 ["code"]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K14 ["ErrorCodes"]
       54 GETTABLEKS                       R7 R6 K15 ["NameInvalid"]
       56 JUMPIFNOTEQ                      R5 R7 ; [+4]
       58 GETTABLEKS                       R3 R4 K15 ["NameInvalid"]
       60 JUMP                             ; [+30]
       61 GETTABLEKS                       R7 R6 K16 ["NameTaken"]
       63 JUMPIFNOTEQ                      R5 R7 ; [+4]
       65 GETTABLEKS                       R3 R4 K16 ["NameTaken"]
       67 JUMP                             ; [+23]
       68 GETTABLEKS                       R7 R6 K17 ["EmptyBody"]
       70 JUMPIFNOTEQ                      R5 R7 ; [+4]
       72 GETTABLEKS                       R3 R4 K18 ["ImportEmptyBody"]
       74 JUMP                             ; [+16]
       75 GETTABLEKS                       R7 R6 K19 ["ParseError"]
       77 JUMPIFNOTEQ                      R5 R7 ; [+4]
       79 GETTABLEKS                       R3 R4 K20 ["ImportParseError"]
       81 JUMP                             ; [+9]
       82 GETTABLEKS                       R7 R6 K21 ["ReadFailed"]
       84 JUMPIFNOTEQ                      R5 R7 ; [+4]
       86 GETTABLEKS                       R3 R4 K22 ["ImportReadFailed"]
       88 JUMP                             ; [+2]
       89 GETTABLEKS                       R3 R4 K5 ["ImportFailed"]
       91 CALL                             R2 1 0
       92 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K2 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K0 ["useState"]
       12 LOADB                            R6 0
       13 CALL                             R5 1 2
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K0 ["useState"]
       17 LOADB                            R8 0
       18 CALL                             R7 1 2
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R9 R9 K0 ["useState"]
       22 LOADNIL                          R10
       23 CALL                             R9 1 2
       24 NEWTABLE                         R11 0 0
       26 NEWTABLE                         R12 0 0
       28 MOVE                             R13 R1
       29 LOADNIL                          R14
       30 LOADNIL                          R15
       31 FORGPREP                         R13
       32 DUPTABLE                         R18 K6 [{["skill"], ["isEnabled"] = True, ["isToggleDisabled"] = False}]
       33 SETTABLEKS                       R17 R18 K1 ["skill"]
       35 SETTABLE                         R18 R11 R16
       36 GETTABLEKS                       R18 R17 K7 ["source"]
       38 GETUPVAL                         R19 3
       39 GETTABLEKS                       R19 R19 K8 ["User"]
       41 JUMPIFNOTEQ                      R18 R19 ; [+3]
       43 LOADB                            R18 1
       44 SETTABLE                         R18 R12 R16
       45 FORGLOOP                         R13 2 ; [-14]
       47 MOVE                             R13 R2
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 FORGPREP                         R13
       51 DUPTABLE                         R18 K9 [{["skill"], ["isEnabled"] = False, ["isToggleDisabled"] = False}]
       52 SETTABLEKS                       R17 R18 K1 ["skill"]
       54 SETTABLE                         R18 R11 R16
       55 FORGLOOP                         R13 2 ; [-5]
       57 MOVE                             R13 R11
       58 LOADNIL                          R14
       59 LOADNIL                          R15
       60 FORGPREP                         R13
       61 GETTABLEKS                       R18 R17 K1 ["skill"]
       63 GETTABLEKS                       R18 R18 K7 ["source"]
       65 GETUPVAL                         R19 3
       66 GETTABLEKS                       R19 R19 K10 ["Roblox"]
       68 JUMPIFNOTEQ                      R18 R19 ; [+19]
       70 LOADN                            R21 1
       71 LOADN                            R22 4
       72 NAMECALL                         R19 R16 K11 ["sub"]
       74 CALL                             R19 3 1
       75 JUMPIFNOTEQKS                    R19 K12 ["rbx-"] ; [+6]
       77 LOADN                            R20 5
       78 NAMECALL                         R18 R16 K11 ["sub"]
       80 CALL                             R18 2 1
       81 JUMP                             ; [+1]
       82 MOVE                             R18 R16
       83 GETTABLE                         R19 R12 R18
       84 JUMPIFNOT                        R19 ; [+3]
       85 LOADB                            R19 1
       86 SETTABLEKS                       R19 R17 K4 ["isToggleDisabled"]
       88 FORGLOOP                         R13 2 ; [-28]
       90 LOADNIL                          R13
       91 JUMPIFNOT                        R3 ; [+11]
       92 GETTABLE                         R14 R11 R3
       93 JUMPIFNOT                        R14 ; [+3]
       94 GETTABLEKS                       R13 R14 K1 ["skill"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R13
       98 JUMPIFNOTEQKNIL                  R13 ; [+4]
      100 MOVE                             R15 R4
      101 LOADNIL                          R16
      102 CALL                             R15 1 0
      103 GETUPVAL                         R14 2
      104 GETTABLEKS                       R14 R14 K13 ["useCallback"]
      106 NEWCLOSURE                       R15 P0
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R3
      109 NEWTABLE                         R16 0 1
      111 MOVE                             R17 R3
      112 SETLIST                          R16 R17 1 [1]
      114 CALL                             R14 2 1
      115 GETUPVAL                         R15 2
      116 GETTABLEKS                       R15 R15 K13 ["useCallback"]
      118 NEWCLOSURE                       R16 P1
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          UPVAL U3
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          UPVAL U7
      126 NEWTABLE                         R17 0 1
      128 MOVE                             R18 R11
      129 SETLIST                          R17 R18 1 [1]
      131 CALL                             R15 2 1
      132 GETUPVAL                         R16 2
      133 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      135 NEWCLOSURE                       R17 P2
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R8
      138 CAPTURE                          UPVAL U8
      139 CAPTURE                          UPVAL U4
      140 NEWTABLE                         R18 0 0
      142 CALL                             R16 2 1
      143 GETUPVAL                         R17 2
      144 GETTABLEKS                       R17 R17 K13 ["useCallback"]
      146 NEWCLOSURE                       R18 P3
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U9
      149 NEWTABLE                         R19 0 1
      151 JUMPIFNOT                        R0 ; [+3]
      152 GETTABLEKS                       R20 R0 K14 ["onClose"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R20
      156 SETLIST                          R19 R20 1 [1]
      158 CALL                             R17 2 1
      159 GETUPVAL                         R18 2
      160 GETTABLEKS                       R18 R18 K13 ["useCallback"]
      162 NEWCLOSURE                       R19 P4
      163 CAPTURE                          VAL R6
      164 NEWTABLE                         R20 0 0
      166 CALL                             R18 2 1
      167 GETUPVAL                         R19 2
      168 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      170 NEWCLOSURE                       R20 P5
      171 CAPTURE                          VAL R6
      172 NEWTABLE                         R21 0 0
      174 CALL                             R19 2 1
      175 GETUPVAL                         R20 2
      176 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      178 NEWCLOSURE                       R21 P6
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R8
      182 CAPTURE                          UPVAL U10
      183 CAPTURE                          UPVAL U4
      184 CAPTURE                          VAL R4
      185 NEWTABLE                         R22 0 0
      187 CALL                             R20 2 1
      188 GETUPVAL                         R21 2
      189 GETTABLEKS                       R21 R21 K13 ["useCallback"]
      191 NEWCLOSURE                       R22 P7
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R8
      194 CAPTURE                          UPVAL U10
      195 CAPTURE                          UPVAL U4
      196 NEWTABLE                         R23 0 0
      198 CALL                             R21 2 1
      199 GETUPVAL                         R22 2
      200 GETTABLEKS                       R22 R22 K13 ["useCallback"]
      202 NEWCLOSURE                       R23 P8
      203 CAPTURE                          VAL R10
      204 CAPTURE                          UPVAL U4
      205 CAPTURE                          UPVAL U6
      206 CAPTURE                          UPVAL U3
      207 CAPTURE                          UPVAL U7
      208 CAPTURE                          UPVAL U5
      209 CAPTURE                          VAL R4
      210 NEWTABLE                         R24 0 0
      212 CALL                             R22 2 1
      213 GETUPVAL                         R23 2
      214 GETTABLEKS                       R23 R23 K15 ["useMemo"]
      216 DUPCLOSURE                       R24 K16 [PROTO_22]
      217 CAPTURE                          UPVAL U11
      218 NEWTABLE                         R25 0 1
      220 GETUPVAL                         R26 11
      221 GETTABLEKS                       R26 R26 K17 ["locale"]
      223 SETLIST                          R25 R26 1 [1]
      225 CALL                             R23 2 1
      226 GETUPVAL                         R24 2
      227 GETTABLEKS                       R24 R24 K13 ["useCallback"]
      229 NEWCLOSURE                       R25 P10
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R8
      232 CAPTURE                          UPVAL U12
      233 CAPTURE                          UPVAL U4
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R4
      236 NEWTABLE                         R26 0 1
      238 MOVE                             R27 R23
      239 SETLIST                          R26 R27 1 [1]
      241 CALL                             R24 2 1
      242 GETUPVAL                         R25 13
      243 CALL                             R25 0 1
      244 GETUPVAL                         R26 13
      245 CALL                             R26 0 1
      246 GETUPVAL                         R27 14
      247 GETUPVAL                         R28 15
      248 DUPTABLE                         R29 K21 [{["tag"] = "col gap-small size-full-full", ["testId"]}]
      249 GETUPVAL                         R30 16
      250 GETTABLEKS                       R30 R30 K22 ["Skills"]
      252 GETTABLEKS                       R30 R30 K23 ["TabContent"]
      254 SETTABLEKS                       R30 R29 K20 ["testId"]
      256 DUPTABLE                         R30 K31 [{"TitleAndButtons", "ImportError", "Description", "TreeScroll", "DetailDivider", "DetailPane", "CreateModal"}]
      257 GETUPVAL                         R31 14
      258 GETUPVAL                         R32 15
      259 DUPTABLE                         R33 K34 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      260 MOVE                             R34 R25
      261 CALL                             R34 0 1
      262 SETTABLEKS                       R34 R33 K32 ["LayoutOrder"]
      264 DUPTABLE                         R34 K42 [{"TitleText", "Spacer", "LoadingSpinner", "RefreshButton", "CreateNewButton", "CreateFromTextButton", "UploadButton"}]
      265 GETUPVAL                         R35 14
      266 GETUPVAL                         R36 17
      267 DUPTABLE                         R37 K45 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      268 GETTABLEKS                       R38 R23 K46 ["Title"]
      270 SETTABLEKS                       R38 R37 K44 ["Text"]
      272 MOVE                             R38 R26
      273 CALL                             R38 0 1
      274 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      276 CALL                             R35 2 1
      277 SETTABLEKS                       R35 R34 K35 ["TitleText"]
      279 GETUPVAL                         R35 14
      280 GETUPVAL                         R36 15
      281 DUPTABLE                         R37 K48 [{["tag"] = "fill", ["LayoutOrder"]}]
      282 MOVE                             R38 R26
      283 CALL                             R38 0 1
      284 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      286 CALL                             R35 2 1
      287 SETTABLEKS                       R35 R34 K36 ["Spacer"]
      289 JUMPIFNOT                        R7 ; [+14]
      290 GETUPVAL                         R35 14
      291 GETUPVAL                         R36 18
      292 DUPTABLE                         R37 K50 [{"size", "LayoutOrder"}]
      293 GETUPVAL                         R38 19
      294 GETTABLEKS                       R38 R38 K51 ["Small"]
      296 SETTABLEKS                       R38 R37 K49 ["size"]
      298 MOVE                             R38 R26
      299 CALL                             R38 0 1
      300 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      302 CALL                             R35 2 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R35
      305 SETTABLEKS                       R35 R34 K37 ["LoadingSpinner"]
      307 GETUPVAL                         R35 14
      308 GETUPVAL                         R36 20
      309 DUPTABLE                         R37 K56 [{"icon", "size", "variant", "onActivated", "isDisabled", "testId", "LayoutOrder"}]
      310 GETUPVAL                         R38 21
      311 GETTABLEKS                       R38 R38 K57 ["Enums"]
      313 GETTABLEKS                       R38 R38 K58 ["IconName"]
      315 GETTABLEKS                       R38 R38 K59 ["TwoArrowsSpinClockwise"]
      317 SETTABLEKS                       R38 R37 K52 ["icon"]
      319 GETUPVAL                         R38 21
      320 GETTABLEKS                       R38 R38 K57 ["Enums"]
      322 GETTABLEKS                       R38 R38 K60 ["InputSize"]
      324 GETTABLEKS                       R38 R38 K61 ["XSmall"]
      326 SETTABLEKS                       R38 R37 K49 ["size"]
      328 GETUPVAL                         R38 22
      329 GETTABLEKS                       R38 R38 K62 ["Utility"]
      331 SETTABLEKS                       R38 R37 K53 ["variant"]
      333 SETTABLEKS                       R16 R37 K54 ["onActivated"]
      335 SETTABLEKS                       R7 R37 K55 ["isDisabled"]
      337 GETUPVAL                         R38 16
      338 GETTABLEKS                       R38 R38 K22 ["Skills"]
      340 GETTABLEKS                       R38 R38 K38 ["RefreshButton"]
      342 SETTABLEKS                       R38 R37 K20 ["testId"]
      344 MOVE                             R38 R26
      345 CALL                             R38 0 1
      346 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      348 CALL                             R35 2 1
      349 SETTABLEKS                       R35 R34 K38 ["RefreshButton"]
      351 GETUPVAL                         R35 14
      352 GETUPVAL                         R36 23
      353 DUPTABLE                         R37 K64 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      354 GETTABLEKS                       R38 R23 K65 ["CreateNew"]
      356 SETTABLEKS                       R38 R37 K63 ["text"]
      358 GETUPVAL                         R38 24
      359 GETTABLEKS                       R38 R38 K61 ["XSmall"]
      361 SETTABLEKS                       R38 R37 K49 ["size"]
      363 GETUPVAL                         R38 22
      364 GETTABLEKS                       R38 R38 K66 ["Emphasis"]
      366 SETTABLEKS                       R38 R37 K53 ["variant"]
      368 SETTABLEKS                       R17 R37 K54 ["onActivated"]
      370 GETUPVAL                         R38 16
      371 GETTABLEKS                       R38 R38 K22 ["Skills"]
      373 GETTABLEKS                       R38 R38 K39 ["CreateNewButton"]
      375 SETTABLEKS                       R38 R37 K20 ["testId"]
      377 MOVE                             R38 R26
      378 CALL                             R38 0 1
      379 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      381 CALL                             R35 2 1
      382 SETTABLEKS                       R35 R34 K39 ["CreateNewButton"]
      384 GETUPVAL                         R35 14
      385 GETUPVAL                         R36 23
      386 DUPTABLE                         R37 K64 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      387 GETTABLEKS                       R38 R23 K67 ["CreateFromText"]
      389 SETTABLEKS                       R38 R37 K63 ["text"]
      391 GETUPVAL                         R38 24
      392 GETTABLEKS                       R38 R38 K61 ["XSmall"]
      394 SETTABLEKS                       R38 R37 K49 ["size"]
      396 GETUPVAL                         R38 22
      397 GETTABLEKS                       R38 R38 K68 ["Standard"]
      399 SETTABLEKS                       R38 R37 K53 ["variant"]
      401 SETTABLEKS                       R18 R37 K54 ["onActivated"]
      403 GETUPVAL                         R38 16
      404 GETTABLEKS                       R38 R38 K22 ["Skills"]
      406 GETTABLEKS                       R38 R38 K40 ["CreateFromTextButton"]
      408 SETTABLEKS                       R38 R37 K20 ["testId"]
      410 MOVE                             R38 R26
      411 CALL                             R38 0 1
      412 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      414 CALL                             R35 2 1
      415 SETTABLEKS                       R35 R34 K40 ["CreateFromTextButton"]
      417 GETUPVAL                         R36 25
      418 GETTABLEKS                       R36 R36 K69 ["FFlagAssistantSkillImport"]
      420 JUMPIFNOT                        R36 ; [+43]
      421 GETUPVAL                         R35 14
      422 GETUPVAL                         R36 20
      423 DUPTABLE                         R37 K56 [{"icon", "size", "variant", "onActivated", "isDisabled", "testId", "LayoutOrder"}]
      424 GETUPVAL                         R38 21
      425 GETTABLEKS                       R38 R38 K57 ["Enums"]
      427 GETTABLEKS                       R38 R38 K58 ["IconName"]
      429 GETTABLEKS                       R38 R38 K70 ["ArrowUpFromLine"]
      431 SETTABLEKS                       R38 R37 K52 ["icon"]
      433 GETUPVAL                         R38 21
      434 GETTABLEKS                       R38 R38 K57 ["Enums"]
      436 GETTABLEKS                       R38 R38 K60 ["InputSize"]
      438 GETTABLEKS                       R38 R38 K61 ["XSmall"]
      440 SETTABLEKS                       R38 R37 K49 ["size"]
      442 GETUPVAL                         R38 22
      443 GETTABLEKS                       R38 R38 K62 ["Utility"]
      445 SETTABLEKS                       R38 R37 K53 ["variant"]
      447 SETTABLEKS                       R24 R37 K54 ["onActivated"]
      449 SETTABLEKS                       R7 R37 K55 ["isDisabled"]
      451 GETUPVAL                         R38 16
      452 GETTABLEKS                       R38 R38 K22 ["Skills"]
      454 GETTABLEKS                       R38 R38 K41 ["UploadButton"]
      456 SETTABLEKS                       R38 R37 K20 ["testId"]
      458 MOVE                             R38 R26
      459 CALL                             R38 0 1
      460 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      462 CALL                             R35 2 1
      463 JUMP                             ; [+1]
      464 LOADNIL                          R35
      465 SETTABLEKS                       R35 R34 K41 ["UploadButton"]
      467 CALL                             R31 3 1
      468 SETTABLEKS                       R31 R30 K24 ["TitleAndButtons"]
      470 JUMPIFEQKNIL                     R9 ; [+19]
      472 GETUPVAL                         R31 14
      473 GETUPVAL                         R32 17
      474 DUPTABLE                         R33 K72 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-system-warning", ["Text"], ["testId"], ["LayoutOrder"]}]
      475 SETTABLEKS                       R9 R33 K44 ["Text"]
      477 GETUPVAL                         R34 16
      478 GETTABLEKS                       R34 R34 K22 ["Skills"]
      480 GETTABLEKS                       R34 R34 K25 ["ImportError"]
      482 SETTABLEKS                       R34 R33 K20 ["testId"]
      484 MOVE                             R34 R25
      485 CALL                             R34 0 1
      486 SETTABLEKS                       R34 R33 K32 ["LayoutOrder"]
      488 CALL                             R31 2 1
      489 JUMP                             ; [+1]
      490 LOADNIL                          R31
      491 SETTABLEKS                       R31 R30 K25 ["ImportError"]
      493 GETUPVAL                         R31 14
      494 GETUPVAL                         R32 17
      495 DUPTABLE                         R33 K74 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      496 GETTABLEKS                       R34 R23 K26 ["Description"]
      498 SETTABLEKS                       R34 R33 K44 ["Text"]
      500 MOVE                             R34 R25
      501 CALL                             R34 0 1
      502 SETTABLEKS                       R34 R33 K32 ["LayoutOrder"]
      504 CALL                             R31 2 1
      505 SETTABLEKS                       R31 R30 K26 ["Description"]
      507 GETUPVAL                         R31 14
      508 GETUPVAL                         R32 26
      509 DUPTABLE                         R33 K78 [{"Size", "LayoutOrder", "scroll", "layout"}]
      510 GETIMPORT                        R34 K81 [UDim2.new]
      512 LOADN                            R35 1
      513 LOADN                            R36 0
      514 LOADN                            R37 1
      515 JUMPIFNOT                        R13 ; [+2]
      516 LOADN                            R40 200
      517 JUMP                             ; [+1]
      518 LOADN                            R40 120
      519 MINUS                            R39 R40
      520 JUMPIFEQKNIL                     R9 ; [+3]
      522 LOADN                            R40 48
      523 JUMP                             ; [+1]
      524 LOADN                            R40 0
      525 SUB                              R38 R39 R40
      526 CALL                             R34 4 1
      527 SETTABLEKS                       R34 R33 K75 ["Size"]
      529 MOVE                             R34 R25
      530 CALL                             R34 0 1
      531 SETTABLEKS                       R34 R33 K32 ["LayoutOrder"]
      533 DUPTABLE                         R34 K86 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      534 GETIMPORT                        R35 K90 [Enum.AutomaticSize.Y]
      536 SETTABLEKS                       R35 R34 K82 ["AutomaticCanvasSize"]
      538 GETIMPORT                        R35 K81 [UDim2.new]
      540 LOADN                            R36 0
      541 LOADN                            R37 0
      542 LOADN                            R38 0
      543 LOADN                            R39 0
      544 CALL                             R35 4 1
      545 SETTABLEKS                       R35 R34 K83 ["CanvasSize"]
      547 GETIMPORT                        R35 K91 [Enum.ScrollingDirection.Y]
      549 SETTABLEKS                       R35 R34 K84 ["ScrollingDirection"]
      551 GETUPVAL                         R35 21
      552 GETTABLEKS                       R35 R35 K57 ["Enums"]
      554 GETTABLEKS                       R35 R35 K92 ["Visibility"]
      556 GETTABLEKS                       R35 R35 K93 ["Auto"]
      558 SETTABLEKS                       R35 R34 K85 ["scrollBarVisibility"]
      560 SETTABLEKS                       R34 R33 K76 ["scroll"]
      562 DUPTABLE                         R34 K96 [{"SortOrder", "FillDirection"}]
      563 GETIMPORT                        R35 K97 [Enum.SortOrder.LayoutOrder]
      565 SETTABLEKS                       R35 R34 K94 ["SortOrder"]
      567 GETIMPORT                        R35 K99 [Enum.FillDirection.Vertical]
      569 SETTABLEKS                       R35 R34 K95 ["FillDirection"]
      571 SETTABLEKS                       R34 R33 K77 ["layout"]
      573 DUPTABLE                         R34 K101 [{"Tree"}]
      574 GETUPVAL                         R35 14
      575 GETUPVAL                         R36 27
      576 DUPTABLE                         R37 K109 [{["skills"], ["personalGroupLabel"], ["robloxGroupLabel"], ["selectedSkillName"], ["onSelectSkill"], ["onToggleSkill"], ["LayoutOrder"] = 1}]
      577 SETTABLEKS                       R11 R37 K102 ["skills"]
      579 GETTABLEKS                       R38 R23 K110 ["PersonalGroup"]
      581 SETTABLEKS                       R38 R37 K103 ["personalGroupLabel"]
      583 GETTABLEKS                       R38 R23 K111 ["RobloxGroup"]
      585 SETTABLEKS                       R38 R37 K104 ["robloxGroupLabel"]
      587 SETTABLEKS                       R3 R37 K105 ["selectedSkillName"]
      589 SETTABLEKS                       R14 R37 K106 ["onSelectSkill"]
      591 SETTABLEKS                       R15 R37 K107 ["onToggleSkill"]
      593 CALL                             R35 2 1
      594 SETTABLEKS                       R35 R34 K100 ["Tree"]
      596 CALL                             R31 3 1
      597 SETTABLEKS                       R31 R30 K27 ["TreeScroll"]
      599 GETUPVAL                         R31 14
      600 GETUPVAL                         R32 28
      601 DUPTABLE                         R33 K112 [{"LayoutOrder"}]
      602 MOVE                             R34 R25
      603 CALL                             R34 0 1
      604 SETTABLEKS                       R34 R33 K32 ["LayoutOrder"]
      606 CALL                             R31 2 1
      607 SETTABLEKS                       R31 R30 K28 ["DetailDivider"]
      609 GETUPVAL                         R31 14
      610 GETUPVAL                         R32 29
      611 DUPTABLE                         R33 K115 [{"skill", "onDeleteSkill", "onDuplicateSkill", "onClose", "LayoutOrder"}]
      612 SETTABLEKS                       R13 R33 K1 ["skill"]
      614 SETTABLEKS                       R22 R33 K113 ["onDeleteSkill"]
      616 SETTABLEKS                       R21 R33 K114 ["onDuplicateSkill"]
      618 JUMPIFNOT                        R0 ; [+3]
      619 GETTABLEKS                       R34 R0 K14 ["onClose"]
      621 JUMP                             ; [+1]
      622 LOADNIL                          R34
      623 SETTABLEKS                       R34 R33 K14 ["onClose"]
      625 MOVE                             R34 R25
      626 CALL                             R34 0 1
      627 SETTABLEKS                       R34 R33 K32 ["LayoutOrder"]
      629 CALL                             R31 2 1
      630 SETTABLEKS                       R31 R30 K29 ["DetailPane"]
      632 JUMPIFNOT                        R5 ; [+18]
      633 GETUPVAL                         R31 14
      634 GETUPVAL                         R32 30
      635 DUPTABLE                         R33 K118 [{"existingUserSkills", "onCreate", "onClose"}]
      636 GETUPVAL                         R34 6
      637 GETTABLEKS                       R34 R34 K119 ["getAllBySource"]
      639 GETUPVAL                         R35 3
      640 GETTABLEKS                       R35 R35 K8 ["User"]
      642 CALL                             R34 1 1
      643 SETTABLEKS                       R34 R33 K116 ["existingUserSkills"]
      645 SETTABLEKS                       R20 R33 K117 ["onCreate"]
      647 SETTABLEKS                       R19 R33 K14 ["onClose"]
      649 CALL                             R31 2 1
      650 JUMP                             ; [+1]
      651 LOADNIL                          R31
      652 SETTABLEKS                       R31 R30 K30 ["CreateModal"]
      654 CALL                             R27 3 -1
      655 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ComposerPrefill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["CreateSkillModal"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Skills"]
       27 GETTABLEKS                       R4 R4 K11 ["DisabledSkillsStore"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Guest"]
       34 GETTABLEKS                       R5 R5 K13 ["Environment"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Flags"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K10 ["Skills"]
       67 GETTABLEKS                       R10 R10 K18 ["SkillDefinition"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K8 ["Parent"]
       76 GETTABLEKS                       R11 R11 K19 ["SkillDetailPane"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K10 ["Skills"]
       83 GETTABLEKS                       R12 R12 K20 ["SkillRegistry"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K10 ["Skills"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETIMPORT                        R14 K1 [script]
       95 GETTABLEKS                       R14 R14 K8 ["Parent"]
       97 GETTABLEKS                       R14 R14 K21 ["SkillsTree"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Util"]
      104 GETTABLEKS                       R15 R15 K22 ["TestIds"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K23 ["Resources"]
      111 GETTABLEKS                       R16 R16 K24 ["Localization"]
      113 GETTABLEKS                       R16 R16 K25 ["Translator"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K10 ["Skills"]
      120 GETTABLEKS                       R17 R17 K26 ["createUserSkillAsync"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K10 ["Skills"]
      127 GETTABLEKS                       R18 R18 K27 ["importUserSkillAsync"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K10 ["Skills"]
      134 GETTABLEKS                       R19 R19 K28 ["loadUserSkills"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K29 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K30 ["useSkillsRegistryWatch"]
      143 CALL                             R19 1 1
      144 GETTABLEKS                       R20 R9 K31 ["Sources"]
      146 GETTABLEKS                       R21 R6 K32 ["Button"]
      148 GETTABLEKS                       R22 R6 K33 ["Divider"]
      150 GETTABLEKS                       R23 R6 K34 ["IconButton"]
      152 GETTABLEKS                       R24 R6 K35 ["Loading"]
      154 GETTABLEKS                       R25 R6 K36 ["ScrollView"]
      156 GETTABLEKS                       R26 R6 K37 ["Text"]
      158 GETTABLEKS                       R27 R6 K38 ["View"]
      160 GETTABLEKS                       R28 R6 K39 ["Enums"]
      162 GETTABLEKS                       R28 R28 K40 ["ButtonSize"]
      164 GETTABLEKS                       R29 R6 K39 ["Enums"]
      166 GETTABLEKS                       R29 R29 K41 ["ButtonVariant"]
      168 GETTABLEKS                       R30 R6 K39 ["Enums"]
      170 GETTABLEKS                       R30 R30 K42 ["IconSize"]
      172 GETTABLEKS                       R31 R8 K43 ["createNextOrder"]
      174 GETTABLEKS                       R32 R7 K44 ["createElement"]
      176 DUPCLOSURE                       R33 K45 [PROTO_3]
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R3
      179 DUPCLOSURE                       R34 K46 [PROTO_4]
      180 CAPTURE                          VAL R17
      181 DUPCLOSURE                       R35 K47 [PROTO_26]
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R33
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R31
      196 CAPTURE                          VAL R32
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R24
      201 CAPTURE                          VAL R30
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R29
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R28
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R2
      213 RETURN                           R35 1
