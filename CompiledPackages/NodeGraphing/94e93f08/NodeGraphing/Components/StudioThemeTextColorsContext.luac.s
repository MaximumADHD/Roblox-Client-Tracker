PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Theme"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K10 [{"background", "iden", "keyword", "builtin", "string", "number", "comment", "operator", "custom"}]
        5 GETIMPORT                        R5 K14 [Enum.StudioStyleGuideColor.ScriptBackground]
        7 NAMECALL                         R3 R0 K15 ["GetColor"]
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K1 ["background"]
       12 GETIMPORT                        R5 K17 [Enum.StudioStyleGuideColor.ScriptText]
       14 NAMECALL                         R3 R0 K15 ["GetColor"]
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K2 ["iden"]
       19 GETIMPORT                        R5 K19 [Enum.StudioStyleGuideColor.ScriptKeyword]
       21 NAMECALL                         R3 R0 K15 ["GetColor"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K3 ["keyword"]
       26 GETIMPORT                        R5 K21 [Enum.StudioStyleGuideColor.ScriptBuiltInFunction]
       28 NAMECALL                         R3 R0 K15 ["GetColor"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K4 ["builtin"]
       33 GETIMPORT                        R5 K23 [Enum.StudioStyleGuideColor.ScriptString]
       35 NAMECALL                         R3 R0 K15 ["GetColor"]
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K5 ["string"]
       40 GETIMPORT                        R5 K25 [Enum.StudioStyleGuideColor.ScriptNumber]
       42 NAMECALL                         R3 R0 K15 ["GetColor"]
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K6 ["number"]
       47 GETIMPORT                        R5 K27 [Enum.StudioStyleGuideColor.ScriptComment]
       49 NAMECALL                         R3 R0 K15 ["GetColor"]
       51 CALL                             R3 2 1
       52 SETTABLEKS                       R3 R2 K7 ["comment"]
       54 GETIMPORT                        R5 K29 [Enum.StudioStyleGuideColor.ScriptOperator]
       56 NAMECALL                         R3 R0 K15 ["GetColor"]
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R2 K8 ["operator"]
       61 GETIMPORT                        R5 K31 [Enum.StudioStyleGuideColor.ScriptBool]
       63 NAMECALL                         R3 R0 K15 ["GetColor"]
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R2 K9 ["custom"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R4 R0 K3 ["ThemeChanged"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K4 ["Connect"]
       14 CALL                             R4 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R2 K7 [table.insert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 2
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R8 1
       24 MOVE                             R11 R6
       25 NAMECALL                         R9 R0 K8 ["GetPropertyChangedSignal"]
       27 CALL                             R9 2 1
       28 MOVE                             R11 R1
       29 NAMECALL                         R9 R9 K4 ["Connect"]
       31 CALL                             R9 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R7 K7 [table.insert]
       35 CALL                             R7 -1 0
       36 FORGLOOP                         R2 2 ; [-14]
       38 MOVE                             R2 R1
       39 CALL                             R2 0 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pcall]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R1 1 0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["createElement"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["Provider"]
       21 DUPTABLE                         R5 K5 [{"value"}]
       22 DUPTABLE                         R6 K7 [{"themeTextColors"}]
       23 SETTABLEKS                       R1 R6 K6 ["themeTextColors"]
       25 SETTABLEKS                       R6 R5 K4 ["value"]
       27 GETTABLEKS                       R6 R0 K8 ["children"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Highlighter"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 9
       23 LOADK                            R4 K9 ["Background Color"]
       24 LOADK                            R5 K10 ["Text Color"]
       25 LOADK                            R6 K11 ["Keyword Color"]
       26 LOADK                            R7 K12 ["Built-in Function Color"]
       27 LOADK                            R8 K13 ["String Color"]
       28 LOADK                            R9 K14 ["Number Color"]
       29 LOADK                            R10 K15 ["Comment Color"]
       30 LOADK                            R11 K16 ["Operator Color"]
       31 LOADK                            R12 K17 ["Bool Color"]
       32 SETLIST                          R3 R4 9 [1]
       34 GETTABLEKS                       R4 R2 K18 ["createContext"]
       36 NEWTABLE                         R5 0 0
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K19 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 DUPTABLE                         R6 K22 [{"Context", "Provider"}]
       44 SETTABLEKS                       R4 R6 K20 ["Context"]
       46 SETTABLEKS                       R5 R6 K21 ["Provider"]
       48 RETURN                           R6 1
