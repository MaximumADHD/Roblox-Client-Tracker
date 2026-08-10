PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_viewBoundsDirty"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_selectionBoundsDirty"]
        4 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 DUPTABLE                         R5 K5 [{[1], ["_viewBoundsDirty"] = True, ["_selectionBoundsDirty"] = True, ["_lastShouldUseLocalSpace"]}]
        5 SETTABLEKS                       R0 R5 K0 ["_draggerContext"]
        7 NAMECALL                         R6 R0 K6 ["shouldUseLocalSpace"]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K4 ["_lastShouldUseLocalSpace"]
       12 GETUPVAL                         R6 0
       13 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       15 GETIMPORT                        R4 K8 [setmetatable]
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K9 ["new"]
       21 MOVE                             R6 R0
       22 MOVE                             R7 R1
       23 MOVE                             R8 R3
       24 DUPCLOSURE                       R9 K10 [PROTO_0]
       25 NEWCLOSURE                       R10 P1
       26 CAPTURE                          VAL R4
       27 NEWCLOSURE                       R11 P2
       28 CAPTURE                          VAL R4
       29 CALL                             R5 6 1
       30 SETTABLEKS                       R5 R4 K11 ["_draggerToolModel"]
       32 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_lastShouldUseLocalSpace"]
        2 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R2 K2 ["shouldUseLocalSpace"]
        6 CALL                             R2 1 1
        7 JUMPIFEQ                         R1 R2 ; [+11]
        9 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
       11 NAMECALL                         R1 R1 K2 ["shouldUseLocalSpace"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K0 ["_lastShouldUseLocalSpace"]
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K3 ["_selectionBoundsDirty"]
       19 GETTABLEKS                       R1 R0 K3 ["_selectionBoundsDirty"]
       21 JUMPIFNOT                        R1 ; [+8]
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K3 ["_selectionBoundsDirty"]
       25 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       27 NAMECALL                         R1 R1 K5 ["_processSelectionChanged"]
       29 CALL                             R1 1 0
       30 GETTABLEKS                       R1 R0 K6 ["_viewBoundsDirty"]
       32 JUMPIFNOT                        R1 ; [+8]
       33 LOADB                            R1 0
       34 SETTABLEKS                       R1 R0 K6 ["_viewBoundsDirty"]
       36 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       38 NAMECALL                         R1 R1 K7 ["_processViewChanged"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_selected"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["select called while already selected"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["_selected"]
       12 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       14 NAMECALL                         R1 R1 K5 ["_processSelected"]
       16 CALL                             R1 1 0
       17 NAMECALL                         R1 R0 K6 ["_update"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K7 ["_draggerContext"]
       22 NAMECALL                         R1 R1 K8 ["getGuiParent"]
       24 CALL                             R1 1 1
       25 JUMPIFNOT                        R1 ; [+11]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K9 ["mount"]
       29 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       31 NAMECALL                         R2 R2 K10 ["render"]
       33 CALL                             R2 1 -1
       34 CALL                             R1 -1 1
       35 SETTABLEKS                       R1 R0 K11 ["_handle"]
       37 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_update"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_handle"]
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["update"]
        9 GETTABLEKS                       R2 R0 K1 ["_handle"]
       11 GETTABLEKS                       R3 R0 K3 ["_draggerToolModel"]
       13 NAMECALL                         R3 R3 K4 ["render"]
       15 CALL                             R3 1 -1
       16 CALL                             R1 -1 1
       17 SETTABLEKS                       R1 R0 K1 ["_handle"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["mount"]
       23 GETTABLEKS                       R2 R0 K3 ["_draggerToolModel"]
       25 NAMECALL                         R2 R2 K4 ["render"]
       27 CALL                             R2 1 -1
       28 CALL                             R1 -1 1
       29 SETTABLEKS                       R1 R0 K1 ["_handle"]
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_selected"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["must call select before beginDrag"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       10 NAMECALL                         R1 R1 K5 ["_processMouseDown"]
       12 CALL                             R1 1 0
       13 NAMECALL                         R1 R0 K6 ["_update"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["_selected"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["must call select before moveMouse"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R3 R0 K4 ["_draggerContext"]
       10 NAMECALL                         R3 R3 K5 ["getViewportSize"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       15 GETIMPORT                        R6 K8 [Vector2.new]
       17 GETTABLEKS                       R8 R3 K9 ["X"]
       19 MUL                              R7 R8 R1
       20 GETTABLEKS                       R9 R3 K10 ["Y"]
       22 MUL                              R8 R9 R2
       23 CALL                             R6 2 -1
       24 NAMECALL                         R4 R4 K11 ["setMouseLocation"]
       26 CALL                             R4 -1 0
       27 GETTABLEKS                       R4 R0 K12 ["_draggerToolModel"]
       29 NAMECALL                         R4 R4 K13 ["_processViewChanged"]
       31 CALL                             R4 1 0
       32 NAMECALL                         R4 R0 K14 ["_update"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R2 K1 ["_selectionInfo"]
        4 NAMECALL                         R2 R2 K2 ["getBoundingBox"]
        6 CALL                             R2 1 3
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R2 K3 ["VectorToWorldSpace"]
       10 CALL                             R5 2 -1
       11 RETURN                           R5 -1

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["render"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K2 ["getGuiParent"]
        7 CALL                             R2 1 1
        8 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       10 MOVE                             R4 R2
       11 LOADK                            R5 K3 ["No GuiParent set in DraggerContext"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 LOADK                            R5 K6 ["DraggerUI"]
       16 NAMECALL                         R3 R2 K7 ["FindFirstChild"]
       18 CALL                             R3 2 1
       19 MOVE                             R6 R1
       20 LOADB                            R7 1
       21 NAMECALL                         R4 R3 K7 ["FindFirstChild"]
       23 CALL                             R4 3 1
       24 LOADK                            R8 K8 ["Could not find handle named %*"]
       25 MOVE                             R10 R1
       26 NAMECALL                         R8 R8 K9 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 FASTCALL2                        ASSERT R4 R7 ; [+4]
       32 MOVE                             R6 R4
       33 GETIMPORT                        R5 K5 [assert]
       35 CALL                             R5 2 0
       36 LOADK                            R7 K10 ["Head"]
       37 NAMECALL                         R5 R4 K7 ["FindFirstChild"]
       39 CALL                             R5 2 1
       40 JUMPIF                           R5 ; [+4]
       41 LOADK                            R7 K11 ["Handle"]
       42 NAMECALL                         R5 R4 K7 ["FindFirstChild"]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R7 R5 K12 ["Adornee"]
       47 GETTABLEKS                       R7 R7 K13 ["CFrame"]
       49 GETTABLEKS                       R8 R5 K13 ["CFrame"]
       51 MUL                              R6 R7 R8
       52 GETTABLEKS                       R7 R0 K1 ["_draggerContext"]
       54 GETTABLEKS                       R9 R6 K14 ["Position"]
       56 NAMECALL                         R7 R7 K15 ["worldToViewportPoint"]
       58 CALL                             R7 2 2
       59 LOADK                            R12 K16 ["Handle %* is not on screen"]
       60 MOVE                             R14 R1
       61 NAMECALL                         R12 R12 K9 ["format"]
       63 CALL                             R12 2 1
       64 MOVE                             R11 R12
       65 FASTCALL2                        ASSERT R8 R11 ; [+4]
       67 MOVE                             R10 R8
       68 GETIMPORT                        R9 K5 [assert]
       70 CALL                             R9 2 0
       71 GETTABLEKS                       R9 R0 K1 ["_draggerContext"]
       73 GETIMPORT                        R11 K19 [Vector2.new]
       75 GETTABLEKS                       R12 R7 K20 ["X"]
       77 GETTABLEKS                       R13 R7 K21 ["Y"]
       79 CALL                             R11 2 -1
       80 NAMECALL                         R9 R9 K22 ["setMouseLocation"]
       82 CALL                             R9 -1 0
       83 GETTABLEKS                       R9 R0 K23 ["_draggerToolModel"]
       85 NAMECALL                         R9 R9 K24 ["_processViewChanged"]
       87 CALL                             R9 1 0
       88 NAMECALL                         R9 R0 K25 ["_update"]
       90 CALL                             R9 1 0
       91 GETTABLEKS                       R9 R6 K14 ["Position"]
       93 RETURN                           R9 1

PROTO_12:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETIMPORT                        R0 K3 [task.defer]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADB                            R4 0
        3 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
        5 GETTABLEKS                       R5 R5 K1 ["_selectionWrapper"]
        7 GETTABLEKS                       R5 R5 K2 ["onSelectionExternallyChanged"]
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          REF R4
       11 CAPTURE                          REF R2
       12 CAPTURE                          REF R3
       13 NAMECALL                         R5 R5 K3 ["Connect"]
       15 CALL                             R5 2 1
       16 MOVE                             R2 R5
       17 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       19 NAMECALL                         R5 R5 K5 ["getSelection"]
       21 CALL                             R5 1 1
       22 MOVE                             R7 R1
       23 NAMECALL                         R5 R5 K6 ["Set"]
       25 CALL                             R5 2 0
       26 JUMPIF                           R4 ; [+7]
       27 GETIMPORT                        R5 K9 [coroutine.running]
       29 CALL                             R5 0 1
       30 MOVE                             R3 R5
       31 GETIMPORT                        R5 K11 [coroutine.yield]
       33 CALL                             R5 0 0
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["worldToViewportPoint"]
        5 CALL                             R2 2 2
        6 GETTABLEKS                       R6 R2 K2 ["Z"]
        8 LOADN                            R7 0
        9 JUMPIFLT                         R7 R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 LOADK                            R7 K3 ["Can't move mouse over %* because it is behind the camera"]
       14 MOVE                             R9 R1
       15 NAMECALL                         R7 R7 K4 ["format"]
       17 CALL                             R7 2 1
       18 MOVE                             R6 R7
       19 FASTCALL2                        ASSERT R5 R6 ; [+3]
       21 GETIMPORT                        R4 K6 [assert]
       23 CALL                             R4 2 0
       24 LOADK                            R7 K7 ["Can't move mouse over %* because it is off screen"]
       25 MOVE                             R9 R1
       26 NAMECALL                         R7 R7 K4 ["format"]
       28 CALL                             R7 2 1
       29 MOVE                             R6 R7
       30 FASTCALL2                        ASSERT R3 R6 ; [+4]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R4 K6 [assert]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       38 GETIMPORT                        R6 K10 [Vector2.new]
       40 GETTABLEKS                       R7 R2 K11 ["X"]
       42 GETTABLEKS                       R8 R2 K12 ["Y"]
       44 CALL                             R6 2 -1
       45 NAMECALL                         R4 R4 K13 ["setMouseLocation"]
       47 CALL                             R4 -1 0
       48 GETTABLEKS                       R4 R0 K14 ["_draggerToolModel"]
       50 NAMECALL                         R4 R4 K15 ["_processViewChanged"]
       52 CALL                             R4 1 0
       53 NAMECALL                         R4 R0 K16 ["_update"]
       55 CALL                             R4 1 0
       56 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["mouseMoveOverHandle"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R3 R0 K1 ["mouseDown"]
        6 CALL                             R3 1 0
        7 RETURN                           R2 1

PROTO_16:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["mouseMoveOverPoint"]
        3 CALL                             R2 2 0
        4 NAMECALL                         R2 R0 K1 ["mouseDown"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_selected"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["must call select before endDrag"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       10 NAMECALL                         R1 R1 K5 ["_processMouseUp"]
       12 CALL                             R1 1 0
       13 NAMECALL                         R1 R0 K6 ["_update"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["mouseDown"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["mouseUp"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["mouseMoveOverPoint"]
        3 CALL                             R2 2 0
        4 NAMECALL                         R2 R0 K1 ["mouseClick"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["EnumItem"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["keyPress takes an Enum.KeyCode"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K6 ["_selected"]
       17 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       19 LOADK                            R4 K7 ["must call select before keyPress"]
       20 GETIMPORT                        R2 K5 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K8 ["_draggerToolModel"]
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K9 ["_processKeyDown"]
       28 CALL                             R2 2 0
       29 NAMECALL                         R2 R0 K10 ["_update"]
       31 CALL                             R2 1 0
       32 GETTABLEKS                       R2 R0 K8 ["_draggerToolModel"]
       34 MOVE                             R4 R1
       35 NAMECALL                         R2 R2 K11 ["_processKeyUp"]
       37 CALL                             R2 2 0
       38 NAMECALL                         R2 R0 K10 ["_update"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_selected"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["deselect called while not selected"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["_selected"]
       11 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       13 NAMECALL                         R1 R1 K5 ["_processDeselected"]
       15 CALL                             R1 1 0
       16 NAMECALL                         R1 R0 K6 ["_update"]
       18 CALL                             R1 1 0
       19 GETTABLEKS                       R1 R0 K7 ["_handle"]
       21 JUMPIFNOT                        R1 ; [+6]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K8 ["unmount"]
       25 GETTABLEKS                       R2 R0 K7 ["_handle"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Implementation"]
       22 GETTABLEKS                       R3 R3 K8 ["DraggerToolModel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Types"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 32 0
       32 SETTABLEKS                       R4 R4 K10 ["__index"]
       34 DUPCLOSURE                       R5 K11 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K12 ["new"]
       39 DUPCLOSURE                       R5 K13 [PROTO_4]
       40 SETTABLEKS                       R5 R4 K14 ["getModel"]
       42 DUPCLOSURE                       R5 K15 [PROTO_5]
       43 SETTABLEKS                       R5 R4 K16 ["_update"]
       45 DUPCLOSURE                       R5 K17 [PROTO_6]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R5 R4 K18 ["select"]
       49 DUPCLOSURE                       R5 K19 [PROTO_7]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R5 R4 K20 ["render"]
       53 DUPCLOSURE                       R5 K21 [PROTO_8]
       54 SETTABLEKS                       R5 R4 K22 ["mouseDown"]
       56 DUPCLOSURE                       R5 K23 [PROTO_9]
       57 SETTABLEKS                       R5 R4 K24 ["mouseMove"]
       59 DUPCLOSURE                       R5 K25 [PROTO_10]
       60 SETTABLEKS                       R5 R4 K26 ["motionToHandleSpace"]
       62 DUPCLOSURE                       R5 K27 [PROTO_11]
       63 SETTABLEKS                       R5 R4 K28 ["mouseMoveOverHandle"]
       65 DUPCLOSURE                       R5 K29 [PROTO_13]
       66 SETTABLEKS                       R5 R4 K30 ["setSelection"]
       68 DUPCLOSURE                       R5 K31 [PROTO_14]
       69 SETTABLEKS                       R5 R4 K32 ["mouseMoveOverPoint"]
       71 DUPCLOSURE                       R5 K33 [PROTO_15]
       72 SETTABLEKS                       R5 R4 K34 ["mouseDownOverHandle"]
       74 DUPCLOSURE                       R5 K35 [PROTO_16]
       75 SETTABLEKS                       R5 R4 K36 ["mouseDownOverPoint"]
       77 DUPCLOSURE                       R5 K37 [PROTO_17]
       78 SETTABLEKS                       R5 R4 K38 ["mouseUp"]
       80 DUPCLOSURE                       R5 K39 [PROTO_18]
       81 SETTABLEKS                       R5 R4 K40 ["mouseClick"]
       83 DUPCLOSURE                       R5 K41 [PROTO_19]
       84 SETTABLEKS                       R5 R4 K42 ["mouseClickPoint"]
       86 DUPCLOSURE                       R5 K43 [PROTO_20]
       87 SETTABLEKS                       R5 R4 K44 ["keyPress"]
       89 DUPCLOSURE                       R5 K45 [PROTO_21]
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R5 R4 K46 ["deselect"]
       93 RETURN                           R4 1
