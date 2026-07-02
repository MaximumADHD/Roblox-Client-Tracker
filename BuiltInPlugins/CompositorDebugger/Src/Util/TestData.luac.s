PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 LOADK                            R1 K1 ["ID"]
        4 GETUPVAL                         R3 0
        5 FASTCALL1                        TOSTRING R3 ; [+2]
        6 GETIMPORT                        R2 K3 [tostring]
        8 CALL                             R2 1 1
        9 CONCAT                           R0 R1 R2
       10 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 LOADN                            R3 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          REF R3
       17 CLOSEUPVALS                      R3
       18 DUPTABLE                         R3 K13 [{["id"] = "{F9335871-7386-4AFA-B6B3-CF1A4FDB2BFE}", ["name"] = "Mock Compositor 1", ["children"]}]
       19 NEWTABLE                         R4 0 1
       21 DUPTABLE                         R5 K18 [{["children"], ["className"] = "SelectLayer", ["id"] = "{6F4A739B-8775-4B8E-9A89-1DBD43E9A4EF}", ["props"]}]
       22 NEWTABLE                         R6 0 3
       24 DUPTABLE                         R7 K24 [{["children"], ["className"] = "Blend1D", ["name"] = "Debug A", ["id"] = "{275F34E0-57F4-4354-BC5A-38518EF2EB37}", ["props"], ["weight"] = 1}]
       25 NEWTABLE                         R8 0 3
       27 DUPTABLE                         R9 K31 [{["children"], ["className"] = "RestPose", ["name"] = "Debug B", ["id"] = "{20BFB42C-2D06-4E75-868D-0DA9AF1CBEB4}", ["linkData"], ["props"], ["weight"] = 0.5, ["watches"]}]
       28 NEWTABLE                         R10 0 0
       30 SETTABLEKS                       R10 R9 K12 ["children"]
       32 DUPTABLE                         R10 K33 [{["position"] = 1}]
       33 SETTABLEKS                       R10 R9 K28 ["linkData"]
       35 NEWTABLE                         R10 0 0
       37 SETTABLEKS                       R10 R9 K17 ["props"]
       39 NEWTABLE                         R10 2 0
       41 LOADK                            R11 K34 ["FOO"]
       42 SETTABLEKS                       R11 R10 K35 ["foo"]
       44 LOADK                            R11 K36 ["BAR"]
       45 SETTABLEKS                       R11 R10 K37 ["bar"]
       47 SETTABLEKS                       R10 R9 K30 ["watches"]
       49 DUPTABLE                         R10 K43 [{["children"], ["className"] = "ClipLayer", ["name"] = "Debug C", ["id"] = "{E577542C-2F20-4F2E-836B-0E5BC148CBE6}", ["linkData"], ["props"], ["state"], ["weight"] = 0.3}]
       50 NEWTABLE                         R11 0 0
       52 SETTABLEKS                       R11 R10 K12 ["children"]
       54 DUPTABLE                         R11 K45 [{["position"] = 3}]
       55 SETTABLEKS                       R11 R10 K28 ["linkData"]
       57 DUPTABLE                         R11 K51 [{["animationId"] = "rbxassetid://10921541949", ["isLooping"] = True, ["speed"] = 1}]
       58 SETTABLEKS                       R11 R10 K17 ["props"]
       60 DUPTABLE                         R11 K56 [{["timePositionNormalized"] = 0, ["length"] = 5}]
       61 SETTABLEKS                       R11 R10 K41 ["state"]
       63 DUPTABLE                         R11 K59 [{["children"], ["className"] = "ClipLayer", ["name"] = "Debug D", ["id"] = "{2321A81C-9EB4-4017-A496-87F0570B99F9}", ["linkData"], ["props"], ["state"], ["watches"]}]
       64 NEWTABLE                         R12 0 0
       66 SETTABLEKS                       R12 R11 K12 ["children"]
       68 DUPTABLE                         R12 K60 [{["position"] = 5}]
       69 SETTABLEKS                       R12 R11 K28 ["linkData"]
       71 DUPTABLE                         R12 K62 [{["animationId"] = "rbxassetid://10899968825", ["isLooping"] = True, ["speed"] = 1}]
       72 SETTABLEKS                       R12 R11 K17 ["props"]
       74 DUPTABLE                         R12 K64 [{["timePositionNormalized"] = 0.5, ["length"] = 4}]
       75 SETTABLEKS                       R12 R11 K41 ["state"]
       77 NEWTABLE                         R12 2 0
       79 DUPCLOSURE                       R13 K65 [PROTO_2]
       80 SETTABLEKS                       R13 R12 K66 ["function"]
       82 NEWTABLE                         R13 0 0
       84 SETTABLEKS                       R13 R12 K67 ["table"]
       86 SETTABLEKS                       R12 R11 K30 ["watches"]
       88 SETLIST                          R8 R9 3 [1]
       90 SETTABLEKS                       R8 R7 K12 ["children"]
       92 DUPTABLE                         R8 K70 [{["targetPosition"] = 2, ["speed"] = 1}]
       93 SETTABLEKS                       R8 R7 K17 ["props"]
       95 DUPTABLE                         R8 K74 [{["children"], ["className"] = "Blend2D", ["name"] = "Debug F", ["id"] = "{F57234E0-57F4-4354-BC5A-38518EF273BE}", ["props"], ["weight"] = 1}]
       96 NEWTABLE                         R9 0 3
       98 DUPTABLE                         R10 K77 [{["children"], ["className"] = "RestPose", ["name"] = "Debug G", ["id"] = "{FB02B42C-2D06-4E75-868D-0DA9AF1C4BEB}", ["linkData"], ["props"], ["weight"] = 0.5, ["watches"]}]
       99 NEWTABLE                         R11 0 0
      101 SETTABLEKS                       R11 R10 K12 ["children"]
      103 DUPTABLE                         R11 K78 [{"position"}]
      104 GETIMPORT                        R12 K81 [Vector2.new]
      106 LOADN                            R13 0
      107 LOADN                            R14 0
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K32 ["position"]
      111 SETTABLEKS                       R11 R10 K28 ["linkData"]
      113 NEWTABLE                         R11 0 0
      115 SETTABLEKS                       R11 R10 K17 ["props"]
      117 NEWTABLE                         R11 2 0
      119 LOADK                            R12 K34 ["FOO"]
      120 SETTABLEKS                       R12 R11 K35 ["foo"]
      122 LOADK                            R12 K36 ["BAR"]
      123 SETTABLEKS                       R12 R11 K37 ["bar"]
      125 SETTABLEKS                       R11 R10 K30 ["watches"]
      127 DUPTABLE                         R11 K84 [{["children"], ["className"] = "ClipLayer", ["name"] = "Debug H", ["id"] = "{775E542C-2F20-4F2E-836B-0E5BC1486EBC}", ["linkData"], ["props"], ["state"], ["weight"] = 0.3}]
      128 NEWTABLE                         R12 0 0
      130 SETTABLEKS                       R12 R11 K12 ["children"]
      132 DUPTABLE                         R12 K78 [{"position"}]
      133 GETIMPORT                        R13 K81 [Vector2.new]
      135 LOADN                            R14 0
      136 LOADN                            R15 2
      137 CALL                             R13 2 1
      138 SETTABLEKS                       R13 R12 K32 ["position"]
      140 SETTABLEKS                       R12 R11 K28 ["linkData"]
      142 DUPTABLE                         R12 K51 [{["animationId"] = "rbxassetid://10921541949", ["isLooping"] = True, ["speed"] = 1}]
      143 SETTABLEKS                       R12 R11 K17 ["props"]
      145 DUPTABLE                         R12 K56 [{["timePositionNormalized"] = 0, ["length"] = 5}]
      146 SETTABLEKS                       R12 R11 K41 ["state"]
      148 DUPTABLE                         R12 K87 [{["children"], ["className"] = "ClipLayer", ["name"] = "Debug I", ["id"] = "{1231A81C-9EB4-4017-A496-87F0570B9F65}", ["linkData"], ["props"], ["state"], ["watches"]}]
      149 NEWTABLE                         R13 0 0
      151 SETTABLEKS                       R13 R12 K12 ["children"]
      153 DUPTABLE                         R13 K78 [{"position"}]
      154 GETIMPORT                        R14 K81 [Vector2.new]
      156 LOADN                            R15 1
      157 LOADN                            R16 1
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K32 ["position"]
      161 SETTABLEKS                       R13 R12 K28 ["linkData"]
      163 DUPTABLE                         R13 K62 [{["animationId"] = "rbxassetid://10899968825", ["isLooping"] = True, ["speed"] = 1}]
      164 SETTABLEKS                       R13 R12 K17 ["props"]
      166 DUPTABLE                         R13 K64 [{["timePositionNormalized"] = 0.5, ["length"] = 4}]
      167 SETTABLEKS                       R13 R12 K41 ["state"]
      169 NEWTABLE                         R13 2 0
      171 DUPCLOSURE                       R14 K88 [PROTO_3]
      172 SETTABLEKS                       R14 R13 K66 ["function"]
      174 NEWTABLE                         R14 0 0
      176 SETTABLEKS                       R14 R13 K67 ["table"]
      178 SETTABLEKS                       R13 R12 K30 ["watches"]
      180 SETLIST                          R9 R10 3 [1]
      182 SETTABLEKS                       R9 R8 K12 ["children"]
      184 DUPTABLE                         R9 K89 [{["targetPosition"], ["speed"] = 1}]
      185 GETIMPORT                        R10 K81 [Vector2.new]
      187 LOADK                            R11 K29 [0.5]
      188 LOADK                            R12 K29 [0.5]
      189 CALL                             R10 2 1
      190 SETTABLEKS                       R10 R9 K68 ["targetPosition"]
      192 SETTABLEKS                       R9 R8 K17 ["props"]
      194 DUPTABLE                         R9 K92 [{["children"], ["className"] = "ClipLayer", ["name"] = "Debug E", ["id"] = "{B1A616DC-DBA5-4E75-ACFC-D073FBBF921F}", ["props"], ["weight"] = 0}]
      195 NEWTABLE                         R10 0 0
      197 SETTABLEKS                       R10 R9 K12 ["children"]
      199 DUPTABLE                         R10 K94 [{["animationId"] = "rbxassetid://10921258489", ["isLooping"] = True, ["speed"] = 1}]
      200 SETTABLEKS                       R10 R9 K17 ["props"]
      202 SETLIST                          R6 R7 3 [1]
      204 SETTABLEKS                       R6 R5 K12 ["children"]
      206 DUPTABLE                         R6 K100 [{["fadeInTimeSeconds"] = 0.2, ["fadeOutTimeSeconds"] = 0.2, ["selection"] = "Idle"}]
      207 SETTABLEKS                       R6 R5 K17 ["props"]
      209 SETLIST                          R4 R5 1 [1]
      211 SETTABLEKS                       R4 R3 K12 ["children"]
      213 DUPTABLE                         R4 K103 [{["id"] = "{CF1A4FDB-7386-4AFA-B6B3-2BFEF9335871}", ["name"] = "Mock Compositor 2", ["children"]}]
      214 NEWTABLE                         R5 0 1
      216 DUPTABLE                         R6 K105 [{["children"], ["className"] = "ClipLayer", ["name"] = "Debug F", ["id"] = "{43E9A4EF-8775-4B8E-9A89-1DBD6F4A739B}", ["props"]}]
      217 NEWTABLE                         R7 0 1
      219 DUPTABLE                         R8 K109 [{["children"], ["className"] = "ClipLayer", ["id"] = "{4017A81C-9EB4-4017-A496-87F0570B99F9}", ["name"] = "My Layer", ["props"], ["state"], ["data"]}]
      220 NEWTABLE                         R9 0 0
      222 SETTABLEKS                       R9 R8 K12 ["children"]
      224 DUPTABLE                         R9 K62 [{["animationId"] = "rbxassetid://10899968825", ["isLooping"] = True, ["speed"] = 1}]
      225 SETTABLEKS                       R9 R8 K17 ["props"]
      227 DUPTABLE                         R9 K110 [{["length"] = 4, ["timePositionNormalized"] = 0.5}]
      228 SETTABLEKS                       R9 R8 K41 ["state"]
      230 NEWTABLE                         R9 2 0
      232 DUPCLOSURE                       R10 K111 [PROTO_4]
      233 SETTABLEKS                       R10 R9 K66 ["function"]
      235 NEWTABLE                         R10 0 0
      237 SETTABLEKS                       R10 R9 K67 ["table"]
      239 SETTABLEKS                       R9 R8 K108 ["data"]
      241 SETLIST                          R7 R8 1 [1]
      243 SETTABLEKS                       R7 R6 K12 ["children"]
      245 DUPTABLE                         R7 K94 [{["animationId"] = "rbxassetid://10921258489", ["isLooping"] = True, ["speed"] = 1}]
      246 SETTABLEKS                       R7 R6 K17 ["props"]
      248 SETLIST                          R5 R6 1 [1]
      250 SETTABLEKS                       R5 R4 K12 ["children"]
      252 DUPTABLE                         R5 K123 [{"mockPayload1", "mockPayload2", "sortByIndex", "sortByName", "sortByClassName", "sortById", "clipLayerView", "blend1DLayerView", "blend1DLayerViewWrongType", "blend2DLayerViewWrongType", "blend2DLayerView", "state"}]
      253 SETTABLEKS                       R3 R5 K112 ["mockPayload1"]
      255 SETTABLEKS                       R4 R5 K113 ["mockPayload2"]
      257 DUPTABLE                         R6 K125 [{["id"], ["name"] = "Sort by Index", ["children"]}]
      258 MOVE                             R7 R2
      259 CALL                             R7 0 1
      260 SETTABLEKS                       R7 R6 K8 ["id"]
      262 NEWTABLE                         R7 0 3
      264 DUPTABLE                         R8 K128 [{["id"], ["name"] = "Third", ["index"] = 3, ["className"] = "ClipLayer", ["children"]}]
      265 MOVE                             R9 R2
      266 CALL                             R9 0 1
      267 SETTABLEKS                       R9 R8 K8 ["id"]
      269 NEWTABLE                         R9 0 0
      271 SETTABLEKS                       R9 R8 K12 ["children"]
      273 DUPTABLE                         R9 K130 [{["id"], ["name"] = "First", ["index"] = 1, ["className"] = "ClipLayer", ["children"]}]
      274 MOVE                             R10 R2
      275 CALL                             R10 0 1
      276 SETTABLEKS                       R10 R9 K8 ["id"]
      278 NEWTABLE                         R10 0 0
      280 SETTABLEKS                       R10 R9 K12 ["children"]
      282 DUPTABLE                         R10 K132 [{["id"], ["name"] = "Second", ["index"] = 2, ["className"] = "ClipLayer", ["children"]}]
      283 MOVE                             R11 R2
      284 CALL                             R11 0 1
      285 SETTABLEKS                       R11 R10 K8 ["id"]
      287 NEWTABLE                         R11 0 0
      289 SETTABLEKS                       R11 R10 K12 ["children"]
      291 SETLIST                          R7 R8 3 [1]
      293 SETTABLEKS                       R7 R6 K12 ["children"]
      295 SETTABLEKS                       R6 R5 K114 ["sortByIndex"]
      297 DUPTABLE                         R6 K134 [{["id"], ["name"] = "Sort by Name", ["children"]}]
      298 MOVE                             R7 R2
      299 CALL                             R7 0 1
      300 SETTABLEKS                       R7 R6 K8 ["id"]
      302 NEWTABLE                         R7 0 3
      304 DUPTABLE                         R8 K136 [{["id"], ["name"] = "[C] Third", ["className"] = "ClipLayer", ["children"]}]
      305 MOVE                             R9 R2
      306 CALL                             R9 0 1
      307 SETTABLEKS                       R9 R8 K8 ["id"]
      309 NEWTABLE                         R9 0 0
      311 SETTABLEKS                       R9 R8 K12 ["children"]
      313 DUPTABLE                         R9 K138 [{["id"], ["name"] = "[B] Second", ["className"] = "ClipLayer", ["children"]}]
      314 MOVE                             R10 R2
      315 CALL                             R10 0 1
      316 SETTABLEKS                       R10 R9 K8 ["id"]
      318 NEWTABLE                         R10 0 0
      320 SETTABLEKS                       R10 R9 K12 ["children"]
      322 DUPTABLE                         R10 K140 [{["id"], ["name"] = "[A] First", ["className"] = "ClipLayer", ["children"]}]
      323 MOVE                             R11 R2
      324 CALL                             R11 0 1
      325 SETTABLEKS                       R11 R10 K8 ["id"]
      327 NEWTABLE                         R11 0 0
      329 SETTABLEKS                       R11 R10 K12 ["children"]
      331 SETLIST                          R7 R8 3 [1]
      333 SETTABLEKS                       R7 R6 K12 ["children"]
      335 SETTABLEKS                       R6 R5 K115 ["sortByName"]
      337 DUPTABLE                         R6 K142 [{["id"], ["name"] = "Sort by Classname", ["children"]}]
      338 MOVE                             R7 R2
      339 CALL                             R7 0 1
      340 SETTABLEKS                       R7 R6 K8 ["id"]
      342 NEWTABLE                         R7 0 3
      344 DUPTABLE                         R8 K144 [{["id"], ["className"] = "SequenceLayer", ["children"]}]
      345 MOVE                             R9 R2
      346 CALL                             R9 0 1
      347 SETTABLEKS                       R9 R8 K8 ["id"]
      349 NEWTABLE                         R9 0 0
      351 SETTABLEKS                       R9 R8 K12 ["children"]
      353 DUPTABLE                         R9 K145 [{["id"], ["className"] = "Blend1D", ["children"]}]
      354 MOVE                             R10 R2
      355 CALL                             R10 0 1
      356 SETTABLEKS                       R10 R9 K8 ["id"]
      358 NEWTABLE                         R10 0 0
      360 SETTABLEKS                       R10 R9 K12 ["children"]
      362 DUPTABLE                         R10 K146 [{["id"], ["className"] = "ClipLayer", ["children"]}]
      363 MOVE                             R11 R2
      364 CALL                             R11 0 1
      365 SETTABLEKS                       R11 R10 K8 ["id"]
      367 NEWTABLE                         R11 0 0
      369 SETTABLEKS                       R11 R10 K12 ["children"]
      371 SETLIST                          R7 R8 3 [1]
      373 SETTABLEKS                       R7 R6 K12 ["children"]
      375 SETTABLEKS                       R6 R5 K116 ["sortByClassName"]
      377 DUPTABLE                         R6 K148 [{["id"], ["name"] = "Sort by Id", ["children"]}]
      378 MOVE                             R7 R2
      379 CALL                             R7 0 1
      380 SETTABLEKS                       R7 R6 K8 ["id"]
      382 NEWTABLE                         R7 0 3
      384 DUPTABLE                         R8 K146 [{["id"], ["className"] = "ClipLayer", ["children"]}]
      385 MOVE                             R9 R2
      386 CALL                             R9 0 1
      387 SETTABLEKS                       R9 R8 K8 ["id"]
      389 NEWTABLE                         R9 0 0
      391 SETTABLEKS                       R9 R8 K12 ["children"]
      393 DUPTABLE                         R9 K146 [{["id"], ["className"] = "ClipLayer", ["children"]}]
      394 MOVE                             R10 R2
      395 CALL                             R10 0 1
      396 SETTABLEKS                       R10 R9 K8 ["id"]
      398 NEWTABLE                         R10 0 0
      400 SETTABLEKS                       R10 R9 K12 ["children"]
      402 DUPTABLE                         R10 K146 [{["id"], ["className"] = "ClipLayer", ["children"]}]
      403 MOVE                             R11 R2
      404 CALL                             R11 0 1
      405 SETTABLEKS                       R11 R10 K8 ["id"]
      407 NEWTABLE                         R11 0 0
      409 SETTABLEKS                       R11 R10 K12 ["children"]
      411 SETLIST                          R7 R8 3 [1]
      413 SETTABLEKS                       R7 R6 K12 ["children"]
      415 SETTABLEKS                       R6 R5 K117 ["sortById"]
      417 DUPTABLE                         R6 K151 [{"ExpandedSections", "LayerData"}]
      418 NEWTABLE                         R7 4 0
      420 LOADB                            R8 1
      421 SETTABLEKS                       R8 R7 K152 ["LayerDetails"]
      423 LOADB                            R8 1
      424 SETTABLEKS                       R8 R7 K153 ["Properties"]
      426 LOADB                            R8 0
      427 SETTABLEKS                       R8 R7 K154 ["State"]
      429 LOADB                            R8 1
      430 SETTABLEKS                       R8 R7 K155 ["Watches"]
      432 SETTABLEKS                       R7 R6 K149 ["ExpandedSections"]
      434 GETTABLEKS                       R10 R3 K12 ["children"]
      436 GETTABLEN                        R9 R10 1
      437 GETTABLEKS                       R9 R9 K12 ["children"]
      439 GETTABLEN                        R8 R9 1
      440 GETTABLEKS                       R8 R8 K12 ["children"]
      442 GETTABLEN                        R7 R8 3
      443 SETTABLEKS                       R7 R6 K150 ["LayerData"]
      445 SETTABLEKS                       R6 R5 K118 ["clipLayerView"]
      447 DUPTABLE                         R6 K151 [{"ExpandedSections", "LayerData"}]
      448 NEWTABLE                         R7 2 0
      450 LOADB                            R8 1
      451 SETTABLEKS                       R8 R7 K152 ["LayerDetails"]
      453 LOADB                            R8 1
      454 SETTABLEKS                       R8 R7 K153 ["Properties"]
      456 SETTABLEKS                       R7 R6 K149 ["ExpandedSections"]
      458 GETTABLEKS                       R9 R3 K12 ["children"]
      460 GETTABLEN                        R8 R9 1
      461 GETTABLEKS                       R8 R8 K12 ["children"]
      463 GETTABLEN                        R7 R8 1
      464 SETTABLEKS                       R7 R6 K150 ["LayerData"]
      466 SETTABLEKS                       R6 R5 K119 ["blend1DLayerView"]
      468 DUPTABLE                         R6 K151 [{"ExpandedSections", "LayerData"}]
      469 NEWTABLE                         R7 2 0
      471 LOADB                            R8 1
      472 SETTABLEKS                       R8 R7 K152 ["LayerDetails"]
      474 LOADB                            R8 1
      475 SETTABLEKS                       R8 R7 K153 ["Properties"]
      477 SETTABLEKS                       R7 R6 K149 ["ExpandedSections"]
      479 DUPTABLE                         R7 K158 [{["children"], ["className"] = "Blend1D", ["name"] = "WrongTargets", ["id"] = "{275F34E0-57F4-4534-A5CB-38518EF2EB37}", ["props"], ["weight"] = 1}]
      480 NEWTABLE                         R8 0 4
      482 DUPTABLE                         R9 K159 [{"linkData"}]
      483 DUPTABLE                         R10 K78 [{"position"}]
      484 GETIMPORT                        R11 K81 [Vector2.new]
      486 LOADN                            R12 1
      487 LOADN                            R13 1
      488 CALL                             R11 2 1
      489 SETTABLEKS                       R11 R10 K32 ["position"]
      491 SETTABLEKS                       R10 R9 K28 ["linkData"]
      493 DUPTABLE                         R10 K159 [{"linkData"}]
      494 DUPTABLE                         R11 K161 [{["position"] = {3, 0, 0}}]
      495 SETTABLEKS                       R11 R10 K28 ["linkData"]
      497 DUPTABLE                         R11 K159 [{"linkData"}]
      498 DUPTABLE                         R12 K78 [{"position"}]
      499 DUPTABLE                         R13 K163 [{["X"] = 5}]
      500 SETTABLEKS                       R13 R12 K32 ["position"]
      502 SETTABLEKS                       R12 R11 K28 ["linkData"]
      504 DUPTABLE                         R12 K159 [{"linkData"}]
      505 DUPTABLE                         R13 K164 [{["position"] = "FOO"}]
      506 SETTABLEKS                       R13 R12 K28 ["linkData"]
      508 SETLIST                          R8 R9 4 [1]
      510 SETTABLEKS                       R8 R7 K12 ["children"]
      512 DUPTABLE                         R8 K70 [{["targetPosition"] = 2, ["speed"] = 1}]
      513 SETTABLEKS                       R8 R7 K17 ["props"]
      515 SETTABLEKS                       R7 R6 K150 ["LayerData"]
      517 SETTABLEKS                       R6 R5 K120 ["blend1DLayerViewWrongType"]
      519 DUPTABLE                         R6 K151 [{"ExpandedSections", "LayerData"}]
      520 NEWTABLE                         R7 2 0
      522 LOADB                            R8 1
      523 SETTABLEKS                       R8 R7 K152 ["LayerDetails"]
      525 LOADB                            R8 1
      526 SETTABLEKS                       R8 R7 K153 ["Properties"]
      528 SETTABLEKS                       R7 R6 K149 ["ExpandedSections"]
      530 DUPTABLE                         R7 K165 [{["children"], ["className"] = "Blend2D", ["name"] = "WrongTargets", ["id"] = "{275F34E0-57F4-4534-A5CB-38518EF2EB37}", ["props"], ["weight"] = 1}]
      531 NEWTABLE                         R8 0 4
      533 DUPTABLE                         R9 K159 [{"linkData"}]
      534 DUPTABLE                         R10 K33 [{["position"] = 1}]
      535 SETTABLEKS                       R10 R9 K28 ["linkData"]
      537 DUPTABLE                         R10 K159 [{"linkData"}]
      538 DUPTABLE                         R11 K167 [{["position"] = {3, 2, 0}}]
      539 SETTABLEKS                       R11 R10 K28 ["linkData"]
      541 DUPTABLE                         R11 K159 [{"linkData"}]
      542 DUPTABLE                         R12 K78 [{"position"}]
      543 DUPTABLE                         R13 K169 [{["X"] = 5, ["Y"] = 1}]
      544 SETTABLEKS                       R13 R12 K32 ["position"]
      546 SETTABLEKS                       R12 R11 K28 ["linkData"]
      548 DUPTABLE                         R12 K159 [{"linkData"}]
      549 DUPTABLE                         R13 K164 [{["position"] = "FOO"}]
      550 SETTABLEKS                       R13 R12 K28 ["linkData"]
      552 SETLIST                          R8 R9 4 [1]
      554 SETTABLEKS                       R8 R7 K12 ["children"]
      556 DUPTABLE                         R8 K89 [{["targetPosition"], ["speed"] = 1}]
      557 GETIMPORT                        R9 K81 [Vector2.new]
      559 LOADK                            R10 K29 [0.5]
      560 LOADK                            R11 K29 [0.5]
      561 CALL                             R9 2 1
      562 SETTABLEKS                       R9 R8 K68 ["targetPosition"]
      564 SETTABLEKS                       R8 R7 K17 ["props"]
      566 SETTABLEKS                       R7 R6 K150 ["LayerData"]
      568 SETTABLEKS                       R6 R5 K121 ["blend2DLayerViewWrongType"]
      570 DUPTABLE                         R6 K151 [{"ExpandedSections", "LayerData"}]
      571 NEWTABLE                         R7 2 0
      573 LOADB                            R8 1
      574 SETTABLEKS                       R8 R7 K152 ["LayerDetails"]
      576 LOADB                            R8 1
      577 SETTABLEKS                       R8 R7 K153 ["Properties"]
      579 SETTABLEKS                       R7 R6 K149 ["ExpandedSections"]
      581 GETTABLEKS                       R9 R3 K12 ["children"]
      583 GETTABLEN                        R8 R9 1
      584 GETTABLEKS                       R8 R8 K12 ["children"]
      586 GETTABLEN                        R7 R8 2
      587 SETTABLEKS                       R7 R6 K150 ["LayerData"]
      589 SETTABLEKS                       R6 R5 K122 ["blend2DLayerView"]
      591 DUPTABLE                         R6 K64 [{["timePositionNormalized"] = 0.5, ["length"] = 4}]
      592 SETTABLEKS                       R6 R5 K41 ["state"]
      594 RETURN                           R5 1
