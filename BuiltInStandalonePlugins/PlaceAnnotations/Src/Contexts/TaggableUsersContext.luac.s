PROTO_0:
        0 LOADN                            R1 0
        1 NEWTABLE                         R2 0 0
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 LOADN                            R8 5
        9 JUMPIFLE                         R8 R1 ; [+5]
       11 SETTABLE                         R7 R2 R6
       12 ADDK                             R1 R1 K2 [1]
       13 FORGLOOP                         R3 2 ; [-6]
       15 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETUPVAL                         R12 0
        8 GETTABLEKS                       R11 R12 K2 ["Dictionary"]
       10 GETTABLEKS                       R10 R11 K3 ["values"]
       12 MOVE                             R11 R1
       13 CALL                             R10 1 1
       14 LENGTH                           R9 R10
       15 GETUPVAL                         R13 0
       16 GETTABLEKS                       R12 R13 K2 ["Dictionary"]
       18 GETTABLEKS                       R11 R12 K3 ["values"]
       20 MOVE                             R12 R2
       21 CALL                             R11 1 1
       22 LENGTH                           R10 R11
       23 ADD                              R8 R9 R10
       24 LOADN                            R9 5
       25 JUMPIFNOTLE                      R9 R8 ; [+2]
       27 RETURN                           R2 1
       28 GETUPVAL                         R8 1
       29 JUMPIFNOT                        R8 ; [+26]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K4 ["userHasRoleset"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R10 R7 K5 ["id"]
       36 GETUPVAL                         R11 3
       37 CALL                             R8 3 1
       38 JUMPIFNOT                        R8 ; [+17]
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R10 R7 K6 ["name"]
       42 GETTABLE                         R8 R9 R10
       43 JUMPIF                           R8 ; [+12]
       44 DUPTABLE                         R8 K9 [{"Username", "UserId"}]
       45 GETTABLEKS                       R9 R7 K6 ["name"]
       47 SETTABLEKS                       R9 R8 K7 ["Username"]
       49 GETTABLEKS                       R9 R7 K5 ["id"]
       51 SETTABLEKS                       R9 R8 K8 ["UserId"]
       53 GETTABLEKS                       R9 R7 K6 ["name"]
       55 SETTABLE                         R8 R2 R9
       56 FORGLOOP                         R3 2 ; [-50]
       58 GETUPVAL                         R3 5
       59 MOVE                             R4 R0
       60 CALL                             R3 1 0
       61 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+29]
        2 LENGTH                           R2 R0
        3 LOADN                            R3 2
        4 JUMPIFNOTLT                      R3 R2 ; [+26]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
        9 GETTABLEKS                       R3 R4 K1 ["values"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 LENGTH                           R2 R3
       14 LOADN                            R3 5
       15 JUMPIFNOTLT                      R2 R3 ; [+15]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K2 ["searchUsers"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 LENGTH                           R3 R2
       23 LOADN                            R4 0
       24 JUMPIFNOTLT                      R4 R3 ; [+6]
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R2
       28 MOVE                             R5 R1
       29 CALL                             R3 2 1
       30 RETURN                           R3 1
       31 NEWTABLE                         R2 0 0
       33 RETURN                           R2 1

PROTO_3:
        0 OR                               R3 R2 R1
        1 NEWTABLE                         R4 0 0
        3 ADDK                             R7 R3 K0 [1]
        4 NAMECALL                         R5 R0 K1 ["sub"]
        6 CALL                             R5 2 1
        7 LOADK                            R7 K2 ["^[%w_]+"]
        8 NAMECALL                         R5 R5 K3 ["match"]
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+1]
       12 JUMPIF                           R0 ; [+4]
       13 GETUPVAL                         R6 0
       14 GETUPVAL                         R7 1
       15 CALL                             R6 1 1
       16 RETURN                           R6 1
       17 GETIMPORT                        R6 K5 [pairs]
       19 GETUPVAL                         R7 1
       20 CALL                             R6 1 3
       21 FORGPREP_NEXT                    R6
       22 GETUPVAL                         R14 2
       23 GETTABLEKS                       R13 R14 K6 ["Dictionary"]
       25 GETTABLEKS                       R12 R13 K7 ["values"]
       27 MOVE                             R13 R4
       28 CALL                             R12 1 1
       29 LENGTH                           R11 R12
       30 LOADN                            R12 5
       31 JUMPIFLE                         R12 R11 ; [+21]
       33 GETIMPORT                        R11 K10 [string.find]
       35 NAMECALL                         R12 R9 K11 ["lower"]
       37 CALL                             R12 1 1
       38 NAMECALL                         R13 R5 K11 ["lower"]
       40 CALL                             R13 1 -1
       41 CALL                             R11 -1 1
       42 JUMPIFNOT                        R11 ; [+8]
       43 DUPTABLE                         R11 K14 [{"Username", "UserId"}]
       44 SETTABLEKS                       R9 R11 K12 ["Username"]
       46 GETTABLEKS                       R12 R10 K13 ["UserId"]
       48 SETTABLEKS                       R12 R11 K13 ["UserId"]
       50 SETTABLE                         R11 R4 R9
       51 FORGLOOP                         R6 2 ; [-30]
       53 GETUPVAL                         R6 3
       54 MOVE                             R7 R5
       55 MOVE                             R8 R4
       56 CALL                             R6 2 1
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R8 R9 K6 ["Dictionary"]
       60 GETTABLEKS                       R7 R8 K15 ["join"]
       62 MOVE                             R8 R4
       63 MOVE                             R9 R6
       64 CALL                             R7 2 1
       65 RETURN                           R7 1

PROTO_4:
        0 LOADK                            R3 K0 ["@"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 JUMPIF                           R1 ; [+12]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["Dictionary"]
       12 GETTABLEKS                       R3 R4 K3 ["values"]
       14 GETUPVAL                         R4 2
       15 CALL                             R3 1 1
       16 LENGTH                           R2 R3
       17 JUMPIFEQKN                       R2 K4 [0] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R0 K1 ["GameId"]
       14 MOVE                             R7 R1
       15 MOVE                             R8 R3
       16 CALL                             R5 3 6
       17 DUPCLOSURE                       R11 K2 [PROTO_0]
       18 NEWCLOSURE                       R12 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R7
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R9
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R4
       25 NEWCLOSURE                       R13 P2
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R12
       30 NEWCLOSURE                       R14 P3
       31 CAPTURE                          VAL R11
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R13
       35 NEWCLOSURE                       R15 P4
       36 CAPTURE                          VAL R10
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R5
       39 GETUPVAL                         R17 0
       40 GETTABLEKS                       R16 R17 K3 ["createElement"]
       42 GETUPVAL                         R18 4
       43 GETTABLEKS                       R17 R18 K4 ["Provider"]
       45 DUPTABLE                         R18 K6 [{"value"}]
       46 DUPTABLE                         R19 K16 [{"joinedTaggableUsersMap", "setAdditionalTaggableUsersMap", "groupId", "isLargeGroup", "refreshTaggableUsers", "maybeGetUsersFromSearchApi", "getFirstMaxTaggableUsers", "getFilteredTaggableUsers", "isTaggableUsersErrorStatus"}]
       47 SETTABLEKS                       R5 R19 K7 ["joinedTaggableUsersMap"]
       49 SETTABLEKS                       R6 R19 K8 ["setAdditionalTaggableUsersMap"]
       51 SETTABLEKS                       R7 R19 K9 ["groupId"]
       53 SETTABLEKS                       R8 R19 K10 ["isLargeGroup"]
       55 NEWCLOSURE                       R20 P5
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R20 R19 K11 ["refreshTaggableUsers"]
       60 SETTABLEKS                       R13 R19 K12 ["maybeGetUsersFromSearchApi"]
       62 SETTABLEKS                       R11 R19 K13 ["getFirstMaxTaggableUsers"]
       64 SETTABLEKS                       R14 R19 K14 ["getFilteredTaggableUsers"]
       66 SETTABLEKS                       R15 R19 K15 ["isTaggableUsersErrorStatus"]
       68 SETTABLEKS                       R19 R18 K5 ["value"]
       70 GETTABLEKS                       R19 R0 K17 ["children"]
       72 CALL                             R16 3 -1
       73 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Hooks"]
       27 GETTABLEKS                       R5 R6 K11 ["useTaggableUsers"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R3 R4 K11 ["useTaggableUsers"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["GroupUtils"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K14 ["createContext"]
       43 NEWTABLE                         R6 0 0
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_6]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 DUPTABLE                         R7 K18 [{"TaggableUsersContext", "TaggableUsersProvider"}]
       53 SETTABLEKS                       R5 R7 K16 ["TaggableUsersContext"]
       55 SETTABLEKS                       R6 R7 K17 ["TaggableUsersProvider"]
       57 RETURN                           R7 1
