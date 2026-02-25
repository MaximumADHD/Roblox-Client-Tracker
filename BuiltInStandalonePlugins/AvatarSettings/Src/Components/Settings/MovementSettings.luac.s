PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["settings"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Settings must not be nil in AvatarSettingsContext"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 1
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 4
       21 NEWTABLE                         R5 1 0
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K5 ["Tag"]
       26 LOADK                            R7 K6 ["AvatarSettings-SettingsPage X-Column"]
       27 SETTABLE                         R7 R5 R6
       28 DUPTABLE                         R6 K10 [{"CollisionSection", "AnimationPacksSection", "AnimationClipsSection"}]
       29 GETUPVAL                         R7 3
       30 GETUPVAL                         R8 5
       31 DUPTABLE                         R9 K12 [{"layoutOrder"}]
       32 MOVE                             R10 R2
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K11 ["layoutOrder"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["CollisionSection"]
       39 GETUPVAL                         R7 3
       40 GETUPVAL                         R8 6
       41 DUPTABLE                         R9 K12 [{"layoutOrder"}]
       42 MOVE                             R10 R2
       43 CALL                             R10 0 1
       44 SETTABLEKS                       R10 R9 K11 ["layoutOrder"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K8 ["AnimationPacksSection"]
       49 GETUPVAL                         R7 3
       50 GETUPVAL                         R8 7
       51 DUPTABLE                         R9 K12 [{"layoutOrder"}]
       52 MOVE                             R10 R2
       53 CALL                             R10 0 1
       54 SETTABLEKS                       R10 R9 K11 ["layoutOrder"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K9 ["AnimationClipsSection"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["MovementSettings"]
       15 GETTABLEKS                       R2 R3 K9 ["AnimationClipsSection"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Components"]
       24 GETTABLEKS                       R4 R5 K8 ["MovementSettings"]
       26 GETTABLEKS                       R3 R4 K10 ["AnimationPacksSection"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R7 K7 ["Components"]
       35 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       37 GETTABLEKS                       R4 R5 K12 ["AvatarSettingsContext"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Src"]
       44 GETTABLEKS                       R7 R8 K7 ["Components"]
       46 GETTABLEKS                       R6 R7 K8 ["MovementSettings"]
       48 GETTABLEKS                       R5 R6 K13 ["CollisionSection"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R7 R0 K14 ["Packages"]
       55 GETTABLEKS                       R6 R7 K15 ["Framework"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R8 R0 K14 ["Packages"]
       62 GETTABLEKS                       R7 R8 K16 ["React"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R9 R0 K14 ["Packages"]
       69 GETTABLEKS                       R8 R9 K17 ["ReactUtils"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R8 R5 K18 ["UI"]
       74 GETTABLEKS                       R9 R8 K19 ["Pane"]
       76 GETTABLEKS                       R10 R7 K20 ["createNextOrder"]
       78 GETTABLEKS                       R11 R6 K21 ["createElement"]
       80 DUPCLOSURE                       R12 K22 [PROTO_0]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R1
       89 RETURN                           R12 1
