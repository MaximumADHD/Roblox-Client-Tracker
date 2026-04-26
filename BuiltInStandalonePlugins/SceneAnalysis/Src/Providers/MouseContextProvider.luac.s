PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["RBX_MousePosition"]
        5 NAMECALL                         R2 R2 K2 ["GetAttribute"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_LeftMouseButtonDown"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["current"]
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K3 ["RBX_MousePosition"]
       11 NAMECALL                         R2 R2 K1 ["GetAttribute"]
       13 CALL                             R2 2 -1
       14 NAMECALL                         R0 R0 K4 ["Fire"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R0 R1 K2 ["current"]
       21 GETUPVAL                         R2 0
       22 LOADK                            R4 K3 ["RBX_MousePosition"]
       23 NAMECALL                         R2 R2 K1 ["GetAttribute"]
       25 CALL                             R2 2 -1
       26 NAMECALL                         R0 R0 K4 ["Fire"]
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_RightMouseButtonDown"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["current"]
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K3 ["RBX_MousePosition"]
       11 NAMECALL                         R2 R2 K1 ["GetAttribute"]
       13 CALL                             R2 2 -1
       14 NAMECALL                         R0 R0 K4 ["Fire"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["RBX_MouseHoverEnabled"]
        3 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["MouseTracker"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K2 ["RegisterMouseTrackingRelativeToWidgetAsync"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R2 0
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       17 LOADK                            R2 K3 ["Luau"]
       18 GETIMPORT                        R0 K5 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 3
       22 GETUPVAL                         R1 0
       23 SETTABLEKS                       R1 R0 K6 ["current"]
       25 GETUPVAL                         R0 0
       26 LOADK                            R2 K7 ["RBX_MousePosition"]
       27 NAMECALL                         R0 R0 K8 ["GetAttributeChangedSignal"]
       29 CALL                             R0 2 1
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R0 R0 K9 ["Connect"]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 0
       37 LOADK                            R2 K10 ["RBX_LeftMouseButtonDown"]
       38 NAMECALL                         R0 R0 K8 ["GetAttributeChangedSignal"]
       40 CALL                             R0 2 1
       41 NEWCLOSURE                       R2 P1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 NAMECALL                         R0 R0 K9 ["Connect"]
       47 CALL                             R0 2 0
       48 GETUPVAL                         R0 0
       49 LOADK                            R2 K11 ["RBX_RightMouseButtonDown"]
       50 NAMECALL                         R0 R0 K8 ["GetAttributeChangedSignal"]
       52 CALL                             R0 2 1
       53 NEWCLOSURE                       R2 P2
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U7
       56 NAMECALL                         R0 R0 K9 ["Connect"]
       58 CALL                             R0 2 0
       59 GETUPVAL                         R0 8
       60 GETUPVAL                         R1 0
       61 LOADK                            R3 K12 ["RBX_MouseHoverEnabled"]
       62 NAMECALL                         R1 R1 K13 ["GetAttribute"]
       64 CALL                             R1 2 -1
       65 CALL                             R0 -1 0
       66 GETUPVAL                         R0 0
       67 LOADK                            R2 K12 ["RBX_MouseHoverEnabled"]
       68 NAMECALL                         R0 R0 K8 ["GetAttributeChangedSignal"]
       70 CALL                             R0 2 1
       71 NEWCLOSURE                       R2 P3
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U0
       74 NAMECALL                         R0 R0 K9 ["Connect"]
       76 CALL                             R0 2 0
       77 GETUPVAL                         R0 3
       78 GETUPVAL                         R1 0
       79 SETTABLEKS                       R1 R0 K6 ["current"]
       81 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+15]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K3 ["Destroy"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K4 ["current"]
       14 GETUPVAL                         R1 1
       15 JUMPIFNOTEQ                      R0 R1 ; [+5]
       17 GETUPVAL                         R0 2
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K4 ["current"]
       21 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          REF R0
       17 CAPTURE                          UPVAL U2
       18 CLOSEUPVALS                      R0
       19 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETIMPORT                        R1 K3 [Vector2.new]
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1
        9 LOADK                            R3 K4 ["RBX_MousePosition"]
       10 NAMECALL                         R1 R0 K5 ["GetAttribute"]
       12 CALL                             R1 2 1
       13 JUMPIFNOTEQKNIL                  R1 ; [+5]
       15 GETIMPORT                        R2 K3 [Vector2.new]
       17 CALL                             R2 0 -1
       18 RETURN                           R2 -1
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K7 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFEQKS                       R4 K1 ["Vector2"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       30 LOADK                            R4 K8 ["Mouse position not a Vector2"]
       31 GETIMPORT                        R2 K10 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useRef"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["new"]
       11 CALL                             R3 0 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["useRef"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K1 ["new"]
       19 CALL                             R4 0 -1
       20 CALL                             R3 -1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["useRef"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K1 ["new"]
       27 CALL                             R5 0 -1
       28 CALL                             R4 -1 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K0 ["useRef"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K1 ["new"]
       35 CALL                             R6 0 -1
       36 CALL                             R5 -1 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K2 ["useState"]
       40 LOADB                            R7 0
       41 CALL                             R6 1 2
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K3 ["useEffect"]
       45 NEWCLOSURE                       R9 P0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R10 0 0
       56 CALL                             R8 2 0
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          VAL R1
       62 NEWTABLE                         R10 0 0
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 5
       66 GETUPVAL                         R11 6
       67 GETTABLEKS                       R10 R11 K5 ["Provider"]
       69 DUPTABLE                         R11 K7 [{"value"}]
       70 DUPTABLE                         R12 K14 [{"getMousePosition", "mouseMoved", "mouseDown", "mouseUp", "mouseRightDown", "isMouseHoverEnabledObservable"}]
       71 SETTABLEKS                       R8 R12 K8 ["getMousePosition"]
       73 GETTABLEKS                       R13 R2 K15 ["current"]
       75 SETTABLEKS                       R13 R12 K9 ["mouseMoved"]
       77 GETTABLEKS                       R13 R3 K15 ["current"]
       79 SETTABLEKS                       R13 R12 K10 ["mouseDown"]
       81 GETTABLEKS                       R13 R4 K15 ["current"]
       83 SETTABLEKS                       R13 R12 K11 ["mouseUp"]
       85 GETTABLEKS                       R13 R5 K15 ["current"]
       87 SETTABLEKS                       R13 R12 K12 ["mouseRightDown"]
       89 SETTABLEKS                       R6 R12 K13 ["isMouseHoverEnabledObservable"]
       91 SETTABLEKS                       R12 R11 K6 ["value"]
       93 GETTABLEKS                       R12 R0 K16 ["children"]
       95 CALL                             R9 3 -1
       96 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R4 R0 K8 ["Packages"]
       17 GETTABLEKS                       R3 R4 K9 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R6 R0 K10 ["Src"]
       24 GETTABLEKS                       R5 R6 K11 ["Util"]
       26 GETTABLEKS                       R4 R5 K12 ["Signal"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Src"]
       33 GETTABLEKS                       R6 R7 K11 ["Util"]
       35 GETTABLEKS                       R5 R6 K13 ["Observable"]
       37 CALL                             R4 1 1
       38 NAMECALL                         R5 R1 K14 ["GetUri"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K7 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       47 GETTABLEKS                       R7 R8 K16 ["MouseContext"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R2 K17 ["createElement"]
       52 DUPCLOSURE                       R8 K18 [PROTO_8]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
