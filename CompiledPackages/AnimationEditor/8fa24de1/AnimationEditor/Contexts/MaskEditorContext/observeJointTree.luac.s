PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 0
        8 JUMPIFEQKNIL                     R2 ; [+6]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 1
       12 NAMECALL                         R1 R1 K0 ["IsDescendantOf"]
       14 CALL                             R1 2 1
       15 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       17 LOADK                            R2 K1 ["Descendant somehow not descendant of the mask instance"]
       18 GETIMPORT                        R0 K3 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K4 ["Parent"]
       24 JUMPIFNOTEQKNIL                  R0 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       30 LOADK                            R3 K5 ["No next parent"]
       31 GETIMPORT                        R1 K3 [assert]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 1
       35 JUMPIFEQ                         R0 R1 ; [+8]
       37 LOADK                            R3 K6 ["NumberValue"]
       38 NAMECALL                         R1 R0 K7 ["IsA"]
       40 CALL                             R1 2 1
       41 JUMPIF                           R1 ; [+2]
       42 LOADB                            R1 0
       43 RETURN                           R1 1
       44 SETUPVAL                         R0 0
       45 JUMPBACK                         ; [-46]
       46 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          REF R1
        4 CAPTURE                          UPVAL U0
        5 LOADK                            R5 K1 ["NumberValue"]
        6 NAMECALL                         R3 R0 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 MOVE                             R3 R2
       11 CALL                             R3 0 1
       12 CLOSEUPVALS                      R1
       13 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOTEQ                      R2 R3 ; [+14]
        6 GETTABLEKS                       R5 R0 K0 ["instance"]
        8 GETTABLEKS                       R5 R5 K1 ["Name"]
       10 GETTABLEKS                       R6 R1 K0 ["instance"]
       12 GETTABLEKS                       R6 R6 K1 ["Name"]
       14 JUMPIFLT                         R5 R6 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1
       19 JUMPIFLT                         R2 R3 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["attributes"]
        9 GETTABLEKS                       R7 R7 K1 ["observeNumber"]
       11 GETTABLEKS                       R8 R6 K2 ["instance"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K3 ["orderAttribute"]
       16 CALL                             R7 2 1
       17 GETUPVAL                         R8 2
       18 CALL                             R7 1 1
       19 ORK                              R8 R7 K4 [∞]
       20 SETTABLE                         R8 R1 R6
       21 FORGLOOP                         R2 2 ; [-16]
       23 GETIMPORT                        R2 K7 [table.sort]
       25 MOVE                             R3 R0
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R1
       28 CALL                             R2 2 0
       29 MOVE                             R2 R0
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R8 R6 K8 ["children"]
       36 CALL                             R7 1 0
       37 FORGLOOP                         R2 2 ; [-5]
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADK                            R11 K0 ["NumberValue"]
       10 NAMECALL                         R9 R7 K1 ["IsA"]
       12 CALL                             R9 2 1
       13 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       15 LOADK                            R10 K2 ["Received value object is not a NumberValue"]
       16 GETIMPORT                        R8 K4 [assert]
       18 CALL                             R8 2 0
       19 DUPTABLE                         R8 K7 [{"instance", "children"}]
       20 SETTABLEKS                       R7 R8 K5 ["instance"]
       22 NEWTABLE                         R9 0 0
       24 SETTABLEKS                       R9 R8 K6 ["children"]
       26 SETTABLE                         R8 R2 R7
       27 FORGLOOP                         R3 2 ; [-19]
       29 NEWTABLE                         R3 0 0
       31 MOVE                             R4 R2
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETTABLEKS                       R9 R7 K8 ["Parent"]
       37 JUMPIFEQKNIL                     R9 ; [+39]
       39 GETUPVAL                         R10 1
       40 JUMPIFNOTEQ                      R9 R10 ; [+9]
       42 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       44 MOVE                             R11 R3
       45 MOVE                             R12 R8
       46 GETIMPORT                        R10 K11 [table.insert]
       48 CALL                             R10 2 0
       49 JUMP                             ; [+27]
       50 GETTABLE                         R10 R2 R9
       51 JUMPIFNOTEQKNIL                  R10 ; [+17]
       53 LOADK                            R13 K0 ["NumberValue"]
       54 NAMECALL                         R11 R9 K1 ["IsA"]
       56 CALL                             R11 2 1
       57 JUMPIFNOT                        R11 ; [+19]
       58 DUPTABLE                         R11 K7 [{"instance", "children"}]
       59 SETTABLEKS                       R9 R11 K5 ["instance"]
       61 NEWTABLE                         R12 0 0
       63 SETTABLEKS                       R12 R11 K6 ["children"]
       65 SETTABLE                         R11 R2 R9
       66 GETTABLE                         R10 R2 R9
       67 JUMP                             ; [+1]
       68 JUMP                             ; [+8]
       69 GETTABLEKS                       R12 R10 K6 ["children"]
       71 FASTCALL2                        TABLE_INSERT R12 R8 ; [+4]
       73 MOVE                             R13 R8
       74 GETIMPORT                        R11 K11 [table.insert]
       76 CALL                             R11 2 0
       77 FORGLOOP                         R4 2 ; [-43]
       79 NEWCLOSURE                       R4 P0
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R4
       84 MOVE                             R5 R4
       85 MOVE                             R6 R3
       86 CALL                             R5 1 0
       87 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeDescendantsWithPredicate"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["createComputed"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["MaskEditorContext"]
       13 GETTABLEKS                       R2 R2 K8 ["MasksConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Signals"]
       22 GETTABLEKS                       R3 R3 K11 ["Experimental"]
       24 GETTABLEKS                       R3 R3 K12 ["SignalExperimentalUtils"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K13 ["Parent"]
       31 GETTABLEKS                       R4 R4 K10 ["Signals"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K10 ["Signals"]
       40 GETTABLEKS                       R5 R5 K14 ["SignalsInstanceUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K10 ["Signals"]
       49 GETTABLEKS                       R6 R6 K15 ["TypedInstanceSignals"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_5]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 RETURN                           R6 1
