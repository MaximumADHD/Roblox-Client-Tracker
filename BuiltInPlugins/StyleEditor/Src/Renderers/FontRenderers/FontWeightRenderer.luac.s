PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Style"]
        2 GETIMPORT                        R3 K4 [Enum.FontStyle.Italic]
        4 JUMPIFNOTEQ                      R2 R3 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K5 ["Weight"]
       10 DUPTABLE                         R3 K9 [{"Id", "Label", "Value"}]
       11 SETTABLEKS                       R2 R3 K6 ["Id"]
       13 GETTABLEKS                       R4 R2 K10 ["Name"]
       15 SETTABLEKS                       R4 R3 K7 ["Label"]
       17 SETTABLEKS                       R2 R3 K8 ["Value"]
       19 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Fonts"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Family"]
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOT                        R1 ; [+10]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["Fonts"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["Family"]
       14 GETTABLE                         R0 R1 R2
       15 GETTABLEKS                       R0 R0 K2 ["Faces"]
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R0 0 0
       20 GETUPVAL                         R1 2
       21 MOVE                             R2 R0
       22 DUPCLOSURE                       R3 K3 [PROTO_0]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Weight"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["OnChanged"]
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R1 K1 ["Weight"]
        4 GETUPVAL                         R3 0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 NEWTABLE                         R5 0 1
       11 GETTABLEKS                       R6 R1 K2 ["Family"]
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["createElement"]
       19 GETUPVAL                         R5 3
       20 DUPTABLE                         R6 K8 [{["OnChanged"], ["PlaceholderText"] = "Bold (procedural)", ["Schema"], [4]}]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R7 R6 K4 ["OnChanged"]
       26 DUPTABLE                         R7 K10 [{"Items"}]
       27 SETTABLEKS                       R3 R7 K9 ["Items"]
       29 SETTABLEKS                       R7 R6 K7 ["Schema"]
       31 SETTABLEKS                       R2 R6 K0 ["Value"]
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"Fonts"}]
        1 GETTABLEKS                       R2 R0 K2 ["Asset"]
        3 GETTABLEKS                       R2 R2 K0 ["Fonts"]
        5 SETTABLEKS                       R2 R1 K0 ["Fonts"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["RoactRodux"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["useMemo"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K5 ["Packages"]
       31 GETTABLEKS                       R5 R5 K9 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K10 ["UI"]
       36 GETTABLEKS                       R6 R5 K11 ["PropertyCell"]
       38 GETTABLEKS                       R6 R6 K12 ["Renderers"]
       40 GETTABLEKS                       R6 R6 K13 ["Select"]
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R0 K5 ["Packages"]
       46 GETTABLEKS                       R8 R8 K14 ["Dash"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K15 ["collectArray"]
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Src"]
       55 GETTABLEKS                       R10 R10 K12 ["Renderers"]
       57 GETTABLEKS                       R10 R10 K17 ["RendererTypes"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R0 K16 ["Src"]
       64 GETTABLEKS                       R11 R11 K18 ["Types"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K4 [require]
       69 GETTABLEKS                       R12 R0 K16 ["Src"]
       71 GETTABLEKS                       R12 R12 K19 ["Reducers"]
       73 GETTABLEKS                       R12 R12 K20 ["RootReducer"]
       75 CALL                             R11 1 1
       76 DUPCLOSURE                       R12 K21 [PROTO_3]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 GETTABLEKS                       R13 R1 K22 ["connect"]
       83 DUPCLOSURE                       R14 K23 [PROTO_4]
       84 CALL                             R13 1 1
       85 MOVE                             R14 R12
       86 CALL                             R13 1 -1
       87 RETURN                           R13 -1
