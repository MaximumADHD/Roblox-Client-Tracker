PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["analytics"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Expected a Analytics object"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R4 R0 K0 ["props"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["Children"]
       19 GETTABLE                         R3 R4 R5
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       26 LOADK                            R3 K6 ["Expected child elements to wrap"]
       27 GETIMPORT                        R1 K4 [assert]
       29 CALL                             R1 2 0
       30 GETTABLEKS                       R3 R0 K0 ["props"]
       32 GETTABLEKS                       R3 R3 K7 ["localization"]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       40 LOADK                            R3 K8 ["Expected a Localization object"]
       41 GETIMPORT                        R1 K4 [assert]
       43 CALL                             R1 2 0
       44 GETTABLEKS                       R3 R0 K0 ["props"]
       46 GETTABLEKS                       R3 R3 K9 ["plugin"]
       48 JUMPIFNOTEQKNIL                  R3 ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       54 LOADK                            R3 K10 ["Expected a plugin object"]
       55 GETIMPORT                        R1 K4 [assert]
       57 CALL                             R1 2 0
       58 GETTABLEKS                       R3 R0 K0 ["props"]
       60 GETTABLEKS                       R3 R3 K11 ["store"]
       62 JUMPIFNOTEQKNIL                  R3 ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       68 LOADK                            R3 K12 ["Expected a Rodux Store object"]
       69 GETIMPORT                        R1 K4 [assert]
       71 CALL                             R1 2 0
       72 GETTABLEKS                       R3 R0 K0 ["props"]
       74 GETTABLEKS                       R3 R3 K13 ["theme"]
       76 JUMPIFNOTEQKNIL                  R3 ; [+2]
       78 LOADB                            R2 0 +1
       79 LOADB                            R2 1
       80 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       82 LOADK                            R3 K14 ["Expected a PluginTheme object"]
       83 GETIMPORT                        R1 K4 [assert]
       85 CALL                             R1 2 0
       86 GETTABLEKS                       R3 R0 K0 ["props"]
       88 GETTABLEKS                       R3 R3 K15 ["focusGui"]
       90 JUMPIFNOTEQKNIL                  R3 ; [+2]
       92 LOADB                            R2 0 +1
       93 LOADB                            R2 1
       94 FASTCALL2K                       ASSERT R2 K16 ; [+4]
       96 LOADK                            R3 K16 ["Expected a focusGui object"]
       97 GETIMPORT                        R1 K4 [assert]
       99 CALL                             R1 2 0
      100 GETTABLEKS                       R3 R0 K0 ["props"]
      102 GETTABLEKS                       R3 R3 K17 ["mouse"]
      104 JUMPIFNOTEQKNIL                  R3 ; [+2]
      106 LOADB                            R2 0 +1
      107 LOADB                            R2 1
      108 FASTCALL2K                       ASSERT R2 K18 ; [+4]
      110 LOADK                            R3 K18 ["Expected a PluginMouse object"]
      111 GETIMPORT                        R1 K4 [assert]
      113 CALL                             R1 2 0
      114 GETTABLEKS                       R3 R0 K0 ["props"]
      116 GETTABLEKS                       R3 R3 K19 ["insertAsset"]
      118 JUMPIFNOTEQKNIL                  R3 ; [+2]
      120 LOADB                            R2 0 +1
      121 LOADB                            R2 1
      122 FASTCALL2K                       ASSERT R2 K20 ; [+4]
      124 LOADK                            R3 K20 ["Expected a InsertAsset object"]
      125 GETIMPORT                        R1 K4 [assert]
      127 CALL                             R1 2 0
      128 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["analytics"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Children"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K3 ["focusGui"]
       14 GETTABLEKS                       R4 R0 K0 ["props"]
       16 GETTABLEKS                       R4 R4 K4 ["localization"]
       18 GETTABLEKS                       R5 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R5 K5 ["mouse"]
       22 GETTABLEKS                       R6 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R6 K6 ["plugin"]
       26 GETTABLEKS                       R7 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R7 K7 ["store"]
       30 GETTABLEKS                       R8 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R8 K8 ["theme"]
       34 GETTABLEKS                       R9 R0 K0 ["props"]
       36 GETTABLEKS                       R9 R9 K9 ["calloutController"]
       38 GETTABLEKS                       R10 R0 K0 ["props"]
       40 GETTABLEKS                       R10 R10 K10 ["insertAsset"]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K11 ["provide"]
       45 NEWTABLE                         R12 0 10
       47 MOVE                             R13 R1
       48 GETUPVAL                         R14 1
       49 GETTABLEKS                       R14 R14 K12 ["Focus"]
       51 GETTABLEKS                       R14 R14 K13 ["new"]
       53 MOVE                             R15 R3
       54 CALL                             R14 1 1
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R15 R15 K14 ["Plugin"]
       58 GETTABLEKS                       R15 R15 K13 ["new"]
       60 MOVE                             R16 R6
       61 CALL                             R15 1 1
       62 MOVE                             R16 R4
       63 MOVE                             R17 R8
       64 GETUPVAL                         R18 1
       65 GETTABLEKS                       R18 R18 K15 ["Store"]
       67 GETTABLEKS                       R18 R18 K13 ["new"]
       69 MOVE                             R19 R7
       70 CALL                             R18 1 1
       71 GETUPVAL                         R19 1
       72 GETTABLEKS                       R19 R19 K16 ["API"]
       74 GETTABLEKS                       R19 R19 K13 ["new"]
       76 CALL                             R19 0 1
       77 GETUPVAL                         R20 1
       78 GETTABLEKS                       R20 R20 K17 ["Mouse"]
       80 GETTABLEKS                       R20 R20 K13 ["new"]
       82 MOVE                             R21 R5
       83 CALL                             R20 1 1
       84 MOVE                             R21 R9
       85 MOVE                             R22 R10
       86 SETLIST                          R12 R13 10 [1]
       88 MOVE                             R13 R2
       89 CALL                             R11 2 -1
       90 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R1 K9 ["PureComponent"]
       27 LOADK                            R6 K10 ["ServiceWrapper"]
       28 NAMECALL                         R4 R4 K11 ["extend"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R5 K12 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R5 R4 K13 ["init"]
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K15 ["render"]
       40 RETURN                           R4 1
