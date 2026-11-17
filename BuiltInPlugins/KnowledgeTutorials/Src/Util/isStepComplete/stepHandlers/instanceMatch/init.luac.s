PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["target"]
        2 GETUPVAL                         R3 0
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K2 [tostring]
        7 CALL                             R4 1 1
        8 FASTPCALL                        pcall 2 ; [+2]
        9 GETIMPORT                        R2 K4 [pcall]
       11 CALL                             R2 2 2
       12 JUMPIFNOT                        R2 ; [+1]
       13 JUMPIF                           R3 ; [+2]
       14 LOADB                            R4 0
       15 RETURN                           R4 1
       16 GETTABLEKS                       R4 R0 K5 ["target-state-Selected"]
       18 JUMPIFNOT                        R4 ; [+14]
       19 GETIMPORT                        R4 K8 [table.find]
       21 GETUPVAL                         R5 1
       22 NAMECALL                         R5 R5 K9 ["Get"]
       24 CALL                             R5 1 1
       25 JUMPIF                           R5 ; [+2]
       26 NEWTABLE                         R5 0 0
       28 MOVE                             R6 R3
       29 CALL                             R4 2 1
       30 JUMPIF                           R4 ; [+2]
       31 LOADB                            R4 0
       32 RETURN                           R4 1
       33 MOVE                             R4 R0
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETIMPORT                        R9 K12 [string.match]
       39 MOVE                             R10 R7
       40 LOADK                            R11 K13 ["^target%-prop%-(.+)$"]
       41 CALL                             R9 2 1
       42 JUMPIFNOT                        R9 ; [+72]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R9
       46 FASTPCALL                        pcall 1 ; [+2]
       47 GETIMPORT                        R10 K4 [pcall]
       49 CALL                             R10 1 2
       50 JUMPIF                           R10 ; [+12]
       51 GETIMPORT                        R12 K15 [warn]
       53 LOADK                            R13 K16 ["Error accessing property %* on instance %*: %*"]
       54 MOVE                             R15 R9
       55 MOVE                             R16 R1
       56 MOVE                             R17 R11
       57 NAMECALL                         R13 R13 K17 ["format"]
       59 CALL                             R13 4 1
       60 CALL                             R12 1 0
       61 LOADB                            R12 0
       62 RETURN                           R12 1
       63 GETIMPORT                        R12 K12 [string.match]
       65 FASTCALL1                        TOSTRING R8 ; [+3]
       66 MOVE                             R14 R8
       67 GETIMPORT                        R13 K2 [tostring]
       69 CALL                             R13 1 1
       70 LOADK                            R14 K18 ["^=(.-)%((.+)%)$"]
       71 CALL                             R12 2 2
       72 JUMPIFNOT                        R12 ; [+3]
       73 GETUPVAL                         R15 2
       74 GETTABLE                         R14 R15 R12
       75 JUMPIF                           R14 ; [+1]
       76 LOADK                            R12 K19 ["EQUALS"]
       77 GETUPVAL                         R14 3
       78 MOVE                             R15 R13
       79 JUMPIF                           R15 ; [+5]
       80 FASTCALL1                        TOSTRING R8 ; [+3]
       81 MOVE                             R16 R8
       82 GETIMPORT                        R15 K2 [tostring]
       84 CALL                             R15 1 1
       85 FASTCALL1                        TYPEOF R11 ; [+3]
       86 MOVE                             R17 R11
       87 GETIMPORT                        R16 K21 [typeof]
       89 CALL                             R16 1 1
       90 CALL                             R14 2 1
       91 GETUPVAL                         R17 2
       92 GETTABLE                         R16 R17 R12
       93 MOVE                             R17 R14
       94 MOVE                             R18 R11
       95 FASTPCALL                        pcall 3 ; [+2]
       96 GETIMPORT                        R15 K4 [pcall]
       98 CALL                             R15 3 2
       99 JUMPIF                           R15 ; [+12]
      100 GETIMPORT                        R17 K15 [warn]
      102 LOADK                            R18 K22 ["Error in matcher '%*' for property '%*': %*"]
      103 MOVE                             R20 R12
      104 MOVE                             R21 R9
      105 MOVE                             R22 R16
      106 NAMECALL                         R18 R18 K17 ["format"]
      108 CALL                             R18 4 1
      109 CALL                             R17 1 0
      110 LOADB                            R17 0
      111 RETURN                           R17 1
      112 JUMPIF                           R16 ; [+2]
      113 LOADB                            R17 0
      114 RETURN                           R17 1
      115 FORGLOOP                         R4 2 ; [-79]
      117 LOADB                            R4 1
      118 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Selection"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R5 K8 ["Util"]
       31 GETTABLEKS                       R5 R5 K11 ["findInstance"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETIMPORT                        R6 K1 [script]
       38 GETTABLEKS                       R6 R6 K12 ["matchers"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K13 ["attemptTypeConversion"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K14 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 RETURN                           R7 1
