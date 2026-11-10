PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagStudioAssistantPermissionsHideNetwork"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["ForcedExecutionPermissions.grantAsync requires FFlagStudioAssistantPermissionsHideNetwork"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 NAMECALL                         R1 R0 K4 ["GetAvailablePermissionsAsync"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 0 0
       14 LOADB                            R3 0
       15 LOADB                            R4 0
       16 MOVE                             R5 R1
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 FASTCALL1                        TYPEOF R9 ; [+3]
       21 MOVE                             R11 R9
       22 GETIMPORT                        R10 K6 [typeof]
       24 CALL                             R10 1 1
       25 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+44]
       27 GETTABLEKS                       R10 R9 K8 ["key"]
       29 JUMPIFNOT                        R10 ; [+40]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K9 ["KEYS"]
       33 GETTABLEKS                       R12 R9 K8 ["key"]
       35 GETTABLE                         R10 R11 R12
       36 JUMPIFNOT                        R10 ; [+17]
       37 GETTABLEKS                       R12 R9 K8 ["key"]
       39 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       41 MOVE                             R11 R2
       42 GETIMPORT                        R10 K11 [table.insert]
       44 CALL                             R10 2 0
       45 GETTABLEKS                       R12 R9 K8 ["key"]
       47 NAMECALL                         R10 R0 K12 ["GetPermissionAsync"]
       49 CALL                             R10 2 1
       50 JUMPIFEQKS                       R10 K13 ["accept"] ; [+19]
       52 LOADB                            R3 1
       53 JUMP                             ; [+16]
       54 GETTABLEKS                       R12 R9 K8 ["key"]
       56 NAMECALL                         R10 R0 K12 ["GetPermissionAsync"]
       58 CALL                             R10 2 1
       59 JUMPIFNOTEQKS                    R10 K13 ["accept"] ; [+10]
       61 GETTABLEKS                       R12 R9 K8 ["key"]
       63 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       65 MOVE                             R11 R2
       66 GETIMPORT                        R10 K11 [table.insert]
       68 CALL                             R10 2 0
       69 LOADB                            R4 1
       70 FORGLOOP                         R5 2 ; [-51]
       72 JUMPIFNOT                        R3 ; [+1]
       73 JUMPIF                           R4 ; [+2]
       74 LOADB                            R5 0
       75 RETURN                           R5 1
       76 NAMECALL                         R5 R0 K14 ["GetAllowedHttpDomainsAsync"]
       78 CALL                             R5 1 1
       79 NEWTABLE                         R6 0 0
       81 MOVE                             R7 R5
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 FORGPREP                         R7
       85 FASTCALL1                        TYPEOF R11 ; [+3]
       86 MOVE                             R13 R11
       87 GETIMPORT                        R12 K6 [typeof]
       89 CALL                             R12 1 1
       90 JUMPIFNOTEQKS                    R12 K15 ["string"] ; [+8]
       92 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       94 MOVE                             R13 R6
       95 MOVE                             R14 R11
       96 GETIMPORT                        R12 K11 [table.insert]
       98 CALL                             R12 2 0
       99 FORGLOOP                         R7 2 ; [-15]
      101 MOVE                             R9 R2
      102 MOVE                             R10 R6
      103 NAMECALL                         R7 R0 K16 ["SavePermissionsAsync"]
      105 CALL                             R7 3 1
      106 JUMPIFEQKB                       R7 TRUE ; [+13]
      108 GETIMPORT                        R8 K18 [error]
      110 LOADK                            R9 K19 ["SavePermissionsAsync returned %*"]
      111 FASTCALL1                        TOSTRING R7 ; [+3]
      112 MOVE                             R12 R7
      113 GETIMPORT                        R11 K21 [tostring]
      115 CALL                             R11 1 1
      116 NAMECALL                         R9 R9 K22 ["format"]
      118 CALL                             R9 2 1
      119 CALL                             R8 1 0
      120 LOADB                            R8 1
      121 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 2 0
       14 NEWTABLE                         R3 1 0
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K7 ["script-capability:Network"]
       19 SETTABLEKS                       R3 R2 K8 ["KEYS"]
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K10 ["grantAsync"]
       26 RETURN                           R2 1
