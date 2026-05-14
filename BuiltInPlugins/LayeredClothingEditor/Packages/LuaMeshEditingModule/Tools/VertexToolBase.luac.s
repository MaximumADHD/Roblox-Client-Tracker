PROTO_0:
        0 LOADB                            R2 0
        1 GETUPVAL                         R3 0
        2 JUMPIFEQKNIL                     R3 ; [+14]
        4 LOADB                            R2 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["MeshName"]
        8 JUMPIFNOTEQ                      R3 R0 ; [+8]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["Index"]
       13 JUMPIFEQ                         R3 R1 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R0
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["ToolStateData"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLEKS                       R3 R1 K1 ["ControlPointLocationData"]
       11 JUMPIFNOT                        R3 ; [+3]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["VertexData"]
       15 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       17 LOADK                            R4 K3 ["Invalid save state, could not transform points."]
       18 GETIMPORT                        R2 K5 [assert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K6 ["transformControlPoints"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R4 R1 K1 ["ControlPointLocationData"]
       27 GETTABLEKS                       R4 R4 K7 ["Positions"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K7 ["Positions"]
       32 GETUPVAL                         R6 4
       33 MOVE                             R7 R0
       34 CALL                             R2 5 0
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K8 ["transformVertices"]
       38 GETUPVAL                         R3 2
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K2 ["VertexData"]
       42 GETUPVAL                         R5 5
       43 NAMECALL                         R5 R5 K9 ["getVertexWeights"]
       45 CALL                             R5 1 1
       46 MOVE                             R6 R0
       47 CALL                             R2 4 0
       48 GETUPVAL                         R2 5
       49 NAMECALL                         R2 R2 K10 ["render"]
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETUPVAL                         R2 3
        3 GETUPVAL                         R3 4
        4 CALL                             R0 3 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 5
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+11]
       12 GETUPVAL                         R0 2
       13 NAMECALL                         R0 R0 K0 ["getSymmetryMap"]
       15 CALL                             R0 1 1
       16 JUMPIFEQKNIL                     R0 ; [+5]
       18 GETUPVAL                         R1 6
       19 MOVE                             R2 R0
       20 GETUPVAL                         R3 0
       21 CALL                             R1 2 0
       22 GETUPVAL                         R0 7
       23 NAMECALL                         R0 R0 K1 ["render"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 8
       27 NAMECALL                         R0 R0 K2 ["Fire"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 4
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 SETLIST                          R0 R1 4 [1]
        8 GETIMPORT                        R1 K1 [pairs]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 3
       12 FORGPREP_NEXT                    R1
       13 JUMPIFNOT                        R5 ; [+3]
       14 NAMECALL                         R6 R5 K2 ["disconnect"]
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-5]
       19 GETIMPORT                        R1 K1 [pairs]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 3
       23 FORGPREP_NEXT                    R1
       24 JUMPIFNOT                        R5 ; [+3]
       25 NAMECALL                         R6 R5 K3 ["cleanup"]
       27 CALL                             R6 1 0
       28 FORGLOOP                         R1 2 ; [-5]
       30 LOADNIL                          R1
       31 SETUPVAL                         R1 0
       32 LOADNIL                          R1
       33 SETUPVAL                         R1 1
       34 LOADNIL                          R1
       35 SETUPVAL                         R1 2
       36 LOADNIL                          R1
       37 SETUPVAL                         R1 3
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 4
        7 GETTABLEKS                       R0 R0 K0 ["new"]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 3
       12 GETUPVAL                         R0 6
       13 GETTABLEKS                       R0 R0 K0 ["new"]
       15 GETUPVAL                         R1 2
       16 CALL                             R0 1 1
       17 SETUPVAL                         R0 5
       18 GETUPVAL                         R0 8
       19 GETTABLEKS                       R0 R0 K0 ["new"]
       21 CALL                             R0 0 1
       22 SETUPVAL                         R0 7
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 2
        3 GETTABLEKS                       R0 R0 K0 ["new"]
        5 GETUPVAL                         R1 3
        6 CALL                             R0 1 1
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R0 5
        9 GETTABLEKS                       R0 R0 K0 ["new"]
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 4
       14 GETUPVAL                         R0 7
       15 GETTABLEKS                       R0 R0 K0 ["new"]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 1
       19 SETUPVAL                         R0 6
       20 GETUPVAL                         R0 9
       21 GETTABLEKS                       R0 R0 K0 ["new"]
       23 CALL                             R0 0 1
       24 SETUPVAL                         R0 8
       25 GETUPVAL                         R0 10
       26 NAMECALL                         R0 R0 K1 ["render"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 0
        2 NEWTABLE                         R3 0 0
        4 SETUPVAL                         R3 1
        5 NEWTABLE                         R3 0 0
        7 SETUPVAL                         R3 2
        8 LOADNIL                          R3
        9 SETUPVAL                         R3 3
       10 GETUPVAL                         R3 4
       11 NAMECALL                         R3 R3 K0 ["Fire"]
       13 CALL                             R3 1 0
       14 NEWTABLE                         R3 0 0
       16 SETUPVAL                         R3 5
       17 NEWTABLE                         R3 0 0
       19 SETUPVAL                         R3 6
       20 LOADNIL                          R3
       21 SETUPVAL                         R3 7
       22 SETUPVAL                         R0 8
       23 SETUPVAL                         R1 9
       24 SETUPVAL                         R2 10
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+5]
        2 GETIMPORT                        R2 K1 [error]
        4 LOADK                            R3 K2 ["Tool has no active context. Data was not updated."]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+5]
       11 GETIMPORT                        R3 K1 [error]
       13 LOADK                            R4 K3 ["No tool state found for the current context. Data was not updated."]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R3 K5 [pairs]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 JUMPIFNOT                        R1 ; [+7]
       22 JUMPIFNOTEQKS                    R6 K6 ["ControlPointLocationDataBackup"] ; [+6]
       24 GETIMPORT                        R8 K8 [warn]
       26 LOADK                            R9 K9 ["ControlPointLocationDataBackup in tool state cannot be overridden. Data was skipped in _setCurrentToolStateData."]
       27 CALL                             R8 1 0
       28 JUMP                             ; [+22]
       29 GETUPVAL                         R8 2
       30 MOVE                             R9 R7
       31 CALL                             R8 1 1
       32 SETTABLE                         R8 R2 R6
       33 JUMPIFNOTEQKS                    R6 K10 ["ControlPointLocationData"] ; [+12]
       35 GETTABLE                         R8 R2 R6
       36 SETUPVAL                         R8 3
       37 JUMPIFNOT                        R1 ; [+13]
       38 GETUPVAL                         R8 2
       39 GETUPVAL                         R9 3
       40 CALL                             R8 1 1
       41 SETUPVAL                         R8 4
       42 GETUPVAL                         R8 4
       43 SETTABLEKS                       R8 R2 K6 ["ControlPointLocationDataBackup"]
       45 JUMP                             ; [+5]
       46 JUMPIFNOTEQKS                    R6 K6 ["ControlPointLocationDataBackup"] ; [+4]
       48 JUMPIF                           R1 ; [+2]
       49 GETTABLE                         R8 R2 R6
       50 SETUPVAL                         R8 4
       51 FORGLOOP                         R3 2 ; [-31]
       53 GETUPVAL                         R3 5
       54 NAMECALL                         R3 R3 K11 ["render"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADB                            R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K0 ["ControlPointLocationData"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K1 ["ControlPointLocationDataBackup"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 LOADB                            R4 0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+7]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["Tool has no active context. State was not returned."]
        5 CALL                             R1 1 0
        6 NEWTABLE                         R1 0 0
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLE                         R1 R2 R3
       12 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       14 MOVE                             R3 R1
       15 LOADK                            R4 K3 ["No state found for current context."]
       16 GETIMPORT                        R2 K5 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R1
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 1
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 SETUPVAL                         R2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 1
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 SETUPVAL                         R2 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 JUMPIFEQKNIL                     R2 ; [+20]
       12 GETUPVAL                         R2 2
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R1
       16 JUMPIFNOT                        R4 ; [+11]
       17 GETTABLEKS                       R4 R1 K3 ["Adornee"]
       19 GETTABLEKS                       R4 R4 K4 ["CFrame"]
       21 GETTABLEKS                       R6 R1 K4 ["CFrame"]
       23 NAMECALL                         R4 R4 K5 ["ToWorldSpace"]
       25 CALL                             R4 2 1
       26 GETTABLEKS                       R4 R4 K6 ["Position"]
       28 SETLIST                          R3 R4 1 [1]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_20:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOT                        R3 ; [+2]
        2 GETTABLE                         R4 R0 R1
        3 GETTABLE                         R3 R4 R2
        4 RETURN                           R3 1

PROTO_21:
        0 GETTABLE                         R4 R3 R1
        1 JUMPIFNOT                        R4 ; [+2]
        2 GETTABLE                         R5 R3 R1
        3 GETTABLE                         R4 R5 R2
        4 JUMPIFNOT                        R4 ; [+22]
        5 MOVE                             R5 R4
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETTABLEKS                       R11 R9 K0 ["MeshName"]
       11 GETTABLE                         R10 R0 R11
       12 JUMPIF                           R10 ; [+5]
       13 GETTABLEKS                       R10 R9 K0 ["MeshName"]
       15 NEWTABLE                         R11 0 0
       17 SETTABLE                         R11 R0 R10
       18 GETTABLEKS                       R11 R9 K0 ["MeshName"]
       20 GETTABLE                         R10 R0 R11
       21 GETTABLEKS                       R11 R9 K1 ["Index"]
       23 LOADB                            R12 1
       24 SETTABLE                         R12 R10 R11
       25 FORGLOOP                         R5 2 ; [-17]
       27 GETTABLE                         R5 R0 R1
       28 JUMPIF                           R5 ; [+3]
       29 NEWTABLE                         R5 0 0
       31 SETTABLE                         R5 R0 R1
       32 GETTABLE                         R5 R0 R1
       33 LOADB                            R6 1
       34 SETTABLE                         R6 R5 R2
       35 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["Could not get positions: Context was nil."]
       15 GETIMPORT                        R2 K2 [assert]
       17 CALL                             R2 2 0
       18 DUPCLOSURE                       R2 K4 [PROTO_20]
       19 DUPCLOSURE                       R3 K5 [PROTO_21]
       20 DUPTABLE                         R4 K8 [{"Positions", "Edges"}]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R4 K6 ["Positions"]
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R4 K7 ["Edges"]
       29 NAMECALL                         R5 R1 K9 ["getVertexData"]
       31 CALL                             R5 1 1
       32 NAMECALL                         R6 R1 K10 ["getSeamData"]
       34 CALL                             R6 1 1
       35 NEWTABLE                         R7 0 0
       37 MOVE                             R8 R5
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
       43 MOVE                             R14 R7
       44 MOVE                             R15 R11
       45 GETIMPORT                        R13 K13 [table.insert]
       47 CALL                             R13 2 0
       48 FORGLOOP                         R8 1 ; [-8]
       50 GETIMPORT                        R8 K15 [table.sort]
       52 MOVE                             R9 R7
       53 CALL                             R8 1 0
       54 NEWTABLE                         R8 0 0
       56 MOVE                             R9 R7
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 GETTABLE                         R14 R5 R13
       61 GETTABLEKS                       R15 R4 K6 ["Positions"]
       63 NEWTABLE                         R16 0 0
       65 SETTABLE                         R16 R15 R13
       66 MOVE                             R15 R14
       67 LOADNIL                          R16
       68 LOADNIL                          R17
       69 FORGPREP                         R15
       70 GETTABLE                         R20 R8 R13
       71 JUMPIFNOT                        R20 ; [+2]
       72 GETTABLE                         R21 R8 R13
       73 GETTABLE                         R20 R21 R18
       74 JUMPIF                           R20 ; [+10]
       75 MOVE                             R20 R3
       76 MOVE                             R21 R8
       77 MOVE                             R22 R13
       78 MOVE                             R23 R18
       79 MOVE                             R24 R6
       80 CALL                             R20 4 0
       81 GETTABLEKS                       R21 R4 K6 ["Positions"]
       83 GETTABLE                         R20 R21 R13
       84 SETTABLE                         R19 R20 R18
       85 FORGLOOP                         R15 2 ; [-16]
       87 FORGLOOP                         R9 2 ; [-28]
       89 RETURN                           R4 1

PROTO_23:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R3 K1 [error]
        3 LOADK                            R4 K2 ["Could not add context: Context was nil."]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R2 K3 ["Positions"]
        8 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       10 LOADK                            R5 K4 ["ControlPointLocationData missing array at key: Positions"]
       11 GETIMPORT                        R3 K6 [assert]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R4 R2 K7 ["Edges"]
       16 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       18 LOADK                            R5 K8 ["ControlPointLocationData missing array at key: Edges"]
       19 GETIMPORT                        R3 K6 [assert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R4 0
       23 GETTABLE                         R3 R4 R1
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETIMPORT                        R3 K1 [error]
       27 LOADK                            R4 K9 ["Context was already added to the tool."]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 0
       31 NEWTABLE                         R4 2 0
       33 SETTABLEKS                       R2 R4 K10 ["ControlPointLocationData"]
       35 GETUPVAL                         R5 1
       36 MOVE                             R6 R2
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K11 ["ControlPointLocationDataBackup"]
       40 SETTABLE                         R4 R3 R1
       41 RETURN                           R0 0

PROTO_24:
        0 SETGLOBAL                        R1 K0 ["_mouse"]
        2 RETURN                           R0 0

PROTO_25:
        0 GETGLOBAL                        R1 K0 ["_mouse"]
        2 RETURN                           R1 1

PROTO_26:
        0 SETGLOBAL                        R1 K0 ["_radius"]
        2 RETURN                           R0 0

PROTO_27:
        0 GETGLOBAL                        R1 K0 ["_radius"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_29:
        0 JUMPIF                           R1 ; [+3]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 0
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+5]
        7 GETIMPORT                        R3 K1 [error]
        9 LOADK                            R4 K2 ["No tool state found for this context. Context was not changed. Try calling AddContext(context, controlPointLocationData) before invoking this method."]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 2
       13 JUMPIFEQ                         R1 R3 ; [+39]
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 GETTABLEKS                       R5 R2 K3 ["ControlPointLocationData"]
       19 GETTABLEKS                       R6 R2 K4 ["ControlPointLocationDataBackup"]
       21 CALL                             R3 3 0
       22 NAMECALL                         R3 R0 K5 ["saveState"]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 3
       26 JUMPIFNOT                        R3 ; [+26]
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K6 ["new"]
       30 GETUPVAL                         R4 2
       31 CALL                             R3 1 1
       32 SETUPVAL                         R3 4
       33 GETUPVAL                         R3 7
       34 GETTABLEKS                       R3 R3 K6 ["new"]
       36 GETUPVAL                         R4 2
       37 CALL                             R3 1 1
       38 SETUPVAL                         R3 6
       39 GETUPVAL                         R3 9
       40 GETTABLEKS                       R3 R3 K6 ["new"]
       42 GETUPVAL                         R4 2
       43 CALL                             R3 1 1
       44 SETUPVAL                         R3 8
       45 GETUPVAL                         R3 11
       46 GETTABLEKS                       R3 R3 K6 ["new"]
       48 CALL                             R3 0 1
       49 SETUPVAL                         R3 10
       50 NAMECALL                         R3 R0 K7 ["render"]
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_31:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIF                           R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 2
        7 JUMPIFNOT                        R2 ; [+26]
        8 GETUPVAL                         R2 4
        9 GETTABLEKS                       R2 R2 K0 ["new"]
       11 GETUPVAL                         R3 2
       12 CALL                             R2 1 1
       13 SETUPVAL                         R2 3
       14 GETUPVAL                         R2 6
       15 GETTABLEKS                       R2 R2 K0 ["new"]
       17 GETUPVAL                         R3 2
       18 CALL                             R2 1 1
       19 SETUPVAL                         R2 5
       20 GETUPVAL                         R2 8
       21 GETTABLEKS                       R2 R2 K0 ["new"]
       23 GETUPVAL                         R3 2
       24 CALL                             R2 1 1
       25 SETUPVAL                         R2 7
       26 GETUPVAL                         R2 10
       27 GETTABLEKS                       R2 R2 K0 ["new"]
       29 CALL                             R2 0 1
       30 SETUPVAL                         R2 9
       31 NAMECALL                         R2 R0 K1 ["render"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_32:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["Could not remove context: Context was nil."]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R1
        8 JUMPIF                           R2 ; [+5]
        9 GETIMPORT                        R2 K1 [error]
       11 LOADK                            R3 K3 ["Context not found in tool."]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 JUMPIFNOTEQ                      R1 R2 ; [+3]
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 0
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K0 ["resetVertexData"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 NEWTABLE                         R2 1 0
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K1 ["ControlPointLocationData"]
       15 LOADB                            R3 0
       16 CALL                             R1 2 0
       17 NAMECALL                         R1 R0 K2 ["addWaypoint"]
       19 CALL                             R1 1 0
       20 NAMECALL                         R1 R0 K3 ["render"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 4
       24 NAMECALL                         R1 R1 K4 ["Fire"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["resetVertexDataTo"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 2
       17 NEWTABLE                         R3 1 0
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R5 R0 K4 ["getDedupedPositionsFromContext"]
       23 CALL                             R5 2 -1
       24 CALL                             R4 -1 1
       25 SETTABLEKS                       R4 R3 K5 ["ControlPointLocationData"]
       27 LOADB                            R4 0
       28 CALL                             R2 2 0
       29 NAMECALL                         R2 R0 K6 ["addWaypoint"]
       31 CALL                             R2 1 0
       32 NAMECALL                         R2 R0 K7 ["render"]
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 4
       36 NAMECALL                         R2 R2 K8 ["Fire"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_36:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["Fire"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_37:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+22]
        4 LOADB                            R1 0
        5 GETUPVAL                         R2 1
        6 JUMPIFEQKB                       R2 FALSE ; [+18]
        8 LOADB                            R1 0
        9 GETUPVAL                         R2 2
       10 JUMPIFEQKNIL                     R2 ; [+14]
       12 LOADB                            R1 0
       13 GETUPVAL                         R2 3
       14 JUMPIFEQKNIL                     R2 ; [+10]
       16 LOADB                            R1 0
       17 GETUPVAL                         R2 4
       18 JUMPIFEQKNIL                     R2 ; [+6]
       20 GETUPVAL                         R2 5
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_38:
        0 NAMECALL                         R1 R0 K0 ["shouldRender"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"FolderChangedCallback"}]
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K1 ["FolderChangedCallback"]
       10 NAMECALL                         R1 R1 K3 ["render"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R3 K11 [{"ControlPointPositions", "Adornees", "Transparency", "IsSelected", "IsHovered", "SelectedMesh", "FolderChangedCallback", "CenterHoveredPoint"}]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K12 ["Positions"]
       18 SETTABLEKS                       R4 R3 K4 ["ControlPointPositions"]
       20 GETUPVAL                         R4 0
       21 SETTABLEKS                       R4 R3 K5 ["Adornees"]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K6 ["Transparency"]
       26 GETUPVAL                         R4 5
       27 SETTABLEKS                       R4 R3 K7 ["IsSelected"]
       29 GETUPVAL                         R4 6
       30 SETTABLEKS                       R4 R3 K8 ["IsHovered"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K9 ["SelectedMesh"]
       35 GETUPVAL                         R4 1
       36 SETTABLEKS                       R4 R3 K1 ["FolderChangedCallback"]
       38 GETUPVAL                         R4 8
       39 SETTABLEKS                       R4 R3 K10 ["CenterHoveredPoint"]
       41 NAMECALL                         R1 R1 K3 ["render"]
       43 CALL                             R1 2 0
       44 GETUPVAL                         R1 9
       45 DUPTABLE                         R3 K14 [{"ControlPointPositions", "ControlPointEdges", "Adornees", "Transparency", "SelectedMesh", "FolderChangedCallback"}]
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R4 R4 K12 ["Positions"]
       49 SETTABLEKS                       R4 R3 K4 ["ControlPointPositions"]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K15 ["Edges"]
       54 SETTABLEKS                       R4 R3 K13 ["ControlPointEdges"]
       56 GETUPVAL                         R4 0
       57 SETTABLEKS                       R4 R3 K5 ["Adornees"]
       59 GETUPVAL                         R4 4
       60 SETTABLEKS                       R4 R3 K6 ["Transparency"]
       62 GETUPVAL                         R4 7
       63 SETTABLEKS                       R4 R3 K9 ["SelectedMesh"]
       65 GETUPVAL                         R4 1
       66 SETTABLEKS                       R4 R3 K1 ["FolderChangedCallback"]
       68 NAMECALL                         R1 R1 K3 ["render"]
       70 CALL                             R1 2 0
       71 GETUPVAL                         R1 10
       72 DUPTABLE                         R3 K21 [{"Context", "Transparency", "WireColor", "SegmentColor", "ToolAdornees", "Visible", "FolderChangedCallback"}]
       73 GETUPVAL                         R4 11
       74 SETTABLEKS                       R4 R3 K16 ["Context"]
       76 GETUPVAL                         R4 4
       77 SETTABLEKS                       R4 R3 K6 ["Transparency"]
       79 GETUPVAL                         R4 12
       80 SETTABLEKS                       R4 R3 K17 ["WireColor"]
       82 GETUPVAL                         R4 13
       83 SETTABLEKS                       R4 R3 K18 ["SegmentColor"]
       85 GETUPVAL                         R4 0
       86 SETTABLEKS                       R4 R3 K19 ["ToolAdornees"]
       88 GETUPVAL                         R4 14
       89 SETTABLEKS                       R4 R3 K20 ["Visible"]
       91 GETUPVAL                         R4 1
       92 SETTABLEKS                       R4 R3 K1 ["FolderChangedCallback"]
       94 NAMECALL                         R1 R1 K3 ["render"]
       96 CALL                             R1 2 0
       97 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R1 ; [+9]
        3 SETUPVAL                         R1 0
        4 NAMECALL                         R2 R0 K0 ["render"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K1 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 NEWTABLE                         R1 0 0
        4 SETUPVAL                         R1 1
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R1 ; [+9]
        3 SETUPVAL                         R1 0
        4 NAMECALL                         R2 R0 K0 ["render"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K1 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R1 ; [+9]
        3 SETUPVAL                         R1 0
        4 NAMECALL                         R2 R0 K0 ["render"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K1 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R1 ; [+8]
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 0
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K0 ["Fire"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_48:
        0 RETURN                           R0 0

PROTO_49:
        0 RETURN                           R0 0

PROTO_50:
        0 RETURN                           R0 0

PROTO_51:
        0 RETURN                           R0 0

PROTO_52:
        0 DUPTABLE                         R1 K2 [{"ToolStateData", "VertexData"}]
        1 NAMECALL                         R2 R0 K3 ["_getCurrentToolStateData"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["ToolStateData"]
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K4 ["getVertexData"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["VertexData"]
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_54:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Saved State cannot be nil. Is there an active context?"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 0
       13 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       15 GETIMPORT                        R1 K5 [table.insert]
       17 CALL                             R1 2 0
       18 NEWTABLE                         R1 0 0
       20 SETUPVAL                         R1 2
       21 NAMECALL                         R1 R0 K6 ["saveState"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+46]
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K2 [{"ToolStateData", "VertexData"}]
        7 NAMECALL                         R4 R0 K3 ["_getCurrentToolStateData"]
        9 CALL                             R4 1 1
       10 SETTABLEKS                       R4 R3 K0 ["ToolStateData"]
       12 GETUPVAL                         R4 2
       13 NAMECALL                         R4 R4 K4 ["getVertexData"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K1 ["VertexData"]
       18 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       20 GETIMPORT                        R1 K7 [table.insert]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R2 0
       24 GETUPVAL                         R4 0
       25 LENGTH                           R3 R4
       26 GETTABLE                         R1 R2 R3
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R4 R1 K1 ["VertexData"]
       30 NAMECALL                         R2 R2 K8 ["updateVertexData"]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R3 R1 K0 ["ToolStateData"]
       36 LOADB                            R4 0
       37 CALL                             R2 2 0
       38 NAMECALL                         R2 R0 K9 ["saveState"]
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R4 0
       43 LENGTH                           R3 R4
       44 LOADNIL                          R4
       45 SETTABLE                         R4 R2 R3
       46 GETUPVAL                         R2 4
       47 NAMECALL                         R2 R2 K10 ["Fire"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+46]
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K2 [{"ToolStateData", "VertexData"}]
        7 NAMECALL                         R4 R0 K3 ["_getCurrentToolStateData"]
        9 CALL                             R4 1 1
       10 SETTABLEKS                       R4 R3 K0 ["ToolStateData"]
       12 GETUPVAL                         R4 2
       13 NAMECALL                         R4 R4 K4 ["getVertexData"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K1 ["VertexData"]
       18 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       20 GETIMPORT                        R1 K7 [table.insert]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R2 0
       24 GETUPVAL                         R4 0
       25 LENGTH                           R3 R4
       26 GETTABLE                         R1 R2 R3
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R4 R1 K1 ["VertexData"]
       30 NAMECALL                         R2 R2 K8 ["updateVertexData"]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R3 R1 K0 ["ToolStateData"]
       36 LOADB                            R4 0
       37 CALL                             R2 2 0
       38 NAMECALL                         R2 R0 K9 ["saveState"]
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R4 0
       43 LENGTH                           R3 R4
       44 LOADNIL                          R4
       45 SETTABLE                         R4 R2 R3
       46 GETUPVAL                         R2 4
       47 NAMECALL                         R2 R2 K10 ["Fire"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 RETURN                           R1 2

PROTO_58:
        0 LOADB                            R1 1
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 LENGTH                           R2 R0
        4 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_59:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 DUPCLOSURE                       R3 K3 [PROTO_58]
        9 GETUPVAL                         R6 1
       10 LOADB                            R5 1
       11 JUMPIFEQKNIL                     R6 ; [+6]
       13 LENGTH                           R7 R6
       14 JUMPIFEQKN                       R7 K4 [0] ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 JUMPIFNOT                        R5 ; [+9]
       19 GETUPVAL                         R6 2
       20 LOADB                            R5 1
       21 JUMPIFEQKNIL                     R6 ; [+6]
       23 LENGTH                           R7 R6
       24 JUMPIFEQKN                       R7 K4 [0] ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       30 LOADK                            R6 K5 ["Trying to restore edit history when existing edit history is not empty!"]
       31 GETIMPORT                        R4 K2 [assert]
       33 CALL                             R4 2 0
       34 SETUPVAL                         R1 1
       35 SETUPVAL                         R2 2
       36 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_64:
        0 LOADK                            R2 K0 ["GetVertexWeights must be implemented for VertexToolBase child classes."]
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K2 [assert]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R2 1
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 SETUPVAL                         R2 0
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 0
        6 RETURN                           R0 0

PROTO_67:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+16]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R1
        9 NEWTABLE                         R6 0 0
       11 NAMECALL                         R3 R3 K0 ["getSelectablesForMesh"]
       13 CALL                             R3 3 0
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 MOVE                             R5 R1
       17 NAMECALL                         R3 R3 K0 ["getSelectablesForMesh"]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["getSelectables"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETIMPORT                        R1 K2 [error]
        9 LOADK                            R2 K3 ["No Control_pointViews exist that can be selected."]
       10 CALL                             R1 1 0
       11 NEWTABLE                         R1 0 0
       13 RETURN                           R1 1

PROTO_69:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_70:
        0 SETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["render"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["translatePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R2
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_72:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["rotatePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R7 3
        7 MOVE                             R8 R0
        8 MOVE                             R9 R2
        9 CALL                             R3 6 -1
       10 RETURN                           R3 -1

PROTO_73:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["translatePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R2
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_74:
        0 GETUPVAL                         R5 0
        1 GETIMPORT                        R6 K3 [Enum.RibbonTool.Move]
        3 JUMPIFNOTEQ                      R5 R6 ; [+7]
        5 GETUPVAL                         R5 1
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CALL                             R5 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R5 0
       12 GETIMPORT                        R6 K5 [Enum.RibbonTool.Rotate]
       14 JUMPIFNOTEQ                      R5 R6 ; [+9]
       16 GETUPVAL                         R5 1
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R2
       22 CALL                             R5 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R5 1
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R1
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["scalePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 MOVE                             R7 R0
        7 MOVE                             R8 R2
        8 CALL                             R3 5 -1
        9 RETURN                           R3 -1

PROTO_76:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R1
        5 CALL                             R3 1 0
        6 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_79:
        0 NEWTABLE                         R1 64 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["new"]
       12 CALL                             R2 0 1
       13 NEWTABLE                         R3 0 0
       15 NEWTABLE                         R4 0 0
       17 LOADNIL                          R5
       18 GETIMPORT                        R6 K6 [Enum.RibbonTool.Select]
       20 LOADNIL                          R7
       21 LOADB                            R8 0
       22 LOADN                            R9 0
       23 NEWTABLE                         R10 0 0
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K2 ["new"]
       28 CALL                             R11 0 1
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 LOADNIL                          R14
       32 LOADNIL                          R15
       33 LOADNIL                          R16
       34 NEWTABLE                         R17 0 0
       36 LOADNIL                          R18
       37 LOADNIL                          R19
       38 NEWTABLE                         R20 0 0
       40 NEWTABLE                         R21 0 0
       42 LOADNIL                          R22
       43 GETUPVAL                         R23 1
       44 GETTABLEKS                       R23 R23 K2 ["new"]
       46 CALL                             R23 0 1
       47 GETUPVAL                         R24 1
       48 GETTABLEKS                       R24 R24 K2 ["new"]
       50 CALL                             R24 0 1
       51 NEWTABLE                         R25 0 0
       53 LOADN                            R26 0
       54 LOADB                            R27 1
       55 LOADNIL                          R28
       56 NEWCLOSURE                       R29 P0
       57 CAPTURE                          REF R12
       58 NEWCLOSURE                       R30 P1
       59 CAPTURE                          REF R21
       60 NEWCLOSURE                       R31 P2
       61 CAPTURE                          REF R19
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          REF R5
       64 CAPTURE                          REF R3
       65 CAPTURE                          REF R21
       66 CAPTURE                          VAL R0
       67 NEWCLOSURE                       R32 P3
       68 CAPTURE                          REF R21
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          REF R5
       71 CAPTURE                          REF R20
       72 CAPTURE                          REF R9
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R23
       77 NEWCLOSURE                       R33 P4
       78 CAPTURE                          REF R7
       79 CAPTURE                          REF R18
       80 CAPTURE                          REF R1
       81 CAPTURE                          REF R28
       82 NEWCLOSURE                       R34 P5
       83 CAPTURE                          REF R1
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          REF R5
       86 CAPTURE                          REF R18
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          REF R7
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          REF R28
       91 CAPTURE                          UPVAL U9
       92 NEWCLOSURE                       R35 P6
       93 CAPTURE                          VAL R33
       94 CAPTURE                          REF R1
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          REF R5
       97 CAPTURE                          REF R18
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          REF R7
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          REF R28
      102 CAPTURE                          UPVAL U9
      103 CAPTURE                          VAL R0
      104 NEWCLOSURE                       R36 P7
      105 CAPTURE                          VAL R33
      106 CAPTURE                          REF R20
      107 CAPTURE                          REF R21
      108 CAPTURE                          REF R22
      109 CAPTURE                          VAL R23
      110 CAPTURE                          REF R10
      111 CAPTURE                          REF R17
      112 CAPTURE                          REF R19
      113 CAPTURE                          REF R5
      114 CAPTURE                          REF R3
      115 CAPTURE                          REF R4
      116 NEWCLOSURE                       R37 P8
      117 CAPTURE                          REF R5
      118 CAPTURE                          REF R25
      119 CAPTURE                          UPVAL U10
      120 CAPTURE                          REF R3
      121 CAPTURE                          REF R4
      122 CAPTURE                          VAL R0
      123 NEWCLOSURE                       R38 P9
      124 CAPTURE                          VAL R37
      125 SETTABLEKS                       R38 R0 K7 ["_setCurrentToolStateData"]
      127 NEWCLOSURE                       R38 P10
      128 CAPTURE                          REF R3
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R37
      131 SETTABLEKS                       R38 R0 K8 ["updateCurrentToolStateData"]
      133 NEWCLOSURE                       R38 P11
      134 CAPTURE                          REF R5
      135 CAPTURE                          REF R25
      136 CAPTURE                          UPVAL U10
      137 SETTABLEKS                       R38 R0 K9 ["_getCurrentToolStateData"]
      139 NEWCLOSURE                       R38 P12
      140 CAPTURE                          UPVAL U10
      141 CAPTURE                          REF R21
      142 SETTABLEKS                       R38 R0 K10 ["_getSelectedControlWeights"]
      144 NEWCLOSURE                       R38 P13
      145 CAPTURE                          UPVAL U10
      146 CAPTURE                          REF R3
      147 SETTABLEKS                       R38 R0 K11 ["_getcontrolPointLocationData"]
      149 NEWCLOSURE                       R38 P14
      150 CAPTURE                          REF R21
      151 CAPTURE                          UPVAL U10
      152 SETTABLEKS                       R38 R0 K12 ["_setSelectedControlWeights"]
      154 NEWCLOSURE                       R38 P15
      155 CAPTURE                          REF R3
      156 CAPTURE                          UPVAL U10
      157 SETTABLEKS                       R38 R0 K13 ["_setControlPointLocationData"]
      159 NEWCLOSURE                       R38 P16
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          REF R13
      162 CAPTURE                          REF R16
      163 SETTABLEKS                       R38 R0 K14 ["setHoveredPoint"]
      165 NEWCLOSURE                       R38 P17
      166 CAPTURE                          UPVAL U4
      167 CAPTURE                          REF R14
      168 SETTABLEKS                       R38 R0 K15 ["setMannequin"]
      170 NEWCLOSURE                       R38 P18
      171 CAPTURE                          UPVAL U4
      172 CAPTURE                          REF R14
      173 SETTABLEKS                       R38 R0 K16 ["getMannequin"]
      175 NEWCLOSURE                       R38 P19
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          REF R16
      178 SETTABLEKS                       R38 R0 K17 ["setOnChangeSelectedPositions"]
      180 DUPCLOSURE                       R38 K18 [PROTO_22]
      181 CAPTURE                          UPVAL U4
      182 SETTABLEKS                       R38 R0 K19 ["getDedupedPositionsFromContext"]
      184 NEWCLOSURE                       R38 P21
      185 CAPTURE                          REF R25
      186 CAPTURE                          UPVAL U10
      187 SETTABLEKS                       R38 R0 K20 ["addContext"]
      189 DUPCLOSURE                       R38 K21 [PROTO_24]
      190 SETTABLEKS                       R38 R0 K22 ["setMouse"]
      192 DUPCLOSURE                       R38 K23 [PROTO_25]
      193 SETTABLEKS                       R38 R0 K24 ["getMouse"]
      195 DUPCLOSURE                       R38 K25 [PROTO_26]
      196 SETTABLEKS                       R38 R0 K26 ["setRadius"]
      198 DUPCLOSURE                       R38 K27 [PROTO_27]
      199 SETTABLEKS                       R38 R0 K28 ["getRadius"]
      201 NEWCLOSURE                       R38 P26
      202 CAPTURE                          REF R5
      203 SETTABLEKS                       R38 R0 K29 ["getCurrentContext"]
      205 NEWCLOSURE                       R38 P27
      206 CAPTURE                          VAL R36
      207 CAPTURE                          REF R25
      208 CAPTURE                          REF R5
      209 CAPTURE                          REF R8
      210 CAPTURE                          REF R1
      211 CAPTURE                          UPVAL U6
      212 CAPTURE                          REF R18
      213 CAPTURE                          UPVAL U7
      214 CAPTURE                          REF R7
      215 CAPTURE                          UPVAL U8
      216 CAPTURE                          REF R28
      217 CAPTURE                          UPVAL U9
      218 SETTABLEKS                       R38 R0 K30 ["setCurrentContext"]
      220 NEWCLOSURE                       R38 P28
      221 CAPTURE                          REF R8
      222 SETTABLEKS                       R38 R0 K31 ["getEnabled"]
      224 NEWCLOSURE                       R38 P29
      225 CAPTURE                          REF R8
      226 CAPTURE                          VAL R33
      227 CAPTURE                          REF R5
      228 CAPTURE                          REF R1
      229 CAPTURE                          UPVAL U6
      230 CAPTURE                          REF R18
      231 CAPTURE                          UPVAL U7
      232 CAPTURE                          REF R7
      233 CAPTURE                          UPVAL U8
      234 CAPTURE                          REF R28
      235 CAPTURE                          UPVAL U9
      236 SETTABLEKS                       R38 R0 K32 ["setEnabled"]
      238 NEWCLOSURE                       R38 P30
      239 CAPTURE                          REF R25
      240 CAPTURE                          REF R5
      241 CAPTURE                          VAL R36
      242 SETTABLEKS                       R38 R0 K33 ["removeContext"]
      244 NEWCLOSURE                       R38 P31
      245 CAPTURE                          REF R5
      246 CAPTURE                          VAL R37
      247 CAPTURE                          UPVAL U10
      248 CAPTURE                          REF R4
      249 CAPTURE                          VAL R2
      250 SETTABLEKS                       R38 R0 K34 ["resetCurrentContext"]
      252 NEWCLOSURE                       R38 P32
      253 CAPTURE                          UPVAL U4
      254 CAPTURE                          REF R5
      255 CAPTURE                          VAL R37
      256 CAPTURE                          UPVAL U10
      257 CAPTURE                          VAL R2
      258 SETTABLEKS                       R38 R0 K35 ["resetCurrentContextTo"]
      260 NEWCLOSURE                       R38 P33
      261 CAPTURE                          REF R6
      262 SETTABLEKS                       R38 R0 K36 ["getCurrentHandle"]
      264 NEWCLOSURE                       R38 P34
      265 CAPTURE                          REF R6
      266 CAPTURE                          VAL R11
      267 SETTABLEKS                       R38 R0 K37 ["setCurrentHandle"]
      269 NEWCLOSURE                       R38 P35
      270 CAPTURE                          REF R5
      271 CAPTURE                          REF R8
      272 CAPTURE                          REF R1
      273 CAPTURE                          REF R18
      274 CAPTURE                          REF R7
      275 CAPTURE                          REF R28
      276 SETTABLEKS                       R38 R0 K38 ["shouldRender"]
      278 NEWCLOSURE                       R38 P36
      279 CAPTURE                          REF R1
      280 CAPTURE                          VAL R35
      281 CAPTURE                          REF R18
      282 CAPTURE                          REF R3
      283 CAPTURE                          REF R26
      284 CAPTURE                          VAL R30
      285 CAPTURE                          VAL R29
      286 CAPTURE                          REF R22
      287 CAPTURE                          REF R13
      288 CAPTURE                          REF R7
      289 CAPTURE                          REF R28
      290 CAPTURE                          REF R5
      291 CAPTURE                          UPVAL U11
      292 CAPTURE                          UPVAL U12
      293 CAPTURE                          REF R27
      294 SETTABLEKS                       R38 R0 K39 ["render"]
      296 NEWCLOSURE                       R38 P37
      297 CAPTURE                          REF R22
      298 SETTABLEKS                       R38 R0 K40 ["getSelectedMesh"]
      300 NEWCLOSURE                       R38 P38
      301 CAPTURE                          REF R22
      302 CAPTURE                          VAL R24
      303 SETTABLEKS                       R38 R0 K41 ["setSelectedMesh"]
      305 NEWCLOSURE                       R38 P39
      306 CAPTURE                          VAL R36
      307 CAPTURE                          REF R25
      308 SETTABLEKS                       R38 R0 K42 ["cleanup"]
      310 NEWCLOSURE                       R38 P40
      311 CAPTURE                          REF R27
      312 SETTABLEKS                       R38 R0 K43 ["getWireframeEnabled"]
      314 NEWCLOSURE                       R38 P41
      315 CAPTURE                          REF R27
      316 CAPTURE                          VAL R24
      317 SETTABLEKS                       R38 R0 K44 ["setWireframeEnabled"]
      319 NEWCLOSURE                       R38 P42
      320 CAPTURE                          REF R26
      321 SETTABLEKS                       R38 R0 K45 ["getTransparency"]
      323 NEWCLOSURE                       R38 P43
      324 CAPTURE                          REF R26
      325 CAPTURE                          VAL R24
      326 SETTABLEKS                       R38 R0 K46 ["setTransparency"]
      328 NEWCLOSURE                       R38 P44
      329 CAPTURE                          REF R9
      330 SETTABLEKS                       R38 R0 K47 ["getFalloff"]
      332 NEWCLOSURE                       R38 P45
      333 CAPTURE                          REF R9
      334 CAPTURE                          VAL R32
      335 CAPTURE                          VAL R24
      336 SETTABLEKS                       R38 R0 K48 ["setFalloff"]
      338 DUPCLOSURE                       R38 K49 [PROTO_48]
      339 SETTABLEKS                       R38 R0 K50 ["setMirrorPlane"]
      341 DUPCLOSURE                       R38 K51 [PROTO_49]
      342 SETTABLEKS                       R38 R0 K52 ["getMirrorPlane"]
      344 DUPCLOSURE                       R38 K53 [PROTO_50]
      345 SETTABLEKS                       R38 R0 K54 ["setMirroringEnabled"]
      347 DUPCLOSURE                       R38 K55 [PROTO_51]
      348 SETTABLEKS                       R38 R0 K56 ["getMirroringEnabled"]
      350 NEWCLOSURE                       R38 P50
      351 CAPTURE                          REF R19
      352 CAPTURE                          REF R5
      353 SETTABLEKS                       R38 R0 K57 ["saveState"]
      355 NEWCLOSURE                       R38 P51
      356 CAPTURE                          REF R19
      357 SETTABLEKS                       R38 R0 K58 ["getState"]
      359 NEWCLOSURE                       R38 P52
      360 CAPTURE                          REF R19
      361 CAPTURE                          REF R17
      362 CAPTURE                          REF R10
      363 SETTABLEKS                       R38 R0 K59 ["addWaypoint"]
      365 NEWCLOSURE                       R38 P53
      366 CAPTURE                          REF R17
      367 CAPTURE                          REF R10
      368 CAPTURE                          REF R5
      369 CAPTURE                          VAL R37
      370 CAPTURE                          VAL R2
      371 SETTABLEKS                       R38 R0 K60 ["undo"]
      373 NEWCLOSURE                       R38 P54
      374 CAPTURE                          REF R10
      375 CAPTURE                          REF R17
      376 CAPTURE                          REF R5
      377 CAPTURE                          VAL R37
      378 CAPTURE                          VAL R2
      379 SETTABLEKS                       R38 R0 K61 ["redo"]
      381 NEWCLOSURE                       R38 P55
      382 CAPTURE                          UPVAL U4
      383 CAPTURE                          REF R17
      384 CAPTURE                          REF R10
      385 SETTABLEKS                       R38 R0 K62 ["getUndoRedoStack"]
      387 NEWCLOSURE                       R38 P56
      388 CAPTURE                          UPVAL U4
      389 CAPTURE                          REF R17
      390 CAPTURE                          REF R10
      391 SETTABLEKS                       R38 R0 K63 ["restoreUndoRedoStack"]
      393 NEWCLOSURE                       R38 P57
      394 CAPTURE                          VAL R23
      395 SETTABLEKS                       R38 R0 K64 ["getSelectionChangedSignal"]
      397 NEWCLOSURE                       R38 P58
      398 CAPTURE                          VAL R24
      399 SETTABLEKS                       R38 R0 K65 ["getToolDisplayChangedSignal"]
      401 NEWCLOSURE                       R38 P59
      402 CAPTURE                          VAL R11
      403 SETTABLEKS                       R38 R0 K66 ["getDraggerHandleChangedSignal"]
      405 NEWCLOSURE                       R38 P60
      406 CAPTURE                          VAL R2
      407 SETTABLEKS                       R38 R0 K67 ["getBoundsChangedSignal"]
      409 DUPCLOSURE                       R38 K68 [PROTO_64]
      410 SETTABLEKS                       R38 R0 K69 ["getVertexWeights"]
      412 NEWCLOSURE                       R38 P62
      413 CAPTURE                          UPVAL U10
      414 CAPTURE                          REF R20
      415 SETTABLEKS                       R38 R0 K70 ["getSelected"]
      417 NEWCLOSURE                       R38 P63
      418 CAPTURE                          REF R20
      419 CAPTURE                          UPVAL U10
      420 CAPTURE                          VAL R32
      421 SETTABLEKS                       R38 R0 K71 ["setSelected"]
      423 NEWCLOSURE                       R38 P64
      424 CAPTURE                          REF R18
      425 CAPTURE                          UPVAL U4
      426 SETTABLEKS                       R38 R0 K72 ["getSelectablesForMesh"]
      428 NEWCLOSURE                       R38 P65
      429 CAPTURE                          REF R18
      430 SETTABLEKS                       R38 R0 K73 ["getSelectables"]
      432 NEWCLOSURE                       R38 P66
      433 CAPTURE                          UPVAL U4
      434 CAPTURE                          REF R13
      435 SETTABLEKS                       R38 R0 K74 ["getHoveredPoint"]
      437 NEWCLOSURE                       R38 P67
      438 CAPTURE                          REF R12
      439 SETTABLEKS                       R38 R0 K75 ["setHovered"]
      441 NEWCLOSURE                       R38 P68
      442 CAPTURE                          REF R6
      443 CAPTURE                          VAL R31
      444 CAPTURE                          UPVAL U2
      445 SETTABLEKS                       R38 R0 K76 ["transformSelected"]
      447 NEWCLOSURE                       R38 P69
      448 CAPTURE                          VAL R31
      449 CAPTURE                          UPVAL U2
      450 SETTABLEKS                       R38 R0 K77 ["scaleSelected"]
      452 NEWCLOSURE                       R38 P70
      453 CAPTURE                          UPVAL U4
      454 CAPTURE                          REF R15
      455 SETTABLEKS                       R38 R0 K78 ["setMouseStartPosition"]
      457 NEWCLOSURE                       R38 P71
      458 CAPTURE                          UPVAL U4
      459 CAPTURE                          REF R15
      460 SETTABLEKS                       R38 R0 K79 ["getMouseStartPosition"]
      462 CLOSEUPVALS                      R1
      463 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Util"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["deepCopy"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Signal"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K5 [require]
       21 GETTABLEKS                       R5 R1 K8 ["applySymmetryMap"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K5 [require]
       26 GETTABLEKS                       R6 R1 K9 ["softSelectPoints"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R1 K10 ["TransformPointsHelpers"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R1 K11 ["Constants"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R0 K12 ["Views"]
       41 GETIMPORT                        R9 K5 [require]
       43 GETTABLEKS                       R10 R8 K13 ["ControlEdgeViews"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R11 R8 K14 ["ControlPointViews"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R8 K15 ["ToolAdornees"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R8 K16 ["WireframeMeshView"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R14 R0 K17 ["Flags"]
       65 GETTABLEKS                       R14 R14 K18 ["getFFlagAvatarPreviewerCageEditingTools"]
       67 CALL                             R13 1 1
       68 GETTABLEKS                       R14 R7 K19 ["VertexToolBase"]
       70 GETTABLEKS                       R14 R14 K20 ["DefaultWireframeColor"]
       72 GETTABLEKS                       R15 R7 K19 ["VertexToolBase"]
       74 GETTABLEKS                       R15 R15 K21 ["DefaultWireframeSegmentsColor"]
       76 NEWTABLE                         R16 2 0
       78 SETTABLEKS                       R16 R16 K22 ["__index"]
       80 DUPCLOSURE                       R17 K23 [PROTO_79]
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R15
       94 SETTABLEKS                       R17 R16 K24 ["new"]
       96 RETURN                           R16 1
