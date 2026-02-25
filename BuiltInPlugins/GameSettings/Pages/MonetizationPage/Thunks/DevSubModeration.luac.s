PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Key"]
        3 GETTABLEKS                       R3 R1 K1 ["devSubsController"]
        5 NEWTABLE                         R4 1 0
        7 DUPTABLE                         R5 K4 [{"isAcceptable", "filteredName"}]
        8 LOADB                            R6 1
        9 SETTABLEKS                       R6 R5 K2 ["isAcceptable"]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K3 ["filteredName"]
       14 SETTABLE                         R5 R4 R2
       15 GETUPVAL                         R7 1
       16 LOADK                            R8 K5 ["DevSubModeration"]
       17 MOVE                             R9 R4
       18 CALL                             R7 2 -1
       19 NAMECALL                         R5 R0 K6 ["dispatch"]
       21 CALL                             R5 -1 0
       22 GETUPVAL                         R7 0
       23 NAMECALL                         R5 R3 K7 ["getFilteredDevSub"]
       25 CALL                             R5 2 2
       26 NEWTABLE                         R7 1 0
       28 DUPTABLE                         R8 K4 [{"isAcceptable", "filteredName"}]
       29 SETTABLEKS                       R5 R8 K2 ["isAcceptable"]
       31 SETTABLEKS                       R6 R8 K3 ["filteredName"]
       33 SETTABLE                         R8 R7 R2
       34 GETUPVAL                         R10 1
       35 LOADK                            R11 K5 ["DevSubModeration"]
       36 MOVE                             R12 R7
       37 CALL                             R10 2 -1
       38 NAMECALL                         R8 R0 K6 ["dispatch"]
       40 CALL                             R8 -1 0
       41 JUMPIF                           R5 ; [+11]
       42 GETUPVAL                         R10 2
       43 MOVE                             R11 R2
       44 LOADK                            R12 K8 ["Name"]
       45 DUPTABLE                         R13 K10 [{"Moderated"}]
       46 LOADK                            R14 K11 ["Name has been moderated"]
       47 SETTABLEKS                       R14 R13 K9 ["Moderated"]
       49 CALL                             R10 3 -1
       50 NAMECALL                         R8 R0 K6 ["dispatch"]
       52 CALL                             R8 -1 0
       53 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Actions"]
       17 GETTABLEKS                       R2 R3 K7 ["AddChange"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETIMPORT                        R5 K1 [script]
       24 GETTABLEKS                       R4 R5 K2 ["Parent"]
       26 GETTABLEKS                       R3 R4 K8 ["AddDevSubKeyError"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K9 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1
