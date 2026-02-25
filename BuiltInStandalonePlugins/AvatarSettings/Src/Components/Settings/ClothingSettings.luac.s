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
       33 GETUPVAL                         R4 3
       34 GETUPVAL                         R5 4
       35 NEWTABLE                         R6 1 0
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K12 ["Tag"]
       40 LOADK                            R8 K13 ["AvatarSettings-SettingsPage X-Column"]
       41 SETTABLE                         R8 R6 R7
       42 DUPTABLE                         R7 K16 [{"ClothingScaleSection", "CustomClothingSection"}]
       43 NOT                              R8 R3
       44 JUMPIFNOT                        R8 ; [+8]
       45 GETUPVAL                         R8 3
       46 GETUPVAL                         R9 5
       47 DUPTABLE                         R10 K18 [{"layoutOrder"}]
       48 MOVE                             R11 R2
       49 CALL                             R11 0 1
       50 SETTABLEKS                       R11 R10 K17 ["layoutOrder"]
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K14 ["ClothingScaleSection"]
       55 GETUPVAL                         R8 3
       56 GETUPVAL                         R9 6
       57 DUPTABLE                         R10 K18 [{"layoutOrder"}]
       58 MOVE                             R11 R2
       59 CALL                             R11 0 1
       60 SETTABLEKS                       R11 R10 K17 ["layoutOrder"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K15 ["CustomClothingSection"]
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Components"]
       24 GETTABLEKS                       R4 R5 K10 ["ClothingSettings"]
       26 GETTABLEKS                       R3 R4 K11 ["ClothingScaleSection"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R7 K7 ["Components"]
       35 GETTABLEKS                       R5 R6 K10 ["ClothingSettings"]
       37 GETTABLEKS                       R4 R5 K12 ["CustomClothingSection"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R6 R0 K13 ["Packages"]
       44 GETTABLEKS                       R5 R6 K14 ["Framework"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R7 R0 K13 ["Packages"]
       51 GETTABLEKS                       R6 R7 K15 ["React"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K13 ["Packages"]
       58 GETTABLEKS                       R7 R8 K16 ["ReactUtils"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R4 K17 ["UI"]
       63 GETTABLEKS                       R8 R7 K18 ["Pane"]
       65 GETTABLEKS                       R9 R6 K19 ["createNextOrder"]
       67 GETTABLEKS                       R10 R5 K20 ["createElement"]
       69 DUPCLOSURE                       R11 K21 [PROTO_0]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 RETURN                           R11 1
