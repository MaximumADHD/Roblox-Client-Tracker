PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K0 ["createElement"]
        9 GETUPVAL                         R8 1
       10 NEWTABLE                         R9 8 0
       12 SETTABLEKS                       R5 R9 K1 ["LayoutOrder"]
       14 LOADK                            R10 K2 ["PointingHand"]
       15 SETTABLEKS                       R10 R9 K3 ["Cursor"]
       17 GETTABLEKS                       R10 R6 K4 ["OnClick"]
       19 SETTABLEKS                       R10 R9 K4 ["OnClick"]
       21 GETTABLEKS                       R10 R6 K5 ["Text"]
       23 SETTABLEKS                       R10 R9 K5 ["Text"]
       25 GETTABLEKS                       R10 R6 K6 ["Icon"]
       27 SETTABLEKS                       R10 R9 K6 ["Icon"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K7 ["Tag"]
       32 GETUPVAL                         R11 2
       33 LOADK                            R12 K8 ["X-Fit"]
       34 GETTABLEKS                       R13 R6 K9 ["Tags"]
       36 CALL                             R11 2 1
       37 SETTABLE                         R11 R9 R10
       38 CALL                             R7 2 1
       39 SETTABLE                         R7 R1 R5
       40 FORGLOOP                         R2 2 ; [-35]
       42 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Buttons"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{"LayoutOrder", "tag"}]
       11 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 LOADK                            R5 K6 ["row gap-small wrap flex-x-none size-full-0 auto-y align-x-center anchor-bottom-left position-bottom-left padding-bottom-medium"]
       16 SETTABLEKS                       R5 R4 K4 ["tag"]
       18 MOVE                             R5 R1
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Styling"]
       30 GETTABLEKS                       R4 R5 K11 ["joinTags"]
       32 GETTABLEKS                       R5 R3 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["IconButton"]
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R8 K15 [PROTO_1]
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 RETURN                           R8 1
