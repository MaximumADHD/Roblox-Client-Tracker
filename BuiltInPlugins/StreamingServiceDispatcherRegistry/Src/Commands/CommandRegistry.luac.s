MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Flags"]
       13 GETTABLEKS                       R3 R4 K8 ["FFlagConvAIAddCommandSearchInsertAsset"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R1 R2 K9 ["Get"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Flags"]
       24 GETTABLEKS                       R4 R5 K10 ["FFlagConvAIAddSavePlaceCommand"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R2 R3 K9 ["Get"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R7 K7 ["Flags"]
       35 GETTABLEKS                       R5 R6 K11 ["FFlagConvAIMeshGen"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R3 R4 K9 ["Get"]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R4 R5 K12 ["Commands"]
       44 GETTABLEKS                       R5 R4 K13 ["DisplayRichText"]
       46 GETTABLEKS                       R6 R4 K14 ["DisplaySuggestions"]
       48 GETTABLEKS                       R7 R4 K15 ["DisplayError"]
       50 GETTABLEKS                       R8 R4 K16 ["QueueRichText"]
       52 GETTABLEKS                       R9 R4 K17 ["BuilderCommands"]
       54 GETTABLEKS                       R10 R9 K18 ["Instantiate"]
       56 GETTABLEKS                       R11 R9 K19 ["InsertAsset"]
       58 GETTABLEKS                       R12 R9 K20 ["SetProperty"]
       60 GETTABLEKS                       R13 R9 K21 ["CreateMaterial"]
       62 GETTABLEKS                       R14 R9 K22 ["SetMaterial"]
       64 GETTABLEKS                       R15 R9 K23 ["RemoveInstance"]
       66 GETTABLEKS                       R16 R9 K24 ["CloneInstance"]
       68 GETTABLEKS                       R17 R9 K25 ["DisplayRegionAdornments"]
       70 GETTABLEKS                       R18 R9 K26 ["DebugBulkPublishToInventory"]
       72 GETTABLEKS                       R19 R9 K27 ["SetDraftMode"]
       74 GETTABLEKS                       R20 R9 K28 ["RunDraftCommand"]
       76 GETTABLEKS                       R21 R9 K29 ["DebugSleep"]
       78 GETTABLEKS                       R22 R9 K30 ["RunCode"]
       80 GETTABLEKS                       R23 R9 K31 ["SavePlace"]
       82 GETTABLEKS                       R24 R9 K32 ["SearchInsertAsset"]
       84 GETTABLEKS                       R25 R9 K33 ["GenerateMesh"]
       86 NEWTABLE                         R26 32 0
       88 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
       89 GETIMPORT                        R28 K5 [require]
       91 MOVE                             R29 R5
       92 CALL                             R28 1 1
       93 SETTABLEKS                       R28 R27 K34 ["Command"]
       95 LOADB                            R28 0
       96 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
       98 LOADB                            R28 0
       99 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      101 SETTABLEKS                       R27 R26 K13 ["DisplayRichText"]
      103 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      104 GETIMPORT                        R28 K5 [require]
      106 MOVE                             R29 R7
      107 CALL                             R28 1 1
      108 SETTABLEKS                       R28 R27 K34 ["Command"]
      110 LOADB                            R28 0
      111 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      113 LOADB                            R28 0
      114 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      116 SETTABLEKS                       R27 R26 K15 ["DisplayError"]
      118 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      119 GETIMPORT                        R28 K5 [require]
      121 MOVE                             R29 R17
      122 CALL                             R28 1 1
      123 SETTABLEKS                       R28 R27 K34 ["Command"]
      125 LOADB                            R28 0
      126 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      128 LOADB                            R28 0
      129 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      131 SETTABLEKS                       R27 R26 K25 ["DisplayRegionAdornments"]
      133 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      134 GETIMPORT                        R28 K5 [require]
      136 MOVE                             R29 R10
      137 CALL                             R28 1 1
      138 SETTABLEKS                       R28 R27 K34 ["Command"]
      140 LOADB                            R28 1
      141 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      143 LOADB                            R28 0
      144 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      146 SETTABLEKS                       R27 R26 K18 ["Instantiate"]
      148 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      149 GETIMPORT                        R28 K5 [require]
      151 MOVE                             R29 R11
      152 CALL                             R28 1 1
      153 SETTABLEKS                       R28 R27 K34 ["Command"]
      155 LOADB                            R28 1
      156 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      158 LOADB                            R28 1
      159 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      161 SETTABLEKS                       R27 R26 K19 ["InsertAsset"]
      163 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      164 GETIMPORT                        R28 K5 [require]
      166 MOVE                             R29 R12
      167 CALL                             R28 1 1
      168 SETTABLEKS                       R28 R27 K34 ["Command"]
      170 LOADB                            R28 1
      171 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      173 LOADB                            R28 0
      174 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      176 SETTABLEKS                       R27 R26 K20 ["SetProperty"]
      178 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      179 GETIMPORT                        R28 K5 [require]
      181 MOVE                             R29 R8
      182 CALL                             R28 1 1
      183 SETTABLEKS                       R28 R27 K34 ["Command"]
      185 LOADB                            R28 1
      186 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      188 LOADB                            R28 0
      189 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      191 SETTABLEKS                       R27 R26 K16 ["QueueRichText"]
      193 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      194 GETIMPORT                        R28 K5 [require]
      196 MOVE                             R29 R13
      197 CALL                             R28 1 1
      198 SETTABLEKS                       R28 R27 K34 ["Command"]
      200 LOADB                            R28 1
      201 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      203 LOADB                            R28 0
      204 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      206 SETTABLEKS                       R27 R26 K21 ["CreateMaterial"]
      208 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      209 GETIMPORT                        R28 K5 [require]
      211 MOVE                             R29 R14
      212 CALL                             R28 1 1
      213 SETTABLEKS                       R28 R27 K34 ["Command"]
      215 LOADB                            R28 1
      216 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      218 LOADB                            R28 0
      219 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      221 SETTABLEKS                       R27 R26 K22 ["SetMaterial"]
      223 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      224 GETIMPORT                        R28 K5 [require]
      226 MOVE                             R29 R18
      227 CALL                             R28 1 1
      228 SETTABLEKS                       R28 R27 K34 ["Command"]
      230 LOADB                            R28 1
      231 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      233 LOADB                            R28 0
      234 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      236 SETTABLEKS                       R27 R26 K26 ["DebugBulkPublishToInventory"]
      238 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      239 GETIMPORT                        R28 K5 [require]
      241 MOVE                             R29 R6
      242 CALL                             R28 1 1
      243 SETTABLEKS                       R28 R27 K34 ["Command"]
      245 LOADB                            R28 1
      246 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      248 LOADB                            R28 0
      249 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      251 SETTABLEKS                       R27 R26 K14 ["DisplaySuggestions"]
      253 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      254 GETIMPORT                        R28 K5 [require]
      256 MOVE                             R29 R15
      257 CALL                             R28 1 1
      258 SETTABLEKS                       R28 R27 K34 ["Command"]
      260 LOADB                            R28 1
      261 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      263 LOADB                            R28 0
      264 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      266 SETTABLEKS                       R27 R26 K23 ["RemoveInstance"]
      268 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      269 GETIMPORT                        R28 K5 [require]
      271 MOVE                             R29 R16
      272 CALL                             R28 1 1
      273 SETTABLEKS                       R28 R27 K34 ["Command"]
      275 LOADB                            R28 1
      276 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      278 LOADB                            R28 0
      279 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      281 SETTABLEKS                       R27 R26 K24 ["CloneInstance"]
      283 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      284 GETIMPORT                        R28 K5 [require]
      286 MOVE                             R29 R19
      287 CALL                             R28 1 1
      288 SETTABLEKS                       R28 R27 K34 ["Command"]
      290 LOADB                            R28 1
      291 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      293 LOADB                            R28 0
      294 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      296 SETTABLEKS                       R27 R26 K27 ["SetDraftMode"]
      298 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      299 GETIMPORT                        R28 K5 [require]
      301 MOVE                             R29 R20
      302 CALL                             R28 1 1
      303 SETTABLEKS                       R28 R27 K34 ["Command"]
      305 LOADB                            R28 1
      306 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      308 LOADB                            R28 0
      309 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      311 SETTABLEKS                       R27 R26 K28 ["RunDraftCommand"]
      313 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      314 GETIMPORT                        R28 K5 [require]
      316 MOVE                             R29 R21
      317 CALL                             R28 1 1
      318 SETTABLEKS                       R28 R27 K34 ["Command"]
      320 LOADB                            R28 1
      321 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      323 LOADB                            R28 0
      324 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      326 SETTABLEKS                       R27 R26 K29 ["DebugSleep"]
      328 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      329 GETIMPORT                        R28 K5 [require]
      331 MOVE                             R29 R22
      332 CALL                             R28 1 1
      333 SETTABLEKS                       R28 R27 K34 ["Command"]
      335 LOADB                            R28 1
      336 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      338 LOADB                            R28 0
      339 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      341 SETTABLEKS                       R27 R26 K30 ["RunCode"]
      343 MOVE                             R28 R2
      344 CALL                             R28 0 1
      345 JUMPIFNOT                        R28 ; [+14]
      346 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      347 GETIMPORT                        R28 K5 [require]
      349 MOVE                             R29 R23
      350 CALL                             R28 1 1
      351 SETTABLEKS                       R28 R27 K34 ["Command"]
      353 LOADB                            R28 1
      354 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      356 LOADB                            R28 0
      357 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      359 JUMP                             ; [+1]
      360 LOADNIL                          R27
      361 SETTABLEKS                       R27 R26 K31 ["SavePlace"]
      363 MOVE                             R28 R1
      364 CALL                             R28 0 1
      365 JUMPIFNOT                        R28 ; [+14]
      366 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      367 GETIMPORT                        R28 K5 [require]
      369 MOVE                             R29 R24
      370 CALL                             R28 1 1
      371 SETTABLEKS                       R28 R27 K34 ["Command"]
      373 LOADB                            R28 1
      374 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      376 LOADB                            R28 1
      377 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      379 JUMP                             ; [+1]
      380 LOADNIL                          R27
      381 SETTABLEKS                       R27 R26 K32 ["SearchInsertAsset"]
      383 MOVE                             R28 R3
      384 CALL                             R28 0 1
      385 JUMPIFNOT                        R28 ; [+14]
      386 DUPTABLE                         R27 K37 [{"Command", "IsSequential", "IsPublic"}]
      387 GETIMPORT                        R28 K5 [require]
      389 MOVE                             R29 R25
      390 CALL                             R28 1 1
      391 SETTABLEKS                       R28 R27 K34 ["Command"]
      393 LOADB                            R28 1
      394 SETTABLEKS                       R28 R27 K35 ["IsSequential"]
      396 LOADB                            R28 0
      397 SETTABLEKS                       R28 R27 K36 ["IsPublic"]
      399 JUMP                             ; [+1]
      400 LOADNIL                          R27
      401 SETTABLEKS                       R27 R26 K33 ["GenerateMesh"]
      403 RETURN                           R26 1
