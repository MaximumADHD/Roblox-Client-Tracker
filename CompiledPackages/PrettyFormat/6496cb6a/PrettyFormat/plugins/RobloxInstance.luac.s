PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R6 K0 [""]
        1 NAMECALL                         R7 R0 K1 ["GetChildren"]
        3 CALL                             R7 1 1
        4 GETIMPORT                        R8 K4 [table.sort]
        6 MOVE                             R9 R7
        7 DUPCLOSURE                       R10 K5 [PROTO_0]
        8 CALL                             R8 2 0
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K6 ["listProps"]
       12 MOVE                             R9 R0
       13 DUPTABLE                         R10 K8 [{"useStyledProperties"}]
       14 GETTABLEKS                       R11 R1 K7 ["useStyledProperties"]
       16 SETTABLEKS                       R11 R10 K7 ["useStyledProperties"]
       18 CALL                             R8 2 1
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R9 R10 K9 ["keys"]
       22 MOVE                             R10 R8
       23 CALL                             R9 1 1
       24 GETTABLEKS                       R10 R1 K10 ["printInstanceDefaults"]
       26 JUMPIF                           R10 ; [+17]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R10 R11 K11 ["listDefaultProps"]
       30 GETTABLEKS                       R11 R0 K12 ["ClassName"]
       32 GETTABLEKS                       R12 R1 K7 ["useStyledProperties"]
       34 CALL                             R10 2 1
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R11 R12 K13 ["filter"]
       38 MOVE                             R12 R9
       39 NEWCLOSURE                       R13 P1
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R10
       42 CALL                             R11 2 1
       43 MOVE                             R9 R11
       44 GETIMPORT                        R10 K4 [table.sort]
       46 MOVE                             R11 R9
       47 CALL                             R10 1 0
       48 GETTABLEKS                       R11 R1 K14 ["printInstanceTags"]
       50 JUMPIFNOT                        R11 ; [+6]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K15 ["getTags"]
       54 MOVE                             R11 R0
       55 CALL                             R10 1 1
       56 JUMP                             ; [+2]
       57 NEWTABLE                         R10 0 0
       59 GETIMPORT                        R11 K4 [table.sort]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 0
       63 LENGTH                           R12 R9
       64 LOADN                            R13 0
       65 JUMPIFLT                         R13 R12 ; [+2]
       67 LOADB                            R11 0 +1
       68 LOADB                            R11 1
       69 LENGTH                           R13 R7
       70 LOADN                            R14 0
       71 JUMPIFLT                         R14 R13 ; [+2]
       73 LOADB                            R12 0 +1
       74 LOADB                            R12 1
       75 LENGTH                           R14 R10
       76 LOADN                            R15 0
       77 JUMPIFLT                         R15 R14 ; [+2]
       79 LOADB                            R13 0 +1
       80 LOADB                            R13 1
       81 JUMPIF                           R11 ; [+2]
       82 JUMPIF                           R12 ; [+1]
       83 JUMPIFNOT                        R13 ; [+151]
       84 MOVE                             R14 R6
       85 GETTABLEKS                       R15 R1 K16 ["spacingOuter"]
       87 CONCAT                           R6 R14 R15
       88 MOVE                             R15 R2
       89 GETTABLEKS                       R16 R1 K17 ["indent"]
       91 CONCAT                           R14 R15 R16
       92 JUMPIFNOT                        R13 ; [+30]
       93 MOVE                             R15 R5
       94 MOVE                             R16 R10
       95 MOVE                             R17 R1
       96 MOVE                             R18 R14
       97 MOVE                             R19 R3
       98 MOVE                             R20 R4
       99 CALL                             R15 5 1
      100 GETIMPORT                        R16 K20 [string.format]
      102 LOADK                            R17 K21 ["%s%s%s: %s"]
      103 MOVE                             R18 R6
      104 MOVE                             R19 R14
      105 LOADK                            R20 K22 ["\"Tags\""]
      106 MOVE                             R21 R15
      107 CALL                             R16 5 1
      108 MOVE                             R6 R16
      109 JUMPIF                           R11 ; [+1]
      110 JUMPIFNOT                        R12 ; [+6]
      111 MOVE                             R16 R6
      112 LOADK                            R17 K23 [","]
      113 GETTABLEKS                       R18 R1 K24 ["spacingInner"]
      115 CONCAT                           R6 R16 R18
      116 JUMP                             ; [+6]
      117 GETTABLEKS                       R16 R1 K25 ["min"]
      119 JUMPIF                           R16 ; [+3]
      120 MOVE                             R16 R6
      121 LOADK                            R17 K23 [","]
      122 CONCAT                           R6 R16 R17
      123 GETIMPORT                        R15 K27 [ipairs]
      125 MOVE                             R16 R9
      126 CALL                             R15 1 3
      127 FORGPREP_INEXT                   R15
      128 GETTABLE                         R20 R8 R19
      129 GETUPVAL                         R22 1
      130 GETTABLEKS                       R21 R22 K28 ["None"]
      132 JUMPIFNOTEQ                      R20 R21 ; [+2]
      134 LOADNIL                          R20
      135 GETUPVAL                         R22 3
      136 MOVE                             R23 R20
      137 CALL                             R22 1 1
      138 JUMPIFNOTEQKS                    R22 K29 ["Instance"] ; [+3]
      140 LOADK                            R21 K30 [∞]
      141 JUMP                             ; [+1]
      142 MOVE                             R21 R3
      143 MOVE                             R22 R5
      144 MOVE                             R23 R19
      145 MOVE                             R24 R1
      146 MOVE                             R25 R14
      147 MOVE                             R26 R3
      148 MOVE                             R27 R4
      149 CALL                             R22 5 1
      150 MOVE                             R23 R5
      151 MOVE                             R24 R20
      152 MOVE                             R25 R1
      153 MOVE                             R26 R14
      154 MOVE                             R27 R21
      155 MOVE                             R28 R4
      156 CALL                             R23 5 1
      157 GETIMPORT                        R24 K20 [string.format]
      159 LOADK                            R25 K21 ["%s%s%s: %s"]
      160 MOVE                             R26 R6
      161 MOVE                             R27 R14
      162 MOVE                             R28 R22
      163 MOVE                             R29 R23
      164 CALL                             R24 5 1
      165 MOVE                             R6 R24
      166 LENGTH                           R24 R9
      167 JUMPIFNOTEQ                      R18 R24 ; [+2]
      169 JUMPIFNOT                        R12 ; [+6]
      170 MOVE                             R24 R6
      171 LOADK                            R25 K23 [","]
      172 GETTABLEKS                       R26 R1 K24 ["spacingInner"]
      174 CONCAT                           R6 R24 R26
      175 JUMP                             ; [+6]
      176 GETTABLEKS                       R24 R1 K25 ["min"]
      178 JUMPIF                           R24 ; [+3]
      179 MOVE                             R24 R6
      180 LOADK                            R25 K23 [","]
      181 CONCAT                           R6 R24 R25
      182 FORGLOOP                         R15 2 [inext] ; [-55]
      184 GETIMPORT                        R15 K27 [ipairs]
      186 MOVE                             R16 R7
      187 CALL                             R15 1 3
      188 FORGPREP_INEXT                   R15
      189 MOVE                             R20 R5
      190 GETTABLEKS                       R21 R19 K31 ["Name"]
      192 MOVE                             R22 R1
      193 MOVE                             R23 R14
      194 MOVE                             R24 R3
      195 MOVE                             R25 R4
      196 CALL                             R20 5 1
      197 MOVE                             R21 R5
      198 MOVE                             R22 R19
      199 MOVE                             R23 R1
      200 MOVE                             R24 R14
      201 MOVE                             R25 R3
      202 MOVE                             R26 R4
      203 CALL                             R21 5 1
      204 GETIMPORT                        R22 K20 [string.format]
      206 LOADK                            R23 K21 ["%s%s%s: %s"]
      207 MOVE                             R24 R6
      208 MOVE                             R25 R14
      209 MOVE                             R26 R20
      210 MOVE                             R27 R21
      211 CALL                             R22 5 1
      212 MOVE                             R6 R22
      213 LENGTH                           R22 R7
      214 JUMPIFEQ                         R18 R22 ; [+7]
      216 MOVE                             R22 R6
      217 LOADK                            R23 K23 [","]
      218 GETTABLEKS                       R24 R1 K24 ["spacingInner"]
      220 CONCAT                           R6 R22 R24
      221 JUMP                             ; [+6]
      222 GETTABLEKS                       R22 R1 K25 ["min"]
      224 JUMPIF                           R22 ; [+3]
      225 MOVE                             R22 R6
      226 LOADK                            R23 K23 [","]
      227 CONCAT                           R6 R22 R23
      228 FORGLOOP                         R15 2 [inext] ; [-40]
      230 MOVE                             R15 R6
      231 GETTABLEKS                       R16 R1 K16 ["spacingOuter"]
      233 MOVE                             R17 R2
      234 CONCAT                           R6 R15 R17
      235 RETURN                           R6 1

