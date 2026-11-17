PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["current"]
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K3 ["RBX_MousePosition"]
       11 NAMECALL                         R2 R2 K1 ["GetAttribute"]
       13 CALL                             R2 2 -1
       14 NAMECALL                         R0 R0 K4 ["Fire"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["RBX_MouseHoverEnabled"]
        3 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["RegisterMouseTrackingRelativeToWidgetAsync"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R2 0
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       13 LOADK                            R2 K1 ["Luau"]
       14 GETIMPORT                        R0 K3 [assert]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 0
       19 SETTABLEKS                       R1 R0 K4 ["current"]
       21 GETUPVAL                         R0 0
       22 LOADK                            R2 K5 ["RBX_MousePosition"]
       23 NAMECALL                         R0 R0 K6 ["GetAttributeChangedSignal"]
       25 CALL                             R0 2 1
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U0
       29 NAMECALL                         R0 R0 K7 ["Connect"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 0
       33 LOADK                            R2 K8 ["RBX_LeftMouseButtonDown"]
       34 NAMECALL                         R0 R0 K6 ["GetAttributeChangedSignal"]
       36 CALL                             R0 2 1
       37 NEWCLOSURE                       R2 P1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U5
       40 NAMECALL                         R0 R0 K7 ["Connect"]
       42 CALL                             R0 2 0
       43 GETUPVAL                         R0 6
       44 GETUPVAL                         R1 0
       45 LOADK                            R3 K9 ["RBX_MouseHoverEnabled"]
       46 NAMECALL                         R1 R1 K10 ["GetAttribute"]
       48 CALL                             R1 2 -1
       49 CALL                             R0 -1 0
       50 GETUPVAL                         R0 0
       51 LOADK                            R2 K9 ["RBX_MouseHoverEnabled"]
       52 NAMECALL                         R0 R0 K6 ["GetAttributeChangedSignal"]
       54 CALL                             R0 2 1
       55 NEWCLOSURE                       R2 P2
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U0
       58 NAMECALL                         R0 R0 K7 ["Connect"]
       60 CALL                             R0 2 0
       61 GETUPVAL                         R0 3
       62 GETUPVAL                         R1 0
       63 SETTABLEKS                       R1 R0 K4 ["current"]
       65 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+15]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K3 ["Destroy"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K4 ["current"]
       14 GETUPVAL                         R1 1
       15 JUMPIFNOTEQ                      R0 R1 ; [+5]
       17 GETUPVAL                         R0 2
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K4 ["current"]
       21 RETURN                           R0 0

PROTO_5:
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
       11 CALL                             R1 1 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R0
       15 CAPTURE                          UPVAL U2
       16 CLOSEUPVALS                      R0
       17 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["new"]
       11 CALL                             R3 0 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["useRef"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K1 ["new"]
       19 CALL                             R4 0 -1
       20 CALL                             R3 -1 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K2 ["useState"]
       24 LOADB                            R5 0
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R8 0 0
       38 CALL                             R6 2 0
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R8 0 0
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 5
       48 GETUPVAL                         R8 6
       49 GETTABLEKS                       R8 R8 K5 ["Provider"]
       51 DUPTABLE                         R9 K7 [{"value"}]
       52 DUPTABLE                         R10 K12 [{"getMousePosition", "mouseMoved", "mouseDown", "isMouseHoverEnabledObservable"}]
       53 SETTABLEKS                       R6 R10 K8 ["getMousePosition"]
       55 GETTABLEKS                       R11 R2 K13 ["current"]
       57 SETTABLEKS                       R11 R10 K9 ["mouseMoved"]
       59 GETTABLEKS                       R11 R3 K13 ["current"]
       61 SETTABLEKS                       R11 R10 K10 ["mouseDown"]
       63 SETTABLEKS                       R4 R10 K11 ["isMouseHoverEnabledObservable"]
       65 SETTABLEKS                       R10 R9 K6 ["value"]
       67 GETTABLEKS                       R10 R0 K14 ["children"]
       69 CALL                             R7 3 -1
       70 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R3 R0 K8 ["Src"]
       17 GETTABLEKS                       R3 R3 K9 ["Util"]
       19 GETTABLEKS                       R3 R3 K10 ["MockableProxyPluginComponents"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R2 R2 K11 ["MouseTracker"]
       24 GETIMPORT                        R3 K7 [require]
       26 GETTABLEKS                       R4 R0 K12 ["Packages"]
       28 GETTABLEKS                       R4 R4 K13 ["React"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K7 [require]
       33 GETTABLEKS                       R5 R0 K12 ["Packages"]
       35 GETTABLEKS                       R5 R5 K14 ["ReactUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K7 [require]
       40 GETTABLEKS                       R6 R0 K8 ["Src"]
       42 GETTABLEKS                       R6 R6 K9 ["Util"]
       44 GETTABLEKS                       R6 R6 K15 ["Signal"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K7 [require]
       49 GETTABLEKS                       R7 R0 K8 ["Src"]
       51 GETTABLEKS                       R7 R7 K9 ["Util"]
       53 GETTABLEKS                       R7 R7 K16 ["Observable"]
       55 CALL                             R6 1 1
       56 NAMECALL                         R7 R1 K17 ["GetUri"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K7 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R9 K18 ["Contexts"]
       65 GETTABLEKS                       R9 R9 K19 ["MouseContext"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R3 K20 ["createElement"]
       70 DUPCLOSURE                       R10 K21 [PROTO_7]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 RETURN                           R10 1
