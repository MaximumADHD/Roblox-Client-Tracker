PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+24]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["keysHeld"]
        9 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       11 LOADB                            R4 1
       12 SETTABLE                         R4 R2 R3
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["props"]
       16 GETTABLEKS                       R2 R2 K7 ["OnKeyPressed"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["props"]
       22 GETTABLEKS                       R2 R2 K7 ["OnKeyPressed"]
       24 MOVE                             R3 R1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["keysHeld"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+21]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["keysHeld"]
        9 GETTABLEKS                       R3 R1 K5 ["KeyCode"]
       11 LOADNIL                          R4
       12 SETTABLE                         R4 R2 R3
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["props"]
       16 GETTABLEKS                       R2 R2 K7 ["OnKeyReleased"]
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["props"]
       22 GETTABLEKS                       R2 R2 K7 ["OnKeyReleased"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onInputBegan"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onInputEnded"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnKeyReleased"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETIMPORT                        R0 K3 [pairs]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["keysHeld"]
       11 CALL                             R0 1 3
       12 FORGPREP_NEXT                    R0
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K1 ["OnKeyReleased"]
       16 DUPTABLE                         R6 K7 [{"KeyCode", "UserInputType"}]
       17 SETTABLEKS                       R3 R6 K5 ["KeyCode"]
       19 GETIMPORT                        R7 K10 [Enum.UserInputType.Keyboard]
       21 SETTABLEKS                       R7 R6 K6 ["UserInputType"]
       23 CALL                             R5 1 0
       24 FORGLOOP                         R0 2 ; [-12]
       26 GETUPVAL                         R0 0
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K4 ["keysHeld"]
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R0 K1 ["keysHeld"]
        6 GETTABLEKS                       R2 R1 K2 ["Focus"]
        8 NAMECALL                         R2 R2 K3 ["get"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R0 K4 ["target"]
       13 GETTABLEKS                       R2 R0 K4 ["target"]
       15 LOADK                            R4 K5 ["PluginGui"]
       16 NAMECALL                         R2 R2 K6 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+12]
       20 GETTABLEKS                       R2 R0 K4 ["target"]
       22 GETTABLEKS                       R2 R2 K7 ["WindowFocusReleased"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R2 R2 K8 ["Connect"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R0 K9 ["focusConnection"]
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K2 [{"Listener"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 LOADK                            R6 K3 ["Frame"]
       11 NEWTABLE                         R7 4 0
       13 GETIMPORT                        R8 K6 [UDim2.new]
       15 LOADN                            R9 1
       16 LOADN                            R10 0
       17 LOADN                            R11 1
       18 LOADN                            R12 0
       19 CALL                             R8 4 1
       20 SETTABLEKS                       R8 R7 K7 ["Size"]
       22 LOADN                            R8 1
       23 SETTABLEKS                       R8 R7 K8 ["BackgroundTransparency"]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K9 ["Event"]
       28 GETTABLEKS                       R8 R8 K10 ["InputBegan"]
       30 GETTABLEKS                       R9 R0 K11 ["onInputBegan"]
       32 SETTABLE                         R9 R7 R8
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K9 ["Event"]
       36 GETTABLEKS                       R8 R8 K12 ["InputEnded"]
       38 GETTABLEKS                       R9 R0 K13 ["onInputEnded"]
       40 SETTABLE                         R9 R7 R8
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K1 ["Listener"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["focusConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["focusConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R6 K12 ["Components"]
       38 GETTABLEKS                       R6 R6 K13 ["ShowOnTop"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       43 LOADK                            R8 K15 ["KeyboardListener"]
       44 NAMECALL                         R6 R6 K16 ["extend"]
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R7 R4 K17 ["wrap"]
       49 MOVE                             R8 R6
       50 GETIMPORT                        R9 K1 [script]
       52 CALL                             R7 2 0
       53 DUPCLOSURE                       R7 K18 [PROTO_2]
       54 SETTABLEKS                       R7 R6 K19 ["init"]
       56 DUPCLOSURE                       R7 K20 [PROTO_4]
       57 SETTABLEKS                       R7 R6 K21 ["didMount"]
       59 DUPCLOSURE                       R7 K22 [PROTO_5]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R7 R6 K23 ["render"]
       64 DUPCLOSURE                       R7 K24 [PROTO_6]
       65 SETTABLEKS                       R7 R6 K25 ["willUnmount"]
       67 MOVE                             R7 R3
       68 DUPTABLE                         R8 K27 [{"Focus"}]
       69 GETTABLEKS                       R9 R2 K26 ["Focus"]
       71 SETTABLEKS                       R9 R8 K26 ["Focus"]
       73 CALL                             R7 1 1
       74 MOVE                             R8 R6
       75 CALL                             R7 1 1
       76 MOVE                             R6 R7
       77 RETURN                           R6 1
