PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 GETUPVAL                         R9 1
        5 NAMECALL                         R4 R4 K0 ["GetTextSize"]
        7 CALL                             R4 5 1
        8 GETTABLEKS                       R3 R4 K1 ["X"]
       10 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 ADDK                             R2 R3 K0 [1]
        4 SETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_2:
        0 ORK                              R2 R1 K0 [":"]
        1 NEWTABLE                         R3 0 0
        3 GETIMPORT                        R4 K3 [string.format]
        5 LOADK                            R5 K4 ["([^%s]+)"]
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 MOVE                             R7 R4
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          VAL R3
       11 NAMECALL                         R5 R0 K5 ["gsub"]
       13 CALL                             R5 3 0
       14 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["TIMELINE_UNITS"]
        3 GETTABLEKS                       R3 R4 K1 ["SecondsDecimal"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+14]
        7 FASTCALL1                        TONUMBER R0 ; [+3]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K3 [tonumber]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K4 ["TICK_FREQUENCY"]
       16 MUL                              R4 R3 R5
       17 RETURN                           R4 1
       18 LOADNIL                          R4
       19 RETURN                           R4 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["TIMELINE_UNITS"]
       23 GETTABLEKS                       R3 R4 K5 ["Frames"]
       25 JUMPIFNOTEQ                      R2 R3 ; [+15]
       27 FASTCALL1                        TONUMBER R0 ; [+3]
       28 MOVE                             R4 R0
       29 GETIMPORT                        R3 K3 [tonumber]
       31 CALL                             R3 1 1
       32 JUMPIFNOT                        R3 ; [+6]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K4 ["TICK_FREQUENCY"]
       36 MUL                              R5 R3 R6
       37 DIV                              R4 R5 R1
       38 RETURN                           R4 1
       39 LOADNIL                          R4
       40 RETURN                           R4 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K6 ["split"]
       44 MOVE                             R4 R0
       45 LOADK                            R5 K7 [":"]
       46 CALL                             R3 2 1
       47 NEWTABLE                         R4 0 0
       49 GETIMPORT                        R5 K9 [ipairs]
       51 MOVE                             R6 R3
       52 CALL                             R5 1 3
       53 FORGPREP_INEXT                   R5
       54 FASTCALL1                        TONUMBER R9 ; [+3]
       55 MOVE                             R11 R9
       56 GETIMPORT                        R10 K3 [tonumber]
       58 CALL                             R10 1 1
       59 JUMPIFNOT                        R10 ; [+8]
       60 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       62 MOVE                             R12 R4
       63 MOVE                             R13 R10
       64 GETIMPORT                        R11 K12 [table.insert]
       66 CALL                             R11 2 0
       67 JUMP                             ; [+2]
       68 LOADNIL                          R11
       69 RETURN                           R11 1
       70 FORGLOOP                         R5 2 [inext] ; [-17]
       72 LENGTH                           R5 R4
       73 JUMPIFNOTEQKN                    R5 K13 [1] ; [+8]
       75 GETTABLEN                        R7 R4 1
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R8 R9 K4 ["TICK_FREQUENCY"]
       79 MUL                              R6 R7 R8
       80 DIV                              R5 R6 R1
       81 RETURN                           R5 1
       82 LENGTH                           R5 R4
       83 LOADN                            R6 1
       84 JUMPIFNOTLT                      R6 R5 ; [+10]
       86 GETTABLEN                        R7 R4 1
       87 GETTABLEN                        R9 R4 2
       88 DIV                              R8 R9 R1
       89 ADD                              R6 R7 R8
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R7 R8 K4 ["TICK_FREQUENCY"]
       93 MUL                              R5 R6 R7
       94 RETURN                           R5 1
       95 LOADNIL                          R5
       96 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["TIMELINE_UNITS"]
        3 GETTABLEKS                       R3 R4 K1 ["Frames"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+15]
        7 MUL                              R6 R0 R1
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K2 ["TICK_FREQUENCY"]
       11 DIV                              R5 R6 R7
       12 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       13 GETIMPORT                        R4 K5 [math.floor]
       15 CALL                             R4 1 1
       16 FASTCALL1                        TOSTRING R4 ; [+2]
       17 GETIMPORT                        R3 K7 [tostring]
       19 CALL                             R3 1 1
       20 RETURN                           R3 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["TIMELINE_UNITS"]
       24 GETTABLEKS                       R3 R4 K8 ["Seconds"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+44]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K9 ["getNearestTick"]
       31 MUL                              R5 R0 R1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K2 ["TICK_FREQUENCY"]
       35 DIV                              R4 R5 R6
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKN                    R1 K10 [0] ; [+13]
       39 LOADK                            R6 K11 ["0:"]
       40 GETIMPORT                        R7 K14 [string.format]
       42 LOADK                            R8 K15 ["%02d"]
       43 LOADN                            R9 0
       44 CALL                             R7 2 1
       45 CONCAT                           R5 R6 R7
       46 FASTCALL1                        TOSTRING R5 ; [+2]
       47 GETIMPORT                        R4 K7 [tostring]
       49 CALL                             R4 1 1
       50 RETURN                           R4 1
       51 DIV                              R5 R3 R1
       52 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       53 GETIMPORT                        R4 K5 [math.floor]
       55 CALL                             R4 1 1
       56 MUL                              R6 R4 R1
       57 SUB                              R5 R3 R6
       58 MOVE                             R8 R4
       59 LOADK                            R9 K16 [":"]
       60 GETIMPORT                        R10 K14 [string.format]
       62 LOADK                            R11 K15 ["%02d"]
       63 MOVE                             R12 R5
       64 CALL                             R10 2 1
       65 CONCAT                           R7 R8 R10
       66 FASTCALL1                        TOSTRING R7 ; [+2]
       67 GETIMPORT                        R6 K7 [tostring]
       69 CALL                             R6 1 1
       70 RETURN                           R6 1
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K0 ["TIMELINE_UNITS"]
       74 GETTABLEKS                       R3 R4 K17 ["SecondsDecimal"]
       76 JUMPIFNOTEQ                      R2 R3 ; [+15]
       78 GETUPVAL                         R5 2
       79 GETTABLEKS                       R4 R5 K18 ["round"]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R6 R7 K2 ["TICK_FREQUENCY"]
       84 DIV                              R5 R0 R6
       85 LOADN                            R6 2
       86 CALL                             R4 2 -1
       87 FASTCALL                         TOSTRING ; [+2]
       88 GETIMPORT                        R3 K7 [tostring]
       90 CALL                             R3 -1 1
       91 RETURN                           R3 1
       92 LOADK                            R3 K19 [""]
       93 RETURN                           R3 1

