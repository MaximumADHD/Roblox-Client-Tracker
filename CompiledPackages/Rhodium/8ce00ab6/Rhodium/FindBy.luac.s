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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Rhodium"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["LuauTagUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["XPath"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["By"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
