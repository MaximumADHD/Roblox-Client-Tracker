PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CollectionTopLevelAccessors"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 MOVE                             R2 R0
        5 JUMPIFNOT                        R2 ; [+4]
        6 JUMPIFEQKB                       R1 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 NAMECALL                         R0 R0 K2 ["GetDescendants"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["OpenScript"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 RETURN                           R0 0
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["handleCommand"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K3 [{"seq", "entries"}]
        6 GETUPVAL                         R5 0
        7 SETTABLEKS                       R5 R4 K1 ["seq"]
        9 SETTABLEKS                       R0 R4 K2 ["entries"]
       11 NAMECALL                         R1 R1 K4 ["SetItem"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasHighlights"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["selectionMatchesLastApplied"]
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["clearHighlights"]
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["guestSelectionCleared"]
       20 GETUPVAL                         R3 3
       21 NAMECALL                         R0 R0 K4 ["Invoke"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 LOADN                            R2 1
        5 JUMPIFNOTLT                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADN                            R1 0
        9 SETUPVAL                         R1 0
       10 GETIMPORT                        R1 K1 [pcall]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["collectSnapshot"]
       15 CALL                             R1 1 2
       16 JUMPIFNOT                        R1 ; [+14]
       17 GETUPVAL                         R3 2
       18 ADDK                             R3 R3 K3 [1]
       19 SETUPVAL                         R3 2
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R5 4
       22 DUPTABLE                         R6 K6 [{"seq", "entries"}]
       23 GETUPVAL                         R7 2
       24 SETTABLEKS                       R7 R6 K4 ["seq"]
       26 SETTABLEKS                       R2 R6 K5 ["entries"]
       28 NAMECALL                         R3 R3 K7 ["SetItem"]
       30 CALL                             R3 3 0
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K8 ["hasHighlights"]
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+4]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K9 ["applyHighlightSelection"]
       39 CALL                             R3 0 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["SetItem"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETIMPORT                        R1 K1 [script]
        2 LOADK                            R3 K2 ["CollectionDebugger"]
        3 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K5 [require]
        8 GETTABLEKS                       R3 R1 K6 ["Src"]
       10 GETTABLEKS                       R3 R3 K7 ["Protocol"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K8 ["Keys"]
       15 GETIMPORT                        R4 K5 [require]
       17 GETTABLEKS                       R5 R1 K6 ["Src"]
       19 GETTABLEKS                       R5 R5 K9 ["Guest"]
       21 GETTABLEKS                       R5 R5 K10 ["GuestController"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K11 ["HostDataModelType"]
       26 GETTABLEKS                       R5 R5 K12 ["Name"]
       28 GETTABLEKS                       R6 R2 K13 ["dataItemKey"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R7 R4 K14 ["new"]
       34 DUPTABLE                         R8 K20 [{"auroraService", "selection", "getDescendants", "openInEditor", "topLevelAccessors"}]
       35 GETUPVAL                         R9 0
       36 SETTABLEKS                       R9 R8 K15 ["auroraService"]
       38 GETUPVAL                         R9 1
       39 SETTABLEKS                       R9 R8 K16 ["selection"]
       41 DUPCLOSURE                       R9 K21 [PROTO_2]
       42 SETTABLEKS                       R9 R8 K17 ["getDescendants"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R9 R8 K18 ["openInEditor"]
       48 GETUPVAL                         R9 2
       49 SETTABLEKS                       R9 R8 K19 ["topLevelAccessors"]
       51 CALL                             R7 1 1
       52 NEWTABLE                         R8 0 0
       54 MOVE                             R10 R8
       55 GETTABLEKS                       R13 R3 K22 ["hostCommand"]
       57 NEWCLOSURE                       R14 P2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 NAMECALL                         R11 R0 K23 ["OnInvokeSuspendOverride"]
       62 CALL                             R11 3 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R9 K26 [table.insert]
       66 CALL                             R9 -1 0
       67 LOADN                            R9 1
       68 LOADN                            R10 0
       69 NEWCLOSURE                       R11 P3
       70 CAPTURE                          REF R10
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R6
       73 MOVE                             R13 R8
       74 GETUPVAL                         R14 1
       75 GETTABLEKS                       R14 R14 K27 ["SelectionChanged"]
       77 NEWCLOSURE                       R16 P4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 NAMECALL                         R14 R14 K28 ["Connect"]
       84 CALL                             R14 2 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R12 K26 [table.insert]
       88 CALL                             R12 -1 0
       89 MOVE                             R13 R8
       90 GETUPVAL                         R14 3
       91 GETTABLEKS                       R14 R14 K29 ["Heartbeat"]
       93 NEWCLOSURE                       R16 P5
       94 CAPTURE                          REF R9
       95 CAPTURE                          VAL R7
       96 CAPTURE                          REF R10
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R6
       99 NAMECALL                         R14 R14 K28 ["Connect"]
      101 CALL                             R14 2 -1
      102 FASTCALL                         TABLE_INSERT ; [+2]
      103 GETIMPORT                        R12 K26 [table.insert]
      105 CALL                             R12 -1 0
      106 NEWTABLE                         R12 0 0
      108 ADDK                             R10 R10 K30 [1]
      109 MOVE                             R15 R6
      110 DUPTABLE                         R16 K33 [{"seq", "entries"}]
      111 SETTABLEKS                       R10 R16 K31 ["seq"]
      113 SETTABLEKS                       R12 R16 K32 ["entries"]
      115 NAMECALL                         R13 R0 K34 ["SetItem"]
      117 CALL                             R13 3 0
      118 GETTABLEKS                       R12 R0 K35 ["Unloading"]
      120 NEWCLOSURE                       R14 P6
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R8
      124 NAMECALL                         R12 R12 K28 ["Connect"]
      126 CALL                             R12 2 0
      127 CLOSEUPVALS                      R9
      128 RETURN                           R0 0

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
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["AuroraScriptService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R4 K7 [pcall]
       21 DUPCLOSURE                       R5 K8 [PROTO_0]
       22 CALL                             R4 1 2
       23 MOVE                             R3 R4
       24 JUMPIFNOT                        R3 ; [+4]
       25 JUMPIFEQKB                       R5 TRUE ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 DUPCLOSURE                       R4 K9 [PROTO_11]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R0
       34 RETURN                           R4 1
