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
       32 GETTABLEKS                       R3 R4 K7 ["plugin"]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       40 LOADK                            R3 K8 ["Expected a plugin object"]
       41 GETIMPORT                        R1 K4 [assert]
       43 CALL                             R1 2 0
       44 GETTABLEKS                       R4 R0 K0 ["props"]
       46 GETTABLEKS                       R3 R4 K9 ["store"]
       48 JUMPIFNOTEQKNIL                  R3 ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       54 LOADK                            R3 K10 ["Expected a Rodux Store object"]
       55 GETIMPORT                        R1 K4 [assert]
       57 CALL                             R1 2 0
       58 GETTABLEKS                       R4 R0 K0 ["props"]
       60 GETTABLEKS                       R3 R4 K11 ["theme"]
       62 JUMPIFNOTEQKNIL                  R3 ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       68 LOADK                            R3 K12 ["Expected a PluginTheme object"]
       69 GETIMPORT                        R1 K4 [assert]
       71 CALL                             R1 2 0
       72 GETTABLEKS                       R4 R0 K0 ["props"]
       74 GETTABLEKS                       R3 R4 K13 ["focusGui"]
       76 JUMPIFNOTEQKNIL                  R3 ; [+2]
       78 LOADB                            R2 0 +1
       79 LOADB                            R2 1
       80 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       82 LOADK                            R3 K14 ["Expected a FocusGui object"]
       83 GETIMPORT                        R1 K4 [assert]
       85 CALL                             R1 2 0
       86 GETTABLEKS                       R4 R0 K0 ["props"]
       88 GETTABLEKS                       R3 R4 K15 ["mouse"]
       90 JUMPIFNOTEQKNIL                  R3 ; [+2]
       92 LOADB                            R2 0 +1
       93 LOADB                            R2 1
       94 FASTCALL2K                       ASSERT R2 K16 ; [+4]
       96 LOADK                            R3 K16 ["Expected a Mouse object"]
       97 GETIMPORT                        R1 K4 [assert]
       99 CALL                             R1 2 0
      100 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Children"]
        5 GETTABLE                         R1 R2 R3
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["localization"]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R4 K3 ["plugin"]
       14 GETTABLEKS                       R5 R0 K0 ["props"]
       16 GETTABLEKS                       R4 R5 K4 ["focusGui"]
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R6 K5 ["store"]
       22 GETTABLEKS                       R7 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R7 K6 ["theme"]
       26 GETTABLEKS                       R8 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R8 K7 ["mouse"]
       30 GETTABLEKS                       R9 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R9 K8 ["calloutController"]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R9 R10 K9 ["provide"]
       37 NEWTABLE                         R10 0 8
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R12 R13 K10 ["Focus"]
       42 GETTABLEKS                       R11 R12 K11 ["new"]
       44 MOVE                             R12 R4
       45 CALL                             R11 1 1
       46 GETUPVAL                         R14 1
       47 GETTABLEKS                       R13 R14 K12 ["Plugin"]
       49 GETTABLEKS                       R12 R13 K11 ["new"]
       51 MOVE                             R13 R3
       52 CALL                             R12 1 1
       53 MOVE                             R13 R2
       54 MOVE                             R14 R6
       55 GETUPVAL                         R17 1
       56 GETTABLEKS                       R16 R17 K13 ["Store"]
       58 GETTABLEKS                       R15 R16 K11 ["new"]
       60 MOVE                             R16 R5
       61 CALL                             R15 1 1
       62 GETUPVAL                         R18 1
       63 GETTABLEKS                       R17 R18 K14 ["API"]
       65 GETTABLEKS                       R16 R17 K11 ["new"]
       67 CALL                             R16 0 1
       68 GETUPVAL                         R19 1
       69 GETTABLEKS                       R18 R19 K15 ["Mouse"]
       71 GETTABLEKS                       R17 R18 K11 ["new"]
       73 MOVE                             R18 R7
       74 CALL                             R17 1 1
       75 MOVE                             R18 R8
       76 SETLIST                          R10 R11 8 [1]
       78 MOVE                             R11 R1
       79 CALL                             R9 2 -1
       80 RETURN                           R9 -1

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
       25 GETTABLEKS                       R3 R1 K9 ["PureComponent"]
       27 LOADK                            R5 K10 ["ServiceWrapper"]
       28 NAMECALL                         R3 R3 K11 ["extend"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K12 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R4 R3 K13 ["init"]
       35 DUPCLOSURE                       R4 K14 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R4 R3 K15 ["render"]
       40 RETURN                           R3 1
