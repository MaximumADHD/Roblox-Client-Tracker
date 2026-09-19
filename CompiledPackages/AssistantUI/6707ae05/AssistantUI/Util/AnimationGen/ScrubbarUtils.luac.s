PROTO_0:
        0 LOADN                            R2 0
        1 GETUPVAL                         R5 0
        2 MUL                              R4 R0 R5
        3 FASTCALL1                        MATH_ROUND R4 ; [+2]
        4 GETIMPORT                        R3 K2 [math.round]
        6 CALL                             R3 1 1
        7 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        9 GETIMPORT                        R1 K4 [math.max]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["frameIndexToTime"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["timeToFrameIndex"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["maxDuration"]
        6 JUMPIFNOTLE                      R0 R6 ; [+4]
        8 GETTABLEKS                       R6 R5 K1 ["increment"]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADN                            R1 5
       14 RETURN                           R1 1

PROTO_4:
        0 MODK                             R2 R1 K0 [1]
        1 JUMPIFEQKN                       R2 K1 [0] ; [+7]
        3 GETIMPORT                        R2 K4 [string.format]
        5 LOADK                            R3 K5 ["%.1f"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1
        9 GETIMPORT                        R2 K4 [string.format]
       11 LOADK                            R3 K6 ["%d"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AnimationGenConstants"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["DEFAULT_GENERATION_FPS"]
       12 NEWTABLE                         R2 0 7
       14 DUPTABLE                         R3 K11 [{["maxDuration"] = 0.6, ["increment"] = 0.1}]
       15 DUPTABLE                         R4 K14 [{["maxDuration"] = 1, ["increment"] = 0.2}]
       16 DUPTABLE                         R5 K17 [{["maxDuration"] = 3, ["increment"] = 0.5}]
       17 DUPTABLE                         R6 K19 [{["maxDuration"] = 6, ["increment"] = 1}]
       18 DUPTABLE                         R7 K22 [{["maxDuration"] = 12, ["increment"] = 2}]
       19 DUPTABLE                         R8 K25 [{["maxDuration"] = 15, ["increment"] = 2.5}]
       20 DUPTABLE                         R9 K28 [{["maxDuration"] = 30, ["increment"] = 5}]
       21 SETLIST                          R2 R3 7 [1]
       23 NEWTABLE                         R3 8 0
       25 DUPCLOSURE                       R4 K29 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K30 ["timeToFrameIndex"]
       29 DUPCLOSURE                       R4 K31 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K32 ["frameIndexToTime"]
       33 DUPCLOSURE                       R4 K33 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R4 R3 K34 ["snapTimeToFrame"]
       37 DUPCLOSURE                       R4 K35 [PROTO_3]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K36 ["getTickInterval"]
       41 DUPCLOSURE                       R4 K37 [PROTO_4]
       42 SETTABLEKS                       R4 R3 K38 ["formatTickLabel"]
       44 RETURN                           R3 1
