PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 SETTABLE                         R2 R1 R0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 RETURN                           R2 1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 RETURN                           R2 1

PROTO_6:
        0 SETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 RETURN                           R2 1

PROTO_9:
        0 SETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 RETURN                           R2 1

PROTO_12:
        0 SETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_13:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createGetFFlag"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_14:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createGetFInt"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_15:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createGetFString"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["SafeFlags"]
       13 CALL                             R2 1 1
       14 LOADNIL                          R3
       15 NEWTABLE                         R4 0 0
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R4
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          REF R3
       22 NEWCLOSURE                       R7 P2
       23 CAPTURE                          REF R3
       24 NEWCLOSURE                       R8 P3
       25 CAPTURE                          REF R3
       26 NEWCLOSURE                       R9 P4
       27 CAPTURE                          REF R3
       28 NEWCLOSURE                       R10 P5
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R2
       31 NEWCLOSURE                       R11 P6
       32 CAPTURE                          REF R3
       33 CAPTURE                          VAL R2
       34 NEWCLOSURE                       R12 P7
       35 CAPTURE                          REF R3
       36 CAPTURE                          VAL R2
       37 DUPTABLE                         R13 K17 [{"flagMappings", "trackFlag", "createGetDFFlag", "createGetDFInt", "createGetDFString", "createGetEngineFeature", "createGetFFlag", "createGetFInt", "createGetFString"}]
       38 SETTABLEKS                       R4 R13 K8 ["flagMappings"]
       40 SETTABLEKS                       R5 R13 K9 ["trackFlag"]
       42 SETTABLEKS                       R6 R13 K10 ["createGetDFFlag"]
       44 SETTABLEKS                       R7 R13 K11 ["createGetDFInt"]
       46 SETTABLEKS                       R8 R13 K12 ["createGetDFString"]
       48 SETTABLEKS                       R9 R13 K13 ["createGetEngineFeature"]
       50 SETTABLEKS                       R10 R13 K14 ["createGetFFlag"]
       52 SETTABLEKS                       R11 R13 K15 ["createGetFInt"]
       54 SETTABLEKS                       R12 R13 K16 ["createGetFString"]
       56 CLOSEUPVALS                      R3
       57 RETURN                           R13 1
