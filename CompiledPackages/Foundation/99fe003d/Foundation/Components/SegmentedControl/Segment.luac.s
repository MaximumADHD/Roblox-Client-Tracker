PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K0 ["size"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R7 R7 K1 ["FoundationSegmentedControlCircular"]
        9 JUMPIFNOT                        R7 ; [+3]
       10 GETTABLEKS                       R6 R0 K2 ["isCircular"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R6
       14 CALL                             R3 3 1
       15 GETIMPORT                        R4 K4 [_G]
       17 GETTABLEKS                       R4 R4 K5 ["__DEV__"]
       19 JUMPIFNOTEQKB                    R4 TRUE ; [+18]
       21 LOADB                            R5 1
       22 GETTABLEKS                       R6 R0 K6 ["text"]
       24 JUMPIFEQKNIL                     R6 ; [+7]
       26 GETTABLEKS                       R6 R0 K7 ["icon"]
       28 JUMPIFEQKNIL                     R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       34 LOADK                            R6 K8 ["Segment: `text` and `icon` are mutually exclusive. Only one can be provided."]
       35 GETIMPORT                        R4 K10 [assert]
       37 CALL                             R4 2 0
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 LOADNIL                          R7
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K11 ["FoundationSegmentedControlIconSupport"]
       45 JUMPIFNOT                        R8 ; [+26]
       46 GETTABLEKS                       R8 R0 K7 ["icon"]
       48 JUMPIFNOTEQKNIL                  R8 ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 JUMPIFNOT                        R4 ; [+19]
       53 GETTABLEKS                       R9 R0 K7 ["icon"]
       55 FASTCALL1                        TYPEOF R9 ; [+2]
       56 GETIMPORT                        R8 K13 [typeof]
       58 CALL                             R8 1 1
       59 JUMPIFNOTEQKS                    R8 K14 ["table"] ; [+8]
       61 GETTABLEKS                       R8 R0 K7 ["icon"]
       63 GETTABLEKS                       R5 R8 K15 ["name"]
       65 GETTABLEKS                       R6 R8 K16 ["variant"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R5 R0 K7 ["icon"]
       70 GETTABLEKS                       R7 R3 K7 ["icon"]
       72 GETUPVAL                         R8 3
       73 GETTABLEKS                       R8 R8 K17 ["createElement"]
       75 GETUPVAL                         R9 4
       76 GETUPVAL                         R10 5
       77 MOVE                             R11 R0
       78 DUPTABLE                         R12 K21 [{"tag", "onActivated", "ref"}]
       79 GETTABLEKS                       R13 R3 K22 ["segment"]
       81 GETTABLEKS                       R13 R13 K18 ["tag"]
       83 SETTABLEKS                       R13 R12 K18 ["tag"]
       85 NEWCLOSURE                       R13 P0
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       89 SETTABLEKS                       R1 R12 K20 ["ref"]
       91 CALL                             R10 2 1
       92 DUPTABLE                         R11 K24 [{"Text"}]
       93 JUMPIFNOT                        R4 ; [+19]
       94 GETUPVAL                         R12 3
       95 GETTABLEKS                       R12 R12 K17 ["createElement"]
       97 GETUPVAL                         R13 6
       98 DUPTABLE                         R14 K26 [{"name", "variant", "size", "style"}]
       99 SETTABLEKS                       R5 R14 K15 ["name"]
      101 SETTABLEKS                       R6 R14 K16 ["variant"]
      103 GETTABLEKS                       R15 R7 K0 ["size"]
      105 SETTABLEKS                       R15 R14 K0 ["size"]
      107 GETTABLEKS                       R15 R7 K25 ["style"]
      109 SETTABLEKS                       R15 R14 K25 ["style"]
      111 CALL                             R12 2 1
      112 JUMP                             ; [+16]
      113 GETUPVAL                         R12 3
      114 GETTABLEKS                       R12 R12 K17 ["createElement"]
      116 GETUPVAL                         R13 7
      117 DUPTABLE                         R14 K27 [{"tag", "Text"}]
      118 GETTABLEKS                       R15 R3 K6 ["text"]
      120 GETTABLEKS                       R15 R15 K18 ["tag"]
      122 SETTABLEKS                       R15 R14 K18 ["tag"]
      124 GETTABLEKS                       R15 R0 K6 ["text"]
      126 SETTABLEKS                       R15 R14 K23 ["Text"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K23 ["Text"]
      131 CALL                             R8 3 -1
      132 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Icon"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Enums"]
       58 GETTABLEKS                       R10 R10 K17 ["IconSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K16 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K19 ["Providers"]
       72 GETTABLEKS                       R12 R12 K20 ["Style"]
       74 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Utility"]
       81 GETTABLEKS                       R13 R13 K22 ["withCommonProps"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETIMPORT                        R14 K1 [script]
       88 GETTABLEKS                       R14 R14 K4 ["Parent"]
       90 GETTABLEKS                       R14 R14 K23 ["useSegmentedControlVariants"]
       92 CALL                             R13 1 1
       93 DUPCLOSURE                       R14 K24 [PROTO_1]
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R6
      102 GETTABLEKS                       R15 R2 K25 ["memo"]
      104 GETTABLEKS                       R16 R2 K26 ["forwardRef"]
      106 MOVE                             R17 R14
      107 CALL                             R16 1 -1
      108 CALL                             R15 -1 -1
      109 RETURN                           R15 -1
