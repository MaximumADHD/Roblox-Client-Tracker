PROTO_0:
        0 MOVE                             R4 R1
        1 MOVE                             R5 R1
        2 LOADK                            R6 K0 [""]
        3 LOADNIL                          R7
        4 LOADB                            R8 0
        5 NAMECALL                         R2 R0 K1 ["CreatePluginAction"]
        7 CALL                             R2 6 1
        8 SETTABLEKS                       R1 R2 K2 ["DefaultShortcut"]
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K1 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K1 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R3 R2 R0
        4 JUMPIFNOTEQKNIL                  R3 ; [+14]
        6 GETUPVAL                         R4 1
        7 MOVE                             R7 R0
        8 MOVE                             R8 R0
        9 LOADK                            R9 K1 [""]
       10 LOADNIL                          R10
       11 LOADB                            R11 0
       12 NAMECALL                         R5 R4 K2 ["CreatePluginAction"]
       14 CALL                             R5 6 1
       15 SETTABLEKS                       R0 R5 K3 ["DefaultShortcut"]
       17 MOVE                             R3 R5
       18 SETTABLE                         R3 R2 R0
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K4 ["Enabled"]
       22 GETTABLEKS                       R4 R3 K5 ["Triggered"]
       24 MOVE                             R6 R1
       25 NAMECALL                         R4 R4 K6 ["Connect"]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K7 ["dockWidget"]
       31 GETTABLEKS                       R5 R5 K8 ["WindowFocused"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          REF R3
       35 NAMECALL                         R5 R5 K6 ["Connect"]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K7 ["dockWidget"]
       41 GETTABLEKS                       R6 R6 K9 ["WindowFocusReleased"]
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          REF R3
       45 NAMECALL                         R6 R6 K6 ["Connect"]
       47 CALL                             R6 2 1
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          REF R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CLOSEUPVALS                      R3
       54 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useRef"]
       14 NEWTABLE                         R3 0 0
       16 CALL                             R2 1 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 GETUPVAL                         R4 2
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K5 ["Components"]
       25 GETTABLEKS                       R5 R5 K6 ["Contexts"]
       27 GETTABLEKS                       R5 R5 K7 ["ShortcutContextProvider"]
       29 DUPTABLE                         R6 K9 [{"connectToShortcut"}]
       30 SETTABLEKS                       R3 R6 K8 ["connectToShortcut"]
       32 GETTABLEKS                       R7 R0 K10 ["children"]
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 DUPCLOSURE                       R6 K12 [PROTO_5]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 RETURN                           R6 1