PROTO_3:
        0 ADDK                             R3 R3 K0 [1]
        1 GETTABLEKS                       R6 R1 K1 ["maxDepth"]
        3 JUMPIFNOTLE                      R6 R3 ; [+10]
        5 GETIMPORT                        R6 K4 [string.format]
        7 LOADK                            R7 K5 ["\"%s\" [%s]"]
        8 GETTABLEKS                       R8 R0 K6 ["Name"]
       10 GETTABLEKS                       R9 R0 K7 ["ClassName"]
       12 CALL                             R6 3 -1
       13 RETURN                           R6 -1
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R0
       16 GETUPVAL                         R8 1
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+16]
       19 GETTABLEKS                       R7 R0 K7 ["ClassName"]
       21 LOADK                            R8 K8 [" {"]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R12 R0 K9 ["subset"]
       25 MOVE                             R13 R1
       26 MOVE                             R14 R2
       27 MOVE                             R15 R3
       28 MOVE                             R16 R4
       29 MOVE                             R17 R5
       30 CALL                             R11 6 1
       31 MOVE                             R9 R11
       32 LOADK                            R10 K10 ["}"]
       33 CONCAT                           R6 R7 R10
       34 RETURN                           R6 1
       35 GETTABLEKS                       R7 R0 K7 ["ClassName"]
       37 LOADK                            R8 K8 [" {"]
       38 GETUPVAL                         R11 3
       39 MOVE                             R12 R0
       40 MOVE                             R13 R1
       41 MOVE                             R14 R2
       42 MOVE                             R15 R3
       43 MOVE                             R16 R4
       44 MOVE                             R17 R5
       45 CALL                             R11 6 1
       46 MOVE                             R9 R11
       47 LOADK                            R10 K10 ["}"]
       48 CONCAT                           R6 R7 R10
       49 RETURN                           R6 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKS                       R2 K0 ["Instance"] ; [+5]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["JestGetType"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["getType"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["LuauPolyfill"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K8 ["Object"]
       23 GETTABLEKS                       R6 R4 K9 ["Array"]
       25 GETTABLEKS                       R7 R4 K10 ["instanceof"]
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R1 K11 ["RobloxShared"]
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R8 R9 K12 ["RobloxInstance"]
       34 GETTABLEKS                       R9 R8 K13 ["InstanceSubset"]
       36 GETIMPORT                        R11 K4 [require]
       38 GETTABLEKS                       R12 R0 K14 ["Collections"]
       40 CALL                             R11 1 1
       41 GETTABLEKS                       R10 R11 K15 ["printTableEntries"]
       43 GETIMPORT                        R11 K4 [require]
       45 GETTABLEKS                       R12 R0 K16 ["Types"]
       47 CALL                             R11 1 1
       48 DUPCLOSURE                       R12 K17 [PROTO_2]
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 DUPCLOSURE                       R13 K18 [PROTO_3]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R12
       58 DUPCLOSURE                       R14 K19 [PROTO_4]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 DUPTABLE                         R15 K22 [{"serialize", "test"}]
       63 SETTABLEKS                       R13 R15 K20 ["serialize"]
       65 SETTABLEKS                       R14 R15 K21 ["test"]
       67 RETURN                           R15 1
