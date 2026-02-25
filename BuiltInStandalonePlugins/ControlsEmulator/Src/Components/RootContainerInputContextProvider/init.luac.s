PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["createElement"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["Provider"]
       16 DUPTABLE                         R6 K5 [{"value"}]
       17 GETTABLEKS                       R8 R1 K6 ["current"]
       19 JUMPIFNOT                        R8 ; [+20]
       20 DUPTABLE                         R7 K10 [{"InputChanged", "InputEnded", "InputBegan"}]
       21 GETTABLEKS                       R9 R1 K6 ["current"]
       23 GETTABLEKS                       R8 R9 K7 ["InputChanged"]
       25 SETTABLEKS                       R8 R7 K7 ["InputChanged"]
       27 GETTABLEKS                       R9 R1 K6 ["current"]
       29 GETTABLEKS                       R8 R9 K8 ["InputEnded"]
       31 SETTABLEKS                       R8 R7 K8 ["InputEnded"]
       33 GETTABLEKS                       R9 R1 K6 ["current"]
       35 GETTABLEKS                       R8 R9 K9 ["InputBegan"]
       37 SETTABLEKS                       R8 R7 K9 ["InputBegan"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R7 R8 K11 ["DEFAULT_ROOT_CONTAINER_INPUT_CONTEXT_STATE"]
       43 SETTABLEKS                       R7 R6 K4 ["value"]
       45 DUPTABLE                         R7 K13 [{"ListenerComponent"}]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K2 ["createElement"]
       49 LOADK                            R9 K14 ["Frame"]
       50 NEWTABLE                         R10 2 0
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R11 R12 K15 ["Tag"]
       55 LOADK                            R12 K16 ["Component-RootContainerInputContextProvider X-Fill"]
       56 SETTABLE                         R12 R10 R11
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R11 R10 K17 ["ref"]
       62 GETTABLEKS                       R11 R0 K18 ["children"]
       64 CALL                             R8 3 1
       65 SETTABLEKS                       R8 R7 K12 ["ListenerComponent"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["RootContainerInputContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETGLOBAL                        R4 K13 ["RootContainerInputContextProvider"]
       38 GETTABLEKS                       R4 R1 K14 ["memo"]
       40 GETGLOBAL                        R5 K13 ["RootContainerInputContextProvider"]
       42 CALL                             R4 1 -1
       43 RETURN                           R4 -1
