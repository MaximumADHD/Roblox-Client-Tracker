PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [newproxy]
        2 LOADB                            R2 1
        3 CALL                             R1 1 1
        4 LOADK                            R2 K2 ["Symbol(%s)"]
        5 FASTCALL1                        TOSTRING R0 ; [+3]
        6 MOVE                             R5 R0
        7 GETIMPORT                        R4 K4 [tostring]
        9 CALL                             R4 1 1
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 1
       13 FASTCALL1                        GETMETATABLE R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K7 [getmetatable]
       17 CALL                             R3 1 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R4 R3 K8 ["__tostring"]
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["wrapStrictTable"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 NEWTABLE                         R3 8 0
       21 GETIMPORT                        R5 K10 [newproxy]
       23 LOADB                            R6 1
       24 CALL                             R5 1 1
       25 LOADK                            R6 K11 ["Symbol(%s)"]
       26 LOADK                            R9 K12 ["Localization"]
       27 FASTCALL1                        TOSTRING R9 ; [+2]
       28 GETIMPORT                        R8 K14 [tostring]
       30 CALL                             R8 1 1
       31 NAMECALL                         R6 R6 K15 ["format"]
       33 CALL                             R6 2 1
       34 FASTCALL1                        GETMETATABLE R5 ; [+3]
       35 MOVE                             R8 R5
       36 GETIMPORT                        R7 K17 [getmetatable]
       38 CALL                             R7 1 1
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R6
       41 SETTABLEKS                       R8 R7 K18 ["__tostring"]
       43 MOVE                             R4 R5
       44 SETTABLEKS                       R4 R3 K19 ["localization"]
       46 GETIMPORT                        R5 K10 [newproxy]
       48 LOADB                            R6 1
       49 CALL                             R5 1 1
       50 LOADK                            R6 K11 ["Symbol(%s)"]
       51 LOADK                            R9 K20 ["NetworkInterface"]
       52 FASTCALL1                        TOSTRING R9 ; [+2]
       53 GETIMPORT                        R8 K14 [tostring]
       55 CALL                             R8 1 1
       56 NAMECALL                         R6 R6 K15 ["format"]
       58 CALL                             R6 2 1
       59 FASTCALL1                        GETMETATABLE R5 ; [+3]
       60 MOVE                             R8 R5
       61 GETIMPORT                        R7 K17 [getmetatable]
       63 CALL                             R7 1 1
       64 NEWCLOSURE                       R8 P1
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R8 R7 K18 ["__tostring"]
       68 MOVE                             R4 R5
       69 SETTABLEKS                       R4 R3 K21 ["networkInterface"]
       71 GETIMPORT                        R5 K10 [newproxy]
       73 LOADB                            R6 1
       74 CALL                             R5 1 1
       75 LOADK                            R6 K11 ["Symbol(%s)"]
       76 LOADK                            R9 K22 ["PluginGui"]
       77 FASTCALL1                        TOSTRING R9 ; [+2]
       78 GETIMPORT                        R8 K14 [tostring]
       80 CALL                             R8 1 1
       81 NAMECALL                         R6 R6 K15 ["format"]
       83 CALL                             R6 2 1
       84 FASTCALL1                        GETMETATABLE R5 ; [+3]
       85 MOVE                             R8 R5
       86 GETIMPORT                        R7 K17 [getmetatable]
       88 CALL                             R7 1 1
       89 NEWCLOSURE                       R8 P1
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R8 R7 K18 ["__tostring"]
       93 MOVE                             R4 R5
       94 SETTABLEKS                       R4 R3 K23 ["pluginGui"]
       96 GETIMPORT                        R5 K10 [newproxy]
       98 LOADB                            R6 1
       99 CALL                             R5 1 1
      100 LOADK                            R6 K11 ["Symbol(%s)"]
      101 LOADK                            R9 K24 ["Plugin"]
      102 FASTCALL1                        TOSTRING R9 ; [+2]
      103 GETIMPORT                        R8 K14 [tostring]
      105 CALL                             R8 1 1
      106 NAMECALL                         R6 R6 K15 ["format"]
      108 CALL                             R6 2 1
      109 FASTCALL1                        GETMETATABLE R5 ; [+3]
      110 MOVE                             R8 R5
      111 GETIMPORT                        R7 K17 [getmetatable]
      113 CALL                             R7 1 1
      114 NEWCLOSURE                       R8 P1
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R8 R7 K18 ["__tostring"]
      118 MOVE                             R4 R5
      119 SETTABLEKS                       R4 R3 K25 ["plugin"]
      121 GETIMPORT                        R5 K10 [newproxy]
      123 LOADB                            R6 1
      124 CALL                             R5 1 1
      125 LOADK                            R6 K11 ["Symbol(%s)"]
      126 LOADK                            R9 K26 ["Settings"]
      127 FASTCALL1                        TOSTRING R9 ; [+2]
      128 GETIMPORT                        R8 K14 [tostring]
      130 CALL                             R8 1 1
      131 NAMECALL                         R6 R6 K15 ["format"]
      133 CALL                             R6 2 1
      134 FASTCALL1                        GETMETATABLE R5 ; [+3]
      135 MOVE                             R8 R5
      136 GETIMPORT                        R7 K17 [getmetatable]
      138 CALL                             R7 1 1
      139 NEWCLOSURE                       R8 P1
      140 CAPTURE                          VAL R6
      141 SETTABLEKS                       R8 R7 K18 ["__tostring"]
      143 MOVE                             R4 R5
      144 SETTABLEKS                       R4 R3 K27 ["settings"]
      146 GETIMPORT                        R5 K10 [newproxy]
      148 LOADB                            R6 1
      149 CALL                             R5 1 1
      150 LOADK                            R6 K11 ["Symbol(%s)"]
      151 LOADK                            R9 K28 ["Theme"]
      152 FASTCALL1                        TOSTRING R9 ; [+2]
      153 GETIMPORT                        R8 K14 [tostring]
      155 CALL                             R8 1 1
      156 NAMECALL                         R6 R6 K15 ["format"]
      158 CALL                             R6 2 1
      159 FASTCALL1                        GETMETATABLE R5 ; [+3]
      160 MOVE                             R8 R5
      161 GETIMPORT                        R7 K17 [getmetatable]
      163 CALL                             R7 1 1
      164 NEWCLOSURE                       R8 P1
      165 CAPTURE                          VAL R6
      166 SETTABLEKS                       R8 R7 K18 ["__tostring"]
      168 MOVE                             R4 R5
      169 SETTABLEKS                       R4 R3 K29 ["theme"]
      171 GETIMPORT                        R5 K10 [newproxy]
      173 LOADB                            R6 1
      174 CALL                             R5 1 1
      175 LOADK                            R6 K11 ["Symbol(%s)"]
      176 LOADK                            R9 K30 ["MarketplaceCamera"]
      177 FASTCALL1                        TOSTRING R9 ; [+2]
      178 GETIMPORT                        R8 K14 [tostring]
      180 CALL                             R8 1 1
      181 NAMECALL                         R6 R6 K15 ["format"]
      183 CALL                             R6 2 1
      184 FASTCALL1                        GETMETATABLE R5 ; [+3]
      185 MOVE                             R8 R5
      186 GETIMPORT                        R7 K17 [getmetatable]
      188 CALL                             R7 1 1
      189 NEWCLOSURE                       R8 P1
      190 CAPTURE                          VAL R6
      191 SETTABLEKS                       R8 R7 K18 ["__tostring"]
      193 MOVE                             R4 R5
      194 SETTABLEKS                       R4 R3 K31 ["camera"]
      196 GETIMPORT                        R5 K10 [newproxy]
      198 LOADB                            R6 1
      199 CALL                             R5 1 1
      200 LOADK                            R6 K11 ["Symbol(%s)"]
      201 LOADK                            R9 K32 ["LoadingInProgress"]
      202 FASTCALL1                        TOSTRING R9 ; [+2]
      203 GETIMPORT                        R8 K14 [tostring]
      205 CALL                             R8 1 1
      206 NAMECALL                         R6 R6 K15 ["format"]
      208 CALL                             R6 2 1
      209 FASTCALL1                        GETMETATABLE R5 ; [+3]
      210 MOVE                             R8 R5
      211 GETIMPORT                        R7 K17 [getmetatable]
      213 CALL                             R7 1 1
      214 NEWCLOSURE                       R8 P1
      215 CAPTURE                          VAL R6
      216 SETTABLEKS                       R8 R7 K18 ["__tostring"]
      218 MOVE                             R4 R5
      219 SETTABLEKS                       R4 R3 K32 ["LoadingInProgress"]
      221 MOVE                             R4 R1
      222 MOVE                             R5 R3
      223 LOADK                            R6 K33 ["Keys"]
      224 CALL                             R4 2 -1
      225 RETURN                           R4 -1
