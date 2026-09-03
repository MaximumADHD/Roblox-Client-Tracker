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
       87 GETUPVAL                         R2 2
       88 GETTABLEKS                       R2 R2 K4 ["skill"]
       90 GETTABLEKS                       R2 R2 K5 ["source"]
       92 GETUPVAL                         R3 6
       93 GETTABLEKS                       R3 R3 K7 ["User"]
       95 JUMPIFNOTEQ                      R2 R3 ; [+45]
       97 GETUPVAL                         R2 2
       98 GETTABLEKS                       R2 R2 K4 ["skill"]
      100 GETTABLEKS                       R2 R2 K13 ["assetId"]
      102 JUMPIFNOT                        R2 ; [+38]
      103 GETIMPORT                        R2 K15 [pcall]
      105 GETTABLEKS                       R3 R0 K16 ["cloudSkillAssets"]
      107 GETTABLEKS                       R3 R3 K17 ["uploadAssetsAsync"]
      109 NEWTABLE                         R4 0 1
      111 DUPTABLE                         R5 K21 [{"assetId", "name", "description", "isDisabled"}]
      112 GETUPVAL                         R6 2
      113 GETTABLEKS                       R6 R6 K4 ["skill"]
      115 GETTABLEKS                       R6 R6 K13 ["assetId"]
      117 SETTABLEKS                       R6 R5 K13 ["assetId"]
      119 GETUPVAL                         R6 2
      120 GETTABLEKS                       R6 R6 K4 ["skill"]
      122 GETTABLEKS                       R6 R6 K18 ["name"]
      124 SETTABLEKS                       R6 R5 K18 ["name"]
      126 GETUPVAL                         R6 2
      127 GETTABLEKS                       R6 R6 K4 ["skill"]
      129 GETTABLEKS                       R6 R6 K19 ["description"]
      131 SETTABLEKS                       R6 R5 K19 ["description"]
      133 GETUPVAL                         R6 2
      134 GETTABLEKS                       R6 R6 K2 ["isEnabled"]
      136 SETTABLEKS                       R6 R5 K20 ["isDisabled"]
      138 SETLIST                          R4 R5 1 [1]
      140 CALL                             R2 2 0
      141 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["refreshAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_7]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

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
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U4
      133 NEWTABLE                         R16 0 0
      135 CALL                             R14 2 1
      136 GETUPVAL                         R15 2
      137 GETTABLEKS                       R15 R15 K13 ["useCallback"]
      139 NEWCLOSURE                       R16 P3
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U9
      142 NEWTABLE                         R17 0 1
      144 JUMPIFNOT                        R0 ; [+3]
      145 GETTABLEKS                       R18 R0 K14 ["onClose"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R18
      149 SETLIST                          R17 R18 1 [1]
      151 CALL                             R15 2 1
      152 GETUPVAL                         R16 2
      153 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      155 NEWCLOSURE                       R17 P4
      156 CAPTURE                          VAL R6
      157 NEWTABLE                         R18 0 0
      159 CALL                             R16 2 1
      160 GETUPVAL                         R17 2
      161 GETTABLEKS                       R17 R17 K13 ["useCallback"]
      163 NEWCLOSURE                       R18 P5
      164 CAPTURE                          VAL R6
      165 NEWTABLE                         R19 0 0
      167 CALL                             R17 2 1
      168 GETUPVAL                         R18 2
      169 GETTABLEKS                       R18 R18 K13 ["useCallback"]
      171 NEWCLOSURE                       R19 P6
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R8
      174 CAPTURE                          UPVAL U10
      175 CAPTURE                          UPVAL U4
      176 CAPTURE                          VAL R4
      177 NEWTABLE                         R20 0 0
      179 CALL                             R18 2 1
      180 GETUPVAL                         R19 2
      181 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      183 NEWCLOSURE                       R20 P7
      184 CAPTURE                          VAL R8
      185 CAPTURE                          UPVAL U10
      186 CAPTURE                          UPVAL U4
      187 NEWTABLE                         R21 0 0
      189 CALL                             R19 2 1
      190 GETUPVAL                         R20 2
      191 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      193 NEWCLOSURE                       R21 P8
      194 CAPTURE                          UPVAL U4
      195 CAPTURE                          UPVAL U6
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          UPVAL U7
      198 CAPTURE                          UPVAL U5
      199 CAPTURE                          VAL R4
      200 NEWTABLE                         R22 0 0
      202 CALL                             R20 2 1
      203 GETUPVAL                         R21 2
      204 GETTABLEKS                       R21 R21 K15 ["useMemo"]
      206 DUPCLOSURE                       R22 K16 [PROTO_21]
      207 CAPTURE                          UPVAL U11
      208 NEWTABLE                         R23 0 1
      210 GETUPVAL                         R24 11
      211 GETTABLEKS                       R24 R24 K17 ["locale"]
      213 SETLIST                          R23 R24 1 [1]
      215 CALL                             R21 2 1
      216 GETUPVAL                         R22 12
      217 CALL                             R22 0 1
      218 GETUPVAL                         R23 12
      219 CALL                             R23 0 1
      220 GETUPVAL                         R24 13
      221 GETUPVAL                         R25 14
      222 DUPTABLE                         R26 K21 [{["tag"] = "col gap-small size-full-full", ["testId"]}]
      223 GETUPVAL                         R27 15
      224 GETTABLEKS                       R27 R27 K22 ["Skills"]
      226 GETTABLEKS                       R27 R27 K23 ["TabContent"]
      228 SETTABLEKS                       R27 R26 K20 ["testId"]
      230 DUPTABLE                         R27 K30 [{"TitleAndButtons", "Description", "TreeScroll", "DetailDivider", "DetailPane", "CreateModal"}]
      231 GETUPVAL                         R28 13
      232 GETUPVAL                         R29 14
      233 DUPTABLE                         R30 K33 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      234 MOVE                             R31 R22
      235 CALL                             R31 0 1
      236 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      238 DUPTABLE                         R31 K40 [{"TitleText", "Spacer", "LoadingSpinner", "RefreshButton", "CreateNewButton", "CreateFromTextButton"}]
      239 GETUPVAL                         R32 13
      240 GETUPVAL                         R33 16
      241 DUPTABLE                         R34 K43 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      242 GETTABLEKS                       R35 R21 K44 ["Title"]
      244 SETTABLEKS                       R35 R34 K42 ["Text"]
      246 MOVE                             R35 R23
      247 CALL                             R35 0 1
      248 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      250 CALL                             R32 2 1
      251 SETTABLEKS                       R32 R31 K34 ["TitleText"]
      253 GETUPVAL                         R32 13
      254 GETUPVAL                         R33 14
      255 DUPTABLE                         R34 K46 [{["tag"] = "fill", ["LayoutOrder"]}]
      256 MOVE                             R35 R23
      257 CALL                             R35 0 1
      258 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      260 CALL                             R32 2 1
      261 SETTABLEKS                       R32 R31 K35 ["Spacer"]
      263 JUMPIFNOT                        R7 ; [+14]
      264 GETUPVAL                         R32 13
      265 GETUPVAL                         R33 17
      266 DUPTABLE                         R34 K48 [{"size", "LayoutOrder"}]
      267 GETUPVAL                         R35 18
      268 GETTABLEKS                       R35 R35 K49 ["Small"]
      270 SETTABLEKS                       R35 R34 K47 ["size"]
      272 MOVE                             R35 R23
      273 CALL                             R35 0 1
      274 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      276 CALL                             R32 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R32
      279 SETTABLEKS                       R32 R31 K36 ["LoadingSpinner"]
      281 GETUPVAL                         R32 13
      282 GETUPVAL                         R33 19
      283 DUPTABLE                         R34 K54 [{"icon", "size", "variant", "onActivated", "isDisabled", "testId", "LayoutOrder"}]
      284 GETUPVAL                         R35 20
      285 GETTABLEKS                       R35 R35 K55 ["Enums"]
      287 GETTABLEKS                       R35 R35 K56 ["IconName"]
      289 GETTABLEKS                       R35 R35 K57 ["TwoArrowsSpinClockwise"]
      291 SETTABLEKS                       R35 R34 K50 ["icon"]
      293 GETUPVAL                         R35 20
      294 GETTABLEKS                       R35 R35 K55 ["Enums"]
      296 GETTABLEKS                       R35 R35 K58 ["InputSize"]
      298 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      300 SETTABLEKS                       R35 R34 K47 ["size"]
      302 GETUPVAL                         R35 21
      303 GETTABLEKS                       R35 R35 K60 ["Utility"]
      305 SETTABLEKS                       R35 R34 K51 ["variant"]
      307 SETTABLEKS                       R14 R34 K52 ["onActivated"]
      309 SETTABLEKS                       R7 R34 K53 ["isDisabled"]
      311 GETUPVAL                         R35 15
      312 GETTABLEKS                       R35 R35 K22 ["Skills"]
      314 GETTABLEKS                       R35 R35 K37 ["RefreshButton"]
      316 SETTABLEKS                       R35 R34 K20 ["testId"]
      318 MOVE                             R35 R23
      319 CALL                             R35 0 1
      320 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      322 CALL                             R32 2 1
      323 SETTABLEKS                       R32 R31 K37 ["RefreshButton"]
      325 GETUPVAL                         R32 13
      326 GETUPVAL                         R33 22
      327 DUPTABLE                         R34 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      328 GETTABLEKS                       R35 R21 K63 ["CreateNew"]
      330 SETTABLEKS                       R35 R34 K61 ["text"]
      332 GETUPVAL                         R35 23
      333 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      335 SETTABLEKS                       R35 R34 K47 ["size"]
      337 GETUPVAL                         R35 21
      338 GETTABLEKS                       R35 R35 K64 ["Emphasis"]
      340 SETTABLEKS                       R35 R34 K51 ["variant"]
      342 SETTABLEKS                       R15 R34 K52 ["onActivated"]
      344 GETUPVAL                         R35 15
      345 GETTABLEKS                       R35 R35 K22 ["Skills"]
      347 GETTABLEKS                       R35 R35 K38 ["CreateNewButton"]
      349 SETTABLEKS                       R35 R34 K20 ["testId"]
      351 MOVE                             R35 R23
      352 CALL                             R35 0 1
      353 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      355 CALL                             R32 2 1
      356 SETTABLEKS                       R32 R31 K38 ["CreateNewButton"]
      358 GETUPVAL                         R32 13
      359 GETUPVAL                         R33 22
      360 DUPTABLE                         R34 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      361 GETTABLEKS                       R35 R21 K65 ["CreateFromText"]
      363 SETTABLEKS                       R35 R34 K61 ["text"]
      365 GETUPVAL                         R35 23
      366 GETTABLEKS                       R35 R35 K59 ["XSmall"]
      368 SETTABLEKS                       R35 R34 K47 ["size"]
      370 GETUPVAL                         R35 21
      371 GETTABLEKS                       R35 R35 K66 ["Standard"]
      373 SETTABLEKS                       R35 R34 K51 ["variant"]
      375 SETTABLEKS                       R16 R34 K52 ["onActivated"]
      377 GETUPVAL                         R35 15
      378 GETTABLEKS                       R35 R35 K22 ["Skills"]
      380 GETTABLEKS                       R35 R35 K39 ["CreateFromTextButton"]
      382 SETTABLEKS                       R35 R34 K20 ["testId"]
      384 MOVE                             R35 R23
      385 CALL                             R35 0 1
      386 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      388 CALL                             R32 2 1
      389 SETTABLEKS                       R32 R31 K39 ["CreateFromTextButton"]
      391 CALL                             R28 3 1
      392 SETTABLEKS                       R28 R27 K24 ["TitleAndButtons"]
      394 GETUPVAL                         R28 13
      395 GETUPVAL                         R29 16
      396 DUPTABLE                         R30 K68 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      397 GETTABLEKS                       R31 R21 K25 ["Description"]
      399 SETTABLEKS                       R31 R30 K42 ["Text"]
      401 MOVE                             R31 R22
      402 CALL                             R31 0 1
      403 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      405 CALL                             R28 2 1
      406 SETTABLEKS                       R28 R27 K25 ["Description"]
      408 GETUPVAL                         R28 13
      409 GETUPVAL                         R29 24
      410 DUPTABLE                         R30 K72 [{"Size", "LayoutOrder", "scroll", "layout"}]
      411 GETIMPORT                        R31 K75 [UDim2.new]
      413 LOADN                            R32 1
      414 LOADN                            R33 0
      415 LOADN                            R34 1
      416 JUMPIFNOT                        R11 ; [+2]
      417 LOADN                            R36 200
      418 JUMP                             ; [+1]
      419 LOADN                            R36 120
      420 MINUS                            R35 R36
      421 CALL                             R31 4 1
      422 SETTABLEKS                       R31 R30 K69 ["Size"]
      424 MOVE                             R31 R22
      425 CALL                             R31 0 1
      426 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      428 DUPTABLE                         R31 K80 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      429 GETIMPORT                        R32 K84 [Enum.AutomaticSize.Y]
      431 SETTABLEKS                       R32 R31 K76 ["AutomaticCanvasSize"]
      433 GETIMPORT                        R32 K75 [UDim2.new]
      435 LOADN                            R33 0
      436 LOADN                            R34 0
      437 LOADN                            R35 0
      438 LOADN                            R36 0
      439 CALL                             R32 4 1
      440 SETTABLEKS                       R32 R31 K77 ["CanvasSize"]
      442 GETIMPORT                        R32 K85 [Enum.ScrollingDirection.Y]
      444 SETTABLEKS                       R32 R31 K78 ["ScrollingDirection"]
      446 GETUPVAL                         R32 20
      447 GETTABLEKS                       R32 R32 K55 ["Enums"]
      449 GETTABLEKS                       R32 R32 K86 ["Visibility"]
      451 GETTABLEKS                       R32 R32 K87 ["Auto"]
      453 SETTABLEKS                       R32 R31 K79 ["scrollBarVisibility"]
      455 SETTABLEKS                       R31 R30 K70 ["scroll"]
      457 DUPTABLE                         R31 K90 [{"SortOrder", "FillDirection"}]
      458 GETIMPORT                        R32 K91 [Enum.SortOrder.LayoutOrder]
      460 SETTABLEKS                       R32 R31 K88 ["SortOrder"]
      462 GETIMPORT                        R32 K93 [Enum.FillDirection.Vertical]
      464 SETTABLEKS                       R32 R31 K89 ["FillDirection"]
      466 SETTABLEKS                       R31 R30 K71 ["layout"]
      468 DUPTABLE                         R31 K95 [{"Tree"}]
      469 GETUPVAL                         R32 13
      470 GETUPVAL                         R33 25
      471 DUPTABLE                         R34 K103 [{["skills"], ["personalGroupLabel"], ["robloxGroupLabel"], ["selectedSkillName"], ["onSelectSkill"], ["onToggleSkill"], ["LayoutOrder"] = 1}]
      472 SETTABLEKS                       R9 R34 K96 ["skills"]
      474 GETTABLEKS                       R35 R21 K104 ["PersonalGroup"]
      476 SETTABLEKS                       R35 R34 K97 ["personalGroupLabel"]
      478 GETTABLEKS                       R35 R21 K105 ["RobloxGroup"]
      480 SETTABLEKS                       R35 R34 K98 ["robloxGroupLabel"]
      482 SETTABLEKS                       R3 R34 K99 ["selectedSkillName"]
      484 SETTABLEKS                       R12 R34 K100 ["onSelectSkill"]
      486 SETTABLEKS                       R13 R34 K101 ["onToggleSkill"]
      488 CALL                             R32 2 1
      489 SETTABLEKS                       R32 R31 K94 ["Tree"]
      491 CALL                             R28 3 1
      492 SETTABLEKS                       R28 R27 K26 ["TreeScroll"]
      494 GETUPVAL                         R28 13
      495 GETUPVAL                         R29 26
      496 DUPTABLE                         R30 K106 [{"LayoutOrder"}]
      497 MOVE                             R31 R22
      498 CALL                             R31 0 1
      499 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      501 CALL                             R28 2 1
      502 SETTABLEKS                       R28 R27 K27 ["DetailDivider"]
      504 GETUPVAL                         R28 13
      505 GETUPVAL                         R29 27
      506 DUPTABLE                         R30 K109 [{"skill", "onDeleteSkill", "onDuplicateSkill", "onClose", "LayoutOrder"}]
      507 SETTABLEKS                       R11 R30 K1 ["skill"]
      509 SETTABLEKS                       R20 R30 K107 ["onDeleteSkill"]
      511 SETTABLEKS                       R19 R30 K108 ["onDuplicateSkill"]
      513 JUMPIFNOT                        R0 ; [+3]
      514 GETTABLEKS                       R31 R0 K14 ["onClose"]
      516 JUMP                             ; [+1]
      517 LOADNIL                          R31
      518 SETTABLEKS                       R31 R30 K14 ["onClose"]
      520 MOVE                             R31 R22
      521 CALL                             R31 0 1
      522 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      524 CALL                             R28 2 1
      525 SETTABLEKS                       R28 R27 K28 ["DetailPane"]
      527 JUMPIFNOT                        R5 ; [+18]
      528 GETUPVAL                         R28 13
      529 GETUPVAL                         R29 28
      530 DUPTABLE                         R30 K112 [{"existingUserSkills", "onCreate", "onClose"}]
      531 GETUPVAL                         R31 6
      532 GETTABLEKS                       R31 R31 K113 ["getAllBySource"]
      534 GETUPVAL                         R32 3
      535 GETTABLEKS                       R32 R32 K8 ["User"]
      537 CALL                             R31 1 1
      538 SETTABLEKS                       R31 R30 K110 ["existingUserSkills"]
      540 SETTABLEKS                       R18 R30 K111 ["onCreate"]
      542 SETTABLEKS                       R17 R30 K14 ["onClose"]
      544 CALL                             R28 2 1
      545 JUMP                             ; [+1]
      546 LOADNIL                          R28
      547 SETTABLEKS                       R28 R27 K29 ["CreateModal"]
      549 CALL                             R24 3 -1
      550 RETURN                           R24 -1

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
