PROTO_0:
        0 LOADK                            R3 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
        1 MOVE                             R5 R0
        2 GETTABLEKS                       R6 R1 K1 ["X"]
        4 GETTABLEKS                       R7 R1 K2 ["Y"]
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 4 1
        9 MOVE                             R2 R3
       10 RETURN                           R2 1

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
       15 LOADK                            R9 K4 ["data-testid=%*"]
       16 GETTABLEKS                       R11 R0 K5 ["UserId"]
       18 NAMECALL                         R9 R9 K6 ["format"]
       20 CALL                             R9 2 1
       21 MOVE                             R8 R9
       22 CALL                             R5 3 1
       23 SETTABLE                         R5 R3 R4
       24 DUPTABLE                         R4 K9 [{"ActivityRing", "Avatar"}]
       25 GETTABLEKS                       R6 R0 K10 ["IsIdle"]
       27 JUMPIF                           R6 ; [+26]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 LOADK                            R6 K1 ["Frame"]
       32 NEWTABLE                         R7 1 0
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K2 ["Tag"]
       37 LOADK                            R9 K11 ["Role-Surface X-Fit"]
       38 SETTABLE                         R9 R7 R8
       39 DUPTABLE                         R8 K13 [{"RingColor"}]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K0 ["createElement"]
       43 LOADK                            R10 K14 ["UIStroke"]
       44 DUPTABLE                         R11 K16 [{"Color"}]
       45 GETTABLEKS                       R12 R0 K12 ["RingColor"]
       47 SETTABLEKS                       R12 R11 K15 ["Color"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K12 ["RingColor"]
       52 CALL                             R5 3 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R5
       55 SETTABLEKS                       R5 R4 K7 ["ActivityRing"]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K0 ["createElement"]
       60 LOADK                            R6 K17 ["ImageLabel"]
       61 NEWTABLE                         R7 2 0
       63 GETTABLEKS                       R9 R0 K5 ["UserId"]
       65 GETIMPORT                        R10 K20 [Vector2.new]
       67 LOADN                            R11 60
       68 LOADN                            R12 60
       69 CALL                             R10 2 1
       70 LOADK                            R11 K21 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
       71 MOVE                             R13 R9
       72 GETTABLEKS                       R14 R10 K22 ["X"]
       74 GETTABLEKS                       R15 R10 K23 ["Y"]
       76 NAMECALL                         R11 R11 K6 ["format"]
       78 CALL                             R11 4 1
       79 MOVE                             R8 R11
       80 SETTABLEKS                       R8 R7 K24 ["Image"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K2 ["Tag"]
       85 GETTABLEKS                       R10 R0 K10 ["IsIdle"]
       87 JUMPIFNOT                        R10 ; [+2]
       88 LOADK                            R9 K25 ["Idle"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLE                         R9 R7 R8
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K8 ["Avatar"]
       95 CALL                             R1 3 -1
       96 RETURN                           R1 -1

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
