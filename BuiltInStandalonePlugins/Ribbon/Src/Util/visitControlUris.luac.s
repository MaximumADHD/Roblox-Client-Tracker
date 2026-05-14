PROTO_0:
        0 JUMPIFNOT                        R2 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R1 K0 ["Id"]
        4 JUMPIFNOT                        R3 ; [+11]
        5 GETIMPORT                        R4 K2 [warn]
        7 LOADK                            R6 K3 ["Invalid URI '%*' in control '%*'"]
        8 MOVE                             R8 R0
        9 MOVE                             R9 R3
       10 NAMECALL                         R6 R6 K4 ["format"]
       12 CALL                             R6 3 1
       13 MOVE                             R5 R6
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R4 K2 [warn]
       18 LOADK                            R6 K5 ["Invalid URI '%*'"]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K4 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 MOVE                             R9 R7
        6 CALL                             R8 1 1
        7 JUMPIFNOT                        R8 ; [+221]
        8 GETTABLEKS                       R8 R7 K0 ["Action"]
       10 JUMPIFNOT                        R8 ; [+39]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K1 ["isValid"]
       14 GETTABLEKS                       R9 R7 K0 ["Action"]
       16 CALL                             R8 1 1
       17 JUMPIFNOT                        R8 ; [+5]
       18 MOVE                             R8 R1
       19 GETTABLEKS                       R9 R7 K0 ["Action"]
       21 CALL                             R8 1 0
       22 JUMP                             ; [+27]
       23 GETTABLEKS                       R8 R7 K0 ["Action"]
       25 JUMPIFNOT                        R2 ; [+1]
       26 JUMP                             ; [+23]
       27 GETTABLEKS                       R9 R7 K2 ["Id"]
       29 JUMPIFNOT                        R9 ; [+11]
       30 GETIMPORT                        R10 K4 [warn]
       32 LOADK                            R12 K5 ["Invalid URI '%*' in control '%*'"]
       33 MOVE                             R14 R8
       34 MOVE                             R15 R9
       35 NAMECALL                         R12 R12 K6 ["format"]
       37 CALL                             R12 3 1
       38 MOVE                             R11 R12
       39 CALL                             R10 1 0
       40 JUMP                             ; [+9]
       41 GETIMPORT                        R10 K4 [warn]
       43 LOADK                            R12 K7 ["Invalid URI '%*'"]
       44 MOVE                             R14 R8
       45 NAMECALL                         R12 R12 K6 ["format"]
       47 CALL                             R12 2 1
       48 MOVE                             R11 R12
       49 CALL                             R10 1 0
       50 GETTABLEKS                       R8 R7 K8 ["ActionOnToggle"]
       52 JUMPIFNOT                        R8 ; [+39]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K1 ["isValid"]
       56 GETTABLEKS                       R9 R7 K8 ["ActionOnToggle"]
       58 CALL                             R8 1 1
       59 JUMPIFNOT                        R8 ; [+5]
       60 MOVE                             R8 R1
       61 GETTABLEKS                       R9 R7 K8 ["ActionOnToggle"]
       63 CALL                             R8 1 0
       64 JUMP                             ; [+27]
       65 GETTABLEKS                       R8 R7 K8 ["ActionOnToggle"]
       67 JUMPIFNOT                        R2 ; [+1]
       68 JUMP                             ; [+23]
       69 GETTABLEKS                       R9 R7 K2 ["Id"]
       71 JUMPIFNOT                        R9 ; [+11]
       72 GETIMPORT                        R10 K4 [warn]
       74 LOADK                            R12 K5 ["Invalid URI '%*' in control '%*'"]
       75 MOVE                             R14 R8
       76 MOVE                             R15 R9
       77 NAMECALL                         R12 R12 K6 ["format"]
       79 CALL                             R12 3 1
       80 MOVE                             R11 R12
       81 CALL                             R10 1 0
       82 JUMP                             ; [+9]
       83 GETIMPORT                        R10 K4 [warn]
       85 LOADK                            R12 K7 ["Invalid URI '%*'"]
       86 MOVE                             R14 R8
       87 NAMECALL                         R12 R12 K6 ["format"]
       89 CALL                             R12 2 1
       90 MOVE                             R11 R12
       91 CALL                             R10 1 0
       92 GETTABLEKS                       R8 R7 K9 ["ActionGroup"]
       94 JUMPIFNOT                        R8 ; [+42]
       95 GETTABLEKS                       R8 R7 K9 ["ActionGroup"]
       97 LOADNIL                          R9
       98 LOADNIL                          R10
       99 FORGPREP                         R8
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R13 R13 K1 ["isValid"]
      103 MOVE                             R14 R12
      104 CALL                             R13 1 1
      105 JUMPIFNOT                        R13 ; [+4]
      106 MOVE                             R13 R1
      107 MOVE                             R14 R12
      108 CALL                             R13 1 0
      109 JUMP                             ; [+25]
      110 JUMPIFNOT                        R2 ; [+1]
      111 JUMP                             ; [+23]
      112 GETTABLEKS                       R13 R7 K2 ["Id"]
      114 JUMPIFNOT                        R13 ; [+11]
      115 GETIMPORT                        R14 K4 [warn]
      117 LOADK                            R16 K5 ["Invalid URI '%*' in control '%*'"]
      118 MOVE                             R18 R12
      119 MOVE                             R19 R13
      120 NAMECALL                         R16 R16 K6 ["format"]
      122 CALL                             R16 3 1
      123 MOVE                             R15 R16
      124 CALL                             R14 1 0
      125 JUMP                             ; [+9]
      126 GETIMPORT                        R14 K4 [warn]
      128 LOADK                            R16 K7 ["Invalid URI '%*'"]
      129 MOVE                             R18 R12
      130 NAMECALL                         R16 R16 K6 ["format"]
      132 CALL                             R16 2 1
      133 MOVE                             R15 R16
      134 CALL                             R14 1 0
      135 FORGLOOP                         R8 2 ; [-36]
      137 GETTABLEKS                       R8 R7 K10 ["ChildAction"]
      139 JUMPIFNOT                        R8 ; [+39]
      140 GETUPVAL                         R8 1
      141 GETTABLEKS                       R8 R8 K1 ["isValid"]
      143 GETTABLEKS                       R9 R7 K10 ["ChildAction"]
      145 CALL                             R8 1 1
      146 JUMPIFNOT                        R8 ; [+5]
      147 MOVE                             R8 R1
      148 GETTABLEKS                       R9 R7 K10 ["ChildAction"]
      150 CALL                             R8 1 0
      151 JUMP                             ; [+27]
      152 GETTABLEKS                       R8 R7 K10 ["ChildAction"]
      154 JUMPIFNOT                        R2 ; [+1]
      155 JUMP                             ; [+23]
      156 GETTABLEKS                       R9 R7 K2 ["Id"]
      158 JUMPIFNOT                        R9 ; [+11]
      159 GETIMPORT                        R10 K4 [warn]
      161 LOADK                            R12 K5 ["Invalid URI '%*' in control '%*'"]
      162 MOVE                             R14 R8
      163 MOVE                             R15 R9
      164 NAMECALL                         R12 R12 K6 ["format"]
      166 CALL                             R12 3 1
      167 MOVE                             R11 R12
      168 CALL                             R10 1 0
      169 JUMP                             ; [+9]
      170 GETIMPORT                        R10 K4 [warn]
      172 LOADK                            R12 K7 ["Invalid URI '%*'"]
      173 MOVE                             R14 R8
      174 NAMECALL                         R12 R12 K6 ["format"]
      176 CALL                             R12 2 1
      177 MOVE                             R11 R12
      178 CALL                             R10 1 0
      179 GETTABLEKS                       R8 R7 K11 ["Setting"]
      181 JUMPIFNOT                        R8 ; [+39]
      182 GETUPVAL                         R8 1
      183 GETTABLEKS                       R8 R8 K1 ["isValid"]
      185 GETTABLEKS                       R9 R7 K11 ["Setting"]
      187 CALL                             R8 1 1
      188 JUMPIFNOT                        R8 ; [+5]
      189 MOVE                             R8 R1
      190 GETTABLEKS                       R9 R7 K11 ["Setting"]
      192 CALL                             R8 1 0
      193 JUMP                             ; [+27]
      194 GETTABLEKS                       R8 R7 K11 ["Setting"]
      196 JUMPIFNOT                        R2 ; [+1]
      197 JUMP                             ; [+23]
      198 GETTABLEKS                       R9 R7 K2 ["Id"]
      200 JUMPIFNOT                        R9 ; [+11]
      201 GETIMPORT                        R10 K4 [warn]
      203 LOADK                            R12 K5 ["Invalid URI '%*' in control '%*'"]
      204 MOVE                             R14 R8
      205 MOVE                             R15 R9
      206 NAMECALL                         R12 R12 K6 ["format"]
      208 CALL                             R12 3 1
      209 MOVE                             R11 R12
      210 CALL                             R10 1 0
      211 JUMP                             ; [+9]
      212 GETIMPORT                        R10 K4 [warn]
      214 LOADK                            R12 K7 ["Invalid URI '%*'"]
      215 MOVE                             R14 R8
      216 NAMECALL                         R12 R12 K6 ["format"]
      218 CALL                             R12 2 1
      219 MOVE                             R11 R12
      220 CALL                             R10 1 0
      221 GETTABLEKS                       R8 R7 K12 ["Children"]
      223 JUMPIFNOT                        R8 ; [+5]
      224 GETUPVAL                         R8 2
      225 GETTABLEKS                       R9 R7 K12 ["Children"]
      227 MOVE                             R10 R1
      228 CALL                             R8 2 0
      229 FORGLOOP                         R3 2 ; [-226]
      231 RETURN                           R0 0

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
