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
      131 GETIMPORT                        R15 K4 [require]
      133 GETIMPORT                        R16 K1 [script]
      135 GETTABLEKS                       R16 R16 K2 ["Parent"]
      137 GETTABLEKS                       R16 R16 K23 ["EarlyTesters"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K4 [require]
      142 GETIMPORT                        R17 K1 [script]
      144 GETTABLEKS                       R17 R17 K2 ["Parent"]
      146 GETTABLEKS                       R17 R17 K24 ["PendingPlayTesters"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K4 [require]
      151 GETIMPORT                        R18 K1 [script]
      153 GETTABLEKS                       R18 R18 K2 ["Parent"]
      155 GETTABLEKS                       R18 R18 K25 ["SearchItemLogs"]
      157 CALL                             R17 1 1
      158 GETTABLEKS                       R18 R1 K26 ["combineReducers"]
      160 DUPTABLE                         R19 K27 [{"GameOwnerMetadata", "Permissions", "GranularPermissions", "GroupMetadata", "GroupRolePermissions", "CollaboratorSearch", "LoadState", "SaveState", "FilterPills", "SearchItemLogs", "CanCollaborateResponses", "RequiresTrustedConnectionData", "GroupMigrationStatus", "EarlyTesters", "PendingPlayTesters"}]
      161 SETTABLEKS                       R7 R19 K13 ["GameOwnerMetadata"]
      163 SETTABLEKS                       R3 R19 K9 ["Permissions"]
      165 SETTABLEKS                       R4 R19 K10 ["GranularPermissions"]
      167 SETTABLEKS                       R5 R19 K11 ["GroupMetadata"]
      169 SETTABLEKS                       R6 R19 K12 ["GroupRolePermissions"]
      171 SETTABLEKS                       R8 R19 K14 ["CollaboratorSearch"]
      173 SETTABLEKS                       R9 R19 K15 ["LoadState"]
      175 SETTABLEKS                       R10 R19 K16 ["SaveState"]
      177 SETTABLEKS                       R11 R19 K17 ["FilterPills"]
      179 SETTABLEKS                       R17 R19 K25 ["SearchItemLogs"]
      181 GETTABLEKS                       R21 R2 K28 ["fflagManageCollaboratorsActionNeededLabel"]
      183 JUMPIF                           R21 ; [+15]
      184 GETTABLEKS                       R21 R2 K29 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      186 JUMPIF                           R21 ; [+12]
      187 GETTABLEKS                       R21 R2 K30 ["fflagManageCollaboratorsEditorBlockingBanner"]
      189 JUMPIF                           R21 ; [+9]
      190 GETTABLEKS                       R21 R2 K31 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      192 JUMPIF                           R21 ; [+6]
      193 GETTABLEKS                       R21 R2 K32 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      195 JUMPIF                           R21 ; [+3]
      196 GETTABLEKS                       R21 R2 K33 ["fflagGroupGameEarlyTesters"]
      198 JUMPIFNOT                        R21 ; [+2]
      199 MOVE                             R20 R12
      200 JUMP                             ; [+1]
      201 LOADNIL                          R20
      202 SETTABLEKS                       R20 R19 K20 ["CanCollaborateResponses"]
      204 GETTABLEKS                       R21 R2 K30 ["fflagManageCollaboratorsEditorBlockingBanner"]
      206 JUMPIFNOT                        R21 ; [+2]
      207 MOVE                             R20 R13
      208 JUMP                             ; [+1]
      209 LOADNIL                          R20
      210 SETTABLEKS                       R20 R19 K21 ["RequiresTrustedConnectionData"]
      212 GETTABLEKS                       R21 R2 K34 ["fflagCollabPV2GroupMigration"]
      214 JUMPIFNOT                        R21 ; [+2]
      215 MOVE                             R20 R14
      216 JUMP                             ; [+1]
      217 LOADNIL                          R20
      218 SETTABLEKS                       R20 R19 K22 ["GroupMigrationStatus"]
      220 GETTABLEKS                       R21 R2 K33 ["fflagGroupGameEarlyTesters"]
      222 JUMPIFNOT                        R21 ; [+2]
      223 MOVE                             R20 R15
      224 JUMP                             ; [+1]
      225 LOADNIL                          R20
      226 SETTABLEKS                       R20 R19 K23 ["EarlyTesters"]
      228 GETTABLEKS                       R21 R2 K35 ["fflagAddPlayTesterPermission"]
      230 JUMPIFNOT                        R21 ; [+2]
      231 MOVE                             R20 R16
      232 JUMP                             ; [+1]
      233 LOADNIL                          R20
      234 SETTABLEKS                       R20 R19 K24 ["PendingPlayTesters"]
      236 CALL                             R18 1 1
      237 RETURN                           R18 1
