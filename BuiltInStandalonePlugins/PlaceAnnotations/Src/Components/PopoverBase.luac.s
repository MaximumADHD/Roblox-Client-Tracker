PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R1 K2 ["X"]
        7 GETTABLEKS                       R6 R2 K2 ["X"]
        9 JUMPIFNOTLE                      R6 R5 ; [+12]
       11 GETTABLEKS                       R5 R1 K2 ["X"]
       13 GETTABLEKS                       R7 R2 K2 ["X"]
       15 GETTABLEKS                       R8 R3 K2 ["X"]
       17 ADD                              R6 R7 R8
       18 JUMPIFLT                         R5 R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 LOADB                            R5 0
       23 GETTABLEKS                       R6 R1 K3 ["Y"]
       25 GETTABLEKS                       R7 R2 K3 ["Y"]
       27 JUMPIFNOTLE                      R7 R6 ; [+12]
       29 GETTABLEKS                       R6 R1 K3 ["Y"]
       31 GETTABLEKS                       R8 R2 K3 ["Y"]
       33 GETTABLEKS                       R9 R3 K3 ["Y"]
       35 ADD                              R7 R8 R9
       36 JUMPIFLT                         R6 R7 ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 AND                              R6 R4 R5
       41 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        4 JUMPIFNOTEQ                      R2 R3 ; [+8]
        6 GETUPVAL                         R2 0
        7 JUMPIF                           R2 ; [+5]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K4 ["OnFocusLost"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K5 ["UserInputType"]
       15 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseButton1]
       17 JUMPIFNOTEQ                      R2 R3 ; [+63]
       19 GETUPVAL                         R2 2
       20 JUMPIF                           R2 ; [+3]
       21 LOADB                            R2 1
       22 SETUPVAL                         R2 2
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 3
       25 JUMPIFNOT                        R2 ; [+55]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R2 R3 K8 ["current"]
       29 JUMPIFNOT                        R2 ; [+51]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R3 R4 K8 ["current"]
       33 GETTABLEKS                       R4 R0 K9 ["Position"]
       35 GETTABLEKS                       R5 R3 K10 ["AbsolutePosition"]
       37 GETTABLEKS                       R6 R3 K11 ["AbsoluteSize"]
       39 LOADB                            R7 0
       40 GETTABLEKS                       R8 R4 K12 ["X"]
       42 GETTABLEKS                       R9 R5 K12 ["X"]
       44 JUMPIFNOTLE                      R9 R8 ; [+12]
       46 GETTABLEKS                       R8 R4 K12 ["X"]
       48 GETTABLEKS                       R10 R5 K12 ["X"]
       50 GETTABLEKS                       R11 R6 K12 ["X"]
       52 ADD                              R9 R10 R11
       53 JUMPIFLT                         R8 R9 ; [+2]
       55 LOADB                            R7 0 +1
       56 LOADB                            R7 1
       57 LOADB                            R8 0
       58 GETTABLEKS                       R9 R4 K13 ["Y"]
       60 GETTABLEKS                       R10 R5 K13 ["Y"]
       62 JUMPIFNOTLE                      R10 R9 ; [+12]
       64 GETTABLEKS                       R9 R4 K13 ["Y"]
       66 GETTABLEKS                       R11 R5 K13 ["Y"]
       68 GETTABLEKS                       R12 R6 K13 ["Y"]
       70 ADD                              R10 R11 R12
       71 JUMPIFLT                         R9 R10 ; [+2]
       73 LOADB                            R8 0 +1
       74 LOADB                            R8 1
       75 AND                              R2 R7 R8
       76 JUMPIF                           R2 ; [+4]
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R2 R3 K4 ["OnFocusLost"]
       80 CALL                             R2 0 0
       81 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["DebounceFocusLost"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["InputEnded"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R1 K2 ["Connect"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R1
       17 CLOSEUPVALS                      R0
       18 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K2 ["useRef"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K3 ["useState"]
       18 GETIMPORT                        R5 K6 [Vector2.new]
       20 GETTABLEKS                       R6 R1 K7 ["Width"]
       22 GETTABLEKS                       R7 R1 K8 ["Height"]
       24 CALL                             R5 2 -1
       25 CALL                             R4 -1 2
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R7 R1 K9 ["Position"]
       29 GETTABLEKS                       R8 R4 K10 ["X"]
       31 GETTABLEKS                       R9 R4 K11 ["Y"]
       33 CALL                             R6 3 1
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K12 ["useContext"]
       37 GETUPVAL                         R8 5
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R7 K13 ["isTagDropdownOpen"]
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R9 R10 K14 ["useEffect"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R3
       49 NEWTABLE                         R11 0 2
       51 GETTABLEKS                       R12 R1 K15 ["OnFocusLost"]
       53 GETTABLEKS                       R13 R3 K16 ["current"]
       55 SETLIST                          R11 R12 2 [1]
       57 CALL                             R9 2 0
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R9 R10 K17 ["createElement"]
       61 GETUPVAL                         R10 7
       62 DUPTABLE                         R11 K24 [{"ref", "Position", "Size", "onAbsoluteSizeChanged", "backgroundStyle", "stateLayer", "tag"}]
       63 SETTABLEKS                       R3 R11 K18 ["ref"]
       65 SETTABLEKS                       R6 R11 K9 ["Position"]
       67 GETIMPORT                        R12 K27 [UDim2.fromOffset]
       69 GETTABLEKS                       R13 R1 K7 ["Width"]
       71 GETTABLEKS                       R14 R1 K8 ["Height"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K19 ["Size"]
       76 NEWCLOSURE                       R12 P1
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R12 R11 K20 ["onAbsoluteSizeChanged"]
       80 GETTABLEKS                       R14 R2 K28 ["Color"]
       82 GETTABLEKS                       R13 R14 K29 ["Surface"]
       84 GETTABLEKS                       R12 R13 K30 ["Surface_200"]
       86 SETTABLEKS                       R12 R11 K21 ["backgroundStyle"]
       88 DUPTABLE                         R12 K32 [{"affordance"}]
       89 GETUPVAL                         R14 8
       90 GETTABLEKS                       R13 R14 K33 ["None"]
       92 SETTABLEKS                       R13 R12 K31 ["affordance"]
       94 SETTABLEKS                       R12 R11 K22 ["stateLayer"]
       96 LOADK                            R12 K34 ["auto-y col align-x-left gap-xsmall padding-medium radius-small"]
       97 SETTABLEKS                       R12 R11 K23 ["tag"]
       99 GETTABLEKS                       R12 R1 K35 ["children"]
      101 CALL                             R9 3 -1
      102 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["View"]
       37 GETTABLEKS                       R7 R1 K13 ["Enums"]
       39 GETTABLEKS                       R6 R7 K14 ["StateLayerAffordance"]
       41 GETTABLEKS                       R8 R1 K15 ["Hooks"]
       43 GETTABLEKS                       R7 R8 K16 ["useTokens"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K8 ["Src"]
       49 GETTABLEKS                       R10 R11 K15 ["Hooks"]
       51 GETTABLEKS                       R9 R10 K17 ["useViewportPosition"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R13 R0 K8 ["Src"]
       58 GETTABLEKS                       R12 R13 K18 ["Contexts"]
       60 GETTABLEKS                       R11 R12 K19 ["TagDropdownContext"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R9 R10 K19 ["TagDropdownContext"]
       65 GETIMPORT                        R10 K21 [game]
       67 LOADK                            R12 K22 ["UserInputService"]
       68 NAMECALL                         R10 R10 K23 ["GetService"]
       70 CALL                             R10 2 1
       71 DUPTABLE                         R11 K27 [{"Width", "Height", "Position"}]
       72 LOADN                            R12 0
       73 SETTABLEKS                       R12 R11 K24 ["Width"]
       75 LOADN                            R12 0
       76 SETTABLEKS                       R12 R11 K25 ["Height"]
       78 GETIMPORT                        R12 K30 [UDim2.fromOffset]
       80 LOADN                            R13 0
       81 LOADN                            R14 0
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K26 ["Position"]
       85 DUPCLOSURE                       R12 K31 [PROTO_0]
       86 DUPCLOSURE                       R13 K32 [PROTO_5]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 RETURN                           R13 1
