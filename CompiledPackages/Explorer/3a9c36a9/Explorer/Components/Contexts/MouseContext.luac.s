PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 [0.5]
        1 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
        1 GETTABLEKS                       R2 R0 K0 ["getMousePosition"]
        3 SETTABLEKS                       R2 R1 K0 ["getMousePosition"]
        5 GETTABLEKS                       R2 R0 K1 ["mouseMoved"]
        7 SETTABLEKS                       R2 R1 K1 ["mouseMoved"]
        9 GETTABLEKS                       R2 R0 K2 ["mouseDownChanged"]
       11 SETTABLEKS                       R2 R1 K2 ["mouseDownChanged"]
       13 GETTABLEKS                       R2 R0 K3 ["isMouseDown"]
       15 SETTABLEKS                       R2 R1 K3 ["isMouseDown"]
       17 GETTABLEKS                       R2 R0 K4 ["isMouseHoverEnabledObservable"]
       19 SETTABLEKS                       R2 R1 K4 ["isMouseHoverEnabledObservable"]
       21 GETTABLEKS                       R2 R0 K5 ["getMouseDoubleClickTime"]
       23 SETTABLEKS                       R2 R1 K5 ["getMouseDoubleClickTime"]
       25 GETUPVAL                         R2 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K7 ["Provider"]
       29 DUPTABLE                         R4 K9 [{"value"}]
       30 SETTABLEKS                       R1 R4 K8 ["value"]
       32 GETTABLEKS                       R5 R0 K10 ["children"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseLocation"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K4 ["current"]
       10 GETIMPORT                        R3 K7 [Vector2.new]
       12 GETTABLEKS                       R5 R0 K8 ["Position"]
       14 GETTABLEKS                       R4 R5 K9 ["X"]
       16 GETTABLEKS                       R6 R0 K8 ["Position"]
       18 GETTABLEKS                       R5 R6 K10 ["Y"]
       20 CALL                             R3 2 -1
       21 NAMECALL                         R1 R1 K11 ["Fire"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+8]
        6 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        8 GETIMPORT                        R2 K5 [Enum.UserInputType.Touch]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K6 ["current"]
       16 LOADB                            R3 1
       17 NAMECALL                         R1 R1 K7 ["Fire"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+8]
        6 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        8 GETIMPORT                        R2 K5 [Enum.UserInputType.Touch]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K6 ["current"]
       16 LOADB                            R3 0
       17 NAMECALL                         R1 R1 K7 ["Fire"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        3 NAMECALL                         R0 R0 K4 ["IsMouseButtonPressed"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 LOADK                            R0 K0 [0.5]
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["new"]
        6 CALL                             R2 0 -1
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["useRef"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["new"]
       14 CALL                             R3 0 -1
       15 CALL                             R2 -1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       19 DUPCLOSURE                       R4 K3 [PROTO_4]
       20 CAPTURE                          UPVAL U2
       21 NEWTABLE                         R5 0 0
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 3
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K4 ["InputChanged"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R7 0 0
       32 CALL                             R4 3 0
       33 GETUPVAL                         R4 3
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R5 R6 K5 ["InputBegan"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R7 0 0
       41 CALL                             R4 3 0
       42 GETUPVAL                         R4 3
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K6 ["InputEnded"]
       46 NEWCLOSURE                       R6 P3
       47 CAPTURE                          VAL R2
       48 NEWTABLE                         R7 0 0
       50 CALL                             R4 3 0
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       54 DUPCLOSURE                       R5 K7 [PROTO_8]
       55 CAPTURE                          UPVAL U2
       56 NEWTABLE                         R6 0 0
       58 CALL                             R4 2 1
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       62 DUPCLOSURE                       R6 K8 [PROTO_9]
       63 NEWTABLE                         R7 0 0
       65 CALL                             R5 2 1
       66 GETUPVAL                         R6 4
       67 GETUPVAL                         R7 5
       68 DUPTABLE                         R8 K15 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
       69 SETTABLEKS                       R3 R8 K9 ["getMousePosition"]
       71 GETTABLEKS                       R9 R1 K16 ["current"]
       73 SETTABLEKS                       R9 R8 K10 ["mouseMoved"]
       75 GETTABLEKS                       R9 R2 K16 ["current"]
       77 SETTABLEKS                       R9 R8 K11 ["mouseDownChanged"]
       79 SETTABLEKS                       R4 R8 K12 ["isMouseDown"]
       81 GETUPVAL                         R10 6
       82 GETTABLEKS                       R9 R10 K17 ["create"]
       84 LOADB                            R10 1
       85 CALL                             R9 1 1
       86 SETTABLEKS                       R9 R8 K13 ["isMouseHoverEnabledObservable"]
       88 SETTABLEKS                       R5 R8 K14 ["getMouseDoubleClickTime"]
       90 GETTABLEKS                       R9 R0 K18 ["children"]
       92 CALL                             R6 3 -1
       93 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["Observable"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R5 K13 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K12 ["Parent"]
       31 GETTABLEKS                       R5 R6 K14 ["Signal"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K15 ["Hooks"]
       38 GETTABLEKS                       R6 R7 K16 ["useEventConnection"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K17 ["createElement"]
       43 DUPTABLE                         R7 K24 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
       44 DUPCLOSURE                       R8 K25 [PROTO_0]
       45 SETTABLEKS                       R8 R7 K18 ["getMousePosition"]
       47 GETTABLEKS                       R8 R4 K26 ["new"]
       49 CALL                             R8 0 1
       50 SETTABLEKS                       R8 R7 K19 ["mouseMoved"]
       52 GETTABLEKS                       R8 R4 K26 ["new"]
       54 CALL                             R8 0 1
       55 SETTABLEKS                       R8 R7 K20 ["mouseDownChanged"]
       57 DUPCLOSURE                       R8 K27 [PROTO_1]
       58 SETTABLEKS                       R8 R7 K21 ["isMouseDown"]
       60 GETTABLEKS                       R8 R2 K28 ["create"]
       62 LOADB                            R9 1
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K22 ["isMouseHoverEnabledObservable"]
       66 DUPCLOSURE                       R8 K29 [PROTO_2]
       67 SETTABLEKS                       R8 R7 K23 ["getMouseDoubleClickTime"]
       69 GETTABLEKS                       R8 R3 K30 ["createContext"]
       71 MOVE                             R9 R7
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K31 [PROTO_3]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R10 K32 [PROTO_10]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R2
       84 DUPTABLE                         R11 K36 [{"Context", "Provider", "StandardProvider"}]
       85 SETTABLEKS                       R8 R11 K33 ["Context"]
       87 SETTABLEKS                       R9 R11 K34 ["Provider"]
       89 SETTABLEKS                       R10 R11 K35 ["StandardProvider"]
       91 RETURN                           R11 1
