PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADK                            R1 K1 ["0.00"]
        3 RETURN                           R1 1
        4 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K4 [math.floor]
        8 CALL                             R1 1 1
        9 MULK                             R3 R0 K5 [100]
       10 FASTCALL1                        MATH_ROUND R3 ; [+2]
       11 GETIMPORT                        R2 K7 [math.round]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K10 [string.format]
       16 LOADK                            R4 K11 ["%d:%02d"]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 CALL                             R3 3 -1
       20 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["GraphPayload"]
       10 GETTABLEKS                       R0 R1 K1 ["className"]
       12 JUMPIFEQKS                       R0 K2 ["ClipLayer"] ; [+3]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K0 ["GraphPayload"]
       19 GETTABLEKS                       R0 R1 K3 ["state"]
       21 JUMPIF                           R0 ; [+2]
       22 LOADNIL                          R1
       23 RETURN                           R1 1
       24 GETTABLEKS                       R1 R0 K4 ["length"]
       26 GETTABLEKS                       R2 R0 K5 ["timePosition"]
       28 JUMPIFEQKNIL                     R1 ; [+3]
       30 JUMPIFNOTEQKNIL                  R2 ; [+3]
       32 LOADNIL                          R3
       33 RETURN                           R3 1
       34 DUPTABLE                         R3 K6 [{"timePosition", "length"}]
       35 SETTABLEKS                       R2 R3 K5 ["timePosition"]
       37 SETTABLEKS                       R1 R3 K4 ["length"]
       39 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+22]
        2 LOADK                            R1 K0 ["%* / %*"]
        3 LOADK                            R3 K1 ["0.00"]
        4 JUMP                             ; [+6]
        5 GETIMPORT                        R3 K4 [string.format]
        7 LOADK                            R4 K5 ["%d:%02d"]
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 CALL                             R3 3 1
       11 LOADK                            R4 K1 ["0.00"]
       12 JUMP                             ; [+6]
       13 GETIMPORT                        R4 K4 [string.format]
       15 LOADK                            R5 K5 ["%d:%02d"]
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 CALL                             R4 3 1
       19 NAMECALL                         R1 R1 K3 ["format"]
       21 CALL                             R1 3 1
       22 MOVE                             R0 R1
       23 RETURN                           R0 1
       24 LOADK                            R1 K0 ["%* / %*"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K6 ["timePosition"]
       28 JUMPIFNOTEQKN                    R4 K7 [0] ; [+3]
       30 LOADK                            R3 K1 ["0.00"]
       31 JUMP                             ; [+17]
       32 FASTCALL1                        MATH_FLOOR R4 ; [+3]
       33 MOVE                             R6 R4
       34 GETIMPORT                        R5 K10 [math.floor]
       36 CALL                             R5 1 1
       37 MULK                             R7 R4 K11 [100]
       38 FASTCALL1                        MATH_ROUND R7 ; [+2]
       39 GETIMPORT                        R6 K13 [math.round]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [string.format]
       44 LOADK                            R8 K5 ["%d:%02d"]
       45 MOVE                             R9 R5
       46 MOVE                             R10 R6
       47 CALL                             R7 3 1
       48 MOVE                             R3 R7
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K14 ["length"]
       52 JUMPIFNOTEQKN                    R5 K7 [0] ; [+3]
       54 LOADK                            R4 K1 ["0.00"]
       55 JUMP                             ; [+17]
       56 FASTCALL1                        MATH_FLOOR R5 ; [+3]
       57 MOVE                             R7 R5
       58 GETIMPORT                        R6 K10 [math.floor]
       60 CALL                             R6 1 1
       61 MULK                             R8 R5 K11 [100]
       62 FASTCALL1                        MATH_ROUND R8 ; [+2]
       63 GETIMPORT                        R7 K13 [math.round]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K4 [string.format]
       68 LOADK                            R9 K5 ["%d:%02d"]
       69 MOVE                             R10 R6
       70 MOVE                             R11 R7
       71 CALL                             R8 3 1
       72 MOVE                             R4 R8
       73 NAMECALL                         R1 R1 K3 ["format"]
       75 CALL                             R1 3 1
       76 MOVE                             R0 R1
       77 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["GraphPayload"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R2
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K3 ["createElement"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R5 R6 K4 ["View"]
       33 DUPTABLE                         R6 K7 [{"tag", "LayoutOrder"}]
       34 LOADK                            R7 K8 ["padding-y-xsmall size-full-700 align-y-center"]
       35 SETTABLEKS                       R7 R6 K5 ["tag"]
       37 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       39 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       41 DUPTABLE                         R7 K10 [{"PreviewText"}]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R8 R9 K3 ["createElement"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R9 R10 K11 ["Text"]
       48 DUPTABLE                         R10 K12 [{"tag", "Text", "LayoutOrder"}]
       49 NEWTABLE                         R11 2 0
       51 LOADB                            R12 1
       52 SETTABLEKS                       R12 R11 K13 ["text-body-small text-align-x-left size-full-full"]
       54 GETTABLEKS                       R12 R0 K14 ["disabled"]
       56 SETTABLEKS                       R12 R11 K15 ["content-inverse-muted"]
       58 SETTABLEKS                       R11 R10 K5 ["tag"]
       60 SETTABLEKS                       R3 R10 K11 ["Text"]
       62 MOVE                             R11 R1
       63 CALL                             R11 0 1
       64 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K9 ["PreviewText"]
       69 CALL                             R4 3 -1
       70 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K11 [PROTO_0]
       34 DUPCLOSURE                       R6 K12 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 RETURN                           R6 1
