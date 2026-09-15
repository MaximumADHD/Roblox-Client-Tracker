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
       41 JUMPIFNOT                        R9 ; [+70]
       42 GETIMPORT                        R10 K2 [pcall]
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R9
       47 CALL                             R10 1 2
       48 JUMPIF                           R10 ; [+12]
       49 GETIMPORT                        R12 K15 [warn]
       51 LOADK                            R13 K16 ["Error accessing property %* on instance %*: %*"]
       52 MOVE                             R15 R9
       53 MOVE                             R16 R1
       54 MOVE                             R17 R11
       55 NAMECALL                         R13 R13 K17 ["format"]
       57 CALL                             R13 4 1
       58 CALL                             R12 1 0
       59 LOADB                            R12 0
       60 RETURN                           R12 1
       61 GETIMPORT                        R12 K12 [string.match]
       63 FASTCALL1                        TOSTRING R8 ; [+3]
       64 MOVE                             R14 R8
       65 GETIMPORT                        R13 K4 [tostring]
       67 CALL                             R13 1 1
       68 LOADK                            R14 K18 ["^=(.-)%((.+)%)$"]
       69 CALL                             R12 2 2
       70 JUMPIFNOT                        R12 ; [+3]
       71 GETUPVAL                         R15 2
       72 GETTABLE                         R14 R15 R12
       73 JUMPIF                           R14 ; [+1]
       74 LOADK                            R12 K19 ["EQUALS"]
       75 GETUPVAL                         R14 3
       76 MOVE                             R15 R13
       77 JUMPIF                           R15 ; [+5]
       78 FASTCALL1                        TOSTRING R8 ; [+3]
       79 MOVE                             R16 R8
       80 GETIMPORT                        R15 K4 [tostring]
       82 CALL                             R15 1 1
       83 FASTCALL1                        TYPEOF R11 ; [+3]
       84 MOVE                             R17 R11
       85 GETIMPORT                        R16 K21 [typeof]
       87 CALL                             R16 1 1
       88 CALL                             R14 2 1
       89 GETIMPORT                        R15 K2 [pcall]
       91 GETUPVAL                         R17 2
       92 GETTABLE                         R16 R17 R12
       93 MOVE                             R17 R14
       94 MOVE                             R18 R11
       95 CALL                             R15 3 2
       96 JUMPIF                           R15 ; [+12]
       97 GETIMPORT                        R17 K15 [warn]
       99 LOADK                            R18 K22 ["Error in matcher '%*' for property '%*': %*"]
      100 MOVE                             R20 R12
      101 MOVE                             R21 R9
      102 MOVE                             R22 R16
      103 NAMECALL                         R18 R18 K17 ["format"]
      105 CALL                             R18 4 1
      106 CALL                             R17 1 0
      107 LOADB                            R17 0
      108 RETURN                           R17 1
      109 JUMPIF                           R16 ; [+2]
      110 LOADB                            R17 0
      111 RETURN                           R17 1
      112 FORGLOOP                         R4 2 ; [-77]
      114 LOADB                            R4 1
      115 RETURN                           R4 1

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
