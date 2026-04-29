PROTO_0:
        0 JUMPIFNOT                        R0 ; [+14]
        1 DUPTABLE                         R1 K1 [{"Priority"}]
        2 GETTABLEKS                       R2 R0 K2 ["StyleRule_Priority"]
        4 SETTABLEKS                       R2 R1 K0 ["Priority"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K2 ["StyleRule_Priority"]
        9 DUPTABLE                         R2 K5 [{"InstanceProperties", "StyleProperties"}]
       10 SETTABLEKS                       R1 R2 K3 ["InstanceProperties"]
       12 SETTABLEKS                       R0 R2 K4 ["StyleProperties"]
       14 RETURN                           R2 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["StyleProperties"]
        4 NAMECALL                         R0 R0 K1 ["SetProperties"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["InstanceProperties"]
        4 GETTABLEKS                       R1 R2 K1 ["Priority"]
        6 SETTABLEKS                       R1 R0 K1 ["Priority"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["StyleRule"]
        3 CALL                             R4 1 1
        4 JUMPIFNOTEQKS                    R0 K4 [""] ; [+3]
        6 LOADK                            R5 K5 ["Default"]
        7 JUMP                             ; [+1]
        8 MOVE                             R5 R0
        9 SETTABLEKS                       R5 R4 K6 ["Name"]
       11 SETTABLEKS                       R0 R4 K7 ["Selector"]
       13 JUMPIFNOT                        R1 ; [+14]
       14 DUPTABLE                         R6 K9 [{"Priority"}]
       15 GETTABLEKS                       R7 R1 K10 ["StyleRule_Priority"]
       17 SETTABLEKS                       R7 R6 K8 ["Priority"]
       19 LOADNIL                          R7
       20 SETTABLEKS                       R7 R1 K10 ["StyleRule_Priority"]
       22 DUPTABLE                         R5 K13 [{"InstanceProperties", "StyleProperties"}]
       23 SETTABLEKS                       R6 R5 K11 ["InstanceProperties"]
       25 SETTABLEKS                       R1 R5 K12 ["StyleProperties"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 JUMPIFNOT                        R5 ; [+47]
       30 GETIMPORT                        R6 K15 [pcall]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 CALL                             R6 1 2
       36 JUMPIF                           R6 ; [+13]
       37 GETIMPORT                        R8 K17 [warn]
       39 LOADK                            R10 K18 ["Failed to load properties for StyleRule: %*"]
       40 MOVE                             R12 R0
       41 NAMECALL                         R10 R10 K19 ["format"]
       43 CALL                             R10 2 1
       44 MOVE                             R9 R10
       45 CALL                             R8 1 0
       46 GETIMPORT                        R8 K17 [warn]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 0
       50 GETTABLEKS                       R9 R5 K11 ["InstanceProperties"]
       52 GETTABLEKS                       R8 R9 K8 ["Priority"]
       54 JUMPIFNOT                        R8 ; [+22]
       55 GETIMPORT                        R8 K15 [pcall]
       57 NEWCLOSURE                       R9 P1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CALL                             R8 1 2
       61 MOVE                             R6 R8
       62 MOVE                             R7 R9
       63 JUMPIF                           R6 ; [+13]
       64 GETIMPORT                        R8 K17 [warn]
       66 LOADK                            R10 K20 ["Failed to set priority for StyleRule: %*"]
       67 MOVE                             R12 R0
       68 NAMECALL                         R10 R10 K19 ["format"]
       70 CALL                             R10 2 1
       71 MOVE                             R9 R10
       72 CALL                             R8 1 0
       73 GETIMPORT                        R8 K17 [warn]
       75 MOVE                             R9 R7
       76 CALL                             R8 1 0
       77 JUMPIFNOT                        R2 ; [+40]
       78 LOADNIL                          R6
       79 GETIMPORT                        R7 K15 [pcall]
       81 NEWCLOSURE                       R8 P2
       82 CAPTURE                          REF R6
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          VAL R2
       85 CALL                             R7 1 1
       86 JUMPIF                           R7 ; [+9]
       87 GETIMPORT                        R7 K22 [error]
       89 LOADK                            R9 K23 ["Zero priorities mixed with non-zero priorities in StyleRule children for StyleRule: %*"]
       90 MOVE                             R11 R0
       91 NAMECALL                         R9 R9 K19 ["format"]
       93 CALL                             R9 2 1
       94 MOVE                             R8 R9
       95 CALL                             R7 1 0
       96 MOVE                             R7 R2
       97 LOADNIL                          R8
       98 LOADNIL                          R9
       99 FORGPREP                         R7
      100 GETUPVAL                         R12 1
      101 JUMPIFNOT                        R12 ; [+1]
      102 JUMPIFNOT                        R11 ; [+12]
      103 JUMPIFNOT                        R6 ; [+9]
      104 MOVE                             R14 R11
      105 NAMECALL                         R16 R4 K24 ["GetStyleRules"]
      107 CALL                             R16 1 1
      108 LENGTH                           R15 R16
      109 NAMECALL                         R12 R4 K25 ["InsertStyleRule"]
      111 CALL                             R12 3 0
      112 JUMP                             ; [+2]
      113 SETTABLEKS                       R4 R11 K26 ["Parent"]
      115 FORGLOOP                         R7 2 ; [-16]
      117 CLOSEUPVALS                      R6
      118 JUMPIFNOT                        R3 ; [+11]
      119 MOVE                             R6 R3
      120 LOADNIL                          R7
      121 LOADNIL                          R8
      122 FORGPREP                         R6
      123 MOVE                             R13 R9
      124 MOVE                             R14 R10
      125 NAMECALL                         R11 R4 K27 ["SetAttribute"]
      127 CALL                             R11 3 0
      128 FORGLOOP                         R6 2 ; [-6]
      130 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["shouldOrderStyleRulesByInsertion"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K8 [game]
       21 LOADK                            R4 K9 ["DevFrameworkCreateStyleRuleAcceptNil"]
       22 LOADB                            R5 0
       23 NAMECALL                         R2 R2 K10 ["DefineFastFlag"]
       25 CALL                             R2 3 1
       26 DUPCLOSURE                       R3 K11 [PROTO_0]
       27 DUPCLOSURE                       R4 K12 [PROTO_4]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
