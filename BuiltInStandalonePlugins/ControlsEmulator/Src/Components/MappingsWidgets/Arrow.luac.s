PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["arrowDestination"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["arrowBendPoint"]
        6 JUMPIFNOT                        R1 ; [+41]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["arrowDestination"]
       10 GETTABLEKS                       R4 R4 K2 ["X"]
       12 GETTABLEKS                       R4 R4 K3 ["Scale"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["arrowStart"]
       17 GETTABLEKS                       R5 R5 K2 ["X"]
       19 GETTABLEKS                       R5 R5 K3 ["Scale"]
       21 SUB                              R3 R4 R5
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K1 ["arrowBendPoint"]
       25 MUL                              R2 R3 R4
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K4 ["arrowStart"]
       29 GETTABLEKS                       R3 R3 K2 ["X"]
       31 GETTABLEKS                       R3 R3 K3 ["Scale"]
       33 ADD                              R1 R2 R3
       34 GETIMPORT                        R2 K7 [UDim2.new]
       36 MOVE                             R3 R1
       37 LOADN                            R4 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K4 ["arrowStart"]
       41 GETTABLEKS                       R5 R5 K8 ["Y"]
       43 GETTABLEKS                       R5 R5 K3 ["Scale"]
       45 LOADN                            R6 0
       46 CALL                             R2 4 1
       47 MOVE                             R0 R2
       48 NEWTABLE                         R1 0 3
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K4 ["arrowStart"]
       53 MOVE                             R3 R0
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K0 ["arrowDestination"]
       57 SETLIST                          R1 R2 3 [1]
       59 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+47]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+43]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 NAMECALL                         R2 R2 K1 ["GetControlPoints"]
       11 CALL                             R2 1 1
       12 LENGTH                           R1 R2
       13 LOADN                            R2 0
       14 JUMPIFLT                         R2 R1 ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 GETIMPORT                        R1 K3 [ipairs]
       20 GETUPVAL                         R2 2
       21 CALL                             R1 1 3
       22 FORGPREP_INEXT                   R1
       23 JUMPIFNOT                        R0 ; [+12]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K0 ["current"]
       27 MOVE                             R8 R4
       28 GETIMPORT                        R9 K6 [Path2DControlPoint.new]
       30 MOVE                             R10 R5
       31 CALL                             R9 1 -1
       32 NAMECALL                         R6 R6 K7 ["UpdateControlPoint"]
       34 CALL                             R6 -1 0
       35 JUMP                             ; [+11]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K0 ["current"]
       39 MOVE                             R8 R4
       40 GETIMPORT                        R9 K6 [Path2DControlPoint.new]
       42 MOVE                             R10 R5
       43 CALL                             R9 1 -1
       44 NAMECALL                         R6 R6 K8 ["InsertControlPoint"]
       46 CALL                             R6 -1 0
       47 FORGLOOP                         R1 2 [inext] ; [-25]
       49 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 2
       18 MOVE                             R7 R1
       19 MOVE                             R8 R3
       20 SETLIST                          R6 R7 2 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R7 0 3
       30 GETTABLEKS                       R8 R0 K4 ["arrowStart"]
       32 GETTABLEKS                       R9 R0 K5 ["arrowDestination"]
       34 GETTABLEKS                       R10 R0 K6 ["arrowBendPoint"]
       36 SETLIST                          R7 R8 3 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R8 0 2
       48 MOVE                             R9 R5
       49 MOVE                             R10 R2
       50 SETLIST                          R8 R9 2 [1]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K8 ["createElement"]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K9 ["Fragment"]
       59 LOADNIL                          R8
       60 DUPTABLE                         R9 K12 [{"Circle", "Arrow"}]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K8 ["createElement"]
       64 LOADK                            R11 K13 ["Frame"]
       65 NEWTABLE                         R12 2 0
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K14 ["Tag"]
       70 LOADK                            R14 K15 ["Component-Arrow-Circle X-Circle data-testid=ArrowCircle"]
       71 SETTABLE                         R14 R12 R13
       72 GETTABLEKS                       R13 R0 K5 ["arrowDestination"]
       74 SETTABLEKS                       R13 R12 K16 ["Position"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K10 ["Circle"]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K8 ["createElement"]
       82 LOADK                            R11 K17 ["Path2D"]
       83 NEWTABLE                         R12 4 0
       85 GETUPVAL                         R13 0
       86 GETTABLEKS                       R13 R13 K14 ["Tag"]
       88 LOADK                            R14 K18 ["Component-Arrow data-testid=ArrowLine"]
       89 SETTABLE                         R14 R12 R13
       90 LOADN                            R13 1
       91 SETTABLEKS                       R13 R12 K19 ["Thickness"]
       93 SETTABLEKS                       R4 R12 K20 ["ref"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K11 ["Arrow"]
       98 CALL                             R6 3 -1
       99 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 GETTABLEKS                       R3 R1 K9 ["memo"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1
