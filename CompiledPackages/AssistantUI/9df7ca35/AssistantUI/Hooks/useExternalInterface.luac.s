PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 NAMECALL                         R1 R0 K1 ["IsFocused"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+3]
       10 NAMECALL                         R1 R0 K2 ["CaptureFocus"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 LOADB                            R1 0
        6 JUMPIFEQKNIL                     R0 ; [+4]
        8 NAMECALL                         R1 R0 K1 ["IsFocused"]
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 0
        4 JUMPIFNOTEQ                      R1 R2 ; [+4]
        6 GETUPVAL                         R3 1
        7 NOT                              R2 R3
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 2
       10 GETTABLE                         R2 R3 R1
       11 LOADB                            R3 0
       12 JUMPIFEQKNIL                     R2 ; [+4]
       14 GETTABLEKS                       R4 R2 K0 ["inputEnabled"]
       16 NOT                              R3 R4
       17 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R0 K4 [{"sendMessage", "focusInput", "isInputFocused", "isInputDisabled"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["sendMessage"]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R1 R0 K1 ["focusInput"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R1 R0 K2 ["isInputFocused"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R1 R0 K3 ["isInputDisabled"]
       18 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K3 [{"setInputEnabled"}]
        9 GETUPVAL                         R5 3
       10 MOVE                             R6 R2
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["setInputEnabled"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 4
       16 CALL                             R4 0 1
       17 GETTABLEKS                       R5 R2 K4 ["inputEnabled"]
       19 GETTABLEKS                       R6 R2 K5 ["allThreadInputStates"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K6 ["useImperativeHandle"]
       24 MOVE                             R8 R0
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R6
       31 NEWTABLE                         R10 0 5
       33 MOVE                             R11 R3
       34 MOVE                             R12 R1
       35 MOVE                             R13 R4
       36 MOVE                             R14 R5
       37 MOVE                             R15 R6
       38 SETLIST                          R10 R11 5 [1]
       40 CALL                             R7 3 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["InputStateContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["getToggleGenerationInputFunc"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K15 ["useSendMessage"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K16 ["useThreadId"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K17 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
