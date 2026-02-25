PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 NEWTABLE                         R4 1 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["Tag"]
       13 LOADK                            R6 K4 ["Component-BasicExample X-Fit"]
       14 SETTABLE                         R6 R4 R5
       15 DUPTABLE                         R5 K6 [{"OptionalContent"}]
       16 GETTABLEKS                       R7 R0 K7 ["showContent"]
       18 JUMPIFNOT                        R7 ; [+14]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K1 ["createElement"]
       22 LOADK                            R7 K8 ["TextLabel"]
       23 DUPTABLE                         R8 K10 [{"Text"}]
       24 LOADK                            R11 K11 ["BasicExample"]
       25 LOADK                            R12 K9 ["Text"]
       26 NAMECALL                         R9 R1 K12 ["getText"]
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K9 ["Text"]
       31 CALL                             R6 2 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K5 ["OptionalContent"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 RETURN                           R5 1
