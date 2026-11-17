PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+38]
        3 GETTABLEKS                       R2 R1 K1 ["Data"]
        5 JUMPIFNOT                        R2 ; [+35]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K2 ["Args"]
        9 GETTABLEKS                       R3 R3 K3 ["Prefix"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+29]
       13 NEWTABLE                         R2 0 0
       15 GETIMPORT                        R3 K5 [pairs]
       17 GETTABLEKS                       R4 R1 K1 ["Data"]
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETTABLEKS                       R12 R1 K1 ["Data"]
       23 GETTABLE                         R11 R12 R6
       24 GETTABLEKS                       R10 R11 K6 ["Query"]
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       28 MOVE                             R9 R2
       29 GETIMPORT                        R8 K9 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-12]
       34 GETUPVAL                         R3 1
       35 GETUPVAL                         R5 2
       36 MOVE                             R6 R2
       37 CALL                             R5 1 -1
       38 NAMECALL                         R3 R3 K10 ["dispatch"]
       40 CALL                             R3 -1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Toolbox: Could not fetch autocomplete results"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+9]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 0 0
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K1 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R5 4
       15 NAMECALL                         R1 R1 K2 ["getAutocompleteResults"]
       17 CALL                             R1 4 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U6
       26 NAMECALL                         R2 R1 K3 ["andThen"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1
       30 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["NetworkError"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K3 ["Src"]
       24 GETTABLEKS                       R4 R4 K8 ["Util"]
       26 GETTABLEKS                       R4 R4 K9 ["DebugFlags"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K10 ["SetAutocompleteResults"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K11 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 RETURN                           R5 1
