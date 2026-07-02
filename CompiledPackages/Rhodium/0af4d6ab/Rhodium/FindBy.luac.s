PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["TAGS"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+7]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["getUnique"]
        9 GETVARARGS                       R2 -1
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["TAGS_ANY"]
       15 JUMPIFNOTEQ                      R0 R1 ; [+7]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["getAny"]
       20 GETVARARGS                       R2 -1
       21 CALL                             R1 -1 1
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K4 ["TAGS_ALL"]
       26 JUMPIFNOTEQ                      R0 R1 ; [+7]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K5 ["getAll"]
       31 GETVARARGS                       R2 -1
       32 CALL                             R1 -1 1
       33 RETURN                           R1 1
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K6 ["XPATH"]
       37 JUMPIFNOTEQ                      R0 R1 ; [+11]
       39 GETVARARGS                       R1 1
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K7 ["new"]
       43 MOVE                             R3 R1
       44 CALL                             R2 1 1
       45 NAMECALL                         R3 R2 K8 ["getFirstInstance"]
       47 CALL                             R3 1 1
       48 RETURN                           R3 1
       49 GETIMPORT                        R1 K10 [error]
       51 GETIMPORT                        R2 K13 [string.format]
       53 LOADK                            R3 K14 ["Invalid locator type: %s"]
       54 MOVE                             R4 R0
       55 CALL                             R2 2 -1
       56 CALL                             R1 -1 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["LuauTagUtils"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["XPath"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R3 K3 [script]
       25 GETTABLEKS                       R3 R3 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K7 ["By"]
       29 CALL                             R2 1 1
       30 DUPCLOSURE                       R3 K8 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 RETURN                           R3 1
