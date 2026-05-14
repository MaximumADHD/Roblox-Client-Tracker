PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+5]
        8 LOADK                            R4 K3 ["VisualizationMode"]
        9 NAMECALL                         R2 R0 K4 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["Bad visualizationMode"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 NEWTABLE                         R2 4 0
       20 GETUPVAL                         R3 0
       21 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       23 GETIMPORT                        R1 K9 [setmetatable]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K10 ["new"]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K11 ["_maid"]
       32 SETTABLEKS                       R0 R1 K12 ["_visualizationMode"]
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K13 ["_state"]
       37 GETTABLEKS                       R2 R1 K11 ["_maid"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K10 ["new"]
       42 CALL                             R4 0 -1
       43 NAMECALL                         R2 R2 K14 ["add"]
       45 CALL                             R2 -1 1
       46 SETTABLEKS                       R2 R1 K15 ["changed"]
       48 NAMECALL                         R2 R1 K16 ["_startTracking"]
       50 CALL                             R2 1 0
       51 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_state"]
        7 GETTABLEKS                       R2 R0 K1 ["changed"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETTABLEKS                       R3 R0 K1 ["_visualizationMode"]
        4 LOADK                            R5 K2 ["Name"]
        5 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R3 R3 K4 ["Connect"]
       12 CALL                             R3 2 -1
       13 NAMECALL                         R1 R1 K5 ["giveTask"]
       15 CALL                             R1 -1 0
       16 GETTABLEKS                       R1 R0 K0 ["_maid"]
       18 GETTABLEKS                       R3 R0 K1 ["_visualizationMode"]
       20 LOADK                            R5 K6 ["Title"]
       21 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R3 R3 K4 ["Connect"]
       28 CALL                             R3 2 -1
       29 NAMECALL                         R1 R1 K5 ["giveTask"]
       31 CALL                             R1 -1 0
       32 GETTABLEKS                       R1 R0 K0 ["_maid"]
       34 GETTABLEKS                       R3 R0 K1 ["_visualizationMode"]
       36 LOADK                            R5 K7 ["Enabled"]
       37 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
       39 CALL                             R3 2 1
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R3 R3 K4 ["Connect"]
       44 CALL                             R3 2 -1
       45 NAMECALL                         R1 R1 K5 ["giveTask"]
       47 CALL                             R1 -1 0
       48 GETTABLEKS                       R1 R0 K0 ["_maid"]
       50 GETTABLEKS                       R3 R0 K1 ["_visualizationMode"]
       52 LOADK                            R5 K8 ["ToolTip"]
       53 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
       55 CALL                             R3 2 1
       56 NEWCLOSURE                       R5 P3
       57 CAPTURE                          VAL R0
       58 NAMECALL                         R3 R3 K4 ["Connect"]
       60 CALL                             R3 2 -1
       61 NAMECALL                         R1 R1 K5 ["giveTask"]
       63 CALL                             R1 -1 0
       64 NAMECALL                         R1 R0 K9 ["_updateState"]
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_visualizationMode"]
        2 SETTABLEKS                       R1 R2 K1 ["Enabled"]
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K2 [table.freeze]
        2 DUPTABLE                         R4 K7 [{"name", "title", "enabled", "toolTip"}]
        3 GETTABLEKS                       R5 R0 K8 ["_visualizationMode"]
        5 GETTABLEKS                       R5 R5 K9 ["Name"]
        7 SETTABLEKS                       R5 R4 K3 ["name"]
        9 GETTABLEKS                       R5 R0 K8 ["_visualizationMode"]
       11 GETTABLEKS                       R5 R5 K10 ["Title"]
       13 SETTABLEKS                       R5 R4 K4 ["title"]
       15 GETTABLEKS                       R5 R0 K8 ["_visualizationMode"]
       17 GETTABLEKS                       R5 R5 K11 ["Enabled"]
       19 SETTABLEKS                       R5 R4 K5 ["enabled"]
       21 GETTABLEKS                       R5 R0 K8 ["_visualizationMode"]
       23 GETTABLEKS                       R5 R5 K12 ["ToolTip"]
       25 SETTABLEKS                       R5 R4 K6 ["toolTip"]
       27 CALL                             R3 1 -1
       28 NAMECALL                         R1 R0 K13 ["_setState"]
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Maid"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Signal"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 SETTABLEKS                       R4 R4 K11 ["__index"]
       36 DUPCLOSURE                       R5 K12 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K13 ["new"]
       42 DUPCLOSURE                       R5 K14 [PROTO_1]
       43 SETTABLEKS                       R5 R4 K15 ["getState"]
       45 DUPCLOSURE                       R5 K16 [PROTO_2]
       46 SETTABLEKS                       R5 R4 K17 ["_setState"]
       48 DUPCLOSURE                       R5 K18 [PROTO_7]
       49 SETTABLEKS                       R5 R4 K19 ["_startTracking"]
       51 DUPCLOSURE                       R5 K20 [PROTO_8]
       52 SETTABLEKS                       R5 R4 K21 ["updateVisualizationModeIsEnabled"]
       54 DUPCLOSURE                       R5 K22 [PROTO_9]
       55 SETTABLEKS                       R5 R4 K23 ["_updateState"]
       57 DUPCLOSURE                       R5 K24 [PROTO_10]
       58 SETTABLEKS                       R5 R4 K25 ["destroy"]
       60 RETURN                           R4 1
