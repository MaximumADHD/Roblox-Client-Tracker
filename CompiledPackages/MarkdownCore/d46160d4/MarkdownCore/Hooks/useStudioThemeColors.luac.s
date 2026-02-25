PROTO_0:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Studio"]
        5 GETTABLEKS                       R0 R1 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["defaultColors"]
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K2 [pcall]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 CALL                             R0 1 2
       11 JUMPIF                           R0 ; [+3]
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R2 1
       15 DUPTABLE                         R2 K13 [{"background", "iden", "keyword", "builtin", "string", "number", "comment", "operator", "custom"}]
       16 GETIMPORT                        R5 K17 [Enum.StudioStyleGuideColor.ScriptBackground]
       18 NAMECALL                         R3 R1 K18 ["GetColor"]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K4 ["background"]
       23 GETIMPORT                        R5 K20 [Enum.StudioStyleGuideColor.ScriptText]
       25 NAMECALL                         R3 R1 K18 ["GetColor"]
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K5 ["iden"]
       30 GETIMPORT                        R5 K22 [Enum.StudioStyleGuideColor.ScriptKeyword]
       32 NAMECALL                         R3 R1 K18 ["GetColor"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K6 ["keyword"]
       37 GETIMPORT                        R5 K24 [Enum.StudioStyleGuideColor.ScriptBuiltInFunction]
       39 NAMECALL                         R3 R1 K18 ["GetColor"]
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K7 ["builtin"]
       44 GETIMPORT                        R5 K26 [Enum.StudioStyleGuideColor.ScriptString]
       46 NAMECALL                         R3 R1 K18 ["GetColor"]
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K8 ["string"]
       51 GETIMPORT                        R5 K28 [Enum.StudioStyleGuideColor.ScriptNumber]
       53 NAMECALL                         R3 R1 K18 ["GetColor"]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R2 K9 ["number"]
       58 GETIMPORT                        R5 K30 [Enum.StudioStyleGuideColor.ScriptComment]
       60 NAMECALL                         R3 R1 K18 ["GetColor"]
       62 CALL                             R3 2 1
       63 SETTABLEKS                       R3 R2 K10 ["comment"]
       65 GETIMPORT                        R5 K32 [Enum.StudioStyleGuideColor.ScriptOperator]
       67 NAMECALL                         R3 R1 K18 ["GetColor"]
       69 CALL                             R3 2 1
       70 SETTABLEKS                       R3 R2 K11 ["operator"]
       72 GETIMPORT                        R5 K34 [Enum.StudioStyleGuideColor.ScriptBool]
       74 NAMECALL                         R3 R1 K18 ["GetColor"]
       76 CALL                             R3 2 1
       77 SETTABLEKS                       R3 R2 K12 ["custom"]
       79 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Studio"]
        5 GETTABLEKS                       R0 R1 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R2 0 1
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K2 [pcall]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 2
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["defaultColors"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 0
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Hooks"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Utils"]
       20 GETTABLEKS                       R4 R5 K9 ["Highlighter"]
       22 GETTABLEKS                       R3 R4 K10 ["Theme"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Utils"]
       34 GETTABLEKS                       R5 R6 K12 ["isCli"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_6]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 RETURN                           R5 1
