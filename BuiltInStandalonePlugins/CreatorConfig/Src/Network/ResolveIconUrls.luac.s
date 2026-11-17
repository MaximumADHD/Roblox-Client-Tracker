PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 SETTABLE                         R1 R2 R0
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOT                        R2 ; [+12]
        9 GETUPVAL                         R3 1
       10 LOADNIL                          R4
       11 SETTABLE                         R4 R3 R0
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 MOVE                             R8 R7
       17 MOVE                             R9 R1
       18 CALL                             R8 1 0
       19 FORGLOOP                         R3 2 ; [-4]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["ImageImportedSignal"]
        6 DUPCLOSURE                       R2 K1 [PROTO_0]
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R0 R0 K2 ["Connect"]
       11 CALL                             R0 2 1
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 JUMPIF                           R2 ; [+10]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 SETTABLE                         R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R3 R3 K0 ["generateTempUrlInContentProvider"]
       13 CALL                             R3 2 0
       14 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       16 MOVE                             R4 R2
       17 MOVE                             R5 R0
       18 GETIMPORT                        R3 K3 [table.insert]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["resolve"]
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["new"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R0 R1 R2
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMP                             ; [+10]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ImageImportedSignal"]
        6 DUPCLOSURE                       R3 K1 [PROTO_0]
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 0
       13 NEWTABLE                         R1 0 0
       15 NEWTABLE                         R2 0 0
       17 MOVE                             R3 R0
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 MOVE                             R9 R1
       22 GETUPVAL                         R12 2
       23 GETTABLE                         R11 R12 R7
       24 JUMPIFNOT                        R11 ; [+7]
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R10 R10 K3 ["resolve"]
       28 GETUPVAL                         R12 2
       29 GETTABLE                         R11 R12 R7
       30 CALL                             R10 1 1
       31 JUMP                             ; [+8]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K4 ["new"]
       35 NEWCLOSURE                       R11 P1
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U1
       39 CALL                             R10 1 1
       40 NEWCLOSURE                       R12 P2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R7
       43 NAMECALL                         R10 R10 K5 ["andThen"]
       45 CALL                             R10 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R8 K8 [table.insert]
       49 CALL                             R8 -1 0
       50 FORGLOOP                         R3 2 ; [-30]
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R3 R3 K9 ["all"]
       55 MOVE                             R4 R1
       56 CALL                             R3 1 1
       57 NEWCLOSURE                       R5 P3
       58 CAPTURE                          VAL R2
       59 NAMECALL                         R3 R3 K5 ["andThen"]
       61 CALL                             R3 2 -1
       62 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Promise"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K11 ["StartPageService"]
       26 CALL                             R3 1 1
       27 NEWTABLE                         R4 0 0
       29 NEWTABLE                         R5 0 0
       31 LOADNIL                          R6
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          REF R6
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 DUPCLOSURE                       R8 K12 [PROTO_3]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          REF R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 CLOSEUPVALS                      R6
       49 RETURN                           R9 1
