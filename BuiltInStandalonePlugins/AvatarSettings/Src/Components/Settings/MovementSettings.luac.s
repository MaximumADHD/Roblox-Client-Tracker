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
       19 GETTABLEKS                       R7 R1 K1 ["settings"]
       21 GETTABLEKS                       R6 R7 K5 ["navigationBarSettings"]
       23 GETTABLEKS                       R5 R6 K6 ["avatarType"]
       25 GETTABLEKS                       R4 R5 K7 ["value"]
       27 GETIMPORT                        R5 K11 [Enum.GameAvatarType.R6]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 MOVE                             R4 R3
       34 JUMPIFNOT                        R4 ; [+2]
       35 GETUPVAL                         R4 3
       36 CALL                             R4 0 1
       37 GETUPVAL                         R5 4
       38 GETUPVAL                         R6 5
       39 NEWTABLE                         R7 1 0
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K12 ["Tag"]
       44 LOADK                            R9 K13 ["AvatarSettings-SettingsPage X-Column"]
       45 SETTABLE                         R9 R7 R8
       46 DUPTABLE                         R8 K18 [{"CollisionSection", "AnimationPacksSection", "AnimationClipsSection", "DefaultAbilitiesSection"}]
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADNIL                          R9
       49 JUMP                             ; [+8]
       50 GETUPVAL                         R9 4
       51 GETUPVAL                         R10 6
       52 DUPTABLE                         R11 K20 [{"layoutOrder"}]
       53 MOVE                             R12 R2
       54 CALL                             R12 0 1
       55 SETTABLEKS                       R12 R11 K19 ["layoutOrder"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K14 ["CollisionSection"]
       60 JUMPIFNOT                        R4 ; [+2]
       61 LOADNIL                          R9
       62 JUMP                             ; [+8]
       63 GETUPVAL                         R9 4
       64 GETUPVAL                         R10 7
       65 DUPTABLE                         R11 K20 [{"layoutOrder"}]
       66 MOVE                             R12 R2
       67 CALL                             R12 0 1
       68 SETTABLEKS                       R12 R11 K19 ["layoutOrder"]
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K15 ["AnimationPacksSection"]
       73 JUMPIFNOT                        R4 ; [+2]
       74 LOADNIL                          R9
       75 JUMP                             ; [+8]
       76 GETUPVAL                         R9 4
       77 GETUPVAL                         R10 8
       78 DUPTABLE                         R11 K20 [{"layoutOrder"}]
       79 MOVE                             R12 R2
       80 CALL                             R12 0 1
       81 SETTABLEKS                       R12 R11 K19 ["layoutOrder"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K16 ["AnimationClipsSection"]
       86 GETUPVAL                         R10 9
       87 CALL                             R10 0 1
       88 JUMPIFNOT                        R10 ; [+9]
       89 GETUPVAL                         R9 4
       90 GETUPVAL                         R10 10
       91 DUPTABLE                         R11 K20 [{"layoutOrder"}]
       92 MOVE                             R12 R2
       93 CALL                             R12 0 1
       94 SETTABLEKS                       R12 R11 K19 ["layoutOrder"]
       96 CALL                             R9 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R9
       99 SETTABLEKS                       R9 R8 K17 ["DefaultAbilitiesSection"]
      101 CALL                             R5 3 -1
      102 RETURN                           R5 -1

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
       53 GETTABLEKS                       R9 R0 K6 ["Src"]
       55 GETTABLEKS                       R8 R9 K7 ["Components"]
       57 GETTABLEKS                       R7 R8 K8 ["MovementSettings"]
       59 GETTABLEKS                       R6 R7 K14 ["DefaultAbilitiesSection"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K5 [require]
       64 GETTABLEKS                       R8 R0 K15 ["Packages"]
       66 GETTABLEKS                       R7 R8 K16 ["Framework"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R9 R0 K15 ["Packages"]
       73 GETTABLEKS                       R8 R9 K17 ["React"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R10 R0 K15 ["Packages"]
       80 GETTABLEKS                       R9 R10 K18 ["ReactUtils"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Src"]
       87 GETTABLEKS                       R11 R12 K19 ["Flags"]
       89 GETTABLEKS                       R10 R11 K20 ["getFFlagAvatarSettingsEnableAbilities"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R13 R0 K6 ["Src"]
       96 GETTABLEKS                       R12 R13 K19 ["Flags"]
       98 GETTABLEKS                       R11 R12 K21 ["getFFlagAvatarSettingsEnableAbilitiesR6"]
      100 CALL                             R10 1 1
      101 GETTABLEKS                       R11 R6 K22 ["UI"]
      103 GETTABLEKS                       R12 R11 K23 ["Pane"]
      105 GETTABLEKS                       R13 R8 K24 ["createNextOrder"]
      107 GETTABLEKS                       R14 R7 K25 ["createElement"]
      109 DUPCLOSURE                       R15 K26 [PROTO_0]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R5
      121 RETURN                           R15 1
