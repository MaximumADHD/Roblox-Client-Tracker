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
       27 JUMPIFNOTEQ                      R13 R15 ; [+18]
       29 LOADK                            R14 K1 ["RevokeRequests"]
       30 GETTABLE                         R16 R1 R6
       31 GETTABLE                         R15 R16 R11
       32 FASTCALL1                        ASSERT R15 ; [+3]
       33 MOVE                             R17 R15
       34 GETIMPORT                        R16 K8 [assert]
       36 CALL                             R16 1 0
       37 GETUPVAL                         R16 0
       38 GETTABLEKS                       R16 R16 K5 ["ActionKey"]
       40 GETTABLE                         R13 R15 R16
       41 FASTCALL1                        ASSERT R13 ; [+3]
       42 MOVE                             R17 R13
       43 GETIMPORT                        R16 K8 [assert]
       45 CALL                             R16 1 0
       46 GETUPVAL                         R16 1
       47 GETTABLEKS                       R16 R16 K9 ["Actions"]
       49 GETTABLE                         R15 R16 R13
       50 JUMPIFNOT                        R15 ; [+22]
       51 GETUPVAL                         R17 1
       52 GETTABLEKS                       R17 R17 K10 ["SubjectTypes"]
       54 GETTABLE                         R16 R17 R6
       55 FASTCALL1                        ASSERT R16 ; [+3]
       56 MOVE                             R18 R16
       57 GETIMPORT                        R17 K8 [assert]
       59 CALL                             R17 1 0
       60 GETTABLE                         R18 R2 R14
       61 DUPTABLE                         R19 K14 [{"subjectType", "subjectId", "action"}]
       62 SETTABLEKS                       R16 R19 K11 ["subjectType"]
       64 SETTABLEKS                       R11 R19 K12 ["subjectId"]
       66 SETTABLEKS                       R15 R19 K13 ["action"]
       68 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       70 GETIMPORT                        R17 K17 [table.insert]
       72 CALL                             R17 2 0
       73 FORGLOOP                         R8 2 ; [-55]
       75 FORGLOOP                         R3 2 ; [-62]
       77 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL1                        ASSERT R3 ; [+2]
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 1 0
        7 NEWTABLE                         R2 0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["GroupSubjectKey"]
       12 NEWTABLE                         R4 0 0
       14 SETTABLE                         R4 R2 R3
       15 JUMPIFNOT                        R0 ; [+39]
       16 GETIMPORT                        R3 K4 [next]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 JUMPIFEQKNIL                     R3 ; [+34]
       22 GETIMPORT                        R3 K6 [pairs]
       24 MOVE                             R4 R0
       25 CALL                             R3 1 3
       26 FORGPREP_NEXT                    R3
       27 NEWTABLE                         R8 0 0
       29 SETTABLE                         R8 R2 R6
       30 FORGLOOP                         R3 2 ; [-4]
       32 GETIMPORT                        R3 K6 [pairs]
       34 MOVE                             R4 R0
       35 CALL                             R3 1 3
       36 FORGPREP_NEXT                    R3
       37 GETIMPORT                        R8 K6 [pairs]
       39 MOVE                             R9 R7
       40 CALL                             R8 1 3
       41 FORGPREP_NEXT                    R8
       42 GETTABLE                         R13 R2 R6
       43 DUPTABLE                         R14 K8 [{"Action"}]
       44 GETUPVAL                         R16 1
       45 GETTABLEKS                       R16 R16 K9 ["ActionKey"]
       47 GETTABLE                         R15 R12 R16
       48 SETTABLEKS                       R15 R14 K7 ["Action"]
       50 SETTABLE                         R14 R13 R11
       51 FORGLOOP                         R8 2 ; [-10]
       53 FORGLOOP                         R3 2 ; [-17]
       55 JUMPIFNOT                        R1 ; [+36]
       56 GETIMPORT                        R3 K4 [next]
       58 MOVE                             R4 R1
       59 CALL                             R3 1 1
       60 JUMPIFEQKNIL                     R3 ; [+31]
       62 GETIMPORT                        R3 K6 [pairs]
       64 MOVE                             R4 R1
       65 CALL                             R3 1 3
       66 FORGPREP_NEXT                    R3
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K2 ["GroupSubjectKey"]
       70 GETTABLE                         R8 R2 R9
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K2 ["GroupSubjectKey"]
       74 GETTABLE                         R10 R2 R11
       75 GETTABLE                         R9 R10 R6
       76 JUMPIF                           R9 ; [+2]
       77 NEWTABLE                         R9 0 0
       79 SETTABLE                         R9 R8 R6
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K2 ["GroupSubjectKey"]
       83 GETTABLE                         R8 R2 R9
       84 DUPTABLE                         R9 K8 [{"Action"}]
       85 GETTABLEKS                       R10 R7 K7 ["Action"]
       87 SETTABLEKS                       R10 R9 K7 ["Action"]
       89 SETTABLE                         R9 R8 R6
       90 FORGLOOP                         R3 2 ; [-24]
       92 NEWTABLE                         R3 0 0
       94 GETIMPORT                        R4 K6 [pairs]
       96 MOVE                             R5 R2
       97 CALL                             R4 1 3
       98 FORGPREP_NEXT                    R4
       99 GETIMPORT                        R9 K6 [pairs]
      101 MOVE                             R10 R8
      102 CALL                             R9 1 3
      103 FORGPREP_NEXT                    R9
      104 NEWTABLE                         R16 4 0
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R17 R17 K10 ["SubjectType"]
      109 GETUPVAL                         R18 3
      110 GETTABLEKS                       R18 R18 K11 ["getWebSubjectType"]
      112 MOVE                             R19 R7
      113 CALL                             R18 1 1
      114 SETTABLE                         R18 R16 R17
      115 GETUPVAL                         R17 2
      116 GETTABLEKS                       R17 R17 K12 ["SubjectId"]
      118 SETTABLE                         R12 R16 R17
      119 GETUPVAL                         R17 2
      120 GETTABLEKS                       R17 R17 K7 ["Action"]
      122 GETUPVAL                         R18 3
      123 GETTABLEKS                       R18 R18 K13 ["getWebAction"]
      125 GETTABLEKS                       R19 R13 K7 ["Action"]
      127 CALL                             R18 1 1
      128 SETTABLE                         R18 R16 R17
      129 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
      131 MOVE                             R15 R3
      132 GETIMPORT                        R14 K16 [table.insert]
      134 CALL                             R14 2 0
      135 FORGLOOP                         R9 2 ; [-32]
      137 FORGLOOP                         R4 2 ; [-39]
      139 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL1                        ASSERT R3 ; [+2]
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 NEWTABLE                         R3 1 0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["Requests"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLE                         R5 R3 R4
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K2 ["Requests"]
       22 GETTABLE                         R4 R3 R5
       23 GETIMPORT                        R5 K4 [pairs]
       25 MOVE                             R6 R2
       26 CALL                             R5 1 3
       27 FORGPREP_NEXT                    R5
       28 GETUPVAL                         R11 2
       29 GETTABLEKS                       R11 R11 K5 ["Action"]
       31 GETTABLE                         R10 R9 R11
       32 GETUPVAL                         R11 3
       33 JUMPIFEQ                         R10 R11 ; [+41]
       35 NEWTABLE                         R13 4 0
       37 GETUPVAL                         R14 2
       38 GETTABLEKS                       R14 R14 K6 ["SubjectType"]
       40 GETUPVAL                         R15 4
       41 GETTABLEKS                       R15 R15 K7 ["getAssetPermissionSubjectType"]
       43 GETUPVAL                         R17 2
       44 GETTABLEKS                       R17 R17 K6 ["SubjectType"]
       46 GETTABLE                         R16 R9 R17
       47 CALL                             R15 1 1
       48 SETTABLE                         R15 R13 R14
       49 GETUPVAL                         R14 2
       50 GETTABLEKS                       R14 R14 K8 ["SubjectId"]
       52 GETUPVAL                         R16 2
       53 GETTABLEKS                       R16 R16 K8 ["SubjectId"]
       55 GETTABLE                         R15 R9 R16
       56 SETTABLE                         R15 R13 R14
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K5 ["Action"]
       60 GETUPVAL                         R15 4
       61 GETTABLEKS                       R15 R15 K9 ["getAssetPermissionAction"]
       63 GETUPVAL                         R17 2
       64 GETTABLEKS                       R17 R17 K5 ["Action"]
       66 GETTABLE                         R16 R9 R17
       67 CALL                             R15 1 1
       68 SETTABLE                         R15 R13 R14
       69 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       71 MOVE                             R12 R4
       72 GETIMPORT                        R11 K12 [table.insert]
       74 CALL                             R11 2 0
       75 FORGLOOP                         R5 2 ; [-48]
       77 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL1                        ASSERT R4 ; [+2]
        4 GETIMPORT                        R3 K1 [assert]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R2
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 NEWTABLE                         R5 0 0
       17 NEWTABLE                         R6 1 0
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K2 ["Requests"]
       22 NEWTABLE                         R8 0 0
       24 SETTABLE                         R8 R6 R7
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K2 ["Requests"]
       28 GETTABLE                         R7 R6 R8
       29 GETIMPORT                        R8 K4 [pairs]
       31 MOVE                             R9 R4
       32 CALL                             R8 1 3
       33 FORGPREP_NEXT                    R8
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R14 R14 K5 ["SubjectId"]
       37 GETTABLE                         R13 R12 R14
       38 GETUPVAL                         R14 3
       39 GETTABLEKS                       R14 R14 K6 ["getAssetPermissionAction"]
       41 GETUPVAL                         R16 2
       42 GETTABLEKS                       R16 R16 K7 ["Action"]
       44 GETTABLE                         R15 R12 R16
       45 CALL                             R14 1 1
       46 SETTABLE                         R14 R5 R13
       47 FORGLOOP                         R8 2 ; [-14]
       49 GETIMPORT                        R8 K4 [pairs]
       51 MOVE                             R9 R3
       52 CALL                             R8 1 3
       53 FORGPREP_NEXT                    R8
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K7 ["Action"]
       57 GETTABLE                         R13 R12 R14
       58 GETUPVAL                         R14 4
       59 JUMPIFNOTEQ                      R13 R14 ; [+38]
       61 GETUPVAL                         R16 2
       62 GETTABLEKS                       R16 R16 K5 ["SubjectId"]
       64 GETTABLE                         R15 R12 R16
       65 GETTABLE                         R14 R5 R15
       66 NEWTABLE                         R17 4 0
       68 GETUPVAL                         R18 2
       69 GETTABLEKS                       R18 R18 K8 ["SubjectType"]
       71 GETUPVAL                         R19 3
       72 GETTABLEKS                       R19 R19 K9 ["getAssetPermissionSubjectType"]
       74 GETUPVAL                         R21 2
       75 GETTABLEKS                       R21 R21 K8 ["SubjectType"]
       77 GETTABLE                         R20 R12 R21
       78 CALL                             R19 1 1
       79 SETTABLE                         R19 R17 R18
       80 GETUPVAL                         R18 2
       81 GETTABLEKS                       R18 R18 K5 ["SubjectId"]
       83 GETUPVAL                         R20 2
       84 GETTABLEKS                       R20 R20 K5 ["SubjectId"]
       86 GETTABLE                         R19 R12 R20
       87 SETTABLE                         R19 R17 R18
       88 GETUPVAL                         R18 2
       89 GETTABLEKS                       R18 R18 K7 ["Action"]
       91 SETTABLE                         R14 R17 R18
       92 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
       94 MOVE                             R16 R7
       95 GETIMPORT                        R15 K12 [table.insert]
       97 CALL                             R15 2 0
       98 FORGLOOP                         R8 2 ; [-45]
      100 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+26]
        2 GETIMPORT                        R1 K1 [pairs]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETUPVAL                         R6 1
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+7]
       10 FASTCALL1                        TYPE R5 ; [+3]
       11 MOVE                             R7 R5
       12 GETIMPORT                        R6 K3 [type]
       14 CALL                             R6 1 1
       15 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+10]
       17 GETTABLEKS                       R6 R5 K5 ["url"]
       19 JUMPIFEQKNIL                     R6 ; [+6]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["sendResultToKibana"]
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 ; [-20]
       28 GETUPVAL                         R1 3
       29 GETUPVAL                         R3 4
       30 LOADK                            R4 K7 ["permissions"]
       31 CALL                             R3 1 -1
       32 NAMECALL                         R1 R1 K8 ["dispatch"]
       34 CALL                             R1 -1 0
       35 GETUPVAL                         R1 1
       36 CALL                             R1 0 1
       37 JUMPIF                           R1 ; [+7]
       38 GETUPVAL                         R1 3
       39 GETUPVAL                         R3 4
       40 LOADK                            R4 K9 ["groupMetadata"]
       41 CALL                             R3 1 -1
       42 NAMECALL                         R1 R1 K8 ["dispatch"]
       44 CALL                             R1 -1 0
       45 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["url"]
        7 JUMPIFEQKNIL                     R1 ; [+6]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["sendResultToKibana"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 5
       17 LOADK                            R6 K2 ["AssetConfigPackagePermissions"]
       18 LOADK                            R7 K3 ["UpdateFailed"]
       19 DUPTABLE                         R8 K5 [{"error"}]
       20 GETTABLEKS                       R9 R0 K6 ["responseBody"]
       22 SETTABLEKS                       R9 R8 K4 ["error"]
       24 NAMECALL                         R4 R4 K7 ["getText"]
       26 CALL                             R4 4 -1
       27 CALL                             R3 -1 -1
       28 NAMECALL                         R1 R1 K8 ["dispatch"]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R1 3
       32 GETUPVAL                         R3 6
       33 LOADB                            R4 0
       34 CALL                             R3 1 -1
       35 NAMECALL                         R1 R1 K8 ["dispatch"]
       37 CALL                             R1 -1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 1
       40 JUMPIFNOT                        R1 ; [+19]
       41 GETUPVAL                         R1 7
       42 CALL                             R1 0 1
       43 JUMPIFNOT                        R1 ; [+7]
       44 FASTCALL1                        TYPE R0 ; [+3]
       45 MOVE                             R2 R0
       46 GETIMPORT                        R1 K10 [type]
       48 CALL                             R1 1 1
       49 JUMPIFNOTEQKS                    R1 K11 ["table"] ; [+10]
       51 GETTABLEKS                       R1 R0 K0 ["url"]
       53 JUMPIFEQKNIL                     R1 ; [+6]
       55 GETUPVAL                         R1 2
       56 GETTABLEKS                       R1 R1 K1 ["sendResultToKibana"]
       58 MOVE                             R2 R0
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 3
       61 GETUPVAL                         R3 4
       62 MOVE                             R4 R0
       63 CALL                             R3 1 -1
       64 NAMECALL                         R1 R1 K8 ["dispatch"]
       66 CALL                             R1 -1 0
       67 RETURN                           R0 0

PROTO_6:
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
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 GETUPVAL                         R5 2
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+61]
       39 GETTABLEKS                       R5 R1 K6 ["permissions"]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K9 ["RoleSubjectKey"]
       44 LOADNIL                          R7
       45 SETTABLE                         R7 R5 R6
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R6 R1 K6 ["permissions"]
       49 MOVE                             R7 R2
       50 CALL                             R5 2 1
       51 GETTABLEKS                       R7 R5 K10 ["GrantRequests"]
       53 LENGTH                           R6 R7
       54 LOADN                            R7 0
       55 JUMPIFNOTLT                      R7 R6 ; [+13]
       57 GETUPVAL                         R6 5
       58 GETUPVAL                         R8 6
       59 DUPTABLE                         R9 K12 [{"requests"}]
       60 GETTABLEKS                       R10 R5 K10 ["GrantRequests"]
       62 SETTABLEKS                       R10 R9 K11 ["requests"]
       64 NAMECALL                         R6 R6 K13 ["grantAssetPermissions"]
       66 CALL                             R6 3 1
       67 MOVE                             R3 R6
       68 JUMP                             ; [+6]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K7 ["resolve"]
       72 LOADB                            R7 1
       73 CALL                             R6 1 1
       74 MOVE                             R3 R6
       75 GETTABLEKS                       R7 R5 K14 ["RevokeRequests"]
       77 LENGTH                           R6 R7
       78 LOADN                            R7 0
       79 JUMPIFNOTLT                      R7 R6 ; [+13]
       81 GETUPVAL                         R6 5
       82 GETUPVAL                         R8 6
       83 DUPTABLE                         R9 K12 [{"requests"}]
       84 GETTABLEKS                       R10 R5 K14 ["RevokeRequests"]
       86 SETTABLEKS                       R10 R9 K11 ["requests"]
       88 NAMECALL                         R6 R6 K15 ["revokeAssetPermissions"]
       90 CALL                             R6 3 1
       91 MOVE                             R4 R6
       92 JUMP                             ; [+64]
       93 GETUPVAL                         R6 1
       94 GETTABLEKS                       R6 R6 K7 ["resolve"]
       96 LOADB                            R7 1
       97 CALL                             R6 1 1
       98 MOVE                             R4 R6
       99 JUMP                             ; [+57]
      100 GETUPVAL                         R5 7
      101 GETTABLEKS                       R6 R1 K6 ["permissions"]
      103 GETTABLEKS                       R7 R1 K16 ["groupMetadata"]
      105 CALL                             R5 2 1
      106 GETUPVAL                         R6 8
      107 GETTABLEKS                       R7 R1 K6 ["permissions"]
      109 GETTABLEKS                       R8 R1 K16 ["groupMetadata"]
      111 MOVE                             R9 R2
      112 CALL                             R6 3 1
      113 GETIMPORT                        R8 K3 [next]
      115 GETUPVAL                         R10 9
      116 GETTABLEKS                       R10 R10 K17 ["Requests"]
      118 GETTABLE                         R9 R5 R10
      119 CALL                             R8 1 1
      120 JUMPIFNOTEQKNIL                  R8 ; [+7]
      122 GETUPVAL                         R7 1
      123 GETTABLEKS                       R7 R7 K7 ["resolve"]
      125 LOADB                            R8 1
      126 CALL                             R7 1 1
      127 JUMPIF                           R7 ; [+6]
      128 GETUPVAL                         R7 5
      129 GETUPVAL                         R9 6
      130 MOVE                             R10 R5
      131 NAMECALL                         R7 R7 K13 ["grantAssetPermissions"]
      133 CALL                             R7 3 1
      134 MOVE                             R3 R7
      135 GETIMPORT                        R8 K3 [next]
      137 GETUPVAL                         R10 9
      138 GETTABLEKS                       R10 R10 K17 ["Requests"]
      140 GETTABLE                         R9 R6 R10
      141 CALL                             R8 1 1
      142 JUMPIFNOTEQKNIL                  R8 ; [+7]
      144 GETUPVAL                         R7 1
      145 GETTABLEKS                       R7 R7 K7 ["resolve"]
      147 LOADB                            R8 1
      148 CALL                             R7 1 1
      149 JUMPIF                           R7 ; [+6]
      150 GETUPVAL                         R7 5
      151 GETUPVAL                         R9 6
      152 MOVE                             R10 R6
      153 NAMECALL                         R7 R7 K15 ["revokeAssetPermissions"]
      155 CALL                             R7 3 1
      156 MOVE                             R4 R7
      157 GETUPVAL                         R5 1
      158 GETTABLEKS                       R5 R5 K18 ["all"]
      160 NEWTABLE                         R6 0 2
      162 MOVE                             R7 R3
      163 MOVE                             R8 R4
      164 SETLIST                          R6 R7 2 [1]
      166 CALL                             R5 1 1
      167 NEWCLOSURE                       R7 P0
      168 CAPTURE                          UPVAL U10
      169 CAPTURE                          UPVAL U2
      170 CAPTURE                          UPVAL U11
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U12
      173 NEWCLOSURE                       R8 P1
      174 CAPTURE                          UPVAL U13
      175 CAPTURE                          UPVAL U10
      176 CAPTURE                          UPVAL U11
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U14
      179 CAPTURE                          UPVAL U15
      180 CAPTURE                          UPVAL U16
      181 CAPTURE                          UPVAL U2
      182 NAMECALL                         R5 R5 K19 ["andThen"]
      184 CALL                             R5 3 -1
      185 RETURN                           R5 -1

