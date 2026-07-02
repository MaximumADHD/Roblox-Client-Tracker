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
       33 JUMP                             ; [+52]
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
       57 JUMPIFNOTEQ                      R2 R3 ; [+28]
       59 LOADK                            R3 K10 ["rbx-"]
       60 GETUPVAL                         R4 4
       61 CONCAT                           R2 R3 R4
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K11 ["getBySource"]
       65 GETUPVAL                         R4 6
       66 GETTABLEKS                       R4 R4 K12 ["Roblox"]
       68 MOVE                             R5 R2
       69 CALL                             R3 2 1
       70 JUMPIFNOT                        R3 ; [+15]
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R4 R4 K3 ["unregister"]
       74 MOVE                             R5 R2
       75 GETUPVAL                         R6 6
       76 GETTABLEKS                       R6 R6 K12 ["Roblox"]
       78 CALL                             R4 2 0
       79 GETUPVAL                         R4 5
       80 GETTABLEKS                       R4 R4 K6 ["store"]
       82 MOVE                             R5 R3
       83 CALL                             R4 1 0
       84 LOADB                            R4 1
       85 SETTABLE                         R4 R1 R2
       86 GETUPVAL                         R2 1
       87 GETTABLEKS                       R2 R2 K13 ["persistDisabledSetAsync"]
       89 MOVE                             R3 R0
       90 MOVE                             R4 R1
       91 CALL                             R2 2 0
       92 RETURN                           R0 0

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
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 DUPCLOSURE                       R1 K3 [PROTO_7]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
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
       13 LOADK                            R1 K2 ["/create-skill "]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [task.spawn]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_14:
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
       81 LOADK                            R5 K13 ["rbx-"]
       82 GETUPVAL                         R6 3
       83 CONCAT                           R4 R5 R6
       84 GETUPVAL                         R5 4
       85 GETTABLEKS                       R5 R5 K0 ["get"]
       87 MOVE                             R6 R4
       88 CALL                             R5 1 1
       89 JUMPIFNOT                        R5 ; [+13]
       90 GETUPVAL                         R6 4
       91 GETTABLEKS                       R6 R6 K11 ["remove"]
       93 MOVE                             R7 R4
       94 CALL                             R6 1 0
       95 GETUPVAL                         R6 1
       96 GETTABLEKS                       R6 R6 K14 ["register"]
       98 MOVE                             R7 R5
       99 CALL                             R6 1 0
      100 LOADNIL                          R6
      101 SETTABLE                         R6 R2 R4
      102 LOADB                            R3 1
      103 JUMPIFNOT                        R3 ; [+6]
      104 GETUPVAL                         R6 5
      105 GETTABLEKS                       R6 R6 K15 ["persistDisabledSetAsync"]
      107 MOVE                             R7 R0
      108 MOVE                             R8 R2
      109 CALL                             R6 2 0
      110 GETUPVAL                         R6 6
      111 LOADNIL                          R7
      112 CALL                             R6 1 0
      113 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       14 NEWTABLE                         R7 0 0
       16 NEWTABLE                         R8 0 0
       18 MOVE                             R9 R1
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 FORGPREP                         R9
       22 DUPTABLE                         R14 K6 [{["skill"], ["isEnabled"] = True, ["isToggleDisabled"] = False}]
       23 SETTABLEKS                       R13 R14 K1 ["skill"]
       25 SETTABLE                         R14 R7 R12
       26 GETTABLEKS                       R14 R13 K7 ["source"]
       28 GETUPVAL                         R15 3
       29 GETTABLEKS                       R15 R15 K8 ["User"]
       31 JUMPIFNOTEQ                      R14 R15 ; [+3]
       33 LOADB                            R14 1
       34 SETTABLE                         R14 R8 R12
       35 FORGLOOP                         R9 2 ; [-14]
       37 MOVE                             R9 R2
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 FORGPREP                         R9
       41 DUPTABLE                         R14 K9 [{["skill"], ["isEnabled"] = False, ["isToggleDisabled"] = False}]
       42 SETTABLEKS                       R13 R14 K1 ["skill"]
       44 SETTABLE                         R14 R7 R12
       45 FORGLOOP                         R9 2 ; [-5]
       47 MOVE                             R9 R7
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 FORGPREP                         R9
       51 GETTABLEKS                       R14 R13 K1 ["skill"]
       53 GETTABLEKS                       R14 R14 K7 ["source"]
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K10 ["Roblox"]
       58 JUMPIFNOTEQ                      R14 R15 ; [+19]
       60 LOADN                            R17 1
       61 LOADN                            R18 4
       62 NAMECALL                         R15 R12 K11 ["sub"]
       64 CALL                             R15 3 1
       65 JUMPIFNOTEQKS                    R15 K12 ["rbx-"] ; [+6]
       67 LOADN                            R16 5
       68 NAMECALL                         R14 R12 K11 ["sub"]
       70 CALL                             R14 2 1
       71 JUMP                             ; [+1]
       72 MOVE                             R14 R12
       73 GETTABLE                         R15 R8 R14
       74 JUMPIFNOT                        R15 ; [+3]
       75 LOADB                            R15 1
       76 SETTABLEKS                       R15 R13 K4 ["isToggleDisabled"]
       78 FORGLOOP                         R9 2 ; [-28]
       80 LOADNIL                          R9
       81 JUMPIFNOT                        R3 ; [+11]
       82 GETTABLE                         R10 R7 R3
       83 JUMPIFNOT                        R10 ; [+3]
       84 GETTABLEKS                       R9 R10 K1 ["skill"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R9
       88 JUMPIFNOTEQKNIL                  R9 ; [+4]
       90 MOVE                             R11 R4
       91 LOADNIL                          R12
       92 CALL                             R11 1 0
       93 GETUPVAL                         R10 2
       94 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       96 NEWCLOSURE                       R11 P0
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R12 0 1
      101 MOVE                             R13 R3
      102 SETLIST                          R12 R13 1 [1]
      104 CALL                             R10 2 1
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R11 R11 K13 ["useCallback"]
      108 NEWCLOSURE                       R12 P1
      109 CAPTURE                          VAL R7
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          UPVAL U7
      114 CAPTURE                          UPVAL U3
      115 NEWTABLE                         R13 0 1
      117 MOVE                             R14 R7
      118 SETLIST                          R13 R14 1 [1]
      120 CALL                             R11 2 1
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R12 R12 K13 ["useCallback"]
      124 DUPCLOSURE                       R13 K14 [PROTO_8]
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          UPVAL U8
      128 NEWTABLE                         R14 0 0
      130 CALL                             R12 2 1
      131 GETUPVAL                         R13 2
      132 GETTABLEKS                       R13 R13 K13 ["useCallback"]
      134 NEWCLOSURE                       R14 P3
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U9
      137 NEWTABLE                         R15 0 1
      139 JUMPIFNOT                        R0 ; [+3]
      140 GETTABLEKS                       R16 R0 K15 ["onClose"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R16
      144 SETLIST                          R15 R16 1 [1]
      146 CALL                             R13 2 1
      147 GETUPVAL                         R14 2
      148 GETTABLEKS                       R14 R14 K13 ["useCallback"]
      150 NEWCLOSURE                       R15 P4
      151 CAPTURE                          VAL R6
      152 NEWTABLE                         R16 0 0
      154 CALL                             R14 2 1
      155 GETUPVAL                         R15 2
      156 GETTABLEKS                       R15 R15 K13 ["useCallback"]
      158 NEWCLOSURE                       R16 P5
      159 CAPTURE                          VAL R6
      160 NEWTABLE                         R17 0 0
      162 CALL                             R15 2 1
      163 GETUPVAL                         R16 2
      164 GETTABLEKS                       R16 R16 K13 ["useCallback"]
      166 NEWCLOSURE                       R17 P6
      167 CAPTURE                          VAL R6
      168 CAPTURE                          UPVAL U10
      169 CAPTURE                          UPVAL U4
      170 CAPTURE                          VAL R4
      171 NEWTABLE                         R18 0 0
      173 CALL                             R16 2 1
      174 GETUPVAL                         R17 2
      175 GETTABLEKS                       R17 R17 K13 ["useCallback"]
      177 NEWCLOSURE                       R18 P7
      178 CAPTURE                          UPVAL U4
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          UPVAL U7
      182 CAPTURE                          UPVAL U5
      183 CAPTURE                          VAL R4
      184 NEWTABLE                         R19 0 0
      186 CALL                             R17 2 1
      187 GETUPVAL                         R18 2
      188 GETTABLEKS                       R18 R18 K16 ["useMemo"]
      190 DUPCLOSURE                       R19 K17 [PROTO_16]
      191 CAPTURE                          UPVAL U11
      192 NEWTABLE                         R20 0 1
      194 GETUPVAL                         R21 11
      195 GETTABLEKS                       R21 R21 K18 ["locale"]
      197 SETLIST                          R20 R21 1 [1]
      199 CALL                             R18 2 1
      200 GETUPVAL                         R19 12
      201 CALL                             R19 0 1
      202 GETUPVAL                         R20 12
      203 CALL                             R20 0 1
      204 GETUPVAL                         R21 13
      205 GETUPVAL                         R22 14
      206 DUPTABLE                         R23 K22 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"]}]
      207 GETUPVAL                         R24 15
      208 GETTABLEKS                       R24 R24 K23 ["Skills"]
      210 GETTABLEKS                       R24 R24 K24 ["TabContent"]
      212 SETTABLEKS                       R24 R23 K21 ["testId"]
      214 DUPTABLE                         R24 K30 [{"TitleAndButtons", "Description", "Tree", "DetailPane", "CreateModal"}]
      215 GETUPVAL                         R25 13
      216 GETUPVAL                         R26 14
      217 DUPTABLE                         R27 K33 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      218 MOVE                             R28 R19
      219 CALL                             R28 0 1
      220 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      222 DUPTABLE                         R28 K39 [{"TitleText", "Spacer", "CreateNewButton", "CreateFromTextButton", "RefreshButton"}]
      223 GETUPVAL                         R29 13
      224 GETUPVAL                         R30 16
      225 DUPTABLE                         R31 K42 [{["tag"] = "bold auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      226 GETTABLEKS                       R32 R18 K43 ["Title"]
      228 SETTABLEKS                       R32 R31 K41 ["Text"]
      230 MOVE                             R32 R20
      231 CALL                             R32 0 1
      232 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      234 CALL                             R29 2 1
      235 SETTABLEKS                       R29 R28 K34 ["TitleText"]
      237 GETUPVAL                         R29 13
      238 GETUPVAL                         R30 14
      239 DUPTABLE                         R31 K45 [{["tag"] = "fill", ["LayoutOrder"]}]
      240 MOVE                             R32 R20
      241 CALL                             R32 0 1
      242 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      244 CALL                             R29 2 1
      245 SETTABLEKS                       R29 R28 K35 ["Spacer"]
      247 GETUPVAL                         R29 13
      248 GETUPVAL                         R30 17
      249 DUPTABLE                         R31 K50 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      250 GETTABLEKS                       R32 R18 K51 ["CreateNew"]
      252 SETTABLEKS                       R32 R31 K46 ["text"]
      254 GETUPVAL                         R32 18
      255 GETTABLEKS                       R32 R32 K52 ["XSmall"]
      257 SETTABLEKS                       R32 R31 K47 ["size"]
      259 GETUPVAL                         R32 19
      260 GETTABLEKS                       R32 R32 K53 ["Emphasis"]
      262 SETTABLEKS                       R32 R31 K48 ["variant"]
      264 SETTABLEKS                       R13 R31 K49 ["onActivated"]
      266 GETUPVAL                         R32 15
      267 GETTABLEKS                       R32 R32 K23 ["Skills"]
      269 GETTABLEKS                       R32 R32 K36 ["CreateNewButton"]
      271 SETTABLEKS                       R32 R31 K21 ["testId"]
      273 MOVE                             R32 R20
      274 CALL                             R32 0 1
      275 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      277 CALL                             R29 2 1
      278 SETTABLEKS                       R29 R28 K36 ["CreateNewButton"]
      280 GETUPVAL                         R29 13
      281 GETUPVAL                         R30 17
      282 DUPTABLE                         R31 K50 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      283 GETTABLEKS                       R32 R18 K54 ["CreateFromText"]
      285 SETTABLEKS                       R32 R31 K46 ["text"]
      287 GETUPVAL                         R32 18
      288 GETTABLEKS                       R32 R32 K52 ["XSmall"]
      290 SETTABLEKS                       R32 R31 K47 ["size"]
      292 GETUPVAL                         R32 19
      293 GETTABLEKS                       R32 R32 K55 ["Standard"]
      295 SETTABLEKS                       R32 R31 K48 ["variant"]
      297 SETTABLEKS                       R14 R31 K49 ["onActivated"]
      299 GETUPVAL                         R32 15
      300 GETTABLEKS                       R32 R32 K23 ["Skills"]
      302 GETTABLEKS                       R32 R32 K37 ["CreateFromTextButton"]
      304 SETTABLEKS                       R32 R31 K21 ["testId"]
      306 MOVE                             R32 R20
      307 CALL                             R32 0 1
      308 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      310 CALL                             R29 2 1
      311 SETTABLEKS                       R29 R28 K37 ["CreateFromTextButton"]
      313 GETUPVAL                         R29 13
      314 GETUPVAL                         R30 17
      315 DUPTABLE                         R31 K50 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      316 GETTABLEKS                       R32 R18 K56 ["Refresh"]
      318 SETTABLEKS                       R32 R31 K46 ["text"]
      320 GETUPVAL                         R32 18
      321 GETTABLEKS                       R32 R32 K52 ["XSmall"]
      323 SETTABLEKS                       R32 R31 K47 ["size"]
      325 GETUPVAL                         R32 19
      326 GETTABLEKS                       R32 R32 K55 ["Standard"]
      328 SETTABLEKS                       R32 R31 K48 ["variant"]
      330 SETTABLEKS                       R12 R31 K49 ["onActivated"]
      332 GETUPVAL                         R32 15
      333 GETTABLEKS                       R32 R32 K23 ["Skills"]
      335 GETTABLEKS                       R32 R32 K38 ["RefreshButton"]
      337 SETTABLEKS                       R32 R31 K21 ["testId"]
      339 MOVE                             R32 R20
      340 CALL                             R32 0 1
      341 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      343 CALL                             R29 2 1
      344 SETTABLEKS                       R29 R28 K38 ["RefreshButton"]
      346 CALL                             R25 3 1
      347 SETTABLEKS                       R25 R24 K25 ["TitleAndButtons"]
      349 GETUPVAL                         R25 13
      350 GETUPVAL                         R26 16
      351 DUPTABLE                         R27 K58 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      352 GETTABLEKS                       R28 R18 K26 ["Description"]
      354 SETTABLEKS                       R28 R27 K41 ["Text"]
      356 MOVE                             R28 R19
      357 CALL                             R28 0 1
      358 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      360 CALL                             R25 2 1
      361 SETTABLEKS                       R25 R24 K26 ["Description"]
      363 GETUPVAL                         R25 13
      364 GETUPVAL                         R26 20
      365 DUPTABLE                         R27 K65 [{"skills", "personalGroupLabel", "robloxGroupLabel", "selectedSkillName", "onSelectSkill", "onToggleSkill", "LayoutOrder"}]
      366 SETTABLEKS                       R7 R27 K59 ["skills"]
      368 GETTABLEKS                       R28 R18 K66 ["PersonalGroup"]
      370 SETTABLEKS                       R28 R27 K60 ["personalGroupLabel"]
      372 GETTABLEKS                       R28 R18 K67 ["RobloxGroup"]
      374 SETTABLEKS                       R28 R27 K61 ["robloxGroupLabel"]
      376 SETTABLEKS                       R3 R27 K62 ["selectedSkillName"]
      378 SETTABLEKS                       R10 R27 K63 ["onSelectSkill"]
      380 SETTABLEKS                       R11 R27 K64 ["onToggleSkill"]
      382 MOVE                             R28 R19
      383 CALL                             R28 0 1
      384 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      386 CALL                             R25 2 1
      387 SETTABLEKS                       R25 R24 K27 ["Tree"]
      389 GETUPVAL                         R25 13
      390 GETUPVAL                         R26 21
      391 DUPTABLE                         R27 K69 [{"skill", "onDeleteSkill", "LayoutOrder"}]
      392 SETTABLEKS                       R9 R27 K1 ["skill"]
      394 SETTABLEKS                       R17 R27 K68 ["onDeleteSkill"]
      396 MOVE                             R28 R19
      397 CALL                             R28 0 1
      398 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      400 CALL                             R25 2 1
      401 SETTABLEKS                       R25 R24 K28 ["DetailPane"]
      403 JUMPIFNOT                        R5 ; [+18]
      404 GETUPVAL                         R25 13
      405 GETUPVAL                         R26 22
      406 DUPTABLE                         R27 K72 [{"existingUserSkills", "onCreate", "onClose"}]
      407 GETUPVAL                         R28 6
      408 GETTABLEKS                       R28 R28 K73 ["getAllBySource"]
      410 GETUPVAL                         R29 3
      411 GETTABLEKS                       R29 R29 K8 ["User"]
      413 CALL                             R28 1 1
      414 SETTABLEKS                       R28 R27 K70 ["existingUserSkills"]
      416 SETTABLEKS                       R16 R27 K71 ["onCreate"]
      418 SETTABLEKS                       R15 R27 K15 ["onClose"]
      420 CALL                             R25 2 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R25
      423 SETTABLEKS                       R25 R24 K29 ["CreateModal"]
      425 CALL                             R21 3 -1
      426 RETURN                           R21 -1

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
      136 GETTABLEKS                       R20 R5 K31 ["Text"]
      138 GETTABLEKS                       R21 R5 K32 ["View"]
      140 GETTABLEKS                       R22 R5 K33 ["Enums"]
      142 GETTABLEKS                       R22 R22 K34 ["ButtonSize"]
      144 GETTABLEKS                       R23 R5 K33 ["Enums"]
      146 GETTABLEKS                       R23 R23 K35 ["ButtonVariant"]
      148 GETTABLEKS                       R24 R7 K36 ["createNextOrder"]
      150 GETTABLEKS                       R25 R6 K37 ["createElement"]
      152 DUPCLOSURE                       R26 K38 [PROTO_3]
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R3
      155 DUPCLOSURE                       R27 K39 [PROTO_17]
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R2
      179 RETURN                           R27 1
