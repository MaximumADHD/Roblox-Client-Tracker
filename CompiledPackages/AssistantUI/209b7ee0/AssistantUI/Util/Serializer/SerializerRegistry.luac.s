PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 NOT                              R3 R4
        3 LOADK                            R5 K0 ["Serializer already registered for type: %*"]
        4 MOVE                             R7 R0
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 2 1
        8 MOVE                             R4 R5
        9 FASTCALL2                        ASSERT R3 R4 ; [+3]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 SETTABLE                         R1 R2 R0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R2 K0 ["serialize"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R2 K0 ["deserialize"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 0
        6 SETTABLE                         R2 R3 R0
        7 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 GETIMPORT                        R3 K2 [table.insert]
       13 CALL                             R3 2 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          REF R2
       16 CAPTURE                          VAL R1
       17 CLOSEUPVALS                      R2
       18 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+10]
        3 MOVE                             R4 R3
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 MOVE                             R9 R8
        8 MOVE                             R10 R1
        9 MOVE                             R11 R2
       10 CALL                             R9 2 0
       11 FORGLOOP                         R4 2 ; [-5]
       13 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Types"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 0
       16 NEWTABLE                         R4 0 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          REF R3
       20 SETTABLEKS                       R5 R0 K7 ["registerSerializer"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          REF R3
       24 SETTABLEKS                       R5 R0 K8 ["deregisterSerializer"]
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          REF R3
       28 SETTABLEKS                       R5 R0 K9 ["serialize"]
       30 NEWCLOSURE                       R5 P3
       31 CAPTURE                          REF R3
       32 SETTABLEKS                       R5 R0 K10 ["deserialize"]
       34 NEWCLOSURE                       R5 P4
       35 CAPTURE                          REF R4
       36 SETTABLEKS                       R5 R0 K11 ["registerHydrator"]
       38 NEWCLOSURE                       R5 P5
       39 CAPTURE                          REF R4
       40 SETTABLEKS                       R5 R0 K12 ["hydrate"]
       42 NEWCLOSURE                       R5 P6
       43 CAPTURE                          REF R3
       44 CAPTURE                          REF R4
       45 SETTABLEKS                       R5 R0 K13 ["clear"]
       47 CLOSEUPVALS                      R3
       48 RETURN                           R0 1
