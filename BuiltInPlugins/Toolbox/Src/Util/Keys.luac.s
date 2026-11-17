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
       21 GETIMPORT                        R4 K10 [newproxy]
       23 LOADB                            R5 1
       24 CALL                             R4 1 1
       25 LOADK                            R5 K11 ["Symbol(%s)"]
       26 LOADK                            R8 K12 ["Localization"]
       27 FASTCALL1                        TOSTRING R8 ; [+2]
       28 GETIMPORT                        R7 K14 [tostring]
       30 CALL                             R7 1 1
       31 NAMECALL                         R5 R5 K15 ["format"]
       33 CALL                             R5 2 1
       34 FASTCALL1                        GETMETATABLE R4 ; [+3]
       35 MOVE                             R7 R4
       36 GETIMPORT                        R6 K17 [getmetatable]
       38 CALL                             R6 1 1
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R7 R6 K18 ["__tostring"]
       43 SETTABLEKS                       R4 R3 K19 ["localization"]
       45 GETIMPORT                        R4 K10 [newproxy]
       47 LOADB                            R5 1
       48 CALL                             R4 1 1
       49 LOADK                            R5 K11 ["Symbol(%s)"]
       50 LOADK                            R8 K20 ["NetworkInterface"]
       51 FASTCALL1                        TOSTRING R8 ; [+2]
       52 GETIMPORT                        R7 K14 [tostring]
       54 CALL                             R7 1 1
       55 NAMECALL                         R5 R5 K15 ["format"]
       57 CALL                             R5 2 1
       58 FASTCALL1                        GETMETATABLE R4 ; [+3]
       59 MOVE                             R7 R4
       60 GETIMPORT                        R6 K17 [getmetatable]
       62 CALL                             R6 1 1
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R7 R6 K18 ["__tostring"]
       67 SETTABLEKS                       R4 R3 K21 ["networkInterface"]
       69 GETIMPORT                        R4 K10 [newproxy]
       71 LOADB                            R5 1
       72 CALL                             R4 1 1
       73 LOADK                            R5 K11 ["Symbol(%s)"]
       74 LOADK                            R8 K22 ["PluginGui"]
       75 FASTCALL1                        TOSTRING R8 ; [+2]
       76 GETIMPORT                        R7 K14 [tostring]
       78 CALL                             R7 1 1
       79 NAMECALL                         R5 R5 K15 ["format"]
       81 CALL                             R5 2 1
       82 FASTCALL1                        GETMETATABLE R4 ; [+3]
       83 MOVE                             R7 R4
       84 GETIMPORT                        R6 K17 [getmetatable]
       86 CALL                             R6 1 1
       87 NEWCLOSURE                       R7 P1
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R7 R6 K18 ["__tostring"]
       91 SETTABLEKS                       R4 R3 K23 ["pluginGui"]
       93 GETIMPORT                        R4 K10 [newproxy]
       95 LOADB                            R5 1
       96 CALL                             R4 1 1
       97 LOADK                            R5 K11 ["Symbol(%s)"]
       98 LOADK                            R8 K24 ["Plugin"]
       99 FASTCALL1                        TOSTRING R8 ; [+2]
      100 GETIMPORT                        R7 K14 [tostring]
      102 CALL                             R7 1 1
      103 NAMECALL                         R5 R5 K15 ["format"]
      105 CALL                             R5 2 1
      106 FASTCALL1                        GETMETATABLE R4 ; [+3]
      107 MOVE                             R7 R4
      108 GETIMPORT                        R6 K17 [getmetatable]
      110 CALL                             R6 1 1
      111 NEWCLOSURE                       R7 P1
      112 CAPTURE                          VAL R5
      113 SETTABLEKS                       R7 R6 K18 ["__tostring"]
      115 SETTABLEKS                       R4 R3 K25 ["plugin"]
      117 GETIMPORT                        R4 K10 [newproxy]
      119 LOADB                            R5 1
      120 CALL                             R4 1 1
      121 LOADK                            R5 K11 ["Symbol(%s)"]
      122 LOADK                            R8 K26 ["Settings"]
      123 FASTCALL1                        TOSTRING R8 ; [+2]
      124 GETIMPORT                        R7 K14 [tostring]
      126 CALL                             R7 1 1
      127 NAMECALL                         R5 R5 K15 ["format"]
      129 CALL                             R5 2 1
      130 FASTCALL1                        GETMETATABLE R4 ; [+3]
      131 MOVE                             R7 R4
      132 GETIMPORT                        R6 K17 [getmetatable]
      134 CALL                             R6 1 1
      135 NEWCLOSURE                       R7 P1
      136 CAPTURE                          VAL R5
      137 SETTABLEKS                       R7 R6 K18 ["__tostring"]
      139 SETTABLEKS                       R4 R3 K27 ["settings"]
      141 GETIMPORT                        R4 K10 [newproxy]
      143 LOADB                            R5 1
      144 CALL                             R4 1 1
      145 LOADK                            R5 K11 ["Symbol(%s)"]
      146 LOADK                            R8 K28 ["Theme"]
      147 FASTCALL1                        TOSTRING R8 ; [+2]
      148 GETIMPORT                        R7 K14 [tostring]
      150 CALL                             R7 1 1
      151 NAMECALL                         R5 R5 K15 ["format"]
      153 CALL                             R5 2 1
      154 FASTCALL1                        GETMETATABLE R4 ; [+3]
      155 MOVE                             R7 R4
      156 GETIMPORT                        R6 K17 [getmetatable]
      158 CALL                             R6 1 1
      159 NEWCLOSURE                       R7 P1
      160 CAPTURE                          VAL R5
      161 SETTABLEKS                       R7 R6 K18 ["__tostring"]
      163 SETTABLEKS                       R4 R3 K29 ["theme"]
      165 GETIMPORT                        R4 K10 [newproxy]
      167 LOADB                            R5 1
      168 CALL                             R4 1 1
      169 LOADK                            R5 K11 ["Symbol(%s)"]
      170 LOADK                            R8 K30 ["MarketplaceCamera"]
      171 FASTCALL1                        TOSTRING R8 ; [+2]
      172 GETIMPORT                        R7 K14 [tostring]
      174 CALL                             R7 1 1
      175 NAMECALL                         R5 R5 K15 ["format"]
      177 CALL                             R5 2 1
      178 FASTCALL1                        GETMETATABLE R4 ; [+3]
      179 MOVE                             R7 R4
      180 GETIMPORT                        R6 K17 [getmetatable]
      182 CALL                             R6 1 1
      183 NEWCLOSURE                       R7 P1
      184 CAPTURE                          VAL R5
      185 SETTABLEKS                       R7 R6 K18 ["__tostring"]
      187 SETTABLEKS                       R4 R3 K31 ["camera"]
      189 GETIMPORT                        R4 K10 [newproxy]
      191 LOADB                            R5 1
      192 CALL                             R4 1 1
      193 LOADK                            R5 K11 ["Symbol(%s)"]
      194 LOADK                            R8 K32 ["LoadingInProgress"]
      195 FASTCALL1                        TOSTRING R8 ; [+2]
      196 GETIMPORT                        R7 K14 [tostring]
      198 CALL                             R7 1 1
      199 NAMECALL                         R5 R5 K15 ["format"]
      201 CALL                             R5 2 1
      202 FASTCALL1                        GETMETATABLE R4 ; [+3]
      203 MOVE                             R7 R4
      204 GETIMPORT                        R6 K17 [getmetatable]
      206 CALL                             R6 1 1
      207 NEWCLOSURE                       R7 P1
      208 CAPTURE                          VAL R5
      209 SETTABLEKS                       R7 R6 K18 ["__tostring"]
      211 SETTABLEKS                       R4 R3 K32 ["LoadingInProgress"]
      213 MOVE                             R4 R1
      214 MOVE                             R5 R3
      215 LOADK                            R6 K33 ["Keys"]
      216 CALL                             R4 2 -1
      217 RETURN                           R4 -1
