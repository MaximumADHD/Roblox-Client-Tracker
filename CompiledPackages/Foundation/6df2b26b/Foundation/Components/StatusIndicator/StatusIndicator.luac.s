PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["max"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["max"]
        7 JUMPIFNOTLT                      R1 R0 ; [+10]
        9 LOADK                            R2 K1 ["%*+"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["max"]
       13 NAMECALL                         R2 R2 K2 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K4 [tostring]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R2 K0 ["value"]
        8 JUMPIFNOTEQKNIL                  R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R5 3
       13 MOVE                             R6 R3
       14 GETTABLEKS                       R7 R2 K1 ["variant"]
       16 MOVE                             R8 R4
       17 CALL                             R5 3 1
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R8 0 1
       25 GETTABLEKS                       R9 R2 K3 ["max"]
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R7 R8 K4 ["createElement"]
       33 GETUPVAL                         R8 5
       34 GETUPVAL                         R9 6
       35 MOVE                             R10 R2
       36 DUPTABLE                         R11 K7 [{"tag", "ref"}]
       37 GETTABLEKS                       R13 R5 K8 ["container"]
       39 GETTABLEKS                       R12 R13 K5 ["tag"]
       41 SETTABLEKS                       R12 R11 K5 ["tag"]
       43 SETTABLEKS                       R1 R11 K6 ["ref"]
       45 CALL                             R9 2 1
       46 DUPTABLE                         R10 K10 [{"Text"}]
       47 JUMPIFNOT                        R4 ; [+48]
       48 GETUPVAL                         R12 4
       49 GETTABLEKS                       R11 R12 K4 ["createElement"]
       51 GETUPVAL                         R12 7
       52 DUPTABLE                         R13 K13 [{"Text", "textStyle", "tag", "testId"}]
       53 GETUPVAL                         R16 8
       54 GETTABLEKS                       R15 R16 K14 ["isBinding"]
       56 GETTABLEKS                       R16 R2 K0 ["value"]
       58 CALL                             R15 1 1
       59 JUMPIFNOT                        R15 ; [+7]
       60 GETTABLEKS                       R14 R2 K0 ["value"]
       62 MOVE                             R16 R6
       63 NAMECALL                         R14 R14 K15 ["map"]
       65 CALL                             R14 2 1
       66 JUMP                             ; [+4]
       67 MOVE                             R14 R6
       68 GETTABLEKS                       R15 R2 K0 ["value"]
       70 CALL                             R14 1 1
       71 SETTABLEKS                       R14 R13 K9 ["Text"]
       73 GETTABLEKS                       R15 R5 K16 ["content"]
       75 GETTABLEKS                       R14 R15 K17 ["style"]
       77 SETTABLEKS                       R14 R13 K11 ["textStyle"]
       79 GETTABLEKS                       R15 R5 K16 ["content"]
       81 GETTABLEKS                       R14 R15 K5 ["tag"]
       83 SETTABLEKS                       R14 R13 K5 ["tag"]
       85 LOADK                            R15 K18 ["%*--text"]
       86 GETTABLEKS                       R17 R2 K12 ["testId"]
       88 NAMECALL                         R15 R15 K19 ["format"]
       90 CALL                             R15 2 1
       91 MOVE                             R14 R15
       92 SETTABLEKS                       R14 R13 K12 ["testId"]
       94 CALL                             R11 2 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R11
       97 SETTABLEKS                       R11 R10 K9 ["Text"]
       99 CALL                             R7 3 -1
      100 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R7 R0 K9 ["Providers"]
       23 GETTABLEKS                       R6 R7 K10 ["Style"]
       25 GETTABLEKS                       R5 R6 K11 ["useTokens"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K12 ["Components"]
       32 GETTABLEKS                       R6 R7 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K14 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R9 K15 ["Text"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Utility"]
       53 GETTABLEKS                       R9 R10 K17 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Utility"]
       60 GETTABLEKS                       R10 R11 K18 ["withCommonProps"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETIMPORT                        R13 K1 [script]
       67 GETTABLEKS                       R12 R13 K4 ["Parent"]
       69 GETTABLEKS                       R11 R12 K19 ["useStatusIndicatorVariants"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K20 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["StatusIndicatorVariant"]
       78 CALL                             R11 1 1
       79 DUPTABLE                         R12 K25 [{"variant", "max", "testId"}]
       80 GETTABLEKS                       R13 R11 K26 ["Standard"]
       82 SETTABLEKS                       R13 R12 K22 ["variant"]
       84 LOADK                            R13 K27 [∞]
       85 SETTABLEKS                       R13 R12 K23 ["max"]
       87 LOADK                            R13 K28 ["--foundation-status-indicator"]
       88 SETTABLEKS                       R13 R12 K24 ["testId"]
       90 DUPCLOSURE                       R13 K29 [PROTO_1]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R3
      100 GETTABLEKS                       R14 R2 K30 ["memo"]
      102 GETTABLEKS                       R15 R2 K31 ["forwardRef"]
      104 MOVE                             R16 R13
      105 CALL                             R15 1 -1
      106 CALL                             R14 -1 -1
      107 RETURN                           R14 -1
