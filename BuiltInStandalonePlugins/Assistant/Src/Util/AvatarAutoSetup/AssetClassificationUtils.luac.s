PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 LENGTH                           R9 R5
        6 FASTCALL3                        STRING_SUB R0 R8 R9
        8 MOVE                             R7 R0
        9 GETIMPORT                        R6 K2 [string.sub]
       11 CALL                             R6 3 1
       12 JUMPIFNOTEQ                      R6 R5 ; [+10]
       14 LENGTH                           R9 R5
       15 ADDK                             R8 R9 K3 [1]
       16 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K2 [string.sub]
       21 CALL                             R6 2 1
       22 RETURN                           R6 1
       23 FORGLOOP                         R1 2 ; [-20]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 LENGTH                           R9 R5
        6 FASTCALL3                        STRING_SUB R0 R8 R9
        8 MOVE                             R7 R0
        9 GETIMPORT                        R6 K2 [string.sub]
       11 CALL                             R6 3 1
       12 JUMPIFNOTEQ                      R6 R5 ; [+2]
       14 RETURN                           R4 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getInstanceNameWithoutClassification"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R6 1
        6 GETTABLE                         R4 R6 R1
        7 MOVE                             R5 R2
        8 CONCAT                           R3 R4 R5
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K8 [{[1] = "RBX_BODY_", ["Layered"] = "RBX_LC_", ["EyeLayered"] = "RBX_EYE_LC_", ["Rigid"] = "RBX_RIGID_"}]
        4 DUPCLOSURE                       R2 K9 [PROTO_0]
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R0 K10 ["getInstanceNameWithoutClassification"]
        8 DUPCLOSURE                       R2 K11 [PROTO_1]
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R2 R0 K12 ["getClassification"]
       12 DUPCLOSURE                       R2 K13 [PROTO_2]
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R0 K14 ["getNewInstanceNameWithPrefix"]
       17 RETURN                           R0 1
