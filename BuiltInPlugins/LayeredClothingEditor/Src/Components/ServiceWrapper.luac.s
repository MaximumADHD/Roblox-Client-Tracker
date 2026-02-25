PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["analytics"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Expected a Analytics object"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R4 R0 K0 ["props"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K5 ["Children"]
       19 GETTABLE                         R3 R4 R5
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       26 LOADK                            R3 K6 ["Expected child elements to wrap"]
       27 GETIMPORT                        R1 K4 [assert]
       29 CALL                             R1 2 0
       30 GETTABLEKS                       R4 R0 K0 ["props"]
       32 GETTABLEKS                       R3 R4 K7 ["localization"]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       40 LOADK                            R3 K8 ["Expected a Localization object"]
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
       60 GETTABLEKS                       R3 R4 K11 ["store"]
       62 JUMPIFNOTEQKNIL                  R3 ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       68 LOADK                            R3 K12 ["Expected a Rodux Store object"]
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
       86 GETTABLEKS                       R4 R0 K0 ["props"]
       88 GETTABLEKS                       R3 R4 K15 ["mouse"]
       90 JUMPIFNOTEQKNIL                  R3 ; [+2]
       92 LOADB                            R2 0 +1
       93 LOADB                            R2 1
       94 FASTCALL2K                       ASSERT R2 K16 ; [+4]
       96 LOADK                            R3 K16 ["Expected a PluginMouse object"]
       97 GETIMPORT                        R1 K4 [assert]
       99 CALL                             R1 2 0
      100 GETTABLEKS                       R4 R0 K0 ["props"]
      102 GETTABLEKS                       R3 R4 K17 ["pluginActions"]
      104 JUMPIFNOTEQKNIL                  R3 ; [+2]
      106 LOADB                            R2 0 +1
      107 LOADB                            R2 1
      108 FASTCALL2K                       ASSERT R2 K18 ; [+4]
      110 LOADK                            R3 K18 ["Expect a PluginActions object"]
      111 GETIMPORT                        R1 K4 [assert]
      113 CALL                             R1 2 0
      114 GETTABLEKS                       R4 R0 K0 ["props"]
      116 GETTABLEKS                       R3 R4 K19 ["signals"]
      118 JUMPIFNOTEQKNIL                  R3 ; [+2]
      120 LOADB                            R2 0 +1
      121 LOADB                            R2 1
      122 FASTCALL2K                       ASSERT R2 K20 ; [+4]
      124 LOADK                            R3 K20 ["Expect a Signals object"]
      125 GETIMPORT                        R1 K4 [assert]
      127 CALL                             R1 2 0
      128 GETTABLEKS                       R4 R0 K0 ["props"]
      130 GETTABLEKS                       R3 R4 K21 ["editingItemContext"]
      132 JUMPIFNOTEQKNIL                  R3 ; [+2]
      134 LOADB                            R2 0 +1
      135 LOADB                            R2 1
      136 FASTCALL2K                       ASSERT R2 K22 ; [+4]
      138 LOADK                            R3 K22 ["Expect a EditingItemContext"]
      139 GETIMPORT                        R1 K4 [assert]
      141 CALL                             R1 2 0
      142 GETTABLEKS                       R4 R0 K0 ["props"]
      144 GETTABLEKS                       R3 R4 K23 ["meshEditingContext"]
      146 JUMPIFNOTEQKNIL                  R3 ; [+2]
      148 LOADB                            R2 0 +1
      149 LOADB                            R2 1
      150 FASTCALL2K                       ASSERT R2 K24 ; [+4]
      152 LOADK                            R3 K24 ["Expect a LuaMeshEditingModuleContext"]
      153 GETIMPORT                        R1 K4 [assert]
      155 CALL                             R1 2 0
      156 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["plugin"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["analytics"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["Children"]
       13 GETTABLE                         R3 R4 R5
       14 GETTABLEKS                       R5 R0 K0 ["props"]
       16 GETTABLEKS                       R4 R5 K4 ["localization"]
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R6 K5 ["mouse"]
       22 GETTABLEKS                       R7 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R7 K6 ["store"]
       26 GETTABLEKS                       R8 R0 K0 ["props"]
       28 GETTABLEKS                       R7 R8 K7 ["theme"]
       30 GETTABLEKS                       R9 R0 K0 ["props"]
       32 GETTABLEKS                       R8 R9 K8 ["pluginActions"]
       34 GETTABLEKS                       R10 R0 K0 ["props"]
       36 GETTABLEKS                       R9 R10 K9 ["signals"]
       38 GETTABLEKS                       R11 R0 K0 ["props"]
       40 GETTABLEKS                       R10 R11 K10 ["editingItemContext"]
       42 GETTABLEKS                       R12 R0 K0 ["props"]
       44 GETTABLEKS                       R11 R12 K11 ["meshEditingContext"]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R12 R13 K12 ["provide"]
       49 NEWTABLE                         R13 0 14
       51 MOVE                             R14 R1
       52 MOVE                             R15 R2
       53 MOVE                             R16 R4
       54 MOVE                             R17 R7
       55 GETUPVAL                         R20 1
       56 GETTABLEKS                       R19 R20 K13 ["Store"]
       58 GETTABLEKS                       R18 R19 K14 ["new"]
       60 MOVE                             R19 R6
       61 CALL                             R18 1 1
       62 GETUPVAL                         R21 1
       63 GETTABLEKS                       R20 R21 K15 ["API"]
       65 GETTABLEKS                       R19 R20 K14 ["new"]
       67 CALL                             R19 0 1
       68 MOVE                             R20 R8
       69 MOVE                             R21 R9
       70 GETUPVAL                         R24 1
       71 GETTABLEKS                       R23 R24 K16 ["Mouse"]
       73 GETTABLEKS                       R22 R23 K14 ["new"]
       75 MOVE                             R23 R5
       76 CALL                             R22 1 1
       77 MOVE                             R23 R10
       78 MOVE                             R24 R11
       79 GETUPVAL                         R26 2
       80 GETTABLEKS                       R25 R26 K14 ["new"]
       82 CALL                             R25 0 1
       83 GETUPVAL                         R27 3
       84 GETTABLEKS                       R26 R27 K14 ["new"]
       86 CALL                             R26 0 1
       87 GETUPVAL                         R28 4
       88 GETTABLEKS                       R27 R28 K14 ["new"]
       90 CALL                             R27 0 -1
       91 SETLIST                          R13 R14 -1 [1]
       93 MOVE                             R14 R3
       94 CALL                             R12 2 -1
       95 RETURN                           R12 -1

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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R3 K10 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K11 ["AssetServiceWrapper"]
       36 GETTABLEKS                       R7 R3 K10 ["Contexts"]
       38 GETTABLEKS                       R6 R7 K12 ["StudioServiceWrapper"]
       40 GETTABLEKS                       R8 R3 K10 ["Contexts"]
       42 GETTABLEKS                       R7 R8 K13 ["MannequinContext"]
       44 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       46 LOADK                            R10 K15 ["ServiceWrapper"]
       47 NAMECALL                         R8 R8 K16 ["extend"]
       49 CALL                             R8 2 1
       50 DUPCLOSURE                       R9 K17 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R9 R8 K18 ["init"]
       54 DUPCLOSURE                       R9 K19 [PROTO_1]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R9 R8 K20 ["render"]
       62 RETURN                           R8 1
