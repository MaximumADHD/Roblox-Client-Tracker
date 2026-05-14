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
      113 LOADNIL                          R13
      114 GETIMPORT                        R14 K22 [game]
      116 LOADK                            R16 K23 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      117 NAMECALL                         R14 R14 K24 ["GetFastFlag"]
      119 CALL                             R14 2 1
      120 JUMPIFNOT                        R14 ; [+10]
      121 GETIMPORT                        R15 K4 [require]
      123 GETIMPORT                        R16 K1 [script]
      125 GETTABLEKS                       R16 R16 K2 ["Parent"]
      127 GETTABLEKS                       R16 R16 K25 ["SearchItemLogs"]
      129 CALL                             R15 1 1
      130 MOVE                             R13 R15
      131 GETTABLEKS                       R15 R1 K26 ["combineReducers"]
      133 DUPTABLE                         R16 K27 [{"GameOwnerMetadata", "Permissions", "GranularPermissions", "GroupMetadata", "GroupRolePermissions", "CollaboratorSearch", "LoadState", "SaveState", "FilterPills", "SearchItemLogs", "CanCollaborateResponses"}]
      134 SETTABLEKS                       R7 R16 K13 ["GameOwnerMetadata"]
      136 SETTABLEKS                       R3 R16 K9 ["Permissions"]
      138 SETTABLEKS                       R4 R16 K10 ["GranularPermissions"]
      140 SETTABLEKS                       R5 R16 K11 ["GroupMetadata"]
      142 SETTABLEKS                       R6 R16 K12 ["GroupRolePermissions"]
      144 SETTABLEKS                       R8 R16 K14 ["CollaboratorSearch"]
      146 SETTABLEKS                       R9 R16 K15 ["LoadState"]
      148 SETTABLEKS                       R10 R16 K16 ["SaveState"]
      150 SETTABLEKS                       R11 R16 K17 ["FilterPills"]
      152 JUMPIFNOT                        R14 ; [+2]
      153 MOVE                             R17 R13
      154 JUMP                             ; [+1]
      155 LOADNIL                          R17
      156 SETTABLEKS                       R17 R16 K25 ["SearchItemLogs"]
      158 GETTABLEKS                       R18 R2 K28 ["fflagManageCollaboratorsActionNeededLabel"]
      160 JUMPIFNOT                        R18 ; [+2]
      161 MOVE                             R17 R12
      162 JUMP                             ; [+1]
      163 LOADNIL                          R17
      164 SETTABLEKS                       R17 R16 K20 ["CanCollaborateResponses"]
      166 CALL                             R15 1 1
      167 RETURN                           R15 1
