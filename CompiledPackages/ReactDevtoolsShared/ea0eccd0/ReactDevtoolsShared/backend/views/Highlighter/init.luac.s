PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Visible"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 LOADK                            R4 K1 ["Frame"]
        7 NAMECALL                         R2 R0 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+10]
       11 MOVE                             R2 R1
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETTABLEKS                       R3 R0 K3 ["BackgroundTransparency"]
       15 LOADN                            R4 1
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 LOADK                            R4 K4 ["CanvasGroup"]
       22 NAMECALL                         R2 R0 K2 ["IsA"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+16]
       26 MOVE                             R2 R1
       27 JUMPIFNOT                        R2 ; [+13]
       28 LOADB                            R2 0
       29 GETTABLEKS                       R3 R0 K3 ["BackgroundTransparency"]
       31 LOADN                            R4 1
       32 JUMPIFNOTLT                      R3 R4 ; [+8]
       34 GETTABLEKS                       R3 R0 K5 ["GroupTransparency"]
       36 LOADN                            R4 1
       37 JUMPIFLT                         R3 R4 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1
       42 LOADK                            R4 K6 ["TextLabel"]
       43 NAMECALL                         R2 R0 K2 ["IsA"]
       45 CALL                             R2 2 1
       46 JUMPIFNOT                        R2 ; [+20]
       47 LOADK                            R4 K7 ["TextButton"]
       48 NAMECALL                         R2 R0 K2 ["IsA"]
       50 CALL                             R2 2 1
       51 JUMPIFNOT                        R2 ; [+15]
       52 MOVE                             R2 R1
       53 JUMPIFNOT                        R2 ; [+12]
       54 LOADB                            R2 0
       55 GETTABLEKS                       R3 R0 K8 ["TextTransparency"]
       57 LOADN                            R4 1
       58 JUMPIFNOTLT                      R3 R4 ; [+7]
       60 GETTABLEKS                       R3 R0 K9 ["Text"]
       62 JUMPIFNOTEQKS                    R3 K10 [""] ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 RETURN                           R2 1
       67 LOADK                            R4 K11 ["ImageLabel"]
       68 NAMECALL                         R2 R0 K2 ["IsA"]
       70 CALL                             R2 2 1
       71 JUMPIFNOT                        R2 ; [+20]
       72 LOADK                            R4 K12 ["ImageButton"]
       73 NAMECALL                         R2 R0 K2 ["IsA"]
       75 CALL                             R2 2 1
       76 JUMPIFNOT                        R2 ; [+15]
       77 MOVE                             R2 R1
       78 JUMPIFNOT                        R2 ; [+12]
       79 LOADB                            R2 0
       80 GETTABLEKS                       R3 R0 K13 ["ImageTransparency"]
       82 LOADN                            R4 1
       83 JUMPIFNOTLT                      R3 R4 ; [+7]
       85 GETTABLEKS                       R3 R0 K14 ["Image"]
       87 JUMPIFNOTEQKS                    R3 K10 [""] ; [+2]
       89 LOADB                            R2 0 +1
       90 LOADB                            R2 1
       91 RETURN                           R2 1
       92 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R9 K0 ["GuiBase2d"]
        7 NAMECALL                         R7 R6 K1 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K4 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        5 JUMPIFEQ                         R2 R3 ; [+16]
        7 LOADB                            R1 1
        8 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFEQ                         R2 R3 ; [+9]
       14 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       16 GETIMPORT                        R3 K7 [Enum.UserInputType.Touch]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["getIDForNode"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKNIL                     R1 ; [+7]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K1 ["selectFiber"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R2 K2 ["send"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        7 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        9 JUMPIFEQ                         R2 R3 ; [+16]
       11 LOADB                            R1 1
       12 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       14 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       16 JUMPIFEQ                         R2 R3 ; [+9]
       18 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       20 GETIMPORT                        R3 K7 [Enum.UserInputType.Touch]
       22 JUMPIFEQ                         R2 R3 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMPIF                           R1 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R1 R0 K8 ["Position"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R4 R1 K9 ["X"]
       33 GETTABLEKS                       R5 R1 K10 ["Y"]
       35 NAMECALL                         R2 R2 K11 ["GetGuiObjectsAtPosition"]
       37 CALL                             R2 3 1
       38 LOADNIL                          R3
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K12 ["getOverlay"]
       42 CALL                             R4 0 1
       43 MOVE                             R5 R4
       44 JUMPIFNOT                        R5 ; [+2]
       45 GETTABLEKS                       R5 R4 K13 ["container"]
       47 MOVE                             R6 R2
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 JUMPIFNOT                        R5 ; [+5]
       52 MOVE                             R13 R5
       53 NAMECALL                         R11 R10 K14 ["IsDescendantOf"]
       55 CALL                             R11 2 1
       56 JUMPIF                           R11 ; [+12]
       57 LENGTH                           R12 R2
       58 JUMPIFEQ                         R9 R12 ; [+2]
       60 LOADB                            R11 0 +1
       61 LOADB                            R11 1
       62 GETUPVAL                         R12 2
       63 MOVE                             R13 R10
       64 CALL                             R12 1 1
       65 JUMPIF                           R12 ; [+1]
       66 JUMPIFNOT                        R11 ; [+2]
       67 MOVE                             R3 R10
       68 JUMP                             ; [+2]
       69 FORGLOOP                         R6 2 ; [-19]
       71 JUMPIFNOTEQKNIL                  R3 ; [+4]
       73 GETUPVAL                         R6 3
       74 CALL                             R6 0 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R6 4
       77 NEWTABLE                         R7 0 1
       79 MOVE                             R8 R3
       80 SETLIST                          R7 R8 1 [1]
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 CALL                             R6 3 0
       85 MOVE                             R6 R3
       86 JUMPIFNOTEQKNIL                  R6 ; [+2]
       88 RETURN                           R0 0
       89 GETUPVAL                         R7 5
       90 MOVE                             R9 R6
       91 NAMECALL                         R7 R7 K15 ["getIDForNode"]
       93 CALL                             R7 2 1
       94 JUMPIFEQKNIL                     R7 ; [+7]
       96 GETUPVAL                         R8 6
       97 LOADK                            R10 K16 ["selectFiber"]
       98 MOVE                             R11 R7
       99 NAMECALL                         R8 R8 K17 ["send"]
      101 CALL                             R8 3 0
      102 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R4 K3 [Enum.UserInputType.MouseMovement]
        5 JUMPIFEQ                         R3 R4 ; [+16]
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFEQ                         R3 R4 ; [+9]
       14 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
       16 GETIMPORT                        R4 K7 [Enum.UserInputType.Touch]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 SETUPVAL                         R1 0
       25 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        5 JUMPIFEQ                         R2 R3 ; [+16]
        7 LOADB                            R1 1
        8 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFEQ                         R2 R3 ; [+9]
       14 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       16 GETIMPORT                        R3 K7 [Enum.UserInputType.Touch]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 1
       28 CALL                             R1 0 0
       29 GETUPVAL                         R1 2
       30 LOADK                            R3 K8 ["stopInspectingNative"]
       31 LOADB                            R4 1
       32 NAMECALL                         R1 R1 K9 ["send"]
       34 CALL                             R1 3 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InputChanged"]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 -1
        8 FASTCALL                         TABLE_INSERT ; [+2]
        9 GETIMPORT                        R0 K4 [table.insert]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["InputBegan"]
       16 GETUPVAL                         R4 3
       17 NAMECALL                         R2 R2 K1 ["Connect"]
       19 CALL                             R2 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R0 K4 [table.insert]
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["InputEnded"]
       28 GETUPVAL                         R4 4
       29 NAMECALL                         R2 R2 K1 ["Connect"]
       31 CALL                             R2 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R0 K4 [table.insert]
       35 CALL                             R0 -1 0
       36 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["displayName"]
        2 GETTABLEKS                       R2 R0 K1 ["hideAfterTimeout"]
        4 GETTABLEKS                       R3 R0 K2 ["id"]
        6 GETTABLEKS                       R4 R0 K3 ["openNativeElementsPanel"]
        8 GETTABLEKS                       R5 R0 K4 ["rendererID"]
       10 GETTABLEKS                       R6 R0 K5 ["scrollIntoView"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K6 ["_rendererInterfaces"]
       15 GETTABLE                         R7 R8 R5
       16 JUMPIFNOTEQKNIL                  R7 ; [+12]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K7 ["warn"]
       21 LOADK                            R10 K8 ["Invalid renderer id \"%*\" for element \"%*\""]
       22 MOVE                             R12 R5
       23 MOVE                             R13 R3
       24 NAMECALL                         R10 R10 K9 ["format"]
       26 CALL                             R10 3 1
       27 MOVE                             R9 R10
       28 CALL                             R8 1 0
       29 LOADNIL                          R8
       30 JUMPIFEQKNIL                     R7 ; [+6]
       32 GETTABLEKS                       R9 R7 K10 ["findNativeNodesForFiberID"]
       34 MOVE                             R10 R3
       35 CALL                             R9 1 1
       36 MOVE                             R8 R9
       37 JUMPIFEQKNIL                     R8 ; [+31]
       39 GETTABLEN                        R9 R8 1
       40 JUMPIFEQKNIL                     R9 ; [+28]
       42 GETUPVAL                         R9 2
       43 MOVE                             R10 R8
       44 CALL                             R9 1 1
       45 LENGTH                           R10 R9
       46 JUMPIFNOTEQKN                    R10 K11 [0] ; [+4]
       48 GETUPVAL                         R10 3
       49 CALL                             R10 0 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R10 4
       52 MOVE                             R11 R9
       53 MOVE                             R12 R1
       54 MOVE                             R13 R2
       55 CALL                             R10 3 0
       56 JUMPIFNOT                        R4 ; [+14]
       57 GETUPVAL                         R10 5
       58 GETTABLEKS                       R10 R10 K12 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       60 GETTABLEN                        R11 R9 1
       61 SETTABLEKS                       R11 R10 K13 ["$0"]
       63 GETUPVAL                         R10 6
       64 LOADK                            R12 K14 ["syncSelectionToNativeElementsPanel"]
       65 NAMECALL                         R10 R10 K15 ["send"]
       67 CALL                             R10 2 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R9 3
       70 CALL                             R9 0 0
       71 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InputChanged"]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 -1
        8 FASTCALL                         TABLE_INSERT ; [+2]
        9 GETIMPORT                        R0 K4 [table.insert]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["InputBegan"]
       16 GETUPVAL                         R4 3
       17 NAMECALL                         R2 R2 K1 ["Connect"]
       19 CALL                             R2 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R0 K4 [table.insert]
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["InputEnded"]
       28 GETUPVAL                         R4 4
       29 NAMECALL                         R2 R2 K1 ["Connect"]
       31 CALL                             R2 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R0 K4 [table.insert]
       35 CALL                             R0 -1 0
       36 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K0 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 GETIMPORT                        R0 K3 [table.clear]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETIMPORT                        R5 K1 [game]
        6 LOADK                            R7 K2 ["CoreGui"]
        7 NAMECALL                         R5 R5 K3 ["GetService"]
        9 CALL                             R5 2 1
       10 MOVE                             R4 R5
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          REF R4
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 LOADB                            R7 0
       23 NEWCLOSURE                       R8 P2
       24 CAPTURE                          REF R7
       25 NEWCLOSURE                       R9 P3
       26 CAPTURE                          REF R7
       27 CAPTURE                          REF R3
       28 CAPTURE                          VAL R0
       29 NEWCLOSURE                       R10 P4
       30 CAPTURE                          VAL R2
       31 NEWCLOSURE                       R11 P5
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R8
       36 CAPTURE                          VAL R9
       37 DUPCLOSURE                       R12 K4 [PROTO_9]
       38 CAPTURE                          UPVAL U2
       39 NEWCLOSURE                       R13 P7
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          VAL R0
       47 NEWCLOSURE                       R14 P8
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 NEWCLOSURE                       R3 P9
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R2
       56 LOADK                            R17 K5 ["clearNativeElementHighlight"]
       57 MOVE                             R18 R12
       58 NAMECALL                         R15 R0 K6 ["addListener"]
       60 CALL                             R15 3 0
       61 LOADK                            R17 K7 ["highlightNativeElement"]
       62 MOVE                             R18 R13
       63 NAMECALL                         R15 R0 K6 ["addListener"]
       65 CALL                             R15 3 0
       66 LOADK                            R17 K8 ["shutdown"]
       67 MOVE                             R18 R3
       68 NAMECALL                         R15 R0 K6 ["addListener"]
       70 CALL                             R15 3 0
       71 LOADK                            R17 K9 ["startInspectingNative"]
       72 MOVE                             R18 R14
       73 NAMECALL                         R15 R0 K6 ["addListener"]
       75 CALL                             R15 3 0
       76 LOADK                            R17 K10 ["stopInspectingNative"]
       77 MOVE                             R18 R3
       78 NAMECALL                         R15 R0 K6 ["addListener"]
       80 CALL                             R15 3 0
       81 CLOSEUPVALS                      R3
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETTABLEKS                       R3 R2 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R5 R3 K10 ["ReactGlobals"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K9 [require]
       30 GETTABLEKS                       R6 R3 K11 ["LuauPolyfill"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K12 ["console"]
       35 GETIMPORT                        R7 K9 [require]
       37 GETIMPORT                        R8 K6 [script]
       39 GETTABLEKS                       R8 R8 K13 ["Highlighter"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K14 ["hideOverlay"]
       44 GETTABLEKS                       R9 R7 K15 ["showOverlay"]
       46 GETIMPORT                        R10 K9 [require]
       48 GETTABLEKS                       R11 R2 K16 ["bridge"]
       50 CALL                             R10 1 1
       51 DUPCLOSURE                       R11 K17 [PROTO_0]
       52 DUPCLOSURE                       R12 K18 [PROTO_1]
       53 DUPCLOSURE                       R13 K19 [PROTO_2]
       54 NEWTABLE                         R14 1 0
       56 DUPCLOSURE                       R15 K20 [PROTO_13]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R15 R14 K21 ["setupHighlighter"]
       67 RETURN                           R14 1
