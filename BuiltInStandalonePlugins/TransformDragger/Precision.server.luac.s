PROTO_0:
        0 GETIMPORT                        R0 K1 [tick]
        2 CALL                             R0 0 1
        3 SETUPVAL                         R0 0
        4 DUPTABLE                         R0 K10 [{"freeformDrags", "handleDrags", "clickSelects", "dragSelects", "dragTilts", "dragRotates", "toolName", "wasAutoSelected"}]
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["freeformDrags"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K3 ["handleDrags"]
       11 LOADN                            R1 0
       12 SETTABLEKS                       R1 R0 K4 ["clickSelects"]
       14 LOADN                            R1 0
       15 SETTABLEKS                       R1 R0 K5 ["dragSelects"]
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K6 ["dragTilts"]
       20 LOADN                            R1 0
       21 SETTABLEKS                       R1 R0 K7 ["dragRotates"]
       23 LOADK                            R1 K11 ["Transform"]
       24 SETTABLEKS                       R1 R0 K8 ["toolName"]
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K9 ["wasAutoSelected"]
       29 SETUPVAL                         R0 1
       30 GETUPVAL                         R0 2
       31 LOADK                            R2 K12 ["toolSelected"]
       32 DUPTABLE                         R3 K13 [{"toolName", "wasAutoSelected"}]
       33 LOADK                            R4 K11 ["Transform"]
       34 SETTABLEKS                       R4 R3 K8 ["toolName"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K9 ["wasAutoSelected"]
       39 NAMECALL                         R0 R0 K14 ["sendEvent"]
       41 CALL                             R0 3 0
       42 GETUPVAL                         R0 2
       43 LOADK                            R2 K15 ["studioLuaTransformDraggerSelected"]
       44 NAMECALL                         R0 R0 K16 ["reportCounter"]
       46 CALL                             R0 2 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K2 ["duration"]
        8 GETUPVAL                         R1 2
        9 LOADK                            R3 K3 ["toolSession"]
       10 GETUPVAL                         R4 1
       11 NAMECALL                         R1 R1 K4 ["sendEvent"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["clickedObject"]
        2 DUPTABLE                         R5 K7 [{"altPressed", "ctrlPressed", "shiftPressed", "clickedAttachment", "clickedConstraint", "didAlterSelection"}]
        3 GETUPVAL                         R6 1
        4 GETIMPORT                        R8 K11 [Enum.KeyCode.LeftAlt]
        6 NAMECALL                         R6 R6 K12 ["IsKeyDown"]
        8 CALL                             R6 2 1
        9 SETTABLEKS                       R6 R5 K1 ["altPressed"]
       11 GETUPVAL                         R6 1
       12 GETIMPORT                        R8 K14 [Enum.KeyCode.LeftControl]
       14 NAMECALL                         R6 R6 K12 ["IsKeyDown"]
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K2 ["ctrlPressed"]
       19 GETUPVAL                         R6 1
       20 GETIMPORT                        R8 K16 [Enum.KeyCode.LeftShift]
       22 NAMECALL                         R6 R6 K12 ["IsKeyDown"]
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K3 ["shiftPressed"]
       27 MOVE                             R6 R0
       28 JUMPIFNOT                        R6 ; [+4]
       29 LOADK                            R8 K17 ["Attachment"]
       30 NAMECALL                         R6 R0 K18 ["IsA"]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K4 ["clickedAttachment"]
       35 MOVE                             R6 R0
       36 JUMPIFNOT                        R6 ; [+9]
       37 LOADK                            R8 K19 ["Constraint"]
       38 NAMECALL                         R6 R0 K18 ["IsA"]
       40 CALL                             R6 2 1
       41 JUMPIF                           R6 ; [+4]
       42 LOADK                            R8 K20 ["WeldConstraint"]
       43 NAMECALL                         R6 R0 K18 ["IsA"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K5 ["clickedConstraint"]
       48 SETTABLEKS                       R1 R5 K6 ["didAlterSelection"]
       50 NAMECALL                         R2 R2 K21 ["sendEvent"]
       52 CALL                             R2 3 0
       53 JUMPIFNOT                        R1 ; [+7]
       54 GETUPVAL                         R2 2
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R4 R5 K23 ["clickSelects"]
       58 ADDK                             R3 R4 K22 [1]
       59 SETTABLEKS                       R3 R2 K23 ["clickSelects"]
       61 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pairs]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K2 ["Get"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_NEXT                    R1
        9 LOADK                            R8 K3 ["BasePart"]
       10 NAMECALL                         R6 R5 K4 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+1]
       14 ADDK                             R0 R0 K5 [1]
       15 GETIMPORT                        R6 K1 [pairs]
       17 NAMECALL                         R7 R5 K6 ["GetDescendants"]
       19 CALL                             R7 1 -1
       20 CALL                             R6 -1 3
       21 FORGPREP_NEXT                    R6
       22 LOADK                            R13 K3 ["BasePart"]
       23 NAMECALL                         R11 R10 K4 ["IsA"]
       25 CALL                             R11 2 1
       26 JUMPIFNOT                        R11 ; [+1]
       27 ADDK                             R0 R0 K5 [1]
       28 FORGLOOP                         R6 2 ; [-7]
       30 FORGLOOP                         R1 2 ; [-22]
       32 GETUPVAL                         R1 1
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K7 ["freeformDrags"]
       36 ADDK                             R2 R3 K5 [1]
       37 SETTABLEKS                       R2 R1 K7 ["freeformDrags"]
       39 DUPTABLE                         R1 K13 [{"dragTilts", "dragRotates", "partCount", "attachmentCount", "timeToStartDrag"}]
       40 LOADN                            R2 0
       41 SETTABLEKS                       R2 R1 K8 ["dragTilts"]
       43 LOADN                            R2 0
       44 SETTABLEKS                       R2 R1 K9 ["dragRotates"]
       46 SETTABLEKS                       R0 R1 K10 ["partCount"]
       48 LOADN                            R2 0
       49 SETTABLEKS                       R2 R1 K11 ["attachmentCount"]
       51 LOADN                            R2 0
       52 SETTABLEKS                       R2 R1 K12 ["timeToStartDrag"]
       54 SETUPVAL                         R1 2
       55 LOADNIL                          R1
       56 SETUPVAL                         R1 3
       57 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+32]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K0 ["Polygon"]
        4 SETTABLEKS                       R2 R1 K1 ["dragTargetType"]
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R4 1
       10 SUB                              R3 R0 R4
       11 GETTABLEKS                       R2 R3 K2 ["Magnitude"]
       13 SETTABLEKS                       R2 R1 K3 ["dragDistance"]
       15 JUMP                             ; [+5]
       16 GETUPVAL                         R1 0
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K3 ["dragDistance"]
       20 SETUPVAL                         R0 1
       21 GETUPVAL                         R1 0
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K4 ["CurrentCamera"]
       25 GETTABLEKS                       R5 R6 K5 ["CFrame"]
       27 GETTABLEKS                       R4 R5 K6 ["Position"]
       29 SUB                              R3 R4 R0
       30 GETTABLEKS                       R2 R3 K2 ["Magnitude"]
       32 SETTABLEKS                       R2 R1 K7 ["distanceToCamera"]
       34 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+30]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["GridSize"]
        6 SETTABLEKS                       R1 R0 K1 ["gridSize"]
        8 GETUPVAL                         R0 0
        9 LOADK                            R1 K2 ["Transform"]
       10 SETTABLEKS                       R1 R0 K3 ["toolName"]
       12 GETUPVAL                         R0 0
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["wasAutoSelected"]
       16 GETUPVAL                         R0 0
       17 LOADB                            R1 0
       18 SETTABLEKS                       R1 R0 K5 ["joinSurfaces"]
       20 GETUPVAL                         R0 0
       21 LOADB                            R1 0
       22 SETTABLEKS                       R1 R0 K6 ["useConstraints"]
       24 GETUPVAL                         R0 2
       25 LOADK                            R2 K7 ["freeformDragged"]
       26 GETUPVAL                         R3 0
       27 NAMECALL                         R0 R0 K8 ["sendEvent"]
       29 CALL                             R0 3 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["handleDragged"]
        2 DUPTABLE                         R4 K9 [{"toolName", "gridSize", "rotateIncrement", "useLocalSpace", "joinSurfaces", "useConstraints", "haveCollisions", "wasAutoSelected"}]
        3 LOADK                            R5 K10 ["Transform"]
        4 SETTABLEKS                       R5 R4 K1 ["toolName"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K11 ["GridSize"]
        9 SETTABLEKS                       R5 R4 K2 ["gridSize"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K12 ["RotateIncrement"]
       14 SETTABLEKS                       R5 R4 K3 ["rotateIncrement"]
       16 LOADB                            R5 0
       17 SETTABLEKS                       R5 R4 K4 ["useLocalSpace"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K5 ["joinSurfaces"]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K6 ["useConstraints"]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R4 K7 ["haveCollisions"]
       28 LOADB                            R5 0
       29 SETTABLEKS                       R5 R4 K8 ["wasAutoSelected"]
       31 NAMECALL                         R1 R1 K13 ["sendEvent"]
       33 CALL                             R1 3 0
       34 GETUPVAL                         R1 0
       35 LOADK                            R3 K14 ["transformHandleDragged"]
       36 DUPTABLE                         R4 K16 [{"gridSize", "rotateIncrement", "handleName"}]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R5 R6 K11 ["GridSize"]
       40 SETTABLEKS                       R5 R4 K2 ["gridSize"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K12 ["RotateIncrement"]
       45 SETTABLEKS                       R5 R4 K3 ["rotateIncrement"]
       47 SETTABLEKS                       R0 R4 K15 ["handleName"]
       49 NAMECALL                         R1 R1 K13 ["sendEvent"]
       51 CALL                             R1 3 0
       52 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["boxSelected"]
        2 DUPTABLE                         R3 K7 [{"toolName", "objectCount", "altPressed", "ctrlPressed", "shiftPressed", "wasAutoSelected"}]
        3 LOADK                            R4 K8 ["Transform"]
        4 SETTABLEKS                       R4 R3 K1 ["toolName"]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R5 R5 K9 ["Get"]
        9 CALL                             R5 1 1
       10 LENGTH                           R4 R5
       11 SETTABLEKS                       R4 R3 K2 ["objectCount"]
       13 GETUPVAL                         R4 2
       14 GETIMPORT                        R6 K13 [Enum.KeyCode.LeftAlt]
       16 NAMECALL                         R4 R4 K14 ["IsKeyDown"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K3 ["altPressed"]
       21 GETUPVAL                         R4 2
       22 GETIMPORT                        R6 K16 [Enum.KeyCode.LeftControl]
       24 NAMECALL                         R4 R4 K14 ["IsKeyDown"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K4 ["ctrlPressed"]
       29 GETUPVAL                         R4 2
       30 GETIMPORT                        R6 K18 [Enum.KeyCode.LeftShift]
       32 NAMECALL                         R4 R4 K14 ["IsKeyDown"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K5 ["shiftPressed"]
       37 LOADB                            R4 0
       38 SETTABLEKS                       R4 R3 K6 ["wasAutoSelected"]
       40 NAMECALL                         R0 R0 K19 ["sendEvent"]
       42 CALL                             R0 3 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setPlane"]
        2 DUPTABLE                         R3 K2 [{"toolName"}]
        3 LOADK                            R4 K3 ["Transform"]
        4 SETTABLEKS                       R4 R3 K1 ["toolName"]
        6 NAMECALL                         R0 R0 K4 ["sendEvent"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_10:
        0 LOADK                            R3 K0 ["Wrapped"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETIMPORT                        R1 K3 [workspace]
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K4 ["Object"]
       11 SETLIST                          R3 R4 1 [1]
       13 NAMECALL                         R1 R1 K5 ["UnjoinFromOutsiders"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 LOADK                            R3 K6 ["BasePart"]
       18 NAMECALL                         R1 R0 K1 ["IsA"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+10]
       22 GETIMPORT                        R1 K3 [workspace]
       24 NEWTABLE                         R3 0 1
       26 MOVE                             R4 R0
       27 SETLIST                          R3 R4 1 [1]
       29 NAMECALL                         R1 R1 K5 ["UnjoinFromOutsiders"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelection"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K2 [workspace]
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R4 R4 K3 ["GetJoinMode"]
       10 CALL                             R4 1 -1
       11 NAMECALL                         R1 R1 K4 ["JoinToOutsiders"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelection"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K2 [workspace]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K3 ["UnjoinFromOutsiders"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 NAMECALL                         R1 R0 K2 ["GetRootPart"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R1 0
       10 NAMECALL                         R2 R0 K2 ["GetRootPart"]
       12 CALL                             R2 1 1
       13 LOADB                            R3 1
       14 SETTABLE                         R3 R1 R2
       15 NAMECALL                         R1 R0 K3 ["GetChildren"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [ipairs]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 3
       22 FORGPREP_INEXT                   R2
       23 GETUPVAL                         R7 1
       24 MOVE                             R8 R6
       25 CALL                             R7 1 0
       26 FORGLOOP                         R2 2 [inext] ; [-4]
       28 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelection"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 SETUPVAL                         R1 1
        7 GETIMPORT                        R1 K2 [ipairs]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R5
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 [inext] ; [-4]
       17 GETUPVAL                         R1 1
       18 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 NAMECALL                         R2 R0 K0 ["GetModelCFrame"]
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K2 [pairs]
       11 GETUPVAL                         R4 0
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 GETTABLEKS                       R12 R6 K3 ["CFrame"]
       16 NAMECALL                         R10 R2 K4 ["toObjectSpace"]
       18 CALL                             R10 2 -1
       19 NAMECALL                         R8 R1 K5 ["toWorldSpace"]
       21 CALL                             R8 -1 1
       22 SETTABLEKS                       R8 R6 K3 ["CFrame"]
       24 FORGLOOP                         R3 2 ; [-11]
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLEKS                       R12 R6 K2 ["CFrame"]
        9 NAMECALL                         R10 R0 K3 ["toObjectSpace"]
       11 CALL                             R10 2 -1
       12 NAMECALL                         R8 R1 K4 ["toWorldSpace"]
       14 CALL                             R8 -1 1
       15 SETTABLEKS                       R8 R6 K2 ["CFrame"]
       17 FORGLOOP                         R3 2 ; [-11]
       19 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelection"]
        3 CALL                             R0 0 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+35]
        8 GETUPVAL                         R1 1
        9 JUMPIF                           R1 ; [+13]
       10 GETIMPORT                        R1 K3 [Instance.new]
       12 LOADK                            R2 K4 ["Part"]
       13 GETIMPORT                        R4 K6 [game]
       15 GETTABLEKS                       R3 R4 K7 ["CoreGui"]
       17 CALL                             R1 2 1
       18 SETUPVAL                         R1 1
       19 GETUPVAL                         R1 1
       20 LOADK                            R2 K8 ["RotateAdornPart"]
       21 SETTABLEKS                       R2 R1 K9 ["Name"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K10 ["getFilteredSelectionMetapart"]
       26 CALL                             R1 0 1
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R3 R1 K11 ["CFrame"]
       30 SETTABLEKS                       R3 R2 K11 ["CFrame"]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R3 R1 K12 ["Size"]
       35 SETTABLEKS                       R3 R2 K12 ["Size"]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K13 ["adornInstanceWithRotate"]
       40 GETUPVAL                         R3 1
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelectionMetapart"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETTABLEKS                       R1 R0 K1 ["ClearCache"]
        7 CALL                             R1 0 0
        8 GETGLOBAL                        R1 K2 ["updateInvisiblePart"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["grabHandle"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["getCurrentHandle"]
        9 CALL                             R0 0 1
       10 JUMPIFNOTEQKN                    R0 K2 [0] ; [+9]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K3 ["isPlaneSelectingModeOn"]
       15 CALL                             R1 0 1
       16 JUMPIF                           R1 ; [+3]
       17 GETGLOBAL                        R1 K4 ["selectPart"]
       19 CALL                             R1 0 0
       20 JUMPIFNOTEQKN                    R0 K5 [14] ; [+11]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R2 R3 K6 ["Origin"]
       25 GETTABLEKS                       R1 R2 K7 ["p"]
       27 SETUPVAL                         R1 2
       28 GETGLOBAL                        R1 K8 ["analyticsSendSetPlane"]
       30 CALL                             R1 0 0
       31 JUMP                             ; [+17]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R1 R2 K9 ["getCurrentAdornment"]
       35 CALL                             R1 0 1
       36 JUMPIFNOT                        R1 ; [+12]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K10 ["getAdornmentWorldCFrame"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R5 R6 K9 ["getCurrentAdornment"]
       43 CALL                             R5 0 1
       44 GETTABLEN                        R4 R5 1
       45 CALL                             R3 1 1
       46 GETTABLEKS                       R2 R3 K7 ["p"]
       48 SETUPVAL                         R2 2
       49 GETGLOBAL                        R1 K0 ["grabHandle"]
       51 MOVE                             R2 R0
       52 GETUPVAL                         R3 2
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["isRubberBandDragInProgress"]
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETGLOBAL                        R0 K1 ["analyticsSendBoxSelect"]
       11 CALL                             R0 0 0
       12 JUMP                             ; [+3]
       13 GETGLOBAL                        R0 K2 ["analyticsSendFreeformDragged"]
       15 CALL                             R0 0 0
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R0 R1 K0 ["isRubberBandDragInProgress"]
       19 CALL                             R0 0 1
       20 JUMPIF                           R0 ; [+3]
       21 GETGLOBAL                        R0 K3 ["releaseHandle"]
       23 CALL                             R0 0 0
       24 GETGLOBAL                        R0 K4 ["releasePart"]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R0 R1 K3 ["releaseHandle"]
       30 CALL                             R0 0 0
       31 LOADB                            R0 0
       32 SETUPVAL                         R0 4
       33 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETGLOBAL                        R1 K0 ["Off"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETGLOBAL                        R1 K0 ["Off"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETGLOBAL                        R1 K1 ["On"]
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETGLOBAL                        R1 K1 ["On"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Deactivate"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETGLOBAL                        R0 K0 ["Off"]
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETGLOBAL                        R0 K0 ["Off"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R0 K0 ["X"]
        4 MUL                              R3 R4 R5
        5 GETTABLEKS                       R5 R0 K1 ["Y"]
        7 GETTABLEKS                       R6 R0 K1 ["Y"]
        9 MUL                              R4 R5 R6
       10 ADD                              R2 R3 R4
       11 GETTABLEKS                       R4 R0 K2 ["Z"]
       13 GETTABLEKS                       R5 R0 K2 ["Z"]
       15 MUL                              R3 R4 R5
       16 ADD                              R1 R2 R3
       17 RETURN                           R1 1

PROTO_25:
        0 GETGLOBAL                        R1 K0 ["squaredMagnitude"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 FASTCALL1                        MATH_SQRT R1 ; [+3]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R3 K4 [math.sqrt]
        8 CALL                             R3 1 1
        9 DIVRK                            R2 R1 K3 ["sqrt"]
       10 GETTABLEKS                       R5 R0 K5 ["X"]
       12 MUL                              R4 R5 R2
       13 GETTABLEKS                       R6 R0 K6 ["Y"]
       15 MUL                              R5 R6 R2
       16 GETTABLEKS                       R7 R0 K7 ["Z"]
       18 MUL                              R6 R7 R2
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R3 K10 [Vector3.new]
       22 CALL                             R3 3 1
       23 RETURN                           R3 1

PROTO_26:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["x"]
        3 GETTABLEKS                       R4 R1 K0 ["x"]
        5 JUMPIFNOTLE                      R3 R4 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["y"]
       10 GETTABLEKS                       R4 R1 K1 ["y"]
       12 JUMPIFNOTLE                      R3 R4 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["z"]
       16 GETTABLEKS                       R4 R1 K2 ["z"]
       18 JUMPIFLE                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_27:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["x"]
        3 GETTABLEKS                       R4 R1 K0 ["x"]
        5 JUMPIFNOTLE                      R4 R3 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["y"]
       10 GETTABLEKS                       R4 R1 K1 ["y"]
       12 JUMPIFNOTLE                      R4 R3 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["z"]
       16 GETTABLEKS                       R4 R1 K2 ["z"]
       18 JUMPIFLE                         R4 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_28:
        0 SUB                              R3 R1 R0
        1 SUB                              R4 R2 R0
        2 MOVE                             R7 R4
        3 NAMECALL                         R5 R3 K0 ["Cross"]
        5 CALL                             R5 2 1
        6 GETGLOBAL                        R6 K1 ["vector3Direction"]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 MOVE                             R9 R0
       11 NAMECALL                         R7 R6 K2 ["Dot"]
       13 CALL                             R7 2 1
       14 DUPTABLE                         R8 K8 [{"v0", "v1", "v2", "normal", "distance"}]
       15 SETTABLEKS                       R0 R8 K3 ["v0"]
       17 SETTABLEKS                       R1 R8 K4 ["v1"]
       19 SETTABLEKS                       R2 R8 K5 ["v2"]
       21 SETTABLEKS                       R6 R8 K6 ["normal"]
       23 SETTABLEKS                       R7 R8 K7 ["distance"]
       25 RETURN                           R8 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["Direction"]
        2 GETTABLEKS                       R4 R1 K1 ["normal"]
        4 NAMECALL                         R2 R2 K2 ["Dot"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R7 R1 K3 ["distance"]
        9 MINUS                            R6 R7
       10 GETTABLEKS                       R7 R0 K4 ["Origin"]
       12 GETTABLEKS                       R9 R1 K1 ["normal"]
       14 NAMECALL                         R7 R7 K2 ["Dot"]
       16 CALL                             R7 2 1
       17 ADD                              R5 R6 R7
       18 MINUS                            R4 R5
       19 DIV                              R3 R4 R2
       20 GETTABLEKS                       R5 R0 K4 ["Origin"]
       22 GETTABLEKS                       R7 R0 K0 ["Direction"]
       24 MUL                              R6 R7 R3
       25 ADD                              R4 R5 R6
       26 RETURN                           R4 1

PROTO_30:
        0 MUL                              R4 R2 R1
        1 MOVE                             R11 R4
        2 NAMECALL                         R9 R1 K0 ["Dot"]
        4 CALL                             R9 2 1
        5 MINUS                            R8 R9
        6 GETTABLEKS                       R9 R0 K1 ["Origin"]
        8 MOVE                             R11 R1
        9 NAMECALL                         R9 R9 K0 ["Dot"]
       11 CALL                             R9 2 1
       12 ADD                              R7 R8 R9
       13 MINUS                            R6 R7
       14 GETTABLEKS                       R7 R0 K2 ["Direction"]
       16 MOVE                             R9 R1
       17 NAMECALL                         R7 R7 K0 ["Dot"]
       19 CALL                             R7 2 1
       20 DIV                              R5 R6 R7
       21 GETTABLEKS                       R7 R0 K1 ["Origin"]
       23 GETTABLEKS                       R9 R0 K2 ["Direction"]
       25 MUL                              R8 R9 R5
       26 ADD                              R6 R7 R8
       27 GETTABLEKS                       R7 R4 K3 ["x"]
       29 JUMPIFNOTEQKN                    R7 K4 [0] ; [+7]
       31 GETTABLEKS                       R7 R6 K3 ["x"]
       33 GETTABLEKS                       R8 R2 K3 ["x"]
       35 JUMPIFNOTLE                      R7 R8 ; [+55]
       37 GETTABLEKS                       R7 R4 K3 ["x"]
       39 JUMPIFNOTEQKN                    R7 K4 [0] ; [+8]
       41 GETTABLEKS                       R7 R6 K3 ["x"]
       43 GETTABLEKS                       R9 R2 K3 ["x"]
       45 MINUS                            R8 R9
       46 JUMPIFNOTLE                      R8 R7 ; [+44]
       48 GETTABLEKS                       R7 R4 K5 ["y"]
       50 JUMPIFNOTEQKN                    R7 K4 [0] ; [+7]
       52 GETTABLEKS                       R7 R6 K5 ["y"]
       54 GETTABLEKS                       R8 R2 K5 ["y"]
       56 JUMPIFNOTLE                      R7 R8 ; [+34]
       58 GETTABLEKS                       R7 R4 K5 ["y"]
       60 JUMPIFNOTEQKN                    R7 K4 [0] ; [+8]
       62 GETTABLEKS                       R7 R6 K5 ["y"]
       64 GETTABLEKS                       R9 R2 K5 ["y"]
       66 MINUS                            R8 R9
       67 JUMPIFNOTLE                      R8 R7 ; [+23]
       69 GETTABLEKS                       R7 R4 K6 ["z"]
       71 JUMPIFNOTEQKN                    R7 K4 [0] ; [+7]
       73 GETTABLEKS                       R7 R6 K6 ["z"]
       75 GETTABLEKS                       R8 R2 K6 ["z"]
       77 JUMPIFNOTLE                      R7 R8 ; [+13]
       79 GETTABLEKS                       R7 R4 K6 ["z"]
       81 JUMPIFNOTEQKN                    R7 K4 [0] ; [+8]
       83 GETTABLEKS                       R7 R6 K6 ["z"]
       85 GETTABLEKS                       R9 R2 K6 ["z"]
       87 MINUS                            R8 R9
       88 JUMPIFNOTLE                      R8 R7 ; [+2]
       90 RETURN                           R6 1
       91 LOADNIL                          R7
       92 RETURN                           R7 1

PROTO_31:
        0 DIVK                             R2 R2 K0 [2]
        1 GETIMPORT                        R3 K3 [Ray.new]
        3 GETTABLEKS                       R6 R0 K4 ["Origin"]
        5 NAMECALL                         R4 R1 K5 ["pointToObjectSpace"]
        7 CALL                             R4 2 1
        8 GETTABLEKS                       R9 R0 K6 ["Direction"]
       10 GETTABLEKS                       R10 R1 K7 ["p"]
       12 ADD                              R8 R9 R10
       13 NAMECALL                         R6 R1 K5 ["pointToObjectSpace"]
       15 CALL                             R6 2 1
       16 GETTABLEKS                       R5 R6 K8 ["unit"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R5 R3 K4 ["Origin"]
       21 GETTABLEKS                       R4 R5 K9 ["x"]
       23 GETTABLEKS                       R6 R2 K9 ["x"]
       25 MINUS                            R5 R6
       26 JUMPIFNOTLT                      R4 R5 ; [+21]
       28 GETTABLEKS                       R5 R3 K6 ["Direction"]
       30 GETTABLEKS                       R4 R5 K9 ["x"]
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R5 R4 ; [+14]
       35 GETGLOBAL                        R4 K10 ["boxSideTest"]
       37 MOVE                             R5 R3
       38 LOADK                            R6 K11 [{-1, 0, 0}]
       39 MOVE                             R7 R2
       40 CALL                             R4 3 1
       41 JUMPIFNOT                        R4 ; [+34]
       42 MOVE                             R7 R4
       43 NAMECALL                         R5 R1 K12 ["pointToWorldSpace"]
       45 CALL                             R5 2 -1
       46 RETURN                           R5 -1
       47 JUMP                             ; [+28]
       48 GETTABLEKS                       R5 R3 K4 ["Origin"]
       50 GETTABLEKS                       R4 R5 K9 ["x"]
       52 GETTABLEKS                       R5 R2 K9 ["x"]
       54 JUMPIFNOTLT                      R5 R4 ; [+21]
       56 GETTABLEKS                       R5 R3 K6 ["Direction"]
       58 GETTABLEKS                       R4 R5 K9 ["x"]
       60 LOADN                            R5 0
       61 JUMPIFNOTLT                      R4 R5 ; [+14]
       63 GETGLOBAL                        R4 K10 ["boxSideTest"]
       65 MOVE                             R5 R3
       66 LOADK                            R6 K13 [{1, 0, 0}]
       67 MOVE                             R7 R2
       68 LOADB                            R8 1
       69 CALL                             R4 4 1
       70 JUMPIFNOT                        R4 ; [+5]
       71 MOVE                             R7 R4
       72 NAMECALL                         R5 R1 K12 ["pointToWorldSpace"]
       74 CALL                             R5 2 -1
       75 RETURN                           R5 -1
       76 GETTABLEKS                       R5 R3 K4 ["Origin"]
       78 GETTABLEKS                       R4 R5 K14 ["y"]
       80 GETTABLEKS                       R6 R2 K14 ["y"]
       82 MINUS                            R5 R6
       83 JUMPIFNOTLT                      R4 R5 ; [+21]
       85 GETTABLEKS                       R5 R3 K6 ["Direction"]
       87 GETTABLEKS                       R4 R5 K14 ["y"]
       89 LOADN                            R5 0
       90 JUMPIFNOTLT                      R5 R4 ; [+14]
       92 GETGLOBAL                        R4 K10 ["boxSideTest"]
       94 MOVE                             R5 R3
       95 LOADK                            R6 K15 [{0, -1, 0}]
       96 MOVE                             R7 R2
       97 CALL                             R4 3 1
       98 JUMPIFNOT                        R4 ; [+33]
       99 MOVE                             R7 R4
      100 NAMECALL                         R5 R1 K12 ["pointToWorldSpace"]
      102 CALL                             R5 2 -1
      103 RETURN                           R5 -1
      104 JUMP                             ; [+27]
      105 GETTABLEKS                       R5 R3 K4 ["Origin"]
      107 GETTABLEKS                       R4 R5 K14 ["y"]
      109 GETTABLEKS                       R5 R2 K14 ["y"]
      111 JUMPIFNOTLT                      R5 R4 ; [+20]
      113 GETTABLEKS                       R5 R3 K6 ["Direction"]
      115 GETTABLEKS                       R4 R5 K14 ["y"]
      117 LOADN                            R5 0
      118 JUMPIFNOTLT                      R4 R5 ; [+13]
      120 GETGLOBAL                        R4 K10 ["boxSideTest"]
      122 MOVE                             R5 R3
      123 LOADK                            R6 K16 [{0, 1, 0}]
      124 MOVE                             R7 R2
      125 CALL                             R4 3 1
      126 JUMPIFNOT                        R4 ; [+5]
      127 MOVE                             R7 R4
      128 NAMECALL                         R5 R1 K12 ["pointToWorldSpace"]
      130 CALL                             R5 2 -1
      131 RETURN                           R5 -1
      132 GETTABLEKS                       R5 R3 K4 ["Origin"]
      134 GETTABLEKS                       R4 R5 K17 ["z"]
      136 GETTABLEKS                       R6 R2 K17 ["z"]
      138 MINUS                            R5 R6
      139 JUMPIFNOTLT                      R4 R5 ; [+21]
      141 GETTABLEKS                       R5 R3 K6 ["Direction"]
      143 GETTABLEKS                       R4 R5 K17 ["z"]
      145 LOADN                            R5 0
      146 JUMPIFNOTLT                      R5 R4 ; [+14]
      148 GETGLOBAL                        R4 K10 ["boxSideTest"]
      150 MOVE                             R5 R3
      151 LOADK                            R6 K18 [{0, 0, -1}]
      152 MOVE                             R7 R2
      153 CALL                             R4 3 1
      154 JUMPIFNOT                        R4 ; [+33]
      155 MOVE                             R7 R4
      156 NAMECALL                         R5 R1 K12 ["pointToWorldSpace"]
      158 CALL                             R5 2 -1
      159 RETURN                           R5 -1
      160 JUMP                             ; [+27]
      161 GETTABLEKS                       R5 R3 K4 ["Origin"]
      163 GETTABLEKS                       R4 R5 K17 ["z"]
      165 GETTABLEKS                       R5 R2 K17 ["z"]
      167 JUMPIFNOTLT                      R5 R4 ; [+20]
      169 GETTABLEKS                       R5 R3 K6 ["Direction"]
      171 GETTABLEKS                       R4 R5 K17 ["z"]
      173 LOADN                            R5 0
      174 JUMPIFNOTLT                      R4 R5 ; [+13]
      176 GETGLOBAL                        R4 K10 ["boxSideTest"]
      178 MOVE                             R5 R3
      179 LOADK                            R6 K19 [{0, 0, 1}]
      180 MOVE                             R7 R2
      181 CALL                             R4 3 1
      182 JUMPIFNOT                        R4 ; [+5]
      183 MOVE                             R7 R4
      184 NAMECALL                         R5 R1 K12 ["pointToWorldSpace"]
      186 CALL                             R5 2 -1
      187 RETURN                           R5 -1
      188 LOADK                            R6 K20 [{0, 0, 0}]
      189 NAMECALL                         R4 R1 K12 ["pointToWorldSpace"]
      191 CALL                             R4 2 -1
      192 RETURN                           R4 -1

PROTO_32:
        0 GETTABLEKS                       R6 R1 K0 ["Unit"]
        2 NAMECALL                         R4 R0 K1 ["Dot"]
        4 CALL                             R4 2 1
        5 GETTABLEKS                       R5 R1 K0 ["Unit"]
        7 MUL                              R3 R4 R5
        8 SUB                              R2 R0 R3
        9 RETURN                           R2 1

PROTO_33:
        0 JUMPIF                           R2 ; [+2]
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K0 ["moveUntilCollide"]
        6 MOVE                             R6 R0
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 MOVE                             R9 R1
       10 MOVE                             R10 R4
       11 CALL                             R5 5 -1
       12 RETURN                           R5 -1

PROTO_34:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["SafeMove"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SafeMove"]
        3 MOVE                             R4 R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["createIgnoreListGivenWhiteList"]
        7 GETIMPORT                        R7 K3 [game]
        9 GETTABLEKS                       R6 R7 K4 ["Workspace"]
       11 MOVE                             R7 R2
       12 CALL                             R5 2 1
       13 MOVE                             R6 R1
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["CFrame"]
        2 MUL                              R2 R1 R3
        3 SETTABLEKS                       R2 R0 K0 ["CFrame"]
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GridSize"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["fuzzyCompare"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 [0.2]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADN                            R1 15
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K1 ["fuzzyCompare"]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K3 [0.01]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADN                            R1 1
       20 RETURN                           R1 1
       21 LOADN                            R1 45
       22 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GridSize"]
        3 JUMPIFEQKN                       R1 K1 [0] ; [+8]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["roundToNearest"]
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 RETURN                           R0 1

PROTO_39:
        0 GETGLOBAL                        R2 K0 ["roundToNearestGrid"]
        2 GETTABLEKS                       R3 R0 K1 ["X"]
        4 CALL                             R2 1 1
        5 GETGLOBAL                        R3 K0 ["roundToNearestGrid"]
        7 GETTABLEKS                       R4 R0 K2 ["Y"]
        9 CALL                             R3 1 1
       10 GETGLOBAL                        R4 K0 ["roundToNearestGrid"]
       12 GETTABLEKS                       R5 R0 K3 ["Z"]
       14 CALL                             R4 1 -1
       15 FASTCALL                         VECTOR ; [+2]
       16 GETIMPORT                        R1 K6 [Vector3.new]
       18 CALL                             R1 -1 1
       19 RETURN                           R1 1

PROTO_40:
        0 JUMPIFNOTEQKN                    R0 K0 [2] ; [+3]
        2 LOADK                            R1 K1 [{1, 0, 0}]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKN                    R0 K2 [3] ; [+3]
        6 LOADK                            R1 K3 [{-1, 0, 0}]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKN                    R0 K4 [4] ; [+3]
       10 LOADK                            R1 K5 [{0, 0, 1}]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKN                    R0 K6 [5] ; [+3]
       14 LOADK                            R1 K7 [{0, 0, -1}]
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKN                    R0 K8 [6] ; [+3]
       18 LOADK                            R1 K9 [{0, 1, 0}]
       19 RETURN                           R1 1
       20 JUMPIFNOTEQKN                    R0 K10 [7] ; [+3]
       22 LOADK                            R1 K11 [{1, 0, 1}]
       23 RETURN                           R1 1
       24 JUMPIFNOTEQKN                    R0 K12 [8] ; [+3]
       26 LOADK                            R1 K13 [{1, 0, -1}]
       27 RETURN                           R1 1
       28 JUMPIFNOTEQKN                    R0 K14 [9] ; [+3]
       30 LOADK                            R1 K15 [{-1, 0, 1}]
       31 RETURN                           R1 1
       32 JUMPIFNOTEQKN                    R0 K16 [10] ; [+3]
       34 LOADK                            R1 K17 [{-1, 0, -1}]
       35 RETURN                           R1 1
       36 LOADK                            R1 K18 [{0, 0, 0}]
       37 RETURN                           R1 1

PROTO_41:
        0 JUMPIFEQKN                       R1 K0 [2] ; [+11]
        2 JUMPIFEQKN                       R1 K1 [3] ; [+9]
        4 JUMPIFEQKN                       R1 K2 [7] ; [+7]
        6 JUMPIFEQKN                       R1 K3 [8] ; [+5]
        8 JUMPIFEQKN                       R1 K4 [9] ; [+3]
       10 JUMPIFNOTEQKN                    R1 K5 [10] ; [+23]
       12 GETGLOBAL                        R4 K6 ["roundToNearestGrid"]
       14 GETTABLEKS                       R5 R0 K7 ["X"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K8 ["GridSize"]
       20 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       22 GETIMPORT                        R3 K11 [math.max]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R0 K12 ["Y"]
       27 GETTABLEKS                       R5 R0 K13 ["Z"]
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R2 K16 [Vector3.new]
       32 CALL                             R2 3 1
       33 MOVE                             R0 R2
       34 JUMPIFEQKN                       R1 K17 [4] ; [+11]
       36 JUMPIFEQKN                       R1 K18 [5] ; [+9]
       38 JUMPIFEQKN                       R1 K2 [7] ; [+7]
       40 JUMPIFEQKN                       R1 K3 [8] ; [+5]
       42 JUMPIFEQKN                       R1 K4 [9] ; [+3]
       44 JUMPIFNOTEQKN                    R1 K5 [10] ; [+23]
       46 GETTABLEKS                       R3 R0 K7 ["X"]
       48 GETTABLEKS                       R4 R0 K12 ["Y"]
       50 GETGLOBAL                        R6 K6 ["roundToNearestGrid"]
       52 GETTABLEKS                       R7 R0 K13 ["Z"]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R7 R8 K8 ["GridSize"]
       58 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       60 GETIMPORT                        R5 K11 [math.max]
       62 CALL                             R5 2 1
       63 FASTCALL                         VECTOR ; [+2]
       64 GETIMPORT                        R2 K16 [Vector3.new]
       66 CALL                             R2 3 1
       67 MOVE                             R0 R2
       68 JUMPIFEQKN                       R1 K19 [6] ; [+3]
       70 JUMPIFNOTEQKN                    R1 K20 [1] ; [+23]
       72 GETTABLEKS                       R3 R0 K7 ["X"]
       74 GETGLOBAL                        R5 K6 ["roundToNearestGrid"]
       76 GETTABLEKS                       R6 R0 K12 ["Y"]
       78 CALL                             R5 1 1
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R6 R7 K8 ["GridSize"]
       82 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       84 GETIMPORT                        R4 K11 [math.max]
       86 CALL                             R4 2 1
       87 GETTABLEKS                       R5 R0 K13 ["Z"]
       89 FASTCALL                         VECTOR ; [+2]
       90 GETIMPORT                        R2 K16 [Vector3.new]
       92 CALL                             R2 3 1
       93 MOVE                             R0 R2
       94 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelection"]
        3 CALL                             R0 0 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 1
        6 JUMPIFNOTLT                      R1 R2 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETTABLEN                        R1 R0 1
       11 RETURN                           R1 1

PROTO_43:
        0 JUMPIF                           R1 ; [+2]
        1 NEWTABLE                         R1 0 0
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["getFilteredSelection"]
        7 CALL                             R2 0 1
        8 MOVE                             R0 R2
        9 GETIMPORT                        R2 K2 [pairs]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 LOADK                            R9 K3 ["BasePart"]
       15 NAMECALL                         R7 R6 K4 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 2 0
       26 NAMECALL                         R8 R6 K8 ["GetChildren"]
       28 CALL                             R8 1 1
       29 LENGTH                           R7 R8
       30 JUMPIFNOT                        R7 ; [+8]
       31 GETGLOBAL                        R7 K9 ["getCurrentSelectionWithChildren"]
       33 NAMECALL                         R8 R6 K8 ["GetChildren"]
       35 CALL                             R8 1 1
       36 MOVE                             R9 R1
       37 CALL                             R7 2 1
       38 MOVE                             R1 R7
       39 FORGLOOP                         R2 2 ; [-26]
       41 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R4 R0 K0 ["CFrame"]
        2 GETTABLEKS                       R6 R0 K0 ["CFrame"]
        4 GETTABLEKS                       R5 R6 K1 ["p"]
        6 SUB                              R3 R4 R5
        7 ADD                              R2 R3 R1
        8 SETTABLEKS                       R2 R0 K0 ["CFrame"]
       10 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R4 R1 K0 ["p"]
        2 SUB                              R3 R1 R4
        3 GETTABLEKS                       R5 R0 K1 ["CFrame"]
        5 GETTABLEKS                       R4 R5 K0 ["p"]
        7 ADD                              R2 R3 R4
        8 SETTABLEKS                       R2 R0 K1 ["CFrame"]
       10 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R6 R0 K0 ["x"]
        2 GETTABLEKS                       R7 R1 K0 ["x"]
        4 MUL                              R5 R6 R7
        5 GETTABLEKS                       R7 R0 K1 ["y"]
        7 GETTABLEKS                       R8 R1 K1 ["y"]
        9 MUL                              R6 R7 R8
       10 ADD                              R4 R5 R6
       11 GETTABLEKS                       R6 R0 K2 ["z"]
       13 GETTABLEKS                       R7 R1 K2 ["z"]
       15 MUL                              R5 R6 R7
       16 ADD                              R3 R4 R5
       17 GETTABLEKS                       R9 R0 K0 ["x"]
       19 FASTCALL2K                       MATH_POW R9 K3 ; [+4]
       21 LOADK                            R10 K3 [2]
       22 GETIMPORT                        R8 K6 [math.pow]
       24 CALL                             R8 2 1
       25 GETTABLEKS                       R10 R0 K1 ["y"]
       27 FASTCALL2K                       MATH_POW R10 K3 ; [+4]
       29 LOADK                            R11 K3 [2]
       30 GETIMPORT                        R9 K6 [math.pow]
       32 CALL                             R9 2 1
       33 ADD                              R7 R8 R9
       34 GETTABLEKS                       R9 R0 K2 ["z"]
       36 FASTCALL2K                       MATH_POW R9 K3 ; [+4]
       38 LOADK                            R10 K3 [2]
       39 GETIMPORT                        R8 K6 [math.pow]
       41 CALL                             R8 2 1
       42 ADD                              R6 R7 R8
       43 FASTCALL1                        MATH_SQRT R6 ; [+2]
       44 GETIMPORT                        R5 K8 [math.sqrt]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R10 R1 K0 ["x"]
       49 FASTCALL2K                       MATH_POW R10 K3 ; [+4]
       51 LOADK                            R11 K3 [2]
       52 GETIMPORT                        R9 K6 [math.pow]
       54 CALL                             R9 2 1
       55 GETTABLEKS                       R11 R1 K1 ["y"]
       57 FASTCALL2K                       MATH_POW R11 K3 ; [+4]
       59 LOADK                            R12 K3 [2]
       60 GETIMPORT                        R10 K6 [math.pow]
       62 CALL                             R10 2 1
       63 ADD                              R8 R9 R10
       64 GETTABLEKS                       R10 R1 K2 ["z"]
       66 FASTCALL2K                       MATH_POW R10 K3 ; [+4]
       68 LOADK                            R11 K3 [2]
       69 GETIMPORT                        R9 K6 [math.pow]
       71 CALL                             R9 2 1
       72 ADD                              R7 R8 R9
       73 FASTCALL1                        MATH_SQRT R7 ; [+2]
       74 GETIMPORT                        R6 K8 [math.sqrt]
       76 CALL                             R6 1 1
       77 MUL                              R4 R5 R6
       78 DIV                              R2 R3 R4
       79 FASTCALL1                        MATH_ACOS R2 ; [+3]
       80 MOVE                             R4 R2
       81 GETIMPORT                        R3 K10 [math.acos]
       83 CALL                             R3 1 1
       84 FASTCALL1                        MATH_DEG R3 ; [+3]
       85 MOVE                             R5 R3
       86 GETIMPORT                        R4 K12 [math.deg]
       88 CALL                             R4 1 1
       89 RETURN                           R4 1

PROTO_47:
        0 GETGLOBAL                        R0 K0 ["removeDragPart"]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K1 ["getFilteredSelectionMetapart"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["getCurrentHandle"]
       10 CALL                             R1 0 1
       11 LOADK                            R2 K3 ["Unknown"]
       12 JUMPIFEQKN                       R1 K4 [2] ; [+17]
       14 JUMPIFEQKN                       R1 K5 [6] ; [+15]
       16 JUMPIFEQKN                       R1 K6 [4] ; [+13]
       18 JUMPIFEQKN                       R1 K7 [3] ; [+11]
       20 JUMPIFEQKN                       R1 K8 [5] ; [+9]
       22 JUMPIFEQKN                       R1 K9 [7] ; [+7]
       24 JUMPIFEQKN                       R1 K10 [9] ; [+5]
       26 JUMPIFEQKN                       R1 K11 [10] ; [+3]
       28 JUMPIFNOTEQKN                    R1 K12 [8] ; [+3]
       30 LOADK                            R2 K13 ["Scale"]
       31 JUMP                             ; [+11]
       32 JUMPIFNOTEQKN                    R1 K14 [1] ; [+3]
       34 LOADK                            R2 K15 ["Move"]
       35 JUMP                             ; [+7]
       36 JUMPIFEQKN                       R1 K16 [11] ; [+5]
       38 JUMPIFEQKN                       R1 K17 [12] ; [+3]
       40 JUMPIFNOTEQKN                    R1 K18 [13] ; [+2]
       42 LOADK                            R2 K19 ["Rotate"]
       43 JUMPIFNOT                        R0 ; [+20]
       44 GETTABLEKS                       R3 R0 K20 ["CFrame"]
       46 GETUPVAL                         R4 2
       47 JUMPIFNOTEQ                      R3 R4 ; [+6]
       49 GETTABLEKS                       R3 R0 K21 ["Size"]
       51 GETUPVAL                         R4 3
       52 JUMPIFEQ                         R3 R4 ; [+11]
       54 GETIMPORT                        R3 K23 [game]
       56 LOADK                            R5 K24 ["ChangeHistoryService"]
       57 NAMECALL                         R3 R3 K25 ["GetService"]
       59 CALL                             R3 2 1
       60 MOVE                             R5 R2
       61 NAMECALL                         R3 R3 K26 ["SetWaypoint"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_48:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K4 ["Set"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_49:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+9]
        2 GETIMPORT                        R2 K3 [CFrame.Angles]
        4 LOADK                            R3 K4 [3.14159265358979]
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 CALL                             R2 3 1
        8 MUL                              R0 R0 R2
        9 RETURN                           R0 1
       10 JUMPIFNOTEQKN                    R1 K5 [3] ; [+9]
       12 GETIMPORT                        R2 K3 [CFrame.Angles]
       14 LOADN                            R3 0
       15 LOADN                            R4 0
       16 LOADK                            R5 K6 [-1.5707963267949]
       17 CALL                             R2 3 1
       18 MUL                              R0 R0 R2
       19 RETURN                           R0 1
       20 JUMPIFNOTEQKN                    R1 K7 [2] ; [+9]
       22 GETIMPORT                        R2 K3 [CFrame.Angles]
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 LOADK                            R5 K8 [1.5707963267949]
       27 CALL                             R2 3 1
       28 MUL                              R0 R0 R2
       29 RETURN                           R0 1
       30 JUMPIFNOTEQKN                    R1 K9 [4] ; [+9]
       32 GETIMPORT                        R2 K3 [CFrame.Angles]
       34 LOADK                            R3 K6 [-1.5707963267949]
       35 LOADN                            R4 0
       36 LOADN                            R5 0
       37 CALL                             R2 3 1
       38 MUL                              R0 R0 R2
       39 RETURN                           R0 1
       40 JUMPIFNOTEQKN                    R1 K10 [5] ; [+8]
       42 GETIMPORT                        R2 K3 [CFrame.Angles]
       44 LOADK                            R3 K8 [1.5707963267949]
       45 LOADN                            R4 0
       46 LOADN                            R5 0
       47 CALL                             R2 3 1
       48 MUL                              R0 R0 R2
       49 RETURN                           R0 1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["getFilteredSelection"]
        6 CALL                             R0 0 1
        7 LENGTH                           R1 R0
        8 LOADN                            R2 1
        9 JUMPIFNOTLT                      R1 R2 ; [+2]
       11 RETURN                           R0 0
       12 LENGTH                           R1 R0
       13 LOADN                            R2 1
       14 JUMPIFNOTLT                      R2 R1 ; [+1]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K1 ["getFilteredSelectionMetapart"]
       19 CALL                             R1 0 1
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+40]
       22 JUMPIFNOT                        R1 ; [+14]
       23 GETUPVAL                         R2 3
       24 SETTABLEKS                       R2 R1 K2 ["UpdatePlaneCFrame"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R3 R1 K3 ["PlaneAlignedCFrame"]
       29 SETTABLEKS                       R3 R2 K4 ["CFrame"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R3 R1 K5 ["PlaneAlignedSize"]
       34 SETTABLEKS                       R3 R2 K6 ["Size"]
       36 JUMP                             ; [+31]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K4 ["CFrame"]
       40 GETUPVAL                         R3 0
       41 GETIMPORT                        R4 K8 [CFrame.new]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K4 ["CFrame"]
       46 GETTABLEKS                       R5 R6 K9 ["p"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K4 ["CFrame"]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R3 R4 K10 ["setPartCFrameToExtents"]
       54 GETUPVAL                         R4 0
       55 GETGLOBAL                        R5 K11 ["rotateCFrame"]
       57 MOVE                             R6 R2
       58 GETUPVAL                         R7 5
       59 CALL                             R5 2 -1
       60 CALL                             R3 -1 0
       61 JUMP                             ; [+6]
       62 GETUPVAL                         R3 4
       63 GETTABLEKS                       R2 R3 K10 ["setPartCFrameToExtents"]
       65 GETUPVAL                         R3 0
       66 LOADNIL                          R4
       67 CALL                             R2 2 0
       68 GETUPVAL                         R2 6
       69 JUMPIFNOT                        R2 ; [+11]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K4 ["CFrame"]
       73 GETUPVAL                         R6 6
       74 NAMECALL                         R4 R4 K12 ["pointToObjectSpace"]
       76 CALL                             R4 2 1
       77 GETTABLEKS                       R3 R4 K13 ["y"]
       79 MINUS                            R2 R3
       80 SETUPVAL                         R2 7
       81 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resetDragger"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_52:
        0 LOADK                            R5 K0 ["Part"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+10]
        5 JUMPIFEQKN                       R2 K2 [1] ; [+9]
        7 JUMPIFEQKN                       R2 K3 [13] ; [+7]
        9 JUMPIFEQKN                       R2 K4 [12] ; [+5]
       11 JUMPIFEQKN                       R2 K5 [11] ; [+3]
       13 JUMPIFNOTEQKN                    R2 K6 [14] ; [+2]
       15 RETURN                           R1 1
       16 GETTABLEKS                       R3 R0 K7 ["Shape"]
       18 GETIMPORT                        R4 K11 [Enum.PartType.Ball]
       20 JUMPIFNOTEQ                      R3 R4 ; [+16]
       22 GETTABLEKS                       R3 R1 K12 ["Y"]
       24 JUMPIFNOTEQKN                    R2 K13 [6] ; [+10]
       26 FASTCALL3                        VECTOR R3 R3 R3
       28 MOVE                             R5 R3
       29 MOVE                             R6 R3
       30 MOVE                             R7 R3
       31 GETIMPORT                        R4 K16 [Vector3.new]
       33 CALL                             R4 3 1
       34 JUMPIF                           R4 ; [+1]
       35 MOVE                             R4 R1
       36 RETURN                           R4 1
       37 GETTABLEKS                       R3 R0 K7 ["Shape"]
       39 GETIMPORT                        R4 K18 [Enum.PartType.Cylinder]
       41 JUMPIFNOTEQ                      R3 R4 ; [+27]
       43 JUMPIFNOTEQKN                    R2 K13 [6] ; [+12]
       45 GETTABLEKS                       R3 R1 K12 ["Y"]
       47 LOADN                            R5 0
       48 FASTCALL3                        VECTOR R5 R3 R3
       50 MOVE                             R6 R3
       51 MOVE                             R7 R3
       52 GETIMPORT                        R4 K16 [Vector3.new]
       54 CALL                             R4 3 1
       55 RETURN                           R4 1
       56 GETTABLEKS                       R3 R1 K19 ["Z"]
       58 GETTABLEKS                       R4 R1 K20 ["X"]
       60 FASTCALL3                        VECTOR R4 R3 R3
       62 MOVE                             R6 R4
       63 MOVE                             R7 R3
       64 MOVE                             R8 R3
       65 GETIMPORT                        R5 K16 [Vector3.new]
       67 CALL                             R5 3 1
       68 RETURN                           R5 1
       69 RETURN                           R1 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getCurrentHandle"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKN                    R0 K1 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKN                    R0 K2 [14] ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K3 ["getCurrentAdornment"]
       16 CALL                             R1 0 1
       17 GETTABLEN                        R3 R1 1
       18 GETTABLEKS                       R2 R3 K4 ["Adornee"]
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K5 ["getAdornmentWorldCFrame"]
       25 GETTABLEN                        R4 R1 1
       26 CALL                             R3 1 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K6 ["UnitRay"]
       30 JUMPIFEQKN                       R0 K7 [1] ; [+3]
       32 JUMPIFNOTEQKN                    R0 K8 [6] ; [+90]
       34 GETTABLEKS                       R7 R2 K9 ["CFrame"]
       36 LOADK                            R9 K10 [{0, 1, 0}]
       37 NAMECALL                         R7 R7 K11 ["pointToWorldSpace"]
       39 CALL                             R7 2 1
       40 GETTABLEKS                       R9 R2 K9 ["CFrame"]
       42 GETTABLEKS                       R8 R9 K12 ["p"]
       44 SUB                              R6 R7 R8
       45 GETTABLEKS                       R5 R6 K13 ["Unit"]
       47 GETTABLEKS                       R7 R4 K14 ["Direction"]
       49 GETTABLEKS                       R9 R4 K14 ["Direction"]
       51 MOVE                             R11 R5
       52 NAMECALL                         R9 R9 K15 ["Dot"]
       54 CALL                             R9 2 1
       55 MUL                              R8 R9 R5
       56 SUB                              R6 R7 R8
       57 GETTABLEKS                       R9 R3 K12 ["p"]
       59 NAMECALL                         R7 R6 K15 ["Dot"]
       61 CALL                             R7 2 1
       62 GETTABLEKS                       R8 R4 K14 ["Direction"]
       64 MOVE                             R10 R6
       65 NAMECALL                         R8 R8 K15 ["Dot"]
       67 CALL                             R8 2 1
       68 MINUS                            R12 R7
       69 GETTABLEKS                       R13 R4 K16 ["Origin"]
       71 MOVE                             R15 R6
       72 NAMECALL                         R13 R13 K15 ["Dot"]
       74 CALL                             R13 2 1
       75 ADD                              R11 R12 R13
       76 MINUS                            R10 R11
       77 DIV                              R9 R10 R8
       78 GETTABLEKS                       R11 R4 K16 ["Origin"]
       80 GETTABLEKS                       R13 R4 K14 ["Direction"]
       82 MUL                              R12 R13 R9
       83 ADD                              R10 R11 R12
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R14 R5 K13 ["Unit"]
       87 MULK                             R13 R14 K17 [800]
       88 SUB                              R11 R12 R13
       89 GETIMPORT                        R12 K20 [Ray.new]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R14 R5 K13 ["Unit"]
       94 CALL                             R12 2 1
       95 MOVE                             R14 R10
       96 NAMECALL                         R12 R12 K21 ["ClosestPoint"]
       98 CALL                             R12 2 1
       99 LOADK                            R13 K10 [{0, 1, 0}]
      100 GETUPVAL                         R14 1
      101 JUMPIFNOTEQ                      R12 R14 ; [+14]
      103 GETIMPORT                        R14 K20 [Ray.new]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R17 R5 K13 ["Unit"]
      108 MINUS                            R16 R17
      109 CALL                             R14 2 1
      110 MOVE                             R16 R10
      111 NAMECALL                         R14 R14 K21 ["ClosestPoint"]
      113 CALL                             R14 2 1
      114 MOVE                             R12 R14
      115 MULK                             R13 R13 K22 [-1]
      116 GETUPVAL                         R17 1
      117 SUB                              R16 R12 R17
      118 GETTABLEKS                       R15 R16 K23 ["Magnitude"]
      120 MUL                              R14 R15 R13
      121 SETUPVAL                         R14 3
      122 JUMP                             ; [+367]
      123 JUMPIFEQKN                       R0 K24 [2] ; [+3]
      125 JUMPIFNOTEQKN                    R0 K25 [3] ; [+95]
      127 GETTABLEKS                       R7 R2 K9 ["CFrame"]
      129 LOADK                            R9 K26 [{1, 0, 0}]
      130 NAMECALL                         R7 R7 K11 ["pointToWorldSpace"]
      132 CALL                             R7 2 1
      133 GETTABLEKS                       R9 R2 K9 ["CFrame"]
      135 GETTABLEKS                       R8 R9 K12 ["p"]
      137 SUB                              R6 R7 R8
      138 GETTABLEKS                       R5 R6 K13 ["Unit"]
      140 GETTABLEKS                       R7 R4 K14 ["Direction"]
      142 GETTABLEKS                       R9 R4 K14 ["Direction"]
      144 MOVE                             R11 R5
      145 NAMECALL                         R9 R9 K15 ["Dot"]
      147 CALL                             R9 2 1
      148 MUL                              R8 R9 R5
      149 SUB                              R6 R7 R8
      150 GETTABLEKS                       R9 R3 K12 ["p"]
      152 NAMECALL                         R7 R6 K15 ["Dot"]
      154 CALL                             R7 2 1
      155 GETTABLEKS                       R8 R4 K14 ["Direction"]
      157 MOVE                             R10 R6
      158 NAMECALL                         R8 R8 K15 ["Dot"]
      160 CALL                             R8 2 1
      161 MINUS                            R12 R7
      162 GETTABLEKS                       R13 R4 K16 ["Origin"]
      164 MOVE                             R15 R6
      165 NAMECALL                         R13 R13 K15 ["Dot"]
      167 CALL                             R13 2 1
      168 ADD                              R11 R12 R13
      169 MINUS                            R10 R11
      170 DIV                              R9 R10 R8
      171 GETTABLEKS                       R11 R4 K16 ["Origin"]
      173 GETTABLEKS                       R13 R4 K14 ["Direction"]
      175 MUL                              R12 R13 R9
      176 ADD                              R10 R11 R12
      177 GETUPVAL                         R12 1
      178 GETTABLEKS                       R14 R5 K13 ["Unit"]
      180 MULK                             R13 R14 K17 [800]
      181 SUB                              R11 R12 R13
      182 GETIMPORT                        R12 K20 [Ray.new]
      184 GETUPVAL                         R13 1
      185 GETTABLEKS                       R14 R5 K13 ["Unit"]
      187 CALL                             R12 2 1
      188 MOVE                             R14 R10
      189 NAMECALL                         R12 R12 K21 ["ClosestPoint"]
      191 CALL                             R12 2 1
      192 LOADK                            R13 K26 [{1, 0, 0}]
      193 GETUPVAL                         R14 1
      194 JUMPIFNOTEQ                      R12 R14 ; [+14]
      196 GETIMPORT                        R14 K20 [Ray.new]
      198 GETUPVAL                         R15 1
      199 GETTABLEKS                       R17 R5 K13 ["Unit"]
      201 MINUS                            R16 R17
      202 CALL                             R14 2 1
      203 MOVE                             R16 R10
      204 NAMECALL                         R14 R14 K21 ["ClosestPoint"]
      206 CALL                             R14 2 1
      207 MOVE                             R12 R14
      208 MULK                             R13 R13 K22 [-1]
      209 GETUPVAL                         R17 1
      210 SUB                              R16 R12 R17
      211 GETTABLEKS                       R15 R16 K23 ["Magnitude"]
      213 MUL                              R14 R15 R13
      214 SETUPVAL                         R14 3
      215 JUMPIFNOTEQKN                    R0 K25 [3] ; [+274]
      217 GETUPVAL                         R15 3
      218 MULK                             R14 R15 K22 [-1]
      219 SETUPVAL                         R14 3
      220 JUMP                             ; [+269]
      221 JUMPIFEQKN                       R0 K27 [4] ; [+3]
      223 JUMPIFNOTEQKN                    R0 K28 [5] ; [+95]
      225 GETTABLEKS                       R7 R2 K9 ["CFrame"]
      227 LOADK                            R9 K29 [{0, 0, 1}]
      228 NAMECALL                         R7 R7 K11 ["pointToWorldSpace"]
      230 CALL                             R7 2 1
      231 GETTABLEKS                       R9 R2 K9 ["CFrame"]
      233 GETTABLEKS                       R8 R9 K12 ["p"]
      235 SUB                              R6 R7 R8
      236 GETTABLEKS                       R5 R6 K13 ["Unit"]
      238 GETTABLEKS                       R7 R4 K14 ["Direction"]
      240 GETTABLEKS                       R9 R4 K14 ["Direction"]
      242 MOVE                             R11 R5
      243 NAMECALL                         R9 R9 K15 ["Dot"]
      245 CALL                             R9 2 1
      246 MUL                              R8 R9 R5
      247 SUB                              R6 R7 R8
      248 GETTABLEKS                       R9 R3 K12 ["p"]
      250 NAMECALL                         R7 R6 K15 ["Dot"]
      252 CALL                             R7 2 1
      253 GETTABLEKS                       R8 R4 K14 ["Direction"]
      255 MOVE                             R10 R6
      256 NAMECALL                         R8 R8 K15 ["Dot"]
      258 CALL                             R8 2 1
      259 MINUS                            R12 R7
      260 GETTABLEKS                       R13 R4 K16 ["Origin"]
      262 MOVE                             R15 R6
      263 NAMECALL                         R13 R13 K15 ["Dot"]
      265 CALL                             R13 2 1
      266 ADD                              R11 R12 R13
      267 MINUS                            R10 R11
      268 DIV                              R9 R10 R8
      269 GETTABLEKS                       R11 R4 K16 ["Origin"]
      271 GETTABLEKS                       R13 R4 K14 ["Direction"]
      273 MUL                              R12 R13 R9
      274 ADD                              R10 R11 R12
      275 GETUPVAL                         R12 1
      276 GETTABLEKS                       R14 R5 K13 ["Unit"]
      278 MULK                             R13 R14 K17 [800]
      279 SUB                              R11 R12 R13
      280 GETIMPORT                        R12 K20 [Ray.new]
      282 GETUPVAL                         R13 1
      283 GETTABLEKS                       R14 R5 K13 ["Unit"]
      285 CALL                             R12 2 1
      286 MOVE                             R14 R10
      287 NAMECALL                         R12 R12 K21 ["ClosestPoint"]
      289 CALL                             R12 2 1
      290 LOADK                            R13 K29 [{0, 0, 1}]
      291 GETUPVAL                         R14 1
      292 JUMPIFNOTEQ                      R12 R14 ; [+14]
      294 GETIMPORT                        R14 K20 [Ray.new]
      296 GETUPVAL                         R15 1
      297 GETTABLEKS                       R17 R5 K13 ["Unit"]
      299 MINUS                            R16 R17
      300 CALL                             R14 2 1
      301 MOVE                             R16 R10
      302 NAMECALL                         R14 R14 K21 ["ClosestPoint"]
      304 CALL                             R14 2 1
      305 MOVE                             R12 R14
      306 MULK                             R13 R13 K22 [-1]
      307 GETUPVAL                         R17 1
      308 SUB                              R16 R12 R17
      309 GETTABLEKS                       R15 R16 K23 ["Magnitude"]
      311 MUL                              R14 R15 R13
      312 SETUPVAL                         R14 3
      313 JUMPIFNOTEQKN                    R0 K28 [5] ; [+176]
      315 GETUPVAL                         R15 3
      316 MULK                             R14 R15 K22 [-1]
      317 SETUPVAL                         R14 3
      318 JUMP                             ; [+171]
      319 JUMPIFEQKN                       R0 K30 [7] ; [+7]
      321 JUMPIFEQKN                       R0 K31 [10] ; [+5]
      323 JUMPIFEQKN                       R0 K32 [8] ; [+3]
      325 JUMPIFNOTEQKN                    R0 K33 [9] ; [+77]
      327 GETTABLEKS                       R7 R2 K9 ["CFrame"]
      329 LOADK                            R9 K10 [{0, 1, 0}]
      330 NAMECALL                         R7 R7 K11 ["pointToWorldSpace"]
      332 CALL                             R7 2 1
      333 GETTABLEKS                       R9 R2 K9 ["CFrame"]
      335 GETTABLEKS                       R8 R9 K12 ["p"]
      337 SUB                              R6 R7 R8
      338 GETTABLEKS                       R5 R6 K13 ["Unit"]
      340 GETTABLEKS                       R8 R3 K12 ["p"]
      342 NAMECALL                         R6 R5 K15 ["Dot"]
      344 CALL                             R6 2 1
      345 GETTABLEKS                       R7 R4 K14 ["Direction"]
      347 MOVE                             R9 R5
      348 NAMECALL                         R7 R7 K15 ["Dot"]
      350 CALL                             R7 2 1
      351 MINUS                            R11 R6
      352 GETTABLEKS                       R12 R4 K16 ["Origin"]
      354 MOVE                             R14 R5
      355 NAMECALL                         R12 R12 K15 ["Dot"]
      357 CALL                             R12 2 1
      358 ADD                              R10 R11 R12
      359 MINUS                            R9 R10
      360 DIV                              R8 R9 R7
      361 GETTABLEKS                       R10 R4 K16 ["Origin"]
      363 GETTABLEKS                       R12 R4 K14 ["Direction"]
      365 MUL                              R11 R12 R8
      366 ADD                              R9 R10 R11
      367 GETUPVAL                         R11 4
      368 GETUPVAL                         R15 4
      369 GETTABLEKS                       R14 R15 K12 ["p"]
      371 ADD                              R13 R9 R14
      372 NAMECALL                         R11 R11 K34 ["pointToObjectSpace"]
      374 CALL                             R11 2 1
      375 GETUPVAL                         R12 4
      376 GETUPVAL                         R15 1
      377 GETUPVAL                         R17 4
      378 GETTABLEKS                       R16 R17 K12 ["p"]
      380 ADD                              R14 R15 R16
      381 NAMECALL                         R12 R12 K34 ["pointToObjectSpace"]
      383 CALL                             R12 2 1
      384 SUB                              R10 R11 R12
      385 SETUPVAL                         R10 3
      386 JUMPIFEQKN                       R0 K33 [9] ; [+3]
      388 JUMPIFNOTEQKN                    R0 K31 [10] ; [+5]
      390 GETUPVAL                         R11 3
      391 LOADK                            R12 K35 [{-1, 1, 1}]
      392 MUL                              R10 R11 R12
      393 SETUPVAL                         R10 3
      394 JUMPIFEQKN                       R0 K32 [8] ; [+3]
      396 JUMPIFNOTEQKN                    R0 K31 [10] ; [+93]
      398 GETUPVAL                         R11 3
      399 LOADK                            R12 K36 [{1, 1, -1}]
      400 MUL                              R10 R11 R12
      401 SETUPVAL                         R10 3
      402 JUMP                             ; [+87]
      403 JUMPIFEQKN                       R0 K37 [11] ; [+5]
      405 JUMPIFEQKN                       R0 K38 [12] ; [+3]
      407 JUMPIFNOTEQKN                    R0 K39 [13] ; [+82]
      409 GETTABLEKS                       R7 R2 K9 ["CFrame"]
      411 JUMPIFNOTEQKN                    R0 K39 [13] ; [+3]
      413 LOADN                            R10 1
      414 JUMP                             ; [+1]
      415 LOADN                            R10 0
      416 JUMPIFNOTEQKN                    R0 K38 [12] ; [+3]
      418 LOADN                            R11 1
      419 JUMP                             ; [+1]
      420 LOADN                            R11 0
      421 JUMPIFNOTEQKN                    R0 K37 [11] ; [+3]
      423 LOADN                            R12 1
      424 JUMP                             ; [+1]
      425 LOADN                            R12 0
      426 FASTCALL                         VECTOR ; [+2]
      427 GETIMPORT                        R9 K41 [Vector3.new]
      429 CALL                             R9 3 1
      430 NAMECALL                         R7 R7 K11 ["pointToWorldSpace"]
      432 CALL                             R7 2 1
      433 GETTABLEKS                       R9 R2 K9 ["CFrame"]
      435 GETTABLEKS                       R8 R9 K12 ["p"]
      437 SUB                              R6 R7 R8
      438 GETTABLEKS                       R5 R6 K13 ["Unit"]
      440 GETTABLEKS                       R8 R3 K12 ["p"]
      442 NAMECALL                         R6 R5 K15 ["Dot"]
      444 CALL                             R6 2 1
      445 GETTABLEKS                       R7 R4 K14 ["Direction"]
      447 MOVE                             R9 R5
      448 NAMECALL                         R7 R7 K15 ["Dot"]
      450 CALL                             R7 2 1
      451 MINUS                            R11 R6
      452 GETTABLEKS                       R12 R4 K16 ["Origin"]
      454 MOVE                             R14 R5
      455 NAMECALL                         R12 R12 K15 ["Dot"]
      457 CALL                             R12 2 1
      458 ADD                              R10 R11 R12
      459 MINUS                            R9 R10
      460 DIV                              R8 R9 R7
      461 GETTABLEKS                       R10 R4 K16 ["Origin"]
      463 GETTABLEKS                       R12 R4 K14 ["Direction"]
      465 MUL                              R11 R12 R8
      466 ADD                              R9 R10 R11
      467 SETUPVAL                         R9 5
      468 GETUPVAL                         R10 4
      469 GETUPVAL                         R13 5
      470 GETUPVAL                         R15 4
      471 GETTABLEKS                       R14 R15 K12 ["p"]
      473 ADD                              R12 R13 R14
      474 NAMECALL                         R10 R10 K34 ["pointToObjectSpace"]
      476 CALL                             R10 2 1
      477 GETUPVAL                         R11 4
      478 GETUPVAL                         R14 1
      479 GETUPVAL                         R16 4
      480 GETTABLEKS                       R15 R16 K12 ["p"]
      482 ADD                              R13 R14 R15
      483 NAMECALL                         R11 R11 K34 ["pointToObjectSpace"]
      485 CALL                             R11 2 1
      486 SUB                              R9 R10 R11
      487 SETUPVAL                         R9 3
      488 LOADB                            R9 0
      489 SETUPVAL                         R9 6
      490 GETUPVAL                         R5 7
      491 JUMPIF                           R5 ; [+3]
      492 GETUPVAL                         R5 3
      493 SETUPVAL                         R5 7
      494 RETURN                           R0 0
      495 GETUPVAL                         R6 3
      496 GETUPVAL                         R7 7
      497 SUB                              R5 R6 R7
      498 SETUPVAL                         R5 3
      499 RETURN                           R0 0

PROTO_54:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R0 ; [+9]
        3 MULK                             R4 R0 K0 [1000000]
        4 SUBK                             R3 R4 K1 [0.5]
        5 FASTCALL1                        MATH_CEIL R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.ceil]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K0 [1000000]
       10 JUMPIF                           R1 ; [+7]
       11 MULK                             R4 R0 K0 [1000000]
       12 ADDK                             R3 R4 K1 [0.5]
       13 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       14 GETIMPORT                        R2 K6 [math.floor]
       16 CALL                             R2 1 1
       17 DIVK                             R1 R2 K0 [1000000]
       18 RETURN                           R1 1

PROTO_55:
        0 NAMECALL                         R1 R0 K0 ["components"]
        2 CALL                             R1 1 12
        3 GETIMPORT                        R13 K3 [CFrame.new]
        5 GETGLOBAL                        R14 K4 ["sanitizeFloat"]
        7 MOVE                             R15 R1
        8 CALL                             R14 1 1
        9 GETGLOBAL                        R15 K4 ["sanitizeFloat"]
       11 MOVE                             R16 R2
       12 CALL                             R15 1 1
       13 GETGLOBAL                        R16 K4 ["sanitizeFloat"]
       15 MOVE                             R17 R3
       16 CALL                             R16 1 1
       17 GETGLOBAL                        R17 K4 ["sanitizeFloat"]
       19 MOVE                             R18 R4
       20 CALL                             R17 1 1
       21 GETGLOBAL                        R18 K4 ["sanitizeFloat"]
       23 MOVE                             R19 R5
       24 CALL                             R18 1 1
       25 GETGLOBAL                        R19 K4 ["sanitizeFloat"]
       27 MOVE                             R20 R6
       28 CALL                             R19 1 1
       29 GETGLOBAL                        R20 K4 ["sanitizeFloat"]
       31 MOVE                             R21 R7
       32 CALL                             R20 1 1
       33 GETGLOBAL                        R21 K4 ["sanitizeFloat"]
       35 MOVE                             R22 R8
       36 CALL                             R21 1 1
       37 GETGLOBAL                        R22 K4 ["sanitizeFloat"]
       39 MOVE                             R23 R9
       40 CALL                             R22 1 1
       41 GETGLOBAL                        R23 K4 ["sanitizeFloat"]
       43 MOVE                             R24 R10
       44 CALL                             R23 1 1
       45 GETGLOBAL                        R24 K4 ["sanitizeFloat"]
       47 MOVE                             R25 R11
       48 CALL                             R24 1 1
       49 GETGLOBAL                        R25 K4 ["sanitizeFloat"]
       51 MOVE                             R26 R12
       52 CALL                             R25 1 -1
       53 CALL                             R13 -1 -1
       54 RETURN                           R13 -1

PROTO_56:
        0 GETIMPORT                        R2 K3 [Enum.PartType.Cylinder]
        2 JUMPIFNOTEQ                      R0 R2 ; [+20]
        4 GETTABLEKS                       R3 R1 K4 ["Y"]
        6 GETTABLEKS                       R4 R1 K5 ["Z"]
        8 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       10 GETIMPORT                        R2 K8 [math.min]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R4 R1 K9 ["X"]
       15 FASTCALL3                        VECTOR R4 R2 R2
       17 MOVE                             R5 R2
       18 MOVE                             R6 R2
       19 GETIMPORT                        R3 K12 [Vector3.new]
       21 CALL                             R3 3 1
       22 RETURN                           R3 1
       23 RETURN                           R1 1

PROTO_57:
        0 LOADK                            R5 K0 ["BasePart"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R3 R0 K2 ["GetChildren"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K3 ["Shape"]
       11 GETGLOBAL                        R5 K4 ["getShapeRenderSize"]
       13 MOVE                             R6 R4
       14 MOVE                             R7 R1
       15 CALL                             R5 2 1
       16 MOVE                             R1 R5
       17 GETGLOBAL                        R5 K4 ["getShapeRenderSize"]
       19 MOVE                             R6 R4
       20 MOVE                             R7 R2
       21 CALL                             R5 2 1
       22 MOVE                             R2 R5
       23 LOADN                            R7 1
       24 LENGTH                           R5 R3
       25 LOADN                            R6 1
       26 FORNPREP                         R5
       27 GETTABLE                         R8 R3 R7
       28 LOADK                            R11 K5 ["Attachment"]
       29 NAMECALL                         R9 R8 K1 ["IsA"]
       31 CALL                             R9 2 1
       32 JUMPIFNOT                        R9 ; [+6]
       33 GETTABLEKS                       R11 R8 K6 ["Position"]
       35 DIV                              R10 R11 R1
       36 MUL                              R9 R10 R2
       37 SETTABLEKS                       R9 R8 K6 ["Position"]
       39 FORNLOOP                         R5
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 NAMECALL                         R5 R0 K7 ["UpdatePivot"]
       44 CALL                             R5 3 0
       45 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelectionMetapart"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["getFilteredSelection"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["getCurrentHandle"]
       11 CALL                             R2 0 1
       12 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 NAMECALL                         R3 R3 K4 ["IsRunning"]
       18 CALL                             R3 1 1
       19 JUMPIFNOT                        R3 ; [+21]
       20 GETUPVAL                         R3 3
       21 JUMPIF                           R3 ; [+19]
       22 GETGLOBAL                        R3 K5 ["getCurrentSelectionWithChildren"]
       24 CALL                             R3 0 1
       25 LOADB                            R4 1
       26 SETUPVAL                         R4 3
       27 GETIMPORT                        R4 K7 [ipairs]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 3
       31 FORGPREP_INEXT                   R4
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R10 R8 K8 ["Anchored"]
       35 SETTABLE                         R10 R9 R7
       36 LOADB                            R9 1
       37 SETTABLEKS                       R9 R8 K8 ["Anchored"]
       39 FORGLOOP                         R4 2 [inext] ; [-8]
       41 GETGLOBAL                        R3 K9 ["preUpdatePart"]
       43 CALL                             R3 0 0
       44 GETUPVAL                         R3 5
       45 JUMPIFNOT                        R3 ; [+2]
       46 GETUPVAL                         R3 6
       47 JUMPIF                           R3 ; [+2]
       48 JUMPIFNOTEQKN                    R2 K10 [1] ; [+3]
       50 GETUPVAL                         R3 7
       51 JUMPIF                           R3 ; [+9]
       52 JUMPIFEQKN                       R2 K11 [11] ; [+8]
       54 JUMPIFEQKN                       R2 K12 [12] ; [+6]
       56 JUMPIFEQKN                       R2 K13 [13] ; [+4]
       58 JUMPIFEQKN                       R2 K14 [14] ; [+2]
       60 RETURN                           R0 0
       61 LOADB                            R3 1
       62 GETGLOBAL                        R4 K15 ["selectedPart"]
       64 JUMPIFNOT                        R4 ; [+10]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R4 R5 K1 ["getFilteredSelection"]
       68 CALL                             R4 0 1
       69 GETIMPORT                        R5 K17 [workspace]
       71 MOVE                             R7 R4
       72 NAMECALL                         R5 R5 K18 ["UnjoinFromOutsiders"]
       74 CALL                             R5 2 0
       75 LOADNIL                          R4
       76 LOADNIL                          R5
       77 GETGLOBAL                        R6 K15 ["selectedPart"]
       79 JUMPIFNOT                        R6 ; [+10]
       80 GETUPVAL                         R6 8
       81 JUMPIF                           R6 ; [+8]
       82 GETGLOBAL                        R6 K15 ["selectedPart"]
       84 GETTABLEKS                       R4 R6 K19 ["CFrame"]
       86 GETGLOBAL                        R6 K15 ["selectedPart"]
       88 GETTABLEKS                       R5 R6 K20 ["Size"]
       90 LOADB                            R6 1
       91 SETUPVAL                         R6 9
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R6 R7 K1 ["getFilteredSelection"]
       95 CALL                             R6 0 1
       96 LENGTH                           R7 R6
       97 JUMPIFNOTEQKN                    R7 K3 [0] ; [+6]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R7 R8 K21 ["resetDragger"]
      102 CALL                             R7 0 0
      103 RETURN                           R0 0
      104 LOADB                            R7 0
      105 GETUPVAL                         R9 10
      106 GETTABLEKS                       R8 R9 K22 ["CollisionEnabled"]
      108 JUMPIFNOT                        R8 ; [+20]
      109 GETUPVAL                         R8 11
      110 GETIMPORT                        R9 K17 [workspace]
      112 SETTABLEKS                       R9 R8 K23 ["Parent"]
      114 GETUPVAL                         R9 12
      115 GETTABLEKS                       R8 R9 K24 ["itemsHasItemNotInList"]
      117 GETUPVAL                         R9 11
      118 NAMECALL                         R9 R9 K25 ["GetTouchingParts"]
      120 CALL                             R9 1 1
      121 MOVE                             R10 R6
      122 CALL                             R8 2 1
      123 JUMPIFNOT                        R8 ; [+1]
      124 LOADB                            R7 1
      125 GETUPVAL                         R8 11
      126 LOADNIL                          R9
      127 SETTABLEKS                       R9 R8 K23 ["Parent"]
      129 GETUPVAL                         R8 13
      130 GETGLOBAL                        R9 K15 ["selectedPart"]
      132 GETUPVAL                         R10 7
      133 MOVE                             R11 R2
      134 CALL                             R8 3 1
      135 SETUPVAL                         R8 7
      136 JUMPIFNOTEQKN                    R2 K26 [6] ; [+260]
      138 GETUPVAL                         R10 1
      139 GETTABLEKS                       R9 R10 K27 ["getYScale"]
      141 CALL                             R9 0 1
      142 MINUS                            R8 R9
      143 GETUPVAL                         R10 7
      144 MINUS                            R11 R8
      145 MUL                              R9 R10 R11
      146 SETUPVAL                         R9 7
      147 GETGLOBAL                        R9 K15 ["selectedPart"]
      149 GETGLOBAL                        R10 K28 ["snapVector3ByHandle"]
      151 GETUPVAL                         R12 5
      152 GETUPVAL                         R13 7
      153 ADD                              R11 R12 R13
      154 MOVE                             R12 R2
      155 CALL                             R10 2 1
      156 SETTABLEKS                       R10 R9 K20 ["Size"]
      158 GETUPVAL                         R10 0
      159 GETTABLEKS                       R9 R10 K1 ["getFilteredSelection"]
      161 CALL                             R9 0 1
      162 GETIMPORT                        R10 K17 [workspace]
      164 MOVE                             R12 R9
      165 NAMECALL                         R10 R10 K18 ["UnjoinFromOutsiders"]
      167 CALL                             R10 2 0
      168 GETUPVAL                         R9 14
      169 GETGLOBAL                        R10 K15 ["selectedPart"]
      171 CALL                             R9 1 0
      172 GETGLOBAL                        R9 K15 ["selectedPart"]
      174 GETUPVAL                         R10 6
      175 GETIMPORT                        R12 K30 [CFrame.new]
      177 GETUPVAL                         R16 5
      178 GETGLOBAL                        R18 K15 ["selectedPart"]
      180 GETTABLEKS                       R17 R18 K20 ["Size"]
      182 SUB                              R15 R16 R17
      183 DIVK                             R14 R15 K31 [2]
      184 MUL                              R13 R8 R14
      185 CALL                             R12 1 -1
      186 NAMECALL                         R10 R10 K32 ["toWorldSpace"]
      188 CALL                             R10 -1 1
      189 SETTABLEKS                       R10 R9 K19 ["CFrame"]
      191 GETUPVAL                         R10 15
      192 GETTABLEKS                       R9 R10 K33 ["distanceVector3"]
      194 GETTABLEKS                       R10 R4 K34 ["p"]
      196 GETGLOBAL                        R13 K15 ["selectedPart"]
      198 GETTABLEKS                       R12 R13 K19 ["CFrame"]
      200 GETTABLEKS                       R11 R12 K34 ["p"]
      202 CALL                             R9 2 1
      203 GETTABLEKS                       R12 R4 K34 ["p"]
      205 GETGLOBAL                        R15 K15 ["selectedPart"]
      207 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      209 GETTABLEKS                       R13 R14 K34 ["p"]
      211 SUB                              R11 R12 R13
      212 GETTABLEKS                       R10 R11 K35 ["unit"]
      214 GETUPVAL                         R12 10
      215 GETTABLEKS                       R11 R12 K22 ["CollisionEnabled"]
      217 JUMPIFNOT                        R11 ; [+102]
      218 GETGLOBAL                        R12 K15 ["selectedPart"]
      220 NAMECALL                         R12 R12 K25 ["GetTouchingParts"]
      222 CALL                             R12 1 1
      223 LENGTH                           R11 R12
      224 LOADN                            R12 0
      225 JUMPIFNOTLT                      R12 R11 ; [+94]
      227 GETGLOBAL                        R11 K15 ["selectedPart"]
      229 SETTABLEKS                       R5 R11 K20 ["Size"]
      231 GETUPVAL                         R12 0
      232 GETTABLEKS                       R11 R12 K1 ["getFilteredSelection"]
      234 CALL                             R11 0 1
      235 GETIMPORT                        R12 K17 [workspace]
      237 MOVE                             R14 R11
      238 NAMECALL                         R12 R12 K18 ["UnjoinFromOutsiders"]
      240 CALL                             R12 2 0
      241 GETUPVAL                         R11 14
      242 GETGLOBAL                        R12 K15 ["selectedPart"]
      244 CALL                             R11 1 0
      245 GETGLOBAL                        R11 K15 ["selectedPart"]
      247 SETTABLEKS                       R4 R11 K19 ["CFrame"]
      249 JUMPIFNOT                        R7 ; [+1]
      250 RETURN                           R0 0
      251 GETGLOBAL                        R11 K15 ["selectedPart"]
      253 LOADNIL                          R12
      254 MULK                             R13 R10 K36 [-1]
      255 MULK                             R14 R9 K31 [2]
      256 JUMPIF                           R12 ; [+2]
      257 NEWTABLE                         R12 0 0
      259 GETUPVAL                         R16 16
      260 GETTABLEKS                       R15 R16 K37 ["moveUntilCollide"]
      262 MOVE                             R16 R11
      263 MOVE                             R17 R12
      264 MOVE                             R18 R13
      265 LOADK                            R19 K38 [1E-05]
      266 MOVE                             R20 R14
      267 CALL                             R15 5 1
      268 GETUPVAL                         R12 15
      269 GETTABLEKS                       R11 R12 K33 ["distanceVector3"]
      271 GETTABLEKS                       R12 R4 K34 ["p"]
      273 GETGLOBAL                        R15 K15 ["selectedPart"]
      275 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      277 GETTABLEKS                       R13 R14 K34 ["p"]
      279 CALL                             R11 2 1
      280 GETTABLEKS                       R13 R4 K34 ["p"]
      282 GETGLOBAL                        R16 K15 ["selectedPart"]
      284 GETTABLEKS                       R15 R16 K19 ["CFrame"]
      286 GETTABLEKS                       R14 R15 K34 ["p"]
      288 SUB                              R12 R13 R14
      289 GETGLOBAL                        R13 K15 ["selectedPart"]
      291 GETGLOBAL                        R17 K39 ["getScaleHandleLocalVector"]
      293 MOVE                             R18 R2
      294 CALL                             R17 1 1
      295 MUL                              R16 R11 R17
      296 MUL                              R15 R16 R8
      297 SUB                              R14 R5 R15
      298 SETTABLEKS                       R14 R13 K20 ["Size"]
      300 GETUPVAL                         R14 0
      301 GETTABLEKS                       R13 R14 K1 ["getFilteredSelection"]
      303 CALL                             R13 0 1
      304 GETIMPORT                        R14 K17 [workspace]
      306 MOVE                             R16 R13
      307 NAMECALL                         R14 R14 K18 ["UnjoinFromOutsiders"]
      309 CALL                             R14 2 0
      310 GETUPVAL                         R13 14
      311 GETGLOBAL                        R14 K15 ["selectedPart"]
      313 CALL                             R13 1 0
      314 GETGLOBAL                        R13 K15 ["selectedPart"]
      316 DIVK                             R15 R12 K31 [2]
      317 SUB                              R14 R4 R15
      318 SETTABLEKS                       R14 R13 K19 ["CFrame"]
      320 GETGLOBAL                        R13 K15 ["selectedPart"]
      322 GETTABLEKS                       R12 R13 K19 ["CFrame"]
      324 GETGLOBAL                        R17 K15 ["selectedPart"]
      326 GETTABLEKS                       R16 R17 K20 ["Size"]
      328 DIVK                             R15 R16 K31 [2]
      329 LOADK                            R16 K40 [{0, 1, 0}]
      330 MUL                              R14 R15 R16
      331 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
      333 CALL                             R12 2 1
      334 GETGLOBAL                        R15 K15 ["selectedPart"]
      336 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      338 GETTABLEKS                       R13 R14 K34 ["p"]
      340 SUB                              R11 R12 R13
      341 GETIMPORT                        R16 K43 [game]
      343 GETTABLEKS                       R15 R16 K44 ["Workspace"]
      345 GETTABLEKS                       R14 R15 K45 ["CurrentCamera"]
      347 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      349 GETTABLEKS                       R12 R13 K46 ["LookVector"]
      351 MOVE                             R17 R11
      352 NAMECALL                         R15 R12 K47 ["Dot"]
      354 CALL                             R15 2 1
      355 MUL                              R14 R15 R11
      356 SUB                              R13 R12 R14
      357 MOVE                             R17 R11
      358 NAMECALL                         R15 R13 K48 ["Cross"]
      360 CALL                             R15 2 1
      361 GETTABLEKS                       R14 R15 K35 ["unit"]
      363 GETUPVAL                         R16 1
      364 GETTABLEKS                       R15 R16 K49 ["scaleOne"]
      366 GETGLOBAL                        R17 K15 ["selectedPart"]
      368 GETTABLEKS                       R16 R17 K19 ["CFrame"]
      370 GETGLOBAL                        R21 K15 ["selectedPart"]
      372 GETTABLEKS                       R20 R21 K20 ["Size"]
      374 DIVK                             R19 R20 K31 [2]
      375 LOADK                            R20 K50 [{0, -1, 0}]
      376 MUL                              R18 R19 R20
      377 NAMECALL                         R16 R16 K41 ["pointToWorldSpace"]
      379 CALL                             R16 2 1
      380 GETGLOBAL                        R18 K15 ["selectedPart"]
      382 GETTABLEKS                       R17 R18 K19 ["CFrame"]
      384 GETGLOBAL                        R22 K15 ["selectedPart"]
      386 GETTABLEKS                       R21 R22 K20 ["Size"]
      388 DIVK                             R20 R21 K31 [2]
      389 LOADK                            R21 K40 [{0, 1, 0}]
      390 MUL                              R19 R20 R21
      391 NAMECALL                         R17 R17 K41 ["pointToWorldSpace"]
      393 CALL                             R17 2 1
      394 MOVE                             R18 R14
      395 CALL                             R15 3 0
      396 JUMP                             ; [+2535]
      397 JUMPIFEQKN                       R2 K31 [2] ; [+3]
      399 JUMPIFNOTEQKN                    R2 K51 [4] ; [+347]
      401 GETUPVAL                         R9 0
      402 GETTABLEKS                       R8 R9 K1 ["getFilteredSelection"]
      404 CALL                             R8 0 1
      405 GETIMPORT                        R9 K17 [workspace]
      407 MOVE                             R11 R8
      408 NAMECALL                         R9 R9 K18 ["UnjoinFromOutsiders"]
      410 CALL                             R9 2 0
      411 GETUPVAL                         R8 14
      412 GETGLOBAL                        R9 K15 ["selectedPart"]
      414 CALL                             R8 1 0
      415 GETGLOBAL                        R8 K15 ["selectedPart"]
      417 GETGLOBAL                        R9 K28 ["snapVector3ByHandle"]
      419 GETUPVAL                         R11 5
      420 GETUPVAL                         R12 7
      421 ADD                              R10 R11 R12
      422 MOVE                             R11 R2
      423 CALL                             R9 2 1
      424 SETTABLEKS                       R9 R8 K20 ["Size"]
      426 GETGLOBAL                        R8 K15 ["selectedPart"]
      428 GETUPVAL                         R9 6
      429 GETIMPORT                        R11 K30 [CFrame.new]
      431 GETUPVAL                         R15 5
      432 GETGLOBAL                        R17 K15 ["selectedPart"]
      434 GETTABLEKS                       R16 R17 K20 ["Size"]
      436 SUB                              R14 R15 R16
      437 MULK                             R13 R14 K52 [0.5]
      438 MINUS                            R12 R13
      439 CALL                             R11 1 -1
      440 NAMECALL                         R9 R9 K32 ["toWorldSpace"]
      442 CALL                             R9 -1 1
      443 SETTABLEKS                       R9 R8 K19 ["CFrame"]
      445 GETUPVAL                         R9 15
      446 GETTABLEKS                       R8 R9 K33 ["distanceVector3"]
      448 GETTABLEKS                       R9 R4 K34 ["p"]
      450 GETGLOBAL                        R12 K15 ["selectedPart"]
      452 GETTABLEKS                       R11 R12 K19 ["CFrame"]
      454 GETTABLEKS                       R10 R11 K34 ["p"]
      456 CALL                             R8 2 1
      457 GETTABLEKS                       R11 R4 K34 ["p"]
      459 GETGLOBAL                        R14 K15 ["selectedPart"]
      461 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      463 GETTABLEKS                       R12 R13 K34 ["p"]
      465 SUB                              R10 R11 R12
      466 GETTABLEKS                       R9 R10 K35 ["unit"]
      468 GETUPVAL                         R11 10
      469 GETTABLEKS                       R10 R11 K22 ["CollisionEnabled"]
      471 JUMPIFNOT                        R10 ; [+101]
      472 GETGLOBAL                        R11 K15 ["selectedPart"]
      474 NAMECALL                         R11 R11 K25 ["GetTouchingParts"]
      476 CALL                             R11 1 1
      477 LENGTH                           R10 R11
      478 LOADN                            R11 0
      479 JUMPIFNOTLT                      R11 R10 ; [+93]
      481 GETGLOBAL                        R10 K15 ["selectedPart"]
      483 SETTABLEKS                       R5 R10 K20 ["Size"]
      485 GETUPVAL                         R11 0
      486 GETTABLEKS                       R10 R11 K1 ["getFilteredSelection"]
      488 CALL                             R10 0 1
      489 GETIMPORT                        R11 K17 [workspace]
      491 MOVE                             R13 R10
      492 NAMECALL                         R11 R11 K18 ["UnjoinFromOutsiders"]
      494 CALL                             R11 2 0
      495 GETUPVAL                         R10 14
      496 GETGLOBAL                        R11 K15 ["selectedPart"]
      498 CALL                             R10 1 0
      499 GETGLOBAL                        R10 K15 ["selectedPart"]
      501 SETTABLEKS                       R4 R10 K19 ["CFrame"]
      503 JUMPIFNOT                        R7 ; [+1]
      504 RETURN                           R0 0
      505 GETGLOBAL                        R10 K15 ["selectedPart"]
      507 LOADNIL                          R11
      508 MULK                             R12 R9 K36 [-1]
      509 MULK                             R13 R8 K31 [2]
      510 JUMPIF                           R11 ; [+2]
      511 NEWTABLE                         R11 0 0
      513 GETUPVAL                         R15 16
      514 GETTABLEKS                       R14 R15 K37 ["moveUntilCollide"]
      516 MOVE                             R15 R10
      517 MOVE                             R16 R11
      518 MOVE                             R17 R12
      519 LOADK                            R18 K38 [1E-05]
      520 MOVE                             R19 R13
      521 CALL                             R14 5 1
      522 GETUPVAL                         R11 15
      523 GETTABLEKS                       R10 R11 K33 ["distanceVector3"]
      525 GETTABLEKS                       R11 R4 K34 ["p"]
      527 GETGLOBAL                        R14 K15 ["selectedPart"]
      529 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      531 GETTABLEKS                       R12 R13 K34 ["p"]
      533 CALL                             R10 2 1
      534 GETTABLEKS                       R12 R4 K34 ["p"]
      536 GETGLOBAL                        R15 K15 ["selectedPart"]
      538 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      540 GETTABLEKS                       R13 R14 K34 ["p"]
      542 SUB                              R11 R12 R13
      543 GETGLOBAL                        R12 K15 ["selectedPart"]
      545 GETGLOBAL                        R15 K39 ["getScaleHandleLocalVector"]
      547 MOVE                             R16 R2
      548 CALL                             R15 1 1
      549 MUL                              R14 R10 R15
      550 ADD                              R13 R5 R14
      551 SETTABLEKS                       R13 R12 K20 ["Size"]
      553 GETUPVAL                         R13 0
      554 GETTABLEKS                       R12 R13 K1 ["getFilteredSelection"]
      556 CALL                             R12 0 1
      557 GETIMPORT                        R13 K17 [workspace]
      559 MOVE                             R15 R12
      560 NAMECALL                         R13 R13 K18 ["UnjoinFromOutsiders"]
      562 CALL                             R13 2 0
      563 GETUPVAL                         R12 14
      564 GETGLOBAL                        R13 K15 ["selectedPart"]
      566 CALL                             R12 1 0
      567 GETGLOBAL                        R12 K15 ["selectedPart"]
      569 DIVK                             R14 R11 K31 [2]
      570 SUB                              R13 R4 R14
      571 SETTABLEKS                       R13 R12 K19 ["CFrame"]
      573 JUMPIFNOTEQKN                    R2 K31 [2] ; [+86]
      575 GETGLOBAL                        R11 K15 ["selectedPart"]
      577 GETTABLEKS                       R10 R11 K19 ["CFrame"]
      579 GETIMPORT                        R16 K43 [game]
      581 GETTABLEKS                       R15 R16 K44 ["Workspace"]
      583 GETTABLEKS                       R14 R15 K45 ["CurrentCamera"]
      585 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      587 GETTABLEKS                       R12 R13 K53 ["Position"]
      589 NAMECALL                         R10 R10 K54 ["PointToObjectSpace"]
      591 CALL                             R10 2 1
      592 GETUPVAL                         R12 15
      593 GETTABLEKS                       R11 R12 K55 ["getVector3Sign"]
      595 MOVE                             R12 R10
      596 CALL                             R11 1 1
      597 GETUPVAL                         R13 1
      598 GETTABLEKS                       R12 R13 K49 ["scaleOne"]
      600 GETGLOBAL                        R14 K15 ["selectedPart"]
      602 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      604 GETGLOBAL                        R18 K15 ["selectedPart"]
      606 GETTABLEKS                       R17 R18 K20 ["Size"]
      608 DIVK                             R16 R17 K31 [2]
      609 LOADN                            R18 255
      610 LOADN                            R19 255
      611 GETTABLEKS                       R20 R11 K56 ["z"]
      613 FASTCALL                         VECTOR ; [+2]
      614 GETIMPORT                        R17 K58 [Vector3.new]
      616 CALL                             R17 3 1
      617 MUL                              R15 R16 R17
      618 NAMECALL                         R13 R13 K41 ["pointToWorldSpace"]
      620 CALL                             R13 2 1
      621 GETGLOBAL                        R15 K15 ["selectedPart"]
      623 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      625 GETGLOBAL                        R19 K15 ["selectedPart"]
      627 GETTABLEKS                       R18 R19 K20 ["Size"]
      629 DIVK                             R17 R18 K31 [2]
      630 LOADN                            R19 1
      631 LOADN                            R20 255
      632 GETTABLEKS                       R21 R11 K56 ["z"]
      634 FASTCALL                         VECTOR ; [+2]
      635 GETIMPORT                        R18 K58 [Vector3.new]
      637 CALL                             R18 3 1
      638 MUL                              R16 R17 R18
      639 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
      641 CALL                             R14 2 1
      642 GETGLOBAL                        R17 K15 ["selectedPart"]
      644 GETTABLEKS                       R16 R17 K19 ["CFrame"]
      646 LOADK                            R19 K59 [{0, 0, 1}]
      647 MUL                              R18 R11 R19
      648 NAMECALL                         R16 R16 K41 ["pointToWorldSpace"]
      650 CALL                             R16 2 1
      651 GETGLOBAL                        R19 K15 ["selectedPart"]
      653 GETTABLEKS                       R18 R19 K19 ["CFrame"]
      655 GETTABLEKS                       R17 R18 K34 ["p"]
      657 SUB                              R15 R16 R17
      658 CALL                             R12 3 0
      659 JUMP                             ; [+2272]
      660 JUMPIFNOTEQKN                    R2 K51 [4] ; [+2271]
      662 GETGLOBAL                        R11 K15 ["selectedPart"]
      664 GETTABLEKS                       R10 R11 K19 ["CFrame"]
      666 GETIMPORT                        R16 K43 [game]
      668 GETTABLEKS                       R15 R16 K44 ["Workspace"]
      670 GETTABLEKS                       R14 R15 K45 ["CurrentCamera"]
      672 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      674 GETTABLEKS                       R12 R13 K53 ["Position"]
      676 NAMECALL                         R10 R10 K54 ["PointToObjectSpace"]
      678 CALL                             R10 2 1
      679 GETUPVAL                         R12 15
      680 GETTABLEKS                       R11 R12 K55 ["getVector3Sign"]
      682 MOVE                             R12 R10
      683 CALL                             R11 1 1
      684 GETUPVAL                         R13 1
      685 GETTABLEKS                       R12 R13 K49 ["scaleOne"]
      687 GETGLOBAL                        R14 K15 ["selectedPart"]
      689 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      691 GETGLOBAL                        R18 K15 ["selectedPart"]
      693 GETTABLEKS                       R17 R18 K20 ["Size"]
      695 DIVK                             R16 R17 K31 [2]
      696 GETTABLEKS                       R18 R11 K60 ["x"]
      698 LOADN                            R19 255
      699 LOADN                            R20 255
      700 FASTCALL                         VECTOR ; [+2]
      701 GETIMPORT                        R17 K58 [Vector3.new]
      703 CALL                             R17 3 1
      704 MUL                              R15 R16 R17
      705 NAMECALL                         R13 R13 K41 ["pointToWorldSpace"]
      707 CALL                             R13 2 1
      708 GETGLOBAL                        R15 K15 ["selectedPart"]
      710 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      712 GETGLOBAL                        R19 K15 ["selectedPart"]
      714 GETTABLEKS                       R18 R19 K20 ["Size"]
      716 DIVK                             R17 R18 K31 [2]
      717 GETTABLEKS                       R19 R11 K60 ["x"]
      719 LOADN                            R20 255
      720 LOADN                            R21 1
      721 FASTCALL                         VECTOR ; [+2]
      722 GETIMPORT                        R18 K58 [Vector3.new]
      724 CALL                             R18 3 1
      725 MUL                              R16 R17 R18
      726 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
      728 CALL                             R14 2 1
      729 GETGLOBAL                        R17 K15 ["selectedPart"]
      731 GETTABLEKS                       R16 R17 K19 ["CFrame"]
      733 LOADK                            R19 K61 [{1, 0, 0}]
      734 MUL                              R18 R11 R19
      735 NAMECALL                         R16 R16 K41 ["pointToWorldSpace"]
      737 CALL                             R16 2 1
      738 GETGLOBAL                        R19 K15 ["selectedPart"]
      740 GETTABLEKS                       R18 R19 K19 ["CFrame"]
      742 GETTABLEKS                       R17 R18 K34 ["p"]
      744 SUB                              R15 R16 R17
      745 CALL                             R12 3 0
      746 JUMP                             ; [+2185]
      747 JUMPIFEQKN                       R2 K62 [3] ; [+3]
      749 JUMPIFNOTEQKN                    R2 K63 [5] ; [+346]
      751 GETUPVAL                         R9 0
      752 GETTABLEKS                       R8 R9 K1 ["getFilteredSelection"]
      754 CALL                             R8 0 1
      755 GETIMPORT                        R9 K17 [workspace]
      757 MOVE                             R11 R8
      758 NAMECALL                         R9 R9 K18 ["UnjoinFromOutsiders"]
      760 CALL                             R9 2 0
      761 GETUPVAL                         R8 14
      762 GETGLOBAL                        R9 K15 ["selectedPart"]
      764 CALL                             R8 1 0
      765 GETGLOBAL                        R8 K15 ["selectedPart"]
      767 GETGLOBAL                        R9 K28 ["snapVector3ByHandle"]
      769 GETUPVAL                         R11 5
      770 GETUPVAL                         R12 7
      771 ADD                              R10 R11 R12
      772 MOVE                             R11 R2
      773 CALL                             R9 2 1
      774 SETTABLEKS                       R9 R8 K20 ["Size"]
      776 GETGLOBAL                        R8 K15 ["selectedPart"]
      778 GETUPVAL                         R9 6
      779 GETIMPORT                        R11 K30 [CFrame.new]
      781 GETUPVAL                         R14 5
      782 GETGLOBAL                        R16 K15 ["selectedPart"]
      784 GETTABLEKS                       R15 R16 K20 ["Size"]
      786 SUB                              R13 R14 R15
      787 MULK                             R12 R13 K52 [0.5]
      788 CALL                             R11 1 -1
      789 NAMECALL                         R9 R9 K32 ["toWorldSpace"]
      791 CALL                             R9 -1 1
      792 SETTABLEKS                       R9 R8 K19 ["CFrame"]
      794 GETUPVAL                         R9 15
      795 GETTABLEKS                       R8 R9 K33 ["distanceVector3"]
      797 GETTABLEKS                       R9 R4 K34 ["p"]
      799 GETGLOBAL                        R12 K15 ["selectedPart"]
      801 GETTABLEKS                       R11 R12 K19 ["CFrame"]
      803 GETTABLEKS                       R10 R11 K34 ["p"]
      805 CALL                             R8 2 1
      806 GETTABLEKS                       R11 R4 K34 ["p"]
      808 GETGLOBAL                        R14 K15 ["selectedPart"]
      810 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      812 GETTABLEKS                       R12 R13 K34 ["p"]
      814 SUB                              R10 R11 R12
      815 GETTABLEKS                       R9 R10 K35 ["unit"]
      817 GETUPVAL                         R11 10
      818 GETTABLEKS                       R10 R11 K22 ["CollisionEnabled"]
      820 JUMPIFNOT                        R10 ; [+101]
      821 GETGLOBAL                        R11 K15 ["selectedPart"]
      823 NAMECALL                         R11 R11 K25 ["GetTouchingParts"]
      825 CALL                             R11 1 1
      826 LENGTH                           R10 R11
      827 LOADN                            R11 0
      828 JUMPIFNOTLT                      R11 R10 ; [+93]
      830 GETGLOBAL                        R10 K15 ["selectedPart"]
      832 SETTABLEKS                       R5 R10 K20 ["Size"]
      834 GETUPVAL                         R11 0
      835 GETTABLEKS                       R10 R11 K1 ["getFilteredSelection"]
      837 CALL                             R10 0 1
      838 GETIMPORT                        R11 K17 [workspace]
      840 MOVE                             R13 R10
      841 NAMECALL                         R11 R11 K18 ["UnjoinFromOutsiders"]
      843 CALL                             R11 2 0
      844 GETUPVAL                         R10 14
      845 GETGLOBAL                        R11 K15 ["selectedPart"]
      847 CALL                             R10 1 0
      848 GETGLOBAL                        R10 K15 ["selectedPart"]
      850 SETTABLEKS                       R4 R10 K19 ["CFrame"]
      852 JUMPIFNOT                        R7 ; [+1]
      853 RETURN                           R0 0
      854 GETGLOBAL                        R10 K15 ["selectedPart"]
      856 LOADNIL                          R11
      857 MULK                             R12 R9 K36 [-1]
      858 MULK                             R13 R8 K31 [2]
      859 JUMPIF                           R11 ; [+2]
      860 NEWTABLE                         R11 0 0
      862 GETUPVAL                         R15 16
      863 GETTABLEKS                       R14 R15 K37 ["moveUntilCollide"]
      865 MOVE                             R15 R10
      866 MOVE                             R16 R11
      867 MOVE                             R17 R12
      868 LOADK                            R18 K38 [1E-05]
      869 MOVE                             R19 R13
      870 CALL                             R14 5 1
      871 GETUPVAL                         R11 15
      872 GETTABLEKS                       R10 R11 K33 ["distanceVector3"]
      874 GETTABLEKS                       R11 R4 K34 ["p"]
      876 GETGLOBAL                        R14 K15 ["selectedPart"]
      878 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      880 GETTABLEKS                       R12 R13 K34 ["p"]
      882 CALL                             R10 2 1
      883 GETTABLEKS                       R12 R4 K34 ["p"]
      885 GETGLOBAL                        R15 K15 ["selectedPart"]
      887 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      889 GETTABLEKS                       R13 R14 K34 ["p"]
      891 SUB                              R11 R12 R13
      892 GETGLOBAL                        R12 K15 ["selectedPart"]
      894 GETGLOBAL                        R15 K39 ["getScaleHandleLocalVector"]
      896 MOVE                             R16 R2
      897 CALL                             R15 1 1
      898 MUL                              R14 R10 R15
      899 SUB                              R13 R5 R14
      900 SETTABLEKS                       R13 R12 K20 ["Size"]
      902 GETUPVAL                         R13 0
      903 GETTABLEKS                       R12 R13 K1 ["getFilteredSelection"]
      905 CALL                             R12 0 1
      906 GETIMPORT                        R13 K17 [workspace]
      908 MOVE                             R15 R12
      909 NAMECALL                         R13 R13 K18 ["UnjoinFromOutsiders"]
      911 CALL                             R13 2 0
      912 GETUPVAL                         R12 14
      913 GETGLOBAL                        R13 K15 ["selectedPart"]
      915 CALL                             R12 1 0
      916 GETGLOBAL                        R12 K15 ["selectedPart"]
      918 DIVK                             R14 R11 K31 [2]
      919 SUB                              R13 R4 R14
      920 SETTABLEKS                       R13 R12 K19 ["CFrame"]
      922 JUMPIFNOTEQKN                    R2 K62 [3] ; [+86]
      924 GETGLOBAL                        R11 K15 ["selectedPart"]
      926 GETTABLEKS                       R10 R11 K19 ["CFrame"]
      928 GETIMPORT                        R16 K43 [game]
      930 GETTABLEKS                       R15 R16 K44 ["Workspace"]
      932 GETTABLEKS                       R14 R15 K45 ["CurrentCamera"]
      934 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      936 GETTABLEKS                       R12 R13 K53 ["Position"]
      938 NAMECALL                         R10 R10 K54 ["PointToObjectSpace"]
      940 CALL                             R10 2 1
      941 GETUPVAL                         R12 15
      942 GETTABLEKS                       R11 R12 K55 ["getVector3Sign"]
      944 MOVE                             R12 R10
      945 CALL                             R11 1 1
      946 GETUPVAL                         R13 1
      947 GETTABLEKS                       R12 R13 K49 ["scaleOne"]
      949 GETGLOBAL                        R14 K15 ["selectedPart"]
      951 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      953 GETGLOBAL                        R18 K15 ["selectedPart"]
      955 GETTABLEKS                       R17 R18 K20 ["Size"]
      957 DIVK                             R16 R17 K31 [2]
      958 LOADN                            R18 255
      959 LOADN                            R19 255
      960 GETTABLEKS                       R20 R11 K56 ["z"]
      962 FASTCALL                         VECTOR ; [+2]
      963 GETIMPORT                        R17 K58 [Vector3.new]
      965 CALL                             R17 3 1
      966 MUL                              R15 R16 R17
      967 NAMECALL                         R13 R13 K41 ["pointToWorldSpace"]
      969 CALL                             R13 2 1
      970 GETGLOBAL                        R15 K15 ["selectedPart"]
      972 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      974 GETGLOBAL                        R19 K15 ["selectedPart"]
      976 GETTABLEKS                       R18 R19 K20 ["Size"]
      978 DIVK                             R17 R18 K31 [2]
      979 LOADN                            R19 1
      980 LOADN                            R20 255
      981 GETTABLEKS                       R21 R11 K56 ["z"]
      983 FASTCALL                         VECTOR ; [+2]
      984 GETIMPORT                        R18 K58 [Vector3.new]
      986 CALL                             R18 3 1
      987 MUL                              R16 R17 R18
      988 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
      990 CALL                             R14 2 1
      991 GETGLOBAL                        R17 K15 ["selectedPart"]
      993 GETTABLEKS                       R16 R17 K19 ["CFrame"]
      995 LOADK                            R19 K59 [{0, 0, 1}]
      996 MUL                              R18 R11 R19
      997 NAMECALL                         R16 R16 K41 ["pointToWorldSpace"]
      999 CALL                             R16 2 1
     1000 GETGLOBAL                        R19 K15 ["selectedPart"]
     1002 GETTABLEKS                       R18 R19 K19 ["CFrame"]
     1004 GETTABLEKS                       R17 R18 K34 ["p"]
     1006 SUB                              R15 R16 R17
     1007 CALL                             R12 3 0
     1008 JUMP                             ; [+1923]
     1009 JUMPIFNOTEQKN                    R2 K63 [5] ; [+1922]
     1011 GETGLOBAL                        R11 K15 ["selectedPart"]
     1013 GETTABLEKS                       R10 R11 K19 ["CFrame"]
     1015 GETIMPORT                        R16 K43 [game]
     1017 GETTABLEKS                       R15 R16 K44 ["Workspace"]
     1019 GETTABLEKS                       R14 R15 K45 ["CurrentCamera"]
     1021 GETTABLEKS                       R13 R14 K19 ["CFrame"]
     1023 GETTABLEKS                       R12 R13 K53 ["Position"]
     1025 NAMECALL                         R10 R10 K54 ["PointToObjectSpace"]
     1027 CALL                             R10 2 1
     1028 GETUPVAL                         R12 15
     1029 GETTABLEKS                       R11 R12 K55 ["getVector3Sign"]
     1031 MOVE                             R12 R10
     1032 CALL                             R11 1 1
     1033 GETUPVAL                         R13 1
     1034 GETTABLEKS                       R12 R13 K49 ["scaleOne"]
     1036 GETGLOBAL                        R14 K15 ["selectedPart"]
     1038 GETTABLEKS                       R13 R14 K19 ["CFrame"]
     1040 GETGLOBAL                        R18 K15 ["selectedPart"]
     1042 GETTABLEKS                       R17 R18 K20 ["Size"]
     1044 DIVK                             R16 R17 K31 [2]
     1045 GETTABLEKS                       R18 R11 K60 ["x"]
     1047 LOADN                            R19 255
     1048 LOADN                            R20 255
     1049 FASTCALL                         VECTOR ; [+2]
     1050 GETIMPORT                        R17 K58 [Vector3.new]
     1052 CALL                             R17 3 1
     1053 MUL                              R15 R16 R17
     1054 NAMECALL                         R13 R13 K41 ["pointToWorldSpace"]
     1056 CALL                             R13 2 1
     1057 GETGLOBAL                        R15 K15 ["selectedPart"]
     1059 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1061 GETGLOBAL                        R19 K15 ["selectedPart"]
     1063 GETTABLEKS                       R18 R19 K20 ["Size"]
     1065 DIVK                             R17 R18 K31 [2]
     1066 GETTABLEKS                       R19 R11 K60 ["x"]
     1068 LOADN                            R20 255
     1069 LOADN                            R21 1
     1070 FASTCALL                         VECTOR ; [+2]
     1071 GETIMPORT                        R18 K58 [Vector3.new]
     1073 CALL                             R18 3 1
     1074 MUL                              R16 R17 R18
     1075 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1077 CALL                             R14 2 1
     1078 GETGLOBAL                        R17 K15 ["selectedPart"]
     1080 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1082 LOADK                            R19 K61 [{1, 0, 0}]
     1083 MUL                              R18 R11 R19
     1084 NAMECALL                         R16 R16 K41 ["pointToWorldSpace"]
     1086 CALL                             R16 2 1
     1087 GETGLOBAL                        R19 K15 ["selectedPart"]
     1089 GETTABLEKS                       R18 R19 K19 ["CFrame"]
     1091 GETTABLEKS                       R17 R18 K34 ["p"]
     1093 SUB                              R15 R16 R17
     1094 CALL                             R12 3 0
     1095 JUMP                             ; [+1836]
     1096 JUMPIFNOTEQKN                    R2 K64 [7] ; [+192]
     1098 GETUPVAL                         R9 0
     1099 GETTABLEKS                       R8 R9 K1 ["getFilteredSelection"]
     1101 CALL                             R8 0 1
     1102 GETIMPORT                        R9 K17 [workspace]
     1104 MOVE                             R11 R8
     1105 NAMECALL                         R9 R9 K18 ["UnjoinFromOutsiders"]
     1107 CALL                             R9 2 0
     1108 GETUPVAL                         R8 14
     1109 GETGLOBAL                        R9 K15 ["selectedPart"]
     1111 CALL                             R8 1 0
     1112 GETGLOBAL                        R8 K15 ["selectedPart"]
     1114 GETGLOBAL                        R9 K28 ["snapVector3ByHandle"]
     1116 GETUPVAL                         R11 5
     1117 GETUPVAL                         R12 7
     1118 ADD                              R10 R11 R12
     1119 MOVE                             R11 R2
     1120 CALL                             R9 2 1
     1121 SETTABLEKS                       R9 R8 K20 ["Size"]
     1123 GETGLOBAL                        R8 K15 ["selectedPart"]
     1125 GETUPVAL                         R9 6
     1126 GETIMPORT                        R11 K30 [CFrame.new]
     1128 GETUPVAL                         R15 5
     1129 GETGLOBAL                        R17 K15 ["selectedPart"]
     1131 GETTABLEKS                       R16 R17 K20 ["Size"]
     1133 SUB                              R14 R15 R16
     1134 DIVK                             R13 R14 K31 [2]
     1135 MINUS                            R12 R13
     1136 CALL                             R11 1 -1
     1137 NAMECALL                         R9 R9 K32 ["toWorldSpace"]
     1139 CALL                             R9 -1 1
     1140 SETTABLEKS                       R9 R8 K19 ["CFrame"]
     1142 GETGLOBAL                        R9 K15 ["selectedPart"]
     1144 GETTABLEKS                       R8 R9 K19 ["CFrame"]
     1146 GETIMPORT                        R14 K43 [game]
     1148 GETTABLEKS                       R13 R14 K44 ["Workspace"]
     1150 GETTABLEKS                       R12 R13 K45 ["CurrentCamera"]
     1152 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1154 GETTABLEKS                       R10 R11 K53 ["Position"]
     1156 NAMECALL                         R8 R8 K54 ["PointToObjectSpace"]
     1158 CALL                             R8 2 1
     1159 GETUPVAL                         R10 15
     1160 GETTABLEKS                       R9 R10 K55 ["getVector3Sign"]
     1162 MOVE                             R10 R8
     1163 CALL                             R9 1 1
     1164 GETUPVAL                         R11 1
     1165 GETTABLEKS                       R10 R11 K49 ["scaleOne"]
     1167 GETGLOBAL                        R12 K15 ["selectedPart"]
     1169 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1171 GETGLOBAL                        R16 K15 ["selectedPart"]
     1173 GETTABLEKS                       R15 R16 K20 ["Size"]
     1175 DIVK                             R14 R15 K31 [2]
     1176 LOADN                            R16 255
     1177 LOADN                            R17 255
     1178 GETTABLEKS                       R18 R9 K56 ["z"]
     1180 FASTCALL                         VECTOR ; [+2]
     1181 GETIMPORT                        R15 K58 [Vector3.new]
     1183 CALL                             R15 3 1
     1184 MUL                              R13 R14 R15
     1185 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1187 CALL                             R11 2 1
     1188 GETGLOBAL                        R13 K15 ["selectedPart"]
     1190 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1192 GETGLOBAL                        R17 K15 ["selectedPart"]
     1194 GETTABLEKS                       R16 R17 K20 ["Size"]
     1196 DIVK                             R15 R16 K31 [2]
     1197 LOADN                            R17 1
     1198 LOADN                            R18 255
     1199 GETTABLEKS                       R19 R9 K56 ["z"]
     1201 FASTCALL                         VECTOR ; [+2]
     1202 GETIMPORT                        R16 K58 [Vector3.new]
     1204 CALL                             R16 3 1
     1205 MUL                              R14 R15 R16
     1206 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1208 CALL                             R12 2 1
     1209 GETGLOBAL                        R15 K15 ["selectedPart"]
     1211 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1213 LOADK                            R17 K59 [{0, 0, 1}]
     1214 MUL                              R16 R9 R17
     1215 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1217 CALL                             R14 2 1
     1218 GETGLOBAL                        R17 K15 ["selectedPart"]
     1220 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1222 GETTABLEKS                       R15 R16 K34 ["p"]
     1224 SUB                              R13 R14 R15
     1225 CALL                             R10 3 0
     1226 GETUPVAL                         R11 1
     1227 GETTABLEKS                       R10 R11 K65 ["scaleTwo"]
     1229 GETGLOBAL                        R12 K15 ["selectedPart"]
     1231 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1233 GETGLOBAL                        R16 K15 ["selectedPart"]
     1235 GETTABLEKS                       R15 R16 K20 ["Size"]
     1237 DIVK                             R14 R15 K31 [2]
     1238 GETTABLEKS                       R16 R9 K60 ["x"]
     1240 LOADN                            R17 255
     1241 LOADN                            R18 255
     1242 FASTCALL                         VECTOR ; [+2]
     1243 GETIMPORT                        R15 K58 [Vector3.new]
     1245 CALL                             R15 3 1
     1246 MUL                              R13 R14 R15
     1247 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1249 CALL                             R11 2 1
     1250 GETGLOBAL                        R13 K15 ["selectedPart"]
     1252 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1254 GETGLOBAL                        R17 K15 ["selectedPart"]
     1256 GETTABLEKS                       R16 R17 K20 ["Size"]
     1258 DIVK                             R15 R16 K31 [2]
     1259 GETTABLEKS                       R17 R9 K60 ["x"]
     1261 LOADN                            R18 255
     1262 LOADN                            R19 1
     1263 FASTCALL                         VECTOR ; [+2]
     1264 GETIMPORT                        R16 K58 [Vector3.new]
     1266 CALL                             R16 3 1
     1267 MUL                              R14 R15 R16
     1268 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1270 CALL                             R12 2 1
     1271 GETGLOBAL                        R15 K15 ["selectedPart"]
     1273 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1275 LOADK                            R17 K61 [{1, 0, 0}]
     1276 MUL                              R16 R9 R17
     1277 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1279 CALL                             R14 2 1
     1280 GETGLOBAL                        R17 K15 ["selectedPart"]
     1282 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1284 GETTABLEKS                       R15 R16 K34 ["p"]
     1286 SUB                              R13 R14 R15
     1287 CALL                             R10 3 0
     1288 JUMP                             ; [+1643]
     1289 JUMPIFNOTEQKN                    R2 K66 [9] ; [+194]
     1291 GETUPVAL                         R9 0
     1292 GETTABLEKS                       R8 R9 K1 ["getFilteredSelection"]
     1294 CALL                             R8 0 1
     1295 GETIMPORT                        R9 K17 [workspace]
     1297 MOVE                             R11 R8
     1298 NAMECALL                         R9 R9 K18 ["UnjoinFromOutsiders"]
     1300 CALL                             R9 2 0
     1301 GETUPVAL                         R8 14
     1302 GETGLOBAL                        R9 K15 ["selectedPart"]
     1304 CALL                             R8 1 0
     1305 GETGLOBAL                        R8 K15 ["selectedPart"]
     1307 GETGLOBAL                        R9 K28 ["snapVector3ByHandle"]
     1309 GETUPVAL                         R11 5
     1310 GETUPVAL                         R12 7
     1311 ADD                              R10 R11 R12
     1312 MOVE                             R11 R2
     1313 CALL                             R9 2 1
     1314 SETTABLEKS                       R9 R8 K20 ["Size"]
     1316 GETGLOBAL                        R8 K15 ["selectedPart"]
     1318 GETUPVAL                         R9 6
     1319 GETIMPORT                        R11 K30 [CFrame.new]
     1321 GETUPVAL                         R16 5
     1322 GETGLOBAL                        R18 K15 ["selectedPart"]
     1324 GETTABLEKS                       R17 R18 K20 ["Size"]
     1326 SUB                              R15 R16 R17
     1327 DIVK                             R14 R15 K31 [2]
     1328 MINUS                            R13 R14
     1329 LOADK                            R14 K67 [{-1, 0, 1}]
     1330 MUL                              R12 R13 R14
     1331 CALL                             R11 1 -1
     1332 NAMECALL                         R9 R9 K32 ["toWorldSpace"]
     1334 CALL                             R9 -1 1
     1335 SETTABLEKS                       R9 R8 K19 ["CFrame"]
     1337 GETGLOBAL                        R9 K15 ["selectedPart"]
     1339 GETTABLEKS                       R8 R9 K19 ["CFrame"]
     1341 GETIMPORT                        R14 K43 [game]
     1343 GETTABLEKS                       R13 R14 K44 ["Workspace"]
     1345 GETTABLEKS                       R12 R13 K45 ["CurrentCamera"]
     1347 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1349 GETTABLEKS                       R10 R11 K53 ["Position"]
     1351 NAMECALL                         R8 R8 K54 ["PointToObjectSpace"]
     1353 CALL                             R8 2 1
     1354 GETUPVAL                         R10 15
     1355 GETTABLEKS                       R9 R10 K55 ["getVector3Sign"]
     1357 MOVE                             R10 R8
     1358 CALL                             R9 1 1
     1359 GETUPVAL                         R11 1
     1360 GETTABLEKS                       R10 R11 K49 ["scaleOne"]
     1362 GETGLOBAL                        R12 K15 ["selectedPart"]
     1364 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1366 GETGLOBAL                        R16 K15 ["selectedPart"]
     1368 GETTABLEKS                       R15 R16 K20 ["Size"]
     1370 DIVK                             R14 R15 K31 [2]
     1371 LOADN                            R16 255
     1372 LOADN                            R17 255
     1373 GETTABLEKS                       R18 R9 K56 ["z"]
     1375 FASTCALL                         VECTOR ; [+2]
     1376 GETIMPORT                        R15 K58 [Vector3.new]
     1378 CALL                             R15 3 1
     1379 MUL                              R13 R14 R15
     1380 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1382 CALL                             R11 2 1
     1383 GETGLOBAL                        R13 K15 ["selectedPart"]
     1385 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1387 GETGLOBAL                        R17 K15 ["selectedPart"]
     1389 GETTABLEKS                       R16 R17 K20 ["Size"]
     1391 DIVK                             R15 R16 K31 [2]
     1392 LOADN                            R17 1
     1393 LOADN                            R18 255
     1394 GETTABLEKS                       R19 R9 K56 ["z"]
     1396 FASTCALL                         VECTOR ; [+2]
     1397 GETIMPORT                        R16 K58 [Vector3.new]
     1399 CALL                             R16 3 1
     1400 MUL                              R14 R15 R16
     1401 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1403 CALL                             R12 2 1
     1404 GETGLOBAL                        R15 K15 ["selectedPart"]
     1406 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1408 LOADK                            R17 K59 [{0, 0, 1}]
     1409 MUL                              R16 R9 R17
     1410 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1412 CALL                             R14 2 1
     1413 GETGLOBAL                        R17 K15 ["selectedPart"]
     1415 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1417 GETTABLEKS                       R15 R16 K34 ["p"]
     1419 SUB                              R13 R14 R15
     1420 CALL                             R10 3 0
     1421 GETUPVAL                         R11 1
     1422 GETTABLEKS                       R10 R11 K65 ["scaleTwo"]
     1424 GETGLOBAL                        R12 K15 ["selectedPart"]
     1426 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1428 GETGLOBAL                        R16 K15 ["selectedPart"]
     1430 GETTABLEKS                       R15 R16 K20 ["Size"]
     1432 DIVK                             R14 R15 K31 [2]
     1433 GETTABLEKS                       R16 R9 K60 ["x"]
     1435 LOADN                            R17 255
     1436 LOADN                            R18 255
     1437 FASTCALL                         VECTOR ; [+2]
     1438 GETIMPORT                        R15 K58 [Vector3.new]
     1440 CALL                             R15 3 1
     1441 MUL                              R13 R14 R15
     1442 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1444 CALL                             R11 2 1
     1445 GETGLOBAL                        R13 K15 ["selectedPart"]
     1447 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1449 GETGLOBAL                        R17 K15 ["selectedPart"]
     1451 GETTABLEKS                       R16 R17 K20 ["Size"]
     1453 DIVK                             R15 R16 K31 [2]
     1454 GETTABLEKS                       R17 R9 K60 ["x"]
     1456 LOADN                            R18 255
     1457 LOADN                            R19 1
     1458 FASTCALL                         VECTOR ; [+2]
     1459 GETIMPORT                        R16 K58 [Vector3.new]
     1461 CALL                             R16 3 1
     1462 MUL                              R14 R15 R16
     1463 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1465 CALL                             R12 2 1
     1466 GETGLOBAL                        R15 K15 ["selectedPart"]
     1468 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1470 LOADK                            R17 K61 [{1, 0, 0}]
     1471 MUL                              R16 R9 R17
     1472 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1474 CALL                             R14 2 1
     1475 GETGLOBAL                        R17 K15 ["selectedPart"]
     1477 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1479 GETTABLEKS                       R15 R16 K34 ["p"]
     1481 SUB                              R13 R14 R15
     1482 CALL                             R10 3 0
     1483 JUMP                             ; [+1448]
     1484 JUMPIFNOTEQKN                    R2 K68 [10] ; [+194]
     1486 GETUPVAL                         R9 0
     1487 GETTABLEKS                       R8 R9 K1 ["getFilteredSelection"]
     1489 CALL                             R8 0 1
     1490 GETIMPORT                        R9 K17 [workspace]
     1492 MOVE                             R11 R8
     1493 NAMECALL                         R9 R9 K18 ["UnjoinFromOutsiders"]
     1495 CALL                             R9 2 0
     1496 GETUPVAL                         R8 14
     1497 GETGLOBAL                        R9 K15 ["selectedPart"]
     1499 CALL                             R8 1 0
     1500 GETGLOBAL                        R8 K15 ["selectedPart"]
     1502 GETGLOBAL                        R9 K28 ["snapVector3ByHandle"]
     1504 GETUPVAL                         R11 5
     1505 GETUPVAL                         R12 7
     1506 ADD                              R10 R11 R12
     1507 MOVE                             R11 R2
     1508 CALL                             R9 2 1
     1509 SETTABLEKS                       R9 R8 K20 ["Size"]
     1511 GETGLOBAL                        R8 K15 ["selectedPart"]
     1513 GETUPVAL                         R9 6
     1514 GETIMPORT                        R11 K30 [CFrame.new]
     1516 GETUPVAL                         R16 5
     1517 GETGLOBAL                        R18 K15 ["selectedPart"]
     1519 GETTABLEKS                       R17 R18 K20 ["Size"]
     1521 SUB                              R15 R16 R17
     1522 DIVK                             R14 R15 K31 [2]
     1523 MINUS                            R13 R14
     1524 LOADK                            R14 K69 [{-1, 0, -1}]
     1525 MUL                              R12 R13 R14
     1526 CALL                             R11 1 -1
     1527 NAMECALL                         R9 R9 K32 ["toWorldSpace"]
     1529 CALL                             R9 -1 1
     1530 SETTABLEKS                       R9 R8 K19 ["CFrame"]
     1532 GETGLOBAL                        R9 K15 ["selectedPart"]
     1534 GETTABLEKS                       R8 R9 K19 ["CFrame"]
     1536 GETIMPORT                        R14 K43 [game]
     1538 GETTABLEKS                       R13 R14 K44 ["Workspace"]
     1540 GETTABLEKS                       R12 R13 K45 ["CurrentCamera"]
     1542 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1544 GETTABLEKS                       R10 R11 K53 ["Position"]
     1546 NAMECALL                         R8 R8 K54 ["PointToObjectSpace"]
     1548 CALL                             R8 2 1
     1549 GETUPVAL                         R10 15
     1550 GETTABLEKS                       R9 R10 K55 ["getVector3Sign"]
     1552 MOVE                             R10 R8
     1553 CALL                             R9 1 1
     1554 GETUPVAL                         R11 1
     1555 GETTABLEKS                       R10 R11 K49 ["scaleOne"]
     1557 GETGLOBAL                        R12 K15 ["selectedPart"]
     1559 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1561 GETGLOBAL                        R16 K15 ["selectedPart"]
     1563 GETTABLEKS                       R15 R16 K20 ["Size"]
     1565 DIVK                             R14 R15 K31 [2]
     1566 LOADN                            R16 255
     1567 LOADN                            R17 255
     1568 GETTABLEKS                       R18 R9 K56 ["z"]
     1570 FASTCALL                         VECTOR ; [+2]
     1571 GETIMPORT                        R15 K58 [Vector3.new]
     1573 CALL                             R15 3 1
     1574 MUL                              R13 R14 R15
     1575 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1577 CALL                             R11 2 1
     1578 GETGLOBAL                        R13 K15 ["selectedPart"]
     1580 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1582 GETGLOBAL                        R17 K15 ["selectedPart"]
     1584 GETTABLEKS                       R16 R17 K20 ["Size"]
     1586 DIVK                             R15 R16 K31 [2]
     1587 LOADN                            R17 1
     1588 LOADN                            R18 255
     1589 GETTABLEKS                       R19 R9 K56 ["z"]
     1591 FASTCALL                         VECTOR ; [+2]
     1592 GETIMPORT                        R16 K58 [Vector3.new]
     1594 CALL                             R16 3 1
     1595 MUL                              R14 R15 R16
     1596 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1598 CALL                             R12 2 1
     1599 GETGLOBAL                        R15 K15 ["selectedPart"]
     1601 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1603 LOADK                            R17 K59 [{0, 0, 1}]
     1604 MUL                              R16 R9 R17
     1605 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1607 CALL                             R14 2 1
     1608 GETGLOBAL                        R17 K15 ["selectedPart"]
     1610 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1612 GETTABLEKS                       R15 R16 K34 ["p"]
     1614 SUB                              R13 R14 R15
     1615 CALL                             R10 3 0
     1616 GETUPVAL                         R11 1
     1617 GETTABLEKS                       R10 R11 K65 ["scaleTwo"]
     1619 GETGLOBAL                        R12 K15 ["selectedPart"]
     1621 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1623 GETGLOBAL                        R16 K15 ["selectedPart"]
     1625 GETTABLEKS                       R15 R16 K20 ["Size"]
     1627 DIVK                             R14 R15 K31 [2]
     1628 GETTABLEKS                       R16 R9 K60 ["x"]
     1630 LOADN                            R17 255
     1631 LOADN                            R18 255
     1632 FASTCALL                         VECTOR ; [+2]
     1633 GETIMPORT                        R15 K58 [Vector3.new]
     1635 CALL                             R15 3 1
     1636 MUL                              R13 R14 R15
     1637 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1639 CALL                             R11 2 1
     1640 GETGLOBAL                        R13 K15 ["selectedPart"]
     1642 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1644 GETGLOBAL                        R17 K15 ["selectedPart"]
     1646 GETTABLEKS                       R16 R17 K20 ["Size"]
     1648 DIVK                             R15 R16 K31 [2]
     1649 GETTABLEKS                       R17 R9 K60 ["x"]
     1651 LOADN                            R18 255
     1652 LOADN                            R19 1
     1653 FASTCALL                         VECTOR ; [+2]
     1654 GETIMPORT                        R16 K58 [Vector3.new]
     1656 CALL                             R16 3 1
     1657 MUL                              R14 R15 R16
     1658 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1660 CALL                             R12 2 1
     1661 GETGLOBAL                        R15 K15 ["selectedPart"]
     1663 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1665 LOADK                            R17 K61 [{1, 0, 0}]
     1666 MUL                              R16 R9 R17
     1667 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1669 CALL                             R14 2 1
     1670 GETGLOBAL                        R17 K15 ["selectedPart"]
     1672 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1674 GETTABLEKS                       R15 R16 K34 ["p"]
     1676 SUB                              R13 R14 R15
     1677 CALL                             R10 3 0
     1678 JUMP                             ; [+1253]
     1679 JUMPIFNOTEQKN                    R2 K70 [8] ; [+194]
     1681 GETUPVAL                         R9 0
     1682 GETTABLEKS                       R8 R9 K1 ["getFilteredSelection"]
     1684 CALL                             R8 0 1
     1685 GETIMPORT                        R9 K17 [workspace]
     1687 MOVE                             R11 R8
     1688 NAMECALL                         R9 R9 K18 ["UnjoinFromOutsiders"]
     1690 CALL                             R9 2 0
     1691 GETUPVAL                         R8 14
     1692 GETGLOBAL                        R9 K15 ["selectedPart"]
     1694 CALL                             R8 1 0
     1695 GETGLOBAL                        R8 K15 ["selectedPart"]
     1697 GETGLOBAL                        R9 K28 ["snapVector3ByHandle"]
     1699 GETUPVAL                         R11 5
     1700 GETUPVAL                         R12 7
     1701 ADD                              R10 R11 R12
     1702 MOVE                             R11 R2
     1703 CALL                             R9 2 1
     1704 SETTABLEKS                       R9 R8 K20 ["Size"]
     1706 GETGLOBAL                        R8 K15 ["selectedPart"]
     1708 GETUPVAL                         R9 6
     1709 GETIMPORT                        R11 K30 [CFrame.new]
     1711 GETUPVAL                         R16 5
     1712 GETGLOBAL                        R18 K15 ["selectedPart"]
     1714 GETTABLEKS                       R17 R18 K20 ["Size"]
     1716 SUB                              R15 R16 R17
     1717 DIVK                             R14 R15 K31 [2]
     1718 MINUS                            R13 R14
     1719 LOADK                            R14 K71 [{1, 0, -1}]
     1720 MUL                              R12 R13 R14
     1721 CALL                             R11 1 -1
     1722 NAMECALL                         R9 R9 K32 ["toWorldSpace"]
     1724 CALL                             R9 -1 1
     1725 SETTABLEKS                       R9 R8 K19 ["CFrame"]
     1727 GETGLOBAL                        R9 K15 ["selectedPart"]
     1729 GETTABLEKS                       R8 R9 K19 ["CFrame"]
     1731 GETIMPORT                        R14 K43 [game]
     1733 GETTABLEKS                       R13 R14 K44 ["Workspace"]
     1735 GETTABLEKS                       R12 R13 K45 ["CurrentCamera"]
     1737 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1739 GETTABLEKS                       R10 R11 K53 ["Position"]
     1741 NAMECALL                         R8 R8 K54 ["PointToObjectSpace"]
     1743 CALL                             R8 2 1
     1744 GETUPVAL                         R10 15
     1745 GETTABLEKS                       R9 R10 K55 ["getVector3Sign"]
     1747 MOVE                             R10 R8
     1748 CALL                             R9 1 1
     1749 GETUPVAL                         R11 1
     1750 GETTABLEKS                       R10 R11 K49 ["scaleOne"]
     1752 GETGLOBAL                        R12 K15 ["selectedPart"]
     1754 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1756 GETGLOBAL                        R16 K15 ["selectedPart"]
     1758 GETTABLEKS                       R15 R16 K20 ["Size"]
     1760 DIVK                             R14 R15 K31 [2]
     1761 LOADN                            R16 255
     1762 LOADN                            R17 255
     1763 GETTABLEKS                       R18 R9 K56 ["z"]
     1765 FASTCALL                         VECTOR ; [+2]
     1766 GETIMPORT                        R15 K58 [Vector3.new]
     1768 CALL                             R15 3 1
     1769 MUL                              R13 R14 R15
     1770 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1772 CALL                             R11 2 1
     1773 GETGLOBAL                        R13 K15 ["selectedPart"]
     1775 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1777 GETGLOBAL                        R17 K15 ["selectedPart"]
     1779 GETTABLEKS                       R16 R17 K20 ["Size"]
     1781 DIVK                             R15 R16 K31 [2]
     1782 LOADN                            R17 1
     1783 LOADN                            R18 255
     1784 GETTABLEKS                       R19 R9 K56 ["z"]
     1786 FASTCALL                         VECTOR ; [+2]
     1787 GETIMPORT                        R16 K58 [Vector3.new]
     1789 CALL                             R16 3 1
     1790 MUL                              R14 R15 R16
     1791 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1793 CALL                             R12 2 1
     1794 GETGLOBAL                        R15 K15 ["selectedPart"]
     1796 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1798 LOADK                            R17 K59 [{0, 0, 1}]
     1799 MUL                              R16 R9 R17
     1800 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1802 CALL                             R14 2 1
     1803 GETGLOBAL                        R17 K15 ["selectedPart"]
     1805 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1807 GETTABLEKS                       R15 R16 K34 ["p"]
     1809 SUB                              R13 R14 R15
     1810 CALL                             R10 3 0
     1811 GETUPVAL                         R11 1
     1812 GETTABLEKS                       R10 R11 K65 ["scaleTwo"]
     1814 GETGLOBAL                        R12 K15 ["selectedPart"]
     1816 GETTABLEKS                       R11 R12 K19 ["CFrame"]
     1818 GETGLOBAL                        R16 K15 ["selectedPart"]
     1820 GETTABLEKS                       R15 R16 K20 ["Size"]
     1822 DIVK                             R14 R15 K31 [2]
     1823 GETTABLEKS                       R16 R9 K60 ["x"]
     1825 LOADN                            R17 255
     1826 LOADN                            R18 255
     1827 FASTCALL                         VECTOR ; [+2]
     1828 GETIMPORT                        R15 K58 [Vector3.new]
     1830 CALL                             R15 3 1
     1831 MUL                              R13 R14 R15
     1832 NAMECALL                         R11 R11 K41 ["pointToWorldSpace"]
     1834 CALL                             R11 2 1
     1835 GETGLOBAL                        R13 K15 ["selectedPart"]
     1837 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1839 GETGLOBAL                        R17 K15 ["selectedPart"]
     1841 GETTABLEKS                       R16 R17 K20 ["Size"]
     1843 DIVK                             R15 R16 K31 [2]
     1844 GETTABLEKS                       R17 R9 K60 ["x"]
     1846 LOADN                            R18 255
     1847 LOADN                            R19 1
     1848 FASTCALL                         VECTOR ; [+2]
     1849 GETIMPORT                        R16 K58 [Vector3.new]
     1851 CALL                             R16 3 1
     1852 MUL                              R14 R15 R16
     1853 NAMECALL                         R12 R12 K41 ["pointToWorldSpace"]
     1855 CALL                             R12 2 1
     1856 GETGLOBAL                        R15 K15 ["selectedPart"]
     1858 GETTABLEKS                       R14 R15 K19 ["CFrame"]
     1860 LOADK                            R17 K61 [{1, 0, 0}]
     1861 MUL                              R16 R9 R17
     1862 NAMECALL                         R14 R14 K41 ["pointToWorldSpace"]
     1864 CALL                             R14 2 1
     1865 GETGLOBAL                        R17 K15 ["selectedPart"]
     1867 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1869 GETTABLEKS                       R15 R16 K34 ["p"]
     1871 SUB                              R13 R14 R15
     1872 CALL                             R10 3 0
     1873 JUMP                             ; [+1058]
     1874 JUMPIFNOTEQKN                    R2 K10 [1] ; [+219]
     1876 GETUPVAL                         R9 11
     1877 GETTABLEKS                       R8 R9 K19 ["CFrame"]
     1879 GETUPVAL                         R9 11
     1880 GETUPVAL                         R10 17
     1881 GETIMPORT                        R12 K30 [CFrame.new]
     1883 GETUPVAL                         R13 7
     1884 CALL                             R12 1 -1
     1885 NAMECALL                         R10 R10 K32 ["toWorldSpace"]
     1887 CALL                             R10 -1 1
     1888 SETTABLEKS                       R10 R9 K19 ["CFrame"]
     1890 GETUPVAL                         R13 11
     1891 GETTABLEKS                       R12 R13 K19 ["CFrame"]
     1893 GETUPVAL                         R14 18
     1894 NAMECALL                         R12 R12 K72 ["pointToObjectSpace"]
     1896 CALL                             R12 2 1
     1897 GETTABLEKS                       R11 R12 K73 ["y"]
     1899 MINUS                            R10 R11
     1900 GETUPVAL                         R14 11
     1901 GETTABLEKS                       R13 R14 K20 ["Size"]
     1903 GETTABLEKS                       R12 R13 K74 ["Y"]
     1905 DIVK                             R11 R12 K31 [2]
     1906 SUB                              R9 R10 R11
     1907 GETUPVAL                         R14 11
     1908 GETTABLEKS                       R13 R14 K19 ["CFrame"]
     1910 GETUPVAL                         R15 18
     1911 NAMECALL                         R13 R13 K72 ["pointToObjectSpace"]
     1913 CALL                             R13 2 1
     1914 GETTABLEKS                       R12 R13 K73 ["y"]
     1916 MINUS                            R11 R12
     1917 GETUPVAL                         R15 11
     1918 GETTABLEKS                       R14 R15 K20 ["Size"]
     1920 GETTABLEKS                       R13 R14 K74 ["Y"]
     1922 DIVK                             R12 R13 K31 [2]
     1923 ADD                              R10 R11 R12
     1924 GETGLOBAL                        R11 K75 ["roundToNearestGrid"]
     1926 MOVE                             R12 R9
     1927 CALL                             R11 1 1
     1928 GETGLOBAL                        R12 K75 ["roundToNearestGrid"]
     1930 MOVE                             R13 R10
     1931 CALL                             R12 1 1
     1932 SUB                              R13 R11 R9
     1933 SUB                              R14 R12 R10
     1934 FASTCALL1                        MATH_ABS R13 ; [+3]
     1935 MOVE                             R17 R13
     1936 GETIMPORT                        R16 K78 [math.abs]
     1938 CALL                             R16 1 1
     1939 FASTCALL1                        MATH_ABS R14 ; [+3]
     1940 MOVE                             R18 R14
     1941 GETIMPORT                        R17 K78 [math.abs]
     1943 CALL                             R17 1 1
     1944 JUMPIFNOTLE                      R16 R17 ; [+3]
     1946 MOVE                             R15 R13
     1947 JUMPIF                           R15 ; [+1]
     1948 MOVE                             R15 R14
     1949 GETUPVAL                         R17 11
     1950 GETTABLEKS                       R16 R17 K19 ["CFrame"]
     1952 LOADN                            R19 0
     1953 LOADN                            R21 0
     1954 FASTCALL3                        VECTOR R19 R15 R21
     1956 MOVE                             R20 R15
     1957 GETIMPORT                        R18 K58 [Vector3.new]
     1959 CALL                             R18 3 1
     1960 NAMECALL                         R16 R16 K41 ["pointToWorldSpace"]
     1962 CALL                             R16 2 1
     1963 GETUPVAL                         R17 11
     1964 GETUPVAL                         R21 11
     1965 GETTABLEKS                       R20 R21 K19 ["CFrame"]
     1967 GETUPVAL                         R23 11
     1968 GETTABLEKS                       R22 R23 K19 ["CFrame"]
     1970 GETTABLEKS                       R21 R22 K34 ["p"]
     1972 SUB                              R19 R20 R21
     1973 ADD                              R18 R19 R16
     1974 SETTABLEKS                       R18 R17 K19 ["CFrame"]
     1976 GETUPVAL                         R18 10
     1977 GETTABLEKS                       R17 R18 K22 ["CollisionEnabled"]
     1979 JUMPIFNOT                        R17 ; [+106]
     1980 GETUPVAL                         R20 11
     1981 GETTABLEKS                       R19 R20 K19 ["CFrame"]
     1983 GETTABLEKS                       R18 R19 K34 ["p"]
     1985 GETTABLEKS                       R19 R8 K34 ["p"]
     1987 SUB                              R17 R18 R19
     1988 GETUPVAL                         R19 15
     1989 GETTABLEKS                       R18 R19 K33 ["distanceVector3"]
     1991 GETTABLEKS                       R19 R8 K34 ["p"]
     1993 GETUPVAL                         R22 11
     1994 GETTABLEKS                       R21 R22 K19 ["CFrame"]
     1996 GETTABLEKS                       R20 R21 K34 ["p"]
     1998 CALL                             R18 2 1
     1999 GETTABLEKS                       R19 R0 K79 ["CanSimulate"]
     2001 JUMPIFNOT                        R19 ; [+36]
     2002 GETTABLEKS                       R19 R0 K80 ["TranslateFromTo"]
     2004 MOVE                             R20 R8
     2005 GETUPVAL                         R22 11
     2006 GETTABLEKS                       R21 R22 K19 ["CFrame"]
     2008 CALL                             R19 2 0
     2009 GETUPVAL                         R20 12
     2010 GETTABLEKS                       R19 R20 K24 ["itemsHasItemNotInList"]
     2012 NAMECALL                         R20 R0 K25 ["GetTouchingParts"]
     2014 CALL                             R20 1 1
     2015 GETTABLEKS                       R21 R0 K81 ["Children"]
     2017 CALL                             R19 2 1
     2018 JUMPIFNOT                        R19 ; [+913]
     2019 GETTABLEKS                       R19 R17 K82 ["Unit"]
     2021 GETTABLEKS                       R20 R0 K80 ["TranslateFromTo"]
     2023 GETUPVAL                         R22 11
     2024 GETTABLEKS                       R21 R22 K19 ["CFrame"]
     2026 MOVE                             R22 R8
     2027 CALL                             R20 2 0
     2028 GETUPVAL                         R21 16
     2029 GETTABLEKS                       R20 R21 K83 ["moveUntilCollideMetapart"]
     2031 MOVE                             R21 R0
     2032 GETTABLEKS                       R22 R0 K81 ["Children"]
     2034 MOVE                             R23 R19
     2035 MOVE                             R24 R18
     2036 CALL                             R20 4 0
     2037 JUMP                             ; [+894]
     2038 GETUPVAL                         R19 11
     2039 GETIMPORT                        R20 K17 [workspace]
     2041 SETTABLEKS                       R20 R19 K23 ["Parent"]
     2043 GETUPVAL                         R20 12
     2044 GETTABLEKS                       R19 R20 K24 ["itemsHasItemNotInList"]
     2046 GETUPVAL                         R20 11
     2047 NAMECALL                         R20 R20 K25 ["GetTouchingParts"]
     2049 CALL                             R20 1 1
     2050 GETTABLEKS                       R21 R0 K81 ["Children"]
     2052 CALL                             R19 2 1
     2053 JUMPIFNOT                        R19 ; [+20]
     2054 GETTABLEKS                       R19 R17 K82 ["Unit"]
     2056 GETUPVAL                         R20 11
     2057 SETTABLEKS                       R8 R20 K19 ["CFrame"]
     2059 GETUPVAL                         R20 11
     2060 GETTABLEKS                       R21 R0 K81 ["Children"]
     2062 JUMPIF                           R21 ; [+2]
     2063 NEWTABLE                         R21 0 0
     2065 GETUPVAL                         R23 16
     2066 GETTABLEKS                       R22 R23 K37 ["moveUntilCollide"]
     2068 MOVE                             R23 R20
     2069 MOVE                             R24 R21
     2070 MOVE                             R25 R19
     2071 LOADK                            R26 K84 [0.0002]
     2072 MOVE                             R27 R18
     2073 CALL                             R22 5 1
     2074 GETUPVAL                         R19 11
     2075 LOADNIL                          R20
     2076 SETTABLEKS                       R20 R19 K23 ["Parent"]
     2078 GETTABLEKS                       R19 R0 K80 ["TranslateFromTo"]
     2080 MOVE                             R20 R8
     2081 GETUPVAL                         R22 11
     2082 GETTABLEKS                       R21 R22 K19 ["CFrame"]
     2084 CALL                             R19 2 0
     2085 JUMP                             ; [+846]
     2086 GETTABLEKS                       R17 R0 K80 ["TranslateFromTo"]
     2088 MOVE                             R18 R8
     2089 GETUPVAL                         R20 11
     2090 GETTABLEKS                       R19 R20 K19 ["CFrame"]
     2092 CALL                             R17 2 0
     2093 JUMP                             ; [+838]
     2094 JUMPIFNOTEQKN                    R2 K11 [11] ; [+259]
     2096 GETUPVAL                         R9 5
     2097 MULK                             R8 R9 K52 [0.5]
     2098 GETUPVAL                         R9 6
     2099 GETUPVAL                         R11 19
     2100 NAMECALL                         R9 R9 K72 ["pointToObjectSpace"]
     2102 CALL                             R9 2 1
     2103 GETTABLEKS                       R10 R9 K85 ["Z"]
     2105 GETTABLEKS                       R12 R9 K85 ["Z"]
     2107 FASTCALL1                        MATH_ABS R12 ; [+2]
     2108 GETIMPORT                        R11 K78 [math.abs]
     2110 CALL                             R11 1 1
     2111 DIV                              R9 R10 R11
     2112 GETUPVAL                         R12 5
     2113 GETTABLEKS                       R11 R12 K86 ["X"]
     2115 GETUPVAL                         R13 5
     2116 GETTABLEKS                       R12 R13 K74 ["Y"]
     2118 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
     2120 GETIMPORT                        R10 K88 [math.max]
     2122 CALL                             R10 2 1
     2123 GETUPVAL                         R15 6
     2124 GETIMPORT                        R17 K30 [CFrame.new]
     2126 LOADN                            R19 0
     2127 LOADN                            R20 0
     2128 GETTABLEKS                       R22 R8 K85 ["Z"]
     2130 MUL                              R21 R22 R9
     2131 FASTCALL                         VECTOR ; [+2]
     2132 GETIMPORT                        R18 K58 [Vector3.new]
     2134 CALL                             R18 3 1
     2135 CALL                             R17 1 -1
     2136 NAMECALL                         R15 R15 K32 ["toWorldSpace"]
     2138 CALL                             R15 -1 1
     2139 GETTABLEKS                       R14 R15 K34 ["p"]
     2141 GETUPVAL                         R15 20
     2142 SUB                              R13 R14 R15
     2143 GETTABLEKS                       R12 R13 K89 ["magnitude"]
     2145 JUMPIFLT                         R12 R10 ; [+2]
     2147 LOADB                            R11 0 +1
     2148 LOADB                            R11 1
     2149 GETUPVAL                         R12 6
     2150 GETUPVAL                         R14 21
     2151 NAMECALL                         R12 R12 K72 ["pointToObjectSpace"]
     2153 CALL                             R12 2 1
     2154 GETUPVAL                         R14 7
     2155 ADD                              R13 R12 R14
     2156 GETTABLEKS                       R16 R13 K74 ["Y"]
     2158 GETTABLEKS                       R17 R13 K86 ["X"]
     2160 FASTCALL2                        MATH_ATAN2 R16 R17 ; [+3]
     2162 GETIMPORT                        R15 K91 [math.atan2]
     2164 CALL                             R15 2 1
     2165 GETTABLEKS                       R17 R12 K74 ["Y"]
     2167 GETTABLEKS                       R18 R12 K86 ["X"]
     2169 FASTCALL2                        MATH_ATAN2 R17 R18 ; [+3]
     2171 GETIMPORT                        R16 K91 [math.atan2]
     2173 CALL                             R16 2 1
     2174 SUB                              R14 R15 R16
     2175 GETUPVAL                         R16 22
     2176 GETTABLEKS                       R15 R16 K92 ["roundToNearest"]
     2178 FASTCALL1                        MATH_DEG R14 ; [+3]
     2179 MOVE                             R17 R14
     2180 GETIMPORT                        R16 K94 [math.deg]
     2182 CALL                             R16 1 1
     2183 JUMPIFNOT                        R11 ; [+2]
     2184 LOADK                            R17 K95 [22.5]
     2185 JUMP                             ; [+1]
     2186 LOADN                            R17 1
     2187 CALL                             R15 2 1
     2188 GETUPVAL                         R17 6
     2189 GETIMPORT                        R18 K97 [CFrame.Angles]
     2191 LOADN                            R19 0
     2192 LOADN                            R20 0
     2193 FASTCALL1                        MATH_RAD R15 ; [+3]
     2194 MOVE                             R22 R15
     2195 GETIMPORT                        R21 K99 [math.rad]
     2197 CALL                             R21 1 1
     2198 CALL                             R18 3 1
     2199 MUL                              R16 R17 R18
     2200 LOADK                            R19 K100 ["BasePart"]
     2201 NAMECALL                         R17 R0 K101 ["IsA"]
     2203 CALL                             R17 2 1
     2204 JUMPIFNOT                        R17 ; [+3]
     2205 SETTABLEKS                       R16 R0 K19 ["CFrame"]
     2207 JUMP                             ; [+55]
     2208 LOADK                            R19 K102 ["Model"]
     2209 NAMECALL                         R17 R0 K101 ["IsA"]
     2211 CALL                             R17 2 1
     2212 JUMPIFNOT                        R17 ; [+28]
     2213 LOADK                            R19 K44 ["Workspace"]
     2214 NAMECALL                         R17 R0 K101 ["IsA"]
     2216 CALL                             R17 2 1
     2217 JUMPIF                           R17 ; [+23]
     2218 NAMECALL                         R17 R0 K103 ["GetModelCFrame"]
     2220 CALL                             R17 1 1
     2221 GETUPVAL                         R18 23
     2222 MOVE                             R19 R0
     2223 MOVE                             R20 R16
     2224 CALL                             R18 2 0
     2225 GETUPVAL                         R19 10
     2226 GETTABLEKS                       R18 R19 K22 ["CollisionEnabled"]
     2228 JUMPIFNOT                        R18 ; [+34]
     2229 NAMECALL                         R19 R0 K25 ["GetTouchingParts"]
     2231 CALL                             R19 1 1
     2232 LENGTH                           R18 R19
     2233 LOADN                            R19 0
     2234 JUMPIFNOTLT                      R19 R18 ; [+28]
     2236 GETUPVAL                         R18 23
     2237 MOVE                             R19 R0
     2238 MOVE                             R20 R17
     2239 CALL                             R18 2 0
     2240 JUMP                             ; [+22]
     2241 LOADK                            R19 K104 ["Grouping"]
     2242 NAMECALL                         R17 R0 K101 ["IsA"]
     2244 CALL                             R17 2 1
     2245 JUMPIFNOT                        R17 ; [+17]
     2246 GETTABLEKS                       R17 R0 K19 ["CFrame"]
     2248 SETTABLEKS                       R16 R0 K19 ["CFrame"]
     2250 GETUPVAL                         R19 10
     2251 GETTABLEKS                       R18 R19 K22 ["CollisionEnabled"]
     2253 JUMPIFNOT                        R18 ; [+9]
     2254 NAMECALL                         R19 R0 K25 ["GetTouchingParts"]
     2256 CALL                             R19 1 1
     2257 LENGTH                           R18 R19
     2258 LOADN                            R19 0
     2259 JUMPIFNOTLT                      R19 R18 ; [+3]
     2261 SETTABLEKS                       R17 R0 K19 ["CFrame"]
     2263 JUMPIFNOT                        R0 ; [+668]
     2264 GETUPVAL                         R18 10
     2265 GETTABLEKS                       R17 R18 K22 ["CollisionEnabled"]
     2267 JUMPIFNOT                        R17 ; [+9]
     2268 GETUPVAL                         R18 12
     2269 GETTABLEKS                       R17 R18 K24 ["itemsHasItemNotInList"]
     2271 NAMECALL                         R18 R0 K25 ["GetTouchingParts"]
     2273 CALL                             R18 1 1
     2274 MOVE                             R19 R6
     2275 CALL                             R17 2 1
     2276 JUMPIF                           R17 ; [+655]
     2277 GETUPVAL                         R19 6
     2278 LOADK                            R21 K59 [{0, 0, 1}]
     2279 NAMECALL                         R19 R19 K41 ["pointToWorldSpace"]
     2281 CALL                             R19 2 1
     2282 GETUPVAL                         R21 6
     2283 GETTABLEKS                       R20 R21 K34 ["p"]
     2285 SUB                              R18 R19 R20
     2286 GETTABLEKS                       R17 R18 K82 ["Unit"]
     2288 GETUPVAL                         R20 6
     2289 GETUPVAL                         R22 19
     2290 NAMECALL                         R20 R20 K72 ["pointToObjectSpace"]
     2292 CALL                             R20 2 1
     2293 LOADK                            R21 K105 [{1, 1, 0}]
     2294 MUL                              R19 R20 R21
     2295 GETTABLEKS                       R18 R19 K35 ["unit"]
     2297 GETGLOBAL                        R19 K106 ["cosineSimilarity"]
     2299 LOADK                            R20 K50 [{0, -1, 0}]
     2300 MOVE                             R21 R18
     2301 CALL                             R19 2 1
     2302 MOVE                             R20 R19
     2303 GETTABLEKS                       R21 R18 K86 ["X"]
     2305 LOADN                            R22 0
     2306 JUMPIFNOTLT                      R22 R21 ; [+3]
     2308 ADDK                             R20 R20 K107 [90]
     2309 JUMP                             ; [+9]
     2310 GETTABLEKS                       R21 R18 K74 ["Y"]
     2312 LOADN                            R22 0
     2313 JUMPIFNOTLT                      R22 R21 ; [+4]
     2315 ADDK                             R21 R20 K109 [180]
     2316 ADDK                             R20 R21 K108 [45]
     2317 JUMP                             ; [+1]
     2318 SUBK                             R20 R20 K108 [45]
     2319 GETUPVAL                         R22 1
     2320 GETTABLEKS                       R21 R22 K110 ["showRotate"]
     2322 GETUPVAL                         R23 6
     2323 GETIMPORT                        R25 K30 [CFrame.new]
     2325 LOADN                            R27 0
     2326 LOADN                            R28 0
     2327 GETTABLEKS                       R30 R8 K85 ["Z"]
     2329 MUL                              R29 R30 R9
     2330 FASTCALL                         VECTOR ; [+2]
     2331 GETIMPORT                        R26 K58 [Vector3.new]
     2333 CALL                             R26 3 1
     2334 CALL                             R25 1 -1
     2335 NAMECALL                         R23 R23 K32 ["toWorldSpace"]
     2337 CALL                             R23 -1 1
     2338 GETIMPORT                        R24 K97 [CFrame.Angles]
     2340 LOADN                            R25 0
     2341 LOADN                            R26 0
     2342 FASTCALL1                        MATH_RAD R20 ; [+3]
     2343 MOVE                             R28 R20
     2344 GETIMPORT                        R27 K99 [math.rad]
     2346 CALL                             R27 1 1
     2347 CALL                             R24 3 1
     2348 MUL                              R22 R23 R24
     2349 MOVE                             R23 R10
     2350 MOVE                             R24 R15
     2351 GETUPVAL                         R25 20
     2352 CALL                             R21 4 0
     2353 JUMP                             ; [+578]
     2354 JUMPIFNOTEQKN                    R2 K12 [12] ; [+248]
     2356 GETUPVAL                         R9 5
     2357 MULK                             R8 R9 K52 [0.5]
     2358 GETUPVAL                         R9 6
     2359 GETUPVAL                         R11 19
     2360 NAMECALL                         R9 R9 K72 ["pointToObjectSpace"]
     2362 CALL                             R9 2 1
     2363 GETTABLEKS                       R10 R9 K74 ["Y"]
     2365 GETTABLEKS                       R12 R9 K74 ["Y"]
     2367 FASTCALL1                        MATH_ABS R12 ; [+2]
     2368 GETIMPORT                        R11 K78 [math.abs]
     2370 CALL                             R11 1 1
     2371 DIV                              R9 R10 R11
     2372 GETUPVAL                         R12 5
     2373 GETTABLEKS                       R11 R12 K86 ["X"]
     2375 GETUPVAL                         R13 5
     2376 GETTABLEKS                       R12 R13 K85 ["Z"]
     2378 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
     2380 GETIMPORT                        R10 K88 [math.max]
     2382 CALL                             R10 2 1
     2383 GETUPVAL                         R15 6
     2384 GETIMPORT                        R17 K30 [CFrame.new]
     2386 LOADN                            R19 0
     2387 GETTABLEKS                       R21 R8 K74 ["Y"]
     2389 MUL                              R20 R21 R9
     2390 LOADN                            R21 0
     2391 FASTCALL                         VECTOR ; [+2]
     2392 GETIMPORT                        R18 K58 [Vector3.new]
     2394 CALL                             R18 3 1
     2395 CALL                             R17 1 -1
     2396 NAMECALL                         R15 R15 K32 ["toWorldSpace"]
     2398 CALL                             R15 -1 1
     2399 GETTABLEKS                       R14 R15 K34 ["p"]
     2401 GETUPVAL                         R15 20
     2402 SUB                              R13 R14 R15
     2403 GETTABLEKS                       R12 R13 K89 ["magnitude"]
     2405 JUMPIFLT                         R12 R10 ; [+2]
     2407 LOADB                            R11 0 +1
     2408 LOADB                            R11 1
     2409 GETUPVAL                         R12 6
     2410 GETUPVAL                         R14 21
     2411 NAMECALL                         R12 R12 K72 ["pointToObjectSpace"]
     2413 CALL                             R12 2 1
     2414 GETUPVAL                         R14 7
     2415 ADD                              R13 R12 R14
     2416 GETTABLEKS                       R16 R13 K85 ["Z"]
     2418 GETTABLEKS                       R17 R13 K86 ["X"]
     2420 FASTCALL2                        MATH_ATAN2 R16 R17 ; [+3]
     2422 GETIMPORT                        R15 K91 [math.atan2]
     2424 CALL                             R15 2 1
     2425 GETTABLEKS                       R17 R12 K85 ["Z"]
     2427 GETTABLEKS                       R18 R12 K86 ["X"]
     2429 FASTCALL2                        MATH_ATAN2 R17 R18 ; [+3]
     2431 GETIMPORT                        R16 K91 [math.atan2]
     2433 CALL                             R16 2 1
     2434 SUB                              R14 R15 R16
     2435 GETUPVAL                         R16 22
     2436 GETTABLEKS                       R15 R16 K92 ["roundToNearest"]
     2438 FASTCALL1                        MATH_DEG R14 ; [+3]
     2439 MOVE                             R17 R14
     2440 GETIMPORT                        R16 K94 [math.deg]
     2442 CALL                             R16 1 1
     2443 JUMPIFNOT                        R11 ; [+2]
     2444 LOADK                            R17 K95 [22.5]
     2445 JUMP                             ; [+1]
     2446 LOADN                            R17 1
     2447 CALL                             R15 2 1
     2448 GETUPVAL                         R17 6
     2449 GETIMPORT                        R18 K97 [CFrame.Angles]
     2451 LOADN                            R19 0
     2452 FASTCALL1                        MATH_RAD R15 ; [+3]
     2453 MOVE                             R22 R15
     2454 GETIMPORT                        R21 K99 [math.rad]
     2456 CALL                             R21 1 1
     2457 MINUS                            R20 R21
     2458 LOADN                            R21 0
     2459 CALL                             R18 3 1
     2460 MUL                              R16 R17 R18
     2461 LOADK                            R19 K100 ["BasePart"]
     2462 NAMECALL                         R17 R0 K101 ["IsA"]
     2464 CALL                             R17 2 1
     2465 JUMPIFNOT                        R17 ; [+3]
     2466 SETTABLEKS                       R16 R0 K19 ["CFrame"]
     2468 JUMP                             ; [+32]
     2469 LOADK                            R19 K104 ["Grouping"]
     2470 NAMECALL                         R17 R0 K101 ["IsA"]
     2472 CALL                             R17 2 1
     2473 JUMPIF                           R17 ; [+10]
     2474 LOADK                            R19 K102 ["Model"]
     2475 NAMECALL                         R17 R0 K101 ["IsA"]
     2477 CALL                             R17 2 1
     2478 JUMPIFNOT                        R17 ; [+22]
     2479 LOADK                            R19 K44 ["Workspace"]
     2480 NAMECALL                         R17 R0 K101 ["IsA"]
     2482 CALL                             R17 2 1
     2483 JUMPIF                           R17 ; [+17]
     2484 GETTABLEKS                       R17 R0 K19 ["CFrame"]
     2486 SETTABLEKS                       R16 R0 K19 ["CFrame"]
     2488 GETUPVAL                         R19 10
     2489 GETTABLEKS                       R18 R19 K22 ["CollisionEnabled"]
     2491 JUMPIFNOT                        R18 ; [+9]
     2492 NAMECALL                         R19 R0 K25 ["GetTouchingParts"]
     2494 CALL                             R19 1 1
     2495 LENGTH                           R18 R19
     2496 LOADN                            R19 0
     2497 JUMPIFNOTLT                      R19 R18 ; [+3]
     2499 SETTABLEKS                       R17 R0 K19 ["CFrame"]
     2501 JUMPIFNOT                        R0 ; [+430]
     2502 GETUPVAL                         R18 10
     2503 GETTABLEKS                       R17 R18 K22 ["CollisionEnabled"]
     2505 JUMPIFNOT                        R17 ; [+9]
     2506 GETUPVAL                         R18 12
     2507 GETTABLEKS                       R17 R18 K24 ["itemsHasItemNotInList"]
     2509 NAMECALL                         R18 R0 K25 ["GetTouchingParts"]
     2511 CALL                             R18 1 1
     2512 MOVE                             R19 R6
     2513 CALL                             R17 2 1
     2514 JUMPIF                           R17 ; [+417]
     2515 GETUPVAL                         R19 6
     2516 JUMPIFNOTEQKN                    R2 K13 [13] ; [+3]
     2518 LOADN                            R22 1
     2519 JUMP                             ; [+1]
     2520 LOADN                            R22 0
     2521 JUMPIFNOTEQKN                    R2 K12 [12] ; [+3]
     2523 LOADN                            R23 1
     2524 JUMP                             ; [+1]
     2525 LOADN                            R23 0
     2526 JUMPIFNOTEQKN                    R2 K11 [11] ; [+3]
     2528 LOADN                            R24 1
     2529 JUMP                             ; [+1]
     2530 LOADN                            R24 0
     2531 FASTCALL                         VECTOR ; [+2]
     2532 GETIMPORT                        R21 K58 [Vector3.new]
     2534 CALL                             R21 3 1
     2535 NAMECALL                         R19 R19 K41 ["pointToWorldSpace"]
     2537 CALL                             R19 2 1
     2538 GETUPVAL                         R21 6
     2539 GETTABLEKS                       R20 R21 K34 ["p"]
     2541 SUB                              R18 R19 R20
     2542 GETTABLEKS                       R17 R18 K82 ["Unit"]
     2544 GETUPVAL                         R20 6
     2545 GETUPVAL                         R22 19
     2546 NAMECALL                         R20 R20 K72 ["pointToObjectSpace"]
     2548 CALL                             R20 2 1
     2549 LOADK                            R21 K111 [{1, 0, 1}]
     2550 MUL                              R19 R20 R21
     2551 GETTABLEKS                       R18 R19 K35 ["unit"]
     2553 GETGLOBAL                        R20 K106 ["cosineSimilarity"]
     2555 LOADK                            R21 K112 [{0, 0, -1}]
     2556 MOVE                             R22 R18
     2557 CALL                             R20 2 1
     2558 GETTABLEKS                       R22 R18 K86 ["X"]
     2560 LOADN                            R23 0
     2561 JUMPIFNOTLT                      R23 R22 ; [+3]
     2563 LOADN                            R21 1
     2564 JUMP                             ; [+1]
     2565 LOADN                            R21 255
     2566 MUL                              R19 R20 R21
     2567 ADDK                             R20 R19 K107 [90]
     2568 GETUPVAL                         R22 1
     2569 GETTABLEKS                       R21 R22 K110 ["showRotate"]
     2571 GETUPVAL                         R23 6
     2572 GETIMPORT                        R25 K30 [CFrame.new]
     2574 LOADN                            R27 0
     2575 GETTABLEKS                       R29 R8 K74 ["Y"]
     2577 MUL                              R28 R29 R9
     2578 LOADN                            R29 0
     2579 FASTCALL                         VECTOR ; [+2]
     2580 GETIMPORT                        R26 K58 [Vector3.new]
     2582 CALL                             R26 3 1
     2583 CALL                             R25 1 -1
     2584 NAMECALL                         R23 R23 K32 ["toWorldSpace"]
     2586 CALL                             R23 -1 1
     2587 GETIMPORT                        R24 K97 [CFrame.Angles]
     2589 LOADK                            R25 K113 [1.5707963267949]
     2590 LOADN                            R26 0
     2591 FASTCALL1                        MATH_RAD R20 ; [+3]
     2592 MOVE                             R28 R20
     2593 GETIMPORT                        R27 K99 [math.rad]
     2595 CALL                             R27 1 1
     2596 CALL                             R24 3 1
     2597 MUL                              R22 R23 R24
     2598 MOVE                             R23 R10
     2599 MOVE                             R24 R15
     2600 GETUPVAL                         R25 20
     2601 CALL                             R21 4 0
     2602 JUMP                             ; [+329]
     2603 JUMPIFNOTEQKN                    R2 K13 [13] ; [+252]
     2605 GETUPVAL                         R9 5
     2606 MULK                             R8 R9 K52 [0.5]
     2607 GETUPVAL                         R9 6
     2608 GETUPVAL                         R11 19
     2609 NAMECALL                         R9 R9 K72 ["pointToObjectSpace"]
     2611 CALL                             R9 2 1
     2612 GETTABLEKS                       R10 R9 K86 ["X"]
     2614 GETTABLEKS                       R12 R9 K86 ["X"]
     2616 FASTCALL1                        MATH_ABS R12 ; [+2]
     2617 GETIMPORT                        R11 K78 [math.abs]
     2619 CALL                             R11 1 1
     2620 DIV                              R9 R10 R11
     2621 GETUPVAL                         R12 5
     2622 GETTABLEKS                       R11 R12 K74 ["Y"]
     2624 GETUPVAL                         R13 5
     2625 GETTABLEKS                       R12 R13 K85 ["Z"]
     2627 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
     2629 GETIMPORT                        R10 K88 [math.max]
     2631 CALL                             R10 2 1
     2632 GETUPVAL                         R15 6
     2633 GETIMPORT                        R17 K30 [CFrame.new]
     2635 GETTABLEKS                       R20 R8 K86 ["X"]
     2637 MUL                              R19 R20 R9
     2638 LOADN                            R20 0
     2639 LOADN                            R21 0
     2640 FASTCALL                         VECTOR ; [+2]
     2641 GETIMPORT                        R18 K58 [Vector3.new]
     2643 CALL                             R18 3 1
     2644 CALL                             R17 1 -1
     2645 NAMECALL                         R15 R15 K32 ["toWorldSpace"]
     2647 CALL                             R15 -1 1
     2648 GETTABLEKS                       R14 R15 K34 ["p"]
     2650 GETUPVAL                         R15 20
     2651 SUB                              R13 R14 R15
     2652 GETTABLEKS                       R12 R13 K89 ["magnitude"]
     2654 JUMPIFLT                         R12 R10 ; [+2]
     2656 LOADB                            R11 0 +1
     2657 LOADB                            R11 1
     2658 GETUPVAL                         R12 6
     2659 GETUPVAL                         R14 21
     2660 NAMECALL                         R12 R12 K72 ["pointToObjectSpace"]
     2662 CALL                             R12 2 1
     2663 GETUPVAL                         R14 7
     2664 ADD                              R13 R12 R14
     2665 GETTABLEKS                       R16 R13 K85 ["Z"]
     2667 GETTABLEKS                       R17 R13 K74 ["Y"]
     2669 FASTCALL2                        MATH_ATAN2 R16 R17 ; [+3]
     2671 GETIMPORT                        R15 K91 [math.atan2]
     2673 CALL                             R15 2 1
     2674 GETTABLEKS                       R17 R12 K85 ["Z"]
     2676 GETTABLEKS                       R18 R12 K74 ["Y"]
     2678 FASTCALL2                        MATH_ATAN2 R17 R18 ; [+3]
     2680 GETIMPORT                        R16 K91 [math.atan2]
     2682 CALL                             R16 2 1
     2683 SUB                              R14 R15 R16
     2684 GETUPVAL                         R16 22
     2685 GETTABLEKS                       R15 R16 K92 ["roundToNearest"]
     2687 FASTCALL1                        MATH_DEG R14 ; [+3]
     2688 MOVE                             R17 R14
     2689 GETIMPORT                        R16 K94 [math.deg]
     2691 CALL                             R16 1 1
     2692 JUMPIFNOT                        R11 ; [+2]
     2693 LOADK                            R17 K95 [22.5]
     2694 JUMP                             ; [+1]
     2695 LOADN                            R17 1
     2696 CALL                             R15 2 1
     2697 GETUPVAL                         R17 6
     2698 GETIMPORT                        R18 K97 [CFrame.Angles]
     2700 FASTCALL1                        MATH_RAD R15 ; [+3]
     2701 MOVE                             R20 R15
     2702 GETIMPORT                        R19 K99 [math.rad]
     2704 CALL                             R19 1 1
     2705 LOADN                            R20 0
     2706 LOADN                            R21 0
     2707 CALL                             R18 3 1
     2708 MUL                              R16 R17 R18
     2709 LOADK                            R19 K100 ["BasePart"]
     2710 NAMECALL                         R17 R0 K101 ["IsA"]
     2712 CALL                             R17 2 1
     2713 JUMPIFNOT                        R17 ; [+3]
     2714 SETTABLEKS                       R16 R0 K19 ["CFrame"]
     2716 JUMP                             ; [+55]
     2717 LOADK                            R19 K102 ["Model"]
     2718 NAMECALL                         R17 R0 K101 ["IsA"]
     2720 CALL                             R17 2 1
     2721 JUMPIFNOT                        R17 ; [+28]
     2722 LOADK                            R19 K44 ["Workspace"]
     2723 NAMECALL                         R17 R0 K101 ["IsA"]
     2725 CALL                             R17 2 1
     2726 JUMPIF                           R17 ; [+23]
     2727 NAMECALL                         R17 R0 K103 ["GetModelCFrame"]
     2729 CALL                             R17 1 1
     2730 GETUPVAL                         R18 23
     2731 MOVE                             R19 R0
     2732 MOVE                             R20 R16
     2733 CALL                             R18 2 0
     2734 GETUPVAL                         R19 10
     2735 GETTABLEKS                       R18 R19 K22 ["CollisionEnabled"]
     2737 JUMPIFNOT                        R18 ; [+34]
     2738 NAMECALL                         R19 R0 K25 ["GetTouchingParts"]
     2740 CALL                             R19 1 1
     2741 LENGTH                           R18 R19
     2742 LOADN                            R19 0
     2743 JUMPIFNOTLT                      R19 R18 ; [+28]
     2745 GETUPVAL                         R18 23
     2746 MOVE                             R19 R0
     2747 MOVE                             R20 R17
     2748 CALL                             R18 2 0
     2749 JUMP                             ; [+22]
     2750 LOADK                            R19 K104 ["Grouping"]
     2751 NAMECALL                         R17 R0 K101 ["IsA"]
     2753 CALL                             R17 2 1
     2754 JUMPIFNOT                        R17 ; [+17]
     2755 GETTABLEKS                       R17 R0 K19 ["CFrame"]
     2757 SETTABLEKS                       R16 R0 K19 ["CFrame"]
     2759 GETUPVAL                         R19 10
     2760 GETTABLEKS                       R18 R19 K22 ["CollisionEnabled"]
     2762 JUMPIFNOT                        R18 ; [+9]
     2763 NAMECALL                         R19 R0 K25 ["GetTouchingParts"]
     2765 CALL                             R19 1 1
     2766 LENGTH                           R18 R19
     2767 LOADN                            R19 0
     2768 JUMPIFNOTLT                      R19 R18 ; [+3]
     2770 SETTABLEKS                       R17 R0 K19 ["CFrame"]
     2772 JUMPIFNOT                        R0 ; [+159]
     2773 GETUPVAL                         R18 10
     2774 GETTABLEKS                       R17 R18 K22 ["CollisionEnabled"]
     2776 JUMPIFNOT                        R17 ; [+9]
     2777 GETUPVAL                         R18 12
     2778 GETTABLEKS                       R17 R18 K24 ["itemsHasItemNotInList"]
     2780 NAMECALL                         R18 R0 K25 ["GetTouchingParts"]
     2782 CALL                             R18 1 1
     2783 MOVE                             R19 R6
     2784 CALL                             R17 2 1
     2785 JUMPIF                           R17 ; [+146]
     2786 GETUPVAL                         R19 6
     2787 LOADK                            R21 K61 [{1, 0, 0}]
     2788 NAMECALL                         R19 R19 K41 ["pointToWorldSpace"]
     2790 CALL                             R19 2 1
     2791 GETUPVAL                         R21 6
     2792 GETTABLEKS                       R20 R21 K34 ["p"]
     2794 SUB                              R18 R19 R20
     2795 GETTABLEKS                       R17 R18 K82 ["Unit"]
     2797 GETUPVAL                         R20 6
     2798 GETUPVAL                         R22 19
     2799 NAMECALL                         R20 R20 K72 ["pointToObjectSpace"]
     2801 CALL                             R20 2 1
     2802 LOADK                            R21 K114 [{0, 1, 1}]
     2803 MUL                              R19 R20 R21
     2804 GETTABLEKS                       R18 R19 K35 ["unit"]
     2806 GETGLOBAL                        R20 K106 ["cosineSimilarity"]
     2808 LOADK                            R21 K112 [{0, 0, -1}]
     2809 MOVE                             R22 R18
     2810 CALL                             R20 2 1
     2811 GETTABLEKS                       R22 R18 K74 ["Y"]
     2813 LOADN                            R23 0
     2814 JUMPIFNOTLT                      R23 R22 ; [+3]
     2816 LOADN                            R21 1
     2817 JUMP                             ; [+1]
     2818 LOADN                            R21 255
     2819 MUL                              R19 R20 R21
     2820 ADDK                             R20 R19 K109 [180]
     2821 GETUPVAL                         R22 1
     2822 GETTABLEKS                       R21 R22 K110 ["showRotate"]
     2824 GETUPVAL                         R23 6
     2825 GETIMPORT                        R25 K30 [CFrame.new]
     2827 GETTABLEKS                       R28 R8 K86 ["X"]
     2829 MUL                              R27 R28 R9
     2830 LOADN                            R28 0
     2831 LOADN                            R29 0
     2832 FASTCALL                         VECTOR ; [+2]
     2833 GETIMPORT                        R26 K58 [Vector3.new]
     2835 CALL                             R26 3 1
     2836 CALL                             R25 1 -1
     2837 NAMECALL                         R23 R23 K32 ["toWorldSpace"]
     2839 CALL                             R23 -1 1
     2840 GETIMPORT                        R24 K97 [CFrame.Angles]
     2842 LOADN                            R25 0
     2843 LOADK                            R26 K113 [1.5707963267949]
     2844 FASTCALL1                        MATH_RAD R20 ; [+3]
     2845 MOVE                             R28 R20
     2846 GETIMPORT                        R27 K99 [math.rad]
     2848 CALL                             R27 1 1
     2849 CALL                             R24 3 1
     2850 MUL                              R22 R23 R24
     2851 MOVE                             R23 R10
     2852 MOVE                             R24 R15
     2853 GETUPVAL                         R25 20
     2854 CALL                             R21 4 0
     2855 JUMP                             ; [+76]
     2856 JUMPIFNOTEQKN                    R2 K14 [14] ; [+74]
     2858 GETUPVAL                         R9 1
     2859 GETTABLEKS                       R8 R9 K115 ["setAllAdornVisibility"]
     2861 LOADB                            R9 0
     2862 CALL                             R8 1 0
     2863 GETUPVAL                         R8 24
     2864 JUMPIF                           R8 ; [+67]
     2865 GETUPVAL                         R9 1
     2866 GETTABLEKS                       R8 R9 K116 ["isPlaneSelectingModeOn"]
     2868 CALL                             R8 0 1
     2869 JUMPIF                           R8 ; [+1]
     2870 RETURN                           R0 0
     2871 LOADB                            R8 1
     2872 SETUPVAL                         R8 24
     2873 GETUPVAL                         R8 25
     2874 JUMPIF                           R8 ; [+18]
     2875 GETIMPORT                        R8 K118 [Instance.new]
     2877 LOADK                            R9 K119 ["Part"]
     2878 GETUPVAL                         R10 26
     2879 CALL                             R8 2 1
     2880 SETUPVAL                         R8 25
     2881 GETUPVAL                         R8 25
     2882 LOADK                            R9 K120 [{50, 50, 0.01}]
     2883 SETTABLEKS                       R9 R8 K20 ["Size"]
     2885 GETUPVAL                         R8 25
     2886 LOADK                            R9 K121 [{0, 0, 0}]
     2887 SETTABLEKS                       R9 R8 K53 ["Position"]
     2889 GETUPVAL                         R8 25
     2890 LOADN                            R9 1
     2891 SETTABLEKS                       R9 R8 K122 ["Transparency"]
     2893 GETUPVAL                         R8 27
     2894 JUMPIF                           R8 ; [+37]
     2895 GETIMPORT                        R8 K118 [Instance.new]
     2897 LOADK                            R9 K123 ["BoxHandleAdornment"]
     2898 GETUPVAL                         R10 26
     2899 CALL                             R8 2 1
     2900 SETUPVAL                         R8 27
     2901 GETUPVAL                         R8 27
     2902 LOADB                            R9 0
     2903 SETTABLEKS                       R9 R8 K124 ["Visible"]
     2905 GETUPVAL                         R8 27
     2906 GETUPVAL                         R9 25
     2907 SETTABLEKS                       R9 R8 K125 ["Adornee"]
     2909 GETUPVAL                         R8 27
     2910 GETUPVAL                         R11 27
     2911 GETTABLEKS                       R10 R11 K125 ["Adornee"]
     2913 GETTABLEKS                       R9 R10 K20 ["Size"]
     2915 SETTABLEKS                       R9 R8 K20 ["Size"]
     2917 GETUPVAL                         R8 27
     2918 LOADK                            R9 K126 [0.6]
     2919 SETTABLEKS                       R9 R8 K122 ["Transparency"]
     2921 GETUPVAL                         R8 27
     2922 GETIMPORT                        R9 K128 [Color3.new]
     2924 LOADK                            R10 K129 [0.149019607843137]
     2925 LOADK                            R11 K130 [0.533333333333333]
     2926 LOADK                            R12 K131 [0.941176470588235]
     2927 CALL                             R9 3 1
     2928 SETTABLEKS                       R9 R8 K127 ["Color3"]
     2930 JUMP                             ; [+1]
     2931 LOADB                            R3 0
     2932 GETUPVAL                         R9 10
     2933 GETTABLEKS                       R8 R9 K22 ["CollisionEnabled"]
     2935 JUMPIFNOT                        R8 ; [+58]
     2936 GETIMPORT                        R9 K43 [game]
     2938 LOADK                            R11 K132 ["Selection"]
     2939 NAMECALL                         R9 R9 K133 ["GetService"]
     2941 CALL                             R9 2 1
     2942 NAMECALL                         R9 R9 K134 ["Get"]
     2944 CALL                             R9 1 1
     2945 LENGTH                           R8 R9
     2946 JUMPIFNOTEQKN                    R8 K10 [1] ; [+47]
     2948 JUMPIFEQKN                       R2 K26 [6] ; [+21]
     2950 JUMPIFEQKN                       R2 K51 [4] ; [+19]
     2952 JUMPIFEQKN                       R2 K62 [3] ; [+17]
     2954 JUMPIFEQKN                       R2 K63 [5] ; [+15]
     2956 JUMPIFEQKN                       R2 K64 [7] ; [+13]
     2958 JUMPIFEQKN                       R2 K66 [9] ; [+11]
     2960 JUMPIFEQKN                       R2 K68 [10] ; [+9]
     2962 JUMPIFEQKN                       R2 K70 [8] ; [+7]
     2964 JUMPIFEQKN                       R2 K11 [11] ; [+5]
     2966 JUMPIFEQKN                       R2 K12 [12] ; [+3]
     2968 JUMPIFNOTEQKN                    R2 K13 [13] ; [+25]
     2970 GETGLOBAL                        R8 K15 ["selectedPart"]
     2972 JUMPIFNOT                        R8 ; [+21]
     2973 GETUPVAL                         R9 12
     2974 GETTABLEKS                       R8 R9 K24 ["itemsHasItemNotInList"]
     2976 GETGLOBAL                        R9 K15 ["selectedPart"]
     2978 NAMECALL                         R9 R9 K25 ["GetTouchingParts"]
     2980 CALL                             R9 1 1
     2981 MOVE                             R10 R1
     2982 CALL                             R8 2 1
     2983 JUMPIFNOT                        R8 ; [+10]
     2984 JUMPIFNOT                        R4 ; [+4]
     2985 GETGLOBAL                        R8 K15 ["selectedPart"]
     2987 SETTABLEKS                       R4 R8 K19 ["CFrame"]
     2989 JUMPIFNOT                        R5 ; [+4]
     2990 GETGLOBAL                        R8 K15 ["selectedPart"]
     2992 SETTABLEKS                       R5 R8 K20 ["Size"]
     2994 GETGLOBAL                        R8 K15 ["selectedPart"]
     2996 JUMPIFNOT                        R8 ; [+10]
     2997 GETGLOBAL                        R8 K135 ["updatePivotAndChildAttachments"]
     2999 GETGLOBAL                        R9 K15 ["selectedPart"]
     3001 MOVE                             R10 R5
     3002 GETGLOBAL                        R12 K15 ["selectedPart"]
     3004 GETTABLEKS                       R11 R12 K20 ["Size"]
     3006 CALL                             R8 3 0
     3007 JUMPIFNOT                        R3 ; [+3]
     3008 GETGLOBAL                        R8 K136 ["updateDragPart"]
     3010 CALL                             R8 0 0
     3011 JUMPIFEQKN                       R2 K11 [11] ; [+8]
     3013 JUMPIFEQKN                       R2 K12 [12] ; [+6]
     3015 JUMPIFEQKN                       R2 K13 [13] ; [+4]
     3017 GETGLOBAL                        R8 K137 ["updateInvisiblePart"]
     3019 CALL                             R8 0 0
     3020 JUMPIFNOTEQKN                    R2 K10 [1] ; [+3]
     3022 GETUPVAL                         R8 28
     3023 CALL                             R8 0 0
     3024 LOADB                            R8 1
     3025 SETUPVAL                         R8 29
     3026 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+27]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["Part"]
        5 LOADNIL                          R2
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 0
        9 LOADK                            R1 K4 ["DragParte1b1aec5"]
       10 SETTABLEKS                       R1 R0 K5 ["Name"]
       12 GETUPVAL                         R0 0
       13 GETIMPORT                        R1 K9 [Enum.SurfaceType.Smooth]
       15 SETTABLEKS                       R1 R0 K10 ["BottomSurface"]
       17 GETUPVAL                         R0 0
       18 GETIMPORT                        R1 K9 [Enum.SurfaceType.Smooth]
       20 SETTABLEKS                       R1 R0 K11 ["TopSurface"]
       22 GETUPVAL                         R0 0
       23 LOADN                            R1 1
       24 SETTABLEKS                       R1 R0 K12 ["Transparency"]
       26 GETUPVAL                         R0 1
       27 GETUPVAL                         R1 0
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 2
       30 JUMPIF                           R0 ; [+27]
       31 GETIMPORT                        R0 K2 [Instance.new]
       33 LOADK                            R1 K13 ["BoxHandleAdornment"]
       34 GETUPVAL                         R2 3
       35 CALL                             R0 2 1
       36 SETUPVAL                         R0 2
       37 GETUPVAL                         R0 2
       38 LOADB                            R1 0
       39 SETTABLEKS                       R1 R0 K14 ["Visible"]
       41 GETUPVAL                         R0 2
       42 GETIMPORT                        R1 K16 [Color3.new]
       44 LOADK                            R2 K17 [0.149019607843137]
       45 LOADK                            R3 K18 [0.533333333333333]
       46 LOADK                            R4 K19 [0.941176470588235]
       47 CALL                             R1 3 1
       48 SETTABLEKS                       R1 R0 K15 ["Color3"]
       50 GETUPVAL                         R0 2
       51 LOADK                            R1 K20 [0.5]
       52 SETTABLEKS                       R1 R0 K12 ["Transparency"]
       54 GETUPVAL                         R0 2
       55 LOADB                            R1 1
       56 SETTABLEKS                       R1 R0 K21 ["AlwaysOnTop"]
       58 GETUPVAL                         R0 0
       59 JUMPIFNOT                        R0 ; [+74]
       60 GETIMPORT                        R1 K23 [game]
       62 LOADK                            R3 K24 ["Selection"]
       63 NAMECALL                         R1 R1 K25 ["GetService"]
       65 CALL                             R1 2 1
       66 NAMECALL                         R1 R1 K26 ["Get"]
       68 CALL                             R1 1 1
       69 LENGTH                           R0 R1
       70 JUMPIFNOTEQKN                    R0 K27 [1] ; [+26]
       72 GETUPVAL                         R1 4
       73 GETTABLEKS                       R0 R1 K28 ["convertToPart"]
       75 GETIMPORT                        R2 K23 [game]
       77 LOADK                            R4 K24 ["Selection"]
       78 NAMECALL                         R2 R2 K25 ["GetService"]
       80 CALL                             R2 2 1
       81 NAMECALL                         R2 R2 K26 ["Get"]
       83 CALL                             R2 1 1
       84 GETTABLEN                        R1 R2 1
       85 CALL                             R0 1 1
       86 GETUPVAL                         R1 0
       87 GETTABLEKS                       R2 R0 K29 ["Size"]
       89 SETTABLEKS                       R2 R1 K29 ["Size"]
       91 GETUPVAL                         R1 0
       92 GETTABLEKS                       R2 R0 K30 ["CFrame"]
       94 SETTABLEKS                       R2 R1 K30 ["CFrame"]
       96 JUMP                             ; [+12]
       97 GETUPVAL                         R0 0
       98 GETUPVAL                         R2 5
       99 GETTABLEKS                       R1 R2 K29 ["Size"]
      101 SETTABLEKS                       R1 R0 K29 ["Size"]
      103 GETUPVAL                         R0 0
      104 GETUPVAL                         R2 5
      105 GETTABLEKS                       R1 R2 K30 ["CFrame"]
      107 SETTABLEKS                       R1 R0 K30 ["CFrame"]
      109 GETUPVAL                         R0 0
      110 LOADK                            R1 K4 ["DragParte1b1aec5"]
      111 SETTABLEKS                       R1 R0 K5 ["Name"]
      113 GETUPVAL                         R0 0
      114 LOADB                            R1 0
      115 SETTABLEKS                       R1 R0 K31 ["Archivable"]
      117 GETUPVAL                         R0 0
      118 LOADNIL                          R1
      119 SETTABLEKS                       R1 R0 K32 ["Parent"]
      121 GETUPVAL                         R0 0
      122 GETIMPORT                        R1 K9 [Enum.SurfaceType.Smooth]
      124 SETTABLEKS                       R1 R0 K10 ["BottomSurface"]
      126 GETUPVAL                         R0 0
      127 GETIMPORT                        R1 K9 [Enum.SurfaceType.Smooth]
      129 SETTABLEKS                       R1 R0 K11 ["TopSurface"]
      131 GETUPVAL                         R0 1
      132 GETUPVAL                         R1 0
      133 CALL                             R0 1 0
      134 GETUPVAL                         R0 2
      135 JUMPIFNOT                        R0 ; [+31]
      136 GETGLOBAL                        R0 K33 ["selectedPart"]
      138 JUMPIFNOT                        R0 ; [+28]
      139 GETUPVAL                         R0 2
      140 GETUPVAL                         R1 0
      141 SETTABLEKS                       R1 R0 K34 ["Adornee"]
      143 GETUPVAL                         R0 2
      144 GETUPVAL                         R3 2
      145 GETTABLEKS                       R2 R3 K34 ["Adornee"]
      147 GETTABLEKS                       R1 R2 K29 ["Size"]
      149 SETTABLEKS                       R1 R0 K29 ["Size"]
      151 GETUPVAL                         R0 2
      152 LOADB                            R1 1
      153 SETTABLEKS                       R1 R0 K21 ["AlwaysOnTop"]
      155 GETUPVAL                         R0 2
      156 GETUPVAL                         R3 0
      157 GETTABLEKS                       R2 R3 K30 ["CFrame"]
      159 GETUPVAL                         R5 0
      160 GETTABLEKS                       R4 R5 K30 ["CFrame"]
      162 GETTABLEKS                       R3 R4 K35 ["p"]
      164 SUB                              R1 R2 R3
      165 SETTABLEKS                       R1 R0 K30 ["CFrame"]
      167 RETURN                           R0 0

PROTO_61:
        0 GETGLOBAL                        R0 K0 ["updateInvisiblePart"]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K1 ["getFilteredSelectionMetapart"]
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R1 1
       10 SETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R0 K2 ["Size"]
       13 SETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R0 K3 ["CFrame"]
       16 SETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R0 K4 ["PlaneAlignedCFrame"]
       19 SETUPVAL                         R1 4
       20 GETGLOBAL                        R1 K5 ["getBestExtentRotation"]
       22 CALL                             R1 0 1
       23 JUMPIF                           R1 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R3 R4 K6 ["p"]
       28 ADD                              R2 R1 R3
       29 SETGLOBAL                        R2 K7 ["originalDragPartOrientation"]
       31 GETGLOBAL                        R2 K8 ["updateDragPart"]
       33 CALL                             R2 0 0
       34 GETGLOBAL                        R2 K9 ["setPartRotation"]
       36 GETUPVAL                         R3 5
       37 GETGLOBAL                        R4 K7 ["originalDragPartOrientation"]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R2 R3 K10 ["setPartCFrameToExtents"]
       43 GETUPVAL                         R3 5
       44 GETGLOBAL                        R4 K7 ["originalDragPartOrientation"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_62:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R6 R0 K0 ["CFrame"]
        4 LOADK                            R8 K1 [{1, 0, 0}]
        5 NAMECALL                         R6 R6 K2 ["pointToWorldSpace"]
        7 CALL                             R6 2 1
        8 GETTABLEKS                       R8 R0 K0 ["CFrame"]
       10 GETTABLEKS                       R7 R8 K3 ["p"]
       12 SUB                              R5 R6 R7
       13 GETTABLEKS                       R4 R5 K4 ["Unit"]
       15 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K7 [table.insert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R6 R0 K0 ["CFrame"]
       23 LOADK                            R8 K8 [{-1, 0, 0}]
       24 NAMECALL                         R6 R6 K2 ["pointToWorldSpace"]
       26 CALL                             R6 2 1
       27 GETTABLEKS                       R8 R0 K0 ["CFrame"]
       29 GETTABLEKS                       R7 R8 K3 ["p"]
       31 SUB                              R5 R6 R7
       32 GETTABLEKS                       R4 R5 K4 ["Unit"]
       34 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       36 MOVE                             R3 R1
       37 GETIMPORT                        R2 K7 [table.insert]
       39 CALL                             R2 2 0
       40 GETTABLEKS                       R6 R0 K0 ["CFrame"]
       42 LOADK                            R8 K9 [{0, 1, 0}]
       43 NAMECALL                         R6 R6 K2 ["pointToWorldSpace"]
       45 CALL                             R6 2 1
       46 GETTABLEKS                       R8 R0 K0 ["CFrame"]
       48 GETTABLEKS                       R7 R8 K3 ["p"]
       50 SUB                              R5 R6 R7
       51 GETTABLEKS                       R4 R5 K4 ["Unit"]
       53 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       55 MOVE                             R3 R1
       56 GETIMPORT                        R2 K7 [table.insert]
       58 CALL                             R2 2 0
       59 GETTABLEKS                       R6 R0 K0 ["CFrame"]
       61 LOADK                            R8 K10 [{0, -1, 0}]
       62 NAMECALL                         R6 R6 K2 ["pointToWorldSpace"]
       64 CALL                             R6 2 1
       65 GETTABLEKS                       R8 R0 K0 ["CFrame"]
       67 GETTABLEKS                       R7 R8 K3 ["p"]
       69 SUB                              R5 R6 R7
       70 GETTABLEKS                       R4 R5 K4 ["Unit"]
       72 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       74 MOVE                             R3 R1
       75 GETIMPORT                        R2 K7 [table.insert]
       77 CALL                             R2 2 0
       78 GETTABLEKS                       R6 R0 K0 ["CFrame"]
       80 LOADK                            R8 K11 [{0, 0, 1}]
       81 NAMECALL                         R6 R6 K2 ["pointToWorldSpace"]
       83 CALL                             R6 2 1
       84 GETTABLEKS                       R8 R0 K0 ["CFrame"]
       86 GETTABLEKS                       R7 R8 K3 ["p"]
       88 SUB                              R5 R6 R7
       89 GETTABLEKS                       R4 R5 K4 ["Unit"]
       91 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       93 MOVE                             R3 R1
       94 GETIMPORT                        R2 K7 [table.insert]
       96 CALL                             R2 2 0
       97 GETTABLEKS                       R6 R0 K0 ["CFrame"]
       99 LOADK                            R8 K12 [{0, 0, -1}]
      100 NAMECALL                         R6 R6 K2 ["pointToWorldSpace"]
      102 CALL                             R6 2 1
      103 GETTABLEKS                       R8 R0 K0 ["CFrame"]
      105 GETTABLEKS                       R7 R8 K3 ["p"]
      107 SUB                              R5 R6 R7
      108 GETTABLEKS                       R4 R5 K4 ["Unit"]
      110 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      112 MOVE                             R3 R1
      113 GETIMPORT                        R2 K7 [table.insert]
      115 CALL                             R2 2 0
      116 RETURN                           R1 1

PROTO_63:
        0 GETGLOBAL                        R2 K0 ["getAllFaceNormals"]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["CFrame"]
        9 LOADK                            R7 K2 [{0, 1, 0}]
       10 NAMECALL                         R5 R5 K3 ["pointToWorldSpace"]
       12 CALL                             R5 2 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K4 ["Position"]
       16 SUB                              R4 R5 R6
       17 MOVE                             R8 R1
       18 NAMECALL                         R6 R4 K5 ["Cross"]
       20 CALL                             R6 2 1
       21 MOVE                             R10 R1
       22 NAMECALL                         R8 R4 K5 ["Cross"]
       24 CALL                             R8 2 1
       25 GETTABLEKS                       R7 R8 K6 ["Magnitude"]
       27 DIV                              R5 R6 R7
       28 GETIMPORT                        R6 K8 [ipairs]
       30 MOVE                             R7 R2
       31 CALL                             R6 1 3
       32 FORGPREP_INEXT                   R6
       33 GETGLOBAL                        R11 K9 ["projectVectorToPlane"]
       35 MOVE                             R12 R10
       36 MOVE                             R13 R4
       37 CALL                             R11 2 1
       38 GETGLOBAL                        R12 K9 ["projectVectorToPlane"]
       40 MOVE                             R13 R11
       41 MOVE                             R14 R5
       42 CALL                             R12 2 1
       43 GETTABLEKS                       R11 R12 K10 ["Unit"]
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R12 R13 K11 ["fuzzyCompareVector3"]
       48 MOVE                             R13 R11
       49 MOVE                             R14 R1
       50 CALL                             R12 2 1
       51 JUMPIFNOT                        R12 ; [+7]
       52 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       54 MOVE                             R13 R3
       55 MOVE                             R14 R10
       56 GETIMPORT                        R12 K14 [table.insert]
       58 CALL                             R12 2 0
       59 FORGLOOP                         R6 2 [inext] ; [-27]
       61 RETURN                           R3 1

PROTO_64:
        0 LOADNIL                          R2
        1 NEWTABLE                         R3 0 0
        3 LOADN                            R6 1
        4 LOADN                            R4 3
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 LOADN                            R9 1
        8 LOADN                            R7 2
        9 LOADN                            R8 1
       10 FORNPREP                         R7
       11 JUMPIFNOTEQKN                    R6 K0 [1] ; [+3]
       13 LOADN                            R12 1
       14 JUMP                             ; [+1]
       15 LOADN                            R12 0
       16 JUMPIFNOTEQKN                    R6 K1 [2] ; [+3]
       18 LOADN                            R13 1
       19 JUMP                             ; [+1]
       20 LOADN                            R13 0
       21 JUMPIFNOTEQKN                    R6 K2 [3] ; [+3]
       23 LOADN                            R14 1
       24 JUMP                             ; [+1]
       25 LOADN                            R14 0
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R11 K5 [Vector3.new]
       29 CALL                             R11 3 1
       30 JUMPIFNOTEQKN                    R9 K0 [1] ; [+3]
       32 LOADN                            R12 1
       33 JUMP                             ; [+1]
       34 LOADN                            R12 255
       35 MUL                              R10 R11 R12
       36 GETTABLEKS                       R12 R0 K6 ["CFrame"]
       38 MOVE                             R14 R10
       39 NAMECALL                         R12 R12 K7 ["pointToWorldSpace"]
       41 CALL                             R12 2 1
       42 GETTABLEKS                       R14 R0 K6 ["CFrame"]
       44 GETTABLEKS                       R13 R14 K8 ["p"]
       46 SUB                              R11 R12 R13
       47 GETGLOBAL                        R12 K9 ["cosineSimilarity"]
       49 GETTABLEKS                       R13 R11 K10 ["Unit"]
       51 MOVE                             R14 R1
       52 CALL                             R12 2 1
       53 JUMPIFEQKNIL                     R2 ; [+3]
       55 JUMPIFNOTLT                      R12 R2 ; [+10]
       57 MOVE                             R2 R12
       58 NEWTABLE                         R13 0 1
       60 GETTABLEKS                       R14 R11 K10 ["Unit"]
       62 SETLIST                          R13 R14 1 [1]
       64 MOVE                             R3 R13
       65 JUMP                             ; [+10]
       66 JUMPIFNOTEQ                      R12 R2 ; [+9]
       68 GETTABLEKS                       R15 R11 K10 ["Unit"]
       70 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       72 MOVE                             R14 R3
       73 GETIMPORT                        R13 K13 [table.insert]
       75 CALL                             R13 2 0
       76 FORNLOOP                         R7
       77 FORNLOOP                         R4
       78 JUMPIFEQ                         R2 R2 ; [+9]
       80 GETIMPORT                        R4 K15 [ipairs]
       82 MOVE                             R5 R3
       83 CALL                             R4 1 3
       84 FORGPREP_INEXT                   R4
       85 MULK                             R8 R8 K16 [-1]
       86 FORGLOOP                         R4 2 [inext] ; [-2]
       88 RETURN                           R3 1

PROTO_65:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [ipairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 LOADK                            R9 K2 ["BasePart"]
        7 NAMECALL                         R7 R6 K3 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+1]
       11 RETURN                           R6 1
       12 GETGLOBAL                        R7 K4 ["getFirstPart"]
       14 NAMECALL                         R8 R6 K5 ["GetChildren"]
       16 CALL                             R8 1 -1
       17 CALL                             R7 -1 1
       18 MOVE                             R1 R7
       19 JUMPIFNOT                        R1 ; [+1]
       20 RETURN                           R1 1
       21 FORGLOOP                         R2 2 [inext] ; [-16]
       23 LOADNIL                          R2
       24 RETURN                           R2 1

PROTO_66:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Selection"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["Get"]
        8 CALL                             R0 1 1
        9 LENGTH                           R1 R0
       10 JUMPIFNOTEQKN                    R1 K5 [0] ; [+5]
       12 GETIMPORT                        R1 K8 [CFrame.new]
       14 CALL                             R1 0 -1
       15 RETURN                           R1 -1
       16 GETIMPORT                        R1 K10 [ipairs]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 3
       20 FORGPREP_INEXT                   R1
       21 LOADK                            R8 K11 ["Model"]
       22 NAMECALL                         R6 R5 K12 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+25]
       26 LOADK                            R8 K13 ["Workspace"]
       27 NAMECALL                         R6 R5 K12 ["IsA"]
       29 CALL                             R6 2 1
       30 JUMPIF                           R6 ; [+20]
       31 GETTABLEKS                       R6 R5 K14 ["PrimaryPart"]
       33 JUMPIFNOT                        R6 ; [+5]
       34 GETTABLEKS                       R7 R5 K14 ["PrimaryPart"]
       36 GETTABLEKS                       R6 R7 K6 ["CFrame"]
       38 RETURN                           R6 1
       39 GETGLOBAL                        R6 K15 ["getFirstPart"]
       41 MOVE                             R7 R0
       42 CALL                             R6 1 1
       43 JUMPIF                           R6 ; [+4]
       44 GETIMPORT                        R7 K8 [CFrame.new]
       46 CALL                             R7 0 -1
       47 RETURN                           R7 -1
       48 GETTABLEKS                       R7 R6 K6 ["CFrame"]
       50 RETURN                           R7 1
       51 LOADK                            R8 K16 ["BasePart"]
       52 NAMECALL                         R6 R5 K12 ["IsA"]
       54 CALL                             R6 2 1
       55 JUMPIFNOT                        R6 ; [+3]
       56 GETTABLEKS                       R6 R5 K6 ["CFrame"]
       58 RETURN                           R6 1
       59 FORGLOOP                         R1 2 [inext] ; [-39]
       61 LOADNIL                          R1
       62 RETURN                           R1 1

PROTO_67:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R3 R0 K1 ["Size"]
        5 DIVK                             R2 R3 K0 [2]
        6 GETTABLEKS                       R3 R0 K2 ["CFrame"]
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R3 K3 ["pointToObjectSpace"]
       11 CALL                             R3 2 1
       12 LOADK                            R4 K4 [{0, 0, 0}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K5 ["fuzzyCompare"]
       16 GETTABLEKS                       R6 R3 K6 ["X"]
       18 GETTABLEKS                       R7 R2 K6 ["X"]
       20 CALL                             R5 2 1
       21 JUMPIFNOT                        R5 ; [+2]
       22 LOADK                            R4 K7 [{1, 0, 0}]
       23 JUMP                             ; [+57]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K5 ["fuzzyCompare"]
       27 GETTABLEKS                       R6 R3 K6 ["X"]
       29 GETTABLEKS                       R8 R2 K6 ["X"]
       31 MINUS                            R7 R8
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+2]
       34 LOADK                            R4 K8 [{-1, 0, 0}]
       35 JUMP                             ; [+45]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K5 ["fuzzyCompare"]
       39 GETTABLEKS                       R6 R3 K9 ["Y"]
       41 GETTABLEKS                       R7 R2 K9 ["Y"]
       43 CALL                             R5 2 1
       44 JUMPIFNOT                        R5 ; [+2]
       45 LOADK                            R4 K10 [{0, 1, 0}]
       46 JUMP                             ; [+34]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K5 ["fuzzyCompare"]
       50 GETTABLEKS                       R6 R3 K9 ["Y"]
       52 GETTABLEKS                       R8 R2 K9 ["Y"]
       54 MINUS                            R7 R8
       55 CALL                             R5 2 1
       56 JUMPIFNOT                        R5 ; [+2]
       57 LOADK                            R4 K11 [{0, -1, 0}]
       58 JUMP                             ; [+22]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K5 ["fuzzyCompare"]
       62 GETTABLEKS                       R6 R3 K12 ["Z"]
       64 GETTABLEKS                       R7 R2 K12 ["Z"]
       66 CALL                             R5 2 1
       67 JUMPIFNOT                        R5 ; [+2]
       68 LOADK                            R4 K13 [{0, 0, 1}]
       69 JUMP                             ; [+11]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R5 R6 K5 ["fuzzyCompare"]
       73 GETTABLEKS                       R6 R3 K12 ["Z"]
       75 GETTABLEKS                       R8 R2 K12 ["Z"]
       77 MINUS                            R7 R8
       78 CALL                             R5 2 1
       79 JUMPIFNOT                        R5 ; [+1]
       80 LOADK                            R4 K14 [{0, 0, -1}]
       81 GETTABLEKS                       R6 R0 K2 ["CFrame"]
       83 MOVE                             R8 R4
       84 NAMECALL                         R6 R6 K15 ["pointToWorldSpace"]
       86 CALL                             R6 2 1
       87 GETTABLEKS                       R8 R0 K2 ["CFrame"]
       89 GETTABLEKS                       R7 R8 K16 ["p"]
       91 SUB                              R5 R6 R7
       92 RETURN                           R5 1

PROTO_68:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R0 K0 ["CFrame"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["pointToObjectSpace"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R4 R0 K3 ["Size"]
       12 DIVK                             R3 R4 K2 [2]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["absVector3"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R6 R3 K5 ["x"]
       20 GETTABLEKS                       R7 R3 K6 ["z"]
       22 DIV                              R5 R6 R7
       23 GETTABLEKS                       R7 R4 K5 ["x"]
       25 GETTABLEKS                       R8 R4 K6 ["z"]
       27 DIV                              R6 R7 R8
       28 LOADK                            R7 K7 [{0, 0, 0}]
       29 JUMPIFNOTLT                      R5 R6 ; [+31]
       31 GETTABLEKS                       R9 R3 K5 ["x"]
       33 GETTABLEKS                       R10 R3 K8 ["y"]
       35 DIV                              R8 R9 R10
       36 GETTABLEKS                       R10 R4 K5 ["x"]
       38 GETTABLEKS                       R11 R4 K8 ["y"]
       40 DIV                              R9 R10 R11
       41 JUMPIFNOTLT                      R8 R9 ; [+10]
       43 GETTABLEKS                       R10 R2 K5 ["x"]
       45 LOADN                            R11 0
       46 JUMPIFNOTLT                      R10 R11 ; [+3]
       48 LOADK                            R7 K9 [{-1, 0, 0}]
       49 JUMP                             ; [+40]
       50 LOADK                            R7 K10 [{1, 0, 0}]
       51 JUMP                             ; [+38]
       52 GETTABLEKS                       R10 R2 K8 ["y"]
       54 LOADN                            R11 0
       55 JUMPIFNOTLT                      R10 R11 ; [+3]
       57 LOADK                            R7 K11 [{0, -1, 0}]
       58 JUMP                             ; [+31]
       59 LOADK                            R7 K12 [{0, 1, 0}]
       60 JUMP                             ; [+29]
       61 GETTABLEKS                       R9 R3 K8 ["y"]
       63 GETTABLEKS                       R10 R3 K6 ["z"]
       65 DIV                              R8 R9 R10
       66 GETTABLEKS                       R10 R4 K8 ["y"]
       68 GETTABLEKS                       R11 R4 K6 ["z"]
       70 DIV                              R9 R10 R11
       71 JUMPIFNOTLT                      R8 R9 ; [+10]
       73 GETTABLEKS                       R10 R2 K8 ["y"]
       75 LOADN                            R11 0
       76 JUMPIFNOTLT                      R10 R11 ; [+3]
       78 LOADK                            R7 K11 [{0, -1, 0}]
       79 JUMP                             ; [+10]
       80 LOADK                            R7 K12 [{0, 1, 0}]
       81 JUMP                             ; [+8]
       82 GETTABLEKS                       R10 R2 K6 ["z"]
       84 LOADN                            R11 0
       85 JUMPIFNOTLT                      R10 R11 ; [+3]
       87 LOADK                            R7 K13 [{0, 0, -1}]
       88 JUMP                             ; [+1]
       89 LOADK                            R7 K14 [{0, 0, 1}]
       90 GETTABLEKS                       R10 R0 K0 ["CFrame"]
       92 MOVE                             R12 R7
       93 NAMECALL                         R10 R10 K15 ["pointToWorldSpace"]
       95 CALL                             R10 2 1
       96 GETTABLEKS                       R12 R0 K0 ["CFrame"]
       98 GETTABLEKS                       R11 R12 K16 ["p"]
      100 SUB                              R9 R10 R11
      101 GETTABLEKS                       R8 R9 K17 ["Unit"]
      103 RETURN                           R8 1

PROTO_69:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEN                        R7 R6 2
        6 JUMPIFNOTEQ                      R7 R1 ; [+3]
        8 LOADB                            R7 1
        9 RETURN                           R7 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADB                            R2 0
       13 RETURN                           R2 1

PROTO_70:
        0 MULK                             R3 R2 K0 [-1]
        1 SUB                              R4 R1 R0
        2 MOVE                             R7 R3
        3 NAMECALL                         R5 R4 K1 ["Dot"]
        5 CALL                             R5 2 1
        6 MOVE                             R8 R3
        7 NAMECALL                         R6 R3 K1 ["Dot"]
        9 CALL                             R6 2 1
       10 DIV                              R7 R5 R6
       11 MUL                              R9 R7 R3
       12 ADD                              R8 R0 R9
       13 RETURN                           R8 1

PROTO_71:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R0 ; [+9]
        3 MULK                             R4 R0 K0 [1000000]
        4 SUBK                             R3 R4 K1 [0.5]
        5 FASTCALL1                        MATH_CEIL R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.ceil]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K0 [1000000]
       10 JUMPIF                           R1 ; [+7]
       11 MULK                             R4 R0 K0 [1000000]
       12 ADDK                             R3 R4 K1 [0.5]
       13 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       14 GETIMPORT                        R2 K6 [math.floor]
       16 CALL                             R2 1 1
       17 DIVK                             R1 R2 K0 [1000000]
       18 RETURN                           R1 1

PROTO_72:
        0 GETGLOBAL                        R2 K0 ["sanitizeFloat"]
        2 GETTABLEKS                       R3 R0 K1 ["x"]
        4 CALL                             R2 1 1
        5 GETGLOBAL                        R3 K0 ["sanitizeFloat"]
        7 GETTABLEKS                       R4 R0 K2 ["y"]
        9 CALL                             R3 1 1
       10 GETGLOBAL                        R4 K0 ["sanitizeFloat"]
       12 GETTABLEKS                       R5 R0 K3 ["z"]
       14 CALL                             R4 1 -1
       15 FASTCALL                         VECTOR ; [+2]
       16 GETIMPORT                        R1 K6 [Vector3.new]
       18 CALL                             R1 -1 1
       19 RETURN                           R1 1

PROTO_73:
        0 NAMECALL                         R1 R0 K0 ["components"]
        2 CALL                             R1 1 12
        3 GETIMPORT                        R13 K3 [CFrame.new]
        5 GETGLOBAL                        R14 K4 ["sanitizeFloat"]
        7 MOVE                             R15 R1
        8 CALL                             R14 1 1
        9 GETGLOBAL                        R15 K4 ["sanitizeFloat"]
       11 MOVE                             R16 R2
       12 CALL                             R15 1 1
       13 GETGLOBAL                        R16 K4 ["sanitizeFloat"]
       15 MOVE                             R17 R3
       16 CALL                             R16 1 1
       17 MOVE                             R17 R4
       18 MOVE                             R18 R5
       19 MOVE                             R19 R6
       20 MOVE                             R20 R7
       21 MOVE                             R21 R8
       22 MOVE                             R22 R9
       23 MOVE                             R23 R10
       24 MOVE                             R24 R11
       25 MOVE                             R25 R12
       26 CALL                             R13 12 -1
       27 RETURN                           R13 -1

PROTO_74:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setAllAdornVisibility"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R2 1
       12 SETUPVAL                         R2 3
       13 LOADB                            R2 1
       14 SETUPVAL                         R2 4
       15 GETGLOBAL                        R2 K1 ["getCurrentSelectionWithChildren"]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R3 5
       19 NAMECALL                         R3 R3 K2 ["IsRunning"]
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+18]
       23 GETUPVAL                         R3 6
       24 JUMPIF                           R3 ; [+16]
       25 LOADB                            R3 1
       26 SETUPVAL                         R3 6
       27 GETIMPORT                        R3 K4 [ipairs]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 3
       31 FORGPREP_INEXT                   R3
       32 GETUPVAL                         R8 7
       33 GETTABLEKS                       R9 R7 K5 ["Anchored"]
       35 SETTABLE                         R9 R8 R6
       36 LOADB                            R8 1
       37 SETTABLEKS                       R8 R7 K5 ["Anchored"]
       39 FORGLOOP                         R3 2 [inext] ; [-8]
       41 GETGLOBAL                        R3 K6 ["getBestExtentRotation"]
       43 CALL                             R3 0 1
       44 JUMPIFNOT                        R3 ; [+3]
       45 GETGLOBAL                        R4 K7 ["selectedPart"]
       47 JUMPIF                           R4 ; [+1]
       48 RETURN                           R0 0
       49 GETGLOBAL                        R4 K8 ["setPartRotation"]
       51 GETUPVAL                         R5 2
       52 LENGTH                           R7 R2
       53 LOADN                            R8 1
       54 JUMPIFNOTLT                      R8 R7 ; [+3]
       56 GETUPVAL                         R6 8
       57 JUMPIF                           R6 ; [+1]
       58 MOVE                             R6 R3
       59 CALL                             R4 2 0
       60 GETUPVAL                         R4 9
       61 JUMPIFNOT                        R4 ; [+10]
       62 LOADB                            R4 0
       63 SETUPVAL                         R4 9
       64 GETUPVAL                         R5 10
       65 GETTABLEKS                       R4 R5 K9 ["setPartCFrameToExtents"]
       67 GETUPVAL                         R5 2
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R6 R7 K10 ["CFrame"]
       71 CALL                             R4 2 0
       72 GETUPVAL                         R5 2
       73 GETTABLEKS                       R4 R5 K10 ["CFrame"]
       75 GETUPVAL                         R5 11
       76 JUMPIF                           R5 ; [+24]
       77 GETUPVAL                         R6 12
       78 GETTABLEKS                       R5 R6 K10 ["CFrame"]
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R8 R9 K11 ["Position"]
       83 ADD                              R7 R0 R8
       84 NAMECALL                         R5 R5 K12 ["pointToObjectSpace"]
       86 CALL                             R5 2 1
       87 LOADK                            R6 K13 [{1, 0, 1}]
       88 MUL                              R5 R5 R6
       89 GETUPVAL                         R7 12
       90 GETTABLEKS                       R6 R7 K10 ["CFrame"]
       92 MOVE                             R8 R5
       93 NAMECALL                         R6 R6 K14 ["pointToWorldSpace"]
       95 CALL                             R6 2 1
       96 MOVE                             R0 R6
       97 GETUPVAL                         R7 12
       98 GETTABLEKS                       R6 R7 K11 ["Position"]
      100 SUB                              R0 R0 R6
      101 GETUPVAL                         R6 13
      102 GETTABLEKS                       R5 R6 K15 ["getFilteredSelectionMetapart"]
      104 CALL                             R5 0 1
      105 GETGLOBAL                        R6 K16 ["setPartPosition"]
      107 GETUPVAL                         R7 2
      108 GETUPVAL                         R10 14
      109 GETTABLEKS                       R9 R10 K17 ["p"]
      111 ADD                              R8 R9 R0
      112 CALL                             R6 2 0
      113 GETUPVAL                         R7 13
      114 GETTABLEKS                       R6 R7 K18 ["getFilteredSelection"]
      116 CALL                             R6 0 1
      117 GETIMPORT                        R7 K20 [workspace]
      119 MOVE                             R9 R6
      120 NAMECALL                         R7 R7 K21 ["UnjoinFromOutsiders"]
      122 CALL                             R7 2 0
      123 GETUPVAL                         R6 8
      124 GETUPVAL                         R9 2
      125 GETTABLEKS                       R8 R9 K10 ["CFrame"]
      127 NAMECALL                         R6 R6 K22 ["toObjectSpace"]
      129 CALL                             R6 2 1
      130 NEWTABLE                         R7 0 8
      132 GETGLOBAL                        R10 K7 ["selectedPart"]
      134 GETTABLEKS                       R9 R10 K24 ["Size"]
      136 DIVK                             R8 R9 K23 [2]
      137 GETUPVAL                         R11 2
      138 GETTABLEKS                       R10 R11 K24 ["Size"]
      140 DIVK                             R9 R10 K23 [2]
      141 GETUPVAL                         R10 8
      142 GETUPVAL                         R13 2
      143 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      145 LOADK                            R15 K25 [{-1, -1, -1}]
      146 MUL                              R14 R9 R15
      147 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      149 CALL                             R12 2 -1
      150 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      152 CALL                             R10 -1 1
      153 SETTABLEN                        R10 R7 1
      154 GETUPVAL                         R10 8
      155 GETUPVAL                         R13 2
      156 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      158 LOADK                            R15 K26 [{-1, -1, 1}]
      159 MUL                              R14 R9 R15
      160 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      162 CALL                             R12 2 -1
      163 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      165 CALL                             R10 -1 1
      166 SETTABLEN                        R10 R7 2
      167 GETUPVAL                         R10 8
      168 GETUPVAL                         R13 2
      169 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      171 LOADK                            R15 K27 [{-1, 1, -1}]
      172 MUL                              R14 R9 R15
      173 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      175 CALL                             R12 2 -1
      176 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      178 CALL                             R10 -1 1
      179 SETTABLEN                        R10 R7 3
      180 GETUPVAL                         R10 8
      181 GETUPVAL                         R13 2
      182 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      184 LOADK                            R15 K28 [{-1, 1, 1}]
      185 MUL                              R14 R9 R15
      186 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      188 CALL                             R12 2 -1
      189 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      191 CALL                             R10 -1 1
      192 SETTABLEN                        R10 R7 4
      193 GETUPVAL                         R10 8
      194 GETUPVAL                         R13 2
      195 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      197 LOADK                            R15 K29 [{1, -1, -1}]
      198 MUL                              R14 R9 R15
      199 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      201 CALL                             R12 2 -1
      202 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      204 CALL                             R10 -1 1
      205 SETTABLEN                        R10 R7 5
      206 GETUPVAL                         R10 8
      207 GETUPVAL                         R13 2
      208 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      210 LOADK                            R15 K30 [{1, -1, 1}]
      211 MUL                              R14 R9 R15
      212 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      214 CALL                             R12 2 -1
      215 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      217 CALL                             R10 -1 1
      218 SETTABLEN                        R10 R7 6
      219 GETUPVAL                         R10 8
      220 GETUPVAL                         R13 2
      221 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      223 LOADK                            R15 K31 [{1, 1, -1}]
      224 MUL                              R14 R9 R15
      225 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      227 CALL                             R12 2 -1
      228 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      230 CALL                             R10 -1 1
      231 SETTABLEN                        R10 R7 7
      232 GETUPVAL                         R10 8
      233 GETUPVAL                         R13 2
      234 GETTABLEKS                       R12 R13 K10 ["CFrame"]
      236 LOADK                            R15 K32 [{1, 1, 1}]
      237 MUL                              R14 R9 R15
      238 NAMECALL                         R12 R12 K14 ["pointToWorldSpace"]
      240 CALL                             R12 2 -1
      241 NAMECALL                         R10 R10 K12 ["pointToObjectSpace"]
      243 CALL                             R10 -1 1
      244 SETTABLEN                        R10 R7 8
      245 LOADN                            R10 100
      246 LOADN                            R11 100
      247 LOADN                            R12 100
      248 LOADN                            R13 0
      249 LOADN                            R14 0
      250 LOADN                            R15 0
      251 LOADN                            R18 1
      252 LENGTH                           R16 R7
      253 LOADN                            R17 1
      254 FORNPREP                         R16
      255 GETTABLE                         R21 R7 R18
      256 GETTABLEKS                       R20 R21 K33 ["x"]
      258 GETGLOBAL                        R21 K34 ["roundToNearestGrid"]
      260 GETTABLE                         R23 R7 R18
      261 GETTABLEKS                       R22 R23 K33 ["x"]
      263 CALL                             R21 1 1
      264 SUB                              R19 R20 R21
      265 GETTABLE                         R22 R7 R18
      266 GETTABLEKS                       R21 R22 K35 ["y"]
      268 GETGLOBAL                        R22 K34 ["roundToNearestGrid"]
      270 GETTABLE                         R24 R7 R18
      271 GETTABLEKS                       R23 R24 K35 ["y"]
      273 CALL                             R22 1 1
      274 SUB                              R20 R21 R22
      275 GETTABLE                         R23 R7 R18
      276 GETTABLEKS                       R22 R23 K36 ["z"]
      278 GETGLOBAL                        R23 K34 ["roundToNearestGrid"]
      280 GETTABLE                         R25 R7 R18
      281 GETTABLEKS                       R24 R25 K36 ["z"]
      283 CALL                             R23 1 1
      284 SUB                              R21 R22 R23
      285 FASTCALL1                        MATH_ABS R19 ; [+3]
      286 MOVE                             R23 R19
      287 GETIMPORT                        R22 K39 [math.abs]
      289 CALL                             R22 1 1
      290 JUMPIFNOTLT                      R22 R10 ; [+8]
      292 FASTCALL1                        MATH_ABS R19 ; [+3]
      293 MOVE                             R23 R19
      294 GETIMPORT                        R22 K39 [math.abs]
      296 CALL                             R22 1 1
      297 MOVE                             R10 R22
      298 MOVE                             R13 R19
      299 FASTCALL1                        MATH_ABS R20 ; [+3]
      300 MOVE                             R23 R20
      301 GETIMPORT                        R22 K39 [math.abs]
      303 CALL                             R22 1 1
      304 JUMPIFNOTLT                      R22 R11 ; [+8]
      306 FASTCALL1                        MATH_ABS R20 ; [+3]
      307 MOVE                             R23 R20
      308 GETIMPORT                        R22 K39 [math.abs]
      310 CALL                             R22 1 1
      311 MOVE                             R11 R22
      312 MOVE                             R14 R20
      313 FASTCALL1                        MATH_ABS R21 ; [+3]
      314 MOVE                             R23 R21
      315 GETIMPORT                        R22 K39 [math.abs]
      317 CALL                             R22 1 1
      318 JUMPIFNOTLT                      R22 R12 ; [+8]
      320 FASTCALL1                        MATH_ABS R21 ; [+3]
      321 MOVE                             R23 R21
      322 GETIMPORT                        R22 K39 [math.abs]
      324 CALL                             R22 1 1
      325 MOVE                             R12 R22
      326 MOVE                             R15 R21
      327 FORNLOOP                         R16
      328 FASTCALL3                        VECTOR R13 R14 R15
      330 MOVE                             R17 R13
      331 MOVE                             R18 R14
      332 MOVE                             R19 R15
      333 GETIMPORT                        R16 K42 [Vector3.new]
      335 CALL                             R16 3 1
      336 LOADK                            R17 K13 [{1, 0, 1}]
      337 MUL                              R16 R16 R17
      338 GETGLOBAL                        R17 K43 ["sanitizeVector3"]
      340 MOVE                             R18 R16
      341 CALL                             R17 1 1
      342 MOVE                             R16 R17
      343 SUB                              R6 R6 R16
      344 GETGLOBAL                        R17 K44 ["sanitizeCFrame"]
      346 MOVE                             R18 R6
      347 CALL                             R17 1 1
      348 MOVE                             R6 R17
      349 JUMPIFNOT                        R1 ; [+936]
      350 GETUPVAL                         R17 11
      351 JUMPIF                           R17 ; [+934]
      352 GETUPVAL                         R19 12
      353 GETTABLEKS                       R18 R19 K10 ["CFrame"]
      355 LOADK                            R20 K45 [{0, 1, 0}]
      356 NAMECALL                         R18 R18 K14 ["pointToWorldSpace"]
      358 CALL                             R18 2 1
      359 GETUPVAL                         R20 12
      360 GETTABLEKS                       R19 R20 K11 ["Position"]
      362 SUB                              R17 R18 R19
      363 GETGLOBAL                        R18 K16 ["setPartPosition"]
      365 GETUPVAL                         R19 2
      366 GETUPVAL                         R21 8
      367 MOVE                             R23 R6
      368 NAMECALL                         R21 R21 K46 ["toWorldSpace"]
      370 CALL                             R21 2 1
      371 GETTABLEKS                       R20 R21 K17 ["p"]
      373 CALL                             R18 2 0
      374 GETGLOBAL                        R18 K47 ["originalDragPartOrientation"]
      376 JUMPIF                           R18 ; [+1]
      377 RETURN                           R0 0
      378 GETGLOBAL                        R18 K8 ["setPartRotation"]
      380 GETUPVAL                         R19 2
      381 LENGTH                           R21 R2
      382 LOADN                            R22 1
      383 JUMPIFNOTLT                      R22 R21 ; [+3]
      385 GETUPVAL                         R20 8
      386 JUMPIF                           R20 ; [+2]
      387 GETGLOBAL                        R20 K47 ["originalDragPartOrientation"]
      389 CALL                             R18 2 0
      390 GETUPVAL                         R19 2
      391 GETTABLEKS                       R18 R19 K10 ["CFrame"]
      393 GETUPVAL                         R21 2
      394 FASTCALL2                        TABLE_INSERT R2 R21 ; [+4]
      396 MOVE                             R20 R2
      397 GETIMPORT                        R19 K50 [table.insert]
      399 CALL                             R19 2 0
      400 GETUPVAL                         R19 2
      401 GETIMPORT                        R20 K20 [workspace]
      403 SETTABLEKS                       R20 R19 K51 ["Parent"]
      405 GETUPVAL                         R19 2
      406 SETTABLEKS                       R4 R19 K10 ["CFrame"]
      408 GETUPVAL                         R19 2
      409 SETTABLEKS                       R18 R19 K10 ["CFrame"]
      411 GETUPVAL                         R20 15
      412 GETTABLEKS                       R19 R20 K52 ["itemsHasItemNotInList"]
      414 GETUPVAL                         R20 2
      415 NAMECALL                         R20 R20 K53 ["GetTouchingParts"]
      417 CALL                             R20 1 1
      418 MOVE                             R21 R2
      419 CALL                             R19 2 1
      420 JUMPIFNOT                        R19 ; [+811]
      421 GETUPVAL                         R23 2
      422 GETTABLEKS                       R22 R23 K10 ["CFrame"]
      424 GETTABLEKS                       R21 R22 K17 ["p"]
      426 GETTABLEKS                       R22 R4 K17 ["p"]
      428 SUB                              R20 R21 R22
      429 GETTABLEKS                       R19 R20 K54 ["Unit"]
      431 GETTABLEKS                       R20 R19 K33 ["x"]
      433 GETTABLEKS                       R21 R19 K33 ["x"]
      435 JUMPIFEQ                         R20 R21 ; [+2]
      437 LOADK                            R19 K55 [{0, 0, 0}]
      438 NEWTABLE                         R20 0 0
      440 GETUPVAL                         R21 2
      441 MULK                             R22 R19 K56 [-1]
      442 GETUPVAL                         R24 16
      443 GETTABLEKS                       R23 R24 K57 ["SafeMove"]
      445 MOVE                             R24 R21
      446 MOVE                             R25 R2
      447 MOVE                             R26 R22
      448 CALL                             R23 3 0
      449 GETUPVAL                         R22 17
      450 GETTABLEKS                       R21 R22 K58 ["distanceVector3"]
      452 GETTABLEKS                       R22 R4 K17 ["p"]
      454 GETTABLEKS                       R23 R18 K17 ["p"]
      456 CALL                             R21 2 1
      457 GETUPVAL                         R23 17
      458 GETTABLEKS                       R22 R23 K58 ["distanceVector3"]
      460 GETUPVAL                         R25 2
      461 GETTABLEKS                       R24 R25 K10 ["CFrame"]
      463 GETTABLEKS                       R23 R24 K17 ["p"]
      465 GETTABLEKS                       R24 R18 K17 ["p"]
      467 CALL                             R22 2 1
      468 JUMPIFNOTLE                      R21 R22 ; [+4]
      470 GETUPVAL                         R21 2
      471 SETTABLEKS                       R4 R21 K10 ["CFrame"]
      473 GETUPVAL                         R22 2
      474 GETTABLEKS                       R21 R22 K10 ["CFrame"]
      476 GETUPVAL                         R22 2
      477 GETUPVAL                         R25 2
      478 GETTABLEKS                       R24 R25 K10 ["CFrame"]
      480 MULK                             R25 R19 K59 [0.0001]
      481 ADD                              R23 R24 R25
      482 SETTABLEKS                       R23 R22 K10 ["CFrame"]
      484 LOADN                            R22 0
      485 GETUPVAL                         R24 15
      486 GETTABLEKS                       R23 R24 K52 ["itemsHasItemNotInList"]
      488 GETUPVAL                         R24 2
      489 NAMECALL                         R24 R24 K53 ["GetTouchingParts"]
      491 CALL                             R24 1 1
      492 MOVE                             R25 R2
      493 CALL                             R23 2 1
      494 JUMPIF                           R23 ; [+13]
      495 LOADN                            R23 100
      496 JUMPIFNOTLT                      R22 R23 ; [+11]
      498 GETUPVAL                         R23 2
      499 GETUPVAL                         R26 2
      500 GETTABLEKS                       R25 R26 K10 ["CFrame"]
      502 MULK                             R26 R19 K59 [0.0001]
      503 ADD                              R24 R25 R26
      504 SETTABLEKS                       R24 R23 K10 ["CFrame"]
      506 ADDK                             R22 R22 K60 [1]
      507 JUMPBACK                         ; [-23]
      508 GETUPVAL                         R24 2
      509 GETTABLEKS                       R23 R24 K10 ["CFrame"]
      511 GETUPVAL                         R25 15
      512 GETTABLEKS                       R24 R25 K61 ["filterOutItems"]
      514 MOVE                             R25 R2
      515 GETUPVAL                         R26 2
      516 NAMECALL                         R26 R26 K53 ["GetTouchingParts"]
      518 CALL                             R26 1 -1
      519 CALL                             R24 -1 1
      520 NEWTABLE                         R25 0 0
      522 GETIMPORT                        R26 K63 [tick]
      524 CALL                             R26 0 1
      525 GETIMPORT                        R27 K65 [pairs]
      527 MOVE                             R28 R24
      528 CALL                             R27 1 3
      529 FORGPREP_NEXT                    R27
      530 GETTABLEKS                       R33 R31 K10 ["CFrame"]
      532 GETTABLEKS                       R35 R31 K10 ["CFrame"]
      534 GETTABLEKS                       R34 R35 K17 ["p"]
      536 SUB                              R32 R33 R34
      537 FASTCALL2                        TABLE_INSERT R25 R32 ; [+5]
      539 MOVE                             R34 R25
      540 MOVE                             R35 R32
      541 GETIMPORT                        R33 K50 [table.insert]
      543 CALL                             R33 2 0
      544 GETGLOBAL                        R33 K66 ["getNormalOfCollidingFace"]
      546 GETUPVAL                         R36 2
      547 GETTABLEKS                       R35 R36 K10 ["CFrame"]
      549 GETTABLEKS                       R34 R35 K17 ["p"]
      551 GETTABLEKS                       R36 R31 K10 ["CFrame"]
      553 GETTABLEKS                       R35 R36 K17 ["p"]
      555 MOVE                             R36 R17
      556 CALL                             R33 3 1
      557 GETGLOBAL                        R35 K67 ["getNormalFromClosestPoint"]
      559 MOVE                             R36 R31
      560 MOVE                             R37 R33
      561 CALL                             R35 2 1
      562 GETTABLEKS                       R34 R35 K54 ["Unit"]
      564 GETTABLEKS                       R38 R17 K54 ["Unit"]
      566 NAMECALL                         R36 R34 K68 ["Dot"]
      568 CALL                             R36 2 1
      569 GETTABLEKS                       R37 R17 K54 ["Unit"]
      571 MUL                              R35 R36 R37
      572 SUB                              R34 R34 R35
      573 GETUPVAL                         R38 18
      574 GETTABLEKS                       R37 R38 K69 ["fuzzyCompare"]
      576 LOADN                            R38 0
      577 GETTABLEKS                       R39 R34 K33 ["x"]
      579 CALL                             R37 2 1
      580 JUMPIFNOT                        R37 ; [+2]
      581 LOADN                            R36 0
      582 JUMP                             ; [+2]
      583 GETTABLEKS                       R36 R34 K33 ["x"]
      585 GETUPVAL                         R39 18
      586 GETTABLEKS                       R38 R39 K69 ["fuzzyCompare"]
      588 LOADN                            R39 0
      589 GETTABLEKS                       R40 R34 K35 ["y"]
      591 CALL                             R38 2 1
      592 JUMPIFNOT                        R38 ; [+2]
      593 LOADN                            R37 0
      594 JUMP                             ; [+2]
      595 GETTABLEKS                       R37 R34 K35 ["y"]
      597 GETUPVAL                         R40 18
      598 GETTABLEKS                       R39 R40 K69 ["fuzzyCompare"]
      600 LOADN                            R40 0
      601 GETTABLEKS                       R41 R34 K36 ["z"]
      603 CALL                             R39 2 1
      604 JUMPIFNOT                        R39 ; [+2]
      605 LOADN                            R38 0
      606 JUMP                             ; [+2]
      607 GETTABLEKS                       R38 R34 K36 ["z"]
      609 FASTCALL                         VECTOR ; [+2]
      610 GETIMPORT                        R35 K42 [Vector3.new]
      612 CALL                             R35 3 1
      613 MOVE                             R34 R35
      614 GETUPVAL                         R36 19
      615 GETTABLEKS                       R35 R36 K70 ["roundVector3ToNearest"]
      617 MOVE                             R36 R34
      618 LOADK                            R37 K59 [0.0001]
      619 CALL                             R35 2 1
      620 MOVE                             R34 R35
      621 GETGLOBAL                        R35 K71 ["normalExistsInTable"]
      623 MOVE                             R36 R20
      624 MOVE                             R37 R34
      625 CALL                             R35 2 1
      626 JUMPIF                           R35 ; [+12]
      627 NEWTABLE                         R37 0 2
      629 MOVE                             R38 R31
      630 MOVE                             R39 R34
      631 SETLIST                          R37 R38 2 [1]
      633 FASTCALL2                        TABLE_INSERT R20 R37 ; [+4]
      635 MOVE                             R36 R20
      636 GETIMPORT                        R35 K50 [table.insert]
      638 CALL                             R35 2 0
      639 FORGLOOP                         R27 2 ; [-110]
      641 GETIMPORT                        R27 K63 [tick]
      643 CALL                             R27 0 1
      644 NEWTABLE                         R28 0 0
      646 NEWTABLE                         R29 0 0
      648 GETIMPORT                        R30 K65 [pairs]
      650 MOVE                             R31 R20
      651 CALL                             R30 1 3
      652 FORGPREP_NEXT                    R30
      653 GETUPVAL                         R35 2
      654 SETTABLEKS                       R4 R35 K10 ["CFrame"]
      656 GETUPVAL                         R36 10
      657 GETTABLEKS                       R35 R36 K72 ["getPartBounds"]
      659 GETUPVAL                         R36 2
      660 GETTABLEN                        R38 R34 1
      661 GETTABLEKS                       R37 R38 K10 ["CFrame"]
      663 CALL                             R35 2 2
      664 GETTABLEN                        R38 R34 1
      665 GETTABLEKS                       R37 R38 K10 ["CFrame"]
      667 MOVE                             R39 R35
      668 NAMECALL                         R37 R37 K12 ["pointToObjectSpace"]
      670 CALL                             R37 2 1
      671 MOVE                             R35 R37
      672 GETTABLEN                        R38 R34 1
      673 GETTABLEKS                       R37 R38 K10 ["CFrame"]
      675 MOVE                             R39 R36
      676 NAMECALL                         R37 R37 K12 ["pointToObjectSpace"]
      678 CALL                             R37 2 1
      679 MOVE                             R36 R37
      680 GETUPVAL                         R37 2
      681 SETTABLEKS                       R18 R37 K10 ["CFrame"]
      683 GETUPVAL                         R38 10
      684 GETTABLEKS                       R37 R38 K72 ["getPartBounds"]
      686 GETUPVAL                         R38 2
      687 GETTABLEN                        R40 R34 1
      688 GETTABLEKS                       R39 R40 K10 ["CFrame"]
      690 CALL                             R37 2 2
      691 GETTABLEN                        R40 R34 1
      692 GETTABLEKS                       R39 R40 K10 ["CFrame"]
      694 MOVE                             R41 R37
      695 NAMECALL                         R39 R39 K12 ["pointToObjectSpace"]
      697 CALL                             R39 2 1
      698 MOVE                             R37 R39
      699 GETTABLEN                        R40 R34 1
      700 GETTABLEKS                       R39 R40 K10 ["CFrame"]
      702 MOVE                             R41 R38
      703 NAMECALL                         R39 R39 K12 ["pointToObjectSpace"]
      705 CALL                             R39 2 1
      706 MOVE                             R38 R39
      707 GETUPVAL                         R40 10
      708 GETTABLEKS                       R39 R40 K73 ["unionVector3NoSpaceChange"]
      710 MOVE                             R40 R37
      711 MOVE                             R41 R35
      712 MOVE                             R42 R36
      713 CALL                             R39 3 2
      714 MOVE                             R35 R39
      715 MOVE                             R36 R40
      716 GETUPVAL                         R40 10
      717 GETTABLEKS                       R39 R40 K73 ["unionVector3NoSpaceChange"]
      719 MOVE                             R40 R38
      720 MOVE                             R41 R35
      721 MOVE                             R42 R36
      722 CALL                             R39 3 2
      723 MOVE                             R35 R39
      724 MOVE                             R36 R40
      725 GETTABLEKS                       R39 R21 K17 ["p"]
      727 GETGLOBAL                        R40 K16 ["setPartPosition"]
      729 GETUPVAL                         R41 2
      730 GETTABLEN                        R44 R34 1
      731 GETTABLEKS                       R43 R44 K10 ["CFrame"]
      733 GETTABLEKS                       R42 R43 K17 ["p"]
      735 CALL                             R40 2 0
      736 GETUPVAL                         R40 2
      737 GETTABLEN                        R41 R34 2
      738 NEWTABLE                         R42 0 1
      740 GETTABLEN                        R43 R34 1
      741 SETLIST                          R42 R43 1 [1]
      743 GETUPVAL                         R44 16
      744 GETTABLEKS                       R43 R44 K57 ["SafeMove"]
      746 MOVE                             R44 R40
      747 GETUPVAL                         R46 15
      748 GETTABLEKS                       R45 R46 K74 ["createIgnoreListGivenWhiteList"]
      750 GETIMPORT                        R47 K76 [game]
      752 GETTABLEKS                       R46 R47 K77 ["Workspace"]
      754 MOVE                             R47 R42
      755 CALL                             R45 2 1
      756 MOVE                             R46 R41
      757 CALL                             R43 3 0
      758 GETUPVAL                         R42 2
      759 GETTABLEKS                       R41 R42 K10 ["CFrame"]
      761 GETTABLEKS                       R40 R41 K17 ["p"]
      763 GETUPVAL                         R42 19
      764 GETTABLEKS                       R41 R42 K70 ["roundVector3ToNearest"]
      766 MOVE                             R42 R39
      767 LOADK                            R43 K59 [0.0001]
      768 CALL                             R41 2 1
      769 MOVE                             R39 R41
      770 GETUPVAL                         R42 19
      771 GETTABLEKS                       R41 R42 K70 ["roundVector3ToNearest"]
      773 MOVE                             R42 R40
      774 LOADK                            R43 K59 [0.0001]
      775 CALL                             R41 2 1
      776 MOVE                             R40 R41
      777 SUB                              R42 R39 R40
      778 GETTABLEKS                       R41 R42 K54 ["Unit"]
      780 GETUPVAL                         R43 17
      781 GETTABLEKS                       R42 R43 K58 ["distanceVector3"]
      783 GETTABLEKS                       R43 R18 K17 ["p"]
      785 GETTABLEKS                       R45 R21 K17 ["p"]
      787 SUB                              R44 R45 R41
      788 CALL                             R42 2 1
      789 GETUPVAL                         R44 17
      790 GETTABLEKS                       R43 R44 K58 ["distanceVector3"]
      792 GETTABLEKS                       R44 R18 K17 ["p"]
      794 GETTABLEKS                       R46 R21 K17 ["p"]
      796 ADD                              R45 R46 R41
      797 CALL                             R43 2 1
      798 JUMPIFNOTLT                      R42 R43 ; [+2]
      800 MULK                             R41 R41 K56 [-1]
      801 GETTABLEKS                       R45 R17 K54 ["Unit"]
      803 NAMECALL                         R43 R41 K68 ["Dot"]
      805 CALL                             R43 2 1
      806 GETTABLEKS                       R44 R17 K54 ["Unit"]
      808 MUL                              R42 R43 R44
      809 SUB                              R41 R41 R42
      810 GETGLOBAL                        R42 K78 ["getClosestNormalFromPart"]
      812 GETTABLEN                        R43 R34 1
      813 MOVE                             R44 R41
      814 CALL                             R42 2 1
      815 MOVE                             R41 R42
      816 LENGTH                           R42 R41
      817 LOADN                            R43 0
      818 JUMPIFNOTLT                      R43 R42 ; [+3]
      820 GETTABLEN                        R41 R41 1
      821 JUMP                             ; [+1]
      822 LOADNIL                          R41
      823 GETUPVAL                         R45 18
      824 GETTABLEKS                       R44 R45 K69 ["fuzzyCompare"]
      826 LOADN                            R45 0
      827 GETTABLEKS                       R46 R41 K33 ["x"]
      829 CALL                             R44 2 1
      830 JUMPIFNOT                        R44 ; [+2]
      831 LOADN                            R43 0
      832 JUMP                             ; [+2]
      833 GETTABLEKS                       R43 R41 K33 ["x"]
      835 GETUPVAL                         R46 18
      836 GETTABLEKS                       R45 R46 K69 ["fuzzyCompare"]
      838 LOADN                            R46 0
      839 GETTABLEKS                       R47 R41 K35 ["y"]
      841 CALL                             R45 2 1
      842 JUMPIFNOT                        R45 ; [+2]
      843 LOADN                            R44 0
      844 JUMP                             ; [+2]
      845 GETTABLEKS                       R44 R41 K35 ["y"]
      847 GETUPVAL                         R47 18
      848 GETTABLEKS                       R46 R47 K69 ["fuzzyCompare"]
      850 LOADN                            R47 0
      851 GETTABLEKS                       R48 R41 K36 ["z"]
      853 CALL                             R46 2 1
      854 JUMPIFNOT                        R46 ; [+2]
      855 LOADN                            R45 0
      856 JUMP                             ; [+2]
      857 GETTABLEKS                       R45 R41 K36 ["z"]
      859 FASTCALL                         VECTOR ; [+2]
      860 GETIMPORT                        R42 K42 [Vector3.new]
      862 CALL                             R42 3 1
      863 MOVE                             R41 R42
      864 GETGLOBAL                        R42 K16 ["setPartPosition"]
      866 GETUPVAL                         R43 2
      867 GETTABLEKS                       R45 R21 K17 ["p"]
      869 GETTABLEN                        R46 R34 2
      870 SUB                              R44 R45 R46
      871 CALL                             R42 2 0
      872 GETUPVAL                         R42 2
      873 MOVE                             R43 R41
      874 NEWTABLE                         R44 0 1
      876 GETTABLEN                        R45 R34 1
      877 SETLIST                          R44 R45 1 [1]
      879 GETUPVAL                         R46 16
      880 GETTABLEKS                       R45 R46 K57 ["SafeMove"]
      882 MOVE                             R46 R42
      883 GETUPVAL                         R48 15
      884 GETTABLEKS                       R47 R48 K74 ["createIgnoreListGivenWhiteList"]
      886 GETIMPORT                        R49 K76 [game]
      888 GETTABLEKS                       R48 R49 K77 ["Workspace"]
      890 MOVE                             R49 R44
      891 CALL                             R47 2 1
      892 MOVE                             R48 R43
      893 CALL                             R45 3 0
      894 GETUPVAL                         R43 17
      895 GETTABLEKS                       R42 R43 K58 ["distanceVector3"]
      897 GETUPVAL                         R45 2
      898 GETTABLEKS                       R44 R45 K10 ["CFrame"]
      900 GETTABLEKS                       R43 R44 K17 ["p"]
      902 MOVE                             R44 R18
      903 CALL                             R42 2 1
      904 GETUPVAL                         R43 2
      905 SETTABLEKS                       R18 R43 K10 ["CFrame"]
      907 GETUPVAL                         R43 2
      908 GETTABLEN                        R44 R34 2
      909 NEWTABLE                         R45 0 1
      911 GETTABLEN                        R46 R34 1
      912 SETLIST                          R45 R46 1 [1]
      914 GETUPVAL                         R47 16
      915 GETTABLEKS                       R46 R47 K57 ["SafeMove"]
      917 MOVE                             R47 R43
      918 GETUPVAL                         R49 15
      919 GETTABLEKS                       R48 R49 K74 ["createIgnoreListGivenWhiteList"]
      921 GETIMPORT                        R50 K76 [game]
      923 GETTABLEKS                       R49 R50 K77 ["Workspace"]
      925 MOVE                             R50 R45
      926 CALL                             R48 2 1
      927 MOVE                             R49 R44
      928 CALL                             R46 3 0
      929 GETUPVAL                         R44 17
      930 GETTABLEKS                       R43 R44 K58 ["distanceVector3"]
      932 GETUPVAL                         R46 2
      933 GETTABLEKS                       R45 R46 K10 ["CFrame"]
      935 GETTABLEKS                       R44 R45 K17 ["p"]
      937 MOVE                             R45 R21
      938 CALL                             R43 2 1
      939 JUMPIFNOTLT                      R43 R42 ; [+2]
      941 MOVE                             R42 R43
      942 GETUPVAL                         R44 2
      943 SETTABLEKS                       R21 R44 K10 ["CFrame"]
      945 GETIMPORT                        R45 K76 [game]
      947 GETTABLEKS                       R44 R45 K79 ["Selection"]
      949 NAMECALL                         R44 R44 K80 ["Get"]
      951 CALL                             R44 1 1
      952 GETTABLEN                        R47 R34 1
      953 FASTCALL2                        TABLE_INSERT R44 R47 ; [+4]
      955 MOVE                             R46 R44
      956 GETIMPORT                        R45 K50 [table.insert]
      958 CALL                             R45 2 0
      959 GETUPVAL                         R46 2
      960 MOVE                             R47 R44
      961 MOVE                             R48 R41
      962 MOVE                             R49 R42
      963 JUMPIF                           R47 ; [+2]
      964 NEWTABLE                         R47 0 0
      966 GETUPVAL                         R51 16
      967 GETTABLEKS                       R50 R51 K81 ["moveUntilCollide"]
      969 MOVE                             R51 R46
      970 MOVE                             R52 R47
      971 MOVE                             R53 R48
      972 LOADK                            R54 K82 [0.0002]
      973 MOVE                             R55 R49
      974 CALL                             R50 5 1
      975 MOVE                             R45 R50
      976 JUMPIF                           R45 ; [+26]
      977 GETUPVAL                         R47 2
      978 GETTABLEKS                       R46 R47 K10 ["CFrame"]
      980 GETTABLEKS                       R45 R46 K17 ["p"]
      982 GETUPVAL                         R46 2
      983 SETTABLEKS                       R18 R46 K10 ["CFrame"]
      985 GETUPVAL                         R50 2
      986 GETTABLEKS                       R49 R50 K10 ["CFrame"]
      988 GETTABLEKS                       R48 R49 K17 ["p"]
      990 SUB                              R47 R48 R45
      991 GETTABLEKS                       R46 R47 K54 ["Unit"]
      993 GETUPVAL                         R47 2
      994 GETTABLEN                        R48 R34 2
      995 GETUPVAL                         R50 16
      996 GETTABLEKS                       R49 R50 K57 ["SafeMove"]
      998 MOVE                             R50 R47
      999 MOVE                             R51 R2
     1000 MOVE                             R52 R48
     1001 CALL                             R49 3 0
     1002 JUMP                             ; [+11]
     1003 GETUPVAL                         R46 17
     1004 GETTABLEKS                       R45 R46 K58 ["distanceVector3"]
     1006 GETUPVAL                         R48 2
     1007 GETTABLEKS                       R47 R48 K10 ["CFrame"]
     1009 GETTABLEKS                       R46 R47 K17 ["p"]
     1011 GETTABLEKS                       R47 R21 K17 ["p"]
     1013 CALL                             R45 2 1
     1014 LOADNIL                          R45
     1015 GETTABLEN                        R47 R34 1
     1016 GETTABLEKS                       R46 R47 K10 ["CFrame"]
     1018 GETUPVAL                         R50 2
     1019 GETTABLEKS                       R49 R50 K10 ["CFrame"]
     1021 GETTABLEKS                       R48 R49 K17 ["p"]
     1023 NAMECALL                         R46 R46 K12 ["pointToObjectSpace"]
     1025 CALL                             R46 2 1
     1026 GETGLOBAL                        R47 K83 ["vector3LessThanOrEqualTo"]
     1028 MOVE                             R48 R46
     1029 MOVE                             R49 R36
     1030 CALL                             R47 2 1
     1031 GETGLOBAL                        R48 K84 ["vector3GreaterThanOrEqualTo"]
     1033 MOVE                             R49 R46
     1034 MOVE                             R50 R35
     1035 CALL                             R48 2 1
     1036 JUMPIFNOT                        R47 ; [+28]
     1037 JUMPIFNOT                        R48 ; [+27]
     1038 GETUPVAL                         R50 15
     1039 GETTABLEKS                       R49 R50 K52 ["itemsHasItemNotInList"]
     1041 GETUPVAL                         R50 2
     1042 NAMECALL                         R50 R50 K53 ["GetTouchingParts"]
     1044 CALL                             R50 1 1
     1045 MOVE                             R51 R2
     1046 CALL                             R49 2 1
     1047 JUMPIF                           R49 ; [+12]
     1048 GETUPVAL                         R53 2
     1049 GETTABLEKS                       R52 R53 K10 ["CFrame"]
     1051 GETTABLEKS                       R51 R52 K17 ["p"]
     1053 FASTCALL2                        TABLE_INSERT R28 R51 ; [+4]
     1055 MOVE                             R50 R28
     1056 GETIMPORT                        R49 K50 [table.insert]
     1058 CALL                             R49 2 0
     1059 JUMP                             ; [+5]
     1060 GETUPVAL                         R50 2
     1061 GETTABLEKS                       R49 R50 K10 ["CFrame"]
     1063 GETTABLEKS                       R45 R49 K17 ["p"]
     1065 GETUPVAL                         R49 2
     1066 SETTABLEKS                       R18 R49 K10 ["CFrame"]
     1068 GETUPVAL                         R49 2
     1069 GETTABLEN                        R50 R34 2
     1070 GETUPVAL                         R52 16
     1071 GETTABLEKS                       R51 R52 K57 ["SafeMove"]
     1073 MOVE                             R52 R49
     1074 MOVE                             R53 R2
     1075 MOVE                             R54 R50
     1076 CALL                             R51 3 0
     1077 GETTABLEN                        R50 R34 1
     1078 GETTABLEKS                       R49 R50 K10 ["CFrame"]
     1080 GETUPVAL                         R53 2
     1081 GETTABLEKS                       R52 R53 K10 ["CFrame"]
     1083 GETTABLEKS                       R51 R52 K17 ["p"]
     1085 NAMECALL                         R49 R49 K12 ["pointToObjectSpace"]
     1087 CALL                             R49 2 1
     1088 MOVE                             R46 R49
     1089 GETGLOBAL                        R49 K83 ["vector3LessThanOrEqualTo"]
     1091 MOVE                             R50 R46
     1092 MOVE                             R51 R36
     1093 CALL                             R49 2 1
     1094 JUMPIFNOT                        R49 ; [+27]
     1095 GETGLOBAL                        R49 K84 ["vector3GreaterThanOrEqualTo"]
     1097 MOVE                             R50 R46
     1098 MOVE                             R51 R35
     1099 CALL                             R49 2 1
     1100 JUMPIFNOT                        R49 ; [+21]
     1101 GETUPVAL                         R50 15
     1102 GETTABLEKS                       R49 R50 K52 ["itemsHasItemNotInList"]
     1104 GETUPVAL                         R50 2
     1105 NAMECALL                         R50 R50 K53 ["GetTouchingParts"]
     1107 CALL                             R50 1 1
     1108 MOVE                             R51 R2
     1109 CALL                             R49 2 1
     1110 JUMPIF                           R49 ; [+11]
     1111 GETUPVAL                         R53 2
     1112 GETTABLEKS                       R52 R53 K10 ["CFrame"]
     1114 GETTABLEKS                       R51 R52 K17 ["p"]
     1116 FASTCALL2                        TABLE_INSERT R28 R51 ; [+4]
     1118 MOVE                             R50 R28
     1119 GETIMPORT                        R49 K50 [table.insert]
     1121 CALL                             R49 2 0
     1122 GETGLOBAL                        R49 K85 ["getDirectedNormalsFromPart"]
     1124 GETUPVAL                         R50 2
     1125 GETTABLEN                        R51 R34 2
     1126 CALL                             R49 2 1
     1127 JUMPIFNOT                        R45 ; [+67]
     1128 GETIMPORT                        R50 K65 [pairs]
     1130 MOVE                             R51 R49
     1131 CALL                             R50 1 3
     1132 FORGPREP_NEXT                    R50
     1133 GETUPVAL                         R56 15
     1134 GETTABLEKS                       R55 R56 K86 ["itemExistsInList"]
     1136 MOVE                             R56 R54
     1137 MOVE                             R57 R29
     1138 CALL                             R55 2 1
     1139 JUMPIF                           R55 ; [+53]
     1140 FASTCALL2                        TABLE_INSERT R29 R54 ; [+5]
     1142 MOVE                             R56 R29
     1143 MOVE                             R57 R54
     1144 GETIMPORT                        R55 K50 [table.insert]
     1146 CALL                             R55 2 0
     1147 GETGLOBAL                        R55 K16 ["setPartPosition"]
     1149 GETUPVAL                         R56 2
     1150 MOVE                             R57 R45
     1151 CALL                             R55 2 0
     1152 GETUPVAL                         R55 2
     1153 GETUPVAL                         R57 16
     1154 GETTABLEKS                       R56 R57 K57 ["SafeMove"]
     1156 MOVE                             R57 R55
     1157 MOVE                             R58 R2
     1158 MOVE                             R59 R54
     1159 CALL                             R56 3 0
     1160 GETTABLEN                        R56 R34 1
     1161 GETTABLEKS                       R55 R56 K10 ["CFrame"]
     1163 GETUPVAL                         R59 2
     1164 GETTABLEKS                       R58 R59 K10 ["CFrame"]
     1166 GETTABLEKS                       R57 R58 K17 ["p"]
     1168 NAMECALL                         R55 R55 K12 ["pointToObjectSpace"]
     1170 CALL                             R55 2 1
     1171 MOVE                             R46 R55
     1172 GETUPVAL                         R56 15
     1173 GETTABLEKS                       R55 R56 K52 ["itemsHasItemNotInList"]
     1175 GETUPVAL                         R56 2
     1176 NAMECALL                         R56 R56 K53 ["GetTouchingParts"]
     1178 CALL                             R56 1 1
     1179 MOVE                             R57 R2
     1180 CALL                             R55 2 1
     1181 JUMPIF                           R55 ; [+11]
     1182 GETUPVAL                         R59 2
     1183 GETTABLEKS                       R58 R59 K10 ["CFrame"]
     1185 GETTABLEKS                       R57 R58 K17 ["p"]
     1187 FASTCALL2                        TABLE_INSERT R28 R57 ; [+4]
     1189 MOVE                             R56 R28
     1190 GETIMPORT                        R55 K50 [table.insert]
     1192 CALL                             R55 2 0
     1193 FORGLOOP                         R50 2 ; [-61]
     1195 FORGLOOP                         R30 2 ; [-543]
     1197 GETIMPORT                        R30 K63 [tick]
     1199 CALL                             R30 0 1
     1200 GETTABLEKS                       R31 R4 K17 ["p"]
     1202 GETUPVAL                         R33 17
     1203 GETTABLEKS                       R32 R33 K58 ["distanceVector3"]
     1205 MOVE                             R33 R31
     1206 GETTABLEKS                       R34 R18 K17 ["p"]
     1208 CALL                             R32 2 1
     1209 GETIMPORT                        R33 K65 [pairs]
     1211 MOVE                             R34 R28
     1212 CALL                             R33 1 3
     1213 FORGPREP_NEXT                    R33
     1214 GETUPVAL                         R39 17
     1215 GETTABLEKS                       R38 R39 K58 ["distanceVector3"]
     1217 MOVE                             R39 R37
     1218 GETTABLEKS                       R40 R18 K17 ["p"]
     1220 CALL                             R38 2 1
     1221 JUMPIFNOTLT                      R38 R32 ; [+3]
     1223 MOVE                             R32 R38
     1224 MOVE                             R31 R37
     1225 FORGLOOP                         R33 2 ; [-12]
     1227 GETGLOBAL                        R33 K16 ["setPartPosition"]
     1229 GETUPVAL                         R34 2
     1230 MOVE                             R35 R31
     1231 CALL                             R33 2 0
     1232 GETUPVAL                         R20 17
     1233 GETTABLEKS                       R19 R20 K58 ["distanceVector3"]
     1235 GETUPVAL                         R22 2
     1236 GETTABLEKS                       R21 R22 K10 ["CFrame"]
     1238 GETTABLEKS                       R20 R21 K17 ["p"]
     1240 GETTABLEKS                       R21 R18 K17 ["p"]
     1242 CALL                             R19 2 1
     1243 GETUPVAL                         R21 17
     1244 GETTABLEKS                       R20 R21 K58 ["distanceVector3"]
     1246 GETTABLEKS                       R21 R4 K17 ["p"]
     1248 GETTABLEKS                       R22 R18 K17 ["p"]
     1250 CALL                             R20 2 1
     1251 JUMPIFNOTLT                      R20 R19 ; [+7]
     1253 GETGLOBAL                        R19 K16 ["setPartPosition"]
     1255 GETUPVAL                         R20 2
     1256 GETTABLEKS                       R21 R4 K17 ["p"]
     1258 CALL                             R19 2 0
     1259 GETUPVAL                         R20 15
     1260 GETTABLEKS                       R19 R20 K52 ["itemsHasItemNotInList"]
     1262 GETUPVAL                         R20 2
     1263 NAMECALL                         R20 R20 K53 ["GetTouchingParts"]
     1265 CALL                             R20 1 1
     1266 MOVE                             R21 R2
     1267 CALL                             R19 2 1
     1268 JUMPIFNOT                        R19 ; [+12]
     1269 GETUPVAL                         R20 15
     1270 GETTABLEKS                       R19 R20 K61 ["filterOutItems"]
     1272 MOVE                             R20 R2
     1273 GETUPVAL                         R21 2
     1274 NAMECALL                         R21 R21 K53 ["GetTouchingParts"]
     1276 CALL                             R21 1 -1
     1277 CALL                             R19 -1 1
     1278 GETUPVAL                         R20 2
     1279 SETTABLEKS                       R4 R20 K10 ["CFrame"]
     1281 GETUPVAL                         R19 2
     1282 LOADNIL                          R20
     1283 SETTABLEKS                       R20 R19 K51 ["Parent"]
     1285 JUMP                             ; [+64]
     1286 GETUPVAL                         R17 8
     1287 GETTABLEKS                       R19 R6 K17 ["p"]
     1289 NAMECALL                         R17 R17 K14 ["pointToWorldSpace"]
     1291 CALL                             R17 2 1
     1292 GETGLOBAL                        R18 K43 ["sanitizeVector3"]
     1294 MOVE                             R19 R17
     1295 CALL                             R18 1 1
     1296 MOVE                             R17 R18
     1297 GETUPVAL                         R18 2
     1298 GETUPVAL                         R22 2
     1299 GETTABLEKS                       R21 R22 K10 ["CFrame"]
     1301 GETUPVAL                         R24 2
     1302 GETTABLEKS                       R23 R24 K10 ["CFrame"]
     1304 GETTABLEKS                       R22 R23 K17 ["p"]
     1306 SUB                              R20 R21 R22
     1307 ADD                              R19 R20 R17
     1308 SETTABLEKS                       R19 R18 K10 ["CFrame"]
     1310 GETUPVAL                         R18 11
     1311 JUMPIFNOT                        R18 ; [+38]
     1312 GETUPVAL                         R20 2
     1313 GETTABLEKS                       R19 R20 K10 ["CFrame"]
     1315 GETTABLEKS                       R18 R19 K17 ["p"]
     1317 GETUPVAL                         R19 2
     1318 GETIMPORT                        R21 K76 [game]
     1320 GETTABLEKS                       R20 R21 K77 ["Workspace"]
     1322 SETTABLEKS                       R20 R19 K51 ["Parent"]
     1324 GETUPVAL                         R19 2
     1325 GETIMPORT                        R21 K76 [game]
     1327 GETTABLEKS                       R20 R21 K79 ["Selection"]
     1329 NAMECALL                         R20 R20 K80 ["Get"]
     1331 CALL                             R20 1 1
     1332 GETUPVAL                         R22 16
     1333 GETTABLEKS                       R21 R22 K57 ["SafeMove"]
     1335 MOVE                             R22 R19
     1336 MOVE                             R23 R20
     1337 LOADK                            R24 K45 [{0, 1, 0}]
     1338 CALL                             R21 3 0
     1339 GETUPVAL                         R19 2
     1340 LOADNIL                          R20
     1341 SETTABLEKS                       R20 R19 K51 ["Parent"]
     1343 GETUPVAL                         R21 2
     1344 GETTABLEKS                       R20 R21 K10 ["CFrame"]
     1346 GETTABLEKS                       R19 R20 K17 ["p"]
     1348 LOADB                            R20 0
     1349 SETUPVAL                         R20 11
     1350 GETTABLEKS                       R17 R5 K87 ["TranslateFromTo"]
     1352 MOVE                             R18 R4
     1353 GETUPVAL                         R20 2
     1354 GETTABLEKS                       R19 R20 K10 ["CFrame"]
     1356 CALL                             R17 2 0
     1357 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setAllAdornVisibility"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["UnitRay"]
        9 GETIMPORT                        R2 K4 [RaycastParams.new]
       11 CALL                             R2 0 1
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K5 ["BruteForceAllSlow"]
       15 GETIMPORT                        R3 K7 [game]
       17 LOADK                            R5 K8 ["Workspace"]
       18 NAMECALL                         R3 R3 K9 ["GetService"]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R5 R1 K10 ["Origin"]
       23 GETTABLEKS                       R7 R1 K12 ["Direction"]
       25 MULK                             R6 R7 K11 [800]
       26 MOVE                             R7 R2
       27 NAMECALL                         R3 R3 K13 ["Raycast"]
       29 CALL                             R3 4 1
       30 JUMPIF                           R3 ; [+1]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R4 R3 K14 ["Instance"]
       34 LOADK                            R6 K15 ["Terrain"]
       35 NAMECALL                         R4 R4 K16 ["IsA"]
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+1]
       39 RETURN                           R0 0
       40 GETTABLEKS                       R0 R3 K14 ["Instance"]
       42 GETUPVAL                         R4 2
       43 LOADB                            R5 1
       44 SETTABLEKS                       R5 R4 K17 ["Visible"]
       46 MOVE                             R4 R0
       47 JUMPIFNOT                        R4 ; [+8]
       48 GETGLOBAL                        R4 K18 ["rayBoxIntersection"]
       50 MOVE                             R5 R1
       51 GETTABLEKS                       R6 R0 K19 ["CFrame"]
       53 GETTABLEKS                       R7 R0 K20 ["Size"]
       55 CALL                             R4 3 1
       56 JUMPIFNOT                        R0 ; [+412]
       57 JUMPIFNOT                        R4 ; [+411]
       58 GETTABLEKS                       R5 R0 K19 ["CFrame"]
       60 MOVE                             R7 R4
       61 NAMECALL                         R5 R5 K21 ["pointToObjectSpace"]
       63 CALL                             R5 2 1
       64 LOADNIL                          R6
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 GETTABLEKS                       R10 R0 K20 ["Size"]
       69 DIVK                             R9 R10 K22 [2]
       70 LOADK                            R10 K23 [{50, 50, 0.01}]
       71 MOVE                             R11 R4
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R13 R0 K19 ["CFrame"]
       75 SETTABLEKS                       R13 R12 K19 ["CFrame"]
       77 GETUPVAL                         R12 3
       78 GETUPVAL                         R15 3
       79 GETTABLEKS                       R14 R15 K19 ["CFrame"]
       81 GETIMPORT                        R15 K25 [CFrame.Angles]
       83 LOADN                            R16 0
       84 LOADK                            R17 K26 [1.5707963267949]
       85 LOADN                            R18 0
       86 CALL                             R15 3 1
       87 MUL                              R13 R14 R15
       88 SETTABLEKS                       R13 R12 K19 ["CFrame"]
       90 GETUPVAL                         R13 4
       91 GETTABLEKS                       R12 R13 K27 ["fuzzyCompare"]
       93 GETTABLEKS                       R14 R5 K28 ["X"]
       95 FASTCALL1                        MATH_ABS R14 ; [+2]
       96 GETIMPORT                        R13 K31 [math.abs]
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R14 R9 K28 ["X"]
      101 CALL                             R12 2 1
      102 JUMPIFNOT                        R12 ; [+64]
      103 LOADK                            R12 K32 [{0, 0, 1}]
      104 ADD                              R6 R5 R12
      105 LOADK                            R12 K33 [{0, 1, 1}]
      106 ADD                              R7 R5 R12
      107 LOADK                            R12 K34 [{0, 1, 0}]
      108 ADD                              R8 R5 R12
      109 GETUPVAL                         R13 4
      110 GETTABLEKS                       R12 R13 K27 ["fuzzyCompare"]
      112 GETTABLEKS                       R13 R5 K28 ["X"]
      114 GETTABLEKS                       R14 R9 K28 ["X"]
      116 CALL                             R12 2 1
      117 JUMPIFNOT                        R12 ; [+24]
      118 GETTABLEKS                       R14 R0 K20 ["Size"]
      120 GETTABLEKS                       R13 R14 K35 ["z"]
      122 GETTABLEKS                       R15 R0 K20 ["Size"]
      124 GETTABLEKS                       R14 R15 K36 ["y"]
      126 LOADK                            R15 K37 [0.01]
      127 FASTCALL                         VECTOR ; [+2]
      128 GETIMPORT                        R12 K39 [Vector3.new]
      130 CALL                             R12 3 1
      131 MOVE                             R10 R12
      132 GETTABLEKS                       R13 R9 K40 ["x"]
      134 LOADN                            R14 0
      135 LOADN                            R15 0
      136 FASTCALL                         VECTOR ; [+2]
      137 GETIMPORT                        R12 K39 [Vector3.new]
      139 CALL                             R12 3 1
      140 MOVE                             R11 R12
      141 JUMP                             ; [+204]
      142 GETTABLEKS                       R14 R0 K20 ["Size"]
      144 GETTABLEKS                       R13 R14 K35 ["z"]
      146 GETTABLEKS                       R15 R0 K20 ["Size"]
      148 GETTABLEKS                       R14 R15 K36 ["y"]
      150 LOADK                            R15 K37 [0.01]
      151 FASTCALL                         VECTOR ; [+2]
      152 GETIMPORT                        R12 K39 [Vector3.new]
      154 CALL                             R12 3 1
      155 MOVE                             R10 R12
      156 GETTABLEKS                       R14 R9 K40 ["x"]
      158 MINUS                            R13 R14
      159 LOADN                            R14 0
      160 LOADN                            R15 0
      161 FASTCALL                         VECTOR ; [+2]
      162 GETIMPORT                        R12 K39 [Vector3.new]
      164 CALL                             R12 3 1
      165 MOVE                             R11 R12
      166 JUMP                             ; [+179]
      167 GETUPVAL                         R13 4
      168 GETTABLEKS                       R12 R13 K27 ["fuzzyCompare"]
      170 GETTABLEKS                       R14 R5 K41 ["Y"]
      172 FASTCALL1                        MATH_ABS R14 ; [+2]
      173 GETIMPORT                        R13 K31 [math.abs]
      175 CALL                             R13 1 1
      176 GETTABLEKS                       R14 R9 K41 ["Y"]
      178 CALL                             R12 2 1
      179 JUMPIFNOT                        R12 ; [+77]
      180 LOADK                            R12 K32 [{0, 0, 1}]
      181 ADD                              R6 R5 R12
      182 LOADK                            R12 K42 [{1, 0, 1}]
      183 ADD                              R7 R5 R12
      184 LOADK                            R12 K43 [{1, 0, 0}]
      185 ADD                              R8 R5 R12
      186 GETUPVAL                         R12 3
      187 GETUPVAL                         R15 3
      188 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      190 GETIMPORT                        R15 K25 [CFrame.Angles]
      192 LOADK                            R16 K26 [1.5707963267949]
      193 LOADN                            R17 0
      194 LOADN                            R18 0
      195 CALL                             R15 3 1
      196 MUL                              R13 R14 R15
      197 SETTABLEKS                       R13 R12 K19 ["CFrame"]
      199 GETUPVAL                         R13 4
      200 GETTABLEKS                       R12 R13 K27 ["fuzzyCompare"]
      202 GETTABLEKS                       R13 R5 K41 ["Y"]
      204 GETTABLEKS                       R14 R9 K41 ["Y"]
      206 CALL                             R12 2 1
      207 JUMPIFNOT                        R12 ; [+24]
      208 GETTABLEKS                       R14 R0 K20 ["Size"]
      210 GETTABLEKS                       R13 R14 K35 ["z"]
      212 GETTABLEKS                       R15 R0 K20 ["Size"]
      214 GETTABLEKS                       R14 R15 K40 ["x"]
      216 LOADK                            R15 K37 [0.01]
      217 FASTCALL                         VECTOR ; [+2]
      218 GETIMPORT                        R12 K39 [Vector3.new]
      220 CALL                             R12 3 1
      221 MOVE                             R10 R12
      222 LOADN                            R13 0
      223 GETTABLEKS                       R14 R9 K36 ["y"]
      225 LOADN                            R15 0
      226 FASTCALL                         VECTOR ; [+2]
      227 GETIMPORT                        R12 K39 [Vector3.new]
      229 CALL                             R12 3 1
      230 MOVE                             R11 R12
      231 JUMP                             ; [+114]
      232 GETTABLEKS                       R14 R0 K20 ["Size"]
      234 GETTABLEKS                       R13 R14 K35 ["z"]
      236 GETTABLEKS                       R15 R0 K20 ["Size"]
      238 GETTABLEKS                       R14 R15 K40 ["x"]
      240 LOADK                            R15 K37 [0.01]
      241 FASTCALL                         VECTOR ; [+2]
      242 GETIMPORT                        R12 K39 [Vector3.new]
      244 CALL                             R12 3 1
      245 MOVE                             R10 R12
      246 LOADN                            R13 0
      247 GETTABLEKS                       R15 R9 K36 ["y"]
      249 MINUS                            R14 R15
      250 LOADN                            R15 0
      251 FASTCALL                         VECTOR ; [+2]
      252 GETIMPORT                        R12 K39 [Vector3.new]
      254 CALL                             R12 3 1
      255 MOVE                             R11 R12
      256 JUMP                             ; [+89]
      257 GETUPVAL                         R13 4
      258 GETTABLEKS                       R12 R13 K27 ["fuzzyCompare"]
      260 GETTABLEKS                       R14 R5 K44 ["Z"]
      262 FASTCALL1                        MATH_ABS R14 ; [+2]
      263 GETIMPORT                        R13 K31 [math.abs]
      265 CALL                             R13 1 1
      266 GETTABLEKS                       R14 R9 K44 ["Z"]
      268 CALL                             R12 2 1
      269 JUMPIFNOT                        R12 ; [+76]
      270 LOADK                            R12 K34 [{0, 1, 0}]
      271 ADD                              R6 R5 R12
      272 LOADK                            R12 K45 [{1, 1, 0}]
      273 ADD                              R7 R5 R12
      274 LOADK                            R12 K43 [{1, 0, 0}]
      275 ADD                              R8 R5 R12
      276 GETUPVAL                         R12 3
      277 GETUPVAL                         R15 3
      278 GETTABLEKS                       R14 R15 K19 ["CFrame"]
      280 GETIMPORT                        R15 K25 [CFrame.Angles]
      282 LOADN                            R16 0
      283 LOADK                            R17 K26 [1.5707963267949]
      284 LOADN                            R18 0
      285 CALL                             R15 3 1
      286 MUL                              R13 R14 R15
      287 SETTABLEKS                       R13 R12 K19 ["CFrame"]
      289 GETUPVAL                         R13 4
      290 GETTABLEKS                       R12 R13 K27 ["fuzzyCompare"]
      292 GETTABLEKS                       R13 R5 K44 ["Z"]
      294 GETTABLEKS                       R14 R9 K44 ["Z"]
      296 CALL                             R12 2 1
      297 JUMPIFNOT                        R12 ; [+24]
      298 GETTABLEKS                       R14 R0 K20 ["Size"]
      300 GETTABLEKS                       R13 R14 K40 ["x"]
      302 GETTABLEKS                       R15 R0 K20 ["Size"]
      304 GETTABLEKS                       R14 R15 K36 ["y"]
      306 LOADK                            R15 K37 [0.01]
      307 FASTCALL                         VECTOR ; [+2]
      308 GETIMPORT                        R12 K39 [Vector3.new]
      310 CALL                             R12 3 1
      311 MOVE                             R10 R12
      312 LOADN                            R13 0
      313 LOADN                            R14 0
      314 GETTABLEKS                       R15 R9 K35 ["z"]
      316 FASTCALL                         VECTOR ; [+2]
      317 GETIMPORT                        R12 K39 [Vector3.new]
      319 CALL                             R12 3 1
      320 MOVE                             R11 R12
      321 JUMP                             ; [+24]
      322 GETTABLEKS                       R14 R0 K20 ["Size"]
      324 GETTABLEKS                       R13 R14 K40 ["x"]
      326 GETTABLEKS                       R15 R0 K20 ["Size"]
      328 GETTABLEKS                       R14 R15 K36 ["y"]
      330 LOADK                            R15 K37 [0.01]
      331 FASTCALL                         VECTOR ; [+2]
      332 GETIMPORT                        R12 K39 [Vector3.new]
      334 CALL                             R12 3 1
      335 MOVE                             R10 R12
      336 LOADN                            R13 0
      337 LOADN                            R14 0
      338 GETTABLEKS                       R16 R9 K35 ["z"]
      340 MINUS                            R15 R16
      341 FASTCALL                         VECTOR ; [+2]
      342 GETIMPORT                        R12 K39 [Vector3.new]
      344 CALL                             R12 3 1
      345 MOVE                             R11 R12
      346 JUMPIFNOT                        R6 ; [+94]
      347 JUMPIFNOT                        R7 ; [+93]
      348 JUMPIFNOT                        R8 ; [+92]
      349 GETTABLEKS                       R13 R0 K19 ["CFrame"]
      351 MOVE                             R15 R4
      352 NAMECALL                         R13 R13 K21 ["pointToObjectSpace"]
      354 CALL                             R13 2 1
      355 SUB                              R12 R13 R5
      356 ADD                              R13 R6 R12
      357 ADD                              R14 R7 R12
      358 ADD                              R15 R8 R12
      359 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      361 MOVE                             R18 R6
      362 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      364 CALL                             R16 2 1
      365 MOVE                             R6 R16
      366 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      368 MOVE                             R18 R7
      369 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      371 CALL                             R16 2 1
      372 MOVE                             R7 R16
      373 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      375 MOVE                             R18 R8
      376 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      378 CALL                             R16 2 1
      379 MOVE                             R8 R16
      380 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      382 MOVE                             R18 R13
      383 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      385 CALL                             R16 2 1
      386 MOVE                             R13 R16
      387 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      389 MOVE                             R18 R14
      390 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      392 CALL                             R16 2 1
      393 MOVE                             R14 R16
      394 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      396 MOVE                             R18 R15
      397 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      399 CALL                             R16 2 1
      400 MOVE                             R15 R16
      401 GETGLOBAL                        R16 K47 ["createPlane"]
      403 MOVE                             R17 R6
      404 MOVE                             R18 R7
      405 MOVE                             R19 R8
      406 CALL                             R16 3 1
      407 SETUPVAL                         R16 5
      408 GETGLOBAL                        R16 K47 ["createPlane"]
      410 MOVE                             R17 R13
      411 MOVE                             R18 R14
      412 MOVE                             R19 R15
      413 CALL                             R16 3 1
      414 SETUPVAL                         R16 6
      415 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      417 MOVE                             R18 R11
      418 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      420 CALL                             R16 2 1
      421 MOVE                             R11 R16
      422 GETUPVAL                         R16 3
      423 GETUPVAL                         R20 3
      424 GETTABLEKS                       R19 R20 K19 ["CFrame"]
      426 GETUPVAL                         R22 3
      427 GETTABLEKS                       R21 R22 K19 ["CFrame"]
      429 GETTABLEKS                       R20 R21 K48 ["p"]
      431 SUB                              R18 R19 R20
      432 ADD                              R17 R18 R11
      433 SETTABLEKS                       R17 R16 K19 ["CFrame"]
      435 GETUPVAL                         R16 3
      436 SETTABLEKS                       R10 R16 K20 ["Size"]
      438 GETUPVAL                         R16 2
      439 SETTABLEKS                       R10 R16 K20 ["Size"]
      441 GETTABLEKS                       R13 R0 K20 ["Size"]
      443 MULK                             R12 R13 K49 [0.5]
      444 GETUPVAL                         R15 7
      445 GETTABLEKS                       R14 R15 K50 ["absVector3"]
      447 MOVE                             R15 R5
      448 CALL                             R14 1 1
      449 DIV                              R13 R5 R14
      450 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      452 GETTABLEKS                       R18 R0 K19 ["CFrame"]
      454 GETTABLEKS                       R17 R18 K48 ["p"]
      456 SUB                              R15 R16 R17
      457 GETTABLEKS                       R16 R0 K19 ["CFrame"]
      459 MUL                              R18 R12 R13
      460 NAMECALL                         R16 R16 K46 ["pointToWorldSpace"]
      462 CALL                             R16 2 1
      463 ADD                              R14 R15 R16
      464 GETUPVAL                         R16 0
      465 GETTABLEKS                       R15 R16 K51 ["drawPlaneCenter"]
      467 MOVE                             R16 R14
      468 CALL                             R15 1 0
      469 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETGLOBAL                        R0 K0 ["selectPart"]
        4 CALL                             R0 0 0
        5 LOADB                            R0 0
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETGLOBAL                        R0 K1 ["planeDrag"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 2
       15 JUMPIF                           R0 ; [+16]
       16 LOADB                            R0 1
       17 SETUPVAL                         R0 3
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R0 R1 K2 ["updateRubberBand"]
       21 GETIMPORT                        R1 K5 [Vector2.new]
       23 GETUPVAL                         R3 5
       24 GETTABLEKS                       R2 R3 K6 ["X"]
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R3 R4 K7 ["Y"]
       29 CALL                             R1 2 -1
       30 CALL                             R0 -1 0
       31 RETURN                           R0 0
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 6
       34 GETUPVAL                         R1 5
       35 GETTABLEKS                       R0 R1 K8 ["UnitRay"]
       37 GETIMPORT                        R1 K10 [Ray.new]
       39 GETTABLEKS                       R2 R0 K11 ["Origin"]
       41 GETTABLEKS                       R4 R0 K13 ["Direction"]
       43 MULK                             R3 R4 K12 [800]
       44 CALL                             R1 2 1
       45 MOVE                             R0 R1
       46 GETUPVAL                         R1 7
       47 JUMPIF                           R1 ; [+1]
       48 RETURN                           R0 0
       49 GETGLOBAL                        R1 K14 ["rayPlaneIntersection"]
       51 MOVE                             R2 R0
       52 GETUPVAL                         R3 7
       53 CALL                             R1 2 1
       54 GETUPVAL                         R2 8
       55 JUMPIF                           R2 ; [+24]
       56 GETTABLEKS                       R3 R0 K11 ["Origin"]
       58 SUB                              R2 R1 R3
       59 GETTABLEKS                       R4 R0 K15 ["Unit"]
       61 GETTABLEKS                       R3 R4 K13 ["Direction"]
       63 DIV                              R2 R2 R3
       64 GETTABLEKS                       R3 R2 K6 ["X"]
       66 LOADN                            R4 0
       67 JUMPIFLT                         R3 R4 ; [+11]
       69 GETTABLEKS                       R3 R2 K7 ["Y"]
       71 LOADN                            R4 0
       72 JUMPIFLT                         R3 R4 ; [+6]
       74 GETTABLEKS                       R3 R2 K16 ["Z"]
       76 LOADN                            R4 0
       77 JUMPIFNOTLT                      R3 R4 ; [+2]
       79 RETURN                           R0 0
       80 GETUPVAL                         R2 8
       81 JUMPIFNOT                        R2 ; [+90]
       82 GETGLOBAL                        R2 K14 ["rayPlaneIntersection"]
       84 MOVE                             R3 R0
       85 GETUPVAL                         R4 9
       86 CALL                             R2 2 1
       87 MOVE                             R1 R2
       88 GETIMPORT                        R2 K18 [RaycastParams.new]
       90 CALL                             R2 0 1
       91 GETIMPORT                        R4 K20 [game]
       93 GETTABLEKS                       R3 R4 K21 ["Selection"]
       95 NAMECALL                         R3 R3 K22 ["Get"]
       97 CALL                             R3 1 1
       98 SETTABLEKS                       R3 R2 K23 ["FilterDescendantsInstances"]
      100 LOADB                            R3 1
      101 SETTABLEKS                       R3 R2 K24 ["BruteForceAllSlow"]
      103 GETIMPORT                        R3 K26 [workspace]
      105 GETTABLEKS                       R5 R0 K11 ["Origin"]
      107 GETTABLEKS                       R6 R0 K13 ["Direction"]
      109 MOVE                             R7 R2
      110 NAMECALL                         R3 R3 K27 ["Raycast"]
      112 CALL                             R3 4 1
      113 LOADNIL                          R4
      114 JUMPIFNOT                        R3 ; [+3]
      115 GETTABLEKS                       R4 R3 K28 ["Position"]
      117 JUMP                             ; [+5]
      118 GETTABLEKS                       R5 R0 K11 ["Origin"]
      120 GETTABLEKS                       R6 R0 K13 ["Direction"]
      122 ADD                              R4 R5 R6
      123 GETIMPORT                        R8 K26 [workspace]
      125 GETTABLEKS                       R7 R8 K29 ["CurrentCamera"]
      127 GETTABLEKS                       R6 R7 K30 ["CoordinateFrame"]
      129 GETTABLEKS                       R5 R6 K31 ["p"]
      131 GETUPVAL                         R7 10
      132 GETTABLEKS                       R6 R7 K32 ["distanceVector3"]
      134 MOVE                             R7 R4
      135 MOVE                             R8 R5
      136 CALL                             R6 2 1
      137 GETUPVAL                         R8 10
      138 GETTABLEKS                       R7 R8 K32 ["distanceVector3"]
      140 MOVE                             R8 R1
      141 MOVE                             R9 R5
      142 CALL                             R7 2 1
      143 GETUPVAL                         R9 11
      144 GETTABLEKS                       R8 R9 K33 ["fuzzyCompareVector3"]
      146 GETTABLEKS                       R10 R0 K13 ["Direction"]
      148 GETTABLEKS                       R9 R10 K15 ["Unit"]
      150 SUB                              R11 R5 R1
      151 GETTABLEKS                       R10 R11 K15 ["Unit"]
      153 CALL                             R8 2 1
      154 JUMPIFNOT                        R8 ; [+1]
      155 LOADN                            R7 32
      156 LOADN                            R8 2
      157 JUMPIFNOTLT                      R7 R8 ; [+2]
      159 LOADN                            R7 32
      160 LOADN                            R8 244
      161 JUMPIFNOTLT                      R8 R7 ; [+10]
      163 LOADN                            R8 244
      164 JUMPIFNOTLT                      R8 R6 ; [+7]
      166 GETTABLEKS                       R10 R0 K13 ["Direction"]
      168 GETTABLEKS                       R9 R10 K15 ["Unit"]
      170 MULK                             R8 R9 K34 [30]
      171 ADD                              R1 R5 R8
      172 LOADK                            R2 K35 [{0, 0, 0}]
      173 GETGLOBAL                        R3 K36 ["selectedPart"]
      175 JUMPIFNOT                        R3 ; [+5]
      176 GETGLOBAL                        R3 K36 ["selectedPart"]
      178 GETTABLEKS                       R2 R3 K28 ["Position"]
      180 JUMP                             ; [+16]
      181 GETUPVAL                         R4 12
      182 GETTABLEKS                       R3 R4 K37 ["getFilteredSelection"]
      184 CALL                             R3 0 1
      185 JUMPIFNOT                        R3 ; [+3]
      186 LENGTH                           R4 R3
      187 JUMPIFNOTEQKN                    R4 K38 [0] ; [+2]
      189 RETURN                           R0 0
      190 GETUPVAL                         R5 13
      191 GETTABLEKS                       R4 R5 K39 ["convertToPart"]
      193 GETTABLEN                        R5 R3 1
      194 CALL                             R4 1 1
      195 SETGLOBAL                        R4 K36 ["selectedPart"]
      197 GETUPVAL                         R3 14
      198 JUMPIF                           R3 ; [+1]
      199 RETURN                           R0 0
      200 GETUPVAL                         R3 3
      201 JUMPIF                           R3 ; [+5]
      202 GETGLOBAL                        R3 K40 ["analyticsRecordFreeformDragBegin"]
      204 CALL                             R3 0 0
      205 LOADB                            R3 1
      206 SETUPVAL                         R3 3
      207 GETGLOBAL                        R3 K41 ["analyticsRecordFreeformDragUpdate"]
      209 MOVE                             R4 R1
      210 CALL                             R3 1 0
      211 GETGLOBAL                        R3 K42 ["movePart"]
      213 GETUPVAL                         R5 14
      214 SUB                              R4 R1 R5
      215 GETUPVAL                         R6 15
      216 GETTABLEKS                       R5 R6 K43 ["CollisionEnabled"]
      218 CALL                             R3 2 0
      219 GETUPVAL                         R4 16
      220 GETGLOBAL                        R7 K36 ["selectedPart"]
      222 GETTABLEKS                       R6 R7 K28 ["Position"]
      224 SUB                              R5 R6 R2
      225 ADD                              R3 R4 R5
      226 SETUPVAL                         R3 16
      227 GETGLOBAL                        R3 K44 ["updateInvisiblePart"]
      229 CALL                             R3 0 0
      230 RETURN                           R0 0

PROTO_77:
        0 LOADNIL                          R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["isOverPlaneSelect"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["setPlaneSelectingMode"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K2 ["UnitRay"]
       15 GETIMPORT                        R2 K5 [Ray.new]
       17 GETTABLEKS                       R3 R1 K6 ["Origin"]
       19 GETTABLEKS                       R5 R1 K8 ["Direction"]
       21 MULK                             R4 R5 K7 [800]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 JUMPIFNOT                        R0 ; [+20]
       28 GETIMPORT                        R5 K10 [Instance.new]
       30 LOADK                            R6 K11 ["Part"]
       31 GETUPVAL                         R7 2
       32 CALL                             R5 2 1
       33 MOVE                             R2 R5
       34 LOADK                            R5 K12 [{100, 1, 100}]
       35 SETTABLEKS                       R5 R2 K13 ["Size"]
       37 GETIMPORT                        R5 K15 [CFrame.new]
       39 LOADN                            R6 0
       40 LOADK                            R7 K16 [-0.5]
       41 LOADN                            R8 0
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R2 K14 ["CFrame"]
       45 LOADK                            R4 K17 [{0, 0, 0}]
       46 LOADK                            R3 K18 [{0, 1, 0}]
       47 JUMP                             ; [+21]
       48 GETIMPORT                        R5 K20 [RaycastParams.new]
       50 CALL                             R5 0 1
       51 LOADB                            R6 1
       52 SETTABLEKS                       R6 R5 K21 ["BruteForceAllSlow"]
       54 GETIMPORT                        R7 K23 [game]
       56 GETTABLEKS                       R6 R7 K24 ["Workspace"]
       58 GETTABLEKS                       R8 R1 K6 ["Origin"]
       60 GETTABLEKS                       R9 R1 K8 ["Direction"]
       62 MOVE                             R10 R5
       63 NAMECALL                         R6 R6 K25 ["Raycast"]
       65 CALL                             R6 4 1
       66 JUMPIFNOT                        R6 ; [+2]
       67 GETTABLEKS                       R2 R6 K9 ["Instance"]
       69 JUMPIF                           R2 ; [+6]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R5 R6 K1 ["setPlaneSelectingMode"]
       73 LOADB                            R6 0
       74 CALL                             R5 1 0
       75 RETURN                           R0 0
       76 JUMPIF                           R0 ; [+9]
       77 GETGLOBAL                        R5 K26 ["rayBoxIntersection"]
       79 MOVE                             R6 R1
       80 GETTABLEKS                       R7 R2 K14 ["CFrame"]
       82 GETTABLEKS                       R8 R2 K13 ["Size"]
       84 CALL                             R5 3 1
       85 MOVE                             R4 R5
       86 GETUPVAL                         R5 3
       87 JUMPIFNOT                        R5 ; [+4]
       88 GETUPVAL                         R5 3
       89 NAMECALL                         R5 R5 K27 ["Destroy"]
       91 CALL                             R5 1 0
       92 SETUPVAL                         R2 3
       93 SETUPVAL                         R4 4
       94 GETIMPORT                        R5 K10 [Instance.new]
       96 LOADK                            R6 K11 ["Part"]
       97 GETUPVAL                         R7 2
       98 CALL                             R5 2 1
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R6 R7 K13 ["Size"]
      102 SETTABLEKS                       R6 R5 K13 ["Size"]
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R6 R7 K14 ["CFrame"]
      107 SETTABLEKS                       R6 R5 K14 ["CFrame"]
      109 SETUPVAL                         R5 3
      110 GETUPVAL                         R7 3
      111 GETTABLEKS                       R6 R7 K14 ["CFrame"]
      113 GETIMPORT                        R8 K15 [CFrame.new]
      115 GETUPVAL                         R11 3
      116 GETTABLEKS                       R10 R11 K13 ["Size"]
      118 DIVK                             R9 R10 K28 [2]
      119 CALL                             R8 1 -1
      120 NAMECALL                         R6 R6 K29 ["toWorldSpace"]
      122 CALL                             R6 -1 1
      123 SETUPVAL                         R6 5
      124 LOADNIL                          R6
      125 SETUPVAL                         R6 6
      126 LOADNIL                          R6
      127 LOADNIL                          R7
      128 GETUPVAL                         R8 3
      129 JUMPIFNOT                        R8 ; [+309]
      130 GETUPVAL                         R8 4
      131 JUMPIFNOT                        R8 ; [+307]
      132 GETUPVAL                         R9 3
      133 GETTABLEKS                       R8 R9 K14 ["CFrame"]
      135 GETUPVAL                         R10 4
      136 NAMECALL                         R8 R8 K30 ["pointToObjectSpace"]
      138 CALL                             R8 2 1
      139 MOVE                             R6 R8
      140 LOADNIL                          R8
      141 LOADNIL                          R9
      142 LOADNIL                          R10
      143 LOADNIL                          R11
      144 LOADNIL                          R12
      145 LOADNIL                          R13
      146 LOADNIL                          R14
      147 SETUPVAL                         R11 7
      148 SETUPVAL                         R12 8
      149 SETUPVAL                         R13 9
      150 SETUPVAL                         R14 10
      151 GETUPVAL                         R12 3
      152 GETTABLEKS                       R11 R12 K13 ["Size"]
      154 DIVK                             R7 R11 K28 [2]
      155 GETUPVAL                         R12 11
      156 GETTABLEKS                       R11 R12 K31 ["fuzzyCompare"]
      158 GETTABLEKS                       R13 R6 K32 ["X"]
      160 FASTCALL1                        MATH_ABS R13 ; [+2]
      161 GETIMPORT                        R12 K35 [math.abs]
      163 CALL                             R12 1 1
      164 GETTABLEKS                       R13 R7 K32 ["X"]
      166 CALL                             R11 2 1
      167 JUMPIFNOT                        R11 ; [+69]
      168 LOADK                            R11 K36 [{0, 0, 1}]
      169 ADD                              R8 R6 R11
      170 LOADK                            R11 K37 [{0, 1, 1}]
      171 ADD                              R9 R6 R11
      172 LOADK                            R11 K18 [{0, 1, 0}]
      173 ADD                              R10 R6 R11
      174 GETTABLEKS                       R13 R6 K32 ["X"]
      176 LOADN                            R14 0
      177 LOADN                            R15 0
      178 FASTCALL                         VECTOR ; [+2]
      179 GETIMPORT                        R12 K39 [Vector3.new]
      181 CALL                             R12 3 1
      182 LOADK                            R14 K40 [{0, -1, 1}]
      183 MUL                              R13 R14 R7
      184 ADD                              R11 R12 R13
      185 SETUPVAL                         R11 7
      186 GETTABLEKS                       R13 R6 K32 ["X"]
      188 LOADN                            R14 0
      189 LOADN                            R15 0
      190 FASTCALL                         VECTOR ; [+2]
      191 GETIMPORT                        R12 K39 [Vector3.new]
      193 CALL                             R12 3 1
      194 LOADK                            R14 K37 [{0, 1, 1}]
      195 MUL                              R13 R14 R7
      196 ADD                              R11 R12 R13
      197 SETUPVAL                         R11 8
      198 GETTABLEKS                       R13 R6 K32 ["X"]
      200 LOADN                            R14 0
      201 LOADN                            R15 0
      202 FASTCALL                         VECTOR ; [+2]
      203 GETIMPORT                        R12 K39 [Vector3.new]
      205 CALL                             R12 3 1
      206 LOADK                            R14 K41 [{0, -1, -1}]
      207 MUL                              R13 R14 R7
      208 ADD                              R11 R12 R13
      209 SETUPVAL                         R11 9
      210 GETTABLEKS                       R13 R6 K32 ["X"]
      212 LOADN                            R14 0
      213 LOADN                            R15 0
      214 FASTCALL                         VECTOR ; [+2]
      215 GETIMPORT                        R12 K39 [Vector3.new]
      217 CALL                             R12 3 1
      218 LOADK                            R14 K42 [{0, 1, -1}]
      219 MUL                              R13 R14 R7
      220 ADD                              R11 R12 R13
      221 SETUPVAL                         R11 10
      222 GETUPVAL                         R12 11
      223 GETTABLEKS                       R11 R12 K31 ["fuzzyCompare"]
      225 GETTABLEKS                       R12 R6 K32 ["X"]
      227 GETTABLEKS                       R13 R7 K32 ["X"]
      229 CALL                             R11 2 1
      230 JUMPIFNOT                        R11 ; [+3]
      231 LOADN                            R11 3
      232 SETUPVAL                         R11 6
      233 JUMP                             ; [+166]
      234 LOADN                            R11 2
      235 SETUPVAL                         R11 6
      236 JUMP                             ; [+163]
      237 GETUPVAL                         R12 11
      238 GETTABLEKS                       R11 R12 K31 ["fuzzyCompare"]
      240 GETTABLEKS                       R13 R6 K43 ["Y"]
      242 FASTCALL1                        MATH_ABS R13 ; [+2]
      243 GETIMPORT                        R12 K35 [math.abs]
      245 CALL                             R12 1 1
      246 GETTABLEKS                       R13 R7 K43 ["Y"]
      248 CALL                             R11 2 1
      249 JUMPIFNOT                        R11 ; [+69]
      250 LOADK                            R11 K36 [{0, 0, 1}]
      251 ADD                              R8 R6 R11
      252 LOADK                            R11 K44 [{1, 0, 1}]
      253 ADD                              R9 R6 R11
      254 LOADK                            R11 K45 [{1, 0, 0}]
      255 ADD                              R10 R6 R11
      256 LOADN                            R13 0
      257 GETTABLEKS                       R14 R6 K43 ["Y"]
      259 LOADN                            R15 0
      260 FASTCALL                         VECTOR ; [+2]
      261 GETIMPORT                        R12 K39 [Vector3.new]
      263 CALL                             R12 3 1
      264 LOADK                            R14 K46 [{-1, 0, 1}]
      265 MUL                              R13 R14 R7
      266 ADD                              R11 R12 R13
      267 SETUPVAL                         R11 7
      268 LOADN                            R13 0
      269 GETTABLEKS                       R14 R6 K43 ["Y"]
      271 LOADN                            R15 0
      272 FASTCALL                         VECTOR ; [+2]
      273 GETIMPORT                        R12 K39 [Vector3.new]
      275 CALL                             R12 3 1
      276 LOADK                            R14 K44 [{1, 0, 1}]
      277 MUL                              R13 R14 R7
      278 ADD                              R11 R12 R13
      279 SETUPVAL                         R11 8
      280 LOADN                            R13 0
      281 GETTABLEKS                       R14 R6 K43 ["Y"]
      283 LOADN                            R15 0
      284 FASTCALL                         VECTOR ; [+2]
      285 GETIMPORT                        R12 K39 [Vector3.new]
      287 CALL                             R12 3 1
      288 LOADK                            R14 K47 [{-1, 0, -1}]
      289 MUL                              R13 R14 R7
      290 ADD                              R11 R12 R13
      291 SETUPVAL                         R11 9
      292 LOADN                            R13 0
      293 GETTABLEKS                       R14 R6 K43 ["Y"]
      295 LOADN                            R15 0
      296 FASTCALL                         VECTOR ; [+2]
      297 GETIMPORT                        R12 K39 [Vector3.new]
      299 CALL                             R12 3 1
      300 LOADK                            R14 K48 [{1, 0, -1}]
      301 MUL                              R13 R14 R7
      302 ADD                              R11 R12 R13
      303 SETUPVAL                         R11 10
      304 GETUPVAL                         R12 11
      305 GETTABLEKS                       R11 R12 K31 ["fuzzyCompare"]
      307 GETTABLEKS                       R12 R6 K43 ["Y"]
      309 GETTABLEKS                       R13 R7 K43 ["Y"]
      311 CALL                             R11 2 1
      312 JUMPIFNOT                        R11 ; [+3]
      313 LOADN                            R11 0
      314 SETUPVAL                         R11 6
      315 JUMP                             ; [+84]
      316 LOADN                            R11 1
      317 SETUPVAL                         R11 6
      318 JUMP                             ; [+81]
      319 GETUPVAL                         R12 11
      320 GETTABLEKS                       R11 R12 K31 ["fuzzyCompare"]
      322 GETTABLEKS                       R13 R6 K49 ["Z"]
      324 FASTCALL1                        MATH_ABS R13 ; [+2]
      325 GETIMPORT                        R12 K35 [math.abs]
      327 CALL                             R12 1 1
      328 GETTABLEKS                       R13 R7 K49 ["Z"]
      330 CALL                             R11 2 1
      331 JUMPIFNOT                        R11 ; [+68]
      332 LOADK                            R11 K18 [{0, 1, 0}]
      333 ADD                              R8 R6 R11
      334 LOADK                            R11 K50 [{1, 1, 0}]
      335 ADD                              R9 R6 R11
      336 LOADK                            R11 K45 [{1, 0, 0}]
      337 ADD                              R10 R6 R11
      338 LOADN                            R13 0
      339 LOADN                            R14 0
      340 GETTABLEKS                       R15 R6 K49 ["Z"]
      342 FASTCALL                         VECTOR ; [+2]
      343 GETIMPORT                        R12 K39 [Vector3.new]
      345 CALL                             R12 3 1
      346 LOADK                            R14 K51 [{-1, 1, 0}]
      347 MUL                              R13 R14 R7
      348 ADD                              R11 R12 R13
      349 SETUPVAL                         R11 7
      350 LOADN                            R13 0
      351 LOADN                            R14 0
      352 GETTABLEKS                       R15 R6 K49 ["Z"]
      354 FASTCALL                         VECTOR ; [+2]
      355 GETIMPORT                        R12 K39 [Vector3.new]
      357 CALL                             R12 3 1
      358 LOADK                            R14 K50 [{1, 1, 0}]
      359 MUL                              R13 R14 R7
      360 ADD                              R11 R12 R13
      361 SETUPVAL                         R11 8
      362 LOADN                            R13 0
      363 LOADN                            R14 0
      364 GETTABLEKS                       R15 R6 K49 ["Z"]
      366 FASTCALL                         VECTOR ; [+2]
      367 GETIMPORT                        R12 K39 [Vector3.new]
      369 CALL                             R12 3 1
      370 LOADK                            R14 K52 [{-1, -1, 0}]
      371 MUL                              R13 R14 R7
      372 ADD                              R11 R12 R13
      373 SETUPVAL                         R11 9
      374 LOADN                            R13 0
      375 LOADN                            R14 0
      376 GETTABLEKS                       R15 R6 K49 ["Z"]
      378 FASTCALL                         VECTOR ; [+2]
      379 GETIMPORT                        R12 K39 [Vector3.new]
      381 CALL                             R12 3 1
      382 LOADK                            R14 K53 [{1, -1, 0}]
      383 MUL                              R13 R14 R7
      384 ADD                              R11 R12 R13
      385 SETUPVAL                         R11 10
      386 GETUPVAL                         R12 11
      387 GETTABLEKS                       R11 R12 K31 ["fuzzyCompare"]
      389 GETTABLEKS                       R12 R6 K49 ["Z"]
      391 GETTABLEKS                       R13 R7 K49 ["Z"]
      393 CALL                             R11 2 1
      394 JUMPIFNOT                        R11 ; [+3]
      395 LOADN                            R11 5
      396 SETUPVAL                         R11 6
      397 JUMP                             ; [+2]
      398 LOADN                            R11 4
      399 SETUPVAL                         R11 6
      400 JUMPIFNOT                        R8 ; [+38]
      401 JUMPIFNOT                        R9 ; [+37]
      402 JUMPIFNOT                        R10 ; [+36]
      403 SETUPVAL                         R8 12
      404 SETUPVAL                         R9 13
      405 SETUPVAL                         R10 14
      406 GETUPVAL                         R12 3
      407 GETTABLEKS                       R11 R12 K14 ["CFrame"]
      409 MOVE                             R13 R8
      410 NAMECALL                         R11 R11 K54 ["pointToWorldSpace"]
      412 CALL                             R11 2 1
      413 MOVE                             R8 R11
      414 GETUPVAL                         R12 3
      415 GETTABLEKS                       R11 R12 K14 ["CFrame"]
      417 MOVE                             R13 R9
      418 NAMECALL                         R11 R11 K54 ["pointToWorldSpace"]
      420 CALL                             R11 2 1
      421 MOVE                             R9 R11
      422 GETUPVAL                         R12 3
      423 GETTABLEKS                       R11 R12 K14 ["CFrame"]
      425 MOVE                             R13 R10
      426 NAMECALL                         R11 R11 K54 ["pointToWorldSpace"]
      428 CALL                             R11 2 1
      429 MOVE                             R10 R11
      430 GETGLOBAL                        R11 K55 ["createPlane"]
      432 MOVE                             R12 R8
      433 MOVE                             R13 R9
      434 MOVE                             R14 R10
      435 CALL                             R11 3 1
      436 SETUPVAL                         R11 15
      437 LOADNIL                          R11
      438 SETUPVAL                         R11 16
      439 GETUPVAL                         R11 17
      440 GETTABLEKS                       R10 R11 K57 ["absVector3"]
      442 MOVE                             R11 R6
      443 CALL                             R10 1 1
      444 DIV                              R9 R6 R10
      445 MULK                             R8 R9 K56 [-1]
      446 GETUPVAL                         R10 17
      447 GETTABLEKS                       R9 R10 K58 ["cleanVector3"]
      449 MOVE                             R10 R8
      450 CALL                             R9 1 1
      451 MOVE                             R8 R9
      452 GETUPVAL                         R11 3
      453 GETTABLEKS                       R10 R11 K14 ["CFrame"]
      455 GETUPVAL                         R13 3
      456 GETTABLEKS                       R12 R13 K14 ["CFrame"]
      458 MUL                              R14 R7 R8
      459 NAMECALL                         R12 R12 K54 ["pointToWorldSpace"]
      461 CALL                             R12 2 1
      462 GETUPVAL                         R15 3
      463 GETTABLEKS                       R14 R15 K14 ["CFrame"]
      465 GETTABLEKS                       R13 R14 K59 ["p"]
      467 SUB                              R11 R12 R13
      468 SUB                              R9 R10 R11
      469 SETUPVAL                         R9 18
      470 GETUPVAL                         R9 6
      471 JUMPIFEQKN                       R9 K28 [2] ; [+4]
      473 GETUPVAL                         R9 6
      474 JUMPIFNOTEQKN                    R9 K60 [3] ; [+11]
      476 GETUPVAL                         R10 18
      477 GETIMPORT                        R11 K62 [CFrame.Angles]
      479 LOADN                            R12 0
      480 LOADN                            R13 0
      481 LOADK                            R14 K63 [1.5707963267949]
      482 CALL                             R11 3 1
      483 MUL                              R9 R10 R11
      484 SETUPVAL                         R9 18
      485 JUMP                             ; [+15]
      486 GETUPVAL                         R9 6
      487 JUMPIFEQKN                       R9 K64 [5] ; [+4]
      489 GETUPVAL                         R9 6
      490 JUMPIFNOTEQKN                    R9 K65 [4] ; [+10]
      492 GETUPVAL                         R10 18
      493 GETIMPORT                        R11 K62 [CFrame.Angles]
      495 LOADK                            R12 K63 [1.5707963267949]
      496 LOADN                            R13 0
      497 LOADN                            R14 0
      498 CALL                             R11 3 1
      499 MUL                              R9 R10 R11
      500 SETUPVAL                         R9 18
      501 GETGLOBAL                        R9 K66 ["updateInvisiblePart"]
      503 CALL                             R9 0 0
      504 GETUPVAL                         R10 19
      505 GETTABLEKS                       R9 R10 K67 ["getFilteredSelectionMetapart"]
      507 CALL                             R9 0 1
      508 JUMPIFNOT                        R9 ; [+3]
      509 GETUPVAL                         R10 18
      510 SETTABLEKS                       R10 R9 K68 ["UpdatePlaneCFrame"]
      512 GETUPVAL                         R11 0
      513 GETTABLEKS                       R10 R11 K1 ["setPlaneSelectingMode"]
      515 LOADB                            R11 0
      516 CALL                             R10 1 0
      517 RETURN                           R0 0

PROTO_78:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 GETIMPORT                        R2 K1 [game]
        5 LOADK                            R4 K2 ["Selection"]
        6 NAMECALL                         R2 R2 K3 ["GetService"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K4 ["Get"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K6 [ipairs]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 3
       16 FORGPREP_INEXT                   R3
       17 GETTABLEKS                       R8 R7 K7 ["Parent"]
       19 GETUPVAL                         R9 0
       20 JUMPIFEQ                         R8 R9 ; [+17]
       22 GETTABLEKS                       R8 R7 K8 ["Name"]
       24 JUMPIFEQKS                       R8 K9 ["DragParte1b1aec5"] ; [+13]
       26 GETTABLEKS                       R8 R7 K8 ["Name"]
       28 JUMPIFEQKS                       R8 K10 ["InvisibleParte1b1aec5"] ; [+9]
       30 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       32 MOVE                             R9 R0
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K13 [table.insert]
       36 CALL                             R8 2 0
       37 JUMP                             ; [+9]
       38 GETIMPORT                        R8 K1 [game]
       40 LOADK                            R10 K14 ["CoreGui"]
       41 NAMECALL                         R8 R8 K3 ["GetService"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K7 ["Parent"]
       46 LOADB                            R1 1
       47 FORGLOOP                         R3 2 [inext] ; [-31]
       49 JUMPIFNOT                        R1 ; [+10]
       50 GETIMPORT                        R3 K1 [game]
       52 LOADK                            R5 K2 ["Selection"]
       53 NAMECALL                         R3 R3 K3 ["GetService"]
       55 CALL                             R3 2 1
       56 MOVE                             R5 R0
       57 NAMECALL                         R3 R3 K15 ["Set"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_79:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 LOADN                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+19]
        6 GETGLOBAL                        R0 K0 ["getCurrentSelectionWithChildren"]
        8 CALL                             R0 0 1
        9 LOADB                            R1 0
       10 SETUPVAL                         R1 2
       11 GETIMPORT                        R1 K2 [ipairs]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 3
       15 FORGPREP_INEXT                   R1
       16 GETUPVAL                         R7 3
       17 GETTABLE                         R6 R7 R4
       18 SETTABLEKS                       R6 R5 K3 ["Anchored"]
       20 FORGLOOP                         R1 2 [inext] ; [-5]
       22 NEWTABLE                         R1 0 0
       24 SETUPVAL                         R1 3
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R0 R1 K4 ["finishRubberbandDrag"]
       28 CALL                             R0 0 0
       29 GETGLOBAL                        R0 K5 ["recreateAdornment"]
       31 CALL                             R0 0 0
       32 GETGLOBAL                        R0 K6 ["setWaypoint"]
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 5
       36 JUMPIFNOT                        R0 ; [+49]
       37 GETIMPORT                        R2 K8 [game]
       39 GETTABLEKS                       R1 R2 K9 ["Selection"]
       41 NAMECALL                         R1 R1 K10 ["Get"]
       43 CALL                             R1 1 1
       44 LENGTH                           R0 R1
       45 JUMPIFNOTEQKN                    R0 K11 [1] ; [+19]
       47 GETIMPORT                        R2 K8 [game]
       49 GETTABLEKS                       R1 R2 K9 ["Selection"]
       51 NAMECALL                         R1 R1 K10 ["Get"]
       53 CALL                             R1 1 1
       54 GETTABLEN                        R0 R1 1
       55 LOADK                            R2 K12 ["BasePart"]
       56 NAMECALL                         R0 R0 K13 ["IsA"]
       58 CALL                             R0 2 1
       59 JUMPIFNOT                        R0 ; [+5]
       60 GETUPVAL                         R1 6
       61 GETTABLEKS                       R0 R1 K14 ["setAllAdornVisibility"]
       63 LOADB                            R1 1
       64 CALL                             R0 1 0
       65 LOADK                            R0 K15 [{0, 0, 0}]
       66 SETUPVAL                         R0 7
       67 LOADNIL                          R0
       68 SETUPVAL                         R0 8
       69 GETUPVAL                         R0 9
       70 JUMPIFNOT                        R0 ; [+31]
       71 GETUPVAL                         R1 10
       72 GETTABLEKS                       R0 R1 K16 ["getFilteredSelection"]
       74 CALL                             R0 0 1
       75 GETIMPORT                        R1 K18 [workspace]
       77 MOVE                             R3 R0
       78 GETUPVAL                         R4 11
       79 NAMECALL                         R4 R4 K19 ["GetJoinMode"]
       81 CALL                             R4 1 -1
       82 NAMECALL                         R1 R1 K20 ["JoinToOutsiders"]
       84 CALL                             R1 -1 0
       85 JUMP                             ; [+16]
       86 GETUPVAL                         R0 12
       87 JUMPIFNOT                        R0 ; [+14]
       88 GETUPVAL                         R1 10
       89 GETTABLEKS                       R0 R1 K16 ["getFilteredSelection"]
       91 CALL                             R0 0 1
       92 GETIMPORT                        R1 K18 [workspace]
       94 MOVE                             R3 R0
       95 GETUPVAL                         R4 11
       96 NAMECALL                         R4 R4 K19 ["GetJoinMode"]
       98 CALL                             R4 1 -1
       99 NAMECALL                         R1 R1 K20 ["JoinToOutsiders"]
      101 CALL                             R1 -1 0
      102 LOADB                            R0 0
      103 SETUPVAL                         R0 9
      104 LOADB                            R0 0
      105 SETUPVAL                         R0 13
      106 LOADB                            R0 0
      107 SETUPVAL                         R0 12
      108 LOADB                            R0 0
      109 SETUPVAL                         R0 5
      110 LOADNIL                          R0
      111 SETGLOBAL                        R0 K21 ["originalDragPartOrientation"]
      113 GETUPVAL                         R0 14
      114 JUMPIFNOT                        R0 ; [+36]
      115 GETUPVAL                         R0 15
      116 LOADB                            R1 0
      117 SETTABLEKS                       R1 R0 K22 ["Visible"]
      119 GETUPVAL                         R0 14
      120 LOADNIL                          R1
      121 SETTABLEKS                       R1 R0 K23 ["Parent"]
      123 GETUPVAL                         R0 15
      124 GETUPVAL                         R1 14
      125 SETTABLEKS                       R1 R0 K24 ["Adornee"]
      127 GETUPVAL                         R0 15
      128 GETUPVAL                         R3 15
      129 GETTABLEKS                       R2 R3 K24 ["Adornee"]
      131 GETTABLEKS                       R1 R2 K25 ["Size"]
      133 SETTABLEKS                       R1 R0 K25 ["Size"]
      135 GETUPVAL                         R0 15
      136 LOADB                            R1 1
      137 SETTABLEKS                       R1 R0 K26 ["AlwaysOnTop"]
      139 GETUPVAL                         R0 15
      140 GETUPVAL                         R3 14
      141 GETTABLEKS                       R2 R3 K27 ["CFrame"]
      143 GETUPVAL                         R5 14
      144 GETTABLEKS                       R4 R5 K27 ["CFrame"]
      146 GETTABLEKS                       R3 R4 K28 ["p"]
      148 SUB                              R1 R2 R3
      149 SETTABLEKS                       R1 R0 K27 ["CFrame"]
      151 GETUPVAL                         R0 16
      152 JUMPIFNOT                        R0 ; [+10]
      153 GETUPVAL                         R1 6
      154 GETTABLEKS                       R0 R1 K29 ["isPlaneSelectingModeOn"]
      156 CALL                             R0 0 1
      157 JUMPIFNOT                        R0 ; [+5]
      158 GETGLOBAL                        R0 K30 ["selectDragPlane"]
      160 CALL                             R0 0 0
      161 LOADB                            R0 0
      162 SETUPVAL                         R0 16
      163 GETUPVAL                         R0 17
      164 JUMPIFNOT                        R0 ; [+6]
      165 GETUPVAL                         R0 17
      166 NAMECALL                         R0 R0 K31 ["Destroy"]
      168 CALL                             R0 1 0
      169 LOADNIL                          R0
      170 SETUPVAL                         R0 17
      171 GETUPVAL                         R0 18
      172 JUMPIFNOT                        R0 ; [+6]
      173 GETUPVAL                         R0 18
      174 NAMECALL                         R0 R0 K31 ["Destroy"]
      176 CALL                             R0 1 0
      177 LOADNIL                          R0
      178 SETUPVAL                         R0 18
      179 LOADNIL                          R0
      180 SETUPVAL                         R0 19
      181 RETURN                           R0 0

PROTO_80:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 SETUPVAL                         R1 0
        3 LOADK                            R2 K0 [{0, 0, 0}]
        4 SETUPVAL                         R2 1
        5 JUMPIFEQKN                       R0 K1 [11] ; [+10]
        7 JUMPIFEQKN                       R0 K2 [12] ; [+8]
        9 JUMPIFEQKN                       R0 K3 [13] ; [+6]
       11 JUMPIFEQKN                       R0 K4 [14] ; [+4]
       13 GETGLOBAL                        R2 K5 ["updateDragPart"]
       15 CALL                             R2 0 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K6 ["getFilteredSelectionMetapart"]
       19 CALL                             R2 0 1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R2 K7 ["CFrame"]
       24 SETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R2 K8 ["Size"]
       27 SETUPVAL                         R3 4
       28 GETUPVAL                         R4 6
       29 GETTABLEKS                       R3 R4 K7 ["CFrame"]
       31 SETUPVAL                         R3 5
       32 LOADNIL                          R3
       33 SETUPVAL                         R3 7
       34 GETGLOBAL                        R3 K9 ["preUpdatePart"]
       36 CALL                             R3 0 0
       37 RETURN                           R0 0

PROTO_81:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADN                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["getCurrentHandle"]
        7 CALL                             R0 0 1
        8 JUMPIFNOTEQKN                    R0 K1 [0] ; [+2]
       10 RETURN                           R0 0
       11 JUMPIFEQKN                       R0 K2 [14] ; [+6]
       13 GETGLOBAL                        R1 K3 ["analyticsSendHandleDragged"]
       15 GETUPVAL                         R3 3
       16 GETTABLE                         R2 R3 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R1 R2 K4 ["getFilteredSelection"]
       21 CALL                             R1 0 1
       22 GETIMPORT                        R2 K6 [workspace]
       24 MOVE                             R4 R1
       25 GETUPVAL                         R5 5
       26 NAMECALL                         R5 R5 K7 ["GetJoinMode"]
       28 CALL                             R5 1 -1
       29 NAMECALL                         R2 R2 K8 ["JoinToOutsiders"]
       31 CALL                             R2 -1 0
       32 LOADNIL                          R1
       33 SETUPVAL                         R1 6
       34 LOADNIL                          R1
       35 SETUPVAL                         R1 7
       36 LOADNIL                          R1
       37 SETUPVAL                         R1 8
       38 LOADNIL                          R1
       39 SETUPVAL                         R1 9
       40 LOADNIL                          R1
       41 SETUPVAL                         R1 10
       42 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+28]
        7 GETIMPORT                        R0 K2 [Instance.new]
        9 LOADK                            R1 K3 ["Part"]
       10 LOADNIL                          R2
       11 CALL                             R0 2 1
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R0 1
       14 LOADK                            R1 K4 ["InvisibleParte1b1aec5"]
       15 SETTABLEKS                       R1 R0 K5 ["Name"]
       17 GETUPVAL                         R0 1
       18 GETIMPORT                        R1 K9 [Enum.SurfaceType.Smooth]
       20 SETTABLEKS                       R1 R0 K10 ["TopSurface"]
       22 GETUPVAL                         R0 1
       23 GETIMPORT                        R1 K9 [Enum.SurfaceType.Smooth]
       25 SETTABLEKS                       R1 R0 K11 ["BottomSurface"]
       27 GETUPVAL                         R0 1
       28 LOADB                            R1 0
       29 SETTABLEKS                       R1 R0 K12 ["Archivable"]
       31 GETUPVAL                         R0 1
       32 LOADN                            R1 1
       33 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       35 GETUPVAL                         R0 2
       36 JUMPIF                           R0 ; [+5]
       37 GETIMPORT                        R0 K2 [Instance.new]
       39 LOADK                            R1 K3 ["Part"]
       40 CALL                             R0 1 1
       41 SETUPVAL                         R0 2
       42 GETUPVAL                         R1 3
       43 GETTABLEKS                       R0 R1 K14 ["adornInstanceWithTranslate"]
       45 GETUPVAL                         R1 1
       46 CALL                             R0 1 0
       47 GETUPVAL                         R1 3
       48 GETTABLEKS                       R0 R1 K15 ["adornInstanceWithPlane"]
       50 GETUPVAL                         R1 1
       51 CALL                             R0 1 0
       52 GETUPVAL                         R1 4
       53 GETTABLEKS                       R0 R1 K16 ["getFilteredSelection"]
       55 CALL                             R0 0 1
       56 LENGTH                           R1 R0
       57 LOADN                            R2 0
       58 JUMPIFNOTLT                      R2 R1 ; [+26]
       60 GETUPVAL                         R2 3
       61 GETTABLEKS                       R1 R2 K17 ["setPlaneVisibility"]
       63 LOADB                            R2 1
       64 CALL                             R1 1 0
       65 LENGTH                           R1 R0
       66 JUMPIFNOTEQKN                    R1 K18 [1] ; [+13]
       68 GETTABLEN                        R1 R0 1
       69 LOADK                            R3 K19 ["BasePart"]
       70 NAMECALL                         R1 R1 K20 ["IsA"]
       72 CALL                             R1 2 1
       73 JUMPIFNOT                        R1 ; [+6]
       74 GETUPVAL                         R2 3
       75 GETTABLEKS                       R1 R2 K21 ["adornInstanceWithScale"]
       77 GETTABLEN                        R2 R0 1
       78 CALL                             R1 1 0
       79 JUMP                             ; [+5]
       80 GETUPVAL                         R2 3
       81 GETTABLEKS                       R1 R2 K22 ["setScaleAdornVisibility"]
       83 LOADB                            R2 0
       84 CALL                             R1 1 0
       85 GETUPVAL                         R1 5
       86 CALL                             R1 0 0
       87 GETGLOBAL                        R1 K23 ["updateInvisiblePart"]
       89 CALL                             R1 0 0
       90 RETURN                           R0 0

PROTO_83:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R2 K1 [game]
        5 GETTABLEKS                       R1 R2 K2 ["Selection"]
        7 NAMECALL                         R1 R1 K3 ["Get"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K5 [ipairs]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 3
       14 FORGPREP_INEXT                   R2
       15 JUMPIFNOTEQ                      R6 R0 ; [+3]
       17 LOADB                            R7 1
       18 RETURN                           R7 1
       19 FORGLOOP                         R2 2 [inext] ; [-5]
       21 LOADB                            R2 0
       22 RETURN                           R2 1

PROTO_84:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R2 K1 [game]
        5 GETTABLEKS                       R1 R2 K2 ["Workspace"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETGLOBAL                        R1 K3 ["getHighestModelParent"]
       13 GETTABLEKS                       R2 R0 K4 ["Parent"]
       15 CALL                             R1 1 1
       16 JUMPIFEQKNIL                     R1 ; [+2]
       18 RETURN                           R1 1
       19 LOADK                            R4 K5 ["Model"]
       20 NAMECALL                         R2 R0 K6 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 1
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_85:
        0 GETGLOBAL                        R1 K0 ["getHighestModelParent"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 RETURN                           R1 1
        7 LOADK                            R4 K1 ["PVInstance"]
        8 NAMECALL                         R2 R0 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 LOADK                            R4 K3 ["Workspace"]
       13 NAMECALL                         R2 R0 K2 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_86:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["Parent"]
        5 GETIMPORT                        R3 K2 [game]
        7 GETTABLEKS                       R2 R3 K3 ["Workspace"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+14]
       11 LOADK                            R3 K4 ["PVInstance"]
       12 NAMECALL                         R1 R0 K5 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+6]
       16 LOADK                            R3 K3 ["Workspace"]
       17 NAMECALL                         R1 R0 K5 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 1
       22 LOADNIL                          R1
       23 RETURN                           R1 1
       24 GETGLOBAL                        R1 K6 ["getTopPVInstance"]
       26 GETTABLEKS                       R2 R0 K0 ["Parent"]
       28 CALL                             R1 1 1
       29 JUMPIF                           R1 ; [+13]
       30 LOADK                            R4 K4 ["PVInstance"]
       31 NAMECALL                         R2 R0 K5 ["IsA"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+6]
       35 LOADK                            R4 K3 ["Workspace"]
       36 NAMECALL                         R2 R0 K5 ["IsA"]
       38 CALL                             R2 2 1
       39 JUMPIF                           R2 ; [+1]
       40 RETURN                           R0 1
       41 LOADNIL                          R2
       42 RETURN                           R2 1
       43 RETURN                           R1 1

PROTO_87:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 LOADK                            R8 K2 ["BasePart"]
        6 NAMECALL                         R6 R5 K3 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+1]
       10 RETURN                           R5 1
       11 FORGLOOP                         R1 2 [inext] ; [-7]
       13 GETIMPORT                        R1 K1 [ipairs]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 3
       17 FORGPREP_INEXT                   R1
       18 GETGLOBAL                        R6 K4 ["findPartInstance"]
       20 NAMECALL                         R7 R5 K5 ["GetChildren"]
       22 CALL                             R7 1 -1
       23 CALL                             R6 -1 1
       24 JUMPIFNOT                        R6 ; [+1]
       25 RETURN                           R6 1
       26 FORGLOOP                         R1 2 [inext] ; [-9]
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_88:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["itemExistsInList"]
        8 GETTABLEKS                       R2 R0 K0 ["Parent"]
       10 GETIMPORT                        R4 K3 [game]
       12 GETTABLEKS                       R3 R4 K4 ["Selection"]
       14 NAMECALL                         R3 R3 K5 ["Get"]
       16 CALL                             R3 1 -1
       17 CALL                             R1 -1 1
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETTABLEKS                       R1 R0 K0 ["Parent"]
       21 RETURN                           R1 1
       22 GETGLOBAL                        R1 K6 ["isAncestorSelected"]
       24 GETTABLEKS                       R2 R0 K0 ["Parent"]
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_89:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["UnitRay"]
        5 GETIMPORT                        R2 K3 [RaycastParams.new]
        7 CALL                             R2 0 1
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K4 ["BruteForceAllSlow"]
       11 GETIMPORT                        R3 K6 [game]
       13 LOADK                            R5 K7 ["Workspace"]
       14 NAMECALL                         R3 R3 K8 ["GetService"]
       16 CALL                             R3 2 1
       17 GETTABLEKS                       R5 R1 K9 ["Origin"]
       19 GETTABLEKS                       R7 R1 K11 ["Direction"]
       21 MULK                             R6 R7 K10 [800]
       22 MOVE                             R7 R2
       23 NAMECALL                         R3 R3 K12 ["Raycast"]
       25 CALL                             R3 4 1
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETTABLEKS                       R4 R3 K13 ["Instance"]
       31 GETTABLEKS                       R5 R3 K14 ["Position"]
       33 LOADB                            R6 0
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R7 R8 K15 ["itemExistsInList"]
       37 MOVE                             R8 R4
       38 GETIMPORT                        R10 K6 [game]
       40 GETTABLEKS                       R9 R10 K16 ["Selection"]
       42 NAMECALL                         R9 R9 K17 ["Get"]
       44 CALL                             R9 1 -1
       45 CALL                             R7 -1 1
       46 JUMPIFNOT                        R7 ; [+1]
       47 LOADB                            R6 1
       48 JUMPIFNOT                        R0 ; [+17]
       49 GETGLOBAL                        R7 K18 ["findPartInstance"]
       51 MOVE                             R8 R0
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K19 ["CFrame"]
       55 GETTABLEKS                       R5 R8 K20 ["p"]
       57 JUMPIFNOT                        R7 ; [+1]
       58 MOVE                             R4 R7
       59 GETTABLEKS                       R8 R5 K21 ["y"]
       61 LOADN                            R9 0
       62 JUMPIFNOTLT                      R8 R9 ; [+3]
       64 LOADK                            R8 K22 [{1, 0, 1}]
       65 MUL                              R5 R5 R8
       66 JUMPIFNOT                        R4 ; [+6]
       67 GETTABLEKS                       R7 R4 K23 ["Locked"]
       69 JUMPIFNOT                        R7 ; [+3]
       70 GETUPVAL                         R7 3
       71 JUMPIF                           R7 ; [+1]
       72 LOADNIL                          R4
       73 JUMPIFNOT                        R4 ; [+20]
       74 GETUPVAL                         R7 4
       75 GETIMPORT                        R9 K27 [Enum.KeyCode.LeftAlt]
       77 NAMECALL                         R7 R7 K28 ["IsKeyDown"]
       79 CALL                             R7 2 1
       80 JUMPIF                           R7 ; [+13]
       81 JUMPIF                           R6 ; [+12]
       82 GETGLOBAL                        R7 K29 ["isAncestorSelected"]
       84 MOVE                             R8 R4
       85 CALL                             R7 1 1
       86 JUMPIFNOT                        R7 ; [+2]
       87 MOVE                             R4 R7
       88 JUMP                             ; [+5]
       89 GETGLOBAL                        R8 K30 ["getPVInstanceForPart"]
       91 MOVE                             R9 R4
       92 CALL                             R8 1 1
       93 MOVE                             R4 R8
       94 LOADB                            R7 0
       95 JUMPIFNOT                        R4 ; [+214]
       96 GETGLOBAL                        R8 K31 ["isInSelection"]
       98 MOVE                             R9 R4
       99 CALL                             R8 1 1
      100 JUMPIF                           R8 ; [+49]
      101 GETUPVAL                         R8 4
      102 GETIMPORT                        R10 K33 [Enum.KeyCode.LeftControl]
      104 NAMECALL                         R8 R8 K28 ["IsKeyDown"]
      106 CALL                             R8 2 1
      107 JUMPIFNOT                        R8 ; [+25]
      108 GETIMPORT                        R9 K6 [game]
      110 GETTABLEKS                       R8 R9 K16 ["Selection"]
      112 NAMECALL                         R8 R8 K17 ["Get"]
      114 CALL                             R8 1 1
      115 FASTCALL2                        TABLE_INSERT R8 R4 ; [+5]
      117 MOVE                             R10 R8
      118 MOVE                             R11 R4
      119 GETIMPORT                        R9 K36 [table.insert]
      121 CALL                             R9 2 0
      122 GETIMPORT                        R9 K6 [game]
      124 LOADK                            R11 K16 ["Selection"]
      125 NAMECALL                         R9 R9 K8 ["GetService"]
      127 CALL                             R9 2 1
      128 MOVE                             R11 R8
      129 NAMECALL                         R9 R9 K37 ["Set"]
      131 CALL                             R9 2 0
      132 JUMP                             ; [+15]
      133 NEWTABLE                         R8 0 1
      135 MOVE                             R9 R4
      136 SETLIST                          R8 R9 1 [1]
      138 GETIMPORT                        R9 K6 [game]
      140 LOADK                            R11 K16 ["Selection"]
      141 NAMECALL                         R9 R9 K8 ["GetService"]
      143 CALL                             R9 2 1
      144 MOVE                             R11 R8
      145 NAMECALL                         R9 R9 K37 ["Set"]
      147 CALL                             R9 2 0
      148 LOADB                            R7 1
      149 JUMP                             ; [+42]
      150 GETUPVAL                         R8 4
      151 GETIMPORT                        R10 K33 [Enum.KeyCode.LeftControl]
      153 NAMECALL                         R8 R8 K28 ["IsKeyDown"]
      155 CALL                             R8 2 1
      156 JUMPIFNOT                        R8 ; [+35]
      157 NEWTABLE                         R8 0 0
      159 GETIMPORT                        R9 K39 [ipairs]
      161 GETIMPORT                        R11 K6 [game]
      163 GETTABLEKS                       R10 R11 K16 ["Selection"]
      165 NAMECALL                         R10 R10 K17 ["Get"]
      167 CALL                             R10 1 -1
      168 CALL                             R9 -1 3
      169 FORGPREP_INEXT                   R9
      170 JUMPIFEQ                         R13 R4 ; [+8]
      172 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      174 MOVE                             R15 R8
      175 MOVE                             R16 R13
      176 GETIMPORT                        R14 K36 [table.insert]
      178 CALL                             R14 2 0
      179 FORGLOOP                         R9 2 [inext] ; [-10]
      181 GETIMPORT                        R9 K6 [game]
      183 LOADK                            R11 K16 ["Selection"]
      184 NAMECALL                         R9 R9 K8 ["GetService"]
      186 CALL                             R9 2 1
      187 MOVE                             R11 R8
      188 NAMECALL                         R9 R9 K37 ["Set"]
      190 CALL                             R9 2 0
      191 LOADB                            R7 1
      192 SETUPVAL                         R5 5
      193 GETUPVAL                         R8 6
      194 JUMPIFNOT                        R8 ; [+109]
      195 GETUPVAL                         R8 7
      196 JUMPIFNOT                        R8 ; [+107]
      197 GETUPVAL                         R8 8
      198 JUMPIFNOT                        R8 ; [+105]
      199 GETUPVAL                         R9 9
      200 GETTABLEKS                       R8 R9 K40 ["convertToPart"]
      202 MOVE                             R9 R4
      203 CALL                             R8 1 1
      204 MOVE                             R4 R8
      205 GETUPVAL                         R9 10
      206 GETTABLEKS                       R8 R9 K19 ["CFrame"]
      208 GETUPVAL                         R10 11
      209 NAMECALL                         R8 R8 K41 ["pointToObjectSpace"]
      211 CALL                             R8 2 1
      212 GETUPVAL                         R11 10
      213 GETTABLEKS                       R10 R11 K19 ["CFrame"]
      215 MOVE                             R12 R5
      216 NAMECALL                         R10 R10 K41 ["pointToObjectSpace"]
      218 CALL                             R10 2 1
      219 SUB                              R9 R10 R8
      220 GETUPVAL                         R11 6
      221 ADD                              R10 R11 R9
      222 GETUPVAL                         R12 7
      223 ADD                              R11 R12 R9
      224 GETUPVAL                         R13 8
      225 ADD                              R12 R13 R9
      226 GETUPVAL                         R14 10
      227 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      229 MOVE                             R15 R10
      230 NAMECALL                         R13 R13 K42 ["pointToWorldSpace"]
      232 CALL                             R13 2 1
      233 MOVE                             R10 R13
      234 GETUPVAL                         R14 10
      235 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      237 MOVE                             R15 R11
      238 NAMECALL                         R13 R13 K42 ["pointToWorldSpace"]
      240 CALL                             R13 2 1
      241 MOVE                             R11 R13
      242 GETUPVAL                         R14 10
      243 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      245 MOVE                             R15 R12
      246 NAMECALL                         R13 R13 K42 ["pointToWorldSpace"]
      248 CALL                             R13 2 1
      249 MOVE                             R12 R13
      250 GETGLOBAL                        R13 K43 ["createPlane"]
      252 MOVE                             R14 R10
      253 MOVE                             R15 R11
      254 MOVE                             R16 R12
      255 CALL                             R13 3 1
      256 SETUPVAL                         R13 12
      257 GETTABLEKS                       R15 R4 K19 ["CFrame"]
      259 GETTABLEKS                       R17 R4 K19 ["CFrame"]
      261 GETTABLEKS                       R16 R17 K20 ["p"]
      263 SUB                              R14 R15 R16
      264 GETUPVAL                         R15 5
      265 ADD                              R13 R14 R15
      266 GETUPVAL                         R16 10
      267 GETTABLEKS                       R15 R16 K19 ["CFrame"]
      269 GETUPVAL                         R18 10
      270 GETTABLEKS                       R17 R18 K19 ["CFrame"]
      272 GETTABLEKS                       R16 R17 K20 ["p"]
      274 SUB                              R14 R15 R16
      275 GETIMPORT                        R16 K44 [CFrame.new]
      277 GETTABLEKS                       R17 R13 K20 ["p"]
      279 CALL                             R16 1 1
      280 MUL                              R15 R16 R14
      281 GETUPVAL                         R16 4
      282 GETIMPORT                        R18 K46 [Enum.KeyCode.LeftShift]
      284 NAMECALL                         R16 R16 K28 ["IsKeyDown"]
      286 CALL                             R16 2 1
      287 JUMPIFNOT                        R16 ; [+16]
      288 LOADB                            R16 1
      289 SETUPVAL                         R16 13
      290 GETUPVAL                         R17 14
      291 GETTABLEKS                       R16 R17 K47 ["getFilteredSelectionMetapart"]
      293 CALL                             R16 0 1
      294 GETTABLEKS                       R21 R16 K19 ["CFrame"]
      296 NAMECALL                         R19 R13 K48 ["toObjectSpace"]
      298 CALL                             R19 2 -1
      299 NAMECALL                         R17 R15 K49 ["toWorldSpace"]
      301 CALL                             R17 -1 1
      302 SETTABLEKS                       R17 R16 K19 ["CFrame"]
      304 GETIMPORT                        R8 K52 [task.defer]
      306 GETGLOBAL                        R9 K53 ["grabPart"]
      308 CALL                             R8 1 0
      309 JUMP                             ; [+25]
      310 GETUPVAL                         R9 15
      311 GETTABLEKS                       R8 R9 K54 ["startRubberbandDrag"]
      313 GETIMPORT                        R9 K56 [Vector2.new]
      315 GETUPVAL                         R11 1
      316 GETTABLEKS                       R10 R11 K57 ["X"]
      318 GETUPVAL                         R12 1
      319 GETTABLEKS                       R11 R12 K58 ["Y"]
      321 CALL                             R9 2 -1
      322 CALL                             R8 -1 0
      323 GETIMPORT                        R10 K6 [game]
      325 GETTABLEKS                       R9 R10 K16 ["Selection"]
      327 NAMECALL                         R9 R9 K17 ["Get"]
      329 CALL                             R9 1 1
      330 LENGTH                           R8 R9
      331 LOADN                            R9 0
      332 JUMPIFNOTLT                      R9 R8 ; [+2]
      334 LOADB                            R7 1
      335 GETGLOBAL                        R8 K59 ["analyticsSendClick"]
      337 MOVE                             R9 R4
      338 MOVE                             R10 R7
      339 CALL                             R8 2 0
      340 GETGLOBAL                        R8 K60 ["recreateAdornment"]
      342 CALL                             R8 0 0
      343 RETURN                           R0 0

PROTO_90:
        0 GETGLOBAL                        R0 K0 ["removeDragPart"]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R0 0
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["resetDragger"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K2 ["getFilteredSelection"]
       14 CALL                             R1 0 -1
       15 CALL                             R0 -1 0
       16 GETGLOBAL                        R0 K3 ["updateInvisiblePart"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_91:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["updateSelection"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["resetDragger"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K2 ["isRubberBandDragInProgress"]
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K3 ["getCurrentSelection"]
       19 CALL                             R0 0 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K4 ["getFilteredSelectionMetapart"]
       23 CALL                             R1 0 1
       24 LENGTH                           R2 R0
       25 JUMPIFNOTEQKN                    R2 K5 [0] ; [+8]
       27 GETUPVAL                         R2 4
       28 JUMPIFNOT                        R2 ; [+5]
       29 LOADB                            R2 0
       30 SETUPVAL                         R2 4
       31 GETGLOBAL                        R2 K6 ["releasePart"]
       33 CALL                             R2 0 0
       34 GETUPVAL                         R2 5
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETUPVAL                         R2 5
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R2 K7 ["Parent"]
       40 JUMPIFNOT                        R1 ; [+6]
       41 GETTABLEKS                       R2 R1 K8 ["Size"]
       43 SETUPVAL                         R2 6
       44 GETTABLEKS                       R2 R1 K9 ["CFrame"]
       46 SETUPVAL                         R2 7
       47 LENGTH                           R2 R0
       48 JUMPIFNOTEQKN                    R2 K10 [1] ; [+8]
       50 GETUPVAL                         R3 8
       51 GETTABLEKS                       R2 R3 K11 ["convertToPart"]
       53 GETTABLEN                        R3 R0 1
       54 CALL                             R2 1 1
       55 SETGLOBAL                        R2 K12 ["selectedPart"]
       57 GETGLOBAL                        R2 K13 ["recreateAdornment"]
       59 CALL                             R2 0 0
       60 RETURN                           R0 0

PROTO_92:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["getButtonState"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["Enum"]
       12 GETTABLEKS                       R3 R4 K3 ["Key"]
       14 GETTABLEKS                       R2 R3 K4 ["MOUSE_BUTTON1"]
       16 CALL                             R1 1 1
       17 JUMPIF                           R1 ; [+16]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["setButtonState"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K2 ["Enum"]
       24 GETTABLEKS                       R3 R4 K3 ["Key"]
       26 GETTABLEKS                       R2 R3 K4 ["MOUSE_BUTTON1"]
       28 LOADB                            R3 1
       29 CALL                             R1 2 0
       30 GETGLOBAL                        R1 K6 ["selectPart"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPlaneSelectingModeOn"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["setPlaneSelectingMode"]
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 LOADB                            R0 0
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 2
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K2 ["Visible"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K3 ["clearExtraAdorns"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K1 ["setPlaneSelectingMode"]
       24 LOADB                            R1 1
       25 CALL                             R0 1 0
       26 LOADB                            R0 1
       27 SETUPVAL                         R0 1
       28 GETUPVAL                         R0 3
       29 JUMPIF                           R0 ; [+18]
       30 GETIMPORT                        R0 K6 [Instance.new]
       32 LOADK                            R1 K7 ["Part"]
       33 GETUPVAL                         R2 4
       34 CALL                             R0 2 1
       35 SETUPVAL                         R0 3
       36 GETUPVAL                         R0 3
       37 LOADK                            R1 K8 [{50, 50, 0.01}]
       38 SETTABLEKS                       R1 R0 K9 ["Size"]
       40 GETUPVAL                         R0 3
       41 LOADK                            R1 K10 [{0, 0, 0}]
       42 SETTABLEKS                       R1 R0 K11 ["Position"]
       44 GETUPVAL                         R0 3
       45 LOADN                            R1 1
       46 SETTABLEKS                       R1 R0 K12 ["Transparency"]
       48 GETUPVAL                         R0 2
       49 JUMPIF                           R0 ; [+35]
       50 GETIMPORT                        R0 K6 [Instance.new]
       52 LOADK                            R1 K13 ["BoxHandleAdornment"]
       53 GETUPVAL                         R2 4
       54 CALL                             R0 2 1
       55 SETUPVAL                         R0 2
       56 GETUPVAL                         R0 2
       57 LOADB                            R1 0
       58 SETTABLEKS                       R1 R0 K2 ["Visible"]
       60 GETUPVAL                         R0 2
       61 GETUPVAL                         R1 3
       62 SETTABLEKS                       R1 R0 K14 ["Adornee"]
       64 GETUPVAL                         R0 2
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R2 R3 K14 ["Adornee"]
       68 GETTABLEKS                       R1 R2 K9 ["Size"]
       70 SETTABLEKS                       R1 R0 K9 ["Size"]
       72 GETUPVAL                         R0 2
       73 LOADK                            R1 K15 [0.6]
       74 SETTABLEKS                       R1 R0 K12 ["Transparency"]
       76 GETUPVAL                         R0 2
       77 GETIMPORT                        R1 K17 [Color3.new]
       79 LOADK                            R2 K18 [0.149019607843137]
       80 LOADK                            R3 K19 [0.533333333333333]
       81 LOADK                            R4 K20 [0.941176470588235]
       82 CALL                             R1 3 1
       83 SETTABLEKS                       R1 R0 K16 ["Color3"]
       85 RETURN                           R0 0

PROTO_94:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        6 JUMPIFNOTEQ                      R2 R3 ; [+18]
        8 GETTABLEKS                       R2 R0 K4 ["UserInputState"]
       10 GETIMPORT                        R3 K6 [Enum.UserInputState.Begin]
       12 JUMPIFNOTEQ                      R2 R3 ; [+67]
       14 GETUPVAL                         R2 0
       15 JUMPIFNOT                        R2 ; [+64]
       16 GETTABLEKS                       R2 R0 K7 ["KeyCode"]
       18 GETIMPORT                        R3 K9 [Enum.KeyCode.Space]
       20 JUMPIFNOTEQ                      R2 R3 ; [+59]
       22 GETUPVAL                         R2 1
       23 CALL                             R2 0 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 0
       26 JUMPIFNOT                        R2 ; [+53]
       27 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       29 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton1]
       31 JUMPIFNOTEQ                      R2 R3 ; [+48]
       33 GETTABLEKS                       R2 R0 K4 ["UserInputState"]
       35 GETIMPORT                        R3 K6 [Enum.UserInputState.Begin]
       37 JUMPIFNOTEQ                      R2 R3 ; [+16]
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R2 R3 K12 ["setButtonState"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R5 R6 K1 ["Enum"]
       45 GETTABLEKS                       R4 R5 K13 ["Key"]
       47 GETTABLEKS                       R3 R4 K14 ["MOUSE_BUTTON1"]
       49 LOADB                            R4 1
       50 CALL                             R2 2 0
       51 GETUPVAL                         R2 3
       52 CALL                             R2 0 0
       53 RETURN                           R0 0
       54 GETTABLEKS                       R2 R0 K4 ["UserInputState"]
       56 GETIMPORT                        R3 K16 [Enum.UserInputState.End]
       58 JUMPIFNOTEQ                      R2 R3 ; [+21]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R2 R3 K12 ["setButtonState"]
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R5 R6 K1 ["Enum"]
       66 GETTABLEKS                       R4 R5 K13 ["Key"]
       68 GETTABLEKS                       R3 R4 K14 ["MOUSE_BUTTON1"]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R6 R7 K1 ["Enum"]
       73 GETTABLEKS                       R5 R6 K17 ["State"]
       75 GETTABLEKS                       R4 R5 K18 ["UP"]
       77 CALL                             R2 2 0
       78 GETUPVAL                         R2 4
       79 CALL                             R2 0 0
       80 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getButtonState"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Enum"]
        6 GETTABLEKS                       R3 R4 K2 ["Key"]
        8 GETTABLEKS                       R2 R3 K3 ["MOUSE_BUTTON1"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETTABLEKS                       R1 R0 K4 ["UserInputType"]
       14 GETIMPORT                        R2 K6 [Enum.UserInputType.MouseMovement]
       16 JUMPIFEQ                         R1 R2 ; [+12]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K7 ["isPlaneSelectingModeOn"]
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+31]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K8 ["getCurrentHandle"]
       26 CALL                             R1 0 1
       27 JUMPIFNOTEQKN                    R1 K9 [14] ; [+26]
       29 GETUPVAL                         R1 2
       30 JUMPIF                           R1 ; [+8]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R1 R2 K10 ["getFilteredSelectionMetapart"]
       34 CALL                             R1 0 1
       35 JUMPIFNOT                        R1 ; [+3]
       36 GETTABLEKS                       R2 R1 K11 ["CFrame"]
       38 SETUPVAL                         R2 2
       39 GETUPVAL                         R1 4
       40 JUMPIF                           R1 ; [+8]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R1 R2 K10 ["getFilteredSelectionMetapart"]
       44 CALL                             R1 0 1
       45 JUMPIFNOT                        R1 ; [+3]
       46 GETTABLEKS                       R2 R1 K12 ["Size"]
       48 SETUPVAL                         R2 4
       49 GETUPVAL                         R1 2
       50 JUMPIFNOT                        R1 ; [+3]
       51 GETGLOBAL                        R1 K13 ["updatePart"]
       53 CALL                             R1 0 0
       54 GETGLOBAL                        R1 K14 ["freeDrag"]
       56 CALL                             R1 0 0
       57 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["setActive"]
        7 LOADK                            R3 K1 ["false"]
        8 NAMECALL                         R0 R0 K2 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 1
       14 NAMECALL                         R0 R0 K3 ["Deactivate"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 NAMECALL                         R0 R0 K4 ["disconnect"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 4
       22 NAMECALL                         R0 R0 K4 ["disconnect"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 5
       26 NAMECALL                         R0 R0 K4 ["disconnect"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 6
       30 NAMECALL                         R0 R0 K4 ["disconnect"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 7
       34 NAMECALL                         R0 R0 K4 ["disconnect"]
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 8
       38 NAMECALL                         R0 R0 K4 ["disconnect"]
       40 CALL                             R0 1 0
       41 GETUPVAL                         R0 9
       42 NAMECALL                         R0 R0 K4 ["disconnect"]
       44 CALL                             R0 1 0
       45 GETUPVAL                         R1 10
       46 GETTABLEKS                       R0 R1 K5 ["destroyAdorns"]
       48 CALL                             R0 0 0
       49 GETGLOBAL                        R0 K6 ["analyticsSendSession"]
       51 CALL                             R0 0 0
       52 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["IsRunMode"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+2]
       12 LOADK                            R0 K2 ["rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"]
       13 RETURN                           R0 1
       14 LOADK                            R0 K3 ["rbxasset://textures/advCursor-default.png"]
       15 RETURN                           R0 1
       16 LOADK                            R0 K4 ["rbxasset://SystemCursors/Arrow"]
       17 RETURN                           R0 1

PROTO_98:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["GetMouse"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K1 ["IsRunning"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+11]
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K2 ["IsRunMode"]
       14 CALL                             R2 1 1
       15 JUMPIF                           R2 ; [+6]
       16 GETUPVAL                         R2 3
       17 JUMPIFNOT                        R2 ; [+2]
       18 LOADK                            R1 K3 ["rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"]
       19 JUMP                             ; [+3]
       20 LOADK                            R1 K4 ["rbxasset://textures/advCursor-default.png"]
       21 JUMP                             ; [+1]
       22 LOADK                            R1 K5 ["rbxasset://SystemCursors/Arrow"]
       23 SETTABLEKS                       R1 R0 K6 ["Icon"]
       25 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelectionMetapart"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETTABLEKS                       R1 R0 K1 ["ClearCache"]
        7 CALL                             R1 0 0
        8 GETGLOBAL                        R1 K2 ["updateInvisiblePart"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getFilteredSelectionMetapart"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+13]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["getFilteredSelectionMetapart"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R0 R1 K1 ["IsUpdateRequired"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETIMPORT                        R0 K3 [spawn]
       14 DUPCLOSURE                       R1 K4 [PROTO_99]
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 2
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K2 [task.defer]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 LOADB                            R2 1
       13 NAMECALL                         R0 R0 K3 ["Activate"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 1
       17 LOADK                            R2 K4 ["setActive"]
       18 LOADK                            R3 K5 ["true"]
       19 NAMECALL                         R0 R0 K6 ["Invoke"]
       21 CALL                             R0 3 0
       22 LOADB                            R0 1
       23 SETUPVAL                         R0 0
       24 GETUPVAL                         R0 4
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 4
       27 NAMECALL                         R0 R0 K7 ["Destroy"]
       29 CALL                             R0 1 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 4
       32 GETUPVAL                         R1 5
       33 GETTABLEKS                       R0 R1 K8 ["initializeAdorns"]
       35 CALL                             R0 0 0
       36 GETIMPORT                        R1 K10 [game]
       38 LOADK                            R3 K11 ["ChangeHistoryService"]
       39 NAMECALL                         R1 R1 K12 ["GetService"]
       41 CALL                             R1 2 1
       42 GETTABLEKS                       R0 R1 K13 ["OnUndo"]
       44 GETGLOBAL                        R2 K14 ["waypointChanged"]
       46 NAMECALL                         R0 R0 K15 ["connect"]
       48 CALL                             R0 2 1
       49 SETUPVAL                         R0 6
       50 GETIMPORT                        R1 K10 [game]
       52 LOADK                            R3 K11 ["ChangeHistoryService"]
       53 NAMECALL                         R1 R1 K12 ["GetService"]
       55 CALL                             R1 2 1
       56 GETTABLEKS                       R0 R1 K16 ["OnRedo"]
       58 GETGLOBAL                        R2 K14 ["waypointChanged"]
       60 NAMECALL                         R0 R0 K15 ["connect"]
       62 CALL                             R0 2 1
       63 SETUPVAL                         R0 7
       64 GETUPVAL                         R1 9
       65 GETTABLEKS                       R0 R1 K17 ["InputEnded"]
       67 GETGLOBAL                        R2 K18 ["keyPress"]
       69 NAMECALL                         R0 R0 K15 ["connect"]
       71 CALL                             R0 2 1
       72 SETUPVAL                         R0 8
       73 GETUPVAL                         R1 9
       74 GETTABLEKS                       R0 R1 K19 ["InputChanged"]
       76 GETGLOBAL                        R2 K20 ["inputChanged"]
       78 NAMECALL                         R0 R0 K15 ["connect"]
       80 CALL                             R0 2 1
       81 SETUPVAL                         R0 10
       82 GETIMPORT                        R1 K10 [game]
       84 LOADK                            R3 K21 ["Selection"]
       85 NAMECALL                         R1 R1 K12 ["GetService"]
       87 CALL                             R1 2 1
       88 GETTABLEKS                       R0 R1 K22 ["SelectionChanged"]
       90 GETGLOBAL                        R2 K23 ["selectionChanged"]
       92 NAMECALL                         R0 R0 K15 ["connect"]
       94 CALL                             R0 2 1
       95 SETUPVAL                         R0 11
       96 GETIMPORT                        R1 K10 [game]
       98 LOADK                            R3 K24 ["RunService"]
       99 NAMECALL                         R1 R1 K12 ["GetService"]
      101 CALL                             R1 2 1
      102 GETTABLEKS                       R0 R1 K25 ["RenderStepped"]
      104 DUPCLOSURE                       R2 K26 [PROTO_100]
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          UPVAL U14
      107 CAPTURE                          UPVAL U15
      108 NAMECALL                         R0 R0 K15 ["connect"]
      110 CALL                             R0 2 1
      111 SETUPVAL                         R0 12
      112 GETUPVAL                         R1 1
      113 NAMECALL                         R1 R1 K27 ["GetMouse"]
      115 CALL                             R1 1 1
      116 GETTABLEKS                       R0 R1 K28 ["DragEnter"]
      118 GETGLOBAL                        R2 K29 ["onDragEnter"]
      120 NAMECALL                         R0 R0 K15 ["connect"]
      122 CALL                             R0 2 1
      123 SETUPVAL                         R0 16
      124 LOADB                            R0 1
      125 SETUPVAL                         R0 17
      126 GETGLOBAL                        R0 K30 ["recreateAdornment"]
      128 CALL                             R0 0 0
      129 GETUPVAL                         R0 18
      130 JUMPIF                           R0 ; [+4]
      131 GETGLOBAL                        R0 K31 ["selectDragPlane"]
      133 LOADB                            R1 1
      134 CALL                             R0 1 0
      135 LOADB                            R0 1
      136 SETUPVAL                         R0 18
      137 GETGLOBAL                        R0 K23 ["selectionChanged"]
      139 CALL                             R0 0 0
      140 GETGLOBAL                        R0 K32 ["analyticsSessionBegin"]
      142 CALL                             R0 0 0
      143 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 GETIMPORT                        R1 K3 [settings]
        5 GETIMPORT                        R2 K5 [game]
        7 LOADK                            R4 K6 ["RunService"]
        8 NAMECALL                         R2 R2 K7 ["GetService"]
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K5 [game]
       13 LOADK                            R5 K8 ["DeactivateTransformToolCorrectly"]
       14 LOADB                            R6 0
       15 NAMECALL                         R3 R3 K9 ["DefineFastFlag"]
       17 CALL                             R3 3 1
       18 GETIMPORT                        R4 K5 [game]
       20 LOADK                            R6 K10 ["ImprovedCursors"]
       21 NAMECALL                         R4 R4 K11 ["GetFastFlag"]
       23 CALL                             R4 2 1
       24 GETIMPORT                        R5 K13 [require]
       26 GETIMPORT                        R8 K15 [script]
       28 GETTABLEKS                       R7 R8 K16 ["Parent"]
       30 GETTABLEKS                       R6 R7 K17 ["Collision"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K13 [require]
       35 GETIMPORT                        R9 K15 [script]
       37 GETTABLEKS                       R8 R9 K16 ["Parent"]
       39 GETTABLEKS                       R7 R8 K18 ["Utility"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K13 [require]
       44 GETIMPORT                        R10 K15 [script]
       46 GETTABLEKS                       R9 R10 K16 ["Parent"]
       48 GETTABLEKS                       R8 R9 K19 ["List"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K13 [require]
       53 GETIMPORT                        R11 K15 [script]
       55 GETTABLEKS                       R10 R11 K16 ["Parent"]
       57 GETTABLEKS                       R9 R10 K20 ["Selection"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K13 [require]
       62 GETIMPORT                        R12 K15 [script]
       64 GETTABLEKS                       R11 R12 K16 ["Parent"]
       66 GETTABLEKS                       R10 R11 K21 ["Metapart"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K13 [require]
       71 GETIMPORT                        R13 K15 [script]
       73 GETTABLEKS                       R12 R13 K16 ["Parent"]
       75 GETTABLEKS                       R11 R12 K22 ["FuzzyMath"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K13 [require]
       80 GETIMPORT                        R14 K15 [script]
       82 GETTABLEKS                       R13 R14 K16 ["Parent"]
       84 GETTABLEKS                       R12 R13 K23 ["Round"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K13 [require]
       89 GETIMPORT                        R15 K15 [script]
       91 GETTABLEKS                       R14 R15 K16 ["Parent"]
       93 GETTABLEKS                       R13 R14 K24 ["Extent"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K13 [require]
       98 GETIMPORT                        R16 K15 [script]
      100 GETTABLEKS                       R15 R16 K16 ["Parent"]
      102 GETTABLEKS                       R14 R15 K25 ["Adornments"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K13 [require]
      107 GETIMPORT                        R17 K15 [script]
      109 GETTABLEKS                       R16 R17 K16 ["Parent"]
      111 GETTABLEKS                       R15 R16 K26 ["Input"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K13 [require]
      116 GETIMPORT                        R18 K15 [script]
      118 GETTABLEKS                       R17 R18 K16 ["Parent"]
      120 GETTABLEKS                       R16 R17 K27 ["Rubberband"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K13 [require]
      125 GETIMPORT                        R19 K15 [script]
      127 GETTABLEKS                       R18 R19 K16 ["Parent"]
      129 GETTABLEKS                       R17 R18 K28 ["Analytics"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K5 [game]
      134 LOADK                            R19 K29 ["UserInputService"]
      135 NAMECALL                         R17 R17 K7 ["GetService"]
      137 CALL                             R17 2 1
      138 GETIMPORT                        R18 K5 [game]
      140 LOADK                            R20 K30 ["Workspace"]
      141 NAMECALL                         R18 R18 K7 ["GetService"]
      143 CALL                             R18 2 1
      144 GETIMPORT                        R19 K5 [game]
      146 LOADK                            R21 K20 ["Selection"]
      147 NAMECALL                         R19 R19 K7 ["GetService"]
      149 CALL                             R19 2 1
      150 GETIMPORT                        R20 K5 [game]
      152 LOADK                            R22 K31 ["StudioService"]
      153 NAMECALL                         R20 R20 K7 ["GetService"]
      155 CALL                             R20 2 1
      156 LOADNIL                          R21
      157 LOADNIL                          R22
      158 LOADN                            R23 0
      159 LOADNIL                          R24
      160 NEWCLOSURE                       R25 P0
      161 CAPTURE                          REF R23
      162 CAPTURE                          REF R21
      163 CAPTURE                          VAL R16
      164 SETGLOBAL                        R25 K32 ["analyticsSessionBegin"]
      166 NEWCLOSURE                       R25 P1
      167 CAPTURE                          REF R23
      168 CAPTURE                          REF R21
      169 CAPTURE                          VAL R16
      170 SETGLOBAL                        R25 K33 ["analyticsSendSession"]
      172 NEWCLOSURE                       R25 P2
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R17
      175 CAPTURE                          REF R21
      176 SETGLOBAL                        R25 K34 ["analyticsSendClick"]
      178 NEWCLOSURE                       R25 P3
      179 CAPTURE                          VAL R19
      180 CAPTURE                          REF R21
      181 CAPTURE                          REF R22
      182 CAPTURE                          REF R24
      183 SETGLOBAL                        R25 K35 ["analyticsRecordFreeformDragBegin"]
      185 NEWCLOSURE                       R25 P4
      186 CAPTURE                          REF R22
      187 CAPTURE                          REF R24
      188 CAPTURE                          VAL R18
      189 SETGLOBAL                        R25 K36 ["analyticsRecordFreeformDragUpdate"]
      191 NEWCLOSURE                       R25 P5
      192 CAPTURE                          REF R22
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R16
      195 SETGLOBAL                        R25 K37 ["analyticsSendFreeformDragged"]
      197 DUPCLOSURE                       R25 K38 [PROTO_6]
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R20
      200 SETGLOBAL                        R25 K39 ["analyticsSendHandleDragged"]
      202 DUPCLOSURE                       R25 K40 [PROTO_7]
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R17
      206 SETGLOBAL                        R25 K41 ["analyticsSendBoxSelect"]
      208 DUPCLOSURE                       R25 K42 [PROTO_8]
      209 CAPTURE                          VAL R16
      210 SETGLOBAL                        R25 K43 ["analyticsSendSetPlane"]
      212 CLOSEUPVALS                      R21
      213 LOADB                            R17 0
      214 LOADB                            R18 0
      215 LOADB                            R21 1
      216 NAMECALL                         R19 R0 K44 ["GetMouse"]
      218 CALL                             R19 2 1
      219 GETTABLEKS                       R20 R14 K45 ["setMouse"]
      221 MOVE                             R21 R19
      222 CALL                             R20 1 0
      223 LOADB                            R20 0
      224 LOADB                            R21 0
      225 LOADB                            R22 1
      226 GETIMPORT                        R23 K5 [game]
      228 LOADK                            R25 K46 ["CoreGui"]
      229 NAMECALL                         R23 R23 K7 ["GetService"]
      231 CALL                             R23 2 1
      232 GETIMPORT                        R24 K5 [game]
      234 LOADK                            R26 K29 ["UserInputService"]
      235 NAMECALL                         R24 R24 K7 ["GetService"]
      237 CALL                             R24 2 1
      238 LOADNIL                          R25
      239 LOADNIL                          R26
      240 LOADB                            R27 0
      241 LOADNIL                          R28
      242 DUPTABLE                         R29 K48 [{"n"}]
      243 LOADN                            R30 0
      244 SETTABLEKS                       R30 R29 K47 ["n"]
      246 LOADNIL                          R30
      247 LOADNIL                          R31
      248 LOADNIL                          R32
      249 LOADK                            R33 K49 [{0, 0, 0}]
      250 LOADNIL                          R34
      251 LOADNIL                          R35
      252 LOADNIL                          R36
      253 LOADNIL                          R37
      254 LOADNIL                          R38
      255 LOADNIL                          R39
      256 LOADNIL                          R40
      257 LOADNIL                          R41
      258 LOADNIL                          R42
      259 LOADN                            R43 0
      260 LOADNIL                          R44
      261 LOADNIL                          R45
      262 LOADNIL                          R46
      263 LOADNIL                          R47
      264 LOADNIL                          R48
      265 LOADNIL                          R49
      266 LOADNIL                          R50
      267 LOADNIL                          R51
      268 LOADNIL                          R52
      269 GETIMPORT                        R53 K52 [CFrame.new]
      271 CALL                             R53 0 1
      272 LOADNIL                          R54
      273 LOADNIL                          R55
      274 LOADNIL                          R56
      275 LOADNIL                          R57
      276 LOADNIL                          R58
      277 LOADNIL                          R59
      278 LOADNIL                          R60
      279 LOADNIL                          R61
      280 LOADNIL                          R62
      281 LOADNIL                          R63
      282 LOADNIL                          R64
      283 LOADNIL                          R65
      284 LOADNIL                          R66
      285 LOADB                            R67 0
      286 LOADB                            R68 0
      287 LOADB                            R69 0
      288 LOADNIL                          R70
      289 LOADNIL                          R71
      290 NEWCLOSURE                       R72 P9
      291 CAPTURE                          REF R53
      292 CAPTURE                          REF R43
      293 GETTABLEKS                       R73 R13 K53 ["setWorkplaneAccessor"]
      295 MOVE                             R74 R72
      296 CALL                             R73 1 0
      297 NEWTABLE                         R73 0 0
      299 LOADN                            R74 0
      300 LOADK                            R75 K54 ["None"]
      301 SETTABLE                         R75 R73 R74
      302 LOADK                            R74 K55 ["Translate"]
      303 SETTABLEN                        R74 R73 1
      304 LOADK                            R74 K56 ["ScaleEdge"]
      305 SETTABLEN                        R74 R73 2
      306 LOADK                            R74 K56 ["ScaleEdge"]
      307 SETTABLEN                        R74 R73 3
      308 LOADK                            R74 K56 ["ScaleEdge"]
      309 SETTABLEN                        R74 R73 4
      310 LOADK                            R74 K56 ["ScaleEdge"]
      311 SETTABLEN                        R74 R73 5
      312 LOADK                            R74 K56 ["ScaleEdge"]
      313 SETTABLEN                        R74 R73 6
      314 LOADK                            R74 K57 ["ScaleCorner"]
      315 SETTABLEN                        R74 R73 7
      316 LOADK                            R74 K57 ["ScaleCorner"]
      317 SETTABLEN                        R74 R73 8
      318 LOADK                            R74 K57 ["ScaleCorner"]
      319 SETTABLEN                        R74 R73 9
      320 LOADK                            R74 K57 ["ScaleCorner"]
      321 SETTABLEN                        R74 R73 10
      322 LOADK                            R74 K58 ["Rotate"]
      323 SETTABLEN                        R74 R73 11
      324 LOADK                            R74 K58 ["Rotate"]
      325 SETTABLEN                        R74 R73 12
      326 LOADK                            R74 K58 ["Rotate"]
      327 SETTABLEN                        R74 R73 13
      328 LOADK                            R74 K59 ["Plane"]
      329 SETTABLEN                        R74 R73 14
      330 NEWTABLE                         R74 0 0
      332 LOADB                            R75 0
      333 NEWTABLE                         R76 0 0
      335 DUPCLOSURE                       R77 K60 [PROTO_10]
      336 DUPCLOSURE                       R78 K61 [PROTO_11]
      337 CAPTURE                          VAL R8
      338 CAPTURE                          VAL R0
      339 DUPCLOSURE                       R79 K62 [PROTO_12]
      340 CAPTURE                          VAL R8
      341 NEWTABLE                         R80 0 0
      343 NEWCLOSURE                       R81 P13
      344 CAPTURE                          REF R80
      345 CAPTURE                          VAL R81
      346 NEWCLOSURE                       R82 P14
      347 CAPTURE                          VAL R8
      348 CAPTURE                          REF R80
      349 CAPTURE                          VAL R81
      350 NEWCLOSURE                       R83 P15
      351 CAPTURE                          REF R80
      352 CAPTURE                          VAL R81
      353 DUPCLOSURE                       R84 K63 [PROTO_16]
      354 CAPTURE                          VAL R82
      355 NEWCLOSURE                       R85 P17
      356 CAPTURE                          VAL R8
      357 CAPTURE                          REF R28
      358 CAPTURE                          VAL R13
      359 DUPCLOSURE                       R86 K64 [PROTO_18]
      360 CAPTURE                          VAL R8
      361 CAPTURE                          VAL R85
      362 NEWCLOSURE                       R87 P19
      363 CAPTURE                          REF R20
      364 CAPTURE                          VAL R13
      365 CAPTURE                          REF R54
      366 CAPTURE                          VAL R19
      367 NEWCLOSURE                       R88 P20
      368 CAPTURE                          REF R54
      369 CAPTURE                          REF R20
      370 CAPTURE                          VAL R15
      371 CAPTURE                          VAL R13
      372 CAPTURE                          REF R27
      373 LOADK                            R91 K65 ["buttonClicked"]
      374 NEWCLOSURE                       R92 P21
      375 CAPTURE                          REF R18
      376 CAPTURE                          REF R17
      377 NAMECALL                         R89 R0 K66 ["OnInvoke"]
      379 CALL                             R89 3 0
      380 LOADK                            R91 K67 ["Disable"]
      381 DUPCLOSURE                       R92 K68 [PROTO_22]
      382 CAPTURE                          VAL R0
      383 NAMECALL                         R89 R0 K66 ["OnInvoke"]
      385 CALL                             R89 3 0
      386 GETTABLEKS                       R89 R0 K69 ["Deactivation"]
      388 NEWCLOSURE                       R91 P23
      389 CAPTURE                          REF R18
      390 NAMECALL                         R89 R89 K70 ["connect"]
      392 CALL                             R89 2 0
      393 DUPCLOSURE                       R89 K71 [PROTO_24]
      394 SETGLOBAL                        R89 K72 ["squaredMagnitude"]
      396 DUPCLOSURE                       R89 K73 [PROTO_25]
      397 SETGLOBAL                        R89 K74 ["vector3Direction"]
      399 DUPCLOSURE                       R89 K75 [PROTO_26]
      400 SETGLOBAL                        R89 K76 ["vector3LessThanOrEqualTo"]
      402 DUPCLOSURE                       R89 K77 [PROTO_27]
      403 SETGLOBAL                        R89 K78 ["vector3GreaterThanOrEqualTo"]
      405 DUPCLOSURE                       R89 K79 [PROTO_28]
      406 SETGLOBAL                        R89 K80 ["createPlane"]
      408 DUPCLOSURE                       R89 K81 [PROTO_29]
      409 SETGLOBAL                        R89 K82 ["rayPlaneIntersection"]
      411 DUPCLOSURE                       R89 K83 [PROTO_30]
      412 SETGLOBAL                        R89 K84 ["boxSideTest"]
      414 DUPCLOSURE                       R89 K85 [PROTO_31]
      415 SETGLOBAL                        R89 K86 ["rayBoxIntersection"]
      417 DUPCLOSURE                       R89 K87 [PROTO_32]
      418 SETGLOBAL                        R89 K88 ["projectVectorToPlane"]
      420 DUPCLOSURE                       R89 K89 [PROTO_33]
      421 CAPTURE                          VAL R5
      422 DUPCLOSURE                       R90 K90 [PROTO_34]
      423 CAPTURE                          VAL R5
      424 DUPCLOSURE                       R91 K91 [PROTO_35]
      425 CAPTURE                          VAL R5
      426 CAPTURE                          VAL R7
      427 DUPCLOSURE                       R92 K92 [PROTO_36]
      428 DUPCLOSURE                       R93 K93 [PROTO_37]
      429 CAPTURE                          VAL R0
      430 CAPTURE                          VAL R10
      431 SETGLOBAL                        R93 K94 ["getRotationalIntervalFromGrid"]
      433 DUPCLOSURE                       R93 K95 [PROTO_38]
      434 CAPTURE                          VAL R0
      435 CAPTURE                          VAL R11
      436 SETGLOBAL                        R93 K96 ["roundToNearestGrid"]
      438 DUPCLOSURE                       R93 K97 [PROTO_39]
      439 SETGLOBAL                        R93 K98 ["Vector3ToNearestGrid"]
      441 DUPCLOSURE                       R93 K99 [PROTO_40]
      442 SETGLOBAL                        R93 K100 ["getScaleHandleLocalVector"]
      444 DUPCLOSURE                       R93 K101 [PROTO_41]
      445 CAPTURE                          VAL R0
      446 SETGLOBAL                        R93 K102 ["snapVector3ByHandle"]
      448 DUPCLOSURE                       R93 K103 [PROTO_42]
      449 CAPTURE                          VAL R8
      450 SETGLOBAL                        R93 K104 ["getSelectedPart"]
      452 DUPCLOSURE                       R93 K105 [PROTO_43]
      453 CAPTURE                          VAL R8
      454 SETGLOBAL                        R93 K106 ["getCurrentSelectionWithChildren"]
      456 DUPCLOSURE                       R93 K107 [PROTO_44]
      457 SETGLOBAL                        R93 K108 ["setPartPosition"]
      459 DUPCLOSURE                       R93 K109 [PROTO_45]
      460 SETGLOBAL                        R93 K110 ["setPartRotation"]
      462 DUPCLOSURE                       R93 K111 [PROTO_46]
      463 SETGLOBAL                        R93 K112 ["cosineSimilarity"]
      465 NEWCLOSURE                       R93 P47
      466 CAPTURE                          VAL R8
      467 CAPTURE                          VAL R13
      468 CAPTURE                          REF R34
      469 CAPTURE                          REF R31
      470 SETGLOBAL                        R93 K113 ["setWaypoint"]
      472 DUPCLOSURE                       R93 K114 [PROTO_48]
      473 DUPCLOSURE                       R94 K115 [PROTO_49]
      474 SETGLOBAL                        R94 K116 ["rotateCFrame"]
      476 NEWCLOSURE                       R94 P50
      477 CAPTURE                          REF R44
      478 CAPTURE                          VAL R8
      479 CAPTURE                          REF R39
      480 CAPTURE                          REF R53
      481 CAPTURE                          VAL R12
      482 CAPTURE                          REF R42
      483 CAPTURE                          REF R40
      484 CAPTURE                          REF R43
      485 SETGLOBAL                        R94 K117 ["updateInvisiblePart"]
      487 DUPCLOSURE                       R94 K118 [PROTO_51]
      488 CAPTURE                          VAL R13
      489 DUPCLOSURE                       R95 K119 [PROTO_52]
      490 LOADN                            R96 0
      491 LOADB                            R97 0
      492 LOADNIL                          R98
      493 NEWCLOSURE                       R99 P53
      494 CAPTURE                          VAL R13
      495 CAPTURE                          REF R54
      496 CAPTURE                          VAL R19
      497 CAPTURE                          REF R30
      498 CAPTURE                          REF R32
      499 CAPTURE                          REF R98
      500 CAPTURE                          REF R97
      501 CAPTURE                          REF R55
      502 SETGLOBAL                        R99 K120 ["preUpdatePart"]
      504 LOADNIL                          R99
      505 DUPCLOSURE                       R100 K121 [PROTO_54]
      506 DUPCLOSURE                       R101 K122 [PROTO_55]
      507 DUPCLOSURE                       R102 K123 [PROTO_56]
      508 SETGLOBAL                        R102 K124 ["getShapeRenderSize"]
      510 DUPCLOSURE                       R102 K125 [PROTO_57]
      511 SETGLOBAL                        R102 K126 ["updatePivotAndChildAttachments"]
      513 DUPCLOSURE                       R102 K127 [PROTO_58]
      514 CAPTURE                          VAL R2
      515 NEWCLOSURE                       R103 P59
      516 CAPTURE                          VAL R8
      517 CAPTURE                          VAL R13
      518 CAPTURE                          VAL R2
      519 CAPTURE                          REF R75
      520 CAPTURE                          REF R76
      521 CAPTURE                          REF R31
      522 CAPTURE                          REF R32
      523 CAPTURE                          REF R30
      524 CAPTURE                          REF R99
      525 CAPTURE                          REF R69
      526 CAPTURE                          VAL R0
      527 CAPTURE                          REF R44
      528 CAPTURE                          VAL R7
      529 CAPTURE                          VAL R95
      530 CAPTURE                          VAL R77
      531 CAPTURE                          VAL R6
      532 CAPTURE                          VAL R5
      533 CAPTURE                          REF R45
      534 CAPTURE                          REF R40
      535 CAPTURE                          REF R54
      536 CAPTURE                          REF R98
      537 CAPTURE                          REF R34
      538 CAPTURE                          VAL R11
      539 CAPTURE                          VAL R83
      540 CAPTURE                          REF R27
      541 CAPTURE                          REF R25
      542 CAPTURE                          VAL R23
      543 CAPTURE                          REF R26
      544 CAPTURE                          VAL R85
      545 CAPTURE                          REF R22
      546 SETGLOBAL                        R103 K128 ["updatePart"]
      548 NEWCLOSURE                       R103 P60
      549 CAPTURE                          REF R70
      550 CAPTURE                          VAL R77
      551 CAPTURE                          REF R71
      552 CAPTURE                          VAL R23
      553 CAPTURE                          VAL R9
      554 CAPTURE                          REF R44
      555 SETGLOBAL                        R103 K129 ["updateDragPart"]
      557 NEWCLOSURE                       R103 P61
      558 CAPTURE                          VAL R8
      559 CAPTURE                          REF R35
      560 CAPTURE                          REF R31
      561 CAPTURE                          REF R32
      562 CAPTURE                          REF R45
      563 CAPTURE                          REF R70
      564 CAPTURE                          VAL R12
      565 SETGLOBAL                        R103 K130 ["grabPart"]
      567 DUPCLOSURE                       R103 K131 [PROTO_62]
      568 SETGLOBAL                        R103 K132 ["getAllFaceNormals"]
      570 NEWCLOSURE                       R103 P63
      571 CAPTURE                          REF R44
      572 CAPTURE                          VAL R10
      573 SETGLOBAL                        R103 K133 ["getDirectedNormalsFromPart"]
      575 DUPCLOSURE                       R103 K134 [PROTO_64]
      576 SETGLOBAL                        R103 K135 ["getClosestNormalFromPart"]
      578 DUPCLOSURE                       R103 K136 [PROTO_65]
      579 SETGLOBAL                        R103 K137 ["getFirstPart"]
      581 DUPCLOSURE                       R103 K138 [PROTO_66]
      582 SETGLOBAL                        R103 K139 ["getBestExtentRotation"]
      584 DUPCLOSURE                       R103 K140 [PROTO_67]
      585 CAPTURE                          VAL R10
      586 SETGLOBAL                        R103 K141 ["getNormalOfFace"]
      588 DUPCLOSURE                       R103 K142 [PROTO_68]
      589 CAPTURE                          VAL R6
      590 SETGLOBAL                        R103 K143 ["getNormalFromClosestPoint"]
      592 DUPCLOSURE                       R103 K144 [PROTO_69]
      593 SETGLOBAL                        R103 K145 ["normalExistsInTable"]
      595 DUPCLOSURE                       R103 K146 [PROTO_70]
      596 SETGLOBAL                        R103 K147 ["getNormalOfCollidingFace"]
      598 DUPCLOSURE                       R103 K148 [PROTO_71]
      599 SETGLOBAL                        R103 K149 ["sanitizeFloat"]
      601 DUPCLOSURE                       R103 K150 [PROTO_72]
      602 SETGLOBAL                        R103 K151 ["sanitizeVector3"]
      604 DUPCLOSURE                       R103 K152 [PROTO_73]
      605 SETGLOBAL                        R103 K153 ["sanitizeCFrame"]
      607 LOADB                            R103 1
      608 LOADB                            R104 0
      609 NEWCLOSURE                       R105 P74
      610 CAPTURE                          VAL R13
      611 CAPTURE                          REF R39
      612 CAPTURE                          REF R70
      613 CAPTURE                          REF R104
      614 CAPTURE                          REF R22
      615 CAPTURE                          VAL R2
      616 CAPTURE                          REF R75
      617 CAPTURE                          REF R76
      618 CAPTURE                          REF R53
      619 CAPTURE                          REF R103
      620 CAPTURE                          VAL R12
      621 CAPTURE                          REF R67
      622 CAPTURE                          REF R44
      623 CAPTURE                          VAL R8
      624 CAPTURE                          REF R45
      625 CAPTURE                          VAL R7
      626 CAPTURE                          VAL R5
      627 CAPTURE                          VAL R6
      628 CAPTURE                          VAL R10
      629 CAPTURE                          VAL R11
      630 SETGLOBAL                        R105 K154 ["movePart"]
      632 NEWCLOSURE                       R105 P75
      633 CAPTURE                          VAL R13
      634 CAPTURE                          VAL R19
      635 CAPTURE                          REF R26
      636 CAPTURE                          REF R25
      637 CAPTURE                          VAL R10
      638 CAPTURE                          REF R37
      639 CAPTURE                          REF R38
      640 CAPTURE                          VAL R6
      641 SETGLOBAL                        R105 K155 ["planeDrag"]
      643 NEWCLOSURE                       R105 P76
      644 CAPTURE                          REF R68
      645 CAPTURE                          REF R27
      646 CAPTURE                          REF R35
      647 CAPTURE                          REF R20
      648 CAPTURE                          VAL R15
      649 CAPTURE                          VAL R19
      650 CAPTURE                          REF R57
      651 CAPTURE                          REF R38
      652 CAPTURE                          REF R67
      653 CAPTURE                          REF R37
      654 CAPTURE                          VAL R6
      655 CAPTURE                          VAL R10
      656 CAPTURE                          VAL R8
      657 CAPTURE                          VAL R9
      658 CAPTURE                          REF R36
      659 CAPTURE                          VAL R0
      660 CAPTURE                          REF R33
      661 SETGLOBAL                        R105 K156 ["freeDrag"]
      663 NEWCLOSURE                       R105 P77
      664 CAPTURE                          VAL R13
      665 CAPTURE                          VAL R19
      666 CAPTURE                          VAL R23
      667 CAPTURE                          REF R39
      668 CAPTURE                          REF R40
      669 CAPTURE                          REF R41
      670 CAPTURE                          REF R42
      671 CAPTURE                          REF R49
      672 CAPTURE                          REF R50
      673 CAPTURE                          REF R51
      674 CAPTURE                          REF R52
      675 CAPTURE                          VAL R10
      676 CAPTURE                          REF R46
      677 CAPTURE                          REF R47
      678 CAPTURE                          REF R48
      679 CAPTURE                          REF R37
      680 CAPTURE                          REF R38
      681 CAPTURE                          VAL R6
      682 CAPTURE                          REF R53
      683 CAPTURE                          VAL R8
      684 SETGLOBAL                        R105 K157 ["selectDragPlane"]
      686 DUPCLOSURE                       R105 K158 [PROTO_78]
      687 CAPTURE                          VAL R23
      688 SETGLOBAL                        R105 K159 ["removeDragPart"]
      690 NEWCLOSURE                       R105 P79
      691 CAPTURE                          REF R103
      692 CAPTURE                          REF R96
      693 CAPTURE                          REF R75
      694 CAPTURE                          REF R76
      695 CAPTURE                          VAL R15
      696 CAPTURE                          REF R35
      697 CAPTURE                          VAL R13
      698 CAPTURE                          REF R33
      699 CAPTURE                          REF R66
      700 CAPTURE                          REF R104
      701 CAPTURE                          VAL R8
      702 CAPTURE                          VAL R0
      703 CAPTURE                          REF R69
      704 CAPTURE                          REF R67
      705 CAPTURE                          REF R70
      706 CAPTURE                          REF R71
      707 CAPTURE                          REF R27
      708 CAPTURE                          REF R26
      709 CAPTURE                          REF R25
      710 CAPTURE                          REF R36
      711 SETGLOBAL                        R105 K160 ["releasePart"]
      713 NEWCLOSURE                       R105 P80
      714 CAPTURE                          REF R34
      715 CAPTURE                          REF R30
      716 CAPTURE                          VAL R8
      717 CAPTURE                          REF R32
      718 CAPTURE                          REF R31
      719 CAPTURE                          REF R45
      720 CAPTURE                          REF R44
      721 CAPTURE                          REF R55
      722 SETGLOBAL                        R105 K161 ["grabHandle"]
      724 NEWCLOSURE                       R105 P81
      725 CAPTURE                          REF R99
      726 CAPTURE                          REF R96
      727 CAPTURE                          VAL R13
      728 CAPTURE                          VAL R73
      729 CAPTURE                          VAL R8
      730 CAPTURE                          VAL R0
      731 CAPTURE                          REF R34
      732 CAPTURE                          REF R30
      733 CAPTURE                          REF R31
      734 CAPTURE                          REF R32
      735 CAPTURE                          REF R45
      736 SETGLOBAL                        R105 K162 ["releaseHandle"]
      738 NEWCLOSURE                       R105 P82
      739 CAPTURE                          REF R22
      740 CAPTURE                          REF R44
      741 CAPTURE                          REF R56
      742 CAPTURE                          VAL R13
      743 CAPTURE                          VAL R8
      744 CAPTURE                          VAL R85
      745 SETGLOBAL                        R105 K163 ["recreateAdornment"]
      747 DUPCLOSURE                       R105 K164 [PROTO_83]
      748 SETGLOBAL                        R105 K165 ["isInSelection"]
      750 DUPCLOSURE                       R105 K166 [PROTO_84]
      751 SETGLOBAL                        R105 K167 ["getHighestModelParent"]
      753 DUPCLOSURE                       R105 K168 [PROTO_85]
      754 SETGLOBAL                        R105 K169 ["getPVInstanceForPart"]
      756 DUPCLOSURE                       R105 K170 [PROTO_86]
      757 SETGLOBAL                        R105 K171 ["getTopPVInstance"]
      759 DUPCLOSURE                       R105 K172 [PROTO_87]
      760 SETGLOBAL                        R105 K173 ["findPartInstance"]
      762 DUPCLOSURE                       R105 K174 [PROTO_88]
      763 CAPTURE                          VAL R7
      764 SETGLOBAL                        R105 K175 ["isAncestorSelected"]
      766 NEWCLOSURE                       R105 P89
      767 CAPTURE                          REF R57
      768 CAPTURE                          VAL R19
      769 CAPTURE                          VAL R7
      770 CAPTURE                          REF R67
      771 CAPTURE                          VAL R24
      772 CAPTURE                          REF R36
      773 CAPTURE                          REF R46
      774 CAPTURE                          REF R47
      775 CAPTURE                          REF R48
      776 CAPTURE                          VAL R9
      777 CAPTURE                          REF R39
      778 CAPTURE                          REF R40
      779 CAPTURE                          REF R38
      780 CAPTURE                          REF R22
      781 CAPTURE                          VAL R8
      782 CAPTURE                          VAL R15
      783 SETGLOBAL                        R105 K176 ["selectPart"]
      785 NEWCLOSURE                       R105 P90
      786 CAPTURE                          REF R18
      787 CAPTURE                          VAL R13
      788 CAPTURE                          VAL R85
      789 CAPTURE                          VAL R8
      790 SETGLOBAL                        R105 K177 ["waypointChanged"]
      792 NEWCLOSURE                       R105 P91
      793 CAPTURE                          REF R22
      794 CAPTURE                          VAL R8
      795 CAPTURE                          VAL R13
      796 CAPTURE                          VAL R15
      797 CAPTURE                          REF R67
      798 CAPTURE                          REF R70
      799 CAPTURE                          REF R31
      800 CAPTURE                          REF R32
      801 CAPTURE                          VAL R9
      802 SETGLOBAL                        R105 K178 ["selectionChanged"]
      804 NEWCLOSURE                       R105 P92
      805 CAPTURE                          REF R67
      806 CAPTURE                          VAL R14
      807 SETGLOBAL                        R105 K179 ["onDragEnter"]
      809 NEWCLOSURE                       R105 P93
      810 CAPTURE                          VAL R13
      811 CAPTURE                          REF R27
      812 CAPTURE                          REF R26
      813 CAPTURE                          REF R25
      814 CAPTURE                          VAL R23
      815 NEWCLOSURE                       R106 P94
      816 CAPTURE                          REF R18
      817 CAPTURE                          VAL R105
      818 CAPTURE                          VAL R14
      819 CAPTURE                          VAL R87
      820 CAPTURE                          VAL R88
      821 SETGLOBAL                        R106 K180 ["keyPress"]
      823 NEWCLOSURE                       R106 P95
      824 CAPTURE                          VAL R14
      825 CAPTURE                          VAL R13
      826 CAPTURE                          REF R32
      827 CAPTURE                          VAL R8
      828 CAPTURE                          REF R31
      829 SETGLOBAL                        R106 K181 ["inputChanged"]
      831 GETTABLEKS                       R106 R13 K182 ["updateAdornmentPositions"]
      833 NEWCLOSURE                       R107 P96
      834 CAPTURE                          REF R18
      835 CAPTURE                          VAL R0
      836 CAPTURE                          VAL R3
      837 CAPTURE                          REF R58
      838 CAPTURE                          REF R59
      839 CAPTURE                          REF R61
      840 CAPTURE                          REF R62
      841 CAPTURE                          REF R63
      842 CAPTURE                          REF R64
      843 CAPTURE                          REF R65
      844 CAPTURE                          VAL R13
      845 SETGLOBAL                        R107 K183 ["Off"]
      847 DUPCLOSURE                       R107 K184 [PROTO_97]
      848 CAPTURE                          VAL R2
      849 CAPTURE                          VAL R4
      850 NEWCLOSURE                       R108 P98
      851 CAPTURE                          REF R18
      852 CAPTURE                          VAL R0
      853 CAPTURE                          VAL R2
      854 CAPTURE                          VAL R4
      855 CAPTURE                          REF R28
      856 CAPTURE                          VAL R13
      857 CAPTURE                          REF R58
      858 CAPTURE                          REF R59
      859 CAPTURE                          REF R61
      860 CAPTURE                          VAL R24
      861 CAPTURE                          REF R62
      862 CAPTURE                          REF R63
      863 CAPTURE                          REF R64
      864 CAPTURE                          VAL R8
      865 CAPTURE                          VAL R85
      866 CAPTURE                          VAL R106
      867 CAPTURE                          REF R65
      868 CAPTURE                          REF R22
      869 CAPTURE                          REF R21
      870 SETGLOBAL                        R108 K185 ["On"]
      872 LOADB                            R17 1
      873 GETTABLEKS                       R108 R24 K186 ["InputBegan"]
      875 GETGLOBAL                        R110 K180 ["keyPress"]
      877 NAMECALL                         R108 R108 K70 ["connect"]
      879 CALL                             R108 2 1
      880 MOVE                             R60 R108
      881 CLOSEUPVALS                      R17
      882 RETURN                           R0 0
