PROTO_0:
        0 LOADK                            R2 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
        1 MOVE                             R4 R0
        2 GETTABLEKS                       R5 R1 K1 ["X"]
        4 GETTABLEKS                       R6 R1 K2 ["Y"]
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 4 1
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Tag"]
        9 GETUPVAL                         R5 1
       10 LOADK                            R6 K3 ["Component-CollaboratorThumbnail Role-Surface"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K2 ["Tag"]
       14 GETTABLE                         R7 R0 R8
       15 LOADK                            R8 K4 ["data-testid=%*"]
       16 GETTABLEKS                       R10 R0 K5 ["UserId"]
       18 NAMECALL                         R8 R8 K6 ["format"]
       20 CALL                             R8 2 1
       21 CALL                             R5 3 1
       22 SETTABLE                         R5 R3 R4
       23 DUPTABLE                         R4 K9 [{"ActivityRing", "Avatar"}]
       24 GETTABLEKS                       R6 R0 K10 ["IsIdle"]
       26 JUMPIF                           R6 ; [+26]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 LOADK                            R6 K1 ["Frame"]
       31 NEWTABLE                         R7 1 0
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K2 ["Tag"]
       36 LOADK                            R9 K11 ["Role-Surface X-Fit"]
       37 SETTABLE                         R9 R7 R8
       38 DUPTABLE                         R8 K13 [{"RingColor"}]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K0 ["createElement"]
       42 LOADK                            R10 K14 ["UIStroke"]
       43 DUPTABLE                         R11 K16 [{"Color"}]
       44 GETTABLEKS                       R12 R0 K12 ["RingColor"]
       46 SETTABLEKS                       R12 R11 K15 ["Color"]
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K12 ["RingColor"]
       51 CALL                             R5 3 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K7 ["ActivityRing"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["createElement"]
       59 LOADK                            R6 K17 ["ImageLabel"]
       60 NEWTABLE                         R7 2 0
       62 GETTABLEKS                       R9 R0 K5 ["UserId"]
       64 GETIMPORT                        R10 K20 [Vector2.new]
       66 LOADN                            R11 60
       67 LOADN                            R12 60
       68 CALL                             R10 2 1
       69 LOADK                            R11 K21 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
       70 MOVE                             R13 R9
       71 GETTABLEKS                       R14 R10 K22 ["X"]
       73 GETTABLEKS                       R15 R10 K23 ["Y"]
       75 NAMECALL                         R11 R11 K6 ["format"]
       77 CALL                             R11 4 1
       78 MOVE                             R8 R11
       79 SETTABLEKS                       R8 R7 K24 ["Image"]
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K2 ["Tag"]
       84 GETTABLEKS                       R10 R0 K10 ["IsIdle"]
       86 JUMPIFNOT                        R10 ; [+2]
       87 LOADK                            R9 K25 ["Idle"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 SETTABLE                         R9 R7 R8
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R4 K8 ["Avatar"]
       94 CALL                             R1 3 -1
       95 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Styling"]
       23 GETTABLEKS                       R3 R3 K10 ["joinTags"]
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 DUPCLOSURE                       R5 K12 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 RETURN                           R5 1
