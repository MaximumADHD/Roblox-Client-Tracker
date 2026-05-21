PROTO_0:
        0 LOADN                            R2 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 NAMECALL                         R8 R7 K0 ["getWidth"]
        7 CALL                             R8 1 1
        8 ADD                              R9 R2 R8
        9 JUMPIFNOTLT                      R1 R9 ; [+4]
       11 MOVE                             R9 R6
       12 SUB                              R10 R1 R2
       13 RETURN                           R9 2
       14 ADD                              R2 R2 R8
       15 FORGLOOP                         R3 2 ; [-11]
       17 LOADN                            R3 255
       18 LOADN                            R4 255
       19 RETURN                           R3 2

PROTO_1:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 JUMPIF                           R4 ; [+15]
        3 GETTABLEKS                       R8 R2 K0 ["canForceSplit"]
        5 JUMPIFNOT                        R8 ; [+9]
        6 JUMPIFNOT                        R5 ; [+8]
        7 MOVE                             R10 R3
        8 LOADB                            R11 1
        9 NAMECALL                         R8 R2 K1 ["split"]
       11 CALL                             R8 3 2
       12 MOVE                             R6 R8
       13 MOVE                             R7 R9
       14 RETURN                           R6 2
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 RETURN                           R6 2
       18 MOVE                             R7 R2
       19 RETURN                           R6 2

