PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["setContextMenuItems"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["View"]
        6 DUPTABLE                         R2 K3 [{"Position"}]
        7 GETUPVAL                         R4 2
        8 JUMPIFEQKNIL                     R4 ; [+11]
       10 GETIMPORT                        R3 K6 [UDim2.fromOffset]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K7 ["X"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K8 ["Y"]
       18 CALL                             R3 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K2 ["Position"]
       23 GETUPVAL                         R4 3
       24 JUMPIFNOT                        R4 ; [+63]
       25 GETUPVAL                         R5 3
       26 LENGTH                           R4 R5
       27 LOADN                            R5 0
       28 JUMPIFNOTLT                      R5 R4 ; [+59]
       30 NEWTABLE                         R3 1 0
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["createElement"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K9 ["Menu"]
       39 DUPTABLE                         R7 K19 [{["isOpen"] = True, ["items"], ["size"], ["width"], ["maxHeight"], ["side"], ["align"], ["onPressedOutside"]}]
       40 GETUPVAL                         R8 3
       41 SETTABLEKS                       R8 R7 K12 ["items"]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K20 ["Enums"]
       46 GETTABLEKS                       R8 R8 K21 ["InputSize"]
       48 GETTABLEKS                       R8 R8 K22 ["XSmall"]
       50 SETTABLEKS                       R8 R7 K13 ["size"]
       52 GETIMPORT                        R8 K25 [UDim.new]
       54 LOADN                            R9 0
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K26 ["ContextMenuWidth"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K14 ["width"]
       61 GETUPVAL                         R8 5
       62 SETTABLEKS                       R8 R7 K15 ["maxHeight"]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K20 ["Enums"]
       67 GETTABLEKS                       R8 R8 K27 ["PopoverSide"]
       69 GETTABLEKS                       R8 R8 K28 ["Bottom"]
       71 SETTABLEKS                       R8 R7 K16 ["side"]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K20 ["Enums"]
       76 GETTABLEKS                       R8 R8 K29 ["PopoverAlign"]
       78 GETTABLEKS                       R8 R8 K30 ["Start"]
       80 SETTABLEKS                       R8 R7 K17 ["align"]
       82 GETUPVAL                         R8 6
       83 SETTABLEKS                       R8 R7 K18 ["onPressedOutside"]
       85 CALL                             R5 2 1
       86 SETTABLE                         R5 R3 R4
       87 JUMP                             ; [+1]
       88 LOADNIL                          R3
       89 CALL                             R0 3 -1
       90 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K1 ["Items"]
        8 GETTABLEKS                       R3 R1 K2 ["Position"]
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 2
       12 GETUPVAL                         R7 3
       13 CALL                             R7 0 1
       14 JUMPIF                           R7 ; [+5]
       15 LOADN                            R7 0
       16 JUMPIFNOTLT                      R7 R5 ; [+3]
       18 MOVE                             R6 R5
       19 JUMP                             ; [+1]
       20 LOADNIL                          R6
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R9 0 0
       28 CALL                             R7 2 1
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       32 NEWCLOSURE                       R9 P1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 NEWTABLE                         R10 0 3
       42 MOVE                             R11 R3
       43 MOVE                             R12 R2
       44 MOVE                             R13 R6
       45 SETLIST                          R10 R11 3 [1]
       47 CALL                             R8 2 -1
       48 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["StyleConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Controllers"]
       36 GETTABLEKS                       R5 R5 K13 ["PluginController"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K15 ["useContextMenuState"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K16 ["usePluginSize"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Flags"]
       63 GETTABLEKS                       R8 R8 K18 ["getFFlagAmrUseQWidgetPopovers"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K19 [PROTO_2]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 RETURN                           R8 1
