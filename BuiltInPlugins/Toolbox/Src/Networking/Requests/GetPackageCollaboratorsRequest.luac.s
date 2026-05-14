PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["UserSubjectKey"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["GroupSubjectKey"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLE                         R3 R1 R2
       14 GETIMPORT                        R2 K3 [ipairs]
       16 GETTABLEKS                       R3 R0 K4 ["results"]
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R9 R6 K5 ["subjectType"]
       23 GETTABLE                         R7 R8 R9
       24 JUMPIFNOT                        R7 ; [+23]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R10 R6 K6 ["action"]
       28 GETTABLE                         R8 R9 R10
       29 FASTCALL1                        ASSERT R8 ; [+3]
       30 MOVE                             R10 R8
       31 GETIMPORT                        R9 K8 [assert]
       33 CALL                             R9 1 0
       34 GETTABLE                         R9 R1 R7
       35 GETTABLEKS                       R11 R6 K9 ["subjectId"]
       37 FASTCALL1                        TONUMBER R11 ; [+2]
       38 GETIMPORT                        R10 K11 [tonumber]
       40 CALL                             R10 1 1
       41 NEWTABLE                         R11 1 0
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K12 ["ActionKey"]
       46 SETTABLE                         R8 R11 R12
       47 SETTABLE                         R11 R9 R10
       48 FORGLOOP                         R2 2 [inext] ; [-29]
       50 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["UserSubjectKey"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["RoleSubjectKey"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLE                         R3 R1 R2
       14 GETIMPORT                        R2 K3 [pairs]
       16 GETTABLEKS                       R3 R0 K4 ["results"]
       18 CALL                             R2 1 3
       19 FORGPREP_NEXT                    R2
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K5 ["SubjectType"]
       23 GETTABLE                         R7 R6 R8
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K6 ["UserSubject"]
       27 JUMPIFNOTEQ                      R7 R8 ; [+45]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K0 ["UserSubjectKey"]
       32 GETTABLE                         R7 R1 R8
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K7 ["SubjectId"]
       36 GETTABLE                         R8 R6 R9
       37 NEWTABLE                         R9 4 0
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K8 ["SubjectNameKey"]
       42 GETUPVAL                         R11 2
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K7 ["SubjectId"]
       46 GETTABLE                         R13 R6 R14
       47 NAMECALL                         R11 R11 K9 ["GetNameFromUserIdAsync"]
       49 CALL                             R11 2 1
       50 SETTABLE                         R11 R9 R10
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K10 ["SubjectIdKey"]
       54 GETUPVAL                         R12 1
       55 GETTABLEKS                       R12 R12 K7 ["SubjectId"]
       57 GETTABLE                         R11 R6 R12
       58 SETTABLE                         R11 R9 R10
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K11 ["ActionKey"]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K12 ["getInternalAction"]
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K13 ["Action"]
       68 GETTABLE                         R12 R6 R13
       69 CALL                             R11 1 1
       70 SETTABLE                         R11 R9 R10
       71 SETTABLE                         R9 R7 R8
       72 JUMP                             ; [+79]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K7 ["SubjectId"]
       76 GETTABLE                         R7 R6 R8
       77 JUMPIFNOT                        R7 ; [+74]
       78 JUMPIFEQKS                       R7 K14 [""] ; [+73]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K1 ["RoleSubjectKey"]
       83 GETTABLE                         R8 R1 R9
       84 FASTCALL1                        TONUMBER R7 ; [+3]
       85 MOVE                             R10 R7
       86 GETIMPORT                        R9 K16 [tonumber]
       88 CALL                             R9 1 1
       89 NEWTABLE                         R10 1 0
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K11 ["ActionKey"]
       94 GETUPVAL                         R12 3
       95 GETTABLEKS                       R12 R12 K12 ["getInternalAction"]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K13 ["Action"]
      100 GETTABLE                         R13 R6 R14
      101 CALL                             R12 1 1
      102 SETTABLE                         R12 R10 R11
      103 SETTABLE                         R10 R8 R9
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R10 R10 K1 ["RoleSubjectKey"]
      107 GETTABLE                         R9 R1 R10
      108 FASTCALL1                        TONUMBER R7 ; [+3]
      109 MOVE                             R11 R7
      110 GETIMPORT                        R10 K16 [tonumber]
      112 CALL                             R10 1 1
      113 GETTABLE                         R8 R9 R10
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R9 R9 K17 ["PermissionLevelKey"]
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R12 R12 K18 ["PermissionLevel"]
      120 GETTABLE                         R11 R6 R12
      121 JUMPIFNOT                        R11 ; [+9]
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R10 R10 K19 ["getPermissionLevel"]
      125 GETUPVAL                         R12 1
      126 GETTABLEKS                       R12 R12 K18 ["PermissionLevel"]
      128 GETTABLE                         R11 R6 R12
      129 CALL                             R10 1 1
      130 JUMPIF                           R10 ; [+1]
      131 LOADNIL                          R10
      132 SETTABLE                         R10 R8 R9
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K20 ["PermissionSourceKey"]
      136 GETUPVAL                         R12 1
      137 GETTABLEKS                       R12 R12 K21 ["PermissionSource"]
      139 GETTABLE                         R11 R6 R12
      140 JUMPIFNOT                        R11 ; [+9]
      141 GETUPVAL                         R10 3
      142 GETTABLEKS                       R10 R10 K22 ["getPermissionSource"]
      144 GETUPVAL                         R12 1
      145 GETTABLEKS                       R12 R12 K21 ["PermissionSource"]
      147 GETTABLE                         R11 R6 R12
      148 CALL                             R10 1 1
      149 JUMPIF                           R10 ; [+1]
      150 LOADNIL                          R10
      151 SETTABLE                         R10 R8 R9
      152 FORGLOOP                         R2 2 ; [-133]
      154 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R2 R0 K1 ["responseBody"]
       13 CALL                             R1 1 1
       14 JUMP                             ; [+4]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R2 R0 K1 ["responseBody"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 5
       20 GETUPVAL                         R4 6
       21 MOVE                             R5 R1
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R2 K2 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 3
        9 MOVE                             R4 R0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K1 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getAssetPermissions"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U7
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U8
       18 NAMECALL                         R1 R1 K1 ["andThen"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R2 K8 ["Actions"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R4 R1 K7 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["Analytics"]
       29 GETTABLEKS                       R4 R4 K12 ["Analytics"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K10 [require]
       34 GETTABLEKS                       R5 R2 K13 ["SetCollaborators"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K14 ["NetworkError"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R1 K7 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Components"]
       48 GETTABLEKS                       R7 R7 K16 ["AssetConfiguration"]
       50 GETTABLEKS                       R7 R7 K17 ["Permissions"]
       52 GETTABLEKS                       R7 R7 K18 ["PermissionsConstants"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K19 ["Packages"]
       57 GETIMPORT                        R8 K10 [require]
       59 GETTABLEKS                       R9 R7 K20 ["Framework"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R8 R8 K11 ["Util"]
       64 GETTABLEKS                       R8 R8 K21 ["Promise"]
       66 GETIMPORT                        R9 K10 [require]
       68 GETTABLEKS                       R10 R1 K7 ["Src"]
       70 GETTABLEKS                       R10 R10 K11 ["Util"]
       72 GETTABLEKS                       R10 R10 K17 ["Permissions"]
       74 GETTABLEKS                       R10 R10 K22 ["KeyConverter"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K10 [require]
       79 GETTABLEKS                       R11 R1 K7 ["Src"]
       81 GETTABLEKS                       R11 R11 K11 ["Util"]
       83 GETTABLEKS                       R11 R11 K17 ["Permissions"]
       85 GETTABLEKS                       R11 R11 K23 ["Constants"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R11 R10 K24 ["webKeys"]
       90 GETTABLEKS                       R12 R10 K25 ["webValues"]
       92 GETIMPORT                        R13 K1 [game]
       94 LOADK                            R15 K26 ["ProximityPromptService"]
       95 NAMECALL                         R13 R13 K3 ["GetService"]
       97 CALL                             R13 2 1
       98 GETIMPORT                        R14 K1 [game]
      100 LOADK                            R16 K27 ["Players"]
      101 NAMECALL                         R14 R14 K3 ["GetService"]
      103 CALL                             R14 2 1
      104 GETIMPORT                        R15 K1 [game]
      106 LOADK                            R17 K28 ["GroupService"]
      107 NAMECALL                         R15 R15 K3 ["GetService"]
      109 CALL                             R15 2 1
      110 GETIMPORT                        R16 K1 [game]
      112 LOADK                            R18 K29 ["NewPackageAnalyticsWithRefactor2"]
      113 NAMECALL                         R16 R16 K30 ["GetFastFlag"]
      115 CALL                             R16 2 1
      116 GETIMPORT                        R17 K10 [require]
      118 GETTABLEKS                       R18 R1 K7 ["Src"]
      120 GETTABLEKS                       R18 R18 K31 ["Flags"]
      122 GETTABLEKS                       R18 R18 K32 ["getFFlagAACPermissionsPage"]
      124 CALL                             R17 1 1
      125 DUPTABLE                         R18 K39 [{"User", "Group", "Use", "UseView", "Edit", "GrantAssetPermissions"}]
      126 GETTABLEKS                       R19 R6 K40 ["UserSubjectKey"]
      128 SETTABLEKS                       R19 R18 K33 ["User"]
      130 GETTABLEKS                       R19 R6 K41 ["GroupSubjectKey"]
      132 SETTABLEKS                       R19 R18 K34 ["Group"]
      134 GETTABLEKS                       R19 R6 K42 ["UseViewKey"]
      136 SETTABLEKS                       R19 R18 K35 ["Use"]
      138 GETTABLEKS                       R19 R6 K42 ["UseViewKey"]
      140 SETTABLEKS                       R19 R18 K36 ["UseView"]
      142 GETTABLEKS                       R19 R6 K43 ["EditKey"]
      144 SETTABLEKS                       R19 R18 K37 ["Edit"]
      146 GETTABLEKS                       R19 R6 K44 ["OwnKey"]
      148 SETTABLEKS                       R19 R18 K38 ["GrantAssetPermissions"]
      150 DUPCLOSURE                       R19 K45 [PROTO_0]
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R18
      153 DUPCLOSURE                       R20 K46 [PROTO_1]
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R9
      158 DUPCLOSURE                       R21 K47 [PROTO_5]
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R5
      166 RETURN                           R21 1