PROTO_5:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+7]
        2 LOADK                            R3 K1 ["0s"]
        3 FASTCALL1                        TOSTRING R3 ; [+2]
        4 GETIMPORT                        R2 K3 [tostring]
        6 CALL                             R2 1 1
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["round"]
       11 DIV                              R3 R0 R1
       12 LOADN                            R4 2
       13 CALL                             R2 2 1
       14 MOVE                             R5 R2
       15 LOADK                            R6 K5 ["s"]
       16 CONCAT                           R4 R5 R6
       17 FASTCALL1                        TOSTRING R4 ; [+2]
       18 GETIMPORT                        R3 K3 [tostring]
       20 CALL                             R3 1 1
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R2 K12 ["Util"]
       22 GETTABLEKS                       R3 R4 K13 ["Math"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R7 R1 K14 ["Src"]
       28 GETTABLEKS                       R6 R7 K12 ["Util"]
       30 GETTABLEKS                       R5 R6 K15 ["Constants"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R8 R1 K14 ["Src"]
       37 GETTABLEKS                       R7 R8 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K16 ["KeyframeUtils"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 8 0
       44 GETIMPORT                        R7 K19 [Vector2.new]
       46 LOADK                            R8 K20 [1000000]
       47 LOADN                            R9 50
       48 CALL                             R7 2 1
       49 DUPCLOSURE                       R8 K21 [PROTO_0]
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R7
       52 SETTABLEKS                       R8 R6 K22 ["getTextWidth"]
       54 DUPCLOSURE                       R8 K23 [PROTO_2]
       55 SETTABLEKS                       R8 R6 K24 ["split"]
       57 DUPCLOSURE                       R8 K25 [PROTO_3]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R8 R6 K26 ["parseTime"]
       62 DUPCLOSURE                       R8 K27 [PROTO_4]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R8 R6 K28 ["formatTime"]
       68 DUPCLOSURE                       R8 K29 [PROTO_5]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R8 R6 K30 ["formatTimeInSeconds"]
       72 RETURN                           R6 1
