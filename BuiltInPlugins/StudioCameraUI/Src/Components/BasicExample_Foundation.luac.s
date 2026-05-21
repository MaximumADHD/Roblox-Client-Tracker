PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K4 [{"tag"}]
       11 LOADK                            R5 K5 ["size-full-full row align-y-center padding-medium bg-surface-200"]
       12 SETTABLEKS                       R5 R4 K3 ["tag"]
       14 DUPTABLE                         R5 K7 [{"OptionalContent"}]
       15 GETTABLEKS                       R7 R0 K8 ["showContent"]
       17 JUMPIFNOT                        R7 ; [+15]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K1 ["createElement"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K9 ["Text"]
       24 DUPTABLE                         R8 K10 [{"Text", "tag"}]
       25 LOADK                            R9 K11 ["Kangaroos are great!"]
       26 SETTABLEKS                       R9 R8 K9 ["Text"]
       28 LOADK                            R9 K12 ["padding-small grow auto-y bg-action-standard content-action-standard text-heading-medium radius-small"]
       29 SETTABLEKS                       R9 R8 K3 ["tag"]
       31 CALL                             R6 2 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K6 ["OptionalContent"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R6 1
