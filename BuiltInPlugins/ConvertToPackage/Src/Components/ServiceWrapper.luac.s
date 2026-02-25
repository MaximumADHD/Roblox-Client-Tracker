PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["Children"]
        5 GETTABLE                         R4 R5 R6
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       12 LOADK                            R4 K2 ["Expected child elements to wrap"]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R4 R5 K5 ["networkInterface"]
       20 JUMPIFNOTEQKNIL                  R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["Expected a NetworkInterface object"]
       27 GETIMPORT                        R2 K4 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R5 R0 K0 ["props"]
       32 GETTABLEKS                       R4 R5 K7 ["localization"]
       34 JUMPIFNOTEQKNIL                  R4 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       40 LOADK                            R4 K8 ["Expected a Localization object"]
       41 GETIMPORT                        R2 K4 [assert]
       43 CALL                             R2 2 0
       44 GETTABLEKS                       R5 R0 K0 ["props"]
       46 GETTABLEKS                       R4 R5 K9 ["plugin"]
       48 JUMPIFNOTEQKNIL                  R4 ; [+2]
       50 LOADB                            R3 0 +1
       51 LOADB                            R3 1
       52 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       54 LOADK                            R4 K10 ["Expected a plugin object"]
       55 GETIMPORT                        R2 K4 [assert]
       57 CALL                             R2 2 0
       58 GETTABLEKS                       R5 R0 K0 ["props"]
       60 GETTABLEKS                       R4 R5 K11 ["mouse"]
       62 JUMPIFNOTEQKNIL                  R4 ; [+2]
       64 LOADB                            R3 0 +1
       65 LOADB                            R3 1
       66 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       68 LOADK                            R4 K12 ["Expected a mouse object"]
       69 GETIMPORT                        R2 K4 [assert]
       71 CALL                             R2 2 0
       72 GETTABLEKS                       R5 R0 K0 ["props"]
       74 GETTABLEKS                       R4 R5 K13 ["store"]
       76 JUMPIFNOTEQKNIL                  R4 ; [+2]
       78 LOADB                            R3 0 +1
       79 LOADB                            R3 1
       80 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       82 LOADK                            R4 K14 ["Expected a Rodux Store object"]
       83 GETIMPORT                        R2 K4 [assert]
       85 CALL                             R2 2 0
       86 GETTABLEKS                       R5 R0 K0 ["props"]
       88 GETTABLEKS                       R4 R5 K15 ["theme"]
       90 JUMPIFNOTEQKNIL                  R4 ; [+2]
       92 LOADB                            R3 0 +1
       93 LOADB                            R3 1
       94 FASTCALL2K                       ASSERT R3 K16 ; [+4]
       96 LOADK                            R4 K16 ["Expected a PluginTheme object"]
       97 GETIMPORT                        R2 K4 [assert]
       99 CALL                             R2 2 0
      100 GETTABLEKS                       R5 R0 K0 ["props"]
      102 GETTABLEKS                       R4 R5 K17 ["focusGui"]
      104 JUMPIFNOTEQKNIL                  R4 ; [+2]
      106 LOADB                            R3 0 +1
      107 LOADB                            R3 1
      108 FASTCALL2K                       ASSERT R3 K18 ; [+4]
      110 LOADK                            R4 K18 ["Expected a FocusGui object"]
      111 GETIMPORT                        R2 K4 [assert]
      113 CALL                             R2 2 0
      114 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["store"]
        4 GETTABLEKS                       R3 R1 K2 ["plugin"]
        6 GETTABLEKS                       R4 R1 K3 ["theme"]
        8 GETTABLEKS                       R5 R1 K4 ["mouse"]
       10 GETTABLEKS                       R6 R1 K5 ["focusGui"]
       12 GETTABLEKS                       R7 R1 K6 ["localization"]
       14 GETTABLEKS                       R8 R1 K7 ["networkInterface"]
       16 GETTABLEKS                       R10 R0 K0 ["props"]
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R11 R12 K8 ["Children"]
       21 GETTABLE                         R9 R10 R11
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K9 ["provide"]
       25 NEWTABLE                         R11 0 7
       27 GETUPVAL                         R14 1
       28 GETTABLEKS                       R13 R14 K10 ["Store"]
       30 GETTABLEKS                       R12 R13 K11 ["new"]
       32 MOVE                             R13 R2
       33 CALL                             R12 1 1
       34 GETUPVAL                         R15 1
       35 GETTABLEKS                       R14 R15 K12 ["Focus"]
       37 GETTABLEKS                       R13 R14 K11 ["new"]
       39 MOVE                             R14 R6
       40 CALL                             R13 1 1
       41 MOVE                             R14 R4
       42 MOVE                             R15 R7
       43 GETUPVAL                         R18 1
       44 GETTABLEKS                       R17 R18 K13 ["Plugin"]
       46 GETTABLEKS                       R16 R17 K11 ["new"]
       48 MOVE                             R17 R3
       49 CALL                             R16 1 1
       50 GETUPVAL                         R18 2
       51 GETTABLEKS                       R17 R18 K11 ["new"]
       53 MOVE                             R18 R8
       54 CALL                             R17 1 1
       55 GETUPVAL                         R20 1
       56 GETTABLEKS                       R19 R20 K14 ["Mouse"]
       58 GETTABLEKS                       R18 R19 K11 ["new"]
       60 MOVE                             R19 R5
       61 CALL                             R18 1 -1
       62 SETLIST                          R11 R12 -1 [1]
       64 MOVE                             R12 R9
       65 CALL                             R10 2 -1
       66 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       23 GETIMPORT                        R5 K5 [require]
       25 GETTABLEKS                       R8 R0 K9 ["Src"]
       27 GETTABLEKS                       R7 R8 K8 ["ContextServices"]
       29 GETTABLEKS                       R6 R7 K10 ["NetworkContext"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R2 K11 ["PureComponent"]
       34 LOADK                            R8 K12 ["ServiceWrapper"]
       35 NAMECALL                         R6 R6 K13 ["extend"]
       37 CALL                             R6 2 1
       38 DUPCLOSURE                       R7 K14 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R7 R6 K15 ["init"]
       42 DUPCLOSURE                       R7 K16 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R7 R6 K17 ["render"]
       48 RETURN                           R6 1
