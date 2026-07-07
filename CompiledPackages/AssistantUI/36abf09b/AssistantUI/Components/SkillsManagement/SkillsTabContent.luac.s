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
       15 GETUPVAL                         R2 3
       16 LOADB                            R3 0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_8:
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
       13 LOADK                            R1 K2 ["/rbx-create-skill "]
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
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_13:
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
      185 CAPTURE                          UPVAL U4
      186 CAPTURE                          UPVAL U6
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          UPVAL U7
      189 CAPTURE                          UPVAL U5
      190 CAPTURE                          VAL R4
      191 NEWTABLE                         R21 0 0
      193 CALL                             R19 2 1
      194 GETUPVAL                         R20 2
      195 GETTABLEKS                       R20 R20 K15 ["useMemo"]
      197 DUPCLOSURE                       R21 K16 [PROTO_16]
      198 CAPTURE                          UPVAL U11
      199 NEWTABLE                         R22 0 1
      201 GETUPVAL                         R23 11
      202 GETTABLEKS                       R23 R23 K17 ["locale"]
      204 SETLIST                          R22 R23 1 [1]
      206 CALL                             R20 2 1
      207 GETUPVAL                         R21 12
      208 CALL                             R21 0 1
      209 GETUPVAL                         R22 12
      210 CALL                             R22 0 1
      211 GETUPVAL                         R23 13
      212 GETUPVAL                         R24 14
      213 DUPTABLE                         R25 K21 [{["tag"] = "col gap-small size-full-full", ["testId"]}]
      214 GETUPVAL                         R26 15
      215 GETTABLEKS                       R26 R26 K22 ["Skills"]
      217 GETTABLEKS                       R26 R26 K23 ["TabContent"]
      219 SETTABLEKS                       R26 R25 K20 ["testId"]
      221 DUPTABLE                         R26 K30 [{"TitleAndButtons", "Description", "TreeScroll", "DetailDivider", "DetailPane", "CreateModal"}]
      222 GETUPVAL                         R27 13
      223 GETUPVAL                         R28 14
      224 DUPTABLE                         R29 K33 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      225 MOVE                             R30 R21
      226 CALL                             R30 0 1
      227 SETTABLEKS                       R30 R29 K31 ["LayoutOrder"]
      229 DUPTABLE                         R30 K40 [{"TitleText", "Spacer", "LoadingSpinner", "RefreshButton", "CreateNewButton", "CreateFromTextButton"}]
      230 GETUPVAL                         R31 13
      231 GETUPVAL                         R32 16
      232 DUPTABLE                         R33 K43 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      233 GETTABLEKS                       R34 R20 K44 ["Title"]
      235 SETTABLEKS                       R34 R33 K42 ["Text"]
      237 MOVE                             R34 R22
      238 CALL                             R34 0 1
      239 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      241 CALL                             R31 2 1
      242 SETTABLEKS                       R31 R30 K34 ["TitleText"]
      244 GETUPVAL                         R31 13
      245 GETUPVAL                         R32 14
      246 DUPTABLE                         R33 K46 [{["tag"] = "fill", ["LayoutOrder"]}]
      247 MOVE                             R34 R22
      248 CALL                             R34 0 1
      249 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      251 CALL                             R31 2 1
      252 SETTABLEKS                       R31 R30 K35 ["Spacer"]
      254 JUMPIFNOT                        R7 ; [+14]
      255 GETUPVAL                         R31 13
      256 GETUPVAL                         R32 17
      257 DUPTABLE                         R33 K48 [{"size", "LayoutOrder"}]
      258 GETUPVAL                         R34 18
      259 GETTABLEKS                       R34 R34 K49 ["Small"]
      261 SETTABLEKS                       R34 R33 K47 ["size"]
      263 MOVE                             R34 R22
      264 CALL                             R34 0 1
      265 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      267 CALL                             R31 2 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R31
      270 SETTABLEKS                       R31 R30 K36 ["LoadingSpinner"]
      272 GETUPVAL                         R31 13
      273 GETUPVAL                         R32 19
      274 DUPTABLE                         R33 K54 [{"icon", "size", "variant", "onActivated", "isDisabled", "testId", "LayoutOrder"}]
      275 GETUPVAL                         R34 20
      276 GETTABLEKS                       R34 R34 K55 ["Enums"]
      278 GETTABLEKS                       R34 R34 K56 ["IconName"]
      280 GETTABLEKS                       R34 R34 K57 ["TwoArrowsSpinClockwise"]
      282 SETTABLEKS                       R34 R33 K50 ["icon"]
      284 GETUPVAL                         R34 20
      285 GETTABLEKS                       R34 R34 K55 ["Enums"]
      287 GETTABLEKS                       R34 R34 K58 ["InputSize"]
      289 GETTABLEKS                       R34 R34 K59 ["XSmall"]
      291 SETTABLEKS                       R34 R33 K47 ["size"]
      293 GETUPVAL                         R34 21
      294 GETTABLEKS                       R34 R34 K60 ["Standard"]
      296 SETTABLEKS                       R34 R33 K51 ["variant"]
      298 SETTABLEKS                       R14 R33 K52 ["onActivated"]
      300 SETTABLEKS                       R7 R33 K53 ["isDisabled"]
      302 GETUPVAL                         R34 15
      303 GETTABLEKS                       R34 R34 K22 ["Skills"]
      305 GETTABLEKS                       R34 R34 K37 ["RefreshButton"]
      307 SETTABLEKS                       R34 R33 K20 ["testId"]
      309 MOVE                             R34 R22
      310 CALL                             R34 0 1
      311 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      313 CALL                             R31 2 1
      314 SETTABLEKS                       R31 R30 K37 ["RefreshButton"]
      316 GETUPVAL                         R31 13
      317 GETUPVAL                         R32 22
      318 DUPTABLE                         R33 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      319 GETTABLEKS                       R34 R20 K63 ["CreateNew"]
      321 SETTABLEKS                       R34 R33 K61 ["text"]
      323 GETUPVAL                         R34 23
      324 GETTABLEKS                       R34 R34 K59 ["XSmall"]
      326 SETTABLEKS                       R34 R33 K47 ["size"]
      328 GETUPVAL                         R34 21
      329 GETTABLEKS                       R34 R34 K64 ["Emphasis"]
      331 SETTABLEKS                       R34 R33 K51 ["variant"]
      333 SETTABLEKS                       R15 R33 K52 ["onActivated"]
      335 GETUPVAL                         R34 15
      336 GETTABLEKS                       R34 R34 K22 ["Skills"]
      338 GETTABLEKS                       R34 R34 K38 ["CreateNewButton"]
      340 SETTABLEKS                       R34 R33 K20 ["testId"]
      342 MOVE                             R34 R22
      343 CALL                             R34 0 1
      344 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      346 CALL                             R31 2 1
      347 SETTABLEKS                       R31 R30 K38 ["CreateNewButton"]
      349 GETUPVAL                         R31 13
      350 GETUPVAL                         R32 22
      351 DUPTABLE                         R33 K62 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      352 GETTABLEKS                       R34 R20 K65 ["CreateFromText"]
      354 SETTABLEKS                       R34 R33 K61 ["text"]
      356 GETUPVAL                         R34 23
      357 GETTABLEKS                       R34 R34 K59 ["XSmall"]
      359 SETTABLEKS                       R34 R33 K47 ["size"]
      361 GETUPVAL                         R34 21
      362 GETTABLEKS                       R34 R34 K60 ["Standard"]
      364 SETTABLEKS                       R34 R33 K51 ["variant"]
      366 SETTABLEKS                       R16 R33 K52 ["onActivated"]
      368 GETUPVAL                         R34 15
      369 GETTABLEKS                       R34 R34 K22 ["Skills"]
      371 GETTABLEKS                       R34 R34 K39 ["CreateFromTextButton"]
      373 SETTABLEKS                       R34 R33 K20 ["testId"]
      375 MOVE                             R34 R22
      376 CALL                             R34 0 1
      377 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      379 CALL                             R31 2 1
      380 SETTABLEKS                       R31 R30 K39 ["CreateFromTextButton"]
      382 CALL                             R27 3 1
      383 SETTABLEKS                       R27 R26 K24 ["TitleAndButtons"]
      385 GETUPVAL                         R27 13
      386 GETUPVAL                         R28 16
      387 DUPTABLE                         R29 K67 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      388 GETTABLEKS                       R30 R20 K25 ["Description"]
      390 SETTABLEKS                       R30 R29 K42 ["Text"]
      392 MOVE                             R30 R21
      393 CALL                             R30 0 1
      394 SETTABLEKS                       R30 R29 K31 ["LayoutOrder"]
      396 CALL                             R27 2 1
      397 SETTABLEKS                       R27 R26 K25 ["Description"]
      399 GETUPVAL                         R27 13
      400 GETUPVAL                         R28 24
      401 DUPTABLE                         R29 K71 [{"Size", "LayoutOrder", "scroll", "layout"}]
      402 GETIMPORT                        R30 K74 [UDim2.new]
      404 LOADN                            R31 1
      405 LOADN                            R32 0
      406 LOADN                            R33 1
      407 JUMPIFNOT                        R11 ; [+2]
      408 LOADN                            R35 200
      409 JUMP                             ; [+1]
      410 LOADN                            R35 120
      411 MINUS                            R34 R35
      412 CALL                             R30 4 1
      413 SETTABLEKS                       R30 R29 K68 ["Size"]
      415 MOVE                             R30 R21
      416 CALL                             R30 0 1
      417 SETTABLEKS                       R30 R29 K31 ["LayoutOrder"]
      419 DUPTABLE                         R30 K79 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      420 GETIMPORT                        R31 K83 [Enum.AutomaticSize.Y]
      422 SETTABLEKS                       R31 R30 K75 ["AutomaticCanvasSize"]
      424 GETIMPORT                        R31 K74 [UDim2.new]
      426 LOADN                            R32 0
      427 LOADN                            R33 0
      428 LOADN                            R34 0
      429 LOADN                            R35 0
      430 CALL                             R31 4 1
      431 SETTABLEKS                       R31 R30 K76 ["CanvasSize"]
      433 GETIMPORT                        R31 K84 [Enum.ScrollingDirection.Y]
      435 SETTABLEKS                       R31 R30 K77 ["ScrollingDirection"]
      437 GETUPVAL                         R31 20
      438 GETTABLEKS                       R31 R31 K55 ["Enums"]
      440 GETTABLEKS                       R31 R31 K85 ["Visibility"]
      442 GETTABLEKS                       R31 R31 K86 ["Auto"]
      444 SETTABLEKS                       R31 R30 K78 ["scrollBarVisibility"]
      446 SETTABLEKS                       R30 R29 K69 ["scroll"]
      448 DUPTABLE                         R30 K89 [{"SortOrder", "FillDirection"}]
      449 GETIMPORT                        R31 K90 [Enum.SortOrder.LayoutOrder]
      451 SETTABLEKS                       R31 R30 K87 ["SortOrder"]
      453 GETIMPORT                        R31 K92 [Enum.FillDirection.Vertical]
      455 SETTABLEKS                       R31 R30 K88 ["FillDirection"]
      457 SETTABLEKS                       R30 R29 K70 ["layout"]
      459 DUPTABLE                         R30 K94 [{"Tree"}]
      460 GETUPVAL                         R31 13
      461 GETUPVAL                         R32 25
      462 DUPTABLE                         R33 K102 [{["skills"], ["personalGroupLabel"], ["robloxGroupLabel"], ["selectedSkillName"], ["onSelectSkill"], ["onToggleSkill"], ["LayoutOrder"] = 1}]
      463 SETTABLEKS                       R9 R33 K95 ["skills"]
      465 GETTABLEKS                       R34 R20 K103 ["PersonalGroup"]
      467 SETTABLEKS                       R34 R33 K96 ["personalGroupLabel"]
      469 GETTABLEKS                       R34 R20 K104 ["RobloxGroup"]
      471 SETTABLEKS                       R34 R33 K97 ["robloxGroupLabel"]
      473 SETTABLEKS                       R3 R33 K98 ["selectedSkillName"]
      475 SETTABLEKS                       R12 R33 K99 ["onSelectSkill"]
      477 SETTABLEKS                       R13 R33 K100 ["onToggleSkill"]
      479 CALL                             R31 2 1
      480 SETTABLEKS                       R31 R30 K93 ["Tree"]
      482 CALL                             R27 3 1
      483 SETTABLEKS                       R27 R26 K26 ["TreeScroll"]
      485 GETUPVAL                         R27 13
      486 GETUPVAL                         R28 26
      487 DUPTABLE                         R29 K105 [{"LayoutOrder"}]
      488 MOVE                             R30 R21
      489 CALL                             R30 0 1
      490 SETTABLEKS                       R30 R29 K31 ["LayoutOrder"]
      492 CALL                             R27 2 1
      493 SETTABLEKS                       R27 R26 K27 ["DetailDivider"]
      495 GETUPVAL                         R27 13
      496 GETUPVAL                         R28 27
      497 DUPTABLE                         R29 K107 [{"skill", "onDeleteSkill", "onClose", "LayoutOrder"}]
      498 SETTABLEKS                       R11 R29 K1 ["skill"]
      500 SETTABLEKS                       R19 R29 K106 ["onDeleteSkill"]
      502 JUMPIFNOT                        R0 ; [+3]
      503 GETTABLEKS                       R30 R0 K14 ["onClose"]
      505 JUMP                             ; [+1]
      506 LOADNIL                          R30
      507 SETTABLEKS                       R30 R29 K14 ["onClose"]
      509 MOVE                             R30 R21
      510 CALL                             R30 0 1
      511 SETTABLEKS                       R30 R29 K31 ["LayoutOrder"]
      513 CALL                             R27 2 1
      514 SETTABLEKS                       R27 R26 K28 ["DetailPane"]
      516 JUMPIFNOT                        R5 ; [+18]
      517 GETUPVAL                         R27 13
      518 GETUPVAL                         R28 28
      519 DUPTABLE                         R29 K110 [{"existingUserSkills", "onCreate", "onClose"}]
      520 GETUPVAL                         R30 6
      521 GETTABLEKS                       R30 R30 K111 ["getAllBySource"]
      523 GETUPVAL                         R31 3
      524 GETTABLEKS                       R31 R31 K8 ["User"]
      526 CALL                             R30 1 1
      527 SETTABLEKS                       R30 R29 K108 ["existingUserSkills"]
      529 SETTABLEKS                       R18 R29 K109 ["onCreate"]
      531 SETTABLEKS                       R17 R29 K14 ["onClose"]
      533 CALL                             R27 2 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R27
      536 SETTABLEKS                       R27 R26 K29 ["CreateModal"]
      538 CALL                             R23 3 -1
      539 RETURN                           R23 -1

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
      167 DUPCLOSURE                       R32 K44 [PROTO_17]
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
