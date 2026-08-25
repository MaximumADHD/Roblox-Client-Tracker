PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selection"]
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onPaste"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R7 0 2
       22 MOVE                             R8 R2
       23 GETTABLEKS                       R9 R1 K2 ["onPaste"]
       25 SETLIST                          R7 R8 2 [1]
       27 CALL                             R5 2 1
       28 GETTABLEKS                       R7 R1 K3 ["selection"]
       30 GETTABLEKS                       R7 R7 K4 ["current"]
       32 JUMPIFNOTEQKNIL                  R7 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 GETUPVAL                         R7 1
       37 LOADK                            R8 K5 ["Copy"]
       38 DUPTABLE                         R9 K9 [{"isEnabled", "onActivated", "scopeRef"}]
       39 SETTABLEKS                       R6 R9 K6 ["isEnabled"]
       41 SETTABLEKS                       R4 R9 K7 ["onActivated"]
       43 SETTABLEKS                       R0 R9 K8 ["scopeRef"]
       45 CALL                             R7 2 0
       46 GETUPVAL                         R7 1
       47 LOADK                            R8 K10 ["Paste"]
       48 DUPTABLE                         R9 K9 [{"isEnabled", "onActivated", "scopeRef"}]
       49 MOVE                             R10 R6
       50 JUMPIFNOT                        R10 ; [+4]
       51 JUMPIFNOTEQKNIL                  R2 ; [+2]
       53 LOADB                            R10 0 +1
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K6 ["isEnabled"]
       57 SETTABLEKS                       R5 R9 K7 ["onActivated"]
       59 SETTABLEKS                       R0 R9 K8 ["scopeRef"]
       61 CALL                             R7 2 0
       62 GETUPVAL                         R7 1
       63 LOADK                            R8 K11 ["Delete"]
       64 DUPTABLE                         R9 K9 [{"isEnabled", "onActivated", "scopeRef"}]
       65 MOVE                             R10 R6
       66 JUMPIFNOT                        R10 ; [+6]
       67 GETTABLEKS                       R11 R1 K12 ["canDelete"]
       69 JUMPIFNOTEQKB                    R11 FALSE ; [+2]
       71 LOADB                            R10 0 +1
       72 LOADB                            R10 1
       73 SETTABLEKS                       R10 R9 K6 ["isEnabled"]
       75 GETTABLEKS                       R10 R1 K13 ["onDelete"]
       77 SETTABLEKS                       R10 R9 K7 ["onActivated"]
       79 SETTABLEKS                       R0 R9 K8 ["scopeRef"]
       81 CALL                             R7 2 0
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K9 ["useAction"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
