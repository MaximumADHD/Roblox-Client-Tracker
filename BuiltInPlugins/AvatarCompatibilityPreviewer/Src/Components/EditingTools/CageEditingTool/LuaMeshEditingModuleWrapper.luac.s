PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["canEditAssetAsync"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [Content.fromUri]
        2 GETTABLEKS                       R3 R0 K3 ["CageMeshId"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+20]
        8 LOADB                            R3 0
        9 GETIMPORT                        R4 K5 [pcall]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          REF R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CALL                             R4 1 2
       16 JUMPIF                           R4 ; [+7]
       17 GETIMPORT                        R6 K7 [warn]
       19 LOADK                            R7 K8 ["Failed to check if asset can be edited"]
       20 MOVE                             R8 R5
       21 CALL                             R6 2 0
       22 CLOSEUPVALS                      R3
       23 RETURN                           R0 0
       24 JUMPIF                           R3 ; [+2]
       25 CLOSEUPVALS                      R3
       26 RETURN                           R0 0
       27 CLOSEUPVALS                      R3
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K9 ["createEditableMeshAsync"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 NAMECALL                         R4 R3 K10 ["GetVertices"]
       35 CALL                             R4 1 1
       36 LOADB                            R5 0
       37 MOVE                             R6 R1
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 GETTABLE                         R11 R4 R9
       42 JUMPIFNOT                        R11 ; [+15]
       43 MOVE                             R14 R11
       44 NAMECALL                         R12 R3 K11 ["GetPosition"]
       46 CALL                             R12 2 1
       47 MOVE                             R15 R12
       48 NAMECALL                         R13 R10 K12 ["FuzzyEq"]
       50 CALL                             R13 2 1
       51 JUMPIF                           R13 ; [+6]
       52 LOADB                            R5 1
       53 MOVE                             R15 R11
       54 MOVE                             R16 R10
       55 NAMECALL                         R13 R3 K13 ["SetPosition"]
       57 CALL                             R13 3 0
       58 FORGLOOP                         R6 2 ; [-18]
       60 JUMPIF                           R5 ; [+1]
       61 RETURN                           R0 0
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K14 ["getCreatorData"]
       65 CALL                             R6 0 1
       66 DUPTABLE                         R7 K20 [{"Name", "Description", "CreatorId", "CreatorType", "IsPackage"}]
       67 LOADK                            R8 K21 ["Outer cage mesh (Edited by Roblox Studio)"]
       68 SETTABLEKS                       R8 R7 K15 ["Name"]
       70 LOADK                            R8 K22 ["Cage mesh edited in Studio via the Avatar Compatibility Previewer plugin"]
       71 SETTABLEKS                       R8 R7 K16 ["Description"]
       73 GETTABLEKS                       R8 R6 K23 ["creatorId"]
       75 SETTABLEKS                       R8 R7 K17 ["CreatorId"]
       77 GETTABLEKS                       R8 R6 K24 ["creatorType"]
       79 SETTABLEKS                       R8 R7 K18 ["CreatorType"]
       81 LOADB                            R8 0
       82 SETTABLEKS                       R8 R7 K19 ["IsPackage"]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K25 ["createAssetAsync"]
       87 MOVE                             R9 R3
       88 GETIMPORT                        R10 K29 [Enum.AssetType.Mesh]
       90 MOVE                             R11 R7
       91 CALL                             R8 3 2
       92 GETIMPORT                        R10 K32 [Enum.CreateAssetResult.Success]
       94 JUMPIFNOTEQ                      R8 R10 ; [+8]
       96 LOADK                            R11 K33 ["rbxassetid://%*"]
       97 MOVE                             R13 R9
       98 NAMECALL                         R11 R11 K34 ["format"]
      100 CALL                             R11 2 1
      101 MOVE                             R10 R11
      102 RETURN                           R10 1
      103 GETIMPORT                        R10 K36 [error]
      105 LOADK                            R11 K37 ["Failed to upload asset"]
      106 CALL                             R10 1 0
      107 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["WAYPOINT_NAME_EDIT_CAGE_MESH"]
        4 NAMECALL                         R1 R1 K1 ["TryBeginRecording"]
        6 CALL                             R1 2 1
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R8 2
       12 GETTABLE                         R7 R8 R5
       13 JUMPIFEQKNIL                     R7 ; [+3]
       15 SETTABLEKS                       R6 R7 K2 ["CageMeshId"]
       17 FORGLOOP                         R2 2 ; [-7]
       19 JUMPIFNOT                        R1 ; [+7]
       20 GETUPVAL                         R2 0
       21 MOVE                             R4 R1
       22 GETIMPORT                        R5 K6 [Enum.FinishRecordingOperation.Commit]
       24 NAMECALL                         R2 R2 K7 ["FinishRecording"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETIMPORT                        R9 K2 [game]
       12 NAMECALL                         R7 R5 K3 ["IsDescendantOf"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+19]
       16 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R5
       20 GETIMPORT                        R7 K6 [table.insert]
       22 CALL                             R7 2 0
       23 MOVE                             R8 R0
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K7 ["try"]
       27 GETUPVAL                         R10 2
       28 MOVE                             R11 R5
       29 MOVE                             R12 R6
       30 CALL                             R9 3 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R7 K6 [table.insert]
       34 CALL                             R7 -1 0
       35 FORGLOOP                         R2 2 ; [-26]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K8 ["all"]
       40 MOVE                             R3 R0
       41 CALL                             R2 1 1
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R2 R2 K9 ["andThen"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.CageType.Outer]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R0 R0 K4 ["ModifyVertices"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["outerCageContextRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+54]
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+52]
        8 NAMECALL                         R1 R0 K2 ["getVertexData"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R2 R0 K3 ["getInstanceLookup"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 LOADK                            R9 K4 ["WrapTarget"]
       16 NAMECALL                         R7 R6 K5 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIF                           R7 ; [+5]
       20 GETIMPORT                        R7 K7 [warn]
       22 LOADK                            R8 K8 ["Instance lookup returned a non-WrapTarget instance"]
       23 CALL                             R7 1 0
       24 JUMP                             ; [+33]
       25 GETTABLE                         R7 R1 R5
       26 JUMPIFEQKNIL                     R7 ; [+31]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K9 ["unscaleVertices"]
       31 MOVE                             R9 R6
       32 MOVE                             R10 R7
       33 CALL                             R8 2 1
       34 GETIMPORT                        R9 K11 [pcall]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R8
       39 CALL                             R9 1 2
       40 JUMPIF                           R9 ; [+13]
       41 GETIMPORT                        R11 K7 [warn]
       43 LOADK                            R13 K12 ["Failed to invoke %*:ModifyVertices(Enum.CageType.Outer, ...) due to %*"]
       44 NAMECALL                         R15 R6 K13 ["GetFullName"]
       46 CALL                             R15 1 1
       47 MOVE                             R16 R10
       48 NAMECALL                         R13 R13 K14 ["format"]
       50 CALL                             R13 3 1
       51 MOVE                             R12 R13
       52 CALL                             R11 1 0
       53 JUMP                             ; [+4]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K1 ["current"]
       57 SETTABLE                         R8 R11 R6
       58 FORGLOOP                         R2 2 ; [-44]
       60 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["THROTTLE_DELAY"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["cleanup"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["brushToolRef"]
       11 GETTABLEKS                       R0 R0 K3 ["current"]
       13 GETUPVAL                         R1 1
       14 JUMPIFNOTEQ                      R0 R1 ; [+7]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["brushToolRef"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["current"]
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K4 ["outerCageContextRef"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K3 ["current"]
       28 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K1 ["WrapTarget"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADB                            R0 1
       12 JUMP                             ; [+2]
       13 FORGLOOP                         R1 2 ; [-8]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["new"]
       20 CALL                             R1 0 1
       21 GETIMPORT                        R4 K7 [Enum.CageType.Outer]
       23 GETUPVAL                         R5 0
       24 NAMECALL                         R2 R1 K8 ["initFromCageMesh"]
       26 CALL                             R2 3 0
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K9 ["outerCageContextRef"]
       30 SETTABLEKS                       R1 R2 K10 ["current"]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K11 ["Tools"]
       35 GETTABLEKS                       R2 R2 K12 ["BrushTool"]
       37 GETTABLEKS                       R2 R2 K3 ["new"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 1
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K13 ["brushToolRef"]
       44 SETTABLEKS                       R2 R3 K10 ["current"]
       46 GETTABLEKS                       R3 R1 K14 ["meshDataChanged"]
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R3 R3 K15 ["Connect"]
       52 CALL                             R3 2 1
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U2
       57 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["setSegmentationMap"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 NEWTABLE                         R2 0 0
        9 NAMECALL                         R0 R0 K1 ["setSymmetryMap"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["outerCageContextRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["segmentationMap"]
       11 GETTABLEKS                       R1 R1 K3 ["state"]
       13 JUMPIFEQKS                       R1 K4 ["ok"] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["segmentationMap"]
       19 GETTABLEKS                       R3 R3 K5 ["value"]
       21 NAMECALL                         R1 R0 K6 ["setSegmentationMap"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K7 ["symmetrical"]
       27 JUMPIF                           R1 ; [+2]
       28 LOADNIL                          R1
       29 RETURN                           R1 1
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K8 ["symmetryMap"]
       33 GETTABLEKS                       R1 R1 K3 ["state"]
       35 JUMPIFEQKS                       R1 K4 ["ok"] ; [+2]
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K8 ["symmetryMap"]
       41 GETTABLEKS                       R3 R3 K3 ["state"]
       43 JUMPIFEQKS                       R3 K4 ["ok"] ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       49 LOADK                            R3 K9 ["Luau"]
       50 GETIMPORT                        R1 K11 [assert]
       52 CALL                             R1 2 0
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K8 ["symmetryMap"]
       56 GETTABLEKS                       R3 R3 K5 ["value"]
       58 NAMECALL                         R1 R0 K12 ["setSymmetryMap"]
       60 CALL                             R1 2 0
       61 NEWCLOSURE                       R1 P0
       62 CAPTURE                          VAL R0
       63 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["mannequin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ContextServices"]
        5 GETTABLEKS                       R2 R2 K2 ["Mouse"]
        7 NAMECALL                         R2 R2 K3 ["use"]
        9 CALL                             R2 1 1
       10 NAMECALL                         R2 R2 K4 ["get"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["ContextServices"]
       16 GETTABLEKS                       R3 R3 K5 ["Plugin"]
       18 NAMECALL                         R3 R3 K3 ["use"]
       20 CALL                             R3 1 1
       21 NAMECALL                         R3 R3 K4 ["get"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K6 ["useContext"]
       27 GETUPVAL                         R5 2
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K7 ["useRef"]
       32 NEWTABLE                         R6 0 0
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U4
       42 NEWTABLE                         R8 0 1
       44 MOVE                             R9 R4
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 NEWTABLE                         R9 0 0
       59 CALL                             R7 2 0
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       63 NEWCLOSURE                       R8 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R5
       68 NEWTABLE                         R9 0 1
       70 MOVE                             R10 R1
       71 SETLIST                          R9 R10 1 [1]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       77 NEWCLOSURE                       R9 P3
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          UPVAL U7
       81 NEWTABLE                         R10 0 1
       83 MOVE                             R11 R7
       84 SETLIST                          R10 R11 1 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       90 NEWCLOSURE                       R10 P4
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U11
       95 CAPTURE                          VAL R8
       96 NEWTABLE                         R11 0 1
       98 MOVE                             R12 R1
       99 SETLIST                          R11 R12 1 [1]
      101 CALL                             R9 2 0
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K9 ["useEffect"]
      105 NEWCLOSURE                       R10 P5
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R11 0 4
      109 GETTABLEKS                       R12 R0 K11 ["symmetrical"]
      111 GETTABLEKS                       R13 R0 K12 ["symmetryMap"]
      113 GETTABLEKS                       R14 R0 K13 ["segmentationMap"]
      115 GETTABLEKS                       R15 R0 K14 ["outerCageContextRef"]
      117 GETTABLEKS                       R15 R15 K15 ["current"]
      119 SETLIST                          R11 R12 4 [1]
      121 CALL                             R9 2 0
      122 GETTABLEKS                       R9 R0 K16 ["brushToolRef"]
      124 GETTABLEKS                       R9 R9 K15 ["current"]
      126 JUMPIFNOTEQKNIL                  R9 ; [+3]
      128 LOADNIL                          R9
      129 RETURN                           R9 1
      130 GETUPVAL                         R9 1
      131 GETTABLEKS                       R9 R9 K17 ["createElement"]
      133 GETUPVAL                         R10 12
      134 DUPTABLE                         R11 K23 [{"Mouse", "Plugin", "VertexToolBase", "Radius", "Falloff", "Mannequin", "OnChangeSelectedPositions"}]
      135 SETTABLEKS                       R2 R11 K2 ["Mouse"]
      137 SETTABLEKS                       R3 R11 K5 ["Plugin"]
      139 GETTABLEKS                       R12 R0 K16 ["brushToolRef"]
      141 GETTABLEKS                       R12 R12 K15 ["current"]
      143 SETTABLEKS                       R12 R11 K18 ["VertexToolBase"]
      145 GETTABLEKS                       R12 R0 K24 ["radius"]
      147 SETTABLEKS                       R12 R11 K19 ["Radius"]
      149 GETTABLEKS                       R12 R0 K25 ["falloff"]
      151 SETTABLEKS                       R12 R11 K20 ["Falloff"]
      153 SETTABLEKS                       R1 R11 K21 ["Mannequin"]
      155 GETTABLEKS                       R12 R0 K26 ["onChangeSelectedPositions"]
      157 SETTABLEKS                       R12 R11 K22 ["OnChangeSelectedPositions"]
      159 CALL                             R9 2 -1
      160 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["AssetCreatorUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K13 ["Components"]
       28 GETTABLEKS                       R4 R4 K14 ["AssetServiceContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K15 ["Constants"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K16 ["Packages"]
       44 GETTABLEKS                       R6 R6 K17 ["Framework"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K16 ["Packages"]
       51 GETTABLEKS                       R7 R7 K18 ["LuaMeshEditingModule"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K16 ["Packages"]
       58 GETTABLEKS                       R8 R8 K18 ["LuaMeshEditingModule"]
       60 GETTABLEKS                       R8 R8 K19 ["Types"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R0 K16 ["Packages"]
       67 GETTABLEKS                       R9 R9 K20 ["Promise"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R0 K16 ["Packages"]
       74 GETTABLEKS                       R10 R10 K21 ["React"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R0 K10 ["Src"]
       81 GETTABLEKS                       R11 R11 K19 ["Types"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K10 ["Src"]
       88 GETTABLEKS                       R12 R12 K11 ["Util"]
       90 GETTABLEKS                       R12 R12 K22 ["createCallThrottler"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K10 ["Src"]
       97 GETTABLEKS                       R13 R13 K23 ["Flags"]
       99 GETTABLEKS                       R13 R13 K24 ["getFFlagEnableCanEditAssetAsync"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K10 ["Src"]
      106 GETTABLEKS                       R14 R14 K25 ["Hooks"]
      108 GETTABLEKS                       R14 R14 K26 ["useAsync"]
      110 CALL                             R13 1 1
      111 GETTABLEKS                       R14 R6 K27 ["MeshEditingContexts"]
      113 GETTABLEKS                       R14 R14 K28 ["CageEditingContext"]
      115 GETTABLEKS                       R15 R6 K13 ["Components"]
      117 GETTABLEKS                       R15 R15 K29 ["FreeformMeshEditingComponent"]
      119 GETTABLEKS                       R16 R6 K11 ["Util"]
      121 GETTABLEKS                       R16 R16 K30 ["WrapUtil"]
      123 DUPCLOSURE                       R17 K31 [PROTO_13]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R15
      137 RETURN                           R17 1
