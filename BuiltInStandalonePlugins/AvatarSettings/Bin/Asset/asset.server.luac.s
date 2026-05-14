PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["DmChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["CurrentDataModelType"]
        6 NAMECALL                         R0 R0 K4 ["Invoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+11]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["CurrentDataModelType"]
       15 GETIMPORT                        R1 K8 [Enum.StudioDataModelType.Edit]
       17 JUMPIFNOTEQ                      R0 R1 ; [+5]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K9 ["reset"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

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
       39 GETTABLEKS                       R4 R4 K17 ["Flags"]
       41 GETTABLEKS                       R4 R4 K18 ["getFFlagPreviewToolbar"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K11 [require]
       46 GETTABLEKS                       R5 R1 K15 ["Src"]
       48 GETTABLEKS                       R5 R5 K19 ["Util"]
       50 GETTABLEKS                       R5 R5 K20 ["AvatarPreview"]
       52 GETTABLEKS                       R5 R5 K21 ["TestInExperienceUtil"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [plugin]
       57 GETTABLEKS                       R5 R5 K22 ["MultipleDocumentInterfaceInstance"]
       59 GETTABLEKS                       R6 R5 K23 ["FocusedDataModelSession"]
       61 GETTABLEKS                       R7 R6 K24 ["CurrentDataModelTypeChanged"]
       63 NEWCLOSURE                       R9 P0
       64 CAPTURE                          REF R6
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 NAMECALL                         R7 R7 K25 ["Connect"]
       69 CALL                             R7 2 0
       70 GETTABLEKS                       R7 R5 K26 ["DataModelSessionStarted"]
       72 NEWCLOSURE                       R9 P1
       73 CAPTURE                          REF R6
       74 CAPTURE                          VAL R5
       75 NAMECALL                         R7 R7 K25 ["Connect"]
       77 CALL                             R7 2 0
       78 GETIMPORT                        R7 K11 [require]
       80 GETTABLEKS                       R8 R1 K27 ["Bin"]
       82 GETTABLEKS                       R8 R8 K28 ["Common"]
       84 GETTABLEKS                       R8 R8 K29 ["pluginType"]
       86 CALL                             R7 1 1
       87 GETIMPORT                        R8 K11 [require]
       89 GETTABLEKS                       R9 R1 K15 ["Src"]
       91 GETTABLEKS                       R9 R9 K19 ["Util"]
       93 GETTABLEKS                       R9 R9 K30 ["BridgingFiles"]
       95 GETTABLEKS                       R9 R9 K31 ["AssetDmFiles"]
       97 GETTABLEKS                       R9 R9 K32 ["assetDmSetup"]
       99 CALL                             R8 1 1
      100 MOVE                             R9 R3
      101 CALL                             R9 0 1
      102 JUMPIFNOT                        R9 ; [+7]
      103 NAMECALL                         R9 R0 K33 ["IsRunning"]
      105 CALL                             R9 1 1
      106 JUMPIF                           R9 ; [+3]
      107 GETTABLEKS                       R9 R4 K34 ["reset"]
      109 CALL                             R9 0 0
      110 MOVE                             R9 R8
      111 GETIMPORT                        R10 K5 [plugin]
      113 CALL                             R9 1 0
      114 GETTABLEKS                       R9 R7 K35 ["get"]
      116 CALL                             R9 0 1
      117 GETTABLEKS                       R10 R7 K36 ["Asset"]
      119 JUMPIFEQ                         R9 R10 ; [+3]
      121 CLOSEUPVALS                      R6
      122 RETURN                           R0 0
      123 GETIMPORT                        R9 K11 [require]
      125 GETTABLEKS                       R10 R1 K27 ["Bin"]
      127 GETTABLEKS                       R10 R10 K28 ["Common"]
      129 GETTABLEKS                       R10 R10 K37 ["setup"]
      131 CALL                             R9 1 1
      132 GETIMPORT                        R10 K11 [require]
      134 GETTABLEKS                       R11 R1 K27 ["Bin"]
      136 GETTABLEKS                       R11 R11 K28 ["Common"]
      138 GETTABLEKS                       R11 R11 K38 ["setupMain"]
      140 CALL                             R10 1 1
      141 MOVE                             R11 R9
      142 GETIMPORT                        R12 K5 [plugin]
      144 MOVE                             R13 R10
      145 CALL                             R11 2 0
      146 CLOSEUPVALS                      R6
      147 RETURN                           R0 0
