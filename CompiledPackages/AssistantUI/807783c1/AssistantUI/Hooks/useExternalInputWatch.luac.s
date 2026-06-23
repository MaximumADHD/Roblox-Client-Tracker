PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["Generation"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+16]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["External"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+10]
       18 GETUPVAL                         R1 3
       19 DUPTABLE                         R2 K5 [{"type", "error"}]
       20 LOADK                            R3 K4 ["error"]
       21 SETTABLEKS                       R3 R2 K3 ["type"]
       23 LOADK                            R3 K6 ["input_disabled"]
       24 SETTABLEKS                       R3 R2 K4 ["error"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["processEvent"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["reasonDisabled"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETTABLEKS                       R4 R3 K3 ["reasonDisabled"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["useRef"]
       21 LOADNIL                          R6
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R8 0 2
       33 MOVE                             R9 R4
       34 MOVE                             R10 R1
       35 SETLIST                          R8 R9 2 [1]
       37 CALL                             R6 2 0
       38 RETURN                           R0 0

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
       25 GETTABLEKS                       R4 R0 K11 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K12 ["useLLMProcessEvent"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K13 ["InputDisabledReasons"]
       32 DUPCLOSURE                       R5 K14 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 RETURN                           R5 1
