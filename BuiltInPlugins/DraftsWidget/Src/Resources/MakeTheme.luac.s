PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 1
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R3 K9 ["StudioTheme"]
       22 GETTABLEKS                       R4 R2 K10 ["StyleKey"]
       24 DUPTABLE                         R5 K15 [{"backgroundColor", "icons", "labels", "dialogUILibrary"}]
       25 GETTABLEKS                       R6 R4 K16 ["MainBackground"]
       27 SETTABLEKS                       R6 R5 K11 ["backgroundColor"]
       29 DUPTABLE                         R6 K18 [{"DraftState"}]
       30 DUPTABLE                         R7 K25 [{["Committed"] = "rbxasset://textures/StudioSharedUI/statusSuccess.png", ["Outdated"] = "rbxasset://textures/DraftsWidget/newSource.png", ["Deleted"] = "rbxasset://textures/DraftsWidget/deletedSource.png"}]
       31 SETTABLEKS                       R7 R6 K17 ["DraftState"]
       33 SETTABLEKS                       R6 R5 K12 ["icons"]
       35 DUPTABLE                         R6 K28 [{"MainFont", "MainText"}]
       36 GETIMPORT                        R7 K32 [Enum.Font.SourceSans]
       38 SETTABLEKS                       R7 R6 K26 ["MainFont"]
       40 GETTABLEKS                       R7 R4 K33 ["TextPrimary"]
       42 SETTABLEKS                       R7 R6 K27 ["MainText"]
       44 SETTABLEKS                       R6 R5 K13 ["labels"]
       46 DUPTABLE                         R6 K36 [{"HeaderFont", "HeaderTextColor"}]
       47 GETIMPORT                        R7 K32 [Enum.Font.SourceSans]
       49 SETTABLEKS                       R7 R6 K34 ["HeaderFont"]
       51 GETTABLEKS                       R7 R4 K33 ["TextPrimary"]
       53 SETTABLEKS                       R7 R6 K35 ["HeaderTextColor"]
       55 SETTABLEKS                       R6 R5 K14 ["dialogUILibrary"]
       57 DUPCLOSURE                       R6 K37 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 RETURN                           R6 1
