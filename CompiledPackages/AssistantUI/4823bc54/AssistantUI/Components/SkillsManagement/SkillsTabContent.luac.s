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
       12 JUMPIFNOT                        R2 ; [+21]
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
       33 JUMP                             ; [+31]
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K7 ["remove"]
       37 GETUPVAL                         R3 4
       38 CALL                             R2 1 0
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K8 ["register"]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K4 ["skill"]
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 4
       47 LOADNIL                          R3
       48 SETTABLE                         R3 R1 R2
       49 GETUPVAL                         R2 2
       50 GETTABLEKS                       R2 R2 K4 ["skill"]
       52 GETTABLEKS                       R2 R2 K5 ["source"]
       54 GETUPVAL                         R3 6
       55 GETTABLEKS                       R3 R3 K9 ["User"]
       57 JUMPIFNOTEQ                      R2 R3 ; [+7]
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K10 ["shadowRobloxSkill"]
       62 GETUPVAL                         R3 4
       63 MOVE                             R4 R1
       64 CALL                             R2 2 0
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K11 ["persistDisabledSetAsync"]
       68 MOVE                             R3 R0
       69 MOVE                             R4 R1
       70 CALL                             R2 2 0
       71 RETURN                           R0 0

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
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

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
       18 JUMPIFNOT                        R1 ; [+36]
       19 GETTABLEKS                       R2 R1 K3 ["assetId"]
       21 JUMPIFNOT                        R2 ; [+33]
       22 GETTABLEKS                       R2 R0 K4 ["userSkillAssets"]
       24 GETTABLEKS                       R2 R2 K5 ["getManifestAsync"]
       26 CALL                             R2 0 1
       27 JUMPIF                           R2 ; [+2]
       28 NEWTABLE                         R2 0 0
       30 NEWTABLE                         R3 0 0
       32 MOVE                             R4 R2
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETTABLEKS                       R9 R1 K3 ["assetId"]
       38 JUMPIFEQ                         R8 R9 ; [+8]
       40 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       42 MOVE                             R10 R3
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K8 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R4 2 ; [-12]
       49 GETTABLEKS                       R4 R0 K4 ["userSkillAssets"]
       51 GETTABLEKS                       R4 R4 K9 ["setManifestAsync"]
       53 MOVE                             R5 R3
       54 CALL                             R4 1 0
       55 GETUPVAL                         R2 1
       56 GETTABLEKS                       R2 R2 K10 ["unregister"]
       58 GETUPVAL                         R3 3
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K2 ["User"]
       62 CALL                             R2 2 0
       63 GETUPVAL                         R2 4
       64 GETTABLEKS                       R2 R2 K11 ["remove"]
       66 GETUPVAL                         R3 3
       67 CALL                             R2 1 0
       68 GETUPVAL                         R2 5
       69 GETTABLEKS                       R2 R2 K12 ["getDisabledSetAsync"]
       71 MOVE                             R3 R0
       72 CALL                             R2 1 1
       73 LOADB                            R3 0
       74 GETUPVAL                         R5 3
       75 GETTABLE                         R4 R2 R5
       76 JUMPIFNOT                        R4 ; [+4]
       77 GETUPVAL                         R4 3
       78 LOADNIL                          R5
       79 SETTABLE                         R5 R2 R4
       80 LOADB                            R3 1
       81 GETUPVAL                         R4 5
       82 GETTABLEKS                       R4 R4 K13 ["unshadowRobloxSkill"]
       84 GETUPVAL                         R5 3
       85 MOVE                             R6 R2
       86 CALL                             R4 2 1
       87 JUMPIFNOT                        R4 ; [+1]
       88 LOADB                            R3 1
       89 JUMPIFNOT                        R3 ; [+6]
       90 GETUPVAL                         R4 5
       91 GETTABLEKS                       R4 R4 K14 ["persistDisabledSetAsync"]
       93 MOVE                             R5 R0
       94 MOVE                             R6 R2
       95 CALL                             R4 2 0
       96 GETUPVAL                         R4 6
       97 LOADNIL                          R5
       98 CALL                             R4 1 0
       99 RETURN                           R0 0

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
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

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
      120 NEWTABLE                         R15 0 1
      122 MOVE                             R16 R9
      123 SETLIST                          R15 R16 1 [1]
      125 CALL                             R13 2 1
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R14 R14 K13 ["useCallback"]
      129 NEWCLOSURE                       R15 P2
      130 CAPTURE                          VAL R8
      131 CAPTURE                          UPVAL U4
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          UPVAL U8
      134 NEWTABLE                         R16 0 0
      136 CALL                             R14 2 1
      137 GETUPVAL                         R15 2
      138 GETTABLEKS                       R15 R15 K13 ["useCallback"]
      140 NEWCLOSURE                       R16 P3
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U9
      143 NEWTABLE                         R17 0 1
      145 JUMPIFNOT                        R0 ; [+3]
      146 GETTABLEKS                       R18 R0 K14 ["onClose"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R18
      150 SETLIST                          R17 R18 1 [1]
      152 CALL                             R15 2 1
      153 GETUPVAL                         R16 2
      154 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      156 NEWCLOSURE                       R17 P4
      157 CAPTURE                          VAL R6
      158 NEWTABLE                         R18 0 0
      160 CALL                             R16 2 1
      161 GETUPVAL                         R17 2
      162 GETTABLEKS                       R17 R17 K13 ["useCallback"]
      164 NEWCLOSURE                       R18 P5
      165 CAPTURE                          VAL R6
      166 NEWTABLE                         R19 0 0
      168 CALL                             R17 2 1
      169 GETUPVAL                         R18 2
      170 GETTABLEKS                       R18 R18 K13 ["useCallback"]
      172 NEWCLOSURE                       R19 P6
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R8
      175 CAPTURE                          UPVAL U10
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R4
      178 NEWTABLE                         R20 0 0
      180 CALL                             R18 2 1
      181 GETUPVAL                         R19 2
      182 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      184 NEWCLOSURE                       R20 P7
      185 CAPTURE                          VAL R8
      186 CAPTURE                          UPVAL U10
      187 CAPTURE                          UPVAL U4
      188 NEWTABLE                         R21 0 0
      190 CALL                             R19 2 1
      191 GETUPVAL                         R20 2
      192 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      194 NEWCLOSURE                       R21 P8
      195 CAPTURE                          UPVAL U4
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U3
      198 CAPTURE                          UPVAL U7
      199 CAPTURE                          UPVAL U5
      200 CAPTURE                          VAL R4
      201 NEWTABLE                         R22 0 0
      203 CALL                             R20 2 1
      204 GETUPVAL                         R21 2
      205 GETTABLEKS                       R21 R21 K15 ["useMemo"]
      207 DUPCLOSURE                       R22 K16 [PROTO_21]
      208 CAPTURE                          UPVAL U11
      209 NEWTABLE                         R23 0 1
      211 GETUPVAL                         R24 11
      212 GETTABLEKS                       R24 R24 K17 ["locale"]
      214 SETLIST                          R23 R24 1 [1]
      216 CALL                             R21 2 1
      217 GETUPVAL                         R22 12
      218 CALL                             R22 0 1
      219 GETUPVAL                         R23 12
      220 CALL                             R23 0 1
      221 GETUPVAL                         R24 13
      222 GETUPVAL                         R25 14
      223 DUPTABLE                         R26 K21 [{["tag"] = "col gap-small size-full-full", ["testId"]}]
      224 GETUPVAL                         R27 15
      225 GETTABLEKS                       R27 R27 K22 ["Skills"]
      227 GETTABLEKS                       R27 R27 K23 ["TabContent"]
      229 SETTABLEKS                       R27 R26 K20 ["testId"]
      231 DUPTABLE                         R27 K30 [{"TitleAndButtons", "Description", "TreeScroll", "DetailDivider", "DetailPane", "CreateModal"}]
      232 GETUPVAL                         R28 13
      233 GETUPVAL                         R29 14
      234 DUPTABLE                         R30 K33 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      235 MOVE                             R31 R22
      236 CALL                             R31 0 1
      237 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      239 DUPTABLE                         R31 K40 [{"TitleText", "Spacer", "LoadingSpinner", "RefreshButton", "CreateNewButton", "CreateFromTextButton"}]
      240 GETUPVAL                         R32 13
      241 GETUPVAL                         R33 16
      242 DUPTABLE                         R34 K43 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      243 GETTABLEKS                       R35 R21 K44 ["Title"]
      245 SETTABLEKS                       R35 R34 K42 ["Text"]
      247 MOVE                             R35 R23
      248 CALL                             R35 0 1
      249 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      251 CALL                             R32 2 1
      252 SETTABLEKS                       R32 R31 K34 ["TitleText"]
      254 GETUPVAL                         R32 13
      255 GETUPVAL                         R33 14
      256 DUPTABLE                         R34 K46 [{["tag"] = "fill", ["LayoutOrder"]}]
      257 MOVE                             R35 R23
      258 CALL                             R35 0 1
      259 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      261 CALL                             R32 2 1
      262 SETTABLEKS                       R32 R31 K35 ["Spacer"]
      264 JUMPIFNOT                        R7 ; [+14]
      265 GETUPVAL                         R32 13
      266 GETUPVAL                         R33 17
      267 DUPTABLE                         R34 K48 [{"size", "LayoutOrder"}]
      268 GETUPVAL                         R35 18
      269 GETTABLEKS                       R35 R35 K49 ["Small"]
      271 SETTABLEKS                       R35 R34 K47 ["size"]
      273 MOVE                             R35 R23
      274 CALL                             R35 0 1
      275 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      277 CALL                             R32 2 1
      278 JUMP                             ; [+1]
      279 LOADNIL                          R32
      280 SETTABLEKS                       R32 R31 K36 ["LoadingSpinner"]
      282 GETUPVAL                         R32 13
      283 GETUPVAL                         R33 19
      284 DUPTABLE                         R34 K54 [{"icon", "size", "variant", "onActivated", "isDisabled", "testId", "LayoutOrder"}]
      285 GETUPVAL                         R35 20
      286 GETTABLEKS                       R35 R35 K55 ["Enums"]
      288 GETTABLEKS                       R35 R35 K56 ["IconName"]
      290 GETTABLEKS                       R35 R35 K57 ["TwoArrowsSpinClockwise"]
      292 SETTABLEKS                       R35 R34 K50 ["icon"]
      294 GETUPVAL                         R35 20
      295 GETTABLEKS                       R35 R35 K55 ["Enums"]
      297 GETTABLEKS                       R35 R35 K58 ["InputSize"]
      299 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      301 SETTABLEKS                       R35 R34 K47 ["size"]
      303 GETUPVAL                         R35 21
      304 GETTABLEKS                       R35 R35 K60 ["Utility"]
      306 SETTABLEKS                       R35 R34 K51 ["variant"]
      308 SETTABLEKS                       R14 R34 K52 ["onActivated"]
      310 SETTABLEKS                       R7 R34 K53 ["isDisabled"]
      312 GETUPVAL                         R35 15
      313 GETTABLEKS                       R35 R35 K22 ["Skills"]
      315 GETTABLEKS                       R35 R35 K37 ["RefreshButton"]
      317 SETTABLEKS                       R35 R34 K20 ["testId"]
      319 MOVE                             R35 R23
      320 CALL                             R35 0 1
      321 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      323 CALL                             R32 2 1
      324 SETTABLEKS                       R32 R31 K37 ["RefreshButton"]
      326 GETUPVAL                         R32 13
      327 GETUPVAL                         R33 22
      328 DUPTABLE                         R34 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      329 GETTABLEKS                       R35 R21 K63 ["CreateNew"]
      331 SETTABLEKS                       R35 R34 K61 ["text"]
      333 GETUPVAL                         R35 23
      334 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      336 SETTABLEKS                       R35 R34 K47 ["size"]
      338 GETUPVAL                         R35 21
      339 GETTABLEKS                       R35 R35 K64 ["Emphasis"]
      341 SETTABLEKS                       R35 R34 K51 ["variant"]
      343 SETTABLEKS                       R15 R34 K52 ["onActivated"]
      345 GETUPVAL                         R35 15
      346 GETTABLEKS                       R35 R35 K22 ["Skills"]
      348 GETTABLEKS                       R35 R35 K38 ["CreateNewButton"]
      350 SETTABLEKS                       R35 R34 K20 ["testId"]
      352 MOVE                             R35 R23
      353 CALL                             R35 0 1
      354 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      356 CALL                             R32 2 1
      357 SETTABLEKS                       R32 R31 K38 ["CreateNewButton"]
      359 GETUPVAL                         R32 13
      360 GETUPVAL                         R33 22
      361 DUPTABLE                         R34 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      362 GETTABLEKS                       R35 R21 K65 ["CreateFromText"]
      364 SETTABLEKS                       R35 R34 K61 ["text"]
      366 GETUPVAL                         R35 23
      367 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      369 SETTABLEKS                       R35 R34 K47 ["size"]
      371 GETUPVAL                         R35 21
      372 GETTABLEKS                       R35 R35 K66 ["Standard"]
      374 SETTABLEKS                       R35 R34 K51 ["variant"]
      376 SETTABLEKS                       R16 R34 K52 ["onActivated"]
      378 GETUPVAL                         R35 15
      379 GETTABLEKS                       R35 R35 K22 ["Skills"]
      381 GETTABLEKS                       R35 R35 K39 ["CreateFromTextButton"]
      383 SETTABLEKS                       R35 R34 K20 ["testId"]
      385 MOVE                             R35 R23
      386 CALL                             R35 0 1
      387 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      389 CALL                             R32 2 1
      390 SETTABLEKS                       R32 R31 K39 ["CreateFromTextButton"]
      392 CALL                             R28 3 1
      393 SETTABLEKS                       R28 R27 K24 ["TitleAndButtons"]
      395 GETUPVAL                         R28 13
      396 GETUPVAL                         R29 16
      397 DUPTABLE                         R30 K68 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      398 GETTABLEKS                       R31 R21 K25 ["Description"]
      400 SETTABLEKS                       R31 R30 K42 ["Text"]
      402 MOVE                             R31 R22
      403 CALL                             R31 0 1
      404 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      406 CALL                             R28 2 1
      407 SETTABLEKS                       R28 R27 K25 ["Description"]
      409 GETUPVAL                         R28 13
      410 GETUPVAL                         R29 24
      411 DUPTABLE                         R30 K72 [{"Size", "LayoutOrder", "scroll", "layout"}]
      412 GETIMPORT                        R31 K75 [UDim2.new]
      414 LOADN                            R32 1
      415 LOADN                            R33 0
      416 LOADN                            R34 1
      417 JUMPIFNOT                        R11 ; [+2]
      418 LOADN                            R36 200
      419 JUMP                             ; [+1]
      420 LOADN                            R36 120
      421 MINUS                            R35 R36
      422 CALL                             R31 4 1
      423 SETTABLEKS                       R31 R30 K69 ["Size"]
      425 MOVE                             R31 R22
      426 CALL                             R31 0 1
      427 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      429 DUPTABLE                         R31 K80 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      430 GETIMPORT                        R32 K84 [Enum.AutomaticSize.Y]
      432 SETTABLEKS                       R32 R31 K76 ["AutomaticCanvasSize"]
      434 GETIMPORT                        R32 K75 [UDim2.new]
      436 LOADN                            R33 0
      437 LOADN                            R34 0
      438 LOADN                            R35 0
      439 LOADN                            R36 0
      440 CALL                             R32 4 1
      441 SETTABLEKS                       R32 R31 K77 ["CanvasSize"]
      443 GETIMPORT                        R32 K85 [Enum.ScrollingDirection.Y]
      445 SETTABLEKS                       R32 R31 K78 ["ScrollingDirection"]
      447 GETUPVAL                         R32 20
      448 GETTABLEKS                       R32 R32 K55 ["Enums"]
      450 GETTABLEKS                       R32 R32 K86 ["Visibility"]
      452 GETTABLEKS                       R32 R32 K87 ["Auto"]
      454 SETTABLEKS                       R32 R31 K79 ["scrollBarVisibility"]
      456 SETTABLEKS                       R31 R30 K70 ["scroll"]
      458 DUPTABLE                         R31 K90 [{"SortOrder", "FillDirection"}]
      459 GETIMPORT                        R32 K91 [Enum.SortOrder.LayoutOrder]
      461 SETTABLEKS                       R32 R31 K88 ["SortOrder"]
      463 GETIMPORT                        R32 K93 [Enum.FillDirection.Vertical]
      465 SETTABLEKS                       R32 R31 K89 ["FillDirection"]
      467 SETTABLEKS                       R31 R30 K71 ["layout"]
      469 DUPTABLE                         R31 K95 [{"Tree"}]
      470 GETUPVAL                         R32 13
      471 GETUPVAL                         R33 25
      472 DUPTABLE                         R34 K103 [{["skills"], ["personalGroupLabel"], ["robloxGroupLabel"], ["selectedSkillName"], ["onSelectSkill"], ["onToggleSkill"], ["LayoutOrder"] = 1}]
      473 SETTABLEKS                       R9 R34 K96 ["skills"]
      475 GETTABLEKS                       R35 R21 K104 ["PersonalGroup"]
      477 SETTABLEKS                       R35 R34 K97 ["personalGroupLabel"]
      479 GETTABLEKS                       R35 R21 K105 ["RobloxGroup"]
      481 SETTABLEKS                       R35 R34 K98 ["robloxGroupLabel"]
      483 SETTABLEKS                       R3 R34 K99 ["selectedSkillName"]
      485 SETTABLEKS                       R12 R34 K100 ["onSelectSkill"]
      487 SETTABLEKS                       R13 R34 K101 ["onToggleSkill"]
      489 CALL                             R32 2 1
      490 SETTABLEKS                       R32 R31 K94 ["Tree"]
      492 CALL                             R28 3 1
      493 SETTABLEKS                       R28 R27 K26 ["TreeScroll"]
      495 GETUPVAL                         R28 13
      496 GETUPVAL                         R29 26
      497 DUPTABLE                         R30 K106 [{"LayoutOrder"}]
      498 MOVE                             R31 R22
      499 CALL                             R31 0 1
      500 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      502 CALL                             R28 2 1
      503 SETTABLEKS                       R28 R27 K27 ["DetailDivider"]
      505 GETUPVAL                         R28 13
      506 GETUPVAL                         R29 27
      507 DUPTABLE                         R30 K109 [{"skill", "onDeleteSkill", "onDuplicateSkill", "onClose", "LayoutOrder"}]
      508 SETTABLEKS                       R11 R30 K1 ["skill"]
      510 SETTABLEKS                       R20 R30 K107 ["onDeleteSkill"]
      512 SETTABLEKS                       R19 R30 K108 ["onDuplicateSkill"]
      514 JUMPIFNOT                        R0 ; [+3]
      515 GETTABLEKS                       R31 R0 K14 ["onClose"]
      517 JUMP                             ; [+1]
      518 LOADNIL                          R31
      519 SETTABLEKS                       R31 R30 K14 ["onClose"]
      521 MOVE                             R31 R22
      522 CALL                             R31 0 1
      523 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      525 CALL                             R28 2 1
      526 SETTABLEKS                       R28 R27 K28 ["DetailPane"]
      528 JUMPIFNOT                        R5 ; [+18]
      529 GETUPVAL                         R28 13
      530 GETUPVAL                         R29 28
      531 DUPTABLE                         R30 K112 [{"existingUserSkills", "onCreate", "onClose"}]
      532 GETUPVAL                         R31 6
      533 GETTABLEKS                       R31 R31 K113 ["getAllBySource"]
      535 GETUPVAL                         R32 3
      536 GETTABLEKS                       R32 R32 K8 ["User"]
      538 CALL                             R31 1 1
      539 SETTABLEKS                       R31 R30 K110 ["existingUserSkills"]
      541 SETTABLEKS                       R18 R30 K111 ["onCreate"]
      543 SETTABLEKS                       R17 R30 K14 ["onClose"]
      545 CALL                             R28 2 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R28
      548 SETTABLEKS                       R28 R27 K29 ["CreateModal"]
      550 CALL                             R24 3 -1
      551 RETURN                           R24 -1

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
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K10 ["Skills"]
       62 GETTABLEKS                       R9 R9 K17 ["SkillDefinition"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K8 ["Parent"]
       71 GETTABLEKS                       R10 R10 K18 ["SkillDetailPane"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K10 ["Skills"]
       78 GETTABLEKS                       R11 R11 K19 ["SkillRegistry"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K10 ["Skills"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETIMPORT                        R13 K1 [script]
       90 GETTABLEKS                       R13 R13 K8 ["Parent"]
       92 GETTABLEKS                       R13 R13 K20 ["SkillsTree"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Util"]
       99 GETTABLEKS                       R14 R14 K21 ["TestIds"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K22 ["Resources"]
      106 GETTABLEKS                       R15 R15 K23 ["Localization"]
      108 GETTABLEKS                       R15 R15 K24 ["Translator"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K10 ["Skills"]
      115 GETTABLEKS                       R16 R16 K25 ["createUserSkillAsync"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K10 ["Skills"]
      122 GETTABLEKS                       R17 R17 K26 ["loadUserSkills"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K27 ["Hooks"]
      129 GETTABLEKS                       R18 R18 K28 ["useSkillsRegistryWatch"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R18 R8 K29 ["Sources"]
      134 GETTABLEKS                       R19 R5 K30 ["Button"]
      136 GETTABLEKS                       R20 R5 K31 ["Divider"]
      138 GETTABLEKS                       R21 R5 K32 ["IconButton"]
      140 GETTABLEKS                       R22 R5 K33 ["Loading"]
      142 GETTABLEKS                       R23 R5 K34 ["ScrollView"]
      144 GETTABLEKS                       R24 R5 K35 ["Text"]
      146 GETTABLEKS                       R25 R5 K36 ["View"]
      148 GETTABLEKS                       R26 R5 K37 ["Enums"]
      150 GETTABLEKS                       R26 R26 K38 ["ButtonSize"]
      152 GETTABLEKS                       R27 R5 K37 ["Enums"]
      154 GETTABLEKS                       R27 R27 K39 ["ButtonVariant"]
      156 GETTABLEKS                       R28 R5 K37 ["Enums"]
      158 GETTABLEKS                       R28 R28 K40 ["IconSize"]
      160 GETTABLEKS                       R29 R7 K41 ["createNextOrder"]
      162 GETTABLEKS                       R30 R6 K42 ["createElement"]
      164 DUPCLOSURE                       R31 K43 [PROTO_3]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R3
      167 DUPCLOSURE                       R32 K44 [PROTO_22]
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R31
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R29
      181 CAPTURE                          VAL R30
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R28
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R2
      197 RETURN                           R32 1
