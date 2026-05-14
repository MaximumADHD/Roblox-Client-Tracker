PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["KeyCode"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["UserInputState"]
        8 GETIMPORT                        R6 K4 [Enum.UserInputState.Begin]
       10 JUMPIFNOTEQ                      R5 R6 ; [+3]
       12 LOADB                            R4 1
       13 JUMP                             ; [+1]
       14 LOADB                            R4 0
       15 NAMECALL                         R0 R0 K5 ["SendKeyboardEventAsync"]
       17 CALL                             R0 4 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+11]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOTEQKNIL                  R1 ; [+8]
        9 GETIMPORT                        R1 K5 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 JUMPIFEQKNIL                     R0 ; [+5]
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K0 ["Disconnect"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["InputBegan"]
        6 JUMPIFNOT                        R3 ; [+32]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["InputChanged"]
       10 JUMPIFNOT                        R3 ; [+28]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["InputEnded"]
       14 JUMPIFNOT                        R3 ; [+24]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["InputBegan"]
       18 GETUPVAL                         R5 1
       19 NAMECALL                         R3 R3 K3 ["Connect"]
       21 CALL                             R3 2 1
       22 MOVE                             R0 R3
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K1 ["InputChanged"]
       26 GETUPVAL                         R5 1
       27 NAMECALL                         R3 R3 K3 ["Connect"]
       29 CALL                             R3 2 1
       30 MOVE                             R1 R3
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K2 ["InputEnded"]
       34 GETUPVAL                         R5 1
       35 NAMECALL                         R3 R3 K3 ["Connect"]
       37 CALL                             R3 2 1
       38 MOVE                             R2 R3
       39 NEWCLOSURE                       R3 P0
       40 CAPTURE                          REF R0
       41 CAPTURE                          REF R1
       42 CAPTURE                          REF R2
       43 CLOSEUPVALS                      R0
       44 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K1 ["gamepadId"]
       12 GETTABLEKS                       R4 R2 K2 ["isUpdatingMappingForKey"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 2
       23 MOVE                             R8 R3
       24 MOVE                             R9 R4
       25 SETLIST                          R7 R8 2 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R8 0 2
       36 MOVE                             R9 R1
       37 MOVE                             R10 R5
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 0
       41 GETTABLEKS                       R6 R0 K5 ["children"]
       43 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["RootContainerInputContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["MockableProxyPluginComponents"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R3 R3 K12 ["StudioDeviceEmulator"]
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Util"]
       40 GETTABLEKS                       R5 R5 K13 ["MappingsContext"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_4]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 SETGLOBAL                        R5 K15 ["KeyboardInputsForwarder"]
       50 GETTABLEKS                       R5 R1 K16 ["memo"]
       52 GETGLOBAL                        R6 K15 ["KeyboardInputsForwarder"]
       54 CALL                             R5 1 -1
       55 RETURN                           R5 -1
