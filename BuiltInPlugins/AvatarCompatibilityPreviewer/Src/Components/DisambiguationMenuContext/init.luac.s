PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [table.insert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R3 R0
        1 LOADN                            R4 0
        2 JUMPIFLT                         R4 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        8 LOADK                            R3 K0 ["assignAmbiguousAssets called with no ambiguous assets"]
        9 GETIMPORT                        R1 K2 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K3 ["WAYPOINT_NAME_DISAMBIGUATION"]
       16 NAMECALL                         R1 R1 K4 ["TryBeginRecording"]
       18 CALL                             R1 2 1
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K5 ["addNewItem"]
       26 GETTABLEKS                       R8 R6 K6 ["createdInstance"]
       28 GETTABLEKS                       R9 R6 K7 ["palette"]
       30 GETTABLEKS                       R10 R6 K8 ["worldModel"]
       32 CALL                             R7 3 0
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K9 ["addEquippedItem"]
       36 DUPTABLE                         R8 K11 [{"palette", "item"}]
       37 GETTABLEKS                       R9 R6 K7 ["palette"]
       39 SETTABLEKS                       R9 R8 K7 ["palette"]
       41 DUPTABLE                         R9 K14 [{"source", "instance"}]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R10 R11 K15 ["SOURCE_INSTANCE"]
       45 SETTABLEKS                       R10 R9 K12 ["source"]
       47 GETTABLEKS                       R10 R6 K6 ["createdInstance"]
       49 SETTABLEKS                       R10 R9 K13 ["instance"]
       51 SETTABLEKS                       R9 R8 K10 ["item"]
       53 CALL                             R7 1 0
       54 FORGLOOP                         R2 2 ; [-32]
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R2 R3 K16 ["openPalette"]
       59 LENGTH                           R6 R0
       60 GETTABLE                         R5 R0 R6
       61 GETTABLEKS                       R4 R5 K7 ["palette"]
       63 GETTABLEKS                       R3 R4 K17 ["Key"]
       65 CALL                             R2 1 0
       66 GETUPVAL                         R2 5
       67 NEWTABLE                         R3 0 0
       69 CALL                             R2 1 0
       70 JUMPIFNOT                        R1 ; [+7]
       71 GETUPVAL                         R2 0
       72 MOVE                             R4 R1
       73 GETIMPORT                        R5 K21 [Enum.FinishRecordingOperation.Commit]
       75 NAMECALL                         R2 R2 K22 ["FinishRecording"]
       77 CALL                             R2 3 0
       78 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["WAYPOINT_NAME_DISAMBIGUATION"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+11]
        9 GETIMPORT                        R1 K2 [string.find]
       11 MOVE                             R2 R0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K4 ["WAYPOINT_NAME_ADD_ITEMS"]
       15 CALL                             R1 2 1
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 CALL                             R1 0 0
       21 GETUPVAL                         R1 2
       22 NAMECALL                         R1 R1 K5 ["Get"]
       24 CALL                             R1 1 1
       25 NEWTABLE                         R2 0 0
       27 MOVE                             R3 R1
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 GETUPVAL                         R10 3
       32 NAMECALL                         R8 R7 K6 ["IsDescendantOf"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+7]
       36 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       38 MOVE                             R9 R2
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K9 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R3 2 ; [-13]
       45 GETUPVAL                         R3 2
       46 MOVE                             R5 R2
       47 NAMECALL                         R3 R3 K10 ["Set"]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_4:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+4]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 LENGTH                           R2 R1
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+8]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 2
       15 NEWTABLE                         R3 0 0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NEWTABLE                         R1 0 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K2 ["useContext"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K3 ["Context"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K2 ["useContext"]
       24 GETUPVAL                         R6 2
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K2 ["useContext"]
       29 GETUPVAL                         R7 3
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 4
       32 NAMECALL                         R7 R7 K4 ["use"]
       34 CALL                             R7 1 1
       35 NAMECALL                         R7 R7 K5 ["get"]
       37 CALL                             R7 1 1
       38 GETUPVAL                         R8 5
       39 CALL                             R8 0 1
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R9 R10 K1 ["useCallback"]
       43 NEWCLOSURE                       R10 P1
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R11 0 3
       52 GETTABLEKS                       R12 R4 K6 ["openPalette"]
       54 GETTABLEKS                       R13 R5 K7 ["addEquippedItem"]
       56 GETTABLEKS                       R14 R6 K8 ["addNewItem"]
       58 SETLIST                          R11 R12 3 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 8
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R11 R12 K9 ["OnRedo"]
       65 NEWCLOSURE                       R12 P2
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U9
       70 NEWTABLE                         R13 0 1
       72 MOVE                             R14 R5
       73 SETLIST                          R13 R14 1 [1]
       75 CALL                             R10 3 0
       76 GETUPVAL                         R10 10
       77 CALL                             R10 0 1
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R11 R12 K0 ["useState"]
       81 NEWTABLE                         R12 0 0
       83 CALL                             R11 1 2
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R13 R14 K1 ["useCallback"]
       87 NEWCLOSURE                       R14 P3
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R12
       91 NEWTABLE                         R15 0 2
       93 MOVE                             R16 R9
       94 MOVE                             R17 R10
       95 SETLIST                          R15 R16 2 [1]
       97 CALL                             R13 2 1
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R14 R15 K1 ["useCallback"]
      101 NEWCLOSURE                       R15 P4
      102 CAPTURE                          VAL R12
      103 NEWTABLE                         R16 0 0
      105 CALL                             R14 2 1
      106 DUPTABLE                         R15 K12 [{"addAmbiguousAsset", "addLoneMeshPart"}]
      107 SETTABLEKS                       R3 R15 K10 ["addAmbiguousAsset"]
      109 SETTABLEKS                       R14 R15 K11 ["addLoneMeshPart"]
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R16 R17 K13 ["createElement"]
      114 GETUPVAL                         R18 11
      115 GETTABLEKS                       R17 R18 K14 ["Provider"]
      117 DUPTABLE                         R18 K16 [{"value"}]
      118 SETTABLEKS                       R15 R18 K15 ["value"]
      120 GETTABLEKS                       R19 R0 K17 ["children"]
      122 LENGTH                           R21 R1
      123 LOADN                            R22 0
      124 JUMPIFLT                         R22 R21 ; [+6]
      126 LOADB                            R20 0
      127 LENGTH                           R21 R11
      128 LOADN                            R22 0
      129 JUMPIFNOTLT                      R22 R21 ; [+18]
      131 GETUPVAL                         R21 0
      132 GETTABLEKS                       R20 R21 K13 ["createElement"]
      134 GETUPVAL                         R21 12
      135 DUPTABLE                         R22 K22 [{"assign", "ambiguousAssets", "loneMeshParts", "close"}]
      136 SETTABLEKS                       R13 R22 K18 ["assign"]
      138 SETTABLEKS                       R1 R22 K19 ["ambiguousAssets"]
      140 SETTABLEKS                       R11 R22 K20 ["loneMeshParts"]
      142 NEWCLOSURE                       R23 P5
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R12
      145 SETTABLEKS                       R23 R22 K21 ["close"]
      147 CALL                             R20 2 1
      148 CALL                             R16 4 -1
      149 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R7 R2 K12 ["Src"]
       32 GETTABLEKS                       R6 R7 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K9 [require]
       39 GETTABLEKS                       R7 R2 K12 ["Src"]
       41 GETTABLEKS                       R6 R7 K15 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R9 R2 K12 ["Src"]
       48 GETTABLEKS                       R8 R9 K16 ["Components"]
       50 GETTABLEKS                       R7 R8 K17 ["AvatarScreenContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K9 [require]
       55 GETTABLEKS                       R10 R2 K12 ["Src"]
       57 GETTABLEKS                       R9 R10 K16 ["Components"]
       59 GETTABLEKS                       R8 R9 K18 ["DisambiguationMenu"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K9 [require]
       64 GETTABLEKS                       R11 R2 K12 ["Src"]
       66 GETTABLEKS                       R10 R11 K13 ["Util"]
       68 GETTABLEKS                       R9 R10 K19 ["EquipmentStateContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K9 [require]
       73 GETTABLEKS                       R12 R2 K12 ["Src"]
       75 GETTABLEKS                       R11 R12 K13 ["Util"]
       77 GETTABLEKS                       R10 R11 K20 ["SelectionWrapper"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K9 [require]
       82 GETTABLEKS                       R13 R2 K12 ["Src"]
       84 GETTABLEKS                       R12 R13 K13 ["Util"]
       86 GETTABLEKS                       R11 R12 K21 ["UserCatalogContext"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K9 [require]
       91 GETTABLEKS                       R14 R2 K12 ["Src"]
       93 GETTABLEKS                       R13 R14 K13 ["Util"]
       95 GETTABLEKS                       R12 R13 K22 ["createUnimplemented"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K9 [require]
      100 GETIMPORT                        R14 K6 [script]
      102 GETTABLEKS                       R13 R14 K23 ["useAssignLoneMeshParts"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K9 [require]
      107 GETTABLEKS                       R16 R2 K12 ["Src"]
      109 GETTABLEKS                       R15 R16 K24 ["Hooks"]
      111 GETTABLEKS                       R14 R15 K25 ["useEquipCatalogItemsInSelection"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K9 [require]
      116 GETTABLEKS                       R17 R2 K12 ["Src"]
      118 GETTABLEKS                       R16 R17 K24 ["Hooks"]
      120 GETTABLEKS                       R15 R16 K26 ["useEventConnection"]
      122 CALL                             R14 1 1
      123 DUPTABLE                         R15 K29 [{"addAmbiguousAsset", "addLoneMeshPart"}]
      124 MOVE                             R16 R11
      125 LOADK                            R17 K27 ["addAmbiguousAsset"]
      126 CALL                             R16 1 1
      127 SETTABLEKS                       R16 R15 K27 ["addAmbiguousAsset"]
      129 MOVE                             R16 R11
      130 LOADK                            R17 K28 ["addLoneMeshPart"]
      131 CALL                             R16 1 1
      132 SETTABLEKS                       R16 R15 K28 ["addLoneMeshPart"]
      134 GETTABLEKS                       R16 R3 K30 ["createContext"]
      136 MOVE                             R17 R15
      137 CALL                             R16 1 1
      138 DUPCLOSURE                       R17 K31 [PROTO_8]
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R7
      152 DUPTABLE                         R18 K34 [{"Context", "Provider"}]
      153 SETTABLEKS                       R16 R18 K32 ["Context"]
      155 SETTABLEKS                       R17 R18 K33 ["Provider"]
      157 RETURN                           R18 1
