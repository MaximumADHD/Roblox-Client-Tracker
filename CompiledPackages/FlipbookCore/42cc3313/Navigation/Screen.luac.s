PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Home"] ; [+48]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["story"]
        6 JUMPIFNOT                        R0 ; [+21]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K2 ["storybook"]
       10 JUMPIFNOT                        R0 ; [+17]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K3 ["createElement"]
       14 GETUPVAL                         R1 3
       15 DUPTABLE                         R2 K4 [{"story", "storybook"}]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["story"]
       19 SETTABLEKS                       R3 R2 K1 ["story"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K2 ["storybook"]
       24 SETTABLEKS                       R3 R2 K2 ["storybook"]
       26 CALL                             R0 2 -1
       27 RETURN                           R0 -1
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R0 R1 K5 ["unavailableStorybook"]
       31 JUMPIFNOT                        R0 ; [+12]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R0 R1 K3 ["createElement"]
       35 GETUPVAL                         R1 4
       36 DUPTABLE                         R2 K6 [{"unavailableStorybook"}]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K5 ["unavailableStorybook"]
       40 SETTABLEKS                       R3 R2 K5 ["unavailableStorybook"]
       42 CALL                             R0 2 -1
       43 RETURN                           R0 -1
       44 GETUPVAL                         R1 2
       45 GETTABLEKS                       R0 R1 K3 ["createElement"]
       47 GETUPVAL                         R1 5
       48 CALL                             R0 1 -1
       49 RETURN                           R0 -1
       50 GETUPVAL                         R0 0
       51 JUMPIFNOTEQKS                    R0 K7 ["Settings"] ; [+7]
       53 GETUPVAL                         R1 2
       54 GETTABLEKS                       R0 R1 K3 ["createElement"]
       56 GETUPVAL                         R1 6
       57 CALL                             R0 1 -1
       58 RETURN                           R0 -1
       59 GETUPVAL                         R0 0
       60 JUMPIFNOTEQKS                    R0 K8 ["About"] ; [+7]
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R0 R1 K3 ["createElement"]
       65 GETUPVAL                         R1 7
       66 CALL                             R0 1 -1
       67 RETURN                           R0 -1
       68 LOADNIL                          R0
       69 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["currentScreen"]
        6 GETUPVAL                         R3 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 NEWTABLE                         R5 0 2
       18 MOVE                             R6 R0
       19 MOVE                             R7 R2
       20 SETLIST                          R5 R6 2 [1]
       22 CALL                             R3 2 1
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Packages"]
       11 GETTABLEKS                       R1 R2 K6 ["React"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K5 ["Packages"]
       24 GETTABLEKS                       R2 R3 K7 ["Storyteller"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R7 K3 [script]
       31 GETTABLEKS                       R6 R7 K4 ["Parent"]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K8 ["About"]
       37 GETTABLEKS                       R3 R4 K9 ["AboutView"]
       39 CALL                             R2 1 1
       40 GETIMPORT                        R3 K1 [require]
       42 GETIMPORT                        R6 K3 [script]
       44 GETTABLEKS                       R5 R6 K4 ["Parent"]
       46 GETTABLEKS                       R4 R5 K10 ["NavigationContext"]
       48 CALL                             R3 1 1
       49 GETIMPORT                        R4 K1 [require]
       51 GETIMPORT                        R9 K3 [script]
       53 GETTABLEKS                       R8 R9 K4 ["Parent"]
       55 GETTABLEKS                       R7 R8 K4 ["Parent"]
       57 GETTABLEKS                       R6 R7 K11 ["Storybook"]
       59 GETTABLEKS                       R5 R6 K12 ["NoStorySelected"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K1 [require]
       64 GETIMPORT                        R10 K3 [script]
       66 GETTABLEKS                       R9 R10 K4 ["Parent"]
       68 GETTABLEKS                       R8 R9 K4 ["Parent"]
       70 GETTABLEKS                       R7 R8 K13 ["UserSettings"]
       72 GETTABLEKS                       R6 R7 K14 ["SettingsView"]
       74 CALL                             R5 1 1
       75 GETIMPORT                        R6 K1 [require]
       77 GETIMPORT                        R11 K3 [script]
       79 GETTABLEKS                       R10 R11 K4 ["Parent"]
       81 GETTABLEKS                       R9 R10 K4 ["Parent"]
       83 GETTABLEKS                       R8 R9 K11 ["Storybook"]
       85 GETTABLEKS                       R7 R8 K15 ["StoryCanvas"]
       87 CALL                             R6 1 1
       88 GETIMPORT                        R7 K1 [require]
       90 GETIMPORT                        R12 K3 [script]
       92 GETTABLEKS                       R11 R12 K4 ["Parent"]
       94 GETTABLEKS                       R10 R11 K4 ["Parent"]
       96 GETTABLEKS                       R9 R10 K11 ["Storybook"]
       98 GETTABLEKS                       R8 R9 K16 ["StorybookError"]
      100 CALL                             R7 1 1
      101 GETTABLEKS                       R8 R0 K17 ["useMemo"]
      103 DUPCLOSURE                       R9 K18 [PROTO_1]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R2
      112 RETURN                           R9 1
