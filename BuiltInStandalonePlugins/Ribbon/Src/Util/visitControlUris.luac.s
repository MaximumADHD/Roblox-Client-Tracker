PROTO_0:
        0 JUMPIFNOT                        R2 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R1 K0 ["Id"]
        4 JUMPIFNOT                        R3 ; [+10]
        5 GETIMPORT                        R4 K2 [warn]
        7 LOADK                            R5 K3 ["Invalid URI '%*' in control '%*'"]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R3
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 3 1
       13 CALL                             R4 1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R4 K2 [warn]
       17 LOADK                            R5 K5 ["Invalid URI '%*'"]
       18 MOVE                             R7 R0
       19 NAMECALL                         R5 R5 K4 ["format"]
       21 CALL                             R5 2 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 MOVE                             R9 R7
        6 CALL                             R8 1 1
        7 JUMPIFNOT                        R8 ; [+211]
        8 GETTABLEKS                       R8 R7 K0 ["Action"]
       10 JUMPIFNOT                        R8 ; [+37]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K1 ["isValid"]
       14 GETTABLEKS                       R9 R7 K0 ["Action"]
       16 CALL                             R8 1 1
       17 JUMPIFNOT                        R8 ; [+5]
       18 MOVE                             R8 R1
       19 GETTABLEKS                       R9 R7 K0 ["Action"]
       21 CALL                             R8 1 0
       22 JUMP                             ; [+25]
       23 GETTABLEKS                       R8 R7 K0 ["Action"]
       25 JUMPIFNOT                        R2 ; [+1]
       26 JUMP                             ; [+21]
       27 GETTABLEKS                       R9 R7 K2 ["Id"]
       29 JUMPIFNOT                        R9 ; [+10]
       30 GETIMPORT                        R10 K4 [warn]
       32 LOADK                            R11 K5 ["Invalid URI '%*' in control '%*'"]
       33 MOVE                             R13 R8
       34 MOVE                             R14 R9
       35 NAMECALL                         R11 R11 K6 ["format"]
       37 CALL                             R11 3 1
       38 CALL                             R10 1 0
       39 JUMP                             ; [+8]
       40 GETIMPORT                        R10 K4 [warn]
       42 LOADK                            R11 K7 ["Invalid URI '%*'"]
       43 MOVE                             R13 R8
       44 NAMECALL                         R11 R11 K6 ["format"]
       46 CALL                             R11 2 1
       47 CALL                             R10 1 0
       48 GETTABLEKS                       R8 R7 K8 ["ActionOnToggle"]
       50 JUMPIFNOT                        R8 ; [+37]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K1 ["isValid"]
       54 GETTABLEKS                       R9 R7 K8 ["ActionOnToggle"]
       56 CALL                             R8 1 1
       57 JUMPIFNOT                        R8 ; [+5]
       58 MOVE                             R8 R1
       59 GETTABLEKS                       R9 R7 K8 ["ActionOnToggle"]
       61 CALL                             R8 1 0
       62 JUMP                             ; [+25]
       63 GETTABLEKS                       R8 R7 K8 ["ActionOnToggle"]
       65 JUMPIFNOT                        R2 ; [+1]
       66 JUMP                             ; [+21]
       67 GETTABLEKS                       R9 R7 K2 ["Id"]
       69 JUMPIFNOT                        R9 ; [+10]
       70 GETIMPORT                        R10 K4 [warn]
       72 LOADK                            R11 K5 ["Invalid URI '%*' in control '%*'"]
       73 MOVE                             R13 R8
       74 MOVE                             R14 R9
       75 NAMECALL                         R11 R11 K6 ["format"]
       77 CALL                             R11 3 1
       78 CALL                             R10 1 0
       79 JUMP                             ; [+8]
       80 GETIMPORT                        R10 K4 [warn]
       82 LOADK                            R11 K7 ["Invalid URI '%*'"]
       83 MOVE                             R13 R8
       84 NAMECALL                         R11 R11 K6 ["format"]
       86 CALL                             R11 2 1
       87 CALL                             R10 1 0
       88 GETTABLEKS                       R8 R7 K9 ["ActionGroup"]
       90 JUMPIFNOT                        R8 ; [+40]
       91 GETTABLEKS                       R8 R7 K9 ["ActionGroup"]
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 FORGPREP                         R8
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K1 ["isValid"]
       99 MOVE                             R14 R12
      100 CALL                             R13 1 1
      101 JUMPIFNOT                        R13 ; [+4]
      102 MOVE                             R13 R1
      103 MOVE                             R14 R12
      104 CALL                             R13 1 0
      105 JUMP                             ; [+23]
      106 JUMPIFNOT                        R2 ; [+1]
      107 JUMP                             ; [+21]
      108 GETTABLEKS                       R13 R7 K2 ["Id"]
      110 JUMPIFNOT                        R13 ; [+10]
      111 GETIMPORT                        R14 K4 [warn]
      113 LOADK                            R15 K5 ["Invalid URI '%*' in control '%*'"]
      114 MOVE                             R17 R12
      115 MOVE                             R18 R13
      116 NAMECALL                         R15 R15 K6 ["format"]
      118 CALL                             R15 3 1
      119 CALL                             R14 1 0
      120 JUMP                             ; [+8]
      121 GETIMPORT                        R14 K4 [warn]
      123 LOADK                            R15 K7 ["Invalid URI '%*'"]
      124 MOVE                             R17 R12
      125 NAMECALL                         R15 R15 K6 ["format"]
      127 CALL                             R15 2 1
      128 CALL                             R14 1 0
      129 FORGLOOP                         R8 2 ; [-34]
      131 GETTABLEKS                       R8 R7 K10 ["ChildAction"]
      133 JUMPIFNOT                        R8 ; [+37]
      134 GETUPVAL                         R8 1
      135 GETTABLEKS                       R8 R8 K1 ["isValid"]
      137 GETTABLEKS                       R9 R7 K10 ["ChildAction"]
      139 CALL                             R8 1 1
      140 JUMPIFNOT                        R8 ; [+5]
      141 MOVE                             R8 R1
      142 GETTABLEKS                       R9 R7 K10 ["ChildAction"]
      144 CALL                             R8 1 0
      145 JUMP                             ; [+25]
      146 GETTABLEKS                       R8 R7 K10 ["ChildAction"]
      148 JUMPIFNOT                        R2 ; [+1]
      149 JUMP                             ; [+21]
      150 GETTABLEKS                       R9 R7 K2 ["Id"]
      152 JUMPIFNOT                        R9 ; [+10]
      153 GETIMPORT                        R10 K4 [warn]
      155 LOADK                            R11 K5 ["Invalid URI '%*' in control '%*'"]
      156 MOVE                             R13 R8
      157 MOVE                             R14 R9
      158 NAMECALL                         R11 R11 K6 ["format"]
      160 CALL                             R11 3 1
      161 CALL                             R10 1 0
      162 JUMP                             ; [+8]
      163 GETIMPORT                        R10 K4 [warn]
      165 LOADK                            R11 K7 ["Invalid URI '%*'"]
      166 MOVE                             R13 R8
      167 NAMECALL                         R11 R11 K6 ["format"]
      169 CALL                             R11 2 1
      170 CALL                             R10 1 0
      171 GETTABLEKS                       R8 R7 K11 ["Setting"]
      173 JUMPIFNOT                        R8 ; [+37]
      174 GETUPVAL                         R8 1
      175 GETTABLEKS                       R8 R8 K1 ["isValid"]
      177 GETTABLEKS                       R9 R7 K11 ["Setting"]
      179 CALL                             R8 1 1
      180 JUMPIFNOT                        R8 ; [+5]
      181 MOVE                             R8 R1
      182 GETTABLEKS                       R9 R7 K11 ["Setting"]
      184 CALL                             R8 1 0
      185 JUMP                             ; [+25]
      186 GETTABLEKS                       R8 R7 K11 ["Setting"]
      188 JUMPIFNOT                        R2 ; [+1]
      189 JUMP                             ; [+21]
      190 GETTABLEKS                       R9 R7 K2 ["Id"]
      192 JUMPIFNOT                        R9 ; [+10]
      193 GETIMPORT                        R10 K4 [warn]
      195 LOADK                            R11 K5 ["Invalid URI '%*' in control '%*'"]
      196 MOVE                             R13 R8
      197 MOVE                             R14 R9
      198 NAMECALL                         R11 R11 K6 ["format"]
      200 CALL                             R11 3 1
      201 CALL                             R10 1 0
      202 JUMP                             ; [+8]
      203 GETIMPORT                        R10 K4 [warn]
      205 LOADK                            R11 K7 ["Invalid URI '%*'"]
      206 MOVE                             R13 R8
      207 NAMECALL                         R11 R11 K6 ["format"]
      209 CALL                             R11 2 1
      210 CALL                             R10 1 0
      211 GETTABLEKS                       R8 R7 K12 ["Children"]
      213 JUMPIFNOT                        R8 ; [+5]
      214 GETUPVAL                         R8 2
      215 GETTABLEKS                       R9 R7 K12 ["Children"]
      217 MOVE                             R10 R1
      218 CALL                             R8 2 0
      219 FORGLOOP                         R3 2 ; [-216]
      221 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R5 K8 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["isControlEnabledFromFlags"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 DUPCLOSURE                       R6 K14 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R6
       39 RETURN                           R6 1
