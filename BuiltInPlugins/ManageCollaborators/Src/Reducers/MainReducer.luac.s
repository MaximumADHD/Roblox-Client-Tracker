MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K2 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Permissions"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K2 ["Parent"]
       31 GETTABLEKS                       R4 R5 K8 ["GranularPermissions"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K2 ["Parent"]
       40 GETTABLEKS                       R5 R6 K9 ["GroupMetadata"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R7 R8 K2 ["Parent"]
       49 GETTABLEKS                       R6 R7 K10 ["GroupRolePermissions"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R8 R9 K2 ["Parent"]
       58 GETTABLEKS                       R7 R8 K11 ["GameOwnerMetadata"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R9 R10 K2 ["Parent"]
       67 GETTABLEKS                       R8 R9 K12 ["CollaboratorSearch"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R10 R11 K2 ["Parent"]
       76 GETTABLEKS                       R9 R10 K13 ["LoadState"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETIMPORT                        R12 K1 [script]
       83 GETTABLEKS                       R11 R12 K2 ["Parent"]
       85 GETTABLEKS                       R10 R11 K14 ["SaveState"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K4 [require]
       90 GETIMPORT                        R13 K1 [script]
       92 GETTABLEKS                       R12 R13 K2 ["Parent"]
       94 GETTABLEKS                       R11 R12 K15 ["FilterPills"]
       96 CALL                             R10 1 1
       97 LOADNIL                          R11
       98 GETIMPORT                        R12 K17 [game]
      100 LOADK                            R14 K18 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      101 NAMECALL                         R12 R12 K19 ["GetFastFlag"]
      103 CALL                             R12 2 1
      104 JUMPIFNOT                        R12 ; [+10]
      105 GETIMPORT                        R13 K4 [require]
      107 GETIMPORT                        R16 K1 [script]
      109 GETTABLEKS                       R15 R16 K2 ["Parent"]
      111 GETTABLEKS                       R14 R15 K20 ["SearchItemLogs"]
      113 CALL                             R13 1 1
      114 MOVE                             R11 R13
      115 GETTABLEKS                       R13 R1 K21 ["combineReducers"]
      117 DUPTABLE                         R14 K22 [{"GameOwnerMetadata", "Permissions", "GranularPermissions", "GroupMetadata", "GroupRolePermissions", "CollaboratorSearch", "LoadState", "SaveState", "FilterPills", "SearchItemLogs"}]
      118 SETTABLEKS                       R6 R14 K11 ["GameOwnerMetadata"]
      120 SETTABLEKS                       R2 R14 K7 ["Permissions"]
      122 SETTABLEKS                       R3 R14 K8 ["GranularPermissions"]
      124 SETTABLEKS                       R4 R14 K9 ["GroupMetadata"]
      126 SETTABLEKS                       R5 R14 K10 ["GroupRolePermissions"]
      128 SETTABLEKS                       R7 R14 K12 ["CollaboratorSearch"]
      130 SETTABLEKS                       R8 R14 K13 ["LoadState"]
      132 SETTABLEKS                       R9 R14 K14 ["SaveState"]
      134 SETTABLEKS                       R10 R14 K15 ["FilterPills"]
      136 JUMPIFNOT                        R12 ; [+2]
      137 MOVE                             R15 R11
      138 JUMP                             ; [+1]
      139 LOADNIL                          R15
      140 SETTABLEKS                       R15 R14 K20 ["SearchItemLogs"]
      142 CALL                             R13 1 1
      143 RETURN                           R13 1
