PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Children"]
        5 GETTABLE                         R3 R4 R5
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       12 LOADK                            R3 K2 ["Expected child elements to wrap"]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETTABLEKS                       R3 R0 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["localization"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       26 LOADK                            R3 K6 ["Expected a Localization object"]
       27 GETIMPORT                        R1 K4 [assert]
       29 CALL                             R1 2 0
       30 GETTABLEKS                       R3 R0 K0 ["props"]
       32 GETTABLEKS                       R3 R3 K7 ["plugin"]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       40 LOADK                            R3 K8 ["Expected a plugin object"]
       41 GETIMPORT                        R1 K4 [assert]
       43 CALL                             R1 2 0
       44 GETTABLEKS                       R3 R0 K0 ["props"]
       46 GETTABLEKS                       R3 R3 K9 ["store"]
       48 JUMPIFNOTEQKNIL                  R3 ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       54 LOADK                            R3 K10 ["Expected a Rodux Store object"]
       55 GETIMPORT                        R1 K4 [assert]
       57 CALL                             R1 2 0
       58 GETTABLEKS                       R3 R0 K0 ["props"]
       60 GETTABLEKS                       R3 R3 K11 ["theme"]
       62 JUMPIFNOTEQKNIL                  R3 ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       68 LOADK                            R3 K12 ["Expected a PluginTheme object"]
       69 GETIMPORT                        R1 K4 [assert]
       71 CALL                             R1 2 0
       72 GETTABLEKS                       R3 R0 K0 ["props"]
       74 GETTABLEKS                       R3 R3 K13 ["focusGui"]
       76 JUMPIFNOTEQKNIL                  R3 ; [+2]
       78 LOADB                            R2 0 +1
       79 LOADB                            R2 1
       80 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       82 LOADK                            R3 K14 ["Expected a FocusGui object"]
       83 GETIMPORT                        R1 K4 [assert]
       85 CALL                             R1 2 0
       86 GETTABLEKS                       R3 R0 K0 ["props"]
       88 GETTABLEKS                       R3 R3 K15 ["mouse"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Children"]
        5 GETTABLE                         R1 R2 R3
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["localization"]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K3 ["plugin"]
       14 GETTABLEKS                       R4 R0 K0 ["props"]
       16 GETTABLEKS                       R4 R4 K4 ["focusGui"]
       18 GETTABLEKS                       R5 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R5 K5 ["store"]
       22 GETTABLEKS                       R6 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R6 K6 ["theme"]
       26 GETTABLEKS                       R7 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R7 K7 ["mouse"]
       30 GETTABLEKS                       R8 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R8 K8 ["calloutController"]
       34 NEWTABLE                         R9 0 8
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K9 ["Focus"]
       39 GETTABLEKS                       R10 R10 K10 ["new"]
       41 MOVE                             R11 R4
       42 CALL                             R10 1 1
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K11 ["Plugin"]
       46 GETTABLEKS                       R11 R11 K10 ["new"]
       48 MOVE                             R12 R3
       49 CALL                             R11 1 1
       50 MOVE                             R12 R2
       51 MOVE                             R13 R6
       52 GETUPVAL                         R14 1
       53 GETTABLEKS                       R14 R14 K12 ["Store"]
       55 GETTABLEKS                       R14 R14 K10 ["new"]
       57 MOVE                             R15 R5
       58 CALL                             R14 1 1
       59 GETUPVAL                         R15 1
       60 GETTABLEKS                       R15 R15 K13 ["API"]
       62 GETTABLEKS                       R15 R15 K10 ["new"]
       64 CALL                             R15 0 1
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R16 R16 K14 ["Mouse"]
       68 GETTABLEKS                       R16 R16 K10 ["new"]
       70 MOVE                             R17 R7
       71 CALL                             R16 1 1
       72 MOVE                             R17 R8
       73 SETLIST                          R9 R10 8 [1]
       75 GETUPVAL                         R10 2
       76 CALL                             R10 0 1
       77 JUMPIFNOT                        R10 ; [+15]
       78 GETTABLEKS                       R10 R0 K0 ["props"]
       80 GETTABLEKS                       R10 R10 K15 ["publishStatusPanel"]
       82 JUMPIFNOT                        R10 ; [+10]
       83 GETTABLEKS                       R12 R0 K0 ["props"]
       85 GETTABLEKS                       R12 R12 K15 ["publishStatusPanel"]
       87 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       89 MOVE                             R11 R9
       90 GETIMPORT                        R10 K18 [table.insert]
       92 CALL                             R10 2 0
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K19 ["provide"]
       96 MOVE                             R11 R9
       97 MOVE                             R12 R1
       98 CALL                             R10 2 -1
       99 RETURN                           R10 -1

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
       23 GETTABLEKS                       R2 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Flags"]
       31 GETTABLEKS                       R4 R4 K11 ["getEngineFeatureStudioUnifiedPublishAction"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K12 ["PureComponent"]
       36 LOADK                            R6 K13 ["ServiceWrapper"]
       37 NAMECALL                         R4 R4 K14 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K15 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R5 R4 K16 ["init"]
       44 DUPCLOSURE                       R5 K17 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K18 ["render"]
       50 RETURN                           R4 1
