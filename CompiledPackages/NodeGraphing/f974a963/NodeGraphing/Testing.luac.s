PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["X"]
        3 GETTABLEKS                       R6 R0 K1 ["Y"]
        5 JUMPIFNOTEQKS                    R1 K2 ["left"] ; [+3]
        7 LOADN                            R7 0
        8 JUMP                             ; [+1]
        9 LOADN                            R7 1
       10 MOVE                             R8 R2
       11 GETIMPORT                        R9 K4 [game]
       13 LOADN                            R10 1
       14 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       16 CALL                             R3 7 0
       17 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R2 10
        1 LOADN                            R0 232
        2 LOADN                            R1 40
        3 FORNPREP                         R0
        4 LOADN                            R5 10
        5 LOADN                            R3 232
        6 LOADN                            R4 40
        7 FORNPREP                         R3
        8 LOADB                            R6 0
        9 GETUPVAL                         R7 0
       10 MOVE                             R9 R2
       11 MOVE                             R10 R5
       12 NAMECALL                         R7 R7 K0 ["GetGuiObjectsAtPosition"]
       14 CALL                             R7 3 3
       15 FORGPREP                         R7
       16 LOADK                            R15 K1 ["GuiObject"]
       17 NAMECALL                         R13 R11 K2 ["IsA"]
       19 CALL                             R13 2 1
       20 FASTCALL2K                       ASSERT R13 K3 ; [+4]
       22 LOADK                            R14 K3 ["Luau"]
       23 GETIMPORT                        R12 K5 [assert]
       25 CALL                             R12 2 0
       26 GETTABLEKS                       R12 R11 K6 ["Active"]
       28 JUMPIFNOT                        R12 ; [+2]
       29 LOADB                            R6 1
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R7 2 ; [-16]
       33 JUMPIF                           R6 ; [+6]
       34 GETIMPORT                        R7 K9 [Vector2.new]
       36 MOVE                             R8 R2
       37 MOVE                             R9 R5
       38 CALL                             R7 2 -1
       39 RETURN                           R7 -1
       40 FORNLOOP                         R3
       41 FORNLOOP                         R0
       42 GETIMPORT                        R0 K11 [error]
       44 LOADK                            R1 K12 ["Couldn't find any blank space"]
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R3 R0 K0 ["X"]
        4 GETTABLEKS                       R4 R0 K1 ["Y"]
        6 LOADN                            R5 1
        7 LOADB                            R6 1
        8 GETIMPORT                        R7 K3 [game]
       10 LOADN                            R8 1
       11 NAMECALL                         R1 R1 K4 ["SendMouseButtonEvent"]
       13 CALL                             R1 7 0
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R3 R0 K0 ["X"]
       18 GETTABLEKS                       R4 R0 K1 ["Y"]
       20 LOADN                            R5 1
       21 LOADB                            R6 0
       22 GETIMPORT                        R7 K3 [game]
       24 LOADN                            R8 1
       25 NAMECALL                         R1 R1 K4 ["SendMouseButtonEvent"]
       27 CALL                             R1 7 0
       28 GETUPVAL                         R0 1
       29 NAMECALL                         R0 R0 K5 ["WaitForInputEventsProcessed"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBlankSpace"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["act"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R1 1 0
       11 DUPTABLE                         R1 K4 [{"insertNode", "insertParameter"}]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["insertNode"]
       15 SETTABLEKS                       R2 R1 K2 ["insertNode"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K3 ["insertParameter"]
       20 SETTABLEKS                       R2 R1 K3 ["insertParameter"]
       22 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 CALL                             R6 1 1
        7 GETTABLEKS                       R6 R6 K0 ["queryByText"]
        9 GETUPVAL                         R7 1
       10 CALL                             R6 1 1
       11 JUMPIFEQKNIL                     R6 ; [+8]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K1 ["click"]
       16 MOVE                             R8 R6
       17 CALL                             R7 1 0
       18 LOADB                            R7 1
       19 RETURN                           R7 1
       20 FORGLOOP                         R1 2 ; [-17]
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 MOVE                             R2 R1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["queryAllByTestId"]
        8 LOADK                            R4 K1 ["--foundation-menu-item"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 1
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R0 0
       13 MOVE                             R2 R1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K0 ["queryAllByTestId"]
       17 LOADK                            R4 K2 ["--foundation-menu-submenu-item"]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 1
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K4 [error]
       24 LOADK                            R4 K5 ["Couldn't find dropdown item with text \"%*\""]
       25 MOVE                             R6 R0
       26 NAMECALL                         R4 R4 K6 ["format"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFEQKNIL                     R1 ; [+30]
        4 LOADK                            R4 K1 ["CompositorNode"]
        5 NAMECALL                         R2 R1 K2 ["HasTag"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+3]
        9 GETTABLEKS                       R1 R1 K0 ["Parent"]
       11 JUMP                             ; [+20]
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K3 ["getByTestId"]
       17 LOADK                            R3 K4 ["CompositorNode-Title"]
       18 CALL                             R2 1 1
       19 LOADK                            R6 K5 ["TextLabel"]
       20 NAMECALL                         R4 R2 K6 ["IsA"]
       22 CALL                             R4 2 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["Title is not a TextLabel"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R3 R2 K10 ["Text"]
       31 RETURN                           R3 1
       32 JUMPBACK                         ; [-31]
       33 LOADNIL                          R2
       34 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["queryAllByTestId"]
        3 LOADK                            R3 K1 ["RenderedCompositorPin-DebugMarker"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K2 ["PinName"]
        7 NAMECALL                         R7 R6 K3 ["GetAttribute"]
        9 CALL                             R7 2 1
       10 JUMPIFEQ                         R7 R1 ; [+7]
       12 LOADK                            R9 K4 ["DisplayName"]
       13 NAMECALL                         R7 R6 K3 ["GetAttribute"]
       15 CALL                             R7 2 1
       16 JUMPIFNOTEQ                      R7 R1 ; [+22]
       18 GETUPVAL                         R7 1
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFEQKNIL                     R7 ; [+17]
       23 MOVE                             R10 R0
       24 NAMECALL                         R8 R7 K5 ["match"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+11]
       28 LOADK                            R11 K6 ["GuiObject"]
       29 NAMECALL                         R9 R6 K7 ["IsA"]
       31 CALL                             R9 2 1
       32 FASTCALL2K                       ASSERT R9 K8 ; [+4]
       34 LOADK                            R10 K8 ["Pin is not GuiObject"]
       35 GETIMPORT                        R8 K10 [assert]
       37 CALL                             R8 2 0
       38 RETURN                           R6 1
       39 FORGLOOP                         R2 2 ; [-34]
       41 LOADNIL                          R2
       42 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+11]
        6 GETIMPORT                        R3 K1 [error]
        8 LOADK                            R5 K2 ["Couldn't find a pin \"%*\" under \"%*\""]
        9 MOVE                             R7 R1
       10 MOVE                             R8 R0
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 3 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 0
       16 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R3 R0 K0 ["X"]
        4 GETTABLEKS                       R4 R0 K1 ["Y"]
        6 LOADN                            R5 0
        7 LOADB                            R6 1
        8 GETIMPORT                        R7 K3 [game]
       10 LOADN                            R8 1
       11 NAMECALL                         R1 R1 K4 ["SendMouseButtonEvent"]
       13 CALL                             R1 7 0
       14 GETUPVAL                         R0 1
       15 NAMECALL                         R0 R0 K5 ["WaitForInputEventsProcessed"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseLocation"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R4 R0 K2 ["X"]
        7 SUBK                             R3 R4 K1 [10]
        8 GETTABLEKS                       R5 R0 K3 ["Y"]
       10 SUBK                             R4 R5 K1 [10]
       11 GETIMPORT                        R5 K5 [game]
       13 NAMECALL                         R1 R1 K6 ["SendMouseMoveEvent"]
       15 CALL                             R1 4 0
       16 GETUPVAL                         R1 1
       17 NAMECALL                         R1 R1 K7 ["WaitForInputEventsProcessed"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find a pin \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETTABLEKS                       R4 R2 K4 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R2 K6 ["AbsoluteSize"]
       21 DIVK                             R5 R6 K5 [2]
       22 ADD                              R3 R4 R5
       23 GETUPVAL                         R4 1
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U2
       27 CALL                             R4 1 0
       28 GETUPVAL                         R4 1
       29 DUPCLOSURE                       R5 K7 [PROTO_10]
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U2
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["X"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Y"]
        7 GETIMPORT                        R4 K3 [game]
        9 NAMECALL                         R0 R0 K4 ["SendMouseMoveEvent"]
       11 CALL                             R0 4 0
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K5 ["WaitForInputEventsProcessed"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find a pin \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETTABLEKS                       R4 R2 K4 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R2 K6 ["AbsoluteSize"]
       21 DIVK                             R5 R6 K5 [2]
       22 ADD                              R3 R4 R5
       23 GETUPVAL                         R4 1
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R3
       27 CALL                             R4 1 0
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K7 ["mouseUp"]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADK                            R5 K0 [".CompositorNodeProperty[$PropertyName = \"%*\"]"]
        2 MOVE                             R7 R1
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 2 1
        6 MOVE                             R4 R5
        7 NAMECALL                         R2 R2 K2 ["QueryDescendants"]
        9 CALL                             R2 2 3
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 JUMPIFEQKNIL                     R7 ; [+17]
       16 MOVE                             R10 R0
       17 NAMECALL                         R8 R7 K3 ["match"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+11]
       21 LOADK                            R11 K4 ["GuiObject"]
       22 NAMECALL                         R9 R6 K5 ["IsA"]
       24 CALL                             R9 2 1
       25 FASTCALL2K                       ASSERT R9 K6 ; [+4]
       27 LOADK                            R10 K6 ["Property is not GuiObject"]
       28 GETIMPORT                        R8 K8 [assert]
       30 CALL                             R8 2 0
       31 RETURN                           R6 1
       32 FORGLOOP                         R2 2 ; [-22]
       34 LOADNIL                          R2
       35 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+11]
        6 GETIMPORT                        R3 K1 [error]
        8 LOADK                            R5 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R7 R1
       10 MOVE                             R8 R0
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 3 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 0
       16 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R3 R3 K4 ["queryByTestId"]
       22 LOADK                            R4 K5 ["--foundation-number-input--field--textbox"]
       23 CALL                             R3 1 1
       24 JUMPIFEQKNIL                     R3 ; [+14]
       26 LOADK                            R7 K6 ["TextBox"]
       27 NAMECALL                         R5 R3 K7 ["IsA"]
       29 CALL                             R5 2 1
       30 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       32 LOADK                            R6 K8 ["Internal number input text box is not a text box"]
       33 GETIMPORT                        R4 K10 [assert]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R3 K11 ["Text"]
       38 RETURN                           R4 1
       39 GETUPVAL                         R4 1
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R4 R4 K4 ["queryByTestId"]
       44 LOADK                            R5 K12 ["--foundation-text-input--internal-text-input--textbox"]
       45 CALL                             R4 1 1
       46 JUMPIFEQKNIL                     R4 ; [+14]
       48 LOADK                            R8 K6 ["TextBox"]
       49 NAMECALL                         R6 R4 K7 ["IsA"]
       51 CALL                             R6 2 1
       52 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       54 LOADK                            R7 K13 ["Internal text input text box is not a text box"]
       55 GETIMPORT                        R5 K10 [assert]
       57 CALL                             R5 2 0
       58 GETTABLEKS                       R5 R4 K11 ["Text"]
       60 RETURN                           R5 1
       61 GETIMPORT                        R5 K1 [error]
       63 LOADK                            R7 K14 ["Couldn't figure out what the property text %*.%* is"]
       64 MOVE                             R9 R0
       65 MOVE                             R10 R1
       66 NAMECALL                         R7 R7 K3 ["format"]
       68 CALL                             R7 3 1
       69 MOVE                             R6 R7
       70 CALL                             R5 1 0
       71 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K4 ["getByTestId"]
       23 LOADK                            R5 K5 ["--foundation-number-input"]
       24 CALL                             R4 1 1
       25 LOADK                            R5 K6 ["clickWithoutValidation"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K4 ["getByTestId"]
       23 LOADK                            R5 K5 ["--foundation-text-input"]
       24 CALL                             R4 1 1
       25 LOADK                            R5 K6 ["clickWithoutValidation"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["click"]
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R2
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R4 R4 K5 ["getByTestId"]
       25 LOADK                            R5 K6 ["--foundation-checkbox"]
       26 CALL                             R4 1 -1
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R4 R4 K4 ["queryByTestId"]
       22 LOADK                            R5 K5 ["--foundation-checkbox--checkmark"]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKNIL                  R4 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+11]
        6 GETIMPORT                        R4 K1 [error]
        8 LOADK                            R6 K2 ["Couldn't find property \"%*\" under \"%*\""]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R0
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 3 1
       14 MOVE                             R5 R6
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["click"]
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R2
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R4 R4 K5 ["getByTestId"]
       25 LOADK                            R5 K6 ["--foundation-dropdown--control"]
       26 CALL                             R4 1 -1
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetFocusedTextBox"]
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["No focused TextBox"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["ReleaseFocus"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFocusedTextBox"]
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["No focused TextBox"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Insert Node"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Insert Parameter"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_29:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["queryAllByTestId"]
        4 LOADK                            R3 K1 ["CompositorNode-Title"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R10 K2 ["TextLabel"]
        8 NAMECALL                         R8 R6 K3 ["IsA"]
       10 CALL                             R8 2 1
       11 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       13 LOADK                            R9 K4 ["Title is not a TextLabel"]
       14 GETIMPORT                        R7 K6 [assert]
       16 CALL                             R7 2 0
       17 GETTABLEKS                       R7 R6 K7 ["Text"]
       19 JUMPIFNOTEQ                      R7 R0 ; [+2]
       21 ADDK                             R1 R1 K8 [1]
       22 FORGLOOP                         R2 2 ; [-16]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StylingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["UserInputService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["VirtualInputManager"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["NodeGraphing"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["Dev"]
       37 GETTABLEKS                       R6 R6 K15 ["ReactTestingLibrary"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K16 ["act"]
       42 GETTABLEKS                       R7 R5 K17 ["fireEvent"]
       44 GETTABLEKS                       R8 R5 K18 ["screen"]
       46 GETTABLEKS                       R9 R5 K19 ["within"]
       48 NEWTABLE                         R10 16 0
       50 DUPCLOSURE                       R11 K20 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 DUPCLOSURE                       R12 K21 [PROTO_1]
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R12 R10 K22 ["getBlankSpace"]
       56 DUPCLOSURE                       R12 K23 [PROTO_3]
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R12 R10 K24 ["rightClickBlankSpace"]
       62 DUPCLOSURE                       R12 K25 [PROTO_5]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R13 K26 [PROTO_6]
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R14 K27 [PROTO_7]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R13
       71 DUPCLOSURE                       R15 K28 [PROTO_8]
       72 CAPTURE                          VAL R14
       73 DUPCLOSURE                       R16 K29 [PROTO_11]
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R16 R10 K30 ["startDraggingPin"]
       80 DUPCLOSURE                       R16 K31 [PROTO_13]
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R16 R10 K32 ["mouseUpOnPin"]
       87 DUPCLOSURE                       R16 K33 [PROTO_14]
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R13
       90 DUPCLOSURE                       R17 K34 [PROTO_15]
       91 CAPTURE                          VAL R16
       92 DUPCLOSURE                       R18 K35 [PROTO_16]
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R9
       95 SETTABLEKS                       R18 R10 K36 ["readPropertyText"]
       97 DUPCLOSURE                       R18 K37 [PROTO_17]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 SETTABLEKS                       R18 R10 K38 ["clickPropertyNumberBox"]
      103 DUPCLOSURE                       R18 K39 [PROTO_18]
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R9
      107 SETTABLEKS                       R18 R10 K40 ["clickPropertyTextBox"]
      109 DUPCLOSURE                       R18 K41 [PROTO_19]
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R9
      113 SETTABLEKS                       R18 R10 K42 ["clickPropertyCheckbox"]
      115 DUPCLOSURE                       R18 K43 [PROTO_20]
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R9
      118 SETTABLEKS                       R18 R10 K44 ["isPropertyCheckboxChecked"]
      120 DUPCLOSURE                       R18 K45 [PROTO_21]
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R9
      124 SETTABLEKS                       R18 R10 K46 ["clickPropertyDropdown"]
      126 DUPCLOSURE                       R18 K47 [PROTO_22]
      127 CAPTURE                          VAL R12
      128 SETTABLEKS                       R18 R10 K48 ["clickDropdownItem"]
      130 DUPCLOSURE                       R18 K49 [PROTO_24]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R6
      133 SETTABLEKS                       R18 R10 K50 ["setFocusedTextBoxText"]
      135 DUPCLOSURE                       R18 K51 [PROTO_26]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R6
      138 SETTABLEKS                       R18 R10 K52 ["releaseFocusedTextBox"]
      140 DUPCLOSURE                       R18 K53 [PROTO_27]
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R1
      143 SETTABLEKS                       R18 R10 K54 ["insertNode"]
      145 DUPCLOSURE                       R18 K55 [PROTO_28]
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R18 R10 K56 ["insertParameter"]
      150 DUPCLOSURE                       R18 K57 [PROTO_29]
      151 CAPTURE                          VAL R8
      152 SETTABLEKS                       R18 R10 K58 ["countNodesWithTitle"]
      154 RETURN                           R10 1
