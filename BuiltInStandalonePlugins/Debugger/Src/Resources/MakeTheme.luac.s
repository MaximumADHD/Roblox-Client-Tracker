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
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

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
       24 DUPTABLE                         R5 K14 [{"MainBackground", "Separator", "BorderColor"}]
       25 GETTABLEKS                       R6 R4 K11 ["MainBackground"]
       27 SETTABLEKS                       R6 R5 K11 ["MainBackground"]
       29 NEWTABLE                         R6 4 0
       31 LOADN                            R7 1
       32 SETTABLEKS                       R7 R6 K15 ["Weight"]
       34 LOADN                            R7 15
       35 SETTABLEKS                       R7 R6 K16 ["StretchMargin"]
       37 GETIMPORT                        R7 K19 [Color3.fromRGB]
       39 LOADN                            R8 150
       40 LOADN                            R9 150
       41 LOADN                            R10 150
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K20 ["Color"]
       45 SETTABLEKS                       R6 R5 K12 ["Separator"]
       47 GETIMPORT                        R6 K19 [Color3.fromRGB]
       49 LOADN                            R7 229
       50 LOADN                            R8 229
       51 LOADN                            R9 229
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K13 ["BorderColor"]
       55 DUPCLOSURE                       R6 K21 [PROTO_0]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 RETURN                           R6 1
