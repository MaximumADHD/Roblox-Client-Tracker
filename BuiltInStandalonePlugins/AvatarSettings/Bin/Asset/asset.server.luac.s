PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["DmChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["CurrentDataModelType"]
        6 NAMECALL                         R0 R0 K4 ["Invoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["CurrentDataModelType"]
       12 GETIMPORT                        R1 K8 [Enum.StudioDataModelType.Edit]
       14 JUMPIFNOTEQ                      R0 R1 ; [+5]
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K9 ["reset"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["FocusedDataModelSession"]
        3 SETUPVAL                         R0 0
        4 GETIMPORT                        R0 K2 [plugin]
        6 LOADK                            R2 K3 ["DmSessionStarted"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K4 ["CurrentDataModelType"]
       10 NAMECALL                         R0 R0 K5 ["Invoke"]
       12 CALL                             R0 3 0
       13 GETIMPORT                        R0 K2 [plugin]
       15 LOADK                            R2 K6 ["DmChanged"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K4 ["CurrentDataModelType"]
       19 NAMECALL                         R0 R0 K5 ["Invoke"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["onPlaceSaved"]
        5 GETIMPORT                        R3 K4 [game]
        7 GETTABLEKS                       R3 R3 K5 ["GameId"]
        9 NAMECALL                         R0 R0 K6 ["Invoke"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [plugin]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K7 [script]
       13 LOADK                            R3 K8 ["AvatarSettings"]
       14 NAMECALL                         R1 R1 K9 ["FindFirstAncestor"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K11 [require]
       19 GETTABLEKS                       R3 R1 K12 ["Packages"]
       21 GETTABLEKS                       R3 R3 K13 ["TestLoader"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K14 ["launch"]
       26 LOADK                            R4 K8 ["AvatarSettings"]
       27 GETTABLEKS                       R5 R1 K15 ["Src"]
       29 CALL                             R3 2 0
       30 GETTABLEKS                       R3 R2 K16 ["isCli"]
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R3 K11 [require]
       37 GETTABLEKS                       R4 R1 K15 ["Src"]
       39 GETTABLEKS                       R4 R4 K17 ["Util"]
       41 GETTABLEKS                       R4 R4 K18 ["AvatarPreview"]
       43 GETTABLEKS                       R4 R4 K19 ["TestInExperienceUtil"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [plugin]
       48 GETTABLEKS                       R4 R4 K20 ["MultipleDocumentInterfaceInstance"]
       50 GETTABLEKS                       R5 R4 K21 ["FocusedDataModelSession"]
       52 GETTABLEKS                       R6 R5 K22 ["CurrentDataModelTypeChanged"]
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          REF R5
       56 CAPTURE                          VAL R3
       57 NAMECALL                         R6 R6 K23 ["Connect"]
       59 CALL                             R6 2 0
       60 GETTABLEKS                       R6 R4 K24 ["DataModelSessionStarted"]
       62 NEWCLOSURE                       R8 P1
       63 CAPTURE                          REF R5
       64 CAPTURE                          VAL R4
       65 NAMECALL                         R6 R6 K23 ["Connect"]
       67 CALL                             R6 2 0
       68 GETIMPORT                        R6 K11 [require]
       70 GETTABLEKS                       R7 R1 K25 ["Bin"]
       72 GETTABLEKS                       R7 R7 K26 ["Common"]
       74 GETTABLEKS                       R7 R7 K27 ["pluginType"]
       76 CALL                             R6 1 1
       77 GETIMPORT                        R7 K11 [require]
       79 GETTABLEKS                       R8 R1 K15 ["Src"]
       81 GETTABLEKS                       R8 R8 K17 ["Util"]
       83 GETTABLEKS                       R8 R8 K28 ["BridgingFiles"]
       85 GETTABLEKS                       R8 R8 K29 ["AssetDmFiles"]
       87 GETTABLEKS                       R8 R8 K30 ["assetDmSetup"]
       89 CALL                             R7 1 1
       90 NAMECALL                         R8 R0 K31 ["IsRunning"]
       92 CALL                             R8 1 1
       93 JUMPIF                           R8 ; [+3]
       94 GETTABLEKS                       R8 R3 K32 ["reset"]
       96 CALL                             R8 0 0
       97 MOVE                             R8 R7
       98 GETIMPORT                        R9 K5 [plugin]
      100 CALL                             R8 1 0
      101 GETIMPORT                        R8 K11 [require]
      103 GETTABLEKS                       R9 R1 K15 ["Src"]
      105 GETTABLEKS                       R9 R9 K33 ["Flags"]
      107 GETTABLEKS                       R9 R9 K34 ["getFFlagAvatarSettingsWarnOnPlaceSave"]
      109 CALL                             R8 1 1
      110 MOVE                             R9 R8
      111 CALL                             R9 0 1
      112 JUMPIFNOT                        R9 ; [+42]
      113 NAMECALL                         R9 R0 K35 ["IsEdit"]
      115 CALL                             R9 1 1
      116 JUMPIFNOT                        R9 ; [+38]
      117 GETIMPORT                        R9 K11 [require]
      119 GETTABLEKS                       R10 R1 K15 ["Src"]
      121 GETTABLEKS                       R10 R10 K17 ["Util"]
      123 GETTABLEKS                       R10 R10 K36 ["connectPlaceSaveCompleted"]
      125 CALL                             R9 1 1
      126 GETIMPORT                        R10 K11 [require]
      128 GETTABLEKS                       R11 R1 K15 ["Src"]
      130 GETTABLEKS                       R11 R11 K17 ["Util"]
      132 GETTABLEKS                       R11 R11 K37 ["InvokeKeys"]
      134 CALL                             R10 1 1
      135 MOVE                             R11 R9
      136 GETIMPORT                        R12 K5 [plugin]
      138 GETIMPORT                        R13 K1 [game]
      140 LOADK                            R15 K38 ["StudioPublishService"]
      141 NAMECALL                         R13 R13 K3 ["GetService"]
      143 CALL                             R13 2 1
      144 DUPCLOSURE                       R14 K39 [PROTO_2]
      145 CAPTURE                          VAL R10
      146 CALL                             R11 3 1
      147 GETIMPORT                        R12 K5 [plugin]
      149 GETTABLEKS                       R12 R12 K40 ["Unloading"]
      151 MOVE                             R14 R11
      152 NAMECALL                         R12 R12 K23 ["Connect"]
      154 CALL                             R12 2 0
      155 GETTABLEKS                       R9 R6 K41 ["get"]
      157 CALL                             R9 0 1
      158 GETTABLEKS                       R10 R6 K42 ["Asset"]
      160 JUMPIFEQ                         R9 R10 ; [+3]
      162 CLOSEUPVALS                      R5
      163 RETURN                           R0 0
      164 GETIMPORT                        R9 K11 [require]
      166 GETTABLEKS                       R10 R1 K25 ["Bin"]
      168 GETTABLEKS                       R10 R10 K26 ["Common"]
      170 GETTABLEKS                       R10 R10 K43 ["setup"]
      172 CALL                             R9 1 1
      173 GETIMPORT                        R10 K11 [require]
      175 GETTABLEKS                       R11 R1 K25 ["Bin"]
      177 GETTABLEKS                       R11 R11 K26 ["Common"]
      179 GETTABLEKS                       R11 R11 K44 ["setupMain"]
      181 CALL                             R10 1 1
      182 MOVE                             R11 R9
      183 GETIMPORT                        R12 K5 [plugin]
      185 MOVE                             R13 R10
      186 CALL                             R11 2 0
      187 CLOSEUPVALS                      R5
      188 RETURN                           R0 0
