PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
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
       19 GETTABLEKS                       R4 R1 K1 ["settings"]
       21 GETTABLEKS                       R4 R4 K5 ["navigationBarSettings"]
       23 GETTABLEKS                       R4 R4 K6 ["avatarType"]
       25 GETTABLEKS                       R4 R4 K7 ["value"]
       27 GETIMPORT                        R5 K11 [Enum.GameAvatarType.R6]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETUPVAL                         R4 3
       34 GETUPVAL                         R5 4
       35 NEWTABLE                         R6 1 0
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K12 ["Tag"]
       40 LOADK                            R8 K13 ["AvatarSettings-SettingsPage X-Column"]
       41 SETTABLE                         R8 R6 R7
       42 DUPTABLE                         R7 K18 [{"CollisionSection", "AnimationPacksSection", "AnimationClipsSection", "DefaultAbilitiesSection"}]
       43 JUMPIFNOT                        R3 ; [+2]
       44 LOADNIL                          R8
       45 JUMP                             ; [+8]
       46 GETUPVAL                         R8 3
       47 GETUPVAL                         R9 5
       48 DUPTABLE                         R10 K20 [{"layoutOrder"}]
       49 MOVE                             R11 R2
       50 CALL                             R11 0 1
       51 SETTABLEKS                       R11 R10 K19 ["layoutOrder"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K14 ["CollisionSection"]
       56 JUMPIFNOT                        R3 ; [+2]
       57 LOADNIL                          R8
       58 JUMP                             ; [+8]
       59 GETUPVAL                         R8 3
       60 GETUPVAL                         R9 6
       61 DUPTABLE                         R10 K20 [{"layoutOrder"}]
       62 MOVE                             R11 R2
       63 CALL                             R11 0 1
       64 SETTABLEKS                       R11 R10 K19 ["layoutOrder"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K15 ["AnimationPacksSection"]
       69 JUMPIFNOT                        R3 ; [+2]
       70 LOADNIL                          R8
       71 JUMP                             ; [+8]
       72 GETUPVAL                         R8 3
       73 GETUPVAL                         R9 7
       74 DUPTABLE                         R10 K20 [{"layoutOrder"}]
       75 MOVE                             R11 R2
       76 CALL                             R11 0 1
       77 SETTABLEKS                       R11 R10 K19 ["layoutOrder"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K16 ["AnimationClipsSection"]
       82 GETUPVAL                         R8 3
       83 GETUPVAL                         R9 8
       84 DUPTABLE                         R10 K20 [{"layoutOrder"}]
       85 MOVE                             R11 R2
       86 CALL                             R11 0 1
       87 SETTABLEKS                       R11 R10 K19 ["layoutOrder"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K17 ["DefaultAbilitiesSection"]
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["MovementSettings"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationClipsSection"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K8 ["MovementSettings"]
       26 GETTABLEKS                       R3 R3 K10 ["AnimationPacksSection"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K7 ["Components"]
       35 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsContext"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Src"]
       44 GETTABLEKS                       R5 R5 K7 ["Components"]
       46 GETTABLEKS                       R5 R5 K8 ["MovementSettings"]
       48 GETTABLEKS                       R5 R5 K13 ["CollisionSection"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R6 R0 K6 ["Src"]
       55 GETTABLEKS                       R6 R6 K7 ["Components"]
       57 GETTABLEKS                       R6 R6 K8 ["MovementSettings"]
       59 GETTABLEKS                       R6 R6 K14 ["DefaultAbilitiesSection"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K5 [require]
       64 GETTABLEKS                       R7 R0 K15 ["Packages"]
       66 GETTABLEKS                       R7 R7 K16 ["Framework"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R8 R0 K15 ["Packages"]
       73 GETTABLEKS                       R8 R8 K17 ["React"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K15 ["Packages"]
       80 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       82 CALL                             R8 1 1
       83 GETTABLEKS                       R9 R6 K19 ["UI"]
       85 GETTABLEKS                       R10 R9 K20 ["Pane"]
       87 GETTABLEKS                       R11 R8 K21 ["createNextOrder"]
       89 GETTABLEKS                       R12 R7 K22 ["createElement"]
       91 DUPCLOSURE                       R13 K23 [PROTO_0]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R5
      101 RETURN                           R13 1
