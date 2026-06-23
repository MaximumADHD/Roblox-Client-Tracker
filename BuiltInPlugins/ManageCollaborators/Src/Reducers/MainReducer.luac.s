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
      122 LOADNIL                          R14
      123 GETIMPORT                        R15 K23 [game]
      125 LOADK                            R17 K24 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      126 NAMECALL                         R15 R15 K25 ["GetFastFlag"]
      128 CALL                             R15 2 1
      129 JUMPIFNOT                        R15 ; [+10]
      130 GETIMPORT                        R16 K4 [require]
      132 GETIMPORT                        R17 K1 [script]
      134 GETTABLEKS                       R17 R17 K2 ["Parent"]
      136 GETTABLEKS                       R17 R17 K26 ["SearchItemLogs"]
      138 CALL                             R16 1 1
      139 MOVE                             R14 R16
      140 GETTABLEKS                       R16 R1 K27 ["combineReducers"]
      142 DUPTABLE                         R17 K28 [{"GameOwnerMetadata", "Permissions", "GranularPermissions", "GroupMetadata", "GroupRolePermissions", "CollaboratorSearch", "LoadState", "SaveState", "FilterPills", "SearchItemLogs", "CanCollaborateResponses", "RequiresTrustedConnectionData"}]
      143 SETTABLEKS                       R7 R17 K13 ["GameOwnerMetadata"]
      145 SETTABLEKS                       R3 R17 K9 ["Permissions"]
      147 SETTABLEKS                       R4 R17 K10 ["GranularPermissions"]
      149 SETTABLEKS                       R5 R17 K11 ["GroupMetadata"]
      151 SETTABLEKS                       R6 R17 K12 ["GroupRolePermissions"]
      153 SETTABLEKS                       R8 R17 K14 ["CollaboratorSearch"]
      155 SETTABLEKS                       R9 R17 K15 ["LoadState"]
      157 SETTABLEKS                       R10 R17 K16 ["SaveState"]
      159 SETTABLEKS                       R11 R17 K17 ["FilterPills"]
      161 JUMPIFNOT                        R15 ; [+2]
      162 MOVE                             R18 R14
      163 JUMP                             ; [+1]
      164 LOADNIL                          R18
      165 SETTABLEKS                       R18 R17 K26 ["SearchItemLogs"]
      167 GETTABLEKS                       R19 R2 K29 ["fflagManageCollaboratorsActionNeededLabel"]
      169 JUMPIF                           R19 ; [+12]
      170 GETTABLEKS                       R19 R2 K30 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      172 JUMPIF                           R19 ; [+9]
      173 GETTABLEKS                       R19 R2 K31 ["fflagManageCollaboratorsEditorBlockingBanner"]
      175 JUMPIF                           R19 ; [+6]
      176 GETTABLEKS                       R19 R2 K32 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      178 JUMPIF                           R19 ; [+3]
      179 GETTABLEKS                       R19 R2 K33 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      181 JUMPIFNOT                        R19 ; [+2]
      182 MOVE                             R18 R12
      183 JUMP                             ; [+1]
      184 LOADNIL                          R18
      185 SETTABLEKS                       R18 R17 K20 ["CanCollaborateResponses"]
      187 GETTABLEKS                       R19 R2 K31 ["fflagManageCollaboratorsEditorBlockingBanner"]
      189 JUMPIFNOT                        R19 ; [+2]
      190 MOVE                             R18 R13
      191 JUMP                             ; [+1]
      192 LOADNIL                          R18
      193 SETTABLEKS                       R18 R17 K21 ["RequiresTrustedConnectionData"]
      195 CALL                             R16 1 1
      196 RETURN                           R16 1
