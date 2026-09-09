PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["ViewportRectContext"]
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R1 K3 ["hasDeletableSelection"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R6 0 2
       27 GETTABLEKS                       R7 R1 K5 ["deleteSelection"]
       29 GETTABLEKS                       R8 R0 K6 ["close"]
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R7 0 2
       42 GETTABLEKS                       R8 R2 K7 ["frameSelection"]
       44 GETTABLEKS                       R9 R0 K6 ["close"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 GETTABLEKS                       R6 R0 K8 ["isOpen"]
       51 JUMPIF                           R6 ; [+2]
       52 LOADNIL                          R6
       53 RETURN                           R6 1
       54 NEWTABLE                         R6 0 2
       56 DUPTABLE                         R7 K10 [{"items"}]
       57 NEWTABLE                         R8 0 1
       59 GETUPVAL                         R9 3
       60 DUPTABLE                         R10 K17 [{["id"] = "delete", ["text"] = "Delete", ["isDisabled"], ["onActivated"]}]
       61 NOT                              R11 R3
       62 SETTABLEKS                       R11 R10 K15 ["isDisabled"]
       64 SETTABLEKS                       R4 R10 K16 ["onActivated"]
       66 CALL                             R9 1 -1
       67 SETLIST                          R8 R9 -1 [1]
       69 SETTABLEKS                       R8 R7 K9 ["items"]
       71 DUPTABLE                         R8 K10 [{"items"}]
       72 NEWTABLE                         R9 0 1
       74 GETUPVAL                         R10 3
       75 DUPTABLE                         R11 K19 [{["id"] = "frameSelection", ["text"] = "Frame Selection", ["onActivated"]}]
       76 SETTABLEKS                       R5 R11 K16 ["onActivated"]
       78 CALL                             R10 1 -1
       79 SETLIST                          R9 R10 -1 [1]
       81 SETTABLEKS                       R9 R8 K9 ["items"]
       83 SETLIST                          R6 R7 2 [1]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K20 ["createElement"]
       88 GETUPVAL                         R8 4
       89 GETTABLEKS                       R8 R8 K21 ["Menu"]
       91 DUPTABLE                         R9 K24 [{"isOpen", "items", "onPressedOutside", "size"}]
       92 GETTABLEKS                       R10 R0 K8 ["isOpen"]
       94 SETTABLEKS                       R10 R9 K8 ["isOpen"]
       96 SETTABLEKS                       R6 R9 K9 ["items"]
       98 GETTABLEKS                       R10 R0 K6 ["close"]
      100 SETTABLEKS                       R10 R9 K22 ["onPressedOutside"]
      102 GETUPVAL                         R10 4
      103 GETTABLEKS                       R10 R10 K25 ["Enums"]
      105 GETTABLEKS                       R10 R10 K26 ["InputSize"]
      107 GETTABLEKS                       R10 R10 K27 ["XSmall"]
      109 SETTABLEKS                       R10 R9 K23 ["size"]
      111 CALL                             R7 2 -1
      112 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["StateMachineSelectionContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 DUPCLOSURE                       R6 K13 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 RETURN                           R6 1
