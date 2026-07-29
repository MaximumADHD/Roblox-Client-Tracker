PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K5 [{["tag"] = "row align-y-center size-full-full padding-medium bg-surface-200"}]
       12 DUPTABLE                         R5 K7 [{"OptionalContent"}]
       13 GETTABLEKS                       R7 R0 K8 ["showContent"]
       15 JUMPIFNOT                        R7 ; [+7]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K2 ["createElement"]
       19 GETUPVAL                         R7 3
       20 DUPTABLE                         R8 K12 [{["Text"] = "Kangaroos are great!", ["tag"] = "grow auto-xy padding-small text-heading-medium radius-small bg-action-standard content-action-standard"}]
       21 CALL                             R6 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R5 K6 ["OptionalContent"]
       26 CALL                             R2 3 -1
       27 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R3 R3 K11 ["Localization"]
       32 GETTABLEKS                       R4 R2 K12 ["View"]
       34 GETTABLEKS                       R5 R2 K13 ["Text"]
       36 DUPCLOSURE                       R6 K14 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 RETURN                           R6 1
