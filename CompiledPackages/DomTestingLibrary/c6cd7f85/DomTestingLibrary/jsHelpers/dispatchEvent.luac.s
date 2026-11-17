PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R2 R1 K0 ["Parent"]
        7 JUMPIFEQKNIL                     R2 ; [+12]
        9 GETTABLEKS                       R2 R1 K0 ["Parent"]
       11 GETTABLEKS                       R2 R2 K0 ["Parent"]
       13 GETIMPORT                        R3 K2 [game]
       15 JUMPIFEQ                         R2 R3 ; [+4]
       17 GETTABLEKS                       R1 R1 K0 ["Parent"]
       19 JUMPBACK                         ; [-15]
       20 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R4 K0 ["CoreGui"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstAncestorOfClass"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["ScreenGui"]
        5 NAMECALL                         R3 R0 K1 ["FindFirstAncestorOfClass"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 MOVE                             R4 R2
       10 JUMP                             ; [+6]
       11 GETIMPORT                        R4 K4 [game]
       13 LOADK                            R6 K0 ["CoreGui"]
       14 NAMECALL                         R4 R4 K5 ["GetService"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R3 ; [+2]
       18 MOVE                             R5 R3
       19 JUMP                             ; [+4]
       20 GETIMPORT                        R5 K8 [Instance.new]
       22 LOADK                            R6 K2 ["ScreenGui"]
       23 CALL                             R5 1 1
       24 LOADNIL                          R6
       25 LOADB                            R7 0
       26 LOADK                            R10 K0 ["CoreGui"]
       27 NAMECALL                         R8 R5 K1 ["FindFirstAncestorOfClass"]
       29 CALL                             R8 2 1
       30 JUMPIF                           R8 ; [+7]
       31 GETTABLEKS                       R8 R5 K9 ["Parent"]
       33 JUMPIFNOTEQKNIL                  R8 ; [+4]
       35 SETTABLEKS                       R4 R5 K9 ["Parent"]
       37 LOADB                            R7 1
       38 LOADK                            R10 K2 ["ScreenGui"]
       39 NAMECALL                         R8 R0 K1 ["FindFirstAncestorOfClass"]
       41 CALL                             R8 2 1
       42 JUMPIF                           R8 ; [+24]
       43 GETTABLEKS                       R8 R0 K9 ["Parent"]
       45 JUMPIFNOTEQKNIL                  R8 ; [+3]
       47 MOVE                             R6 R0
       48 JUMP                             ; [+16]
       49 GETTABLEKS                       R9 R8 K9 ["Parent"]
       51 JUMPIFEQKNIL                     R9 ; [+12]
       53 GETTABLEKS                       R9 R8 K9 ["Parent"]
       55 GETTABLEKS                       R9 R9 K9 ["Parent"]
       57 GETIMPORT                        R10 K4 [game]
       59 JUMPIFEQ                         R9 R10 ; [+4]
       61 GETTABLEKS                       R8 R8 K9 ["Parent"]
       63 JUMPBACK                         ; [-15]
       64 MOVE                             R6 R8
       65 SETTABLEKS                       R5 R6 K9 ["Parent"]
       67 GETUPVAL                         R8 0
       68 MOVE                             R9 R0
       69 MOVE                             R10 R1
       70 CALL                             R8 2 0
       71 JUMPIFEQ                         R3 R5 ; [+7]
       73 LOADNIL                          R8
       74 SETTABLEKS                       R8 R6 K9 ["Parent"]
       76 NAMECALL                         R8 R5 K10 ["Destroy"]
       78 CALL                             R8 1 0
       79 JUMPIFNOT                        R5 ; [+4]
       80 JUMPIFNOT                        R7 ; [+3]
       81 LOADNIL                          R8
       82 SETTABLEKS                       R8 R5 K9 ["Parent"]
       84 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R1 K2 ["X"]
        6 GETTABLEKS                       R6 R2 K2 ["X"]
        8 DIVK                             R5 R6 K3 [2]
        9 ADD                              R3 R4 R5
       10 GETTABLEKS                       R5 R1 K4 ["Y"]
       12 GETTABLEKS                       R7 R2 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R4 R5 R6
       16 RETURN                           R3 2

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R7 R4 K2 ["X"]
        8 DIVK                             R6 R7 K3 [2]
        9 ADD                              R1 R5 R6
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 GETTABLEKS                       R7 R4 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R2 R5 R6
       16 GETUPVAL                         R3 0
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 LOADN                            R7 0
       20 LOADB                            R8 1
       21 LOADNIL                          R9
       22 LOADN                            R10 1
       23 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       25 CALL                             R3 7 0
       26 GETUPVAL                         R3 0
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 LOADN                            R7 0
       30 LOADB                            R8 0
       31 LOADNIL                          R9
       32 LOADN                            R10 1
       33 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       35 CALL                             R3 7 0
       36 GETUPVAL                         R3 0
       37 NAMECALL                         R3 R3 K6 ["WaitForInputEventsProcessed"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R7 R4 K2 ["X"]
        8 DIVK                             R6 R7 K3 [2]
        9 ADD                              R1 R5 R6
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 GETTABLEKS                       R7 R4 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R2 R5 R6
       16 GETUPVAL                         R3 0
       17 LOADK                            R5 K5 [123456]
       18 LOADN                            R6 0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 NAMECALL                         R3 R3 K6 ["SendTouchEvent"]
       23 CALL                             R3 5 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K5 [123456]
       26 LOADN                            R6 2
       27 MOVE                             R7 R1
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K6 ["SendTouchEvent"]
       31 CALL                             R3 5 0
       32 GETUPVAL                         R3 0
       33 NAMECALL                         R3 R3 K7 ["WaitForInputEventsProcessed"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R7 R4 K2 ["X"]
        8 DIVK                             R6 R7 K3 [2]
        9 ADD                              R1 R5 R6
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 GETTABLEKS                       R7 R4 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R2 R5 R6
       16 GETUPVAL                         R3 0
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 LOADNIL                          R7
       20 NAMECALL                         R3 R3 K5 ["SendMouseMoveEvent"]
       22 CALL                             R3 4 0
       23 GETUPVAL                         R3 0
       24 NAMECALL                         R3 R3 K6 ["WaitForInputEventsProcessed"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R7 R4 K2 ["X"]
        8 DIVK                             R6 R7 K3 [2]
        9 ADD                              R1 R5 R6
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 GETTABLEKS                       R7 R4 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R2 R5 R6
       16 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 LOADNIL                          R8
       22 NAMECALL                         R4 R4 K5 ["SendMouseMoveEvent"]
       24 CALL                             R4 4 0
       25 GETUPVAL                         R4 0
       26 NAMECALL                         R4 R4 K6 ["WaitForInputEventsProcessed"]
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R7 R3 K2 ["X"]
       32 SUBK                             R6 R7 K7 [1]
       33 GETTABLEKS                       R8 R3 K4 ["Y"]
       35 SUBK                             R7 R8 K7 [1]
       36 LOADNIL                          R8
       37 NAMECALL                         R4 R4 K5 ["SendMouseMoveEvent"]
       39 CALL                             R4 4 0
       40 GETUPVAL                         R4 0
       41 NAMECALL                         R4 R4 K6 ["WaitForInputEventsProcessed"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["key"]
        3 JUMPIF                           R2 ; [+4]
        4 GETIMPORT                        R2 K2 [error]
        6 LOADK                            R3 K3 ["No key set for event"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 0
        9 LOADB                            R4 1
       10 GETTABLEKS                       R5 R1 K0 ["key"]
       12 LOADB                            R6 0
       13 LOADNIL                          R7
       14 NAMECALL                         R2 R2 K4 ["SendKeyEvent"]
       16 CALL                             R2 5 0
       17 GETUPVAL                         R2 0
       18 NAMECALL                         R2 R2 K5 ["WaitForInputEventsProcessed"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["key"]
        3 JUMPIF                           R2 ; [+4]
        4 GETIMPORT                        R2 K2 [error]
        6 LOADK                            R3 K3 ["No key set for event"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 0
        9 LOADB                            R4 0
       10 GETTABLEKS                       R5 R1 K0 ["key"]
       12 LOADB                            R6 0
       13 LOADNIL                          R7
       14 NAMECALL                         R2 R2 K4 ["SendKeyEvent"]
       16 CALL                             R2 5 0
       17 GETUPVAL                         R2 0
       18 NAMECALL                         R2 R2 K5 ["WaitForInputEventsProcessed"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R4 K0 ["TextBox"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+14]
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETTABLEKS                       R2 R1 K2 ["target"]
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETIMPORT                        R2 K4 [pairs]
       11 GETTABLEKS                       R3 R1 K2 ["target"]
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 SETTABLE                         R6 R0 R5
       16 FORGLOOP                         R2 2 ; [-2]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K6 [error]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["new"]
       24 LOADK                            R4 K8 ["The change event must be fired in a TextBox Instance"]
       25 CALL                             R3 1 -1
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["value"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["value"]
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R0 K1 ["Size"]
        9 SETTABLEKS                       R2 R0 K1 ["Size"]
       11 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R7 R4 K2 ["X"]
        8 DIVK                             R6 R7 K3 [2]
        9 ADD                              R1 R5 R6
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 GETTABLEKS                       R7 R4 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R2 R5 R6
       16 GETUPVAL                         R3 0
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 LOADN                            R7 1
       20 LOADB                            R8 1
       21 LOADNIL                          R9
       22 LOADN                            R10 1
       23 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       25 CALL                             R3 7 0
       26 GETUPVAL                         R3 0
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 LOADN                            R7 1
       30 LOADB                            R8 0
       31 LOADNIL                          R9
       32 LOADN                            R10 1
       33 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       35 CALL                             R3 7 0
       36 GETUPVAL                         R3 0
       37 NAMECALL                         R3 R3 K6 ["WaitForInputEventsProcessed"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIF                           R3 ; [+8]
        3 GETIMPORT                        R4 K1 [error]
        5 GETIMPORT                        R5 K4 [string.format]
        7 LOADK                            R6 K5 ["Event '%s' not supported"]
        8 MOVE                             R7 R1
        9 CALL                             R5 2 -1
       10 CALL                             R4 -1 0
       11 MOVE                             R4 R3
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["LuauPolyfill"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K10 ["Error"]
       22 GETIMPORT                        R4 K8 [require]
       24 GETIMPORT                        R6 K5 [script]
       26 GETTABLEKS                       R6 R6 K6 ["Parent"]
       28 GETTABLEKS                       R5 R6 K11 ["InputValidation.roblox"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K12 ["getGuiObject"]
       33 GETTABLEKS                       R6 R4 K13 ["validateInput"]
       35 DUPCLOSURE                       R7 K14 [PROTO_0]
       36 DUPCLOSURE                       R8 K15 [PROTO_2]
       37 DUPCLOSURE                       R9 K16 [PROTO_5]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R10 K17 [PROTO_6]
       41 DUPCLOSURE                       R11 K18 [PROTO_7]
       42 CAPTURE                          VAL R0
       43 DUPCLOSURE                       R12 K19 [PROTO_8]
       44 CAPTURE                          VAL R0
       45 DUPCLOSURE                       R13 K20 [PROTO_9]
       46 CAPTURE                          VAL R0
       47 DUPCLOSURE                       R14 K21 [PROTO_10]
       48 CAPTURE                          VAL R0
       49 DUPCLOSURE                       R15 K22 [PROTO_11]
       50 CAPTURE                          VAL R0
       51 DUPCLOSURE                       R16 K23 [PROTO_12]
       52 CAPTURE                          VAL R0
       53 DUPCLOSURE                       R17 K24 [PROTO_13]
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R18 K25 [PROTO_14]
       56 DUPCLOSURE                       R19 K26 [PROTO_15]
       57 CAPTURE                          VAL R0
       58 DUPTABLE                         R20 K38 [{"clickWithoutValidation", "tapWithoutValidation", "click", "tap", "mouseEnter", "mouseLeave", "keyDown", "keyUp", "change", "resize", "contextMenu"}]
       59 DUPCLOSURE                       R21 K39 [PROTO_1]
       60 CAPTURE                          VAL R11
       61 SETTABLEKS                       R21 R20 K27 ["clickWithoutValidation"]
       63 DUPCLOSURE                       R21 K39 [PROTO_1]
       64 CAPTURE                          VAL R12
       65 SETTABLEKS                       R21 R20 K28 ["tapWithoutValidation"]
       67 DUPCLOSURE                       R22 K40 [PROTO_4]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R11
       71 NEWCLOSURE                       R21 P13
       72 CAPTURE                          VAL R22
       73 SETTABLEKS                       R21 R20 K29 ["click"]
       75 DUPCLOSURE                       R22 K40 [PROTO_4]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R12
       79 NEWCLOSURE                       R21 P13
       80 CAPTURE                          VAL R22
       81 SETTABLEKS                       R21 R20 K30 ["tap"]
       83 DUPCLOSURE                       R21 K39 [PROTO_1]
       84 CAPTURE                          VAL R13
       85 SETTABLEKS                       R21 R20 K31 ["mouseEnter"]
       87 DUPCLOSURE                       R21 K39 [PROTO_1]
       88 CAPTURE                          VAL R14
       89 SETTABLEKS                       R21 R20 K32 ["mouseLeave"]
       91 DUPCLOSURE                       R21 K39 [PROTO_1]
       92 CAPTURE                          VAL R15
       93 SETTABLEKS                       R21 R20 K33 ["keyDown"]
       95 DUPCLOSURE                       R21 K39 [PROTO_1]
       96 CAPTURE                          VAL R16
       97 SETTABLEKS                       R21 R20 K34 ["keyUp"]
       99 DUPCLOSURE                       R21 K39 [PROTO_1]
      100 CAPTURE                          VAL R17
      101 SETTABLEKS                       R21 R20 K35 ["change"]
      103 DUPCLOSURE                       R21 K39 [PROTO_1]
      104 CAPTURE                          VAL R18
      105 SETTABLEKS                       R21 R20 K36 ["resize"]
      107 DUPCLOSURE                       R22 K40 [PROTO_4]
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R19
      111 NEWCLOSURE                       R21 P13
      112 CAPTURE                          VAL R22
      113 SETTABLEKS                       R21 R20 K37 ["contextMenu"]
      115 DUPCLOSURE                       R21 K41 [PROTO_16]
      116 CAPTURE                          VAL R20
      117 RETURN                           R21 1
