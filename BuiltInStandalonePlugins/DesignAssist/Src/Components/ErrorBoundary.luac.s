PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["errorMessage"] = ""}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = True, ["errorMessage"]}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K5 [tostring]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K2 ["errorMessage"]
        8 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R2 ; [+12]
        6 GETTABLEKS                       R4 R2 K2 ["componentStack"]
        8 JUMPIFNOT                        R4 ; [+9]
        9 MOVE                             R4 R3
       10 LOADK                            R5 K3 ["\n\nComponent stack:"]
       11 GETTABLEKS                       R7 R2 K2 ["componentStack"]
       13 FASTCALL1                        TOSTRING R7 ; [+2]
       14 GETIMPORT                        R6 K1 [tostring]
       16 CALL                             R6 1 1
       17 CONCAT                           R3 R4 R6
       18 GETIMPORT                        R4 K5 [warn]
       20 LOADK                            R5 K6 ["[DesignAssist] Render error:"]
       21 MOVE                             R6 R3
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R4 R0 K7 ["props"]
       25 GETTABLEKS                       R4 R4 K8 ["onError"]
       27 JUMPIFNOT                        R4 ; [+6]
       28 GETTABLEKS                       R4 R0 K7 ["props"]
       30 GETTABLEKS                       R4 R4 K8 ["onError"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["hasError"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETTABLEKS                       R1 R0 K2 ["props"]
        7 GETTABLEKS                       R1 R1 K3 ["fallbackElement"]
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["createElement"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["Fragment"]
       16 LOADNIL                          R3
       17 GETTABLEKS                       R4 R0 K2 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["children"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["hasError"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETTABLEKS                       R2 R1 K2 ["renderVersion"]
        7 GETTABLEKS                       R3 R0 K3 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["renderVersion"]
       11 JUMPIFEQ                         R2 R3 ; [+5]
       13 DUPTABLE                         R4 K7 [{["hasError"] = False, ["errorMessage"] = ""}]
       14 NAMECALL                         R2 R0 K8 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Executor"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["resolvePackage"]
       18 LOADK                            R3 K10 ["React"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K11 ["Component"]
       22 LOADK                            R5 K12 ["ErrorBoundary"]
       23 NAMECALL                         R3 R3 K13 ["extend"]
       25 CALL                             R3 2 1
       26 DUPCLOSURE                       R4 K14 [PROTO_0]
       27 SETTABLEKS                       R4 R3 K15 ["init"]
       29 DUPCLOSURE                       R4 K16 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K17 ["getDerivedStateFromError"]
       32 DUPCLOSURE                       R4 K18 [PROTO_2]
       33 SETTABLEKS                       R4 R3 K19 ["componentDidCatch"]
       35 DUPCLOSURE                       R4 K20 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K21 ["render"]
       39 DUPCLOSURE                       R4 K22 [PROTO_4]
       40 SETTABLEKS                       R4 R3 K23 ["componentDidUpdate"]
       42 RETURN                           R3 1
