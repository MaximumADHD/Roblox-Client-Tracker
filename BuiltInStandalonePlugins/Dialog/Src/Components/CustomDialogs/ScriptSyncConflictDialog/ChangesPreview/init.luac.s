PROTO_0:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["Title"]
        2 CONCAT                           R4 R5 R6
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R6 K1 ["File"]
        5 JUMP                             ; [+1]
        6 LOADK                            R6 K2 ["Instance"]
        7 LOADK                            R7 K3 ["Noun"]
        8 LOADN                            R9 1
        9 JUMPIFNOTLT                      R9 R3 ; [+3]
       11 LOADK                            R8 K4 ["Plural"]
       12 JUMP                             ; [+1]
       13 LOADK                            R8 K5 ["Singular"]
       14 CONCAT                           R5 R6 R8
       15 LOADK                            R8 K6 ["ScriptSyncConflictDialog"]
       16 MOVE                             R9 R4
       17 DUPTABLE                         R10 K9 [{"count", "noun"}]
       18 SETTABLEKS                       R3 R10 K7 ["count"]
       20 LOADK                            R13 K6 ["ScriptSyncConflictDialog"]
       21 MOVE                             R14 R5
       22 NAMECALL                         R11 R0 K10 ["getText"]
       24 CALL                             R11 3 1
       25 SETTABLEKS                       R11 R10 K8 ["noun"]
       27 NAMECALL                         R6 R0 K10 ["getText"]
       29 CALL                             R6 4 -1
       30 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K0 ["none"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Modify"] ; [+5]
        3 GETUPVAL                         R1 1
        4 LENGTH                           R0 R1
        5 JUMPIFEQKN                       R0 K1 [0] ; [+15]
        7 GETUPVAL                         R0 0
        8 JUMPIFNOTEQKS                    R0 K2 ["Add"] ; [+5]
       10 GETUPVAL                         R1 2
       11 LENGTH                           R0 R1
       12 JUMPIFEQKN                       R0 K1 [0] ; [+8]
       14 GETUPVAL                         R0 0
       15 JUMPIFNOTEQKS                    R0 K3 ["Delete"] ; [+22]
       17 GETUPVAL                         R1 3
       18 LENGTH                           R0 R1
       19 JUMPIFNOTEQKN                    R0 K1 [0] ; [+18]
       21 GETUPVAL                         R0 4
       22 GETUPVAL                         R3 1
       23 LENGTH                           R2 R3
       24 LOADN                            R3 0
       25 JUMPIFNOTLT                      R3 R2 ; [+3]
       27 LOADK                            R1 K0 ["Modify"]
       28 JUMP                             ; [+8]
       29 GETUPVAL                         R3 2
       30 LENGTH                           R2 R3
       31 LOADN                            R3 0
       32 JUMPIFNOTLT                      R3 R2 ; [+3]
       34 LOADK                            R1 K2 ["Add"]
       35 JUMP                             ; [+1]
       36 LOADK                            R1 K3 ["Delete"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["Modify"]
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R5 3
        5 LENGTH                           R4 R5
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["Add"]
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R5 3
        5 LENGTH                           R4 R5
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["Delete"]
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R5 3
        5 LENGTH                           R4 R5
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R0 K1 ["selectedSource"]
        8 JUMPIFEQKS                       R4 K2 ["Studio"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETTABLEKS                       R5 R0 K3 ["input"]
       15 GETTABLEKS                       R4 R5 K4 ["studioModifiedFiles"]
       17 JUMP                             ; [+4]
       18 GETTABLEKS                       R5 R0 K3 ["input"]
       20 GETTABLEKS                       R4 R5 K5 ["diskModifiedInstances"]
       22 JUMPIFNOT                        R3 ; [+5]
       23 GETTABLEKS                       R6 R0 K3 ["input"]
       25 GETTABLEKS                       R5 R6 K6 ["studioAddedFiles"]
       27 JUMP                             ; [+4]
       28 GETTABLEKS                       R6 R0 K3 ["input"]
       30 GETTABLEKS                       R5 R6 K7 ["diskAddedInstances"]
       32 JUMPIFNOT                        R3 ; [+5]
       33 GETTABLEKS                       R7 R0 K3 ["input"]
       35 GETTABLEKS                       R6 R7 K8 ["studioDeletedFiles"]
       37 JUMP                             ; [+4]
       38 GETTABLEKS                       R7 R0 K3 ["input"]
       40 GETTABLEKS                       R6 R7 K9 ["diskDeletedInstances"]
       42 LENGTH                           R11 R4
       43 LOADN                            R12 0
       44 JUMPIFNOTLT                      R12 R11 ; [+3]
       46 LOADN                            R10 1
       47 JUMP                             ; [+1]
       48 LOADN                            R10 0
       49 LENGTH                           R12 R5
       50 LOADN                            R13 0
       51 JUMPIFNOTLT                      R13 R12 ; [+3]
       53 LOADN                            R11 1
       54 JUMP                             ; [+1]
       55 LOADN                            R11 0
       56 ADD                              R9 R10 R11
       57 LENGTH                           R11 R6
       58 LOADN                            R12 0
       59 JUMPIFNOTLT                      R12 R11 ; [+3]
       61 LOADN                            R10 1
       62 JUMP                             ; [+1]
       63 LOADN                            R10 0
       64 ADD                              R8 R9 R10
       65 JUMPIFEQKN                       R8 K10 [1] ; [+2]
       67 LOADB                            R7 0 +1
       68 LOADB                            R7 1
       69 GETUPVAL                         R9 2
       70 GETTABLEKS                       R8 R9 K11 ["useState"]
       72 LOADK                            R9 K12 ["Modify"]
       73 CALL                             R8 1 2
       74 GETUPVAL                         R11 2
       75 GETTABLEKS                       R10 R11 K13 ["useCallback"]
       77 NEWCLOSURE                       R11 P0
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 NEWTABLE                         R12 0 2
       82 MOVE                             R13 R7
       83 MOVE                             R14 R9
       84 SETLIST                          R12 R13 2 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R12 2
       88 GETTABLEKS                       R11 R12 K14 ["useEffect"]
       90 NEWCLOSURE                       R12 P1
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R9
       96 NEWTABLE                         R13 0 3
       98 GETTABLEKS                       R14 R0 K1 ["selectedSource"]
      100 GETTABLEKS                       R15 R0 K3 ["input"]
      102 MOVE                             R16 R8
      103 SETLIST                          R13 R14 3 [1]
      105 CALL                             R11 2 0
      106 GETUPVAL                         R12 2
      107 GETTABLEKS                       R11 R12 K15 ["useMemo"]
      109 NEWCLOSURE                       R12 P2
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R13 0 3
      116 MOVE                             R14 R1
      117 MOVE                             R15 R3
      118 MOVE                             R16 R4
      119 SETLIST                          R13 R14 3 [1]
      121 CALL                             R11 2 1
      122 GETUPVAL                         R13 2
      123 GETTABLEKS                       R12 R13 K15 ["useMemo"]
      125 NEWCLOSURE                       R13 P3
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R5
      130 NEWTABLE                         R14 0 3
      132 MOVE                             R15 R1
      133 MOVE                             R16 R3
      134 MOVE                             R17 R5
      135 SETLIST                          R14 R15 3 [1]
      137 CALL                             R12 2 1
      138 GETUPVAL                         R14 2
      139 GETTABLEKS                       R13 R14 K15 ["useMemo"]
      141 NEWCLOSURE                       R14 P4
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R6
      146 NEWTABLE                         R15 0 3
      148 MOVE                             R16 R1
      149 MOVE                             R17 R3
      150 MOVE                             R18 R6
      151 SETLIST                          R15 R16 3 [1]
      153 CALL                             R13 2 1
      154 GETUPVAL                         R14 4
      155 GETUPVAL                         R16 5
      156 GETTABLEKS                       R15 R16 K16 ["View"]
      158 DUPTABLE                         R16 K19 [{"tag", "LayoutOrder"}]
      159 LOADK                            R17 K20 ["col size-full-0 auto-y gap-xsmall"]
      160 SETTABLEKS                       R17 R16 K17 ["tag"]
      162 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
      164 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      166 DUPTABLE                         R17 K23 [{"Modify", "Add", "Delete"}]
      167 GETUPVAL                         R18 4
      168 GETUPVAL                         R19 6
      169 DUPTABLE                         R20 K31 [{"layoutOrder", "id", "count", "titleText", "isExpanded", "isLocked", "onActivated"}]
      170 MOVE                             R21 R2
      171 CALL                             R21 0 1
      172 SETTABLEKS                       R21 R20 K24 ["layoutOrder"]
      174 LOADK                            R21 K12 ["Modify"]
      175 SETTABLEKS                       R21 R20 K25 ["id"]
      177 LENGTH                           R21 R4
      178 SETTABLEKS                       R21 R20 K26 ["count"]
      180 SETTABLEKS                       R11 R20 K27 ["titleText"]
      182 JUMPIFEQKS                       R8 K12 ["Modify"] ; [+2]
      184 LOADB                            R21 0 +1
      185 LOADB                            R21 1
      186 SETTABLEKS                       R21 R20 K28 ["isExpanded"]
      188 SETTABLEKS                       R7 R20 K29 ["isLocked"]
      190 SETTABLEKS                       R10 R20 K30 ["onActivated"]
      192 DUPTABLE                         R21 K33 [{"ListChanges"}]
      193 GETUPVAL                         R22 4
      194 GETUPVAL                         R23 7
      195 DUPTABLE                         R24 K35 [{"changes", "id"}]
      196 SETTABLEKS                       R4 R24 K34 ["changes"]
      198 LOADK                            R25 K12 ["Modify"]
      199 SETTABLEKS                       R25 R24 K25 ["id"]
      201 CALL                             R22 2 1
      202 SETTABLEKS                       R22 R21 K32 ["ListChanges"]
      204 CALL                             R18 3 1
      205 SETTABLEKS                       R18 R17 K12 ["Modify"]
      207 GETUPVAL                         R18 4
      208 GETUPVAL                         R19 6
      209 DUPTABLE                         R20 K31 [{"layoutOrder", "id", "count", "titleText", "isExpanded", "isLocked", "onActivated"}]
      210 MOVE                             R21 R2
      211 CALL                             R21 0 1
      212 SETTABLEKS                       R21 R20 K24 ["layoutOrder"]
      214 LOADK                            R21 K21 ["Add"]
      215 SETTABLEKS                       R21 R20 K25 ["id"]
      217 LENGTH                           R21 R5
      218 SETTABLEKS                       R21 R20 K26 ["count"]
      220 SETTABLEKS                       R12 R20 K27 ["titleText"]
      222 JUMPIFEQKS                       R8 K21 ["Add"] ; [+2]
      224 LOADB                            R21 0 +1
      225 LOADB                            R21 1
      226 SETTABLEKS                       R21 R20 K28 ["isExpanded"]
      228 SETTABLEKS                       R7 R20 K29 ["isLocked"]
      230 SETTABLEKS                       R10 R20 K30 ["onActivated"]
      232 DUPTABLE                         R21 K33 [{"ListChanges"}]
      233 GETUPVAL                         R22 4
      234 GETUPVAL                         R23 7
      235 DUPTABLE                         R24 K35 [{"changes", "id"}]
      236 SETTABLEKS                       R5 R24 K34 ["changes"]
      238 LOADK                            R25 K21 ["Add"]
      239 SETTABLEKS                       R25 R24 K25 ["id"]
      241 CALL                             R22 2 1
      242 SETTABLEKS                       R22 R21 K32 ["ListChanges"]
      244 CALL                             R18 3 1
      245 SETTABLEKS                       R18 R17 K21 ["Add"]
      247 GETUPVAL                         R18 4
      248 GETUPVAL                         R19 6
      249 DUPTABLE                         R20 K31 [{"layoutOrder", "id", "count", "titleText", "isExpanded", "isLocked", "onActivated"}]
      250 MOVE                             R21 R2
      251 CALL                             R21 0 1
      252 SETTABLEKS                       R21 R20 K24 ["layoutOrder"]
      254 LOADK                            R21 K22 ["Delete"]
      255 SETTABLEKS                       R21 R20 K25 ["id"]
      257 LENGTH                           R21 R6
      258 SETTABLEKS                       R21 R20 K26 ["count"]
      260 SETTABLEKS                       R13 R20 K27 ["titleText"]
      262 JUMPIFEQKS                       R8 K22 ["Delete"] ; [+2]
      264 LOADB                            R21 0 +1
      265 LOADB                            R21 1
      266 SETTABLEKS                       R21 R20 K28 ["isExpanded"]
      268 SETTABLEKS                       R7 R20 K29 ["isLocked"]
      270 SETTABLEKS                       R10 R20 K30 ["onActivated"]
      272 DUPTABLE                         R21 K33 [{"ListChanges"}]
      273 GETUPVAL                         R22 4
      274 GETUPVAL                         R23 7
      275 DUPTABLE                         R24 K35 [{"changes", "id"}]
      276 SETTABLEKS                       R6 R24 K34 ["changes"]
      278 LOADK                            R25 K22 ["Delete"]
      279 SETTABLEKS                       R25 R24 K25 ["id"]
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K32 ["ListChanges"]
      284 CALL                             R18 3 1
      285 SETTABLEKS                       R18 R17 K22 ["Delete"]
      287 CALL                             R14 3 -1
      288 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["ChangeSection"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["ListChanges"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["React"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K13 ["Localization"]
       46 GETTABLEKS                       R9 R3 K14 ["Util"]
       48 GETTABLEKS                       R8 R9 K15 ["counter"]
       50 GETTABLEKS                       R9 R5 K16 ["createElement"]
       52 DUPCLOSURE                       R10 K17 [PROTO_0]
       53 DUPCLOSURE                       R11 K18 [PROTO_6]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 GETTABLEKS                       R12 R5 K19 ["memo"]
       64 MOVE                             R13 R11
       65 CALL                             R12 1 -1
       66 RETURN                           R12 -1
