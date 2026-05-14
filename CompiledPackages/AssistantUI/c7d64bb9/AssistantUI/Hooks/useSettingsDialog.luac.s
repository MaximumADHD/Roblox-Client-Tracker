PROTO_0:
        0 DUPTABLE                         R0 K1 [{"AssistantSettings"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["SettingsDialog"]
        3 LOADK                            R4 K3 ["Title"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AssistantSettings"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"initialTab"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["initialTab"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["integrations"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["apiKeys"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["internal"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["show"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useState"]
        5 LOADK                            R2 K1 ["integrations"]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       10 DUPCLOSURE                       R4 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R5 0 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["locale"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R1
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 1
       33 MOVE                             R5 R0
       34 DUPTABLE                         R6 K9 [{"Contents", "Size", "Title", "Modal"}]
       35 SETTABLEKS                       R4 R6 K5 ["Contents"]
       37 GETUPVAL                         R7 5
       38 SETTABLEKS                       R7 R6 K6 ["Size"]
       40 GETTABLEKS                       R7 R3 K10 ["AssistantSettings"]
       42 SETTABLEKS                       R7 R6 K7 ["Title"]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K8 ["Modal"]
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K11 ["useCallback"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 NEWTABLE                         R8 0 1
       56 GETTABLEKS                       R9 R5 K12 ["show"]
       58 SETLIST                          R8 R9 1 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K11 ["useCallback"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R9 0 1
       69 GETTABLEKS                       R10 R5 K12 ["show"]
       71 SETLIST                          R9 R10 1 [1]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       77 NEWCLOSURE                       R9 P4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 NEWTABLE                         R10 0 1
       82 GETTABLEKS                       R11 R5 K12 ["show"]
       84 SETLIST                          R10 R11 1 [1]
       86 CALL                             R8 2 1
       87 DUPTABLE                         R9 K17 [{"showIntegrations", "showApiKeys", "showInternalSettings", "root"}]
       88 SETTABLEKS                       R6 R9 K13 ["showIntegrations"]
       90 SETTABLEKS                       R7 R9 K14 ["showApiKeys"]
       92 SETTABLEKS                       R8 R9 K15 ["showInternalSettings"]
       94 GETTABLEKS                       R10 R5 K16 ["root"]
       96 SETTABLEKS                       R10 R9 K16 ["root"]
       98 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["IntegrationMenu"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Resources"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETTABLEKS                       R4 R4 K13 ["Translator"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K15 ["useGetDialogWidget"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K16 ["createElement"]
       41 GETIMPORT                        R6 K19 [Vector2.new]
       43 LOADN                            R7 88
       44 LOADN                            R8 144
       45 CALL                             R6 2 1
       46 DUPCLOSURE                       R7 K20 [PROTO_5]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 RETURN                           R7 1
