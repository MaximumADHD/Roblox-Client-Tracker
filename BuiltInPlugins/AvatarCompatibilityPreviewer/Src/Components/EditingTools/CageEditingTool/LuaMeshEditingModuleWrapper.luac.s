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
        5 LOADB                            R3 0
        6 GETIMPORT                        R4 K5 [pcall]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          REF R3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 CALL                             R4 1 2
       13 JUMPIF                           R4 ; [+7]
       14 GETIMPORT                        R6 K7 [warn]
       16 LOADK                            R7 K8 ["Failed to check if asset can be edited"]
       17 MOVE                             R8 R5
       18 CALL                             R6 2 0
       19 CLOSEUPVALS                      R3
       20 RETURN                           R0 0
       21 JUMPIF                           R3 ; [+2]
       22 CLOSEUPVALS                      R3
       23 RETURN                           R0 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K9 ["createEditableMeshAsync"]
       27 MOVE                             R7 R2
       28 CALL                             R6 1 1
       29 NAMECALL                         R7 R6 K10 ["GetVertices"]
       31 CALL                             R7 1 1
       32 LOADB                            R8 0
       33 MOVE                             R9 R1
       34 LOADNIL                          R10
       35 LOADNIL                          R11
       36 FORGPREP                         R9
       37 GETTABLE                         R14 R7 R12
       38 JUMPIFNOT                        R14 ; [+15]
       39 MOVE                             R17 R14
       40 NAMECALL                         R15 R6 K11 ["GetPosition"]
       42 CALL                             R15 2 1
       43 MOVE                             R18 R15
       44 NAMECALL                         R16 R13 K12 ["FuzzyEq"]
       46 CALL                             R16 2 1
       47 JUMPIF                           R16 ; [+6]
       48 LOADB                            R8 1
       49 MOVE                             R18 R14
       50 MOVE                             R19 R13
       51 NAMECALL                         R16 R6 K13 ["SetPosition"]
       53 CALL                             R16 3 0
       54 FORGLOOP                         R9 2 ; [-18]
       56 JUMPIF                           R8 ; [+2]
       57 CLOSEUPVALS                      R3
       58 RETURN                           R0 0
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K14 ["getCreatorData"]
       62 CALL                             R9 0 1
       63 DUPTABLE                         R10 K23 [{["Name"] = "Outer cage mesh (Edited by Roblox Studio)", ["Description"] = "Cage mesh edited in Studio via the Avatar Compatibility Previewer plugin", ["CreatorId"], ["CreatorType"], ["IsPackage"] = False}]
       64 GETTABLEKS                       R11 R9 K24 ["creatorId"]
       66 SETTABLEKS                       R11 R10 K19 ["CreatorId"]
       68 GETTABLEKS                       R11 R9 K25 ["creatorType"]
       70 SETTABLEKS                       R11 R10 K20 ["CreatorType"]
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K26 ["createAssetAsync"]
       75 MOVE                             R12 R6
       76 GETIMPORT                        R13 K30 [Enum.AssetType.Mesh]
       78 MOVE                             R14 R10
       79 CALL                             R11 3 2
       80 GETIMPORT                        R13 K33 [Enum.CreateAssetResult.Success]
       82 JUMPIFNOTEQ                      R11 R13 ; [+9]
       84 LOADK                            R14 K34 ["rbxassetid://%*"]
       85 MOVE                             R16 R12
       86 NAMECALL                         R14 R14 K35 ["format"]
       88 CALL                             R14 2 1
       89 MOVE                             R13 R14
       90 CLOSEUPVALS                      R3
       91 RETURN                           R13 1
       92 GETIMPORT                        R13 K37 [error]
       94 LOADK                            R14 K38 ["Failed to upload asset"]
       95 CALL                             R13 1 0
       96 CLOSEUPVALS                      R3
       97 RETURN                           R0 0

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
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U3
       41 NEWTABLE                         R8 0 1
       43 MOVE                             R9 R4
       44 SETLIST                          R8 R9 1 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R6
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 NEWTABLE                         R9 0 0
       58 CALL                             R7 2 0
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R9 0 1
       69 MOVE                             R10 R1
       70 SETLIST                          R9 R10 1 [1]
       72 CALL                             R7 2 1
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       76 NEWCLOSURE                       R9 P3
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          VAL R7
       79 CAPTURE                          UPVAL U6
       80 NEWTABLE                         R10 0 1
       82 MOVE                             R11 R7
       83 SETLIST                          R10 R11 1 [1]
       85 CALL                             R8 2 1
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       89 NEWCLOSURE                       R10 P4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R8
       95 NEWTABLE                         R11 0 1
       97 MOVE                             R12 R1
       98 SETLIST                          R11 R12 1 [1]
      100 CALL                             R9 2 0
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R9 R9 K9 ["useEffect"]
      104 NEWCLOSURE                       R10 P5
      105 CAPTURE                          VAL R0
      106 NEWTABLE                         R11 0 4
      108 GETTABLEKS                       R12 R0 K11 ["symmetrical"]
      110 GETTABLEKS                       R13 R0 K12 ["symmetryMap"]
      112 GETTABLEKS                       R14 R0 K13 ["segmentationMap"]
      114 GETTABLEKS                       R15 R0 K14 ["outerCageContextRef"]
      116 GETTABLEKS                       R15 R15 K15 ["current"]
      118 SETLIST                          R11 R12 4 [1]
      120 CALL                             R9 2 0
      121 GETTABLEKS                       R9 R0 K16 ["brushToolRef"]
      123 GETTABLEKS                       R9 R9 K15 ["current"]
      125 JUMPIFNOTEQKNIL                  R9 ; [+3]
      127 LOADNIL                          R9
      128 RETURN                           R9 1
      129 GETUPVAL                         R9 1
      130 GETTABLEKS                       R9 R9 K17 ["createElement"]
      132 GETUPVAL                         R10 11
      133 DUPTABLE                         R11 K23 [{"Mouse", "Plugin", "VertexToolBase", "Radius", "Falloff", "Mannequin", "OnChangeSelectedPositions"}]
      134 SETTABLEKS                       R2 R11 K2 ["Mouse"]
      136 SETTABLEKS                       R3 R11 K5 ["Plugin"]
      138 GETTABLEKS                       R12 R0 K16 ["brushToolRef"]
      140 GETTABLEKS                       R12 R12 K15 ["current"]
      142 SETTABLEKS                       R12 R11 K18 ["VertexToolBase"]
      144 GETTABLEKS                       R12 R0 K24 ["radius"]
      146 SETTABLEKS                       R12 R11 K19 ["Radius"]
      148 GETTABLEKS                       R12 R0 K25 ["falloff"]
      150 SETTABLEKS                       R12 R11 K20 ["Falloff"]
      152 SETTABLEKS                       R1 R11 K21 ["Mannequin"]
      154 GETTABLEKS                       R12 R0 K26 ["onChangeSelectedPositions"]
      156 SETTABLEKS                       R12 R11 K22 ["OnChangeSelectedPositions"]
      158 CALL                             R9 2 -1
      159 RETURN                           R9 -1

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
       97 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       99 GETTABLEKS                       R13 R13 K24 ["useAsync"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R6 K25 ["MeshEditingContexts"]
      104 GETTABLEKS                       R13 R13 K26 ["CageEditingContext"]
      106 GETTABLEKS                       R14 R6 K13 ["Components"]
      108 GETTABLEKS                       R14 R14 K27 ["FreeformMeshEditingComponent"]
      110 GETTABLEKS                       R15 R6 K11 ["Util"]
      112 GETTABLEKS                       R15 R15 K28 ["WrapUtil"]
      114 DUPCLOSURE                       R16 K29 [PROTO_13]
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R14
      127 RETURN                           R16 1
