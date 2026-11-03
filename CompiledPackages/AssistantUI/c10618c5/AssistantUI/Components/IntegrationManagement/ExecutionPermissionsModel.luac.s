PROTO_0:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 LOADN                            R4 1
        7 LENGTH                           R2 R0
        8 LOADN                            R3 1
        9 FORNPREP                         R2
       10 GETTABLE                         R5 R0 R4
       11 GETTABLE                         R6 R1 R4
       12 JUMPIFEQ                         R5 R6 ; [+3]
       14 LOADB                            R5 0
       15 RETURN                           R5 1
       16 FORNLOOP                         R2
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIFEQ                         R7 R6 ; [+3]
        7 LOADB                            R7 0
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLE                         R7 R0 R5
       16 JUMPIFEQ                         R7 R6 ; [+3]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-6]
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingValuesVersion"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_pendingValuesVersion"]
        5 GETTABLEKS                       R1 R0 K0 ["_pendingValuesVersion"]
        7 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_bridge"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_permissions"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K4 ["_categories"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K5 ["_presets"]
       22 LOADK                            R2 K6 ["custom"]
       23 SETTABLEKS                       R2 R1 K7 ["_committedPreset"]
       25 LOADK                            R2 K6 ["custom"]
       26 SETTABLEKS                       R2 R1 K8 ["_pendingPreset"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K9 ["_committedValues"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K10 ["_pendingValues"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K11 ["_committedDomains"]
       40 NEWTABLE                         R2 0 0
       42 SETTABLEKS                       R2 R1 K12 ["_pendingDomains"]
       44 LOADB                            R2 0
       45 SETTABLEKS                       R2 R1 K13 ["_saveFailed"]
       47 LOADB                            R2 0
       48 SETTABLEKS                       R2 R1 K14 ["_saving"]
       50 LOADN                            R2 0
       51 SETTABLEKS                       R2 R1 K15 ["_pendingValuesVersion"]
       53 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_permissions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["key"]
        9 GETTABLEKS                       R9 R0 K2 ["_bridge"]
       11 GETTABLEKS                       R11 R6 K1 ["key"]
       13 NAMECALL                         R9 R9 K3 ["GetPermissionAsync"]
       15 CALL                             R9 2 1
       16 JUMPIFEQKS                       R9 K4 ["accept"] ; [+2]
       18 LOADB                            R8 0 +1
       19 LOADB                            R8 1
       20 SETTABLE                         R8 R1 R7
       21 FORGLOOP                         R2 2 ; [-15]
       23 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["_readPermissionStates"]
        2 CALL                             R1 1 1
        3 SETTABLEKS                       R1 R0 K1 ["_committedValues"]
        5 GETTABLEKS                       R1 R0 K2 ["_bridge"]
        7 NAMECALL                         R1 R1 K3 ["GetAllowedHttpDomainsAsync"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 0 0
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 FASTCALL1                        TYPEOF R7 ; [+3]
       17 MOVE                             R9 R7
       18 GETIMPORT                        R8 K5 [typeof]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+8]
       23 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K9 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-15]
       32 SETTABLEKS                       R2 R0 K10 ["_committedDomains"]
       34 GETTABLEKS                       R3 R0 K2 ["_bridge"]
       36 NAMECALL                         R3 R3 K11 ["GetSelectedPresetAsync"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R0 K12 ["_committedPreset"]
       41 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["_readCommittedFromBridge"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETTABLEKS                       R2 R0 K4 ["_committedValues"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K5 ["_pendingValues"]
       10 GETTABLEKS                       R1 R0 K6 ["_pendingValuesVersion"]
       12 ADDK                             R1 R1 K7 [1]
       13 SETTABLEKS                       R1 R0 K6 ["_pendingValuesVersion"]
       15 GETTABLEKS                       R1 R0 K6 ["_pendingValuesVersion"]
       17 GETIMPORT                        R1 K3 [table.clone]
       19 GETTABLEKS                       R2 R0 K8 ["_committedDomains"]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K9 ["_pendingDomains"]
       24 GETTABLEKS                       R1 R0 K10 ["_committedPreset"]
       26 SETTABLEKS                       R1 R0 K11 ["_pendingPreset"]
       28 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_bridge"]
        2 NAMECALL                         R1 R1 K1 ["GetAvailablePermissionsAsync"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 FASTCALL1                        TYPEOF R7 ; [+3]
       12 MOVE                             R9 R7
       13 GETIMPORT                        R8 K3 [typeof]
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+50]
       18 GETTABLEKS                       R8 R7 K5 ["key"]
       20 JUMPIFNOT                        R8 ; [+46]
       21 DUPTABLE                         R10 K9 [{"key", "name", "description", "category"}]
       22 GETTABLEKS                       R11 R7 K5 ["key"]
       24 SETTABLEKS                       R11 R10 K5 ["key"]
       26 GETTABLEKS                       R11 R7 K6 ["name"]
       28 JUMPIF                           R11 ; [+2]
       29 GETTABLEKS                       R11 R7 K5 ["key"]
       31 SETTABLEKS                       R11 R10 K6 ["name"]
       33 GETTABLEKS                       R13 R7 K7 ["description"]
       35 FASTCALL1                        TYPEOF R13 ; [+2]
       36 GETIMPORT                        R12 K3 [typeof]
       38 CALL                             R12 1 1
       39 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+4]
       41 GETTABLEKS                       R11 R7 K7 ["description"]
       43 JUMP                             ; [+1]
       44 LOADK                            R11 K11 [""]
       45 SETTABLEKS                       R11 R10 K7 ["description"]
       47 GETTABLEKS                       R13 R7 K8 ["category"]
       49 FASTCALL1                        TYPEOF R13 ; [+2]
       50 GETIMPORT                        R12 K3 [typeof]
       52 CALL                             R12 1 1
       53 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+4]
       55 GETTABLEKS                       R11 R7 K8 ["category"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 SETTABLEKS                       R11 R10 K8 ["category"]
       61 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       63 MOVE                             R9 R2
       64 GETIMPORT                        R8 K13 [table.insert]
       66 CALL                             R8 2 0
       67 FORGLOOP                         R3 2 ; [-57]
       69 SETTABLEKS                       R2 R0 K14 ["_permissions"]
       71 GETTABLEKS                       R3 R0 K0 ["_bridge"]
       73 NAMECALL                         R3 R3 K15 ["GetPermissionCategoriesAsync"]
       75 CALL                             R3 1 1
       76 NEWTABLE                         R4 0 0
       78 MOVE                             R5 R3
       79 LOADNIL                          R6
       80 LOADNIL                          R7
       81 FORGPREP                         R5
       82 FASTCALL1                        TYPEOF R9 ; [+3]
       83 MOVE                             R11 R9
       84 GETIMPORT                        R10 K3 [typeof]
       86 CALL                             R10 1 1
       87 JUMPIFNOTEQKS                    R10 K4 ["table"] ; [+59]
       89 GETTABLEKS                       R10 R9 K5 ["key"]
       91 JUMPIFNOT                        R10 ; [+55]
       92 GETTABLEKS                       R12 R9 K16 ["icon"]
       94 FASTCALL1                        TYPEOF R12 ; [+2]
       95 GETIMPORT                        R11 K3 [typeof]
       97 CALL                             R11 1 1
       98 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+4]
      100 GETTABLEKS                       R10 R9 K16 ["icon"]
      102 JUMP                             ; [+1]
      103 LOADK                            R10 K11 [""]
      104 DUPTABLE                         R13 K17 [{"key", "name", "description", "icon"}]
      105 GETTABLEKS                       R14 R9 K5 ["key"]
      107 SETTABLEKS                       R14 R13 K5 ["key"]
      109 GETTABLEKS                       R14 R9 K6 ["name"]
      111 JUMPIF                           R14 ; [+2]
      112 GETTABLEKS                       R14 R9 K5 ["key"]
      114 SETTABLEKS                       R14 R13 K6 ["name"]
      116 GETTABLEKS                       R16 R9 K7 ["description"]
      118 FASTCALL1                        TYPEOF R16 ; [+2]
      119 GETIMPORT                        R15 K3 [typeof]
      121 CALL                             R15 1 1
      122 JUMPIFNOTEQKS                    R15 K10 ["string"] ; [+4]
      124 GETTABLEKS                       R14 R9 K7 ["description"]
      126 JUMP                             ; [+1]
      127 LOADK                            R14 K11 [""]
      128 SETTABLEKS                       R14 R13 K7 ["description"]
      130 JUMPIFEQKS                       R10 K11 [""] ; [+3]
      132 MOVE                             R14 R10
      133 JUMP                             ; [+5]
      134 GETUPVAL                         R16 0
      135 GETTABLEKS                       R17 R9 K5 ["key"]
      137 GETTABLE                         R15 R16 R17
      138 ORK                              R14 R15 K11 [""]
      139 SETTABLEKS                       R14 R13 K16 ["icon"]
      141 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
      143 MOVE                             R12 R4
      144 GETIMPORT                        R11 K13 [table.insert]
      146 CALL                             R11 2 0
      147 FORGLOOP                         R5 2 ; [-66]
      149 SETTABLEKS                       R4 R0 K18 ["_categories"]
      151 GETTABLEKS                       R5 R0 K0 ["_bridge"]
      153 NAMECALL                         R5 R5 K19 ["GetPresetsAsync"]
      155 CALL                             R5 1 1
      156 NEWTABLE                         R6 0 0
      158 MOVE                             R7 R5
      159 LOADNIL                          R8
      160 LOADNIL                          R9
      161 FORGPREP                         R7
      162 FASTCALL1                        TYPEOF R11 ; [+3]
      163 MOVE                             R13 R11
      164 GETIMPORT                        R12 K3 [typeof]
      166 CALL                             R12 1 1
      167 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+44]
      169 GETTABLEKS                       R12 R11 K20 ["id"]
      171 JUMPIFNOT                        R12 ; [+40]
      172 DUPTABLE                         R14 K22 [{"id", "name", "description", "isSelectable"}]
      173 GETTABLEKS                       R15 R11 K20 ["id"]
      175 SETTABLEKS                       R15 R14 K20 ["id"]
      177 GETTABLEKS                       R15 R11 K6 ["name"]
      179 JUMPIF                           R15 ; [+2]
      180 GETTABLEKS                       R15 R11 K20 ["id"]
      182 SETTABLEKS                       R15 R14 K6 ["name"]
      184 GETTABLEKS                       R17 R11 K7 ["description"]
      186 FASTCALL1                        TYPEOF R17 ; [+2]
      187 GETIMPORT                        R16 K3 [typeof]
      189 CALL                             R16 1 1
      190 JUMPIFNOTEQKS                    R16 K10 ["string"] ; [+4]
      192 GETTABLEKS                       R15 R11 K7 ["description"]
      194 JUMP                             ; [+1]
      195 LOADK                            R15 K11 [""]
      196 SETTABLEKS                       R15 R14 K7 ["description"]
      198 GETTABLEKS                       R16 R11 K20 ["id"]
      200 JUMPIFNOTEQKS                    R16 K23 ["custom"] ; [+2]
      202 LOADB                            R15 0 +1
      203 LOADB                            R15 1
      204 SETTABLEKS                       R15 R14 K21 ["isSelectable"]
      206 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      208 MOVE                             R13 R6
      209 GETIMPORT                        R12 K13 [table.insert]
      211 CALL                             R12 2 0
      212 FORGLOOP                         R7 2 ; [-51]
      214 SETTABLEKS                       R6 R0 K24 ["_presets"]
      216 NAMECALL                         R7 R0 K25 ["_syncFromBridge"]
      218 CALL                             R7 1 0
      219 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_permissions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K5 [{"key", "name", "description", "enabled"}]
        8 GETTABLEKS                       R10 R6 K1 ["key"]
       10 SETTABLEKS                       R10 R9 K1 ["key"]
       12 GETTABLEKS                       R10 R6 K2 ["name"]
       14 SETTABLEKS                       R10 R9 K2 ["name"]
       16 GETTABLEKS                       R10 R6 K3 ["description"]
       18 SETTABLEKS                       R10 R9 K3 ["description"]
       20 GETTABLEKS                       R12 R0 K7 ["_pendingValues"]
       22 GETTABLEKS                       R13 R6 K1 ["key"]
       24 GETTABLE                         R11 R12 R13
       25 ORK                              R10 R11 K6 [False]
       26 SETTABLEKS                       R10 R9 K4 ["enabled"]
       28 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       30 MOVE                             R8 R1
       31 GETIMPORT                        R7 K10 [table.insert]
       33 CALL                             R7 2 0
       34 FORGLOOP                         R2 2 ; [-28]
       36 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R4 K2 [string.lower]
        2 GETTABLEKS                       R5 R0 K3 ["name"]
        4 CALL                             R4 1 1
        5 MOVE                             R2 R4
        6 GETIMPORT                        R3 K2 [string.lower]
        8 GETTABLEKS                       R4 R1 K3 ["name"]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQ                      R2 R3 ; [+10]
       13 GETTABLEKS                       R5 R0 K4 ["key"]
       15 GETTABLEKS                       R6 R1 K4 ["key"]
       17 JUMPIFLT                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1
       22 JUMPIFLT                         R2 R3 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 RETURN                           R4 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["_permissions"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R9 R7 K2 ["category"]
       11 ORK                              R8 R9 K1 [""]
       12 GETTABLE                         R9 R1 R8
       13 JUMPIF                           R9 ; [+10]
       14 NEWTABLE                         R9 0 0
       16 SETTABLE                         R9 R1 R8
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R11 R2
       20 MOVE                             R12 R8
       21 GETIMPORT                        R10 K5 [table.insert]
       23 CALL                             R10 2 0
       24 DUPTABLE                         R12 K10 [{"key", "name", "description", "enabled"}]
       25 GETTABLEKS                       R13 R7 K6 ["key"]
       27 SETTABLEKS                       R13 R12 K6 ["key"]
       29 GETTABLEKS                       R13 R7 K7 ["name"]
       31 SETTABLEKS                       R13 R12 K7 ["name"]
       33 GETTABLEKS                       R13 R7 K8 ["description"]
       35 SETTABLEKS                       R13 R12 K8 ["description"]
       37 GETTABLEKS                       R15 R0 K12 ["_pendingValues"]
       39 GETTABLEKS                       R16 R7 K6 ["key"]
       41 GETTABLE                         R14 R15 R16
       42 ORK                              R13 R14 K11 [False]
       43 SETTABLEKS                       R13 R12 K9 ["enabled"]
       45 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       47 MOVE                             R11 R9
       48 GETIMPORT                        R10 K5 [table.insert]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R3 2 ; [-43]
       53 DUPCLOSURE                       R3 K13 [PROTO_9]
       54 MOVE                             R4 R1
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 GETIMPORT                        R9 K15 [table.sort]
       60 MOVE                             R10 R8
       61 MOVE                             R11 R3
       62 CALL                             R9 2 0
       63 FORGLOOP                         R4 2 ; [-6]
       65 NEWTABLE                         R4 0 0
       67 NEWTABLE                         R5 0 0
       69 GETTABLEKS                       R6 R0 K16 ["_categories"]
       71 LOADNIL                          R7
       72 LOADNIL                          R8
       73 FORGPREP                         R6
       74 GETTABLEKS                       R12 R10 K6 ["key"]
       76 GETTABLE                         R11 R1 R12
       77 JUMPIFNOT                        R11 ; [+33]
       78 LENGTH                           R12 R11
       79 LOADN                            R13 0
       80 JUMPIFNOTLT                      R13 R12 ; [+30]
       82 DUPTABLE                         R14 K19 [{"key", "name", "description", "icon", "permissions"}]
       83 GETTABLEKS                       R15 R10 K6 ["key"]
       85 SETTABLEKS                       R15 R14 K6 ["key"]
       87 GETTABLEKS                       R15 R10 K7 ["name"]
       89 SETTABLEKS                       R15 R14 K7 ["name"]
       91 GETTABLEKS                       R15 R10 K8 ["description"]
       93 SETTABLEKS                       R15 R14 K8 ["description"]
       95 GETTABLEKS                       R15 R10 K17 ["icon"]
       97 SETTABLEKS                       R15 R14 K17 ["icon"]
       99 SETTABLEKS                       R11 R14 K18 ["permissions"]
      101 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
      103 MOVE                             R13 R4
      104 GETIMPORT                        R12 K5 [table.insert]
      106 CALL                             R12 2 0
      107 GETTABLEKS                       R12 R10 K6 ["key"]
      109 LOADB                            R13 1
      110 SETTABLE                         R13 R5 R12
      111 FORGLOOP                         R6 2 ; [-38]
      113 MOVE                             R6 R2
      114 LOADNIL                          R7
      115 LOADNIL                          R8
      116 FORGPREP                         R6
      117 GETTABLE                         R11 R1 R10
      118 GETTABLE                         R12 R5 R10
      119 JUMPIF                           R12 ; [+28]
      120 JUMPIFNOT                        R11 ; [+27]
      121 LENGTH                           R12 R11
      122 LOADN                            R13 0
      123 JUMPIFNOTLT                      R13 R12 ; [+24]
      125 JUMPIFNOTEQKS                    R10 K1 [""] ; [+8]
      127 GETUPVAL                         R12 0
      128 LOADK                            R14 K20 ["Permissions"]
      129 LOADK                            R15 K21 ["UncategorizedCategory"]
      130 NAMECALL                         R12 R12 K22 ["getText"]
      132 CALL                             R12 3 1
      133 JUMP                             ; [+1]
      134 MOVE                             R12 R10
      135 DUPTABLE                         R15 K23 [{["key"], ["name"], ["description"] = "", ["icon"] = "", ["permissions"]}]
      136 SETTABLEKS                       R10 R15 K6 ["key"]
      138 SETTABLEKS                       R12 R15 K7 ["name"]
      140 SETTABLEKS                       R11 R15 K18 ["permissions"]
      142 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      144 MOVE                             R14 R4
      145 GETIMPORT                        R13 K5 [table.insert]
      147 CALL                             R13 2 0
      148 FORGLOOP                         R6 2 ; [-32]
      150 RETURN                           R4 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_presets"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingPreset"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_pendingValuesVersion"]
        2 ADDK                             R3 R3 K1 [1]
        3 SETTABLEKS                       R3 R0 K0 ["_pendingValuesVersion"]
        5 GETTABLEKS                       R2 R0 K0 ["_pendingValuesVersion"]
        7 GETTABLEKS                       R3 R0 K2 ["_bridge"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K3 ["GetPresetPermissionsAsync"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R0 K0 ["_pendingValuesVersion"]
       15 JUMPIFEQ                         R4 R2 ; [+2]
       17 RETURN                           R0 0
       18 NEWTABLE                         R4 0 0
       20 MOVE                             R5 R3
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 FASTCALL1                        TYPEOF R9 ; [+3]
       25 MOVE                             R11 R9
       26 GETIMPORT                        R10 K5 [typeof]
       28 CALL                             R10 1 1
       29 JUMPIFNOTEQKS                    R10 K6 ["string"] ; [+3]
       31 LOADB                            R10 1
       32 SETTABLE                         R10 R4 R9
       33 FORGLOOP                         R5 2 ; [-10]
       35 NEWTABLE                         R5 0 0
       37 GETTABLEKS                       R6 R0 K7 ["_permissions"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETTABLEKS                       R11 R10 K8 ["key"]
       44 GETTABLEKS                       R14 R10 K8 ["key"]
       46 GETTABLE                         R13 R4 R14
       47 JUMPIFEQKB                       R13 TRUE ; [+2]
       49 LOADB                            R12 0 +1
       50 LOADB                            R12 1
       51 SETTABLE                         R12 R5 R11
       52 FORGLOOP                         R6 2 ; [-11]
       54 SETTABLEKS                       R5 R0 K9 ["_pendingValues"]
       56 SETTABLEKS                       R1 R0 K10 ["_pendingPreset"]
       58 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["_pendingValues"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQ                      R3 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K0 ["_pendingValues"]
        8 SETTABLE                         R2 R3 R1
        9 GETTABLEKS                       R3 R0 K1 ["_pendingValuesVersion"]
       11 ADDK                             R3 R3 K2 [1]
       12 SETTABLEKS                       R3 R0 K1 ["_pendingValuesVersion"]
       14 GETTABLEKS                       R3 R0 K1 ["_pendingValuesVersion"]
       16 LOADK                            R3 K3 ["custom"]
       17 SETTABLEKS                       R3 R0 K4 ["_pendingPreset"]
       19 RETURN                           R0 0

PROTO_15:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_permissions"]
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R10 R8 K2 ["category"]
        8 ORK                              R9 R10 K1 [""]
        9 JUMPIFNOTEQ                      R9 R1 ; [+14]
       11 GETTABLEKS                       R10 R0 K3 ["_pendingValues"]
       13 GETTABLEKS                       R11 R8 K4 ["key"]
       15 GETTABLE                         R9 R10 R11
       16 JUMPIFEQ                         R9 R2 ; [+7]
       18 GETTABLEKS                       R9 R0 K3 ["_pendingValues"]
       20 GETTABLEKS                       R10 R8 K4 ["key"]
       22 SETTABLE                         R2 R9 R10
       23 LOADB                            R3 1
       24 FORGLOOP                         R4 2 ; [-19]
       26 JUMPIFNOT                        R3 ; [+10]
       27 GETTABLEKS                       R4 R0 K5 ["_pendingValuesVersion"]
       29 ADDK                             R4 R4 K6 [1]
       30 SETTABLEKS                       R4 R0 K5 ["_pendingValuesVersion"]
       32 GETTABLEKS                       R4 R0 K5 ["_pendingValuesVersion"]
       34 LOADK                            R4 K7 ["custom"]
       35 SETTABLEKS                       R4 R0 K8 ["_pendingPreset"]
       37 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_pendingDomains"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 ["^%s*(.-)%s*$"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 LENGTH                           R3 R2
        7 JUMPIFNOTEQKN                    R3 K4 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K5 ["_pendingDomains"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 JUMPIFNOTEQ                      R7 R2 ; [+2]
       17 RETURN                           R0 0
       18 FORGLOOP                         R3 2 ; [-4]
       20 GETTABLEKS                       R4 R0 K5 ["_pendingDomains"]
       22 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       24 MOVE                             R5 R2
       25 GETIMPORT                        R3 K8 [table.insert]
       27 CALL                             R3 2 0
       28 LOADK                            R3 K9 ["custom"]
       29 SETTABLEKS                       R3 R0 K10 ["_pendingPreset"]
       31 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["_pendingDomains"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+11]
        7 GETIMPORT                        R7 K3 [table.remove]
        9 GETTABLEKS                       R8 R0 K0 ["_pendingDomains"]
       11 MOVE                             R9 R5
       12 CALL                             R7 2 0
       13 LOADK                            R7 K4 ["custom"]
       14 SETTABLEKS                       R7 R0 K5 ["_pendingPreset"]
       16 RETURN                           R0 0
       17 FORGLOOP                         R2 2 ; [-13]
       19 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_bridge"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["SavePermissionsAsync"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_saving"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["_saveFailed"]
        7 NAMECALL                         R1 R0 K2 ["hasUnsavedChanges"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K5 [table.clone]
       14 GETTABLEKS                       R2 R0 K6 ["_pendingValues"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K5 [table.clone]
       19 GETTABLEKS                       R3 R0 K7 ["_pendingDomains"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R0 K8 ["_pendingPreset"]
       24 NEWTABLE                         R4 0 0
       26 GETTABLEKS                       R5 R0 K9 ["_permissions"]
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R11 R9 K10 ["key"]
       33 GETTABLE                         R10 R1 R11
       34 JUMPIFNOT                        R10 ; [+8]
       35 GETTABLEKS                       R12 R9 K10 ["key"]
       37 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       39 MOVE                             R11 R4
       40 GETIMPORT                        R10 K12 [table.insert]
       42 CALL                             R10 2 0
       43 FORGLOOP                         R5 2 ; [-13]
       45 LOADB                            R5 1
       46 SETTABLEKS                       R5 R0 K0 ["_saving"]
       48 GETIMPORT                        R5 K14 [pcall]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CALL                             R5 1 2
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R0 K0 ["_saving"]
       58 JUMPIFNOT                        R5 ; [+85]
       59 JUMPIFNOTEQKB                    R6 TRUE ; [+84]
       61 NAMECALL                         R7 R0 K15 ["_readCommittedFromBridge"]
       63 CALL                             R7 1 0
       64 GETTABLEKS                       R8 R0 K6 ["_pendingValues"]
       66 MOVE                             R9 R8
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 FORGPREP                         R9
       70 GETTABLE                         R14 R1 R12
       71 JUMPIFEQ                         R14 R13 ; [+3]
       73 LOADB                            R7 0
       74 JUMP                             ; [+14]
       75 FORGLOOP                         R9 2 ; [-6]
       77 MOVE                             R9 R1
       78 LOADNIL                          R10
       79 LOADNIL                          R11
       80 FORGPREP                         R9
       81 GETTABLE                         R14 R8 R12
       82 JUMPIFEQ                         R14 R13 ; [+3]
       84 LOADB                            R7 0
       85 JUMP                             ; [+3]
       86 FORGLOOP                         R9 2 ; [-6]
       88 LOADB                            R7 1
       89 JUMPIFNOT                        R7 ; [+27]
       90 GETTABLEKS                       R8 R0 K7 ["_pendingDomains"]
       92 LENGTH                           R9 R8
       93 LENGTH                           R10 R2
       94 JUMPIFEQ                         R9 R10 ; [+3]
       96 LOADB                            R7 0
       97 JUMP                             ; [+12]
       98 LOADN                            R11 1
       99 LENGTH                           R9 R8
      100 LOADN                            R10 1
      101 FORNPREP                         R9
      102 GETTABLE                         R12 R8 R11
      103 GETTABLE                         R13 R2 R11
      104 JUMPIFEQ                         R12 R13 ; [+3]
      106 LOADB                            R7 0
      107 JUMP                             ; [+2]
      108 FORNLOOP                         R9
      109 LOADB                            R7 1
      110 JUMPIFNOT                        R7 ; [+6]
      111 GETTABLEKS                       R8 R0 K8 ["_pendingPreset"]
      113 JUMPIFEQ                         R8 R3 ; [+2]
      115 LOADB                            R7 0 +1
      116 LOADB                            R7 1
      117 JUMPIFNOT                        R7 ; [+29]
      118 GETIMPORT                        R8 K5 [table.clone]
      120 GETTABLEKS                       R9 R0 K16 ["_committedValues"]
      122 CALL                             R8 1 1
      123 SETTABLEKS                       R8 R0 K6 ["_pendingValues"]
      125 GETTABLEKS                       R8 R0 K17 ["_pendingValuesVersion"]
      127 ADDK                             R8 R8 K18 [1]
      128 SETTABLEKS                       R8 R0 K17 ["_pendingValuesVersion"]
      130 GETTABLEKS                       R8 R0 K17 ["_pendingValuesVersion"]
      132 GETIMPORT                        R8 K5 [table.clone]
      134 GETTABLEKS                       R9 R0 K19 ["_committedDomains"]
      136 CALL                             R8 1 1
      137 SETTABLEKS                       R8 R0 K7 ["_pendingDomains"]
      139 GETTABLEKS                       R8 R0 K20 ["_committedPreset"]
      141 SETTABLEKS                       R8 R0 K8 ["_pendingPreset"]
      143 RETURN                           R0 0
      144 LOADB                            R7 1
      145 SETTABLEKS                       R7 R0 K1 ["_saveFailed"]
      147 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_committedValues"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_pendingValues"]
        7 GETTABLEKS                       R1 R0 K5 ["_pendingValuesVersion"]
        9 ADDK                             R1 R1 K6 [1]
       10 SETTABLEKS                       R1 R0 K5 ["_pendingValuesVersion"]
       12 GETTABLEKS                       R1 R0 K5 ["_pendingValuesVersion"]
       14 GETIMPORT                        R1 K2 [table.clone]
       16 GETTABLEKS                       R2 R0 K7 ["_committedDomains"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K8 ["_pendingDomains"]
       21 GETTABLEKS                       R1 R0 K9 ["_committedPreset"]
       23 SETTABLEKS                       R1 R0 K10 ["_pendingPreset"]
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K11 ["_saveFailed"]
       28 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_saveFailed"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_saving"]
        2 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingPreset"]
        2 GETTABLEKS                       R2 R0 K1 ["_committedPreset"]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K2 ["_pendingValues"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R7 R0 K3 ["_committedValues"]
       15 GETTABLE                         R6 R7 R4
       16 JUMPIFEQ                         R5 R6 ; [+3]
       18 LOADB                            R6 1
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 ; [-8]
       22 GETTABLEKS                       R2 R0 K4 ["_pendingDomains"]
       24 GETTABLEKS                       R3 R0 K5 ["_committedDomains"]
       26 LENGTH                           R4 R2
       27 LENGTH                           R5 R3
       28 JUMPIFEQ                         R4 R5 ; [+3]
       30 LOADB                            R1 0
       31 JUMP                             ; [+12]
       32 LOADN                            R6 1
       33 LENGTH                           R4 R2
       34 LOADN                            R5 1
       35 FORNPREP                         R4
       36 GETTABLE                         R7 R2 R6
       37 GETTABLE                         R8 R3 R6
       38 JUMPIFEQ                         R7 R8 ; [+3]
       40 LOADB                            R1 0
       41 JUMP                             ; [+2]
       42 FORNLOOP                         R4
       43 LOADB                            R1 1
       44 JUMPIF                           R1 ; [+2]
       45 LOADB                            R1 1
       46 RETURN                           R1 1
       47 LOADB                            R1 0
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Resources"]
       11 GETTABLEKS                       R2 R2 K7 ["Localization"]
       13 GETTABLEKS                       R2 R2 K8 ["Translator"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Enums"]
       25 GETTABLEKS                       R3 R3 K12 ["IconName"]
       27 NEWTABLE                         R4 1 0
       29 NEWTABLE                         R5 16 0
       31 GETTABLEKS                       R6 R3 K13 ["Eye"]
       33 SETTABLEKS                       R6 R5 K14 ["look-at-your-game"]
       35 GETTABLEKS                       R6 R3 K15 ["Pencil"]
       37 SETTABLEKS                       R6 R5 K16 ["edit-your-game"]
       39 GETTABLEKS                       R6 R3 K17 ["TwoPeople"]
       41 SETTABLEKS                       R6 R5 K18 ["players-and-social"]
       43 GETTABLEKS                       R6 R3 K19 ["FloppyDisk"]
       45 SETTABLEKS                       R6 R5 K20 ["save-and-load-data"]
       47 GETTABLEKS                       R6 R3 K21 ["GlobeSimplified"]
       49 SETTABLEKS                       R6 R5 K22 ["connect-to-the-internet"]
       51 GETTABLEKS                       R6 R3 K23 ["Cloud"]
       53 SETTABLEKS                       R6 R5 K24 ["publish-and-manage-assets"]
       55 GETTABLEKS                       R6 R3 K25 ["Robux"]
       57 SETTABLEKS                       R6 R5 K26 ["money-and-monetization"]
       59 GETTABLEKS                       R6 R3 K27 ["PersonCircleSlash"]
       61 SETTABLEKS                       R6 R5 K28 ["player-consequences"]
       63 GETTABLEKS                       R6 R3 K29 ["ShieldLock"]
       65 SETTABLEKS                       R6 R5 K30 ["security-and-credentials"]
       67 NEWTABLE                         R6 32 0
       69 SETTABLEKS                       R6 R6 K31 ["__index"]
       71 DUPCLOSURE                       R7 K32 [PROTO_0]
       72 DUPCLOSURE                       R8 K33 [PROTO_1]
       73 DUPCLOSURE                       R9 K34 [PROTO_2]
       74 DUPCLOSURE                       R10 K35 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R10 R6 K36 ["new"]
       78 DUPCLOSURE                       R10 K37 [PROTO_4]
       79 SETTABLEKS                       R10 R6 K38 ["_readPermissionStates"]
       81 DUPCLOSURE                       R10 K39 [PROTO_5]
       82 SETTABLEKS                       R10 R6 K40 ["_readCommittedFromBridge"]
       84 DUPCLOSURE                       R10 K41 [PROTO_6]
       85 SETTABLEKS                       R10 R6 K42 ["_syncFromBridge"]
       87 DUPCLOSURE                       R10 K43 [PROTO_7]
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R10 R6 K44 ["loadAsync"]
       91 DUPCLOSURE                       R10 K45 [PROTO_8]
       92 SETTABLEKS                       R10 R6 K46 ["getCapabilities"]
       94 DUPCLOSURE                       R10 K47 [PROTO_10]
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R10 R6 K48 ["getCategories"]
       98 DUPCLOSURE                       R10 K49 [PROTO_11]
       99 SETTABLEKS                       R10 R6 K50 ["getPresets"]
      101 DUPCLOSURE                       R10 K51 [PROTO_12]
      102 SETTABLEKS                       R10 R6 K52 ["getSelectedPreset"]
      104 DUPCLOSURE                       R10 K53 [PROTO_13]
      105 SETTABLEKS                       R10 R6 K54 ["setPreset"]
      107 DUPCLOSURE                       R10 K55 [PROTO_14]
      108 SETTABLEKS                       R10 R6 K56 ["setPendingValue"]
      110 DUPCLOSURE                       R10 K57 [PROTO_15]
      111 SETTABLEKS                       R10 R6 K58 ["setCategoryValue"]
      113 DUPCLOSURE                       R10 K59 [PROTO_16]
      114 SETTABLEKS                       R10 R6 K60 ["getHttpDomains"]
      116 DUPCLOSURE                       R10 K61 [PROTO_17]
      117 SETTABLEKS                       R10 R6 K62 ["addHttpDomain"]
      119 DUPCLOSURE                       R10 K63 [PROTO_18]
      120 SETTABLEKS                       R10 R6 K64 ["removeHttpDomain"]
      122 DUPCLOSURE                       R10 K65 [PROTO_20]
      123 SETTABLEKS                       R10 R6 K66 ["save"]
      125 DUPCLOSURE                       R10 K67 [PROTO_21]
      126 SETTABLEKS                       R10 R6 K68 ["revert"]
      128 DUPCLOSURE                       R10 K69 [PROTO_22]
      129 SETTABLEKS                       R10 R6 K70 ["hasSaveFailed"]
      131 DUPCLOSURE                       R10 K71 [PROTO_23]
      132 SETTABLEKS                       R10 R6 K72 ["isSaving"]
      134 DUPCLOSURE                       R10 K73 [PROTO_24]
      135 SETTABLEKS                       R10 R6 K74 ["hasUnsavedChanges"]
      137 SETTABLEKS                       R6 R4 K75 ["AssistantExecutionPermissionsModel"]
      139 RETURN                           R4 1
