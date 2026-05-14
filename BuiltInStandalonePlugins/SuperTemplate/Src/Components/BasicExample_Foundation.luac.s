PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K4 [{"tag"}]
       12 LOADK                            R5 K5 ["size-full-full row align-y-center padding-medium bg-surface-200"]
       13 SETTABLEKS                       R5 R4 K3 ["tag"]
       15 DUPTABLE                         R5 K7 [{"OptionalContent"}]
       16 GETTABLEKS                       R7 R0 K8 ["showContent"]
       18 JUMPIFNOT                        R7 ; [+13]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["createElement"]
       22 GETUPVAL                         R7 3
       23 DUPTABLE                         R8 K10 [{"Text", "tag"}]
       24 LOADK                            R9 K11 ["Kangaroos are great!"]
       25 SETTABLEKS                       R9 R8 K9 ["Text"]
       27 LOADK                            R9 K12 ["padding-small grow auto-xy bg-action-standard content-action-standard text-heading-medium radius-small"]
       28 SETTABLEKS                       R9 R8 K3 ["tag"]
       30 CALL                             R6 2 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K6 ["OptionalContent"]
       35 CALL                             R2 3 -1
       36 RETURN                           R2 -1

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
