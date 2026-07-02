PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 DUPTABLE                         R2 K4 [{["viewAreaCoveragePercentThreshold"] = 0}]
       11 MOVE                             R0 R2
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K5 ["_hasInteracted"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["new"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K7 ["_timers"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K8 ["_viewableIndices"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K6 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K9 ["_viewableItems"]
       31 SETTABLEKS                       R0 R1 K10 ["_config"]
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_timers"]
        2 DUPCLOSURE                       R3 K1 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R1 R1 K2 ["forEach"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R6 R0 K0 ["_config"]
        2 GETTABLEKS                       R6 R6 K1 ["itemVisiblePercentThreshold"]
        4 GETTABLEKS                       R7 R0 K0 ["_config"]
        6 GETTABLEKS                       R7 R7 K2 ["viewAreaCoveragePercentThreshold"]
        8 JUMPIFNOTEQKNIL                  R7 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 JUMPIFNOT                        R8 ; [+2]
       13 MOVE                             R9 R7
       14 JUMP                             ; [+1]
       15 MOVE                             R9 R6
       16 GETUPVAL                         R10 0
       17 LOADB                            R11 0
       18 JUMPIFEQKNIL                     R9 ; [+13]
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R12 0 +1
       23 LOADB                            R12 1
       24 JUMPIFNOTEQKNIL                  R7 ; [+2]
       26 LOADB                            R13 0 +1
       27 LOADB                            R13 1
       28 JUMPIFNOTEQ                      R12 R13 ; [+2]
       30 LOADB                            R11 0 +1
       31 LOADB                            R11 1
       32 LOADK                            R12 K3 ["Must set exactly one of itemVisiblePercentThreshold or viewAreaCoveragePercentThreshold"]
       33 CALL                             R10 2 0
       34 NEWTABLE                         R10 0 0
       36 JUMPIFNOTEQKN                    R1 K4 [0] ; [+2]
       38 RETURN                           R10 1
       39 LOADN                            R11 0
       40 LOADNIL                          R12
       41 LOADNIL                          R13
       42 JUMPIFNOT                        R5 ; [+2]
       43 MOVE                             R14 R5
       44 JUMP                             ; [+3]
       45 DUPTABLE                         R14 K8 [{["first"] = 1, ["last"]}]
       46 SETTABLEKS                       R1 R14 K7 ["last"]
       48 GETTABLEKS                       R12 R14 K5 ["first"]
       50 GETTABLEKS                       R13 R14 K7 ["last"]
       52 JUMPIFNOTLT                      R1 R13 ; [+24]
       54 GETUPVAL                         R14 1
       55 GETTABLEKS                       R14 R14 K9 ["warn"]
       57 LOADK                            R16 K10 ["Invalid render range computing viewability { renderRange = "]
       58 FASTCALL1                        TOSTRING R5 ; [+3]
       59 MOVE                             R22 R5
       60 GETIMPORT                        R21 K12 [tostring]
       62 CALL                             R21 1 1
       63 MOVE                             R17 R21
       64 LOADK                            R18 K13 [", itemCount = "]
       65 FASTCALL1                        TOSTRING R1 ; [+3]
       66 MOVE                             R22 R1
       67 GETIMPORT                        R21 K12 [tostring]
       69 CALL                             R21 1 1
       70 MOVE                             R19 R21
       71 LOADK                            R20 K14 [" }"]
       72 CONCAT                           R15 R16 R20
       73 CALL                             R14 1 0
       74 NEWTABLE                         R14 0 0
       76 RETURN                           R14 1
       77 MOVE                             R14 R12
       78 JUMPIFNOTLE                      R14 R13 ; [+43]
       80 MOVE                             R15 R14
       81 MOVE                             R16 R4
       82 MOVE                             R17 R15
       83 CALL                             R16 1 1
       84 JUMPIF                           R16 ; [+2]
       85 ADDK                             R14 R14 K6 [1]
       86 JUMP                             ; [+34]
       87 GETTABLEKS                       R18 R16 K15 ["offset"]
       89 SUB                              R17 R18 R2
       90 GETTABLEKS                       R19 R16 K16 ["length"]
       92 ADD                              R18 R17 R19
       93 JUMPIFNOTLT                      R17 R3 ; [+23]
       95 LOADN                            R19 0
       96 JUMPIFNOTLT                      R19 R18 ; [+20]
       98 MOVE                             R11 R15
       99 GETUPVAL                         R19 2
      100 MOVE                             R20 R8
      101 MOVE                             R21 R9
      102 MOVE                             R22 R17
      103 MOVE                             R23 R18
      104 MOVE                             R24 R3
      105 GETTABLEKS                       R25 R16 K16 ["length"]
      107 CALL                             R19 6 1
      108 JUMPIFNOT                        R19 ; [+11]
      109 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      111 MOVE                             R20 R10
      112 MOVE                             R21 R15
      113 GETIMPORT                        R19 K19 [table.insert]
      115 CALL                             R19 2 0
      116 JUMP                             ; [+3]
      117 LOADN                            R19 1
      118 JUMPIFLE                         R19 R11 ; [+3]
      120 ADDK                             R14 R14 K6 [1]
      121 JUMPBACK                         ; [-44]
      122 RETURN                           R10 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFEQ                         R0 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_timers"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["delete"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 NAMECALL                         R0 R0 K2 ["_onUpdateSync"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R8 R0 K0 ["_config"]
        2 GETTABLEKS                       R8 R8 K1 ["waitForInteraction"]
        4 JUMPIFNOT                        R8 ; [+3]
        5 GETTABLEKS                       R8 R0 K2 ["_hasInteracted"]
        7 JUMPIFNOT                        R8 ; [+6]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+5]
       10 MOVE                             R8 R4
       11 LOADN                            R9 1
       12 CALL                             R8 1 1
       13 JUMPIF                           R8 ; [+1]
       14 RETURN                           R0 0
       15 NEWTABLE                         R8 0 0
       17 JUMPIFNOT                        R1 ; [+9]
       18 MOVE                             R11 R1
       19 MOVE                             R12 R2
       20 MOVE                             R13 R3
       21 MOVE                             R14 R4
       22 MOVE                             R15 R7
       23 NAMECALL                         R9 R0 K4 ["computeViewableItems"]
       25 CALL                             R9 6 1
       26 MOVE                             R8 R9
       27 GETTABLEKS                       R10 R0 K5 ["_viewableIndices"]
       29 LENGTH                           R9 R10
       30 LENGTH                           R10 R8
       31 JUMPIFNOTEQ                      R9 R10 ; [+12]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K6 ["every"]
       36 GETTABLEKS                       R10 R0 K5 ["_viewableIndices"]
       38 NEWCLOSURE                       R11 P0
       39 CAPTURE                          REF R8
       40 CALL                             R9 2 1
       41 JUMPIFNOT                        R9 ; [+2]
       42 CLOSEUPVALS                      R8
       43 RETURN                           R0 0
       44 SETTABLEKS                       R8 R0 K5 ["_viewableIndices"]
       46 GETTABLEKS                       R9 R0 K0 ["_config"]
       48 GETTABLEKS                       R9 R9 K7 ["minimumViewTime"]
       50 JUMPIFNOT                        R9 ; [+22]
       51 LOADNIL                          R9
       52 GETUPVAL                         R10 1
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          REF R9
       56 CAPTURE                          REF R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 GETTABLEKS                       R12 R0 K0 ["_config"]
       61 GETTABLEKS                       R12 R12 K7 ["minimumViewTime"]
       63 CALL                             R10 2 1
       64 MOVE                             R9 R10
       65 GETTABLEKS                       R10 R0 K8 ["_timers"]
       67 MOVE                             R12 R9
       68 NAMECALL                         R10 R10 K9 ["add"]
       70 CALL                             R10 2 0
       71 CLOSEUPVALS                      R9
       72 JUMP                             ; [+6]
       73 MOVE                             R11 R8
       74 MOVE                             R12 R6
       75 MOVE                             R13 R5
       76 NAMECALL                         R9 R0 K10 ["_onUpdateSync"]
       78 CALL                             R9 4 0
       79 CLOSEUPVALS                      R8
       80 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_viewableIndices"]
        4 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_hasInteracted"]
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["includes"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["_viewableIndices"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 1
        4 NEWTABLE                         R2 0 2
        6 GETTABLEKS                       R3 R1 K0 ["key"]
        8 MOVE                             R4 R1
        9 SETLIST                          R2 R3 2 [1]
       11 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["filter"]
        3 MOVE                             R5 R1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CALL                             R4 2 1
        8 MOVE                             R1 R4
        9 GETTABLEKS                       R4 R0 K1 ["_viewableItems"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["new"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K3 ["map"]
       17 MOVE                             R7 R1
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R3
       20 CALL                             R6 2 -1
       21 CALL                             R5 -1 1
       22 NEWTABLE                         R6 0 0
       24 GETIMPORT                        R7 K5 [ipairs]
       26 NAMECALL                         R8 R5 K6 ["keys"]
       28 CALL                             R8 1 -1
       29 CALL                             R7 -1 3
       30 FORGPREP_INEXT                   R7
       31 MOVE                             R14 R11
       32 NAMECALL                         R12 R4 K7 ["has"]
       34 CALL                             R12 2 1
       35 JUMPIF                           R12 ; [+9]
       36 MOVE                             R13 R6
       37 MOVE                             R16 R11
       38 NAMECALL                         R14 R5 K8 ["get"]
       40 CALL                             R14 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R12 K11 [table.insert]
       44 CALL                             R12 -1 0
       45 FORGLOOP                         R7 2 [inext] ; [-15]
       47 GETIMPORT                        R7 K5 [ipairs]
       49 NAMECALL                         R8 R4 K6 ["keys"]
       51 CALL                             R8 1 -1
       52 CALL                             R7 -1 3
       53 FORGPREP_INEXT                   R7
       54 MOVE                             R14 R11
       55 NAMECALL                         R12 R5 K7 ["has"]
       57 CALL                             R12 2 1
       58 JUMPIF                           R12 ; [+17]
       59 MOVE                             R14 R11
       60 NAMECALL                         R12 R4 K8 ["get"]
       62 CALL                             R12 2 1
       63 MOVE                             R14 R6
       64 GETUPVAL                         R15 2
       65 GETTABLEKS                       R15 R15 K12 ["assign"]
       67 NEWTABLE                         R16 0 0
       69 MOVE                             R17 R12
       70 DUPTABLE                         R18 K15 [{["isViewable"] = False}]
       71 CALL                             R15 3 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R13 K11 [table.insert]
       75 CALL                             R13 -1 0
       76 FORGLOOP                         R7 2 [inext] ; [-23]
       78 LENGTH                           R7 R6
       79 LOADN                            R8 0
       80 JUMPIFNOTLT                      R8 R7 ; [+21]
       82 SETTABLEKS                       R5 R0 K1 ["_viewableItems"]
       84 MOVE                             R7 R2
       85 DUPTABLE                         R8 K19 [{"viewableItems", "changed", "viewabilityConfig"}]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K20 ["from"]
       89 NAMECALL                         R10 R5 K21 ["values"]
       91 CALL                             R10 1 -1
       92 CALL                             R9 -1 1
       93 SETTABLEKS                       R9 R8 K16 ["viewableItems"]
       95 SETTABLEKS                       R6 R8 K17 ["changed"]
       97 GETTABLEKS                       R9 R0 K22 ["_config"]
       99 SETTABLEKS                       R9 R8 K18 ["viewabilityConfig"]
      101 CALL                             R7 1 0
      102 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R2
        2 MOVE                             R8 R3
        3 MOVE                             R9 R4
        4 CALL                             R6 3 1
        5 JUMPIFNOT                        R6 ; [+2]
        6 LOADB                            R6 1
        7 RETURN                           R6 1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R2
       10 MOVE                             R8 R3
       11 MOVE                             R9 R4
       12 CALL                             R6 3 1
       13 LOADN                            R8 100
       14 JUMPIFNOT                        R0 ; [+2]
       15 DIV                              R9 R6 R4
       16 JUMP                             ; [+1]
       17 DIV                              R9 R6 R5
       18 MUL                              R7 R8 R9
       19 JUMPIFLE                         R1 R7 ; [+2]
       21 LOADB                            R8 0 +1
       22 LOADB                            R8 1
       23 RETURN                           R8 1

PROTO_13:
        0 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 GETIMPORT                        R4 K2 [math.min]
        6 CALL                             R4 2 1
        7 FASTCALL2K                       MATH_MAX R0 K3 ; [+5]
        9 MOVE                             R6 R0
       10 LOADK                            R7 K3 [0]
       11 GETIMPORT                        R5 K5 [math.max]
       13 CALL                             R5 2 1
       14 SUB                              R3 R4 R5
       15 LOADN                            R5 0
       16 FASTCALL2                        MATH_MAX R5 R3 ; [+4]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K5 [math.max]
       21 CALL                             R4 2 1
       22 RETURN                           R4 1

PROTO_14:
        0 LOADB                            R3 0
        1 LOADN                            R4 0
        2 JUMPIFNOTLE                      R4 R0 ; [+8]
        4 LOADB                            R3 0
        5 JUMPIFNOTLE                      R1 R2 ; [+5]
        7 JUMPIFLT                         R0 R1 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Map"]
       18 GETTABLEKS                       R5 R2 K8 ["Set"]
       20 GETTABLEKS                       R6 R2 K9 ["Object"]
       22 GETTABLEKS                       R7 R2 K10 ["console"]
       24 GETTABLEKS                       R8 R2 K11 ["setTimeout"]
       26 GETTABLEKS                       R9 R2 K12 ["clearTimeout"]
       28 GETIMPORT                        R10 K4 [require]
       30 GETTABLEKS                       R11 R0 K13 ["jsUtils"]
       32 GETTABLEKS                       R11 R11 K14 ["invariant"]
       34 CALL                             R10 1 1
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 LOADNIL                          R13
       38 NEWTABLE                         R14 8 0
       40 SETTABLEKS                       R14 R14 K15 ["__index"]
       42 DUPCLOSURE                       R15 K16 [PROTO_0]
       43 CAPTURE                          VAL R14
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R15 R14 K17 ["new"]
       48 DUPCLOSURE                       R15 K18 [PROTO_2]
       49 CAPTURE                          VAL R9
       50 SETTABLEKS                       R15 R14 K19 ["dispose"]
       52 NEWCLOSURE                       R15 P2
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R7
       55 CAPTURE                          REF R13
       56 SETTABLEKS                       R15 R14 K20 ["computeViewableItems"]
       58 DUPCLOSURE                       R15 K21 [PROTO_6]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R15 R14 K22 ["onUpdate"]
       63 DUPCLOSURE                       R15 K23 [PROTO_7]
       64 SETTABLEKS                       R15 R14 K24 ["resetViewableIndices"]
       66 DUPCLOSURE                       R15 K25 [PROTO_8]
       67 SETTABLEKS                       R15 R14 K26 ["recordInteraction"]
       69 DUPCLOSURE                       R15 K27 [PROTO_11]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R15 R14 K28 ["_onUpdateSync"]
       75 NEWCLOSURE                       R13 P7
       76 CAPTURE                          REF R11
       77 CAPTURE                          REF R12
       78 DUPCLOSURE                       R12 K29 [PROTO_13]
       79 DUPCLOSURE                       R11 K30 [PROTO_14]
       80 CLOSEUPVALS                      R11
       81 RETURN                           R14 1
