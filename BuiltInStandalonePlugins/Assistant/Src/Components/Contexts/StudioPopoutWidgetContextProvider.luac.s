PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"Contents", "InitialSize", "Position"}]
        2 GETTABLEKS                       R3 R0 K0 ["Contents"]
        4 SETTABLEKS                       R3 R2 K0 ["Contents"]
        6 GETTABLEKS                       R3 R0 K1 ["InitialSize"]
        8 SETTABLEKS                       R3 R2 K1 ["InitialSize"]
       10 GETTABLEKS                       R3 R0 K4 ["InitialPosition"]
       12 SETTABLEKS                       R3 R2 K2 ["Position"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K5 [{"Contents", "Size", "Title", "Modal", "onHide"}]
        2 GETTABLEKS                       R3 R0 K0 ["Contents"]
        4 SETTABLEKS                       R3 R2 K0 ["Contents"]
        6 GETTABLEKS                       R3 R0 K1 ["Size"]
        8 SETTABLEKS                       R3 R2 K1 ["Size"]
       10 GETTABLEKS                       R3 R0 K2 ["Title"]
       12 SETTABLEKS                       R3 R2 K2 ["Title"]
       14 GETTABLEKS                       R3 R0 K3 ["Modal"]
       16 SETTABLEKS                       R3 R2 K3 ["Modal"]
       18 GETUPVAL                         R4 1
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R3 R0 K4 ["onHide"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K4 ["onHide"]
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"getDialogWidget", "getPopoutMenu"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getDialogWidget"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["getPopoutMenu"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_2]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R6 4
       11 GETTABLEKS                       R5 R6 K2 ["Components"]
       13 GETTABLEKS                       R4 R5 K3 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K4 ["PopoutWidgetContextProvider"]
       17 DUPTABLE                         R4 K6 [{"option"}]
       18 SETTABLEKS                       R1 R4 K5 ["option"]
       20 GETTABLEKS                       R5 R0 K7 ["children"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["useDialogWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Hooks"]
       36 GETTABLEKS                       R5 R6 K12 ["usePopoutMenu"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R7 R1 K13 ["Flags"]
       41 GETTABLEKS                       R6 R7 K14 ["Shared"]
       43 GETTABLEKS                       R5 R6 K15 ["FFlagAssistantMultipleChatPersistence"]
       45 GETTABLEKS                       R6 R2 K16 ["createElement"]
       47 DUPCLOSURE                       R7 K17 [PROTO_0]
       48 CAPTURE                          VAL R4
       49 DUPCLOSURE                       R8 K18 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 DUPCLOSURE                       R9 K19 [PROTO_3]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 RETURN                           R9 1
