PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 LOADK                            R3 K3 ["Frame"]
       11 NEWTABLE                         R4 1 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["Tag"]
       16 LOADK                            R6 K5 ["Component-BasicExample X-Fit"]
       17 SETTABLE                         R6 R4 R5
       18 DUPTABLE                         R5 K7 [{"OptionalContent"}]
       19 GETTABLEKS                       R7 R0 K8 ["showContent"]
       21 JUMPIFNOT                        R7 ; [+7]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K2 ["createElement"]
       25 LOADK                            R7 K9 ["TextLabel"]
       26 DUPTABLE                         R8 K12 [{["Text"] = "Kangaroos are great!"}]
       27 CALL                             R6 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R6
       30 SETTABLEKS                       R6 R5 K6 ["OptionalContent"]
       32 CALL                             R2 3 -1
       33 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K9 ["Contexts"]
       23 GETTABLEKS                       R2 R2 K10 ["Localization"]
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
