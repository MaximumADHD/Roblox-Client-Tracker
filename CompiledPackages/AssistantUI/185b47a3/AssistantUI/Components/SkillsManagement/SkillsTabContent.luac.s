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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOTEQ                      R3 R0 ; [+3]
        4 LOADNIL                          R2
        5 JUMP                             ; [+1]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getDisabledSetAsync"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["isEnabled"]
       12 JUMPIFNOT                        R2 ; [+37]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K3 ["unregister"]
       16 GETUPVAL                         R3 4
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["skill"]
       20 GETTABLEKS                       R4 R4 K5 ["source"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 5
       24 GETTABLEKS                       R2 R2 K6 ["store"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K4 ["skill"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 4
       31 LOADB                            R3 1
       32 SETTABLE                         R3 R1 R2
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K4 ["skill"]
       36 GETTABLEKS                       R2 R2 K5 ["source"]
       38 GETUPVAL                         R3 6
       39 GETTABLEKS                       R3 R3 K7 ["User"]
       41 JUMPIFNOTEQ                      R2 R3 ; [+39]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K8 ["unshadowRobloxSkill"]
       46 GETUPVAL                         R3 4
       47 MOVE                             R4 R1
       48 CALL                             R2 2 0
       49 JUMP                             ; [+31]
       50 GETUPVAL                         R2 5
       51 GETTABLEKS                       R2 R2 K9 ["remove"]
       53 GETUPVAL                         R3 4
       54 CALL                             R2 1 0
       55 GETUPVAL                         R2 3
       56 GETTABLEKS                       R2 R2 K10 ["register"]
       58 GETUPVAL                         R3 2
       59 GETTABLEKS                       R3 R3 K4 ["skill"]
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 4
       63 LOADNIL                          R3
       64 SETTABLE                         R3 R1 R2
       65 GETUPVAL                         R2 2
       66 GETTABLEKS                       R2 R2 K4 ["skill"]
       68 GETTABLEKS                       R2 R2 K5 ["source"]
       70 GETUPVAL                         R3 6
       71 GETTABLEKS                       R3 R3 K7 ["User"]
       73 JUMPIFNOTEQ                      R2 R3 ; [+7]
       75 GETUPVAL                         R2 1
       76 GETTABLEKS                       R2 R2 K11 ["shadowRobloxSkill"]
       78 GETUPVAL                         R3 4
       79 MOVE                             R4 R1
       80 CALL                             R2 2 0
       81 GETUPVAL                         R2 1
       82 GETTABLEKS                       R2 R2 K12 ["persistDisabledSetAsync"]
       84 MOVE                             R3 R0
       85 MOVE                             R4 R1
       86 CALL                             R2 2 0
       87 GETUPVAL                         R2 7
       88 GETTABLEKS                       R2 R2 K13 ["FFlagAssistantSkillsCloudSync"]
       90 JUMPIFNOT                        R2 ; [+54]
       91 GETUPVAL                         R2 2
       92 GETTABLEKS                       R2 R2 K4 ["skill"]
       94 GETTABLEKS                       R2 R2 K5 ["source"]
       96 GETUPVAL                         R3 6
       97 GETTABLEKS                       R3 R3 K7 ["User"]
       99 JUMPIFNOTEQ                      R2 R3 ; [+45]
      101 GETUPVAL                         R2 2
      102 GETTABLEKS                       R2 R2 K4 ["skill"]
      104 GETTABLEKS                       R2 R2 K14 ["assetId"]
      106 JUMPIFNOT                        R2 ; [+38]
      107 GETIMPORT                        R2 K16 [pcall]
      109 GETTABLEKS                       R3 R0 K17 ["cloudSkillAssets"]
      111 GETTABLEKS                       R3 R3 K18 ["uploadAssetsAsync"]
      113 NEWTABLE                         R4 0 1
      115 DUPTABLE                         R5 K22 [{"assetId", "name", "description", "isDisabled"}]
      116 GETUPVAL                         R6 2
      117 GETTABLEKS                       R6 R6 K4 ["skill"]
      119 GETTABLEKS                       R6 R6 K14 ["assetId"]
      121 SETTABLEKS                       R6 R5 K14 ["assetId"]
      123 GETUPVAL                         R6 2
      124 GETTABLEKS                       R6 R6 K4 ["skill"]
      126 GETTABLEKS                       R6 R6 K19 ["name"]
      128 SETTABLEKS                       R6 R5 K19 ["name"]
      130 GETUPVAL                         R6 2
      131 GETTABLEKS                       R6 R6 K4 ["skill"]
      133 GETTABLEKS                       R6 R6 K20 ["description"]
      135 SETTABLEKS                       R6 R5 K20 ["description"]
      137 GETUPVAL                         R6 2
      138 GETTABLEKS                       R6 R6 K2 ["isEnabled"]
      140 SETTABLEKS                       R6 R5 K21 ["isDisabled"]
      142 SETLIST                          R4 R5 1 [1]
      144 CALL                             R2 2 0
      145 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getDisabledSetAsync"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["refreshAsync"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_7]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 3
        8 LOADB                            R3 0
        9 CALL                             R2 1 0
       10 JUMPIF                           R0 ; [+4]
       11 GETIMPORT                        R2 K4 [warn]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R2 1 0
        6 GETIMPORT                        R2 K2 [task.spawn]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U4
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 CALL                             R3 1 0
        3 GETIMPORT                        R3 K2 [task.spawn]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_19:
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
       18 JUMPIFNOT                        R1 ; [+50]
       19 GETTABLEKS                       R2 R1 K3 ["assetId"]
       21 JUMPIFNOT                        R2 ; [+47]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantSkillsCloudSync"]
       25 JUMPIFNOT                        R2 ; [+10]
       26 GETIMPORT                        R2 K6 [pcall]
       28 GETTABLEKS                       R3 R0 K7 ["cloudSkillAssets"]
       30 GETTABLEKS                       R3 R3 K8 ["deleteAssetAsync"]
       32 GETTABLEKS                       R4 R1 K3 ["assetId"]
       34 CALL                             R2 2 0
       35 JUMP                             ; [+33]
       36 GETTABLEKS                       R2 R0 K9 ["userSkillAssets"]
       38 GETTABLEKS                       R2 R2 K10 ["getManifestAsync"]
       40 CALL                             R2 0 1
       41 JUMPIF                           R2 ; [+2]
       42 NEWTABLE                         R2 0 0
       44 NEWTABLE                         R3 0 0
       46 MOVE                             R4 R2
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 GETTABLEKS                       R9 R1 K3 ["assetId"]
       52 JUMPIFEQ                         R8 R9 ; [+8]
       54 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       56 MOVE                             R10 R3
       57 MOVE                             R11 R8
       58 GETIMPORT                        R9 K13 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R4 2 ; [-12]
       63 GETTABLEKS                       R4 R0 K9 ["userSkillAssets"]
       65 GETTABLEKS                       R4 R4 K14 ["setManifestAsync"]
       67 MOVE                             R5 R3
       68 CALL                             R4 1 0
       69 GETUPVAL                         R2 1
       70 GETTABLEKS                       R2 R2 K15 ["unregister"]
       72 GETUPVAL                         R3 3
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R4 R4 K2 ["User"]
       76 CALL                             R2 2 0
       77 GETUPVAL                         R2 4
       78 GETTABLEKS                       R2 R2 K16 ["remove"]
       80 GETUPVAL                         R3 3
       81 CALL                             R2 1 0
       82 GETUPVAL                         R2 6
       83 GETTABLEKS                       R2 R2 K17 ["getDisabledSetAsync"]
       85 MOVE                             R3 R0
       86 CALL                             R2 1 1
       87 LOADB                            R3 0
       88 GETUPVAL                         R5 3
       89 GETTABLE                         R4 R2 R5
       90 JUMPIFNOT                        R4 ; [+4]
       91 GETUPVAL                         R4 3
       92 LOADNIL                          R5
       93 SETTABLE                         R5 R2 R4
       94 LOADB                            R3 1
       95 GETUPVAL                         R4 6
       96 GETTABLEKS                       R4 R4 K18 ["unshadowRobloxSkill"]
       98 GETUPVAL                         R5 3
       99 MOVE                             R6 R2
      100 CALL                             R4 2 1
      101 JUMPIFNOT                        R4 ; [+1]
      102 LOADB                            R3 1
      103 JUMPIFNOT                        R3 ; [+6]
      104 GETUPVAL                         R4 6
      105 GETTABLEKS                       R4 R4 K19 ["persistDisabledSetAsync"]
      107 MOVE                             R5 R0
      108 MOVE                             R6 R2
      109 CALL                             R4 2 0
      110 GETUPVAL                         R4 7
      111 LOADNIL                          R5
      112 CALL                             R4 1 0
      113 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R0 K7 [{"Title", "Description", "CreateNew", "CreateFromText", "Refresh", "PersonalGroup", "RobloxGroup"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["SettingsDialog"]
        3 LOADK                            R4 K9 ["SkillsTab"]
        4 NAMECALL                         R1 R1 K10 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["Skills"]
       11 LOADK                            R4 K1 ["Description"]
       12 NAMECALL                         R1 R1 K10 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Description"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["Skills"]
       19 LOADK                            R4 K2 ["CreateNew"]
       20 NAMECALL                         R1 R1 K10 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["CreateNew"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["Skills"]
       27 LOADK                            R4 K3 ["CreateFromText"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["CreateFromText"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K11 ["Skills"]
       35 LOADK                            R4 K4 ["Refresh"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Refresh"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K11 ["Skills"]
       43 LOADK                            R4 K5 ["PersonalGroup"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["PersonalGroup"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K11 ["Skills"]
       51 LOADK                            R4 K6 ["RobloxGroup"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["RobloxGroup"]
       57 RETURN                           R0 1

PROTO_22:
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
       19 NEWTABLE                         R9 0 0
       21 NEWTABLE                         R10 0 0
       23 MOVE                             R11 R1
       24 LOADNIL                          R12
       25 LOADNIL                          R13
       26 FORGPREP                         R11
       27 DUPTABLE                         R16 K6 [{["skill"], ["isEnabled"] = True, ["isToggleDisabled"] = False}]
       28 SETTABLEKS                       R15 R16 K1 ["skill"]
       30 SETTABLE                         R16 R9 R14
       31 GETTABLEKS                       R16 R15 K7 ["source"]
       33 GETUPVAL                         R17 3
       34 GETTABLEKS                       R17 R17 K8 ["User"]
       36 JUMPIFNOTEQ                      R16 R17 ; [+3]
       38 LOADB                            R16 1
       39 SETTABLE                         R16 R10 R14
       40 FORGLOOP                         R11 2 ; [-14]
       42 MOVE                             R11 R2
       43 LOADNIL                          R12
       44 LOADNIL                          R13
       45 FORGPREP                         R11
       46 DUPTABLE                         R16 K9 [{["skill"], ["isEnabled"] = False, ["isToggleDisabled"] = False}]
       47 SETTABLEKS                       R15 R16 K1 ["skill"]
       49 SETTABLE                         R16 R9 R14
       50 FORGLOOP                         R11 2 ; [-5]
       52 MOVE                             R11 R9
       53 LOADNIL                          R12
       54 LOADNIL                          R13
       55 FORGPREP                         R11
       56 GETTABLEKS                       R16 R15 K1 ["skill"]
       58 GETTABLEKS                       R16 R16 K7 ["source"]
       60 GETUPVAL                         R17 3
       61 GETTABLEKS                       R17 R17 K10 ["Roblox"]
       63 JUMPIFNOTEQ                      R16 R17 ; [+19]
       65 LOADN                            R19 1
       66 LOADN                            R20 4
       67 NAMECALL                         R17 R14 K11 ["sub"]
       69 CALL                             R17 3 1
       70 JUMPIFNOTEQKS                    R17 K12 ["rbx-"] ; [+6]
       72 LOADN                            R18 5
       73 NAMECALL                         R16 R14 K11 ["sub"]
       75 CALL                             R16 2 1
       76 JUMP                             ; [+1]
       77 MOVE                             R16 R14
       78 GETTABLE                         R17 R10 R16
       79 JUMPIFNOT                        R17 ; [+3]
       80 LOADB                            R17 1
       81 SETTABLEKS                       R17 R15 K4 ["isToggleDisabled"]
       83 FORGLOOP                         R11 2 ; [-28]
       85 LOADNIL                          R11
       86 JUMPIFNOT                        R3 ; [+11]
       87 GETTABLE                         R12 R9 R3
       88 JUMPIFNOT                        R12 ; [+3]
       89 GETTABLEKS                       R11 R12 K1 ["skill"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R11
       93 JUMPIFNOTEQKNIL                  R11 ; [+4]
       95 MOVE                             R13 R4
       96 LOADNIL                          R14
       97 CALL                             R13 1 0
       98 GETUPVAL                         R12 2
       99 GETTABLEKS                       R12 R12 K13 ["useCallback"]
      101 NEWCLOSURE                       R13 P0
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R3
      104 NEWTABLE                         R14 0 1
      106 MOVE                             R15 R3
      107 SETLIST                          R14 R15 1 [1]
      109 CALL                             R12 2 1
      110 GETUPVAL                         R13 2
      111 GETTABLEKS                       R13 R13 K13 ["useCallback"]
      113 NEWCLOSURE                       R14 P1
      114 CAPTURE                          VAL R9
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          UPVAL U7
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          UPVAL U8
      121 NEWTABLE                         R15 0 1
      123 MOVE                             R16 R9
      124 SETLIST                          R15 R16 1 [1]
      126 CALL                             R13 2 1
      127 GETUPVAL                         R14 2
      128 GETTABLEKS                       R14 R14 K13 ["useCallback"]
      130 NEWCLOSURE                       R15 P2
      131 CAPTURE                          VAL R8
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          UPVAL U9
      135 NEWTABLE                         R16 0 0
      137 CALL                             R14 2 1
      138 GETUPVAL                         R15 2
      139 GETTABLEKS                       R15 R15 K13 ["useCallback"]
      141 NEWCLOSURE                       R16 P3
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U10
      144 NEWTABLE                         R17 0 1
      146 JUMPIFNOT                        R0 ; [+3]
      147 GETTABLEKS                       R18 R0 K14 ["onClose"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R18
      151 SETLIST                          R17 R18 1 [1]
      153 CALL                             R15 2 1
      154 GETUPVAL                         R16 2
      155 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      157 NEWCLOSURE                       R17 P4
      158 CAPTURE                          VAL R6
      159 NEWTABLE                         R18 0 0
      161 CALL                             R16 2 1
      162 GETUPVAL                         R17 2
      163 GETTABLEKS                       R17 R17 K13 ["useCallback"]
      165 NEWCLOSURE                       R18 P5
      166 CAPTURE                          VAL R6
      167 NEWTABLE                         R19 0 0
      169 CALL                             R17 2 1
      170 GETUPVAL                         R18 2
      171 GETTABLEKS                       R18 R18 K13 ["useCallback"]
      173 NEWCLOSURE                       R19 P6
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R8
      176 CAPTURE                          UPVAL U11
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          VAL R4
      179 NEWTABLE                         R20 0 0
      181 CALL                             R18 2 1
      182 GETUPVAL                         R19 2
      183 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      185 NEWCLOSURE                       R20 P7
      186 CAPTURE                          VAL R8
      187 CAPTURE                          UPVAL U11
      188 CAPTURE                          UPVAL U4
      189 NEWTABLE                         R21 0 0
      191 CALL                             R19 2 1
      192 GETUPVAL                         R20 2
      193 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      195 NEWCLOSURE                       R21 P8
      196 CAPTURE                          UPVAL U4
      197 CAPTURE                          UPVAL U6
      198 CAPTURE                          UPVAL U3
      199 CAPTURE                          UPVAL U7
      200 CAPTURE                          UPVAL U8
      201 CAPTURE                          UPVAL U5
      202 CAPTURE                          VAL R4
      203 NEWTABLE                         R22 0 0
      205 CALL                             R20 2 1
      206 GETUPVAL                         R21 2
      207 GETTABLEKS                       R21 R21 K15 ["useMemo"]
      209 DUPCLOSURE                       R22 K16 [PROTO_21]
      210 CAPTURE                          UPVAL U12
      211 NEWTABLE                         R23 0 1
      213 GETUPVAL                         R24 12
      214 GETTABLEKS                       R24 R24 K17 ["locale"]
      216 SETLIST                          R23 R24 1 [1]
      218 CALL                             R21 2 1
      219 GETUPVAL                         R22 13
      220 CALL                             R22 0 1
      221 GETUPVAL                         R23 13
      222 CALL                             R23 0 1
      223 GETUPVAL                         R24 14
      224 GETUPVAL                         R25 15
      225 DUPTABLE                         R26 K21 [{["tag"] = "col gap-small size-full-full", ["testId"]}]
      226 GETUPVAL                         R27 16
      227 GETTABLEKS                       R27 R27 K22 ["Skills"]
      229 GETTABLEKS                       R27 R27 K23 ["TabContent"]
      231 SETTABLEKS                       R27 R26 K20 ["testId"]
      233 DUPTABLE                         R27 K30 [{"TitleAndButtons", "Description", "TreeScroll", "DetailDivider", "DetailPane", "CreateModal"}]
      234 GETUPVAL                         R28 14
      235 GETUPVAL                         R29 15
      236 DUPTABLE                         R30 K33 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      237 MOVE                             R31 R22
      238 CALL                             R31 0 1
      239 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      241 DUPTABLE                         R31 K40 [{"TitleText", "Spacer", "LoadingSpinner", "RefreshButton", "CreateNewButton", "CreateFromTextButton"}]
      242 GETUPVAL                         R32 14
      243 GETUPVAL                         R33 17
      244 DUPTABLE                         R34 K43 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      245 GETTABLEKS                       R35 R21 K44 ["Title"]
      247 SETTABLEKS                       R35 R34 K42 ["Text"]
      249 MOVE                             R35 R23
      250 CALL                             R35 0 1
      251 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      253 CALL                             R32 2 1
      254 SETTABLEKS                       R32 R31 K34 ["TitleText"]
      256 GETUPVAL                         R32 14
      257 GETUPVAL                         R33 15
      258 DUPTABLE                         R34 K46 [{["tag"] = "fill", ["LayoutOrder"]}]
      259 MOVE                             R35 R23
      260 CALL                             R35 0 1
      261 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      263 CALL                             R32 2 1
      264 SETTABLEKS                       R32 R31 K35 ["Spacer"]
      266 JUMPIFNOT                        R7 ; [+14]
      267 GETUPVAL                         R32 14
      268 GETUPVAL                         R33 18
      269 DUPTABLE                         R34 K48 [{"size", "LayoutOrder"}]
      270 GETUPVAL                         R35 19
      271 GETTABLEKS                       R35 R35 K49 ["Small"]
      273 SETTABLEKS                       R35 R34 K47 ["size"]
      275 MOVE                             R35 R23
      276 CALL                             R35 0 1
      277 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      279 CALL                             R32 2 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R32
      282 SETTABLEKS                       R32 R31 K36 ["LoadingSpinner"]
      284 GETUPVAL                         R32 14
      285 GETUPVAL                         R33 20
      286 DUPTABLE                         R34 K54 [{"icon", "size", "variant", "onActivated", "isDisabled", "testId", "LayoutOrder"}]
      287 GETUPVAL                         R35 21
      288 GETTABLEKS                       R35 R35 K55 ["Enums"]
      290 GETTABLEKS                       R35 R35 K56 ["IconName"]
      292 GETTABLEKS                       R35 R35 K57 ["TwoArrowsSpinClockwise"]
      294 SETTABLEKS                       R35 R34 K50 ["icon"]
      296 GETUPVAL                         R35 21
      297 GETTABLEKS                       R35 R35 K55 ["Enums"]
      299 GETTABLEKS                       R35 R35 K58 ["InputSize"]
      301 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      303 SETTABLEKS                       R35 R34 K47 ["size"]
      305 GETUPVAL                         R35 22
      306 GETTABLEKS                       R35 R35 K60 ["Utility"]
      308 SETTABLEKS                       R35 R34 K51 ["variant"]
      310 SETTABLEKS                       R14 R34 K52 ["onActivated"]
      312 SETTABLEKS                       R7 R34 K53 ["isDisabled"]
      314 GETUPVAL                         R35 16
      315 GETTABLEKS                       R35 R35 K22 ["Skills"]
      317 GETTABLEKS                       R35 R35 K37 ["RefreshButton"]
      319 SETTABLEKS                       R35 R34 K20 ["testId"]
      321 MOVE                             R35 R23
      322 CALL                             R35 0 1
      323 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      325 CALL                             R32 2 1
      326 SETTABLEKS                       R32 R31 K37 ["RefreshButton"]
      328 GETUPVAL                         R32 14
      329 GETUPVAL                         R33 23
      330 DUPTABLE                         R34 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      331 GETTABLEKS                       R35 R21 K63 ["CreateNew"]
      333 SETTABLEKS                       R35 R34 K61 ["text"]
      335 GETUPVAL                         R35 24
      336 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      338 SETTABLEKS                       R35 R34 K47 ["size"]
      340 GETUPVAL                         R35 22
      341 GETTABLEKS                       R35 R35 K64 ["Emphasis"]
      343 SETTABLEKS                       R35 R34 K51 ["variant"]
      345 SETTABLEKS                       R15 R34 K52 ["onActivated"]
      347 GETUPVAL                         R35 16
      348 GETTABLEKS                       R35 R35 K22 ["Skills"]
      350 GETTABLEKS                       R35 R35 K38 ["CreateNewButton"]
      352 SETTABLEKS                       R35 R34 K20 ["testId"]
      354 MOVE                             R35 R23
      355 CALL                             R35 0 1
      356 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      358 CALL                             R32 2 1
      359 SETTABLEKS                       R32 R31 K38 ["CreateNewButton"]
      361 GETUPVAL                         R32 14
      362 GETUPVAL                         R33 23
      363 DUPTABLE                         R34 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      364 GETTABLEKS                       R35 R21 K65 ["CreateFromText"]
      366 SETTABLEKS                       R35 R34 K61 ["text"]
      368 GETUPVAL                         R35 24
      369 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      371 SETTABLEKS                       R35 R34 K47 ["size"]
      373 GETUPVAL                         R35 22
      374 GETTABLEKS                       R35 R35 K66 ["Standard"]
      376 SETTABLEKS                       R35 R34 K51 ["variant"]
      378 SETTABLEKS                       R16 R34 K52 ["onActivated"]
      380 GETUPVAL                         R35 16
      381 GETTABLEKS                       R35 R35 K22 ["Skills"]
      383 GETTABLEKS                       R35 R35 K39 ["CreateFromTextButton"]
      385 SETTABLEKS                       R35 R34 K20 ["testId"]
      387 MOVE                             R35 R23
      388 CALL                             R35 0 1
      389 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      391 CALL                             R32 2 1
      392 SETTABLEKS                       R32 R31 K39 ["CreateFromTextButton"]
      394 CALL                             R28 3 1
      395 SETTABLEKS                       R28 R27 K24 ["TitleAndButtons"]
      397 GETUPVAL                         R28 14
      398 GETUPVAL                         R29 17
      399 DUPTABLE                         R30 K68 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      400 GETTABLEKS                       R31 R21 K25 ["Description"]
      402 SETTABLEKS                       R31 R30 K42 ["Text"]
      404 MOVE                             R31 R22
      405 CALL                             R31 0 1
      406 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      408 CALL                             R28 2 1
      409 SETTABLEKS                       R28 R27 K25 ["Description"]
      411 GETUPVAL                         R28 14
      412 GETUPVAL                         R29 25
      413 DUPTABLE                         R30 K72 [{"Size", "LayoutOrder", "scroll", "layout"}]
      414 GETIMPORT                        R31 K75 [UDim2.new]
      416 LOADN                            R32 1
      417 LOADN                            R33 0
      418 LOADN                            R34 1
      419 JUMPIFNOT                        R11 ; [+2]
      420 LOADN                            R36 200
      421 JUMP                             ; [+1]
      422 LOADN                            R36 120
      423 MINUS                            R35 R36
      424 CALL                             R31 4 1
      425 SETTABLEKS                       R31 R30 K69 ["Size"]
      427 MOVE                             R31 R22
      428 CALL                             R31 0 1
      429 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      431 DUPTABLE                         R31 K80 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      432 GETIMPORT                        R32 K84 [Enum.AutomaticSize.Y]
      434 SETTABLEKS                       R32 R31 K76 ["AutomaticCanvasSize"]
      436 GETIMPORT                        R32 K75 [UDim2.new]
      438 LOADN                            R33 0
      439 LOADN                            R34 0
      440 LOADN                            R35 0
      441 LOADN                            R36 0
      442 CALL                             R32 4 1
      443 SETTABLEKS                       R32 R31 K77 ["CanvasSize"]
      445 GETIMPORT                        R32 K85 [Enum.ScrollingDirection.Y]
      447 SETTABLEKS                       R32 R31 K78 ["ScrollingDirection"]
      449 GETUPVAL                         R32 21
      450 GETTABLEKS                       R32 R32 K55 ["Enums"]
      452 GETTABLEKS                       R32 R32 K86 ["Visibility"]
      454 GETTABLEKS                       R32 R32 K87 ["Auto"]
      456 SETTABLEKS                       R32 R31 K79 ["scrollBarVisibility"]
      458 SETTABLEKS                       R31 R30 K70 ["scroll"]
      460 DUPTABLE                         R31 K90 [{"SortOrder", "FillDirection"}]
      461 GETIMPORT                        R32 K91 [Enum.SortOrder.LayoutOrder]
      463 SETTABLEKS                       R32 R31 K88 ["SortOrder"]
      465 GETIMPORT                        R32 K93 [Enum.FillDirection.Vertical]
      467 SETTABLEKS                       R32 R31 K89 ["FillDirection"]
      469 SETTABLEKS                       R31 R30 K71 ["layout"]
      471 DUPTABLE                         R31 K95 [{"Tree"}]
      472 GETUPVAL                         R32 14
      473 GETUPVAL                         R33 26
      474 DUPTABLE                         R34 K103 [{["skills"], ["personalGroupLabel"], ["robloxGroupLabel"], ["selectedSkillName"], ["onSelectSkill"], ["onToggleSkill"], ["LayoutOrder"] = 1}]
      475 SETTABLEKS                       R9 R34 K96 ["skills"]
      477 GETTABLEKS                       R35 R21 K104 ["PersonalGroup"]
      479 SETTABLEKS                       R35 R34 K97 ["personalGroupLabel"]
      481 GETTABLEKS                       R35 R21 K105 ["RobloxGroup"]
      483 SETTABLEKS                       R35 R34 K98 ["robloxGroupLabel"]
      485 SETTABLEKS                       R3 R34 K99 ["selectedSkillName"]
      487 SETTABLEKS                       R12 R34 K100 ["onSelectSkill"]
      489 SETTABLEKS                       R13 R34 K101 ["onToggleSkill"]
      491 CALL                             R32 2 1
      492 SETTABLEKS                       R32 R31 K94 ["Tree"]
      494 CALL                             R28 3 1
      495 SETTABLEKS                       R28 R27 K26 ["TreeScroll"]
      497 GETUPVAL                         R28 14
      498 GETUPVAL                         R29 27
      499 DUPTABLE                         R30 K106 [{"LayoutOrder"}]
      500 MOVE                             R31 R22
      501 CALL                             R31 0 1
      502 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      504 CALL                             R28 2 1
      505 SETTABLEKS                       R28 R27 K27 ["DetailDivider"]
      507 GETUPVAL                         R28 14
      508 GETUPVAL                         R29 28
      509 DUPTABLE                         R30 K109 [{"skill", "onDeleteSkill", "onDuplicateSkill", "onClose", "LayoutOrder"}]
      510 SETTABLEKS                       R11 R30 K1 ["skill"]
      512 SETTABLEKS                       R20 R30 K107 ["onDeleteSkill"]
      514 SETTABLEKS                       R19 R30 K108 ["onDuplicateSkill"]
      516 JUMPIFNOT                        R0 ; [+3]
      517 GETTABLEKS                       R31 R0 K14 ["onClose"]
      519 JUMP                             ; [+1]
      520 LOADNIL                          R31
      521 SETTABLEKS                       R31 R30 K14 ["onClose"]
      523 MOVE                             R31 R22
      524 CALL                             R31 0 1
      525 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      527 CALL                             R28 2 1
      528 SETTABLEKS                       R28 R27 K28 ["DetailPane"]
      530 JUMPIFNOT                        R5 ; [+18]
      531 GETUPVAL                         R28 14
      532 GETUPVAL                         R29 29
      533 DUPTABLE                         R30 K112 [{"existingUserSkills", "onCreate", "onClose"}]
      534 GETUPVAL                         R31 6
      535 GETTABLEKS                       R31 R31 K113 ["getAllBySource"]
      537 GETUPVAL                         R32 3
      538 GETTABLEKS                       R32 R32 K8 ["User"]
      540 CALL                             R31 1 1
      541 SETTABLEKS                       R31 R30 K110 ["existingUserSkills"]
      543 SETTABLEKS                       R18 R30 K111 ["onCreate"]
      545 SETTABLEKS                       R17 R30 K14 ["onClose"]
      547 CALL                             R28 2 1
      548 JUMP                             ; [+1]
      549 LOADNIL                          R28
      550 SETTABLEKS                       R28 R27 K29 ["CreateModal"]
      552 CALL                             R24 3 -1
      553 RETURN                           R24 -1

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
      127 GETTABLEKS                       R18 R18 K27 ["loadUserSkills"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K28 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K29 ["useSkillsRegistryWatch"]
      136 CALL                             R18 1 1
      137 GETTABLEKS                       R19 R9 K30 ["Sources"]
      139 GETTABLEKS                       R20 R6 K31 ["Button"]
      141 GETTABLEKS                       R21 R6 K32 ["Divider"]
      143 GETTABLEKS                       R22 R6 K33 ["IconButton"]
      145 GETTABLEKS                       R23 R6 K34 ["Loading"]
      147 GETTABLEKS                       R24 R6 K35 ["ScrollView"]
      149 GETTABLEKS                       R25 R6 K36 ["Text"]
      151 GETTABLEKS                       R26 R6 K37 ["View"]
      153 GETTABLEKS                       R27 R6 K38 ["Enums"]
      155 GETTABLEKS                       R27 R27 K39 ["ButtonSize"]
      157 GETTABLEKS                       R28 R6 K38 ["Enums"]
      159 GETTABLEKS                       R28 R28 K40 ["ButtonVariant"]
      161 GETTABLEKS                       R29 R6 K38 ["Enums"]
      163 GETTABLEKS                       R29 R29 K41 ["IconSize"]
      165 GETTABLEKS                       R30 R8 K42 ["createNextOrder"]
      167 GETTABLEKS                       R31 R7 K43 ["createElement"]
      169 DUPCLOSURE                       R32 K44 [PROTO_3]
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R3
      172 DUPCLOSURE                       R33 K45 [PROTO_22]
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R32
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R30
      187 CAPTURE                          VAL R31
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R28
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R2
      203 RETURN                           R33 1
