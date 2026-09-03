PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETTABLEKS                       R1 R0 K1 ["ViewportSize"]
        7 JUMP                             ; [+5]
        8 GETIMPORT                        R1 K4 [Vector2.new]
       10 LOADN                            R2 0
       11 LOADN                            R3 0
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R2 R2 K5 ["Get"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 LENGTH                           R4 R3
       21 JUMPIFEQKN                       R4 K6 [0] ; [+3]
       23 JUMPIFNOTEQKNIL                  R0 ; [+8]
       25 DIVK                             R4 R1 K7 [2]
       26 DUPTABLE                         R5 K10 [{"min", "max"}]
       27 SETTABLEKS                       R4 R5 K8 ["min"]
       29 SETTABLEKS                       R4 R5 K9 ["max"]
       31 RETURN                           R5 1
       32 GETIMPORT                        R4 K4 [Vector2.new]
       34 LOADK                            R5 K11 [∞]
       35 LOADK                            R6 K11 [∞]
       36 CALL                             R4 2 1
       37 GETIMPORT                        R5 K4 [Vector2.new]
       39 LOADK                            R6 K12 [-∞]
       40 LOADK                            R7 K12 [-∞]
       41 CALL                             R5 2 1
       42 MOVE                             R6 R3
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 MOVE                             R13 R10
       47 NAMECALL                         R11 R0 K13 ["WorldToViewportPoint"]
       49 CALL                             R11 2 1
       50 GETIMPORT                        R12 K4 [Vector2.new]
       52 GETTABLEKS                       R14 R4 K14 ["X"]
       54 GETTABLEKS                       R15 R11 K14 ["X"]
       56 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       58 GETIMPORT                        R13 K16 [math.min]
       60 CALL                             R13 2 1
       61 GETTABLEKS                       R15 R4 K17 ["Y"]
       63 GETTABLEKS                       R16 R11 K17 ["Y"]
       65 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
       67 GETIMPORT                        R14 K16 [math.min]
       69 CALL                             R14 2 1
       70 CALL                             R12 2 1
       71 MOVE                             R4 R12
       72 GETIMPORT                        R12 K4 [Vector2.new]
       74 GETTABLEKS                       R14 R5 K14 ["X"]
       76 GETTABLEKS                       R15 R11 K14 ["X"]
       78 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       80 GETIMPORT                        R13 K18 [math.max]
       82 CALL                             R13 2 1
       83 GETTABLEKS                       R15 R5 K17 ["Y"]
       85 GETTABLEKS                       R16 R11 K17 ["Y"]
       87 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
       89 GETIMPORT                        R14 K18 [math.max]
       91 CALL                             R14 2 1
       92 CALL                             R12 2 1
       93 MOVE                             R5 R12
       94 FORGLOOP                         R6 2 ; [-49]
       96 DUPTABLE                         R6 K10 [{"min", "max"}]
       97 SETTABLEKS                       R4 R6 K8 ["min"]
       99 SETTABLEKS                       R5 R6 K9 ["max"]
      101 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["Get"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 1
        6 LENGTH                           R0 R1
        7 JUMPIFNOTEQKN                    R0 K1 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["SelectionChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K2 ["get"]
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+11]
       20 LOADK                            R4 K3 ["ViewportSize"]
       21 NAMECALL                         R2 R1 K4 ["GetPropertyChangedSignal"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R2 R2 K1 ["Connect"]
       29 CALL                             R2 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 NEWCLOSURE                       R3 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 RETURN                           R3 1

PROTO_5:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R1 3
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U0
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["CurrentCamera"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K15 ["getSelectionWorldCorners"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K16 [PROTO_5]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 RETURN                           R5 1
