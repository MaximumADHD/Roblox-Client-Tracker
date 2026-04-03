PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["progress"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["progressGoal"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["parsing"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 DUPCLOSURE                       R3 K1 [PROTO_1]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 DUPCLOSURE                       R4 K2 [PROTO_2]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 DUPCLOSURE                       R5 K3 [PROTO_3]
       11 CALL                             R4 1 1
       12 JUMPIF                           R3 ; [+1]
       13 JUMPIFNOT                        R4 ; [+2]
       14 JUMPIFNOTEQKN                    R2 K4 [0] ; [+4]
       16 NEWTABLE                         R5 0 0
       18 RETURN                           R5 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K5 ["use"]
       22 CALL                             R5 0 1
       23 LOADK                            R8 K6 ["ImportQueue"]
       24 LOADK                            R9 K7 ["FilesRemaining2"]
       25 DUPTABLE                         R10 K10 [{"currentFileIndex", "totalFiles"}]
       26 FASTCALL1                        MATH_CEIL R1 ; [+3]
       27 MOVE                             R13 R1
       28 GETIMPORT                        R12 K13 [math.ceil]
       30 CALL                             R12 1 1
       31 FASTCALL1                        TOSTRING R12 ; [+2]
       32 GETIMPORT                        R11 K15 [tostring]
       34 CALL                             R11 1 1
       35 SETTABLEKS                       R11 R10 K8 ["currentFileIndex"]
       37 FASTCALL1                        TOSTRING R2 ; [+3]
       38 MOVE                             R12 R2
       39 GETIMPORT                        R11 K15 [tostring]
       41 CALL                             R11 1 1
       42 SETTABLEKS                       R11 R10 K9 ["totalFiles"]
       44 NAMECALL                         R6 R5 K16 ["getText"]
       46 CALL                             R6 4 1
       47 DIV                              R8 R1 R2
       48 MULK                             R7 R8 K17 [100]
       49 MOVE                             R8 R6
       50 JUMPIFNOT                        R3 ; [+13]
       51 LOADK                            R11 K6 ["ImportQueue"]
       52 LOADK                            R12 K18 ["ParsingFiles"]
       53 NAMECALL                         R9 R5 K16 ["getText"]
       55 CALL                             R9 3 1
       56 LOADK                            R10 K19 ["%* - %*"]
       57 MOVE                             R12 R6
       58 MOVE                             R13 R9
       59 NAMECALL                         R10 R10 K20 ["format"]
       61 CALL                             R10 3 1
       62 MOVE                             R8 R10
       63 JUMP                             ; [+22]
       64 JUMPIFNOT                        R4 ; [+21]
       65 LOADK                            R11 K6 ["ImportQueue"]
       66 LOADK                            R12 K21 ["Complete"]
       67 NAMECALL                         R9 R5 K16 ["getText"]
       69 CALL                             R9 3 1
       70 LOADK                            R10 K22 ["%* - %*%% %*"]
       71 MOVE                             R12 R6
       72 FASTCALL1                        MATH_FLOOR R7 ; [+3]
       73 MOVE                             R15 R7
       74 GETIMPORT                        R14 K24 [math.floor]
       76 CALL                             R14 1 1
       77 FASTCALL1                        TOSTRING R14 ; [+2]
       78 GETIMPORT                        R13 K15 [tostring]
       80 CALL                             R13 1 1
       81 MOVE                             R14 R9
       82 NAMECALL                         R10 R10 K20 ["format"]
       84 CALL                             R10 4 1
       85 MOVE                             R8 R10
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R9 R10 K25 ["new"]
       89 CALL                             R9 0 1
       90 GETUPVAL                         R10 3
       91 GETUPVAL                         R12 4
       92 GETTABLEKS                       R11 R12 K26 ["View"]
       94 DUPTABLE                         R12 K28 [{"tag"}]
       95 LOADK                            R13 K29 ["col size-full-0 auto-y padding-x-small padding-bottom-small"]
       96 SETTABLEKS                       R13 R12 K27 ["tag"]
       98 DUPTABLE                         R13 K32 [{"Progress", "Text"}]
       99 GETUPVAL                         R14 3
      100 GETUPVAL                         R16 4
      101 GETTABLEKS                       R15 R16 K26 ["View"]
      103 DUPTABLE                         R16 K28 [{"tag"}]
      104 LOADK                            R17 K33 ["size-full-0 auto-y padding-y-small"]
      105 SETTABLEKS                       R17 R16 K27 ["tag"]
      107 GETUPVAL                         R17 3
      108 GETUPVAL                         R19 4
      109 GETTABLEKS                       R18 R19 K30 ["Progress"]
      111 DUPTABLE                         R19 K38 [{"value", "size", "shape", "LayoutOrder"}]
      112 SETTABLEKS                       R7 R19 K34 ["value"]
      114 GETUPVAL                         R22 5
      115 GETTABLEKS                       R21 R22 K39 ["ProgressSize"]
      117 GETTABLEKS                       R20 R21 K40 ["Medium"]
      119 SETTABLEKS                       R20 R19 K35 ["size"]
      121 GETUPVAL                         R22 5
      122 GETTABLEKS                       R21 R22 K41 ["ProgressShape"]
      124 GETTABLEKS                       R20 R21 K42 ["Bar"]
      126 SETTABLEKS                       R20 R19 K36 ["shape"]
      128 NAMECALL                         R20 R9 K43 ["getNextOrder"]
      130 CALL                             R20 1 1
      131 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      133 CALL                             R17 2 -1
      134 CALL                             R14 -1 1
      135 SETTABLEKS                       R14 R13 K30 ["Progress"]
      137 GETUPVAL                         R14 3
      138 GETUPVAL                         R16 4
      139 GETTABLEKS                       R15 R16 K31 ["Text"]
      141 DUPTABLE                         R16 K44 [{"tag", "Text", "LayoutOrder"}]
      142 LOADK                            R17 K45 ["size-full-0 auto-y content-emphasis text-body-small text-align-x-left text-align-y-center"]
      143 SETTABLEKS                       R17 R16 K27 ["tag"]
      145 SETTABLEKS                       R8 R16 K31 ["Text"]
      147 NAMECALL                         R17 R9 K43 ["getNextOrder"]
      149 CALL                             R17 1 1
      150 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K31 ["Text"]
      155 CALL                             R10 3 -1
      156 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["Localization"]
       36 GETTABLEKS                       R9 R5 K14 ["Util"]
       38 GETTABLEKS                       R8 R9 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R12 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R12 K17 ["Hooks"]
       46 GETTABLEKS                       R10 R11 K18 ["useSelector"]
       48 CALL                             R9 1 1
       49 DUPCLOSURE                       R10 K19 [PROTO_4]
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 RETURN                           R10 1
