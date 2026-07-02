PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["provide"]
        5 NEWTABLE                         R3 0 3
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["Focus"]
       10 GETTABLEKS                       R4 R4 K2 ["new"]
       12 GETTABLEKS                       R5 R0 K3 ["focus"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["Mouse"]
       18 GETTABLEKS                       R5 R5 K2 ["new"]
       20 GETTABLEKS                       R6 R0 K5 ["plugin"]
       22 NAMECALL                         R6 R6 K6 ["GetMouse"]
       24 CALL                             R6 1 -1
       25 CALL                             R5 -1 1
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["Style"]
       29 GETTABLEKS                       R6 R6 K8 ["ThemeSwitcher"]
       31 GETTABLEKS                       R6 R6 K2 ["new"]
       33 CALL                             R6 0 -1
       34 SETLIST                          R3 R4 -1 [1]
       36 DUPTABLE                         R4 K10 [{"Story"}]
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K11 ["createElement"]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K12 ["Fragment"]
       43 NEWTABLE                         R7 0 0
       45 DUPTABLE                         R8 K14 [{"Story", "StyleLink"}]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K11 ["createElement"]
       49 GETUPVAL                         R10 4
       50 MOVE                             R11 R0
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K9 ["Story"]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K11 ["createElement"]
       57 LOADK                            R10 K13 ["StyleLink"]
       58 DUPTABLE                         R11 K16 [{"StyleSheet"}]
       59 SETTABLEKS                       R1 R11 K15 ["StyleSheet"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K13 ["StyleLink"]
       64 CALL                             R5 3 1
       65 SETTABLEKS                       R5 R4 K9 ["Story"]
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["parse"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["name"]
        5 GETTABLEKS                       R3 R0 K2 ["source"]
        7 GETTABLEKS                       R3 R3 K3 ["Parent"]
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K5 [pcall]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 JUMPIFNOT                        R2 ; [+6]
       16 SETTABLEKS                       R3 R0 K6 ["docs"]
       18 GETTABLEKS                       R4 R3 K7 ["Summary"]
       20 SETTABLEKS                       R4 R0 K8 ["summary"]
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R2 K10 ["Util"]
       23 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       25 GETTABLEKS                       R5 R5 K12 ["DocParser"]
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       31 GETTABLEKS                       R7 R7 K14 ["useStyleSheet"]
       33 CALL                             R6 1 1
       34 DUPCLOSURE                       R7 K15 [PROTO_1]
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 DUPTABLE                         R8 K22 [{["name"] = "Viewport Tooling Framework", ["exclude"], ["storyRoots"], ["mapStory"], ["mapDefinition"]}]
       40 NEWTABLE                         R9 0 1
       42 LOADK                            R10 K23 ["_Index"]
       43 SETLIST                          R9 R10 1 [1]
       45 SETTABLEKS                       R9 R8 K18 ["exclude"]
       47 NEWTABLE                         R9 0 1
       49 MOVE                             R10 R0
       50 SETLIST                          R9 R10 1 [1]
       52 SETTABLEKS                       R9 R8 K19 ["storyRoots"]
       54 SETTABLEKS                       R7 R8 K20 ["mapStory"]
       56 DUPCLOSURE                       R9 K24 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R9 R8 K21 ["mapDefinition"]
       60 RETURN                           R8 1
