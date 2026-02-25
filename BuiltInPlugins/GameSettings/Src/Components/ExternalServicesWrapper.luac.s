PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Children"]
        5 GETTABLE                         R3 R4 R5
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       12 LOADK                            R3 K2 ["Expected child elements to wrap"]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETTABLEKS                       R4 R0 K0 ["props"]
       18 GETTABLEKS                       R3 R4 K5 ["localization"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       26 LOADK                            R3 K6 ["Expected a Localization object"]
       27 GETIMPORT                        R1 K4 [assert]
       29 CALL                             R1 2 0
       30 GETTABLEKS                       R4 R0 K0 ["props"]
       32 GETTABLEKS                       R3 R4 K7 ["mouse"]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       40 LOADK                            R3 K8 ["Expected a mouse object"]
       41 GETIMPORT                        R1 K4 [assert]
       43 CALL                             R1 2 0
       44 GETTABLEKS                       R4 R0 K0 ["props"]
       46 GETTABLEKS                       R3 R4 K9 ["plugin"]
       48 JUMPIFNOTEQKNIL                  R3 ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       54 LOADK                            R3 K10 ["Expected a plugin object"]
       55 GETIMPORT                        R1 K4 [assert]
       57 CALL                             R1 2 0
       58 GETTABLEKS                       R4 R0 K0 ["props"]
       60 GETTABLEKS                       R3 R4 K11 ["pluginGui"]
       62 JUMPIFNOTEQKNIL                  R3 ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       68 LOADK                            R3 K12 ["Expected a pluginGui object"]
       69 GETIMPORT                        R1 K4 [assert]
       71 CALL                             R1 2 0
       72 GETTABLEKS                       R4 R0 K0 ["props"]
       74 GETTABLEKS                       R3 R4 K13 ["theme"]
       76 JUMPIFNOTEQKNIL                  R3 ; [+2]
       78 LOADB                            R2 0 +1
       79 LOADB                            R2 1
       80 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       82 LOADK                            R3 K14 ["Expected a PluginTheme object"]
       83 GETIMPORT                        R1 K4 [assert]
       85 CALL                             R1 2 0
       86 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Children"]
        5 GETTABLE                         R1 R2 R3
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["localization"]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R4 K3 ["mouse"]
       14 GETTABLEKS                       R5 R0 K0 ["props"]
       16 GETTABLEKS                       R4 R5 K4 ["plugin"]
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R6 K5 ["pluginGui"]
       22 GETTABLEKS                       R7 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R7 K6 ["showDialog"]
       26 GETTABLEKS                       R8 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R8 K7 ["store"]
       30 GETTABLEKS                       R9 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R9 K8 ["theme"]
       34 GETTABLEKS                       R10 R0 K0 ["props"]
       36 GETTABLEKS                       R9 R10 K9 ["worldRootPhysics"]
       38 NEWTABLE                         R10 0 4
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R12 R13 K10 ["Focus"]
       43 GETTABLEKS                       R11 R12 K11 ["new"]
       45 MOVE                             R12 R5
       46 CALL                             R11 1 1
       47 GETUPVAL                         R14 1
       48 GETTABLEKS                       R13 R14 K12 ["Plugin"]
       50 GETTABLEKS                       R12 R13 K11 ["new"]
       52 MOVE                             R13 R4
       53 CALL                             R12 1 1
       54 MOVE                             R13 R2
       55 MOVE                             R14 R8
       56 SETLIST                          R10 R11 4 [1]
       58 JUMPIFNOT                        R6 ; [+10]
       59 MOVE                             R12 R10
       60 GETUPVAL                         R14 2
       61 GETTABLEKS                       R13 R14 K11 ["new"]
       63 MOVE                             R14 R6
       64 CALL                             R13 1 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R11 K15 [table.insert]
       68 CALL                             R11 -1 0
       69 JUMPIFNOT                        R7 ; [+12]
       70 MOVE                             R12 R10
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R14 R15 K16 ["Store"]
       74 GETTABLEKS                       R13 R14 K11 ["new"]
       76 MOVE                             R14 R7
       77 CALL                             R13 1 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R11 K15 [table.insert]
       81 CALL                             R11 -1 0
       82 MOVE                             R12 R10
       83 GETUPVAL                         R15 1
       84 GETTABLEKS                       R14 R15 K17 ["API"]
       86 GETTABLEKS                       R13 R14 K11 ["new"]
       88 CALL                             R13 0 -1
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R11 K15 [table.insert]
       92 CALL                             R11 -1 0
       93 MOVE                             R12 R10
       94 GETUPVAL                         R15 1
       95 GETTABLEKS                       R14 R15 K18 ["Mouse"]
       97 GETTABLEKS                       R13 R14 K11 ["new"]
       99 MOVE                             R14 R3
      100 CALL                             R13 1 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R11 K15 [table.insert]
      104 CALL                             R11 -1 0
      105 JUMPIFNOT                        R9 ; [+7]
      106 FASTCALL2                        TABLE_INSERT R10 R9 ; [+5]
      108 MOVE                             R12 R10
      109 MOVE                             R13 R9
      110 GETIMPORT                        R11 K15 [table.insert]
      112 CALL                             R11 2 0
      113 GETUPVAL                         R12 1
      114 GETTABLEKS                       R11 R12 K19 ["provide"]
      116 MOVE                             R12 R10
      117 MOVE                             R13 R1
      118 CALL                             R11 2 -1
      119 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Packages"]
       20 GETTABLEKS                       R4 R5 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R2 R3 K8 ["ContextServices"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R6 K8 ["ContextServices"]
       31 GETTABLEKS                       R4 R5 K10 ["Dialog"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ServiceWrapper"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R5 R4 K15 ["init"]
       44 DUPCLOSURE                       R5 K16 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K17 ["render"]
       50 RETURN                           R4 1
