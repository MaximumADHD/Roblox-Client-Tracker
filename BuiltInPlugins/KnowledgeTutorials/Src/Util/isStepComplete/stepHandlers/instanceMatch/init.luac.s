PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["target"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 GETUPVAL                         R3 0
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K4 [tostring]
        9 CALL                             R4 1 1
       10 CALL                             R2 2 2
       11 JUMPIFNOT                        R2 ; [+1]
       12 JUMPIF                           R3 ; [+2]
       13 LOADB                            R4 0
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R0 K5 ["target-state-Selected"]
       17 JUMPIFNOT                        R4 ; [+14]
       18 GETIMPORT                        R4 K8 [table.find]
       20 GETUPVAL                         R5 1
       21 NAMECALL                         R5 R5 K9 ["Get"]
       23 CALL                             R5 1 1
       24 JUMPIF                           R5 ; [+2]
       25 NEWTABLE                         R5 0 0
       27 MOVE                             R6 R3
       28 CALL                             R4 2 1
       29 JUMPIF                           R4 ; [+2]
       30 LOADB                            R4 0
       31 RETURN                           R4 1
       32 MOVE                             R4 R0
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETIMPORT                        R9 K12 [string.match]
       38 MOVE                             R10 R7
       39 LOADK                            R11 K13 ["^target%-prop%-(.+)$"]
       40 CALL                             R9 2 1
       41 JUMPIFNOT                        R9 ; [+72]
       42 GETIMPORT                        R10 K2 [pcall]
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R9
       47 CALL                             R10 1 2
       48 JUMPIF                           R10 ; [+13]
       49 GETIMPORT                        R12 K15 [warn]
       51 LOADK                            R14 K16 ["Error accessing property %* on instance %*: %*"]
       52 MOVE                             R16 R9
       53 MOVE                             R17 R1
       54 MOVE                             R18 R11
       55 NAMECALL                         R14 R14 K17 ["format"]
       57 CALL                             R14 4 1
       58 MOVE                             R13 R14
       59 CALL                             R12 1 0
       60 LOADB                            R12 0
       61 RETURN                           R12 1
       62 GETIMPORT                        R12 K12 [string.match]
       64 FASTCALL1                        TOSTRING R8 ; [+3]
       65 MOVE                             R14 R8
       66 GETIMPORT                        R13 K4 [tostring]
       68 CALL                             R13 1 1
       69 LOADK                            R14 K18 ["^=(.-)%((.+)%)$"]
       70 CALL                             R12 2 2
       71 JUMPIFNOT                        R12 ; [+3]
       72 GETUPVAL                         R15 2
       73 GETTABLE                         R14 R15 R12
       74 JUMPIF                           R14 ; [+1]
       75 LOADK                            R12 K19 ["EQUALS"]
       76 GETUPVAL                         R14 3
       77 MOVE                             R15 R13
       78 JUMPIF                           R15 ; [+5]
       79 FASTCALL1                        TOSTRING R8 ; [+3]
       80 MOVE                             R16 R8
       81 GETIMPORT                        R15 K4 [tostring]
       83 CALL                             R15 1 1
       84 FASTCALL1                        TYPEOF R11 ; [+3]
       85 MOVE                             R17 R11
       86 GETIMPORT                        R16 K21 [typeof]
       88 CALL                             R16 1 1
       89 CALL                             R14 2 1
       90 GETIMPORT                        R15 K2 [pcall]
       92 GETUPVAL                         R17 2
       93 GETTABLE                         R16 R17 R12
       94 MOVE                             R17 R14
       95 MOVE                             R18 R11
       96 CALL                             R15 3 2
       97 JUMPIF                           R15 ; [+13]
       98 GETIMPORT                        R17 K15 [warn]
      100 LOADK                            R19 K22 ["Error in matcher '%*' for property '%*': %*"]
      101 MOVE                             R21 R12
      102 MOVE                             R22 R9
      103 MOVE                             R23 R16
      104 NAMECALL                         R19 R19 K17 ["format"]
      106 CALL                             R19 4 1
      107 MOVE                             R18 R19
      108 CALL                             R17 1 0
      109 LOADB                            R17 0
      110 RETURN                           R17 1
      111 JUMPIF                           R16 ; [+2]
      112 LOADB                            R17 0
      113 RETURN                           R17 1
      114 FORGLOOP                         R4 2 ; [-79]
      116 LOADB                            R4 1
      117 RETURN                           R4 1

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