PROTO_7:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U13
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagAACPermissionsPage"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Components"]
       26 GETTABLEKS                       R3 R3 K9 ["AssetConfiguration"]
       28 GETTABLEKS                       R3 R3 K10 ["Permissions"]
       30 GETTABLEKS                       R3 R3 K11 ["PermissionsConstants"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K4 [require]
       35 GETTABLEKS                       R4 R0 K5 ["Src"]
       37 GETTABLEKS                       R4 R4 K12 ["Util"]
       39 GETTABLEKS                       R4 R4 K10 ["Permissions"]
       41 GETTABLEKS                       R4 R4 K13 ["KeyConverter"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K4 [require]
       46 GETTABLEKS                       R5 R0 K5 ["Src"]
       48 GETTABLEKS                       R5 R5 K12 ["Util"]
       50 GETTABLEKS                       R5 R5 K10 ["Permissions"]
       52 GETTABLEKS                       R5 R5 K14 ["Constants"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R4 R4 K15 ["webKeys"]
       57 GETIMPORT                        R5 K4 [require]
       59 GETTABLEKS                       R6 R0 K5 ["Src"]
       61 GETTABLEKS                       R6 R6 K16 ["Actions"]
       63 GETTABLEKS                       R6 R6 K17 ["ClearChange"]
       65 CALL                             R5 1 1
       66 GETIMPORT                        R6 K4 [require]
       68 GETTABLEKS                       R7 R0 K5 ["Src"]
       70 GETTABLEKS                       R7 R7 K16 ["Actions"]
       72 GETTABLEKS                       R7 R7 K18 ["NetworkError"]
       74 CALL                             R6 1 1
       75 GETIMPORT                        R7 K4 [require]
       77 GETTABLEKS                       R8 R0 K5 ["Src"]
       79 GETTABLEKS                       R8 R8 K16 ["Actions"]
       81 GETTABLEKS                       R8 R8 K19 ["UploadResult"]
       83 CALL                             R7 1 1
       84 GETIMPORT                        R8 K4 [require]
       86 GETTABLEKS                       R9 R0 K5 ["Src"]
       88 GETTABLEKS                       R9 R9 K12 ["Util"]
       90 GETTABLEKS                       R9 R9 K20 ["Analytics"]
       92 GETTABLEKS                       R9 R9 K20 ["Analytics"]
       94 CALL                             R8 1 1
       95 GETTABLEKS                       R9 R0 K21 ["Packages"]
       97 GETIMPORT                        R10 K4 [require]
       99 GETTABLEKS                       R11 R9 K22 ["Framework"]
      101 CALL                             R10 1 1
      102 GETTABLEKS                       R10 R10 K12 ["Util"]
      104 GETTABLEKS                       R10 R10 K23 ["Promise"]
      106 GETIMPORT                        R11 K25 [game]
      108 LOADK                            R13 K26 ["NewPackageAnalyticsWithRefactor2"]
      109 NAMECALL                         R11 R11 K27 ["GetFastFlag"]
      111 CALL                             R11 2 1
      112 GETIMPORT                        R12 K4 [require]
      114 GETTABLEKS                       R13 R0 K5 ["Src"]
      116 GETTABLEKS                       R13 R13 K6 ["Flags"]
      118 GETTABLEKS                       R13 R13 K28 ["getFFlagAssetConfigPermissionFailure"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K25 [game]
      123 LOADK                            R15 K29 ["PackagePermsCheckChanges"]
      124 LOADB                            R16 0
      125 NAMECALL                         R13 R13 K30 ["DefineFastFlag"]
      127 CALL                             R13 3 1
      128 MOVE                             R15 R1
      129 CALL                             R15 0 1
      130 JUMPIF                           R15 ; [+6]
      131 GETTABLEKS                       R14 R3 K31 ["getWebAction"]
      133 GETTABLEKS                       R15 R2 K32 ["NoAccessKey"]
      135 CALL                             R14 1 1
      136 JUMPIF                           R14 ; [+1]
      137 LOADNIL                          R14
      138 DUPTABLE                         R15 K34 [{"Actions", "SubjectTypes"}]
      139 NEWTABLE                         R16 2 0
      141 GETTABLEKS                       R17 R2 K35 ["UseViewKey"]
      143 LOADK                            R18 K36 ["Use"]
      144 SETTABLE                         R18 R16 R17
      145 GETTABLEKS                       R17 R2 K37 ["EditKey"]
      147 LOADK                            R18 K38 ["Edit"]
      148 SETTABLE                         R18 R16 R17
      149 SETTABLEKS                       R16 R15 K16 ["Actions"]
      151 NEWTABLE                         R16 2 0
      153 GETTABLEKS                       R17 R2 K39 ["UserSubjectKey"]
      155 LOADK                            R18 K40 ["User"]
      156 SETTABLE                         R18 R16 R17
      157 GETTABLEKS                       R17 R2 K41 ["GroupSubjectKey"]
      159 LOADK                            R18 K42 ["Group"]
      160 SETTABLE                         R18 R16 R17
      161 SETTABLEKS                       R16 R15 K33 ["SubjectTypes"]
      163 DUPCLOSURE                       R16 K43 [PROTO_0]
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R15
      166 DUPCLOSURE                       R17 K44 [PROTO_1]
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R3
      171 DUPCLOSURE                       R18 K45 [PROTO_2]
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R3
      177 DUPCLOSURE                       R19 K46 [PROTO_3]
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R14
      183 DUPCLOSURE                       R20 K47 [PROTO_7]
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R7
      198 RETURN                           R20 1