PROTO_2:
        0 NEWTABLE                         R5 8 0
        2 GETUPVAL                         R6 0
        3 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
        5 GETIMPORT                        R4 K1 [setmetatable]
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R0 R4 K2 ["WrapperElement"]
       10 SETTABLEKS                       R1 R4 K3 ["wrapperElementProps"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K4 ["Elements"]
       16 ORK                              R5 R3 K5 [1]
       17 SETTABLEKS                       R5 R4 K6 ["startingIndex"]
       19 MOVE                             R5 R2
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETUPVAL                         R10 1
       24 MOVE                             R11 R9
       25 CALL                             R10 1 1
       26 JUMPIFNOT                        R10 ; [+3]
       27 GETUPVAL                         R10 2
       28 JUMPIFNOTEQ                      R9 R10 ; [+6]
       30 GETIMPORT                        R10 K8 [warn]
       32 LOADK                            R11 K9 ["InlineSpanElement: invalid element provided. Only non inline elements, excluding HardBreakElement, are allowed."]
       33 CALL                             R10 1 0
       34 JUMP                             ; [+8]
       35 GETTABLEKS                       R11 R4 K4 ["Elements"]
       37 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       39 MOVE                             R12 R9
       40 GETIMPORT                        R10 K12 [table.insert]
       42 CALL                             R10 2 0
       43 FORGLOOP                         R5 2 ; [-21]
       45 GETTABLEKS                       R6 R4 K4 ["Elements"]
       47 LENGTH                           R5 R6
       48 JUMPIFNOTEQKN                    R5 K13 [0] ; [+5]
       50 GETIMPORT                        R5 K8 [warn]
       52 LOADK                            R6 K14 ["InlineSpanElement: no elements provided"]
       53 CALL                             R5 1 0
       54 GETTABLEKS                       R7 R4 K4 ["Elements"]
       56 LENGTH                           R6 R7
       57 LOADN                            R7 0
       58 JUMPIFNOTLT                      R7 R6 ; [+10]
       60 GETTABLEKS                       R6 R4 K4 ["Elements"]
       62 GETTABLEKS                       R8 R4 K4 ["Elements"]
       64 LENGTH                           R7 R8
       65 GETTABLE                         R5 R6 R7
       66 GETTABLEKS                       R5 R5 K15 ["canForceSplit"]
       68 JUMP                             ; [+1]
       69 LOADB                            R5 0
       70 SETTABLEKS                       R5 R4 K15 ["canForceSplit"]
       72 RETURN                           R4 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["getWidth"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sum"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["map"]
        6 GETTABLEKS                       R3 R0 K2 ["Elements"]
        8 DUPCLOSURE                       R4 K3 [PROTO_3]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["Elements"]
        2 GETTABLE                         R3 R4 R1
        3 MOVE                             R6 R2
        4 LOADB                            R7 0
        5 NAMECALL                         R4 R3 K1 ["split"]
        7 CALL                             R4 3 2
        8 MOVE                             R6 R4
        9 MOVE                             R7 R5
       10 NAMECALL                         R9 R4 K2 ["getWidth"]
       12 CALL                             R9 1 1
       13 JUMPIFLE                         R9 R2 ; [+2]
       15 LOADB                            R8 0 +1
       16 LOADB                            R8 1
       17 RETURN                           R6 3

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R6 R0 K0 ["Elements"]
        7 MOVE                             R7 R1
        8 CALL                             R5 2 2
        9 JUMPIFNOTEQKN                    R5 K1 [-1] ; [+4]
       11 MOVE                             R7 R0
       12 LOADNIL                          R8
       13 RETURN                           R7 2
       14 ADDK                             R7 R5 K2 [1]
       15 MOVE                             R10 R5
       16 MOVE                             R11 R6
       17 NAMECALL                         R8 R0 K3 ["_splitChildAtIndex"]
       19 CALL                             R8 3 3
       20 JUMPIF                           R10 ; [+33]
       21 MOVE                             R13 R8
       22 MOVE                             R14 R9
       23 GETTABLEKS                       R16 R0 K0 ["Elements"]
       25 GETTABLE                         R15 R16 R5
       26 LOADN                            R17 1
       27 JUMPIFLT                         R17 R5 ; [+2]
       29 LOADB                            R16 0 +1
       30 LOADB                            R16 1
       31 LOADNIL                          R17
       32 LOADNIL                          R18
       33 JUMPIF                           R16 ; [+15]
       34 GETTABLEKS                       R19 R15 K4 ["canForceSplit"]
       36 JUMPIFNOT                        R19 ; [+9]
       37 JUMPIFNOT                        R2 ; [+8]
       38 MOVE                             R21 R6
       39 LOADB                            R22 1
       40 NAMECALL                         R19 R15 K5 ["split"]
       42 CALL                             R19 3 2
       43 MOVE                             R17 R19
       44 MOVE                             R18 R20
       45 JUMP                             ; [+4]
       46 MOVE                             R17 R13
       47 MOVE                             R18 R14
       48 JUMP                             ; [+1]
       49 MOVE                             R18 R15
       50 MOVE                             R11 R17
       51 MOVE                             R12 R18
       52 MOVE                             R8 R11
       53 MOVE                             R9 R12
       54 LOADN                            R11 1
       55 JUMPIFNOTLT                      R11 R5 ; [+10]
       57 GETIMPORT                        R11 K8 [table.move]
       59 GETTABLEKS                       R12 R0 K0 ["Elements"]
       61 LOADN                            R13 1
       62 SUBK                             R14 R5 K2 [1]
       63 LOADN                            R15 1
       64 MOVE                             R16 R3
       65 CALL                             R11 5 0
       66 JUMPIFNOT                        R8 ; [+8]
       67 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       69 MOVE                             R12 R3
       70 MOVE                             R13 R8
       71 GETIMPORT                        R11 K10 [table.insert]
       73 CALL                             R11 2 0
       74 SUBK                             R7 R7 K2 [1]
       75 JUMPIFNOT                        R9 ; [+7]
       76 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       78 MOVE                             R12 R4
       79 MOVE                             R13 R9
       80 GETIMPORT                        R11 K10 [table.insert]
       82 CALL                             R11 2 0
       83 GETTABLEKS                       R12 R0 K0 ["Elements"]
       85 LENGTH                           R11 R12
       86 JUMPIFNOTLT                      R5 R11 ; [+13]
       88 GETIMPORT                        R11 K8 [table.move]
       90 GETTABLEKS                       R12 R0 K0 ["Elements"]
       92 ADDK                             R13 R5 K2 [1]
       93 GETTABLEKS                       R15 R0 K0 ["Elements"]
       95 LENGTH                           R14 R15
       96 LENGTH                           R16 R4
       97 ADDK                             R15 R16 K2 [1]
       98 MOVE                             R16 R4
       99 CALL                             R11 5 0
      100 GETUPVAL                         R11 1
      101 GETTABLEKS                       R11 R11 K11 ["new"]
      103 GETTABLEKS                       R12 R0 K12 ["WrapperElement"]
      105 GETTABLEKS                       R13 R0 K13 ["wrapperElementProps"]
      107 MOVE                             R14 R3
      108 GETTABLEKS                       R15 R0 K14 ["startingIndex"]
      110 CALL                             R11 4 1
      111 LENGTH                           R13 R4
      112 LOADN                            R14 0
      113 JUMPIFNOTLT                      R14 R13 ; [+12]
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R12 R12 K11 ["new"]
      118 GETTABLEKS                       R13 R0 K12 ["WrapperElement"]
      120 GETTABLEKS                       R14 R0 K13 ["wrapperElementProps"]
      122 MOVE                             R15 R4
      123 MOVE                             R16 R7
      124 CALL                             R12 4 1
      125 RETURN                           R11 2
      126 LOADNIL                          R12
      127 RETURN                           R11 2

PROTO_7:
        0 LOADK                            R5 K0 ["%*-%*"]
        1 GETUPVAL                         R7 0
        2 GETUPVAL                         R10 1
        3 GETTABLEKS                       R10 R10 K2 ["startingIndex"]
        5 ADD                              R9 R10 R1
        6 SUBK                             R8 R9 K1 [1]
        7 NAMECALL                         R5 R5 K3 ["format"]
        9 CALL                             R5 3 1
       10 MOVE                             R4 R5
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R0 K4 ["render"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLEKS                       R4 R0 K1 ["Elements"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 GETTABLEKS                       R5 R0 K3 ["WrapperElement"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K4 ["join"]
       17 GETTABLEKS                       R7 R0 K5 ["wrapperElementProps"]
       19 DUPTABLE                         R8 K8 [{"id", "LayoutOrder"}]
       20 SETTABLEKS                       R1 R8 K6 ["id"]
       22 SETTABLEKS                       R2 R8 K7 ["LayoutOrder"]
       24 CALL                             R6 2 1
       25 MOVE                             R7 R3
       26 CALL                             R4 3 -1
       27 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utils"]
       25 GETTABLEKS                       R5 R5 K10 ["InlineElementType"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K2 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["InlineLayout"]
       34 GETTABLEKS                       R6 R6 K12 ["InlineLayoutElements"]
       36 GETTABLEKS                       R6 R6 K13 ["RenderableInlineElement"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K2 ["Components"]
       43 GETTABLEKS                       R7 R7 K11 ["InlineLayout"]
       45 GETTABLEKS                       R7 R7 K12 ["InlineLayoutElements"]
       47 GETTABLEKS                       R7 R7 K14 ["HardBreakElement"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Utils"]
       54 GETTABLEKS                       R8 R8 K15 ["isInlineElement"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 8 0
       59 SETTABLEKS                       R8 R8 K16 ["__index"]
       61 SETTABLEKS                       R4 R8 K17 ["__type"]
       63 DUPCLOSURE                       R9 K18 [PROTO_0]
       64 DUPCLOSURE                       R10 K19 [PROTO_1]
       65 DUPCLOSURE                       R11 K20 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R11 R8 K21 ["new"]
       71 DUPCLOSURE                       R11 K22 [PROTO_4]
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R11 R8 K23 ["getWidth"]
       75 DUPCLOSURE                       R11 K24 [PROTO_5]
       76 SETTABLEKS                       R11 R8 K25 ["_splitChildAtIndex"]
       78 DUPCLOSURE                       R11 K26 [PROTO_6]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R11 R8 K27 ["split"]
       83 DUPCLOSURE                       R11 K28 [PROTO_8]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R11 R8 K29 ["render"]
       88 RETURN                           R8 1
