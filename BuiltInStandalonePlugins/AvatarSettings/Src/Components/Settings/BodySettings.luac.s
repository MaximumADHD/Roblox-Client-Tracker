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
       42 DUPTABLE                         R7 K17 [{"ScaleSection", "AppearanceSection", "BuildSection"}]
       43 NOT                              R8 R3
       44 JUMPIFNOT                        R8 ; [+8]
       45 GETUPVAL                         R8 3
       46 GETUPVAL                         R9 5
       47 DUPTABLE                         R10 K19 [{"layoutOrder"}]
       48 MOVE                             R11 R2
       49 CALL                             R11 0 1
       50 SETTABLEKS                       R11 R10 K18 ["layoutOrder"]
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K14 ["ScaleSection"]
       55 GETUPVAL                         R8 3
       56 GETUPVAL                         R9 6
       57 DUPTABLE                         R10 K19 [{"layoutOrder"}]
       58 MOVE                             R11 R2
       59 CALL                             R11 0 1
       60 SETTABLEKS                       R11 R10 K18 ["layoutOrder"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K15 ["AppearanceSection"]
       65 NOT                              R8 R3
       66 JUMPIFNOT                        R8 ; [+8]
       67 GETUPVAL                         R8 3
       68 GETUPVAL                         R9 7
       69 DUPTABLE                         R10 K19 [{"layoutOrder"}]
       70 MOVE                             R11 R2
       71 CALL                             R11 0 1
       72 SETTABLEKS                       R11 R10 K18 ["layoutOrder"]
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K16 ["BuildSection"]
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["BodySettings"]
       15 GETTABLEKS                       R2 R2 K9 ["AppearanceSection"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       26 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K7 ["Components"]
       35 GETTABLEKS                       R4 R4 K8 ["BodySettings"]
       37 GETTABLEKS                       R4 R4 K12 ["BuildSection"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K13 ["Packages"]
       44 GETTABLEKS                       R5 R5 K14 ["Framework"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K13 ["Packages"]
       51 GETTABLEKS                       R6 R6 K15 ["React"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K13 ["Packages"]
       58 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Components"]
       67 GETTABLEKS                       R8 R8 K8 ["BodySettings"]
       69 GETTABLEKS                       R8 R8 K17 ["ScaleSection"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R8 R4 K18 ["UI"]
       74 GETTABLEKS                       R9 R8 K19 ["Pane"]
       76 GETTABLEKS                       R10 R6 K20 ["createNextOrder"]
       78 GETTABLEKS                       R11 R5 K21 ["createElement"]
       80 DUPCLOSURE                       R12 K22 [PROTO_0]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R3
       89 RETURN                           R12 1
