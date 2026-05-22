PROTO_0:
        0 DUPTABLE                         R2 K2 [{"GrantRequests", "RevokeRequests"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["GrantRequests"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["RevokeRequests"]
        9 GETIMPORT                        R3 K4 [pairs]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 GETIMPORT                        R8 K4 [pairs]
       16 MOVE                             R9 R7
       17 CALL                             R8 1 3
       18 FORGPREP_NEXT                    R8
       19 GETUPVAL                         R14 0
       20 GETTABLEKS                       R14 R14 K5 ["ActionKey"]
       22 GETTABLE                         R13 R12 R14
       23 LOADK                            R14 K0 ["GrantRequests"]
       24 GETUPVAL                         R15 0
       25 GETTABLEKS                       R15 R15 K6 ["RevokedKey"]
       27 JUMPIFNOTEQ                      R13 R15 ; [+37]
       29 LOADK                            R14 K1 ["RevokeRequests"]
       30 GETUPVAL                         R15 1
       31 CALL                             R15 0 1
       32 JUMPIFNOT                        R15 ; [+16]
       33 GETTABLE                         R15 R1 R6
       34 JUMPIFNOT                        R15 ; [+2]
       35 GETTABLE                         R16 R15 R11
       36 JUMP                             ; [+1]
       37 LOADNIL                          R16
       38 JUMPIFNOT                        R16 ; [+53]
       39 GETUPVAL                         R17 0
       40 GETTABLEKS                       R17 R17 K5 ["ActionKey"]
       42 GETTABLE                         R13 R16 R17
       43 FASTCALL1                        ASSERT R13 ; [+3]
       44 MOVE                             R18 R13
       45 GETIMPORT                        R17 K8 [assert]
       47 CALL                             R17 1 0
       48 JUMP                             ; [+16]
       49 GETTABLE                         R16 R1 R6
       50 GETTABLE                         R15 R16 R11
       51 FASTCALL1                        ASSERT R15 ; [+3]
       52 MOVE                             R17 R15
       53 GETIMPORT                        R16 K8 [assert]
       55 CALL                             R16 1 0
       56 GETUPVAL                         R16 0
       57 GETTABLEKS                       R16 R16 K5 ["ActionKey"]
       59 GETTABLE                         R13 R15 R16
       60 FASTCALL1                        ASSERT R13 ; [+3]
       61 MOVE                             R17 R13
       62 GETIMPORT                        R16 K8 [assert]
       64 CALL                             R16 1 0
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R16 R16 K9 ["Actions"]
       68 GETTABLE                         R15 R16 R13
       69 JUMPIFNOT                        R15 ; [+22]
       70 GETUPVAL                         R17 2
       71 GETTABLEKS                       R17 R17 K10 ["SubjectTypes"]
       73 GETTABLE                         R16 R17 R6
       74 FASTCALL1                        ASSERT R16 ; [+3]
       75 MOVE                             R18 R16
       76 GETIMPORT                        R17 K8 [assert]
       78 CALL                             R17 1 0
       79 GETTABLE                         R18 R2 R14
       80 DUPTABLE                         R19 K14 [{"subjectType", "subjectId", "action"}]
       81 SETTABLEKS                       R16 R19 K11 ["subjectType"]
       83 SETTABLEKS                       R11 R19 K12 ["subjectId"]
       85 SETTABLEKS                       R15 R19 K13 ["action"]
       87 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       89 GETIMPORT                        R17 K17 [table.insert]
       91 CALL                             R17 2 0
       92 FORGLOOP                         R8 2 ; [-74]
       94 FORGLOOP                         R3 2 ; [-81]
       96 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
        2 GETIMPORT                        R1 K1 [pairs]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 FASTCALL1                        TYPE R5 ; [+3]
        8 MOVE                             R7 R5
        9 GETIMPORT                        R6 K3 [type]
       11 CALL                             R6 1 1
       12 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+10]
       14 GETTABLEKS                       R6 R5 K5 ["url"]
       16 JUMPIFEQKNIL                     R6 ; [+6]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K6 ["sendResultToKibana"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 FORGLOOP                         R1 2 ; [-17]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R3 3
       27 LOADK                            R4 K7 ["permissions"]
       28 CALL                             R3 1 -1
       29 NAMECALL                         R1 R1 K8 ["dispatch"]
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETTABLEKS                       R1 R0 K0 ["url"]
        4 JUMPIFEQKNIL                     R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["sendResultToKibana"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 LOADK                            R6 K2 ["AssetConfigPackagePermissions"]
       15 LOADK                            R7 K3 ["UpdateFailed"]
       16 DUPTABLE                         R8 K5 [{"error"}]
       17 GETTABLEKS                       R9 R0 K6 ["responseBody"]
       19 SETTABLEKS                       R9 R8 K4 ["error"]
       21 NAMECALL                         R4 R4 K7 ["getText"]
       23 CALL                             R4 4 -1
       24 CALL                             R3 -1 -1
       25 NAMECALL                         R1 R1 K8 ["dispatch"]
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R1 2
       29 GETUPVAL                         R3 5
       30 LOADB                            R4 0
       31 CALL                             R3 1 -1
       32 NAMECALL                         R1 R1 K8 ["dispatch"]
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["changed"]
        5 MOVE                             R3 R1
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETIMPORT                        R4 K3 [next]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL1                        ASSERT R3 ; [+2]
       16 GETIMPORT                        R2 K5 [assert]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETTABLEKS                       R2 R1 K6 ["permissions"]
       23 JUMPIF                           R2 ; [+5]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K7 ["resolve"]
       27 CALL                             R2 0 -1
       28 RETURN                           R2 -1
       29 NAMECALL                         R2 R0 K0 ["getState"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R2 R2 K8 ["originalCollaborators"]
       34 GETTABLEKS                       R3 R1 K6 ["permissions"]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K9 ["RoleSubjectKey"]
       39 LOADNIL                          R5
       40 SETTABLE                         R5 R3 R4
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R4 R1 K6 ["permissions"]
       44 MOVE                             R5 R2
       45 CALL                             R3 2 1
       46 GETTABLEKS                       R6 R3 K10 ["GrantRequests"]
       48 LENGTH                           R5 R6
       49 LOADN                            R6 0
       50 JUMPIFNOTLT                      R6 R5 ; [+12]
       52 GETUPVAL                         R4 4
       53 GETUPVAL                         R6 5
       54 DUPTABLE                         R7 K12 [{"requests"}]
       55 GETTABLEKS                       R8 R3 K10 ["GrantRequests"]
       57 SETTABLEKS                       R8 R7 K11 ["requests"]
       59 NAMECALL                         R4 R4 K13 ["grantAssetPermissions"]
       61 CALL                             R4 3 1
       62 JUMP                             ; [+5]
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K7 ["resolve"]
       66 LOADB                            R5 1
       67 CALL                             R4 1 1
       68 GETTABLEKS                       R7 R3 K14 ["RevokeRequests"]
       70 LENGTH                           R6 R7
       71 LOADN                            R7 0
       72 JUMPIFNOTLT                      R7 R6 ; [+12]
       74 GETUPVAL                         R5 4
       75 GETUPVAL                         R7 5
       76 DUPTABLE                         R8 K12 [{"requests"}]
       77 GETTABLEKS                       R9 R3 K14 ["RevokeRequests"]
       79 SETTABLEKS                       R9 R8 K11 ["requests"]
       81 NAMECALL                         R5 R5 K15 ["revokeAssetPermissions"]
       83 CALL                             R5 3 1
       84 JUMP                             ; [+5]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K7 ["resolve"]
       88 LOADB                            R6 1
       89 CALL                             R5 1 1
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K16 ["all"]
       93 NEWTABLE                         R7 0 2
       95 MOVE                             R8 R4
       96 MOVE                             R9 R5
       97 SETLIST                          R7 R8 2 [1]
       99 CALL                             R6 1 1
      100 NEWCLOSURE                       R8 P0
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U8
      105 NEWCLOSURE                       R9 P1
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U11
      112 NAMECALL                         R6 R6 K17 ["andThen"]
      114 CALL                             R6 3 -1
      115 RETURN                           R6 -1

PROTO_4:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U8
       13 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Components"]
       17 GETTABLEKS                       R2 R2 K7 ["AssetConfiguration"]
       19 GETTABLEKS                       R2 R2 K8 ["Permissions"]
       21 GETTABLEKS                       R2 R2 K9 ["PermissionsConstants"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R3 R0 K5 ["Src"]
       28 GETTABLEKS                       R3 R3 K10 ["Actions"]
       30 GETTABLEKS                       R3 R3 K11 ["ClearChange"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K4 [require]
       35 GETTABLEKS                       R4 R0 K5 ["Src"]
       37 GETTABLEKS                       R4 R4 K10 ["Actions"]
       39 GETTABLEKS                       R4 R4 K12 ["NetworkError"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K4 [require]
       44 GETTABLEKS                       R5 R0 K5 ["Src"]
       46 GETTABLEKS                       R5 R5 K10 ["Actions"]
       48 GETTABLEKS                       R5 R5 K13 ["UploadResult"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R6 R0 K5 ["Src"]
       55 GETTABLEKS                       R6 R6 K14 ["Util"]
       57 GETTABLEKS                       R6 R6 K15 ["Analytics"]
       59 GETTABLEKS                       R6 R6 K15 ["Analytics"]
       61 CALL                             R5 1 1
       62 GETTABLEKS                       R6 R0 K16 ["Packages"]
       64 GETIMPORT                        R7 K4 [require]
       66 GETTABLEKS                       R8 R6 K17 ["Framework"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R7 R7 K14 ["Util"]
       71 GETTABLEKS                       R7 R7 K18 ["Promise"]
       73 GETIMPORT                        R8 K20 [game]
       75 LOADK                            R10 K21 ["NewPackageAnalyticsWithRefactor2"]
       76 NAMECALL                         R8 R8 K22 ["GetFastFlag"]
       78 CALL                             R8 2 1
       79 GETIMPORT                        R9 K20 [game]
       81 LOADK                            R11 K23 ["PackagePermsCheckChanges"]
       82 LOADB                            R12 0
       83 NAMECALL                         R9 R9 K24 ["DefineFastFlag"]
       85 CALL                             R9 3 1
       86 GETIMPORT                        R10 K4 [require]
       88 GETTABLEKS                       R11 R0 K5 ["Src"]
       90 GETTABLEKS                       R11 R11 K25 ["Flags"]
       92 GETTABLEKS                       R11 R11 K26 ["getFFlagToolboxFixPackagePermsAddThenRevoke"]
       94 CALL                             R10 1 1
       95 DUPTABLE                         R11 K28 [{"Actions", "SubjectTypes"}]
       96 NEWTABLE                         R12 2 0
       98 GETTABLEKS                       R13 R1 K29 ["UseViewKey"]
      100 LOADK                            R14 K30 ["Use"]
      101 SETTABLE                         R14 R12 R13
      102 GETTABLEKS                       R13 R1 K31 ["EditKey"]
      104 LOADK                            R14 K32 ["Edit"]
      105 SETTABLE                         R14 R12 R13
      106 SETTABLEKS                       R12 R11 K10 ["Actions"]
      108 NEWTABLE                         R12 2 0
      110 GETTABLEKS                       R13 R1 K33 ["UserSubjectKey"]
      112 LOADK                            R14 K34 ["User"]
      113 SETTABLE                         R14 R12 R13
      114 GETTABLEKS                       R13 R1 K35 ["GroupSubjectKey"]
      116 LOADK                            R14 K36 ["Group"]
      117 SETTABLE                         R14 R12 R13
      118 SETTABLEKS                       R12 R11 K27 ["SubjectTypes"]
      120 DUPCLOSURE                       R12 K37 [PROTO_0]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 DUPCLOSURE                       R13 K38 [PROTO_4]
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R4
      134 RETURN                           R13 1
