PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["UserSubjectKey"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["UserSubject"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["GroupSubjectKey"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K3 ["GroupSubject"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K4 ["RoleSubjectKey"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K5 ["RoleSubject"]
       26 RETURN                           R1 1
       27 GETIMPORT                        R1 K7 [error]
       29 LOADK                            R3 K8 ["Invalid SubjectType: "]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R5 R0
       32 GETIMPORT                        R4 K10 [tostring]
       34 CALL                             R4 1 1
       35 CONCAT                           R2 R3 R4
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PlayKey"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["PlayAction"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["EditKey"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K3 ["EditAction"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K4 ["AdminKey"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K3 ["EditAction"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K5 ["NoAccessKey"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+3]
       32 LOADNIL                          R1
       33 RETURN                           R1 1
       34 GETIMPORT                        R1 K7 [error]
       36 LOADK                            R3 K8 ["Invalid Action: "]
       37 FASTCALL1                        TOSTRING R0 ; [+3]
       38 MOVE                             R5 R0
       39 GETIMPORT                        R4 K10 [tostring]
       41 CALL                             R4 1 1
       42 CONCAT                           R2 R3 R4
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K2 ["RoleSubjectKey"]
        7 GETTABLE                         R4 R0 R6
        8 CALL                             R3 1 3
        9 FORGPREP_NEXT                    R3
       10 GETUPVAL                         R10 0
       11 GETTABLEKS                       R9 R10 K3 ["GroupIdKey"]
       13 GETTABLE                         R8 R7 R9
       14 SETTABLE                         R8 R2 R6
       15 FORGLOOP                         R3 2 ; [-6]
       17 GETIMPORT                        R3 K1 [pairs]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K2 ["RoleSubjectKey"]
       22 GETTABLE                         R4 R1 R6
       23 CALL                             R3 1 3
       24 FORGPREP_NEXT                    R3
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R9 R10 K3 ["GroupIdKey"]
       28 GETTABLE                         R8 R7 R9
       29 SETTABLE                         R8 R2 R6
       30 FORGLOOP                         R3 2 ; [-6]
       32 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["GroupSubjectKey"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLE                         R4 R2 R3
        8 GETIMPORT                        R3 K2 [pairs]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 NEWTABLE                         R8 0 0
       15 SETTABLE                         R8 R2 R6
       16 FORGLOOP                         R3 2 ; [-4]
       18 GETIMPORT                        R3 K2 [pairs]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 3
       22 FORGPREP_NEXT                    R3
       23 NEWTABLE                         R8 0 0
       25 SETTABLE                         R8 R2 R6
       26 FORGLOOP                         R3 2 ; [-4]
       28 GETIMPORT                        R3 K2 [pairs]
       30 MOVE                             R4 R0
       31 CALL                             R3 1 3
       32 FORGPREP_NEXT                    R3
       33 GETIMPORT                        R8 K2 [pairs]
       35 MOVE                             R9 R7
       36 CALL                             R8 1 3
       37 FORGPREP_NEXT                    R8
       38 GETTABLE                         R13 R2 R6
       39 DUPTABLE                         R14 K4 [{"Current"}]
       40 GETUPVAL                         R17 0
       41 GETTABLEKS                       R16 R17 K5 ["ActionKey"]
       43 GETTABLE                         R15 R12 R16
       44 SETTABLEKS                       R15 R14 K3 ["Current"]
       46 SETTABLE                         R14 R13 R11
       47 FORGLOOP                         R8 2 ; [-10]
       49 FORGLOOP                         R3 2 ; [-17]
       51 GETIMPORT                        R3 K2 [pairs]
       53 MOVE                             R4 R1
       54 CALL                             R3 1 3
       55 FORGPREP_NEXT                    R3
       56 GETIMPORT                        R8 K2 [pairs]
       58 MOVE                             R9 R7
       59 CALL                             R8 1 3
       60 FORGPREP_NEXT                    R8
       61 GETTABLE                         R13 R2 R6
       62 GETTABLE                         R15 R2 R6
       63 GETTABLE                         R14 R15 R11
       64 JUMPIF                           R14 ; [+2]
       65 NEWTABLE                         R14 0 0
       67 SETTABLE                         R14 R13 R11
       68 GETTABLE                         R14 R2 R6
       69 GETTABLE                         R13 R14 R11
       70 GETUPVAL                         R16 0
       71 GETTABLEKS                       R15 R16 K5 ["ActionKey"]
       73 GETTABLE                         R14 R12 R15
       74 SETTABLEKS                       R14 R13 K6 ["Changed"]
       76 FORGLOOP                         R8 2 ; [-16]
       78 FORGLOOP                         R3 2 ; [-23]
       80 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K1 [pairs]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 GETIMPORT                        R9 K1 [pairs]
       11 MOVE                             R10 R8
       12 CALL                             R9 1 3
       13 FORGPREP_NEXT                    R9
       14 GETUPVAL                         R15 0
       15 GETTABLEKS                       R16 R13 K2 ["Current"]
       17 GETTABLE                         R14 R15 R16
       18 JUMPIF                           R14 ; [+5]
       19 GETUPVAL                         R15 0
       20 GETUPVAL                         R17 1
       21 GETTABLEKS                       R16 R17 K3 ["NoAccessKey"]
       23 GETTABLE                         R14 R15 R16
       24 GETUPVAL                         R16 0
       25 GETTABLEKS                       R17 R13 K4 ["Changed"]
       27 GETTABLE                         R15 R16 R17
       28 JUMPIF                           R15 ; [+5]
       29 GETUPVAL                         R16 0
       30 GETUPVAL                         R18 1
       31 GETTABLEKS                       R17 R18 K3 ["NoAccessKey"]
       33 GETTABLE                         R15 R16 R17
       34 JUMPIFNOTLT                      R14 R15 ; [+112]
       36 ADDK                             R18 R14 K5 [1]
       37 MOVE                             R16 R15
       38 LOADN                            R17 1
       39 FORNPREP                         R16
       40 NEWTABLE                         R21 4 0
       42 GETUPVAL                         R23 2
       43 GETTABLEKS                       R22 R23 K6 ["SubjectType"]
       45 GETUPVAL                         R25 1
       46 GETTABLEKS                       R24 R25 K7 ["UserSubjectKey"]
       48 JUMPIFNOTEQ                      R7 R24 ; [+5]
       50 GETUPVAL                         R24 2
       51 GETTABLEKS                       R23 R24 K8 ["UserSubject"]
       53 JUMP                             ; [+29]
       54 GETUPVAL                         R25 1
       55 GETTABLEKS                       R24 R25 K9 ["GroupSubjectKey"]
       57 JUMPIFNOTEQ                      R7 R24 ; [+5]
       59 GETUPVAL                         R24 2
       60 GETTABLEKS                       R23 R24 K10 ["GroupSubject"]
       62 JUMP                             ; [+20]
       63 GETUPVAL                         R25 1
       64 GETTABLEKS                       R24 R25 K11 ["RoleSubjectKey"]
       66 JUMPIFNOTEQ                      R7 R24 ; [+5]
       68 GETUPVAL                         R24 2
       69 GETTABLEKS                       R23 R24 K12 ["RoleSubject"]
       71 JUMP                             ; [+11]
       72 GETIMPORT                        R24 K14 [error]
       74 LOADK                            R26 K15 ["Invalid SubjectType: "]
       75 FASTCALL1                        TOSTRING R7 ; [+3]
       76 MOVE                             R28 R7
       77 GETIMPORT                        R27 K17 [tostring]
       79 CALL                             R27 1 1
       80 CONCAT                           R25 R26 R27
       81 CALL                             R24 1 0
       82 LOADNIL                          R23
       83 SETTABLE                         R23 R21 R22
       84 GETUPVAL                         R23 2
       85 GETTABLEKS                       R22 R23 K18 ["SubjectId"]
       87 SETTABLE                         R12 R21 R22
       88 GETUPVAL                         R23 2
       89 GETTABLEKS                       R22 R23 K19 ["Action"]
       91 GETUPVAL                         R25 3
       92 GETTABLE                         R24 R25 R18
       93 GETUPVAL                         R26 1
       94 GETTABLEKS                       R25 R26 K20 ["PlayKey"]
       96 JUMPIFNOTEQ                      R24 R25 ; [+5]
       98 GETUPVAL                         R25 2
       99 GETTABLEKS                       R23 R25 K21 ["PlayAction"]
      101 JUMP                             ; [+36]
      102 GETUPVAL                         R26 1
      103 GETTABLEKS                       R25 R26 K22 ["EditKey"]
      105 JUMPIFNOTEQ                      R24 R25 ; [+5]
      107 GETUPVAL                         R25 2
      108 GETTABLEKS                       R23 R25 K23 ["EditAction"]
      110 JUMP                             ; [+27]
      111 GETUPVAL                         R26 1
      112 GETTABLEKS                       R25 R26 K24 ["AdminKey"]
      114 JUMPIFNOTEQ                      R24 R25 ; [+5]
      116 GETUPVAL                         R25 2
      117 GETTABLEKS                       R23 R25 K23 ["EditAction"]
      119 JUMP                             ; [+18]
      120 GETUPVAL                         R26 1
      121 GETTABLEKS                       R25 R26 K3 ["NoAccessKey"]
      123 JUMPIFNOTEQ                      R24 R25 ; [+3]
      125 LOADNIL                          R23
      126 JUMP                             ; [+11]
      127 GETIMPORT                        R25 K14 [error]
      129 LOADK                            R27 K25 ["Invalid Action: "]
      130 FASTCALL1                        TOSTRING R24 ; [+3]
      131 MOVE                             R29 R24
      132 GETIMPORT                        R28 K17 [tostring]
      134 CALL                             R28 1 1
      135 CONCAT                           R26 R27 R28
      136 CALL                             R25 1 0
      137 LOADNIL                          R23
      138 SETTABLE                         R23 R21 R22
      139 FASTCALL2                        TABLE_INSERT R2 R21 ; [+4]
      141 MOVE                             R20 R2
      142 GETIMPORT                        R19 K28 [table.insert]
      144 CALL                             R19 2 0
      145 FORNLOOP                         R16
      146 JUMP                             ; [+112]
      147 JUMPIFNOTLT                      R15 R14 ; [+111]
      149 MOVE                             R18 R14
      150 ADDK                             R16 R15 K5 [1]
      151 LOADN                            R17 255
      152 FORNPREP                         R16
      153 NEWTABLE                         R21 4 0
      155 GETUPVAL                         R23 2
      156 GETTABLEKS                       R22 R23 K6 ["SubjectType"]
      158 GETUPVAL                         R25 1
      159 GETTABLEKS                       R24 R25 K7 ["UserSubjectKey"]
      161 JUMPIFNOTEQ                      R7 R24 ; [+5]
      163 GETUPVAL                         R24 2
      164 GETTABLEKS                       R23 R24 K8 ["UserSubject"]
      166 JUMP                             ; [+29]
      167 GETUPVAL                         R25 1
      168 GETTABLEKS                       R24 R25 K9 ["GroupSubjectKey"]
      170 JUMPIFNOTEQ                      R7 R24 ; [+5]
      172 GETUPVAL                         R24 2
      173 GETTABLEKS                       R23 R24 K10 ["GroupSubject"]
      175 JUMP                             ; [+20]
      176 GETUPVAL                         R25 1
      177 GETTABLEKS                       R24 R25 K11 ["RoleSubjectKey"]
      179 JUMPIFNOTEQ                      R7 R24 ; [+5]
      181 GETUPVAL                         R24 2
      182 GETTABLEKS                       R23 R24 K12 ["RoleSubject"]
      184 JUMP                             ; [+11]
      185 GETIMPORT                        R24 K14 [error]
      187 LOADK                            R26 K15 ["Invalid SubjectType: "]
      188 FASTCALL1                        TOSTRING R7 ; [+3]
      189 MOVE                             R28 R7
      190 GETIMPORT                        R27 K17 [tostring]
      192 CALL                             R27 1 1
      193 CONCAT                           R25 R26 R27
      194 CALL                             R24 1 0
      195 LOADNIL                          R23
      196 SETTABLE                         R23 R21 R22
      197 GETUPVAL                         R23 2
      198 GETTABLEKS                       R22 R23 K18 ["SubjectId"]
      200 SETTABLE                         R12 R21 R22
      201 GETUPVAL                         R23 2
      202 GETTABLEKS                       R22 R23 K19 ["Action"]
      204 GETUPVAL                         R25 3
      205 GETTABLE                         R24 R25 R18
      206 GETUPVAL                         R26 1
      207 GETTABLEKS                       R25 R26 K20 ["PlayKey"]
      209 JUMPIFNOTEQ                      R24 R25 ; [+5]
      211 GETUPVAL                         R25 2
      212 GETTABLEKS                       R23 R25 K21 ["PlayAction"]
      214 JUMP                             ; [+36]
      215 GETUPVAL                         R26 1
      216 GETTABLEKS                       R25 R26 K22 ["EditKey"]
      218 JUMPIFNOTEQ                      R24 R25 ; [+5]
      220 GETUPVAL                         R25 2
      221 GETTABLEKS                       R23 R25 K23 ["EditAction"]
      223 JUMP                             ; [+27]
      224 GETUPVAL                         R26 1
      225 GETTABLEKS                       R25 R26 K24 ["AdminKey"]
      227 JUMPIFNOTEQ                      R24 R25 ; [+5]
      229 GETUPVAL                         R25 2
      230 GETTABLEKS                       R23 R25 K23 ["EditAction"]
      232 JUMP                             ; [+18]
      233 GETUPVAL                         R26 1
      234 GETTABLEKS                       R25 R26 K3 ["NoAccessKey"]
      236 JUMPIFNOTEQ                      R24 R25 ; [+3]
      238 LOADNIL                          R23
      239 JUMP                             ; [+11]
      240 GETIMPORT                        R25 K14 [error]
      242 LOADK                            R27 K25 ["Invalid Action: "]
      243 FASTCALL1                        TOSTRING R24 ; [+3]
      244 MOVE                             R29 R24
      245 GETIMPORT                        R28 K17 [tostring]
      247 CALL                             R28 1 1
      248 CONCAT                           R26 R27 R28
      249 CALL                             R25 1 0
      250 LOADNIL                          R23
      251 SETTABLE                         R23 R21 R22
      252 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      254 MOVE                             R20 R3
      255 GETIMPORT                        R19 K28 [table.insert]
      257 CALL                             R19 2 0
      258 FORNLOOP                         R16
      259 FORGLOOP                         R9 2 ; [-246]
      261 FORGLOOP                         R4 2 ; [-253]
      263 RETURN                           R2 2

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["diffPermissionChanges"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["_getGroupsForRoles"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K2 ["_resolvePermissionChanges"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 2
       18 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["PermissionsConstants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Util"]
       18 GETTABLEKS                       R3 R4 K7 ["WebKeyConstants"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 3
       23 GETTABLEKS                       R4 R1 K8 ["NoAccessKey"]
       25 GETTABLEKS                       R5 R1 K9 ["PlayKey"]
       27 GETTABLEKS                       R6 R1 K10 ["EditKey"]
       29 SETLIST                          R3 R4 3 [1]
       31 NEWTABLE                         R4 0 0
       33 GETIMPORT                        R5 K12 [pairs]
       35 MOVE                             R6 R3
       36 CALL                             R5 1 3
       37 FORGPREP_NEXT                    R5
       38 SETTABLE                         R8 R4 R9
       39 FORGLOOP                         R5 2 ; [-2]
       41 DUPCLOSURE                       R5 K13 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 DUPCLOSURE                       R6 K14 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R7 4 0
       49 DUPCLOSURE                       R8 K15 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R8 R7 K16 ["_getGroupsForRoles"]
       53 DUPCLOSURE                       R8 K17 [PROTO_3]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R8 R7 K18 ["diffPermissionChanges"]
       57 DUPCLOSURE                       R8 K19 [PROTO_4]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R8 R7 K20 ["_resolvePermissionChanges"]
       64 DUPCLOSURE                       R8 K21 [PROTO_5]
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R8 R7 K22 ["SerializePermissions"]
       68 RETURN                           R7 1
