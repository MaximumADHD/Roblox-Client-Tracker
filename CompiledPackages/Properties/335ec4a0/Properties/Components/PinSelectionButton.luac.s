PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["pinSelection"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["unpinSelection"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["enabled"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["enabled"]
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["toggle"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AngleAtTime"]
        3 GETUPVAL                         R3 1
        4 SUB                              R2 R0 R3
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useToggleState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["session"]
        7 GETTABLEKS                       R2 R2 K2 ["pinning"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R2
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K4 ["useEffect"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R3
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K5 ["useEventCallback"]
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 2
       40 CALL                             R5 0 1
       41 GETTABLEKS                       R5 R5 K6 ["Animations"]
       43 GETTABLEKS                       R5 R5 K7 ["RotationWiggle"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K8 ["useClock"]
       48 CALL                             R6 0 1
       49 GETUPVAL                         R7 3
       50 LOADNIL                          R8
       51 GETTABLEKS                       R9 R5 K9 ["Length"]
       53 CALL                             R7 2 2
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K10 ["useEventConnection"]
       57 GETTABLEKS                       R10 R2 K11 ["selectionUpdatedWhilePinned"]
       59 NEWCLOSURE                       R11 P3
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R12 0 0
       64 CALL                             R9 3 0
       65 GETUPVAL                         R9 4
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K12 ["View"]
       69 DUPTABLE                         R11 K16 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
       70 GETTABLEKS                       R12 R0 K15 ["LayoutOrder"]
       72 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       74 GETUPVAL                         R12 4
       75 GETUPVAL                         R13 5
       76 GETTABLEKS                       R13 R13 K12 ["View"]
       78 DUPTABLE                         R14 K18 [{["tag"] = "auto-xy", ["Rotation"]}]
       79 JUMPIFEQKNIL                     R7 ; [+8]
       81 NEWCLOSURE                       R17 P4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R7
       84 NAMECALL                         R15 R6 K19 ["map"]
       86 CALL                             R15 2 1
       87 JUMP                             ; [+1]
       88 LOADN                            R15 0
       89 SETTABLEKS                       R15 R14 K17 ["Rotation"]
       91 DUPTABLE                         R15 K21 [{"Pin"}]
       92 GETUPVAL                         R16 4
       93 GETUPVAL                         R17 6
       94 DUPTABLE                         R18 K27 [{["icon"], ["size"], ["onActivated"], ["LayoutOrder"], ["testId"] = "selection-pinning-button"}]
       95 DUPTABLE                         R19 K30 [{"name", "variant"}]
       96 GETUPVAL                         R20 7
       97 GETTABLEKS                       R20 R20 K20 ["Pin"]
       99 SETTABLEKS                       R20 R19 K28 ["name"]
      101 GETTABLEKS                       R21 R1 K31 ["enabled"]
      103 JUMPIFNOT                        R21 ; [+4]
      104 GETUPVAL                         R20 8
      105 GETTABLEKS                       R20 R20 K32 ["Filled"]
      107 JUMP                             ; [+3]
      108 GETUPVAL                         R20 8
      109 GETTABLEKS                       R20 R20 K33 ["Regular"]
      111 SETTABLEKS                       R20 R19 K29 ["variant"]
      113 SETTABLEKS                       R19 R18 K22 ["icon"]
      115 GETUPVAL                         R19 9
      116 GETTABLEKS                       R19 R19 K34 ["XSmall"]
      118 SETTABLEKS                       R19 R18 K23 ["size"]
      120 SETTABLEKS                       R4 R18 K24 ["onActivated"]
      122 GETTABLEKS                       R19 R0 K15 ["LayoutOrder"]
      124 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      126 CALL                             R16 2 1
      127 SETTABLEKS                       R16 R15 K20 ["Pin"]
      129 CALL                             R12 3 -1
      130 CALL                             R9 -1 -1
      131 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["RpcTypes"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Hooks"]
       33 GETTABLEKS                       R7 R7 K12 ["useTemporaryState"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Hooks"]
       40 GETTABLEKS                       R8 R8 K13 ["useVisualValues"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R2 K14 ["IconButton"]
       45 GETTABLEKS                       R9 R2 K15 ["Enums"]
       47 GETTABLEKS                       R9 R9 K16 ["IconName"]
       49 GETTABLEKS                       R10 R2 K15 ["Enums"]
       51 GETTABLEKS                       R10 R10 K17 ["IconSize"]
       53 GETTABLEKS                       R11 R2 K15 ["Enums"]
       55 GETTABLEKS                       R11 R11 K18 ["IconVariant"]
       57 GETTABLEKS                       R12 R3 K19 ["createElement"]
       59 DUPCLOSURE                       R13 K20 [PROTO_5]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R10
       70 GETTABLEKS                       R14 R3 K21 ["memo"]
       72 MOVE                             R15 R13
       73 CALL                             R14 1 -1
       74 RETURN                           R14 -1
