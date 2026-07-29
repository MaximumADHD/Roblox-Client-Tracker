PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["mainDockWidget"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 JUMPIFNOT                        R3 ; [+8]
        6 LOADK                            R6 K1 ["Plugin"]
        7 LOADK                            R7 K2 ["Name"]
        8 NAMECALL                         R4 R2 K3 ["getText"]
       10 CALL                             R4 3 1
       11 SETTABLEKS                       R4 R3 K4 ["Title"]
       13 RETURN                           R3 1
       14 GETIMPORT                        R4 K7 [DockWidgetPluginGuiInfo.new]
       16 GETIMPORT                        R5 K11 [Enum.InitialDockState.Right]
       18 LOADB                            R6 1
       19 LOADB                            R7 1
       20 LOADN                            R8 450
       21 LOADN                            R9 650
       22 LOADN                            R10 350
       23 LOADN                            R11 300
       24 CALL                             R4 7 1
       25 LOADK                            R7 K12 ["DesignAssist"]
       26 MOVE                             R8 R4
       27 NAMECALL                         R5 R0 K13 ["CreateDockWidgetPluginGuiAsync"]
       29 CALL                             R5 3 1
       30 LOADK                            R8 K1 ["Plugin"]
       31 LOADK                            R9 K2 ["Name"]
       32 NAMECALL                         R6 R2 K3 ["getText"]
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K4 ["Title"]
       37 GETIMPORT                        R6 K16 [Enum.ZIndexBehavior.Sibling]
       39 SETTABLEKS                       R6 R5 K14 ["ZIndexBehavior"]
       41 RETURN                           R5 1

PROTO_1:
        0 LOADK                            R7 K0 ["Plugin"]
        1 LOADK                            R8 K1 ["Button"]
        2 NAMECALL                         R5 R2 K2 ["getText"]
        4 CALL                             R5 3 -1
        5 NAMECALL                         R3 R0 K3 ["CreateToolbar"]
        7 CALL                             R3 -1 1
        8 LOADK                            R6 K4 ["DesignAssistToggle"]
        9 LOADK                            R9 K0 ["Plugin"]
       10 LOADK                            R10 K5 ["Description"]
       11 NAMECALL                         R7 R2 K2 ["getText"]
       13 CALL                             R7 3 1
       14 MOVE                             R8 R1
       15 LOADK                            R11 K0 ["Plugin"]
       16 LOADK                            R12 K1 ["Button"]
       17 NAMECALL                         R9 R2 K2 ["getText"]
       19 CALL                             R9 3 -1
       20 NAMECALL                         R4 R3 K6 ["CreateButton"]
       22 CALL                             R4 -1 1
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K7 ["ClickableWhenViewportHidden"]
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K8 ["Enabled"]
       29 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETTABLEKS                       R2 R0 K0 ["Click"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["Connect"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K2 ["ActivateAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+5]
        7 GETIMPORT                        R4 K3 [warn]
        9 LOADK                            R5 K4 ["[DesignAssist] failed to activate toggle action:"]
       10 MOVE                             R6 R3
       11 CALL                             R4 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getOrCreateWidget"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["createLegacyToggleButton"]
        9 DUPCLOSURE                       R1 K4 [PROTO_3]
       10 SETTABLEKS                       R1 R0 K5 ["connectToolbarToggle"]
       12 DUPCLOSURE                       R1 K6 [PROTO_5]
       13 SETTABLEKS                       R1 R0 K7 ["activateToggleAction"]
       15 RETURN                           R0 1
