PROTO_0:
        0 JUMPIFNOT                        R0 ; [+19]
        1 GETTABLEKS                       R1 R0 K0 ["props"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETTABLEKS                       R1 R0 K0 ["props"]
        6 GETTABLEKS                       R1 R1 K1 ["LayoutOrder"]
        8 JUMPIFNOT                        R1 ; [+11]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K1 ["LayoutOrder"]
       14 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       16 GETIMPORT                        R1 K4 [math.max]
       18 CALL                             R1 2 1
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 LOADN                            R3 0
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["Children"]
        8 GETTABLEKS                       R4 R4 K1 ["forEach"]
       10 GETTABLEKS                       R5 R2 K2 ["children"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          REF R3
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R6 R2 K3 ["isContained"]
       17 FASTCALL1                        TYPE R6 ; [+2]
       18 GETIMPORT                        R5 K5 [type]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K6 ["boolean"] ; [+4]
       23 GETTABLEKS                       R4 R2 K3 ["isContained"]
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R4 R2 K3 ["isContained"]
       28 GETTABLEKS                       R4 R4 K3 ["isContained"]
       30 JUMPIFNOT                        R4 ; [+2]
       31 LOADB                            R5 1
       32 JUMP                             ; [+14]
       33 GETTABLEKS                       R7 R2 K3 ["isContained"]
       35 FASTCALL1                        TYPE R7 ; [+2]
       36 GETIMPORT                        R6 K5 [type]
       38 CALL                             R6 1 1
       39 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+6]
       41 GETTABLEKS                       R5 R2 K3 ["isContained"]
       43 GETTABLEKS                       R5 R5 K8 ["hasMargin"]
       45 JUMP                             ; [+1]
       46 LOADB                            R5 1
       47 GETTABLEKS                       R8 R2 K9 ["hasDivider"]
       49 FASTCALL1                        TYPE R8 ; [+2]
       50 GETIMPORT                        R7 K5 [type]
       52 CALL                             R7 1 1
       53 JUMPIFNOTEQKS                    R7 K6 ["boolean"] ; [+4]
       55 GETTABLEKS                       R6 R2 K9 ["hasDivider"]
       57 JUMP                             ; [+4]
       58 GETTABLEKS                       R6 R2 K9 ["hasDivider"]
       60 GETTABLEKS                       R6 R6 K10 ["isInset"]
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K11 ["createElement"]
       65 GETUPVAL                         R8 3
       66 GETUPVAL                         R9 4
       67 MOVE                             R10 R2
       68 DUPTABLE                         R11 K14 [{"tag", "ref"}]
       69 NEWTABLE                         R12 2 0
       71 LOADB                            R13 1
       72 SETTABLEKS                       R13 R12 K15 ["col size-full-0 auto-y"]
       74 SETTABLEKS                       R4 R12 K16 ["stroke-default radius-large"]
       76 SETTABLEKS                       R12 R11 K12 ["tag"]
       78 SETTABLEKS                       R1 R11 K13 ["ref"]
       80 CALL                             R9 2 1
       81 DUPTABLE                         R10 K18 [{"ListContext"}]
       82 GETUPVAL                         R11 2
       83 GETTABLEKS                       R11 R11 K11 ["createElement"]
       85 GETUPVAL                         R12 5
       86 GETTABLEKS                       R12 R12 K19 ["Provider"]
       88 DUPTABLE                         R13 K21 [{"value"}]
       89 DUPTABLE                         R14 K25 [{"hasDivider", "isContained", "isInset", "hasMargin", "lastLayoutOrder", "size", "testId"}]
       90 GETTABLEKS                       R15 R2 K9 ["hasDivider"]
       92 SETTABLEKS                       R15 R14 K9 ["hasDivider"]
       94 SETTABLEKS                       R4 R14 K3 ["isContained"]
       96 SETTABLEKS                       R6 R14 K10 ["isInset"]
       98 SETTABLEKS                       R5 R14 K8 ["hasMargin"]
      100 SETTABLEKS                       R3 R14 K22 ["lastLayoutOrder"]
      102 GETTABLEKS                       R15 R2 K23 ["size"]
      104 SETTABLEKS                       R15 R14 K23 ["size"]
      106 GETTABLEKS                       R15 R2 K24 ["testId"]
      108 SETTABLEKS                       R15 R14 K24 ["testId"]
      110 SETTABLEKS                       R14 R13 K20 ["value"]
      112 GETTABLEKS                       R14 R2 K2 ["children"]
      114 CALL                             R11 3 1
      115 SETTABLEKS                       R11 R10 K17 ["ListContext"]
      117 CALL                             R7 3 -1
      118 CLOSEUPVALS                      R3
      119 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Utility"]
       39 GETTABLEKS                       R7 R7 K14 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["withDefaults"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R9 R9 K4 ["Parent"]
       55 GETTABLEKS                       R9 R9 K16 ["ListContext"]
       57 CALL                             R8 1 1
       58 DUPTABLE                         R9 K20 [{"hasDivider", "isContained", "testId"}]
       59 DUPTABLE                         R10 K22 [{"hasDivider", "isInset"}]
       60 LOADB                            R11 1
       61 SETTABLEKS                       R11 R10 K17 ["hasDivider"]
       63 LOADB                            R11 1
       64 SETTABLEKS                       R11 R10 K21 ["isInset"]
       66 SETTABLEKS                       R10 R9 K17 ["hasDivider"]
       68 DUPTABLE                         R10 K24 [{"isContained", "hasMargin"}]
       69 LOADB                            R11 0
       70 SETTABLEKS                       R11 R10 K18 ["isContained"]
       72 LOADB                            R11 1
       73 SETTABLEKS                       R11 R10 K23 ["hasMargin"]
       75 SETTABLEKS                       R10 R9 K18 ["isContained"]
       77 LOADK                            R10 K25 ["--foundation-list"]
       78 SETTABLEKS                       R10 R9 K19 ["testId"]
       80 DUPCLOSURE                       R10 K26 [PROTO_1]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 GETTABLEKS                       R11 R2 K27 ["memo"]
       89 GETTABLEKS                       R12 R2 K28 ["forwardRef"]
       91 MOVE                             R13 R10
       92 CALL                             R12 1 -1
       93 CALL                             R11 -1 -1
       94 RETURN                           R11 -1
