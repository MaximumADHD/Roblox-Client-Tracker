PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R4 R0 K7 ["banner"]
       26 FASTCALL1                        TYPEOF R4 ; [+2]
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       32 LOADK                            R5 K9 ["%*\"banner\" > Expected string, got %*"]
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R9 R0 K7 ["banner"]
       36 FASTCALL1                        TYPEOF R9 ; [+2]
       37 GETIMPORT                        R8 K1 [typeof]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K4 ["format"]
       42 CALL                             R5 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       45 MOVE                             R4 R1
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R3 R0 K10 ["titleTextMessage"]
       51 JUMPIFEQKNIL                     R3 ; [+26]
       53 GETTABLEKS                       R4 R0 K10 ["titleTextMessage"]
       55 FASTCALL1                        TYPEOF R4 ; [+2]
       56 GETIMPORT                        R3 K1 [typeof]
       58 CALL                             R3 1 1
       59 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       61 LOADK                            R5 K11 ["%*\"titleTextMessage\" > Expected string, got %*"]
       62 MOVE                             R7 R2
       63 GETTABLEKS                       R9 R0 K10 ["titleTextMessage"]
       65 FASTCALL1                        TYPEOF R9 ; [+2]
       66 GETIMPORT                        R8 K1 [typeof]
       68 CALL                             R8 1 1
       69 NAMECALL                         R5 R5 K4 ["format"]
       71 CALL                             R5 3 1
       72 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       74 MOVE                             R4 R1
       75 GETIMPORT                        R3 K6 [table.insert]
       77 CALL                             R3 2 0
       78 GETTABLEKS                       R3 R0 K12 ["subTextMessage"]
       80 JUMPIFEQKNIL                     R3 ; [+26]
       82 GETTABLEKS                       R4 R0 K12 ["subTextMessage"]
       84 FASTCALL1                        TYPEOF R4 ; [+2]
       85 GETIMPORT                        R3 K1 [typeof]
       87 CALL                             R3 1 1
       88 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       90 LOADK                            R5 K13 ["%*\"subTextMessage\" > Expected string, got %*"]
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R9 R0 K12 ["subTextMessage"]
       94 FASTCALL1                        TYPEOF R9 ; [+2]
       95 GETIMPORT                        R8 K1 [typeof]
       97 CALL                             R8 1 1
       98 NAMECALL                         R5 R5 K4 ["format"]
      100 CALL                             R5 3 1
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 GETTABLEKS                       R3 R0 K14 ["messageVariables"]
      109 JUMPIFEQKNIL                     R3 ; [+83]
      111 GETTABLEKS                       R4 R0 K14 ["messageVariables"]
      113 FASTCALL1                        TYPEOF R4 ; [+2]
      114 GETIMPORT                        R3 K1 [typeof]
      116 CALL                             R3 1 1
      117 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      119 LOADK                            R5 K15 ["%*\"messageVariables\" > Expected table, got %*"]
      120 MOVE                             R7 R2
      121 GETTABLEKS                       R9 R0 K14 ["messageVariables"]
      123 FASTCALL1                        TYPEOF R9 ; [+2]
      124 GETIMPORT                        R8 K1 [typeof]
      126 CALL                             R8 1 1
      127 NAMECALL                         R5 R5 K4 ["format"]
      129 CALL                             R5 3 1
      130 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      132 MOVE                             R4 R1
      133 GETIMPORT                        R3 K6 [table.insert]
      135 CALL                             R3 2 0
      136 JUMP                             ; [+56]
      137 GETTABLEKS                       R3 R0 K14 ["messageVariables"]
      139 LOADNIL                          R4
      140 LOADNIL                          R5
      141 FORGPREP                         R3
      142 FASTCALL1                        TYPEOF R6 ; [+3]
      143 MOVE                             R9 R6
      144 GETIMPORT                        R8 K1 [typeof]
      146 CALL                             R8 1 1
      147 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      149 LOADK                            R10 K16 ["%*\"messageVariables\" > Expected key of type string, got %* as %*"]
      150 MOVE                             R12 R2
      151 MOVE                             R13 R6
      152 FASTCALL1                        TYPEOF R6 ; [+3]
      153 MOVE                             R15 R6
      154 GETIMPORT                        R14 K1 [typeof]
      156 CALL                             R14 1 1
      157 NAMECALL                         R10 R10 K4 ["format"]
      159 CALL                             R10 4 1
      160 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      162 MOVE                             R9 R1
      163 GETIMPORT                        R8 K6 [table.insert]
      165 CALL                             R8 2 0
      166 JUMP                             ; [+24]
      167 FASTCALL1                        TYPEOF R7 ; [+3]
      168 MOVE                             R9 R7
      169 GETIMPORT                        R8 K1 [typeof]
      171 CALL                             R8 1 1
      172 JUMPIFEQKS                       R8 K8 ["string"] ; [+18]
      174 LOADK                            R10 K17 ["%*\"messageVariables\" > [\"%*\"] > Expected string, got %*"]
      175 MOVE                             R12 R2
      176 MOVE                             R13 R6
      177 FASTCALL1                        TYPEOF R7 ; [+3]
      178 MOVE                             R15 R7
      179 GETIMPORT                        R14 K1 [typeof]
      181 CALL                             R14 1 1
      182 NAMECALL                         R10 R10 K4 ["format"]
      184 CALL                             R10 4 1
      185 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      187 MOVE                             R9 R1
      188 GETIMPORT                        R8 K6 [table.insert]
      190 CALL                             R8 2 0
      191 FORGLOOP                         R3 2 ; [-50]
      193 GETTABLEKS                       R3 R0 K18 ["buttonText"]
      195 JUMPIFEQKNIL                     R3 ; [+26]
      197 GETTABLEKS                       R4 R0 K18 ["buttonText"]
      199 FASTCALL1                        TYPEOF R4 ; [+2]
      200 GETIMPORT                        R3 K1 [typeof]
      202 CALL                             R3 1 1
      203 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      205 LOADK                            R5 K19 ["%*\"buttonText\" > Expected string, got %*"]
      206 MOVE                             R7 R2
      207 GETTABLEKS                       R9 R0 K18 ["buttonText"]
      209 FASTCALL1                        TYPEOF R9 ; [+2]
      210 GETIMPORT                        R8 K1 [typeof]
      212 CALL                             R8 1 1
      213 NAMECALL                         R5 R5 K4 ["format"]
      215 CALL                             R5 3 1
      216 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      218 MOVE                             R4 R1
      219 GETIMPORT                        R3 K6 [table.insert]
      221 CALL                             R3 2 0
      222 GETTABLEKS                       R3 R0 K20 ["destinationUrlLink"]
      224 JUMPIFEQKNIL                     R3 ; [+26]
      226 GETTABLEKS                       R4 R0 K20 ["destinationUrlLink"]
      228 FASTCALL1                        TYPEOF R4 ; [+2]
      229 GETIMPORT                        R3 K1 [typeof]
      231 CALL                             R3 1 1
      232 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      234 LOADK                            R5 K21 ["%*\"destinationUrlLink\" > Expected string, got %*"]
      235 MOVE                             R7 R2
      236 GETTABLEKS                       R9 R0 K20 ["destinationUrlLink"]
      238 FASTCALL1                        TYPEOF R9 ; [+2]
      239 GETIMPORT                        R8 K1 [typeof]
      241 CALL                             R8 1 1
      242 NAMECALL                         R5 R5 K4 ["format"]
      244 CALL                             R5 3 1
      245 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      247 MOVE                             R4 R1
      248 GETIMPORT                        R3 K6 [table.insert]
      250 CALL                             R3 2 0
      251 GETTABLEKS                       R3 R0 K22 ["imageReference"]
      253 JUMPIFEQKNIL                     R3 ; [+26]
      255 GETTABLEKS                       R4 R0 K22 ["imageReference"]
      257 FASTCALL1                        TYPEOF R4 ; [+2]
      258 GETIMPORT                        R3 K1 [typeof]
      260 CALL                             R3 1 1
      261 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      263 LOADK                            R5 K23 ["%*\"imageReference\" > Expected string, got %*"]
      264 MOVE                             R7 R2
      265 GETTABLEKS                       R9 R0 K22 ["imageReference"]
      267 FASTCALL1                        TYPEOF R9 ; [+2]
      268 GETIMPORT                        R8 K1 [typeof]
      270 CALL                             R8 1 1
      271 NAMECALL                         R5 R5 K4 ["format"]
      273 CALL                             R5 3 1
      274 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      276 MOVE                             R4 R1
      277 GETIMPORT                        R3 K6 [table.insert]
      279 CALL                             R3 2 0
      280 GETTABLEKS                       R3 R0 K24 ["metadata"]
      282 JUMPIFEQKNIL                     R3 ; [+26]
      284 GETTABLEKS                       R4 R0 K24 ["metadata"]
      286 FASTCALL1                        TYPEOF R4 ; [+2]
      287 GETIMPORT                        R3 K1 [typeof]
      289 CALL                             R3 1 1
      290 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      292 LOADK                            R5 K25 ["%*\"metadata\" > Expected string, got %*"]
      293 MOVE                             R7 R2
      294 GETTABLEKS                       R9 R0 K24 ["metadata"]
      296 FASTCALL1                        TYPEOF R9 ; [+2]
      297 GETIMPORT                        R8 K1 [typeof]
      299 CALL                             R8 1 1
      300 NAMECALL                         R5 R5 K4 ["format"]
      302 CALL                             R5 3 1
      303 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      305 MOVE                             R4 R1
      306 GETIMPORT                        R3 K6 [table.insert]
      308 CALL                             R3 2 0
      309 GETTABLEKS                       R3 R0 K26 ["visibilityContext"]
      311 JUMPIFEQKNIL                     R3 ; [+15]
      313 GETUPVAL                         R3 0
      314 GETTABLEKS                       R3 R3 K27 ["fromResponse"]
      316 GETTABLEKS                       R4 R0 K26 ["visibilityContext"]
      318 MOVE                             R5 R1
      319 LOADK                            R6 K28 ["%*\"visibilityContext\" > "]
      320 MOVE                             R8 R2
      321 NAMECALL                         R6 R6 K4 ["format"]
      323 CALL                             R6 2 1
      324 CALL                             R3 3 1
      325 SETTABLEKS                       R3 R0 K26 ["visibilityContext"]
      327 GETTABLEKS                       R3 R0 K29 ["expiry"]
      329 JUMPIFEQKNIL                     R3 ; [+26]
      331 GETTABLEKS                       R4 R0 K29 ["expiry"]
      333 FASTCALL1                        TYPEOF R4 ; [+2]
      334 GETIMPORT                        R3 K1 [typeof]
      336 CALL                             R3 1 1
      337 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      339 LOADK                            R5 K30 ["%*\"expiry\" > Expected string, got %*"]
      340 MOVE                             R7 R2
      341 GETTABLEKS                       R9 R0 K29 ["expiry"]
      343 FASTCALL1                        TYPEOF R9 ; [+2]
      344 GETIMPORT                        R8 K1 [typeof]
      346 CALL                             R8 1 1
      347 NAMECALL                         R5 R5 K4 ["format"]
      349 CALL                             R5 3 1
      350 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      352 MOVE                             R4 R1
      353 GETIMPORT                        R3 K6 [table.insert]
      355 CALL                             R3 2 0
      356 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["visibilityContext"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["visibilityContext"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["visibilityContext"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["BannerVisibilityType"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
