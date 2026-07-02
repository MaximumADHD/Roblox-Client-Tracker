PROTO_0:
        0 NEWTABLE                         R1 0 6
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["new"]
        6 GETTABLEKS                       R4 R0 K1 ["focus"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["new"]
       12 GETTABLEKS                       R5 R0 K2 ["plugin"]
       14 NAMECALL                         R5 R5 K3 ["GetMouse"]
       16 CALL                             R5 1 -1
       17 CALL                             R4 -1 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K0 ["new"]
       21 GETTABLEKS                       R6 R0 K2 ["plugin"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K0 ["new"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R7 5
       29 CALL                             R7 0 -1
       30 SETLIST                          R1 R2 -1 [1]
       32 GETUPVAL                         R2 6
       33 GETTABLEKS                       R2 R2 K4 ["provide"]
       35 MOVE                             R3 R1
       36 DUPTABLE                         R4 K6 [{"Child"}]
       37 GETUPVAL                         R5 7
       38 GETTABLEKS                       R5 R5 K7 ["createElement"]
       40 GETUPVAL                         R6 8
       41 MOVE                             R7 R0
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K5 ["Child"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialGenerator", ["libraries"]}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K7 ["Localization"]
        7 GETTABLEKS                       R3 R3 K8 ["SourceStrings"]
        9 SETTABLEKS                       R3 R2 K1 ["stringResourceTable"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K7 ["Localization"]
       14 GETTABLEKS                       R3 R3 K9 ["LocalizedStrings"]
       16 SETTABLEKS                       R3 R2 K2 ["translationResourceTable"]
       18 NEWTABLE                         R3 1 0
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K10 ["Resources"]
       23 GETTABLEKS                       R4 R4 K11 ["LOCALIZATION_PROJECT_NAME"]
       25 DUPTABLE                         R5 K12 [{"stringResourceTable", "translationResourceTable"}]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K10 ["Resources"]
       29 GETTABLEKS                       R6 R6 K8 ["SourceStrings"]
       31 SETTABLEKS                       R6 R5 K1 ["stringResourceTable"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K10 ["Resources"]
       36 GETTABLEKS                       R6 R6 K9 ["LocalizedStrings"]
       38 SETTABLEKS                       R6 R5 K2 ["translationResourceTable"]
       40 SETTABLE                         R5 R3 R4
       41 SETTABLEKS                       R3 R2 K5 ["libraries"]
       43 CALL                             R1 1 1
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          VAL R0
       54 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["parse"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R1 K1 ["Parent"]
        4 GETTABLEKS                       R3 R0 K2 ["name"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+19]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["new"]
       13 GETTABLEKS                       R3 R0 K2 ["name"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K6 [pcall]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R2
       21 CALL                             R3 1 2
       22 JUMPIFNOT                        R3 ; [+6]
       23 SETTABLEKS                       R4 R0 K7 ["docs"]
       25 GETTABLEKS                       R5 R4 K8 ["Summary"]
       27 SETTABLEKS                       R5 R0 K9 ["summary"]
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["MaterialFramework"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K8 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R1 K9 ["Dev"]
       30 GETTABLEKS                       R6 R6 K10 ["RoactCompat"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K11 ["Src"]
       35 GETTABLEKS                       R6 R6 K12 ["Resources"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R6 K13 ["MakeTheme"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R3 K14 ["ContextServices"]
       44 GETTABLEKS                       R9 R3 K15 ["Util"]
       46 GETTABLEKS                       R9 R9 K16 ["Typecheck"]
       48 GETTABLEKS                       R9 R9 K17 ["DocParser"]
       50 GETTABLEKS                       R10 R8 K18 ["Focus"]
       52 GETTABLEKS                       R11 R8 K19 ["Localization"]
       54 GETTABLEKS                       R12 R8 K20 ["Mouse"]
       56 GETTABLEKS                       R13 R8 K21 ["Plugin"]
       58 GETTABLEKS                       R14 R2 K22 ["Context"]
       60 GETTABLEKS                       R14 R14 K23 ["StudioServices"]
       62 DUPTABLE                         R15 K31 [{["name"] = "Material Generator", ["exclude"], ["storyRoots"], ["roact"], ["mapStory"], ["mapDefinition"]}]
       63 NEWTABLE                         R16 0 1
       65 LOADK                            R17 K32 ["_Index"]
       66 SETLIST                          R16 R17 1 [1]
       68 SETTABLEKS                       R16 R15 K26 ["exclude"]
       70 NEWTABLE                         R16 0 1
       72 GETTABLEKS                       R17 R0 K11 ["Src"]
       74 SETLIST                          R16 R17 1 [1]
       76 SETTABLEKS                       R16 R15 K27 ["storyRoots"]
       78 SETTABLEKS                       R5 R15 K28 ["roact"]
       80 DUPCLOSURE                       R16 K33 [PROTO_1]
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R16 R15 K29 ["mapStory"]
       93 DUPCLOSURE                       R16 K34 [PROTO_3]
       94 CAPTURE                          VAL R9
       95 SETTABLEKS                       R16 R15 K30 ["mapDefinition"]
       97 RETURN                           R15 1
