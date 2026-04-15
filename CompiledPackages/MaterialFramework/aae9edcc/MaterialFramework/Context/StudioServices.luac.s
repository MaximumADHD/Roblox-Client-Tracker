PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_serviceWrappers"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["new"]
        8 MOVE                             R2 R0
        9 GETUPVAL                         R3 2
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["_serviceWrappers"]
       14 SETTABLE                         R1 R2 R0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["_serviceWrappers"]
       18 GETTABLE                         R1 R2 R0
       19 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"_serviceWrappers"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_serviceWrappers"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K3 [setmetatable]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K4 ["createServiceIfNeeded"]
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_serviceWrappers"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["destroy"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K0 ["_serviceWrappers"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["createServiceIfNeeded"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 NAMECALL                         R3 R2 K1 ["asService"]
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["createServiceIfNeeded"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 NAMECALL                         R3 R2 K1 ["asInstance"]
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K6 ["ContextServices"]
       16 GETTABLEKS                       R3 R4 K7 ["ContextItem"]
       18 GETTABLEKS                       R5 R2 K8 ["TestHelpers"]
       20 GETTABLEKS                       R4 R5 K9 ["ServiceWrapper"]
       22 LOADK                            R7 K10 ["StudioServices"]
       23 NAMECALL                         R5 R3 K11 ["extend"]
       25 CALL                             R5 2 1
       26 DUPCLOSURE                       R6 K12 [PROTO_1]
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R6 R5 K13 ["new"]
       31 DUPCLOSURE                       R6 K14 [PROTO_2]
       32 CAPTURE                          VAL R5
       33 SETTABLEKS                       R6 R5 K15 ["mock"]
       35 DUPCLOSURE                       R6 K16 [PROTO_3]
       36 SETTABLEKS                       R6 R5 K17 ["destroy"]
       38 DUPCLOSURE                       R6 K18 [PROTO_4]
       39 SETTABLEKS                       R6 R5 K19 ["getService"]
       41 DUPCLOSURE                       R6 K20 [PROTO_5]
       42 SETTABLEKS                       R6 R5 K21 ["getServiceInstance"]
       44 RETURN                           R5 1
