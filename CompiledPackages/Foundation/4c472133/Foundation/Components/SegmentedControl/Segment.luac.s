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
        6 CALL                             R3 2 1
        7 GETIMPORT                        R4 K2 [_G]
        9 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
       11 JUMPIFNOTEQKB                    R4 TRUE ; [+18]
       13 LOADB                            R5 1
       14 GETTABLEKS                       R6 R0 K4 ["text"]
       16 JUMPIFEQKNIL                     R6 ; [+7]
       18 GETTABLEKS                       R6 R0 K5 ["icon"]
       20 JUMPIFEQKNIL                     R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       26 LOADK                            R6 K6 ["Segment: `text` and `icon` are mutually exclusive. Only one can be provided."]
       27 GETIMPORT                        R4 K8 [assert]
       29 CALL                             R4 2 0
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K9 ["FoundationSegmentedControlIconSupport"]
       37 JUMPIFNOT                        R8 ; [+26]
       38 GETTABLEKS                       R8 R0 K5 ["icon"]
       40 JUMPIFNOTEQKNIL                  R8 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 JUMPIFNOT                        R4 ; [+19]
       45 GETTABLEKS                       R9 R0 K5 ["icon"]
       47 FASTCALL1                        TYPEOF R9 ; [+2]
       48 GETIMPORT                        R8 K11 [typeof]
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKS                    R8 K12 ["table"] ; [+8]
       53 GETTABLEKS                       R8 R0 K5 ["icon"]
       55 GETTABLEKS                       R5 R8 K13 ["name"]
       57 GETTABLEKS                       R6 R8 K14 ["variant"]
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R5 R0 K5 ["icon"]
       62 GETTABLEKS                       R7 R3 K5 ["icon"]
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K15 ["createElement"]
       67 GETUPVAL                         R9 4
       68 GETUPVAL                         R10 5
       69 MOVE                             R11 R0
       70 DUPTABLE                         R12 K19 [{"tag", "onActivated", "ref"}]
       71 GETTABLEKS                       R13 R3 K20 ["segment"]
       73 GETTABLEKS                       R13 R13 K16 ["tag"]
       75 SETTABLEKS                       R13 R12 K16 ["tag"]
       77 NEWCLOSURE                       R13 P0
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R13 R12 K17 ["onActivated"]
       81 SETTABLEKS                       R1 R12 K18 ["ref"]
       83 CALL                             R10 2 1
       84 DUPTABLE                         R11 K22 [{"Text"}]
       85 JUMPIFNOT                        R4 ; [+19]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K15 ["createElement"]
       89 GETUPVAL                         R13 6
       90 DUPTABLE                         R14 K24 [{"name", "variant", "size", "style"}]
       91 SETTABLEKS                       R5 R14 K13 ["name"]
       93 SETTABLEKS                       R6 R14 K14 ["variant"]
       95 GETTABLEKS                       R15 R7 K0 ["size"]
       97 SETTABLEKS                       R15 R14 K0 ["size"]
       99 GETTABLEKS                       R15 R7 K23 ["style"]
      101 SETTABLEKS                       R15 R14 K23 ["style"]
      103 CALL                             R12 2 1
      104 JUMP                             ; [+16]
      105 GETUPVAL                         R12 3
      106 GETTABLEKS                       R12 R12 K15 ["createElement"]
      108 GETUPVAL                         R13 7
      109 DUPTABLE                         R14 K25 [{"tag", "Text"}]
      110 GETTABLEKS                       R15 R3 K4 ["text"]
      112 GETTABLEKS                       R15 R15 K16 ["tag"]
      114 SETTABLEKS                       R15 R14 K16 ["tag"]
      116 GETTABLEKS                       R15 R0 K4 ["text"]
      118 SETTABLEKS                       R15 R14 K21 ["Text"]
      120 CALL                             R12 2 1
      121 SETTABLEKS                       R12 R11 K21 ["Text"]
      123 CALL                             R8 3 -1
      124 RETURN                           R8 -1

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
