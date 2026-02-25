PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R8 R9 K2 ["List"]
       10 GETTABLEKS                       R7 R8 K3 ["join"]
       12 MOVE                             R8 R1
       13 NEWTABLE                         R9 0 1
       15 DUPTABLE                         R10 K7 [{"Name", "Id", "Thumbnail"}]
       16 GETTABLEKS                       R11 R6 K4 ["Name"]
       18 SETTABLEKS                       R11 R10 K4 ["Name"]
       20 GETTABLEKS                       R11 R6 K8 ["UserId"]
       22 SETTABLEKS                       R11 R10 K5 ["Id"]
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R11 R12 K9 ["constructUserThumbnailUrl"]
       27 GETTABLEKS                       R12 R6 K8 ["UserId"]
       29 CALL                             R11 1 1
       30 SETTABLEKS                       R11 R10 K6 ["Thumbnail"]
       32 SETLIST                          R9 R10 1 [1]
       34 CALL                             R7 2 1
       35 MOVE                             R1 R7
       36 FORGLOOP                         R2 2 [inext] ; [-30]
       38 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getUsers"]
        3 CALL                             R3 2 1
        4 DUPCLOSURE                       R5 K1 [PROTO_0]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R3 R3 K2 ["andThen"]
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 3
        3 JUMPIFNOTLT                      R1 R2 ; [+10]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 0
        7 NEWTABLE                         R5 0 0
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R0 K0 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 0
       16 MOVE                             R6 R3
       17 NAMECALL                         R4 R2 K1 ["getUsers"]
       19 CALL                             R4 2 1
       20 DUPCLOSURE                       R6 K2 [PROTO_0]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 NAMECALL                         R4 R4 K3 ["andThen"]
       25 CALL                             R4 2 1
       26 MOVE                             R1 R4
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R1 R1 K3 ["andThen"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["Urls"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K7 ["Src"]
       31 GETTABLEKS                       R6 R7 K10 ["Actions"]
       33 GETTABLEKS                       R5 R6 K11 ["SetLiveSearch"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K12 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 DUPCLOSURE                       R6 K13 [PROTO_4]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 RETURN                           R6 1
