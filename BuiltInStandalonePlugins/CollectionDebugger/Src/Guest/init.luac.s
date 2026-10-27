PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllCollections"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllCollections"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AuroraScriptService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllCollections"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllCollections"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CollectionService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K5 [pcall]
       17 DUPCLOSURE                       R2 K6 [PROTO_2]
       18 CALL                             R1 1 2
       19 JUMPIFNOT                        R1 ; [+11]
       20 JUMPIFEQKNIL                     R2 ; [+10]
       22 GETIMPORT                        R3 K5 [pcall]
       24 NEWCLOSURE                       R4 P3
       25 CAPTURE                          VAL R2
       26 CALL                             R3 1 1
       27 JUMPIFNOT                        R3 ; [+3]
       28 NEWCLOSURE                       R3 P4
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
       31 LOADNIL                          R3
       32 RETURN                           R3 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CollectionTopLevelAccessors"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_6]
        3 CALL                             R0 1 2
        4 MOVE                             R2 R0
        5 JUMPIFNOT                        R2 ; [+4]
        6 JUMPIFEQKB                       R1 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["GetDescendants"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["OpenScript"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K5 [{"seq", "sample", "entries", "selectionCount"}]
        6 GETUPVAL                         R6 0
        7 SETTABLEKS                       R6 R5 K1 ["seq"]
        9 GETUPVAL                         R6 3
       10 SETTABLEKS                       R6 R5 K2 ["sample"]
       12 SETTABLEKS                       R0 R5 K3 ["entries"]
       14 SETTABLEKS                       R1 R5 K4 ["selectionCount"]
       16 NAMECALL                         R2 R2 K6 ["SetItem"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["guestSnapshotPublished"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["collectSnapshot"]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+31]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["getSelectionCount"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 1
       12 ADDK                             R4 R4 K4 [1]
       13 SETUPVAL                         R4 1
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R6 3
       16 DUPTABLE                         R7 K9 [{"seq", "sample", "entries", "selectionCount"}]
       17 GETUPVAL                         R8 1
       18 SETTABLEKS                       R8 R7 K5 ["seq"]
       20 GETUPVAL                         R8 4
       21 SETTABLEKS                       R8 R7 K6 ["sample"]
       23 SETTABLEKS                       R2 R7 K7 ["entries"]
       25 SETTABLEKS                       R3 R7 K8 ["selectionCount"]
       27 NAMECALL                         R4 R4 K10 ["SetItem"]
       29 CALL                             R4 3 0
       30 JUMPIFNOT                        R0 ; [+7]
       31 GETIMPORT                        R3 K13 [task.defer]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 RETURN                           R0 0
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+15]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["handleCommand"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["commandNeedsRepublish"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 3
       23 LOADB                            R3 1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasHighlights"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["selectionMatchesLastApplied"]
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["hasHighlights"]
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+12]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K2 ["clearHighlights"]
       19 CALL                             R1 0 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K3 ["guestSelectionCleared"]
       24 GETUPVAL                         R4 3
       25 NAMECALL                         R1 R1 K4 ["Invoke"]
       27 CALL                             R1 3 0
       28 GETUPVAL                         R1 4
       29 LOADB                            R2 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 LOADN                            R2 1
        5 JUMPIFNOTLT                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADN                            R1 0
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 ADDK                             R1 R1 K0 [1]
       12 SETUPVAL                         R1 1
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["hasHighlights"]
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K2 ["applyHighlightSelection"]
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["SetItem"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 GETIMPORT                        R5 K1 [pcall]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R4
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-6]
       17 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["CollectionDebugger"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Protocol"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K8 ["Keys"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R1 K6 ["Src"]
       22 GETTABLEKS                       R5 R5 K9 ["Guest"]
       24 GETTABLEKS                       R5 R5 K10 ["GuestController"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R1 K6 ["Src"]
       31 GETTABLEKS                       R6 R6 K9 ["Guest"]
       33 GETTABLEKS                       R6 R6 K11 ["guestLogic"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R0 K12 ["HostDataModelType"]
       38 GETTABLEKS                       R6 R6 K13 ["Name"]
       40 GETTABLEKS                       R7 R2 K14 ["dataItemKey"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K15 ["new"]
       46 DUPTABLE                         R9 K22 [{"getAllCollections", "selection", "getDescendants", "root", "openInEditor", "topLevelAccessors"}]
       47 GETUPVAL                         R10 0
       48 SETTABLEKS                       R10 R9 K16 ["getAllCollections"]
       50 GETUPVAL                         R10 1
       51 SETTABLEKS                       R10 R9 K17 ["selection"]
       53 DUPCLOSURE                       R10 K23 [PROTO_8]
       54 SETTABLEKS                       R10 R9 K18 ["getDescendants"]
       56 GETIMPORT                        R10 K25 [game]
       58 SETTABLEKS                       R10 R9 K19 ["root"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R10 R9 K20 ["openInEditor"]
       64 GETUPVAL                         R10 2
       65 SETTABLEKS                       R10 R9 K21 ["topLevelAccessors"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 0 0
       70 LOADN                            R10 1
       71 LOADN                            R11 0
       72 LOADN                            R12 0
       73 NEWCLOSURE                       R13 P2
       74 CAPTURE                          REF R11
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R7
       77 CAPTURE                          REF R12
       78 NEWCLOSURE                       R14 P3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          REF R11
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R7
       83 CAPTURE                          REF R12
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R6
       86 MOVE                             R16 R9
       87 GETTABLEKS                       R19 R3 K26 ["hostCommand"]
       89 NEWCLOSURE                       R20 P4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R14
       94 NAMECALL                         R17 R0 K27 ["OnInvokeSuspendOverride"]
       96 CALL                             R17 3 -1
       97 FASTCALL                         TABLE_INSERT ; [+2]
       98 GETIMPORT                        R15 K30 [table.insert]
      100 CALL                             R15 -1 0
      101 MOVE                             R16 R9
      102 GETUPVAL                         R17 1
      103 GETTABLEKS                       R17 R17 K31 ["SelectionChanged"]
      105 NEWCLOSURE                       R19 P5
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R14
      111 NAMECALL                         R17 R17 K32 ["Connect"]
      113 CALL                             R17 2 -1
      114 FASTCALL                         TABLE_INSERT ; [+2]
      115 GETIMPORT                        R15 K30 [table.insert]
      117 CALL                             R15 -1 0
      118 MOVE                             R16 R9
      119 GETUPVAL                         R17 3
      120 GETTABLEKS                       R17 R17 K33 ["Heartbeat"]
      122 NEWCLOSURE                       R19 P6
      123 CAPTURE                          REF R10
      124 CAPTURE                          REF R12
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R8
      127 NAMECALL                         R17 R17 K32 ["Connect"]
      129 CALL                             R17 2 -1
      130 FASTCALL                         TABLE_INSERT ; [+2]
      131 GETIMPORT                        R15 K30 [table.insert]
      133 CALL                             R15 -1 0
      134 NEWTABLE                         R15 0 0
      136 ADDK                             R11 R11 K34 [1]
      137 MOVE                             R18 R7
      138 DUPTABLE                         R19 K40 [{["seq"], ["sample"], ["entries"], ["selectionCount"] = 0}]
      139 SETTABLEKS                       R11 R19 K35 ["seq"]
      141 SETTABLEKS                       R12 R19 K36 ["sample"]
      143 SETTABLEKS                       R15 R19 K37 ["entries"]
      145 NAMECALL                         R16 R0 K41 ["SetItem"]
      147 CALL                             R16 3 0
      148 GETTABLEKS                       R15 R0 K42 ["Unloading"]
      150 NEWCLOSURE                       R17 P7
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R9
      154 NAMECALL                         R15 R15 K32 ["Connect"]
      156 CALL                             R15 2 0
      157 CLOSEUPVALS                      R10
      158 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_5]
       14 MOVE                             R3 R2
       15 CALL                             R3 0 1
       16 GETIMPORT                        R5 K7 [pcall]
       18 DUPCLOSURE                       R6 K8 [PROTO_6]
       19 CALL                             R5 1 2
       20 MOVE                             R4 R5
       21 JUMPIFNOT                        R4 ; [+4]
       22 JUMPIFEQKB                       R6 TRUE ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 DUPCLOSURE                       R5 K9 [PROTO_19]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R0
       31 RETURN                           R5 1
