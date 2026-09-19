PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["defaultColors"]
        6 RETURN                           R0 1
        7 DUPTABLE                         R0 K10 [{"background", "iden", "keyword", "builtin", "string", "number", "comment", "operator", "custom"}]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       11 GETIMPORT                        R2 K15 [Enum.StudioStyleGuideColor.ScriptBackground]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K1 ["background"]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       19 GETIMPORT                        R2 K17 [Enum.StudioStyleGuideColor.ScriptText]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K2 ["iden"]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       27 GETIMPORT                        R2 K19 [Enum.StudioStyleGuideColor.ScriptKeyword]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["keyword"]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       35 GETIMPORT                        R2 K21 [Enum.StudioStyleGuideColor.ScriptBuiltInFunction]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K4 ["builtin"]
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       43 GETIMPORT                        R2 K23 [Enum.StudioStyleGuideColor.ScriptString]
       45 CALL                             R1 1 1
       46 SETTABLEKS                       R1 R0 K5 ["string"]
       48 GETUPVAL                         R1 2
       49 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       51 GETIMPORT                        R2 K25 [Enum.StudioStyleGuideColor.ScriptNumber]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K6 ["number"]
       56 GETUPVAL                         R1 2
       57 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       59 GETIMPORT                        R2 K27 [Enum.StudioStyleGuideColor.ScriptComment]
       61 CALL                             R1 1 1
       62 SETTABLEKS                       R1 R0 K7 ["comment"]
       64 GETUPVAL                         R1 2
       65 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       67 GETIMPORT                        R2 K29 [Enum.StudioStyleGuideColor.ScriptOperator]
       69 CALL                             R1 1 1
       70 SETTABLEKS                       R1 R0 K8 ["operator"]
       72 GETUPVAL                         R1 2
       73 GETTABLEKS                       R1 R1 K11 ["getStudioThemeColor"]
       75 GETIMPORT                        R2 K31 [Enum.StudioStyleGuideColor.ScriptBool]
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K9 ["custom"]
       80 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R1 3
        5 MOVE                             R2 R0
        6 CALL                             R2 0 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K0 ["getSignal"]
       11 CALL                             R1 1 1
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K1 ["Connect"]
       17 CALL                             R1 2 1
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["defaultColors"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["use"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Util"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["ContextServices"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K10 ["Design"]
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Util"]
       31 GETTABLEKS                       R7 R7 K11 ["Highlighter"]
       33 GETTABLEKS                       R7 R7 K12 ["Theme"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K13 ["TestHelpers"]
       40 GETTABLEKS                       R8 R8 K14 ["isCli"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K15 [PROTO_4]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R7
       49 RETURN                           R8 1
