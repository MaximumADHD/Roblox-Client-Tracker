PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["targetPinPosition"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["nodeRenderInfoDispatcher"]
       11 GETTABLEKS                       R1 R1 K2 ["getMap"]
       13 CALL                             R1 0 3
       14 FORGPREP                         R1
       15 GETTABLEKS                       R6 R5 K3 ["position"]
       17 GETTABLEKS                       R7 R5 K4 ["size"]
       19 GETTABLEKS                       R8 R0 K5 ["X"]
       21 GETTABLEKS                       R9 R6 K5 ["X"]
       23 JUMPIFNOTLE                      R9 R8 ; [+27]
       25 GETTABLEKS                       R8 R0 K5 ["X"]
       27 GETTABLEKS                       R10 R6 K5 ["X"]
       29 GETTABLEKS                       R11 R7 K5 ["X"]
       31 ADD                              R9 R10 R11
       32 JUMPIFNOTLE                      R8 R9 ; [+18]
       34 GETTABLEKS                       R8 R0 K6 ["Y"]
       36 GETTABLEKS                       R9 R6 K6 ["Y"]
       38 JUMPIFNOTLE                      R8 R9 ; [+12]
       40 GETTABLEKS                       R8 R0 K6 ["Y"]
       42 GETTABLEKS                       R10 R6 K6 ["Y"]
       44 GETTABLEKS                       R11 R7 K6 ["Y"]
       46 SUB                              R9 R10 R11
       47 JUMPIFNOTLE                      R9 R8 ; [+3]
       49 LOADB                            R8 1
       50 RETURN                           R8 1
       51 FORGLOOP                         R1 2 ; [-37]
       53 LOADB                            R1 0
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createNode"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["STATE_NODE_TYPE"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["targetPinPosition"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K3 ["close"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
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
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K3 ["GraphContext"]
       22 GETTABLEKS                       R4 R4 K1 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K0 ["useContext"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K4 ["InsertNodeContext"]
       31 GETTABLEKS                       R5 R5 K1 ["Context"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K5 ["hasDeletableSelection"]
       36 CALL                             R5 0 1
       37 GETTABLEKS                       R6 R4 K6 ["visibleMenuState"]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R9 0 2
       47 MOVE                             R10 R6
       48 GETTABLEKS                       R11 R3 K8 ["nodeRenderInfoDispatcher"]
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R10 0 3
       63 GETTABLEKS                       R11 R3 K10 ["createNode"]
       65 MOVE                             R12 R6
       66 GETTABLEKS                       R13 R0 K11 ["close"]
       68 SETLIST                          R10 R11 3 [1]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       74 NEWCLOSURE                       R10 P2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R11 0 2
       79 GETTABLEKS                       R12 R1 K12 ["deleteSelection"]
       81 GETTABLEKS                       R13 R0 K11 ["close"]
       83 SETLIST                          R11 R12 2 [1]
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       89 NEWCLOSURE                       R11 P3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R12 0 2
       94 GETTABLEKS                       R13 R2 K13 ["frameSelection"]
       96 GETTABLEKS                       R14 R0 K11 ["close"]
       98 SETLIST                          R12 R13 2 [1]
      100 CALL                             R10 2 1
      101 GETTABLEKS                       R11 R0 K14 ["isOpen"]
      103 JUMPIF                           R11 ; [+2]
      104 LOADNIL                          R11
      105 RETURN                           R11 1
      106 NEWTABLE                         R11 0 2
      108 DUPTABLE                         R12 K16 [{"items"}]
      109 NEWTABLE                         R13 0 2
      111 DUPTABLE                         R15 K23 [{["id"] = "addState", ["text"] = "Add State", ["isDisabled"], ["onActivated"]}]
      112 SETTABLEKS                       R7 R15 K21 ["isDisabled"]
      114 SETTABLEKS                       R8 R15 K22 ["onActivated"]
      116 MOVE                             R14 R15
      117 DUPTABLE                         R16 K26 [{["id"] = "delete", ["text"] = "Delete", ["isDisabled"], ["onActivated"]}]
      118 NOT                              R17 R5
      119 SETTABLEKS                       R17 R16 K21 ["isDisabled"]
      121 SETTABLEKS                       R9 R16 K22 ["onActivated"]
      123 MOVE                             R15 R16
      124 SETLIST                          R13 R14 2 [1]
      126 SETTABLEKS                       R13 R12 K15 ["items"]
      128 DUPTABLE                         R13 K16 [{"items"}]
      129 NEWTABLE                         R14 0 1
      131 DUPTABLE                         R16 K28 [{["id"] = "frameSelection", ["text"] = "Frame Selection", ["onActivated"]}]
      132 SETTABLEKS                       R10 R16 K22 ["onActivated"]
      134 MOVE                             R15 R16
      135 SETLIST                          R14 R15 1 [1]
      137 SETTABLEKS                       R14 R13 K15 ["items"]
      139 SETLIST                          R11 R12 2 [1]
      141 GETUPVAL                         R12 0
      142 GETTABLEKS                       R12 R12 K29 ["createElement"]
      144 GETUPVAL                         R13 4
      145 GETTABLEKS                       R13 R13 K30 ["Menu"]
      147 DUPTABLE                         R14 K33 [{"isOpen", "items", "onPressedOutside", "size"}]
      148 GETTABLEKS                       R15 R0 K14 ["isOpen"]
      150 SETTABLEKS                       R15 R14 K14 ["isOpen"]
      152 SETTABLEKS                       R11 R14 K15 ["items"]
      154 GETTABLEKS                       R15 R0 K11 ["close"]
      156 SETTABLEKS                       R15 R14 K31 ["onPressedOutside"]
      158 GETUPVAL                         R15 4
      159 GETTABLEKS                       R15 R15 K34 ["Enums"]
      161 GETTABLEKS                       R15 R15 K35 ["InputSize"]
      163 GETTABLEKS                       R15 R15 K36 ["XSmall"]
      165 SETTABLEKS                       R15 R14 K32 ["size"]
      167 CALL                             R12 2 -1
      168 RETURN                           R12 -1

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
       32 GETTABLEKS                       R5 R5 K11 ["StateMachineNodeLibrary"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineSelectionContext"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 DUPCLOSURE                       R7 K14 [PROTO_5]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 RETURN                           R7 1
