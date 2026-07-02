MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Bin"]
       20 GETTABLEKS                       R3 R3 K8 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K2 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["Permissions"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K2 ["Parent"]
       38 GETTABLEKS                       R5 R5 K10 ["GranularPermissions"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K2 ["Parent"]
       47 GETTABLEKS                       R6 R6 K11 ["GroupMetadata"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K2 ["Parent"]
       56 GETTABLEKS                       R7 R7 K12 ["GroupRolePermissions"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K2 ["Parent"]
       65 GETTABLEKS                       R8 R8 K13 ["GameOwnerMetadata"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K4 [require]
       70 GETIMPORT                        R9 K1 [script]
       72 GETTABLEKS                       R9 R9 K2 ["Parent"]
       74 GETTABLEKS                       R9 R9 K14 ["CollaboratorSearch"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K4 [require]
       79 GETIMPORT                        R10 K1 [script]
       81 GETTABLEKS                       R10 R10 K2 ["Parent"]
       83 GETTABLEKS                       R10 R10 K15 ["LoadState"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K4 [require]
       88 GETIMPORT                        R11 K1 [script]
       90 GETTABLEKS                       R11 R11 K2 ["Parent"]
       92 GETTABLEKS                       R11 R11 K16 ["SaveState"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K4 [require]
       97 GETIMPORT                        R12 K1 [script]
       99 GETTABLEKS                       R12 R12 K2 ["Parent"]
      101 GETTABLEKS                       R12 R12 K17 ["FilterPills"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K4 [require]
      106 GETTABLEKS                       R13 R0 K18 ["Src"]
      108 GETTABLEKS                       R13 R13 K19 ["Reducers"]
      110 GETTABLEKS                       R13 R13 K20 ["CanCollaborateResponses"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K4 [require]
      115 GETTABLEKS                       R14 R0 K18 ["Src"]
      117 GETTABLEKS                       R14 R14 K19 ["Reducers"]
      119 GETTABLEKS                       R14 R14 K21 ["RequiresTrustedConnectionData"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K4 [require]
      124 GETIMPORT                        R15 K1 [script]
      126 GETTABLEKS                       R15 R15 K2 ["Parent"]
      128 GETTABLEKS                       R15 R15 K22 ["GroupMigrationStatus"]
      130 CALL                             R14 1 1
      131 LOADNIL                          R15
      132 GETIMPORT                        R16 K24 [game]
      134 LOADK                            R18 K25 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      135 NAMECALL                         R16 R16 K26 ["GetFastFlag"]
      137 CALL                             R16 2 1
      138 JUMPIFNOT                        R16 ; [+10]
      139 GETIMPORT                        R17 K4 [require]
      141 GETIMPORT                        R18 K1 [script]
      143 GETTABLEKS                       R18 R18 K2 ["Parent"]
      145 GETTABLEKS                       R18 R18 K27 ["SearchItemLogs"]
      147 CALL                             R17 1 1
      148 MOVE                             R15 R17
      149 GETTABLEKS                       R17 R1 K28 ["combineReducers"]
      151 DUPTABLE                         R18 K29 [{"GameOwnerMetadata", "Permissions", "GranularPermissions", "GroupMetadata", "GroupRolePermissions", "CollaboratorSearch", "LoadState", "SaveState", "FilterPills", "SearchItemLogs", "CanCollaborateResponses", "RequiresTrustedConnectionData", "GroupMigrationStatus"}]
      152 SETTABLEKS                       R7 R18 K13 ["GameOwnerMetadata"]
      154 SETTABLEKS                       R3 R18 K9 ["Permissions"]
      156 SETTABLEKS                       R4 R18 K10 ["GranularPermissions"]
      158 SETTABLEKS                       R5 R18 K11 ["GroupMetadata"]
      160 SETTABLEKS                       R6 R18 K12 ["GroupRolePermissions"]
      162 SETTABLEKS                       R8 R18 K14 ["CollaboratorSearch"]
      164 SETTABLEKS                       R9 R18 K15 ["LoadState"]
      166 SETTABLEKS                       R10 R18 K16 ["SaveState"]
      168 SETTABLEKS                       R11 R18 K17 ["FilterPills"]
      170 JUMPIFNOT                        R16 ; [+2]
      171 MOVE                             R19 R15
      172 JUMP                             ; [+1]
      173 LOADNIL                          R19
      174 SETTABLEKS                       R19 R18 K27 ["SearchItemLogs"]
      176 GETTABLEKS                       R20 R2 K30 ["fflagManageCollaboratorsActionNeededLabel"]
      178 JUMPIF                           R20 ; [+12]
      179 GETTABLEKS                       R20 R2 K31 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      181 JUMPIF                           R20 ; [+9]
      182 GETTABLEKS                       R20 R2 K32 ["fflagManageCollaboratorsEditorBlockingBanner"]
      184 JUMPIF                           R20 ; [+6]
      185 GETTABLEKS                       R20 R2 K33 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      187 JUMPIF                           R20 ; [+3]
      188 GETTABLEKS                       R20 R2 K34 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      190 JUMPIFNOT                        R20 ; [+2]
      191 MOVE                             R19 R12
      192 JUMP                             ; [+1]
      193 LOADNIL                          R19
      194 SETTABLEKS                       R19 R18 K20 ["CanCollaborateResponses"]
      196 GETTABLEKS                       R20 R2 K32 ["fflagManageCollaboratorsEditorBlockingBanner"]
      198 JUMPIFNOT                        R20 ; [+2]
      199 MOVE                             R19 R13
      200 JUMP                             ; [+1]
      201 LOADNIL                          R19
      202 SETTABLEKS                       R19 R18 K21 ["RequiresTrustedConnectionData"]
      204 GETTABLEKS                       R20 R2 K35 ["fflagCollabPV2GroupMigration"]
      206 JUMPIFNOT                        R20 ; [+2]
      207 MOVE                             R19 R14
      208 JUMP                             ; [+1]
      209 LOADNIL                          R19
      210 SETTABLEKS                       R19 R18 K22 ["GroupMigrationStatus"]
      212 CALL                             R17 1 1
      213 RETURN                           R17 1
