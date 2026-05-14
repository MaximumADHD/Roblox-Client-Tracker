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
       39 DUPTABLE                         R7 K17 [{"isOpen", "items", "size", "width", "side", "align", "onPressedOutside"}]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K10 ["isOpen"]
       43 GETUPVAL                         R8 3
       44 SETTABLEKS                       R8 R7 K11 ["items"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K18 ["Enums"]
       49 GETTABLEKS                       R8 R8 K19 ["InputSize"]
       51 GETTABLEKS                       R8 R8 K20 ["XSmall"]
       53 SETTABLEKS                       R8 R7 K12 ["size"]
       55 GETIMPORT                        R8 K23 [UDim.new]
       57 LOADN                            R9 0
       58 GETUPVAL                         R10 4
       59 GETTABLEKS                       R10 R10 K24 ["ContextMenuWidth"]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K13 ["width"]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K18 ["Enums"]
       67 GETTABLEKS                       R8 R8 K25 ["PopoverSide"]
       69 GETTABLEKS                       R8 R8 K26 ["Bottom"]
       71 SETTABLEKS                       R8 R7 K14 ["side"]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K18 ["Enums"]
       76 GETTABLEKS                       R8 R8 K27 ["PopoverAlign"]
       78 GETTABLEKS                       R8 R8 K28 ["Start"]
       80 SETTABLEKS                       R8 R7 K15 ["align"]
       82 GETUPVAL                         R8 5
       83 SETTABLEKS                       R8 R7 K16 ["onPressedOutside"]
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
       11 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 2
       30 MOVE                             R8 R3
       31 MOVE                             R9 R2
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 -1
       35 RETURN                           R5 -1

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
       48 DUPCLOSURE                       R6 K16 [PROTO_2]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 RETURN                           R6 1
