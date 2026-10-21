PROTO_0:
        0 DUPTABLE                         R0 K8 [{"LoadError", "Retry", "Loading", "Header", "Description", "SaveError", "Save", "Cancel"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K9 ["Permissions"]
        3 LOADK                            R4 K0 ["LoadError"]
        4 NAMECALL                         R1 R1 K10 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["LoadError"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K9 ["Permissions"]
       11 LOADK                            R4 K1 ["Retry"]
       12 NAMECALL                         R1 R1 K10 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Retry"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K9 ["Permissions"]
       19 LOADK                            R4 K2 ["Loading"]
       20 NAMECALL                         R1 R1 K10 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Loading"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["SettingsDialog"]
       27 LOADK                            R4 K12 ["PermissionsTab"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Header"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K9 ["Permissions"]
       35 LOADK                            R4 K4 ["Description"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Description"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K9 ["Permissions"]
       43 LOADK                            R4 K5 ["SaveError"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["SaveError"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K13 ["Settings"]
       51 LOADK                            R4 K6 ["Save"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Save"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K13 ["Settings"]
       59 LOADK                            R4 K7 ["Cancel"]
       60 NAMECALL                         R1 R1 K10 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Cancel"]
       65 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getCategories"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["getSelectedPreset"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K2 ["getHttpDomains"]
       16 CALL                             R1 1 -1
       17 CALL                             R0 -1 0
       18 GETUPVAL                         R0 4
       19 GETUPVAL                         R1 1
       20 NAMECALL                         R1 R1 K3 ["hasUnsavedChanges"]
       22 CALL                             R1 1 -1
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R0 5
       25 GETUPVAL                         R1 1
       26 NAMECALL                         R1 R1 K4 ["hasSaveFailed"]
       28 CALL                             R1 1 -1
       29 CALL                             R0 -1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["loadAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 JUMPIF                           R0 ; [+16]
       11 GETIMPORT                        R2 K4 [warn]
       13 LOADK                            R3 K5 ["[Assistant] Failed to load execution permissions: %*"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R5 K7 [tostring]
       18 CALL                             R5 1 1
       19 NAMECALL                         R3 R3 K8 ["format"]
       21 CALL                             R3 2 1
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 2
       24 LOADB                            R3 1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 3
       28 GETUPVAL                         R3 0
       29 NAMECALL                         R3 R3 K9 ["getPresets"]
       31 CALL                             R3 1 -1
       32 CALL                             R2 -1 0
       33 GETUPVAL                         R2 4
       34 CALL                             R2 0 0
       35 GETUPVAL                         R2 5
       36 LOADB                            R3 1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setPreset"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+13]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["[Assistant] Failed to preview access level '%*': %*"]
       10 GETUPVAL                         R5 1
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R7 R1
       13 GETIMPORT                        R6 K6 [tostring]
       15 CALL                             R6 1 1
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 3 1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K8 ["current"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 3
       26 LOADB                            R3 0
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 4
       29 CALL                             R2 0 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setPendingValue"]
        5 CALL                             R2 3 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setCategoryValue"]
        5 CALL                             R2 3 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addHttpDomain"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["removeHttpDomain"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["save"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+12]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R3 K4 ["[Assistant] Failed to save execution permissions: %*"]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 NAMECALL                         R3 R3 K7 ["format"]
       16 CALL                             R3 2 1
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K8 ["current"]
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 2
       24 LOADB                            R3 0
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 3
       27 CALL                             R2 0 0
       28 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["revert"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["model"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ExecutionPermissionsContent requires a model prop"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K0 ["model"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       13 DUPCLOSURE                       R3 K5 [PROTO_0]
       14 CAPTURE                          UPVAL U1
       15 NEWTABLE                         R4 0 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K6 ["locale"]
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K7 ["useState"]
       26 NEWTABLE                         R4 0 0
       28 CALL                             R3 1 2
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["useState"]
       32 NEWTABLE                         R6 0 0
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K7 ["useState"]
       38 LOADK                            R8 K8 [""]
       39 CALL                             R7 1 2
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K7 ["useState"]
       43 NEWTABLE                         R10 0 0
       45 CALL                             R9 1 2
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K7 ["useState"]
       49 LOADB                            R12 0
       50 CALL                             R11 1 2
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K7 ["useState"]
       54 LOADB                            R14 0
       55 CALL                             R13 1 2
       56 GETUPVAL                         R15 0
       57 GETTABLEKS                       R15 R15 K7 ["useState"]
       59 LOADB                            R16 0
       60 CALL                             R15 1 2
       61 GETUPVAL                         R17 0
       62 GETTABLEKS                       R17 R17 K7 ["useState"]
       64 LOADB                            R18 0
       65 CALL                             R17 1 2
       66 GETUPVAL                         R19 0
       67 GETTABLEKS                       R19 R19 K7 ["useState"]
       69 LOADB                            R20 0
       70 CALL                             R19 1 2
       71 GETUPVAL                         R21 0
       72 GETTABLEKS                       R21 R21 K9 ["useRef"]
       74 LOADB                            R22 1
       75 CALL                             R21 1 1
       76 GETUPVAL                         R22 0
       77 GETTABLEKS                       R22 R22 K10 ["useCallback"]
       79 NEWCLOSURE                       R23 P1
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R14
       86 NEWTABLE                         R24 0 1
       88 MOVE                             R25 R1
       89 SETLIST                          R24 R25 1 [1]
       91 CALL                             R22 2 1
       92 GETUPVAL                         R23 0
       93 GETTABLEKS                       R23 R23 K11 ["useEffect"]
       95 NEWCLOSURE                       R24 P2
       96 CAPTURE                          VAL R21
       97 NEWTABLE                         R25 0 0
       99 CALL                             R23 2 0
      100 GETUPVAL                         R23 0
      101 GETTABLEKS                       R23 R23 K10 ["useCallback"]
      103 NEWCLOSURE                       R24 P3
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R21
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R22
      109 CAPTURE                          VAL R16
      110 NEWTABLE                         R25 0 2
      112 MOVE                             R26 R1
      113 MOVE                             R27 R22
      114 SETLIST                          R25 R26 2 [1]
      116 CALL                             R23 2 1
      117 GETUPVAL                         R24 0
      118 GETTABLEKS                       R24 R24 K11 ["useEffect"]
      120 NEWCLOSURE                       R25 P4
      121 CAPTURE                          VAL R23
      122 NEWTABLE                         R26 0 1
      124 MOVE                             R27 R23
      125 SETLIST                          R26 R27 1 [1]
      127 CALL                             R24 2 0
      128 GETUPVAL                         R24 0
      129 GETTABLEKS                       R24 R24 K10 ["useCallback"]
      131 NEWCLOSURE                       R25 P5
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R21
      135 CAPTURE                          VAL R22
      136 NEWTABLE                         R26 0 2
      138 MOVE                             R27 R1
      139 MOVE                             R28 R22
      140 SETLIST                          R26 R27 2 [1]
      142 CALL                             R24 2 1
      143 GETUPVAL                         R25 0
      144 GETTABLEKS                       R25 R25 K10 ["useCallback"]
      146 NEWCLOSURE                       R26 P6
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R22
      149 NEWTABLE                         R27 0 2
      151 MOVE                             R28 R1
      152 MOVE                             R29 R22
      153 SETLIST                          R27 R28 2 [1]
      155 CALL                             R25 2 1
      156 GETUPVAL                         R26 0
      157 GETTABLEKS                       R26 R26 K10 ["useCallback"]
      159 NEWCLOSURE                       R27 P7
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R22
      162 NEWTABLE                         R28 0 2
      164 MOVE                             R29 R1
      165 MOVE                             R30 R22
      166 SETLIST                          R28 R29 2 [1]
      168 CALL                             R26 2 1
      169 GETUPVAL                         R27 0
      170 GETTABLEKS                       R27 R27 K10 ["useCallback"]
      172 NEWCLOSURE                       R28 P8
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R22
      175 NEWTABLE                         R29 0 2
      177 MOVE                             R30 R1
      178 MOVE                             R31 R22
      179 SETLIST                          R29 R30 2 [1]
      181 CALL                             R27 2 1
      182 GETUPVAL                         R28 0
      183 GETTABLEKS                       R28 R28 K10 ["useCallback"]
      185 NEWCLOSURE                       R29 P9
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R22
      188 NEWTABLE                         R30 0 2
      190 MOVE                             R31 R1
      191 MOVE                             R32 R22
      192 SETLIST                          R30 R31 2 [1]
      194 CALL                             R28 2 1
      195 GETUPVAL                         R29 0
      196 GETTABLEKS                       R29 R29 K10 ["useCallback"]
      198 NEWCLOSURE                       R30 P10
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R22
      203 NEWTABLE                         R31 0 2
      205 MOVE                             R32 R1
      206 MOVE                             R33 R22
      207 SETLIST                          R31 R32 2 [1]
      209 CALL                             R29 2 1
      210 GETUPVAL                         R30 0
      211 GETTABLEKS                       R30 R30 K10 ["useCallback"]
      213 NEWCLOSURE                       R31 P11
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R22
      216 NEWTABLE                         R32 0 2
      218 MOVE                             R33 R1
      219 MOVE                             R34 R22
      220 SETLIST                          R32 R33 2 [1]
      222 CALL                             R30 2 1
      223 JUMPIFNOT                        R17 ; [+52]
      224 GETUPVAL                         R31 2
      225 GETUPVAL                         R32 3
      226 DUPTABLE                         R33 K15 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"]}]
      227 GETUPVAL                         R34 4
      228 GETTABLEKS                       R34 R34 K16 ["ScopePermissions"]
      230 GETTABLEKS                       R34 R34 K17 ["LoadError"]
      232 SETTABLEKS                       R34 R33 K14 ["testId"]
      234 DUPTABLE                         R34 K20 [{"Message", "RetryButton"}]
      235 GETUPVAL                         R35 2
      236 GETUPVAL                         R36 5
      237 DUPTABLE                         R37 K25 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"] = 1}]
      238 GETTABLEKS                       R38 R2 K17 ["LoadError"]
      240 SETTABLEKS                       R38 R37 K22 ["Text"]
      242 CALL                             R35 2 1
      243 SETTABLEKS                       R35 R34 K18 ["Message"]
      245 GETUPVAL                         R35 2
      246 GETUPVAL                         R36 6
      247 DUPTABLE                         R37 K31 [{["text"], ["size"], ["variant"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      248 GETTABLEKS                       R38 R2 K32 ["Retry"]
      250 SETTABLEKS                       R38 R37 K26 ["text"]
      252 GETUPVAL                         R38 7
      253 GETTABLEKS                       R38 R38 K33 ["Small"]
      255 SETTABLEKS                       R38 R37 K27 ["size"]
      257 GETUPVAL                         R38 8
      258 GETTABLEKS                       R38 R38 K34 ["Standard"]
      260 SETTABLEKS                       R38 R37 K28 ["variant"]
      262 SETTABLEKS                       R23 R37 K29 ["onActivated"]
      264 GETUPVAL                         R38 4
      265 GETTABLEKS                       R38 R38 K16 ["ScopePermissions"]
      267 GETTABLEKS                       R38 R38 K19 ["RetryButton"]
      269 SETTABLEKS                       R38 R37 K14 ["testId"]
      271 CALL                             R35 2 1
      272 SETTABLEKS                       R35 R34 K19 ["RetryButton"]
      274 CALL                             R31 3 -1
      275 RETURN                           R31 -1
      276 JUMPIF                           R15 ; [+16]
      277 GETUPVAL                         R31 2
      278 GETUPVAL                         R32 3
      279 DUPTABLE                         R33 K35 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      280 DUPTABLE                         R34 K37 [{"Loading"}]
      281 GETUPVAL                         R35 2
      282 GETUPVAL                         R36 5
      283 DUPTABLE                         R37 K39 [{["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["Text"]}]
      284 GETTABLEKS                       R38 R2 K36 ["Loading"]
      286 SETTABLEKS                       R38 R37 K22 ["Text"]
      288 CALL                             R35 2 1
      289 SETTABLEKS                       R35 R34 K36 ["Loading"]
      291 CALL                             R31 3 -1
      292 RETURN                           R31 -1
      293 GETUPVAL                         R31 9
      294 CALL                             R31 0 1
      295 NEWTABLE                         R32 0 0
      297 GETUPVAL                         R33 9
      298 CALL                             R33 0 1
      299 MOVE                             R34 R3
      300 LOADNIL                          R35
      301 LOADNIL                          R36
      302 FORGPREP                         R34
      303 GETTABLEKS                       R40 R38 K40 ["key"]
      305 JUMPIFEQKS                       R40 K41 ["connect-to-the-internet"] ; [+2]
      307 LOADB                            R39 0 +1
      308 LOADB                            R39 1
      309 GETTABLEKS                       R40 R38 K40 ["key"]
      311 GETUPVAL                         R41 2
      312 GETUPVAL                         R42 10
      313 DUPTABLE                         R43 K46 [{"category", "onToggle", "onCategoryValue", "extraContent", "LayoutOrder"}]
      314 SETTABLEKS                       R38 R43 K42 ["category"]
      316 SETTABLEKS                       R25 R43 K43 ["onToggle"]
      318 SETTABLEKS                       R26 R43 K44 ["onCategoryValue"]
      320 JUMPIFNOT                        R39 ; [+11]
      321 GETUPVAL                         R44 2
      322 GETUPVAL                         R45 11
      323 DUPTABLE                         R46 K50 [{"domains", "onAdd", "onRemove"}]
      324 SETTABLEKS                       R9 R46 K47 ["domains"]
      326 SETTABLEKS                       R27 R46 K48 ["onAdd"]
      328 SETTABLEKS                       R28 R46 K49 ["onRemove"]
      330 CALL                             R44 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R44
      333 SETTABLEKS                       R44 R43 K45 ["extraContent"]
      335 MOVE                             R44 R33
      336 CALL                             R44 0 1
      337 SETTABLEKS                       R44 R43 K23 ["LayoutOrder"]
      339 CALL                             R41 2 1
      340 SETTABLE                         R41 R32 R40
      341 LOADK                            R40 K51 ["%*-divider"]
      342 GETTABLEKS                       R42 R38 K40 ["key"]
      344 NAMECALL                         R40 R40 K52 ["format"]
      346 CALL                             R40 2 1
      347 GETUPVAL                         R41 2
      348 GETUPVAL                         R42 12
      349 DUPTABLE                         R43 K53 [{"LayoutOrder"}]
      350 MOVE                             R44 R33
      351 CALL                             R44 0 1
      352 SETTABLEKS                       R44 R43 K23 ["LayoutOrder"]
      354 CALL                             R41 2 1
      355 SETTABLE                         R41 R32 R40
      356 FORGLOOP                         R34 2 ; [-54]
      358 GETUPVAL                         R34 2
      359 GETUPVAL                         R35 3
      360 DUPTABLE                         R36 K55 [{["tag"] = "col gap-medium size-full-0 auto-y", ["testId"]}]
      361 GETUPVAL                         R37 4
      362 GETTABLEKS                       R37 R37 K16 ["ScopePermissions"]
      364 GETTABLEKS                       R37 R37 K56 ["Container"]
      366 SETTABLEKS                       R37 R36 K14 ["testId"]
      368 DUPTABLE                         R37 K59 [{"Permissions", "ButtonRow"}]
      369 GETUPVAL                         R38 2
      370 GETUPVAL                         R39 3
      371 DUPTABLE                         R40 K60 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      372 MOVE                             R41 R31
      373 CALL                             R41 0 1
      374 SETTABLEKS                       R41 R40 K23 ["LayoutOrder"]
      376 DUPTABLE                         R41 K66 [{"Header", "AccessLevel", "Description", "IntroDivider", "CategoryList"}]
      377 GETUPVAL                         R42 2
      378 GETUPVAL                         R43 5
      379 DUPTABLE                         R44 K68 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
      380 GETTABLEKS                       R45 R2 K61 ["Header"]
      382 SETTABLEKS                       R45 R44 K22 ["Text"]
      384 CALL                             R42 2 1
      385 SETTABLEKS                       R42 R41 K61 ["Header"]
      387 LENGTH                           R43 R5
      388 LOADN                            R44 0
      389 JUMPIFNOTLT                      R44 R43 ; [+14]
      391 GETUPVAL                         R42 2
      392 GETUPVAL                         R43 13
      393 DUPTABLE                         R44 K73 [{["presets"], ["selectedPreset"], ["onSelect"], ["isDisabled"], ["LayoutOrder"] = 2}]
      394 SETTABLEKS                       R5 R44 K69 ["presets"]
      396 SETTABLEKS                       R7 R44 K70 ["selectedPreset"]
      398 SETTABLEKS                       R24 R44 K71 ["onSelect"]
      400 SETTABLEKS                       R19 R44 K72 ["isDisabled"]
      402 CALL                             R42 2 1
      403 JUMP                             ; [+1]
      404 LOADNIL                          R42
      405 SETTABLEKS                       R42 R41 K62 ["AccessLevel"]
      407 GETUPVAL                         R42 2
      408 GETUPVAL                         R43 5
      409 DUPTABLE                         R44 K76 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 3}]
      410 GETTABLEKS                       R45 R2 K63 ["Description"]
      412 SETTABLEKS                       R45 R44 K22 ["Text"]
      414 CALL                             R42 2 1
      415 SETTABLEKS                       R42 R41 K63 ["Description"]
      417 GETUPVAL                         R42 2
      418 GETUPVAL                         R43 12
      419 DUPTABLE                         R44 K78 [{["LayoutOrder"] = 4}]
      420 CALL                             R42 2 1
      421 SETTABLEKS                       R42 R41 K64 ["IntroDivider"]
      423 GETUPVAL                         R42 2
      424 GETUPVAL                         R43 3
      425 DUPTABLE                         R44 K81 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"] = 5}]
      426 MOVE                             R45 R32
      427 CALL                             R42 3 1
      428 SETTABLEKS                       R42 R41 K65 ["CategoryList"]
      430 CALL                             R38 3 1
      431 SETTABLEKS                       R38 R37 K57 ["Permissions"]
      433 GETUPVAL                         R38 2
      434 GETUPVAL                         R39 3
      435 DUPTABLE                         R40 K83 [{["tag"] = "row align-x-right align-y-center gap-small size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      436 MOVE                             R41 R31
      437 CALL                             R41 0 1
      438 SETTABLEKS                       R41 R40 K23 ["LayoutOrder"]
      440 DUPTABLE                         R41 K87 [{"SaveError", "SaveButton", "CancelButton"}]
      441 JUMPIFNOT                        R13 ; [+23]
      442 GETUPVAL                         R42 2
      443 GETUPVAL                         R43 3
      444 DUPTABLE                         R44 K90 [{["tag"] = "row align-y-center grow size-0-0 auto-y", ["testId"], ["LayoutOrder"] = 0}]
      445 GETUPVAL                         R45 4
      446 GETTABLEKS                       R45 R45 K16 ["ScopePermissions"]
      448 GETTABLEKS                       R45 R45 K84 ["SaveError"]
      450 SETTABLEKS                       R45 R44 K14 ["testId"]
      452 DUPTABLE                         R45 K92 [{"Label"}]
      453 GETUPVAL                         R46 2
      454 GETUPVAL                         R47 5
      455 DUPTABLE                         R48 K94 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-alert", ["Text"]}]
      456 GETTABLEKS                       R49 R2 K84 ["SaveError"]
      458 SETTABLEKS                       R49 R48 K22 ["Text"]
      460 CALL                             R46 2 1
      461 SETTABLEKS                       R46 R45 K91 ["Label"]
      463 CALL                             R42 3 1
      464 JUMPIF                           R42 ; [+1]
      465 LOADNIL                          R42
      466 SETTABLEKS                       R42 R41 K84 ["SaveError"]
      468 GETUPVAL                         R42 2
      469 GETUPVAL                         R43 6
      470 DUPTABLE                         R44 K95 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 1}]
      471 GETTABLEKS                       R45 R2 K96 ["Save"]
      473 SETTABLEKS                       R45 R44 K26 ["text"]
      475 GETUPVAL                         R45 7
      476 GETTABLEKS                       R45 R45 K33 ["Small"]
      478 SETTABLEKS                       R45 R44 K27 ["size"]
      480 GETUPVAL                         R45 8
      481 GETTABLEKS                       R45 R45 K97 ["Emphasis"]
      483 SETTABLEKS                       R45 R44 K28 ["variant"]
      485 NOT                              R46 R11
      486 OR                               R45 R46 R19
      487 SETTABLEKS                       R45 R44 K72 ["isDisabled"]
      489 SETTABLEKS                       R29 R44 K29 ["onActivated"]
      491 GETUPVAL                         R45 4
      492 GETTABLEKS                       R45 R45 K16 ["ScopePermissions"]
      494 GETTABLEKS                       R45 R45 K85 ["SaveButton"]
      496 SETTABLEKS                       R45 R44 K14 ["testId"]
      498 CALL                             R42 2 1
      499 SETTABLEKS                       R42 R41 K85 ["SaveButton"]
      501 GETUPVAL                         R42 2
      502 GETUPVAL                         R43 6
      503 DUPTABLE                         R44 K98 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      504 GETTABLEKS                       R45 R2 K99 ["Cancel"]
      506 SETTABLEKS                       R45 R44 K26 ["text"]
      508 GETUPVAL                         R45 7
      509 GETTABLEKS                       R45 R45 K33 ["Small"]
      511 SETTABLEKS                       R45 R44 K27 ["size"]
      513 GETUPVAL                         R45 8
      514 GETTABLEKS                       R45 R45 K34 ["Standard"]
      516 SETTABLEKS                       R45 R44 K28 ["variant"]
      518 NOT                              R46 R11
      519 OR                               R45 R46 R19
      520 SETTABLEKS                       R45 R44 K72 ["isDisabled"]
      522 SETTABLEKS                       R30 R44 K29 ["onActivated"]
      524 GETUPVAL                         R45 4
      525 GETTABLEKS                       R45 R45 K16 ["ScopePermissions"]
      527 GETTABLEKS                       R45 R45 K86 ["CancelButton"]
      529 SETTABLEKS                       R45 R44 K14 ["testId"]
      531 CALL                             R42 2 1
      532 SETTABLEKS                       R42 R41 K86 ["CancelButton"]
      534 CALL                             R38 3 1
      535 SETTABLEKS                       R38 R37 K58 ["ButtonRow"]
      537 CALL                             R34 3 -1
      538 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["AccessLevelSelector"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["IntegrationManagement"]
       22 GETTABLEKS                       R3 R3 K9 ["CategoryRow"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["IntegrationManagement"]
       31 GETTABLEKS                       R4 R4 K10 ["ExecutionPermissionsModel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["IntegrationManagement"]
       40 GETTABLEKS                       R5 R5 K11 ["HttpDomainsContent"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K14 ["Resources"]
       54 GETTABLEKS                       R7 R7 K15 ["Localization"]
       56 GETTABLEKS                       R7 R7 K16 ["Translator"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K17 ["Parent"]
       63 GETTABLEKS                       R8 R8 K18 ["Foundation"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Parent"]
       70 GETTABLEKS                       R9 R9 K19 ["React"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K17 ["Parent"]
       77 GETTABLEKS                       R10 R10 K20 ["ReactUtils"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R7 K21 ["Button"]
       82 GETTABLEKS                       R11 R7 K22 ["Divider"]
       84 GETTABLEKS                       R12 R7 K23 ["Text"]
       86 GETTABLEKS                       R13 R7 K24 ["View"]
       88 GETTABLEKS                       R14 R7 K25 ["Enums"]
       90 GETTABLEKS                       R14 R14 K26 ["ButtonSize"]
       92 GETTABLEKS                       R15 R7 K25 ["Enums"]
       94 GETTABLEKS                       R15 R15 K27 ["ButtonVariant"]
       96 GETTABLEKS                       R16 R9 K28 ["createNextOrder"]
       98 GETTABLEKS                       R17 R8 K29 ["createElement"]
      100 DUPCLOSURE                       R18 K30 [PROTO_19]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R1
      115 GETTABLEKS                       R19 R8 K31 ["memo"]
      117 MOVE                             R20 R18
      118 CALL                             R19 1 -1
      119 RETURN                           R19 -1
