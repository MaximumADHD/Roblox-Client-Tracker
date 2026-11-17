PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Key"]
        3 GETTABLEKS                       R3 R1 K1 ["devSubsController"]
        5 NEWTABLE                         R4 1 0
        7 DUPTABLE                         R5 K6 [{["isAcceptable"] = True, ["filteredName"] = }]
        8 SETTABLE                         R5 R4 R2
        9 GETUPVAL                         R7 1
       10 LOADK                            R8 K7 ["DevSubModeration"]
       11 MOVE                             R9 R4
       12 CALL                             R7 2 -1
       13 NAMECALL                         R5 R0 K8 ["dispatch"]
       15 CALL                             R5 -1 0
       16 GETUPVAL                         R7 0
       17 NAMECALL                         R5 R3 K9 ["getFilteredDevSub"]
       19 CALL                             R5 2 2
       20 NEWTABLE                         R7 1 0
       22 DUPTABLE                         R8 K10 [{"isAcceptable", "filteredName"}]
       23 SETTABLEKS                       R5 R8 K2 ["isAcceptable"]
       25 SETTABLEKS                       R6 R8 K4 ["filteredName"]
       27 SETTABLE                         R8 R7 R2
       28 GETUPVAL                         R10 1
       29 LOADK                            R11 K7 ["DevSubModeration"]
       30 MOVE                             R12 R7
       31 CALL                             R10 2 -1
       32 NAMECALL                         R8 R0 K8 ["dispatch"]
       34 CALL                             R8 -1 0
       35 JUMPIF                           R5 ; [+8]
       36 GETUPVAL                         R10 2
       37 MOVE                             R11 R2
       38 LOADK                            R12 K11 ["Name"]
       39 DUPTABLE                         R13 K14 [{["Moderated"] = "Name has been moderated"}]
       40 CALL                             R10 3 -1
       41 NAMECALL                         R8 R0 K8 ["dispatch"]
       43 CALL                             R8 -1 0
       44 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Actions"]
       17 GETTABLEKS                       R2 R2 K7 ["AddChange"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETIMPORT                        R3 K1 [script]
       24 GETTABLEKS                       R3 R3 K2 ["Parent"]
       26 GETTABLEKS                       R3 R3 K8 ["AddDevSubKeyError"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K9 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1
