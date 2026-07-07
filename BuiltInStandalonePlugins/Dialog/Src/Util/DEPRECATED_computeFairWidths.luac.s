PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["width"]
        2 GETTABLEKS                       R4 R1 K0 ["width"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["SharedFlags"]
        3 GETTABLEKS                       R6 R6 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R6 0 1
        6 NOT                              R5 R6
        7 FASTCALL2K                       ASSERT R5 K2 ; [+4]
        9 LOADK                            R6 K2 ["This version of computeFairWidths is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 2 0
       13 NEWTABLE                         R4 0 0
       15 MOVE                             R5 R0
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 DUPTABLE                         R12 K7 [{"id", "width"}]
       20 SETTABLEKS                       R8 R12 K5 ["id"]
       22 SETTABLEKS                       R9 R12 K6 ["width"]
       24 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       26 MOVE                             R11 R4
       27 GETIMPORT                        R10 K10 [table.insert]
       29 CALL                             R10 2 0
       30 FORGLOOP                         R5 2 ; [-12]
       32 JUMPIFNOTEQKN                    R2 K11 [0] ; [+3]
       34 LOADNIL                          R5
       35 RETURN                           R5 1
       36 SUBK                             R8 R2 K12 [1]
       37 FASTCALL2K                       MATH_MAX R8 K11 ; [+4]
       39 LOADK                            R9 K11 [0]
       40 GETIMPORT                        R7 K15 [math.max]
       42 CALL                             R7 2 1
       43 MUL                              R6 R7 R3
       44 SUB                              R5 R1 R6
       45 LOADN                            R6 0
       46 MOVE                             R7 R4
       47 LOADNIL                          R8
       48 LOADNIL                          R9
       49 FORGPREP                         R7
       50 GETTABLEKS                       R12 R11 K6 ["width"]
       52 ADD                              R6 R6 R12
       53 FORGLOOP                         R7 2 ; [-4]
       55 JUMPIFNOTLE                      R6 R5 ; [+3]
       57 LOADNIL                          R7
       58 RETURN                           R7 1
       59 GETIMPORT                        R7 K17 [table.sort]
       61 MOVE                             R8 R4
       62 DUPCLOSURE                       R9 K18 [PROTO_0]
       63 CALL                             R7 2 0
       64 DIV                              R7 R5 R2
       65 MOVE                             R8 R5
       66 MOVE                             R9 R4
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 FORGPREP                         R9
       70 SUB                              R16 R2 R12
       71 ADDK                             R15 R16 K12 [1]
       72 DIV                              R14 R8 R15
       73 GETTABLEKS                       R15 R13 K6 ["width"]
       75 JUMPIFNOTLE                      R14 R15 ; [+3]
       77 MOVE                             R7 R14
       78 JUMP                             ; [+5]
       79 GETTABLEKS                       R15 R13 K6 ["width"]
       81 SUB                              R8 R8 R15
       82 FORGLOOP                         R9 2 ; [-13]
       84 NEWTABLE                         R9 0 0
       86 MOVE                             R10 R4
       87 LOADNIL                          R11
       88 LOADNIL                          R12
       89 FORGPREP                         R10
       90 GETTABLEKS                       R15 R14 K5 ["id"]
       92 GETTABLEKS                       R18 R14 K6 ["width"]
       94 FASTCALL2                        MATH_MIN R18 R7 ; [+4]
       96 MOVE                             R19 R7
       97 GETIMPORT                        R17 K20 [math.min]
       99 CALL                             R17 2 1
      100 FASTCALL2K                       MATH_MAX R17 K11 ; [+4]
      102 LOADK                            R18 K11 [0]
      103 GETIMPORT                        R16 K15 [math.max]
      105 CALL                             R16 2 1
      106 SETTABLE                         R16 R9 R15
      107 FORGLOOP                         R10 2 ; [-18]
      109 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
