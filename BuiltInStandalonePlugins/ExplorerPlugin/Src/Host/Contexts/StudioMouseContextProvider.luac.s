PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseDoubleClickTimeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["RBX_MousePosition"]
        5 NAMECALL                         R2 R2 K2 ["GetAttribute"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["RBX_LeftMouseButtonDown"]
        5 NAMECALL                         R2 R2 K2 ["GetAttribute"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

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
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U0
       44 NAMECALL                         R0 R0 K9 ["Connect"]
       46 CALL                             R0 2 0
       47 GETUPVAL                         R0 6
       48 GETUPVAL                         R1 0
       49 LOADK                            R3 K11 ["RBX_MouseHoverEnabled"]
       50 NAMECALL                         R1 R1 K12 ["GetAttribute"]
       52 CALL                             R1 2 -1
       53 CALL                             R0 -1 0
       54 GETUPVAL                         R0 0
       55 LOADK                            R2 K11 ["RBX_MouseHoverEnabled"]
       56 NAMECALL                         R0 R0 K8 ["GetAttributeChangedSignal"]
       58 CALL                             R0 2 1
       59 NEWCLOSURE                       R2 P2
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U0
       62 NAMECALL                         R0 R0 K9 ["Connect"]
       64 CALL                             R0 2 0
       65 GETUPVAL                         R0 3
       66 GETUPVAL                         R1 0
       67 SETTABLEKS                       R1 R0 K6 ["current"]
       69 RETURN                           R0 0

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
       11 CALL                             R1 1 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R0
       15 CAPTURE                          UPVAL U2
       16 CLOSEUPVALS                      R0
       17 RETURN                           R2 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADK                            R3 K1 ["RBX_LeftMouseButtonDown"]
        8 NAMECALL                         R1 R0 K2 ["GetAttribute"]
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K4 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K5 ["boolean"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["LeftMouseButtonDown is not a boolean"]
       27 GETIMPORT                        R2 K8 [assert]
       29 CALL                             R2 2 0
       30 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["value"]
        8 RETURN                           R0 1
        9 LOADK                            R0 K3 [0.5]
       10 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 LOADK                            R4 K4 ["SystemCursor"]
       12 NAMECALL                         R2 R1 K5 ["GetPluginComponent"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K6 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K6 ["useRef"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R6 R7 K7 ["Signal"]
       26 GETTABLEKS                       R5 R6 K8 ["new"]
       28 CALL                             R5 0 -1
       29 CALL                             R4 -1 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K6 ["useRef"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R7 R8 K7 ["Signal"]
       36 GETTABLEKS                       R6 R7 K8 ["new"]
       38 CALL                             R6 0 -1
       39 CALL                             R5 -1 1
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R7 R8 K9 ["Observable"]
       43 GETTABLEKS                       R6 R7 K10 ["useState"]
       45 LOADB                            R7 0
       46 CALL                             R6 1 2
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R8 R9 K11 ["useAsync"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R10 0 0
       54 CALL                             R8 2 1
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K12 ["useEffect"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R7
       65 NEWTABLE                         R11 0 0
       67 CALL                             R9 2 0
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R9 R10 K13 ["useCallback"]
       71 NEWCLOSURE                       R10 P2
       72 CAPTURE                          VAL R3
       73 NEWTABLE                         R11 0 0
       75 CALL                             R9 2 1
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R10 R11 K13 ["useCallback"]
       79 NEWCLOSURE                       R11 P3
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R12 0 0
       83 CALL                             R10 2 1
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R11 R12 K13 ["useCallback"]
       87 NEWCLOSURE                       R12 P4
       88 CAPTURE                          VAL R8
       89 NEWTABLE                         R13 0 1
       91 MOVE                             R14 R8
       92 SETLIST                          R13 R14 1 [1]
       94 CALL                             R11 2 1
       95 GETUPVAL                         R12 5
       96 GETUPVAL                         R16 2
       97 GETTABLEKS                       R15 R16 K14 ["Components"]
       99 GETTABLEKS                       R14 R15 K15 ["Contexts"]
      101 GETTABLEKS                       R13 R14 K16 ["MouseContextProvider"]
      103 DUPTABLE                         R14 K23 [{"getMousePosition", "mouseMoved", "mouseDownChanged", "isMouseDown", "isMouseHoverEnabledObservable", "getMouseDoubleClickTime"}]
      104 SETTABLEKS                       R9 R14 K17 ["getMousePosition"]
      106 GETTABLEKS                       R15 R4 K24 ["current"]
      108 SETTABLEKS                       R15 R14 K18 ["mouseMoved"]
      110 GETTABLEKS                       R15 R5 K24 ["current"]
      112 SETTABLEKS                       R15 R14 K19 ["mouseDownChanged"]
      114 SETTABLEKS                       R10 R14 K20 ["isMouseDown"]
      116 SETTABLEKS                       R6 R14 K21 ["isMouseHoverEnabledObservable"]
      118 SETTABLEKS                       R11 R14 K22 ["getMouseDoubleClickTime"]
      120 GETTABLEKS                       R15 R0 K25 ["children"]
      122 CALL                             R12 3 -1
      123 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["ExplorerGuiUri"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K14 ["createElement"]
       46 DUPCLOSURE                       R7 K15 [PROTO_10]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 RETURN                           R7 1
