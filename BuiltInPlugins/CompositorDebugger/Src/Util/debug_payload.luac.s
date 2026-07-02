PROTO_0:
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
       14 DUPTABLE                         R2 K16 [{["children"], ["id"] = "foo", ["hrpCFrame"], ["name"] = "Parraing", ["timestamp"] = 7.2416670541279}]
       15 NEWTABLE                         R3 0 1
       17 DUPTABLE                         R4 K25 [{["children"], ["className"] = "HeadRotate", ["id"] = "{0fd9dd90-1937-4662-85de-fa87000f549e}", ["name"] = "Head Rotation", ["props"], ["state"], ["weight"] = 1}]
       18 NEWTABLE                         R5 0 1
       20 DUPTABLE                         R6 K29 [{["children"], ["className"] = "Priority", ["id"] = "{54b88a48-a872-4b81-ae19-e530bce87fb3}", ["name"] = "Priority Blend", ["props"], ["state"], ["weight"] = 1}]
       21 NEWTABLE                         R7 0 2
       23 DUPTABLE                         R8 K33 [{["children"], ["className"] = "ClipLayer", ["id"] = "{91a192be-2369-41cb-801a-26bd4fc053d2}", ["name"] = "Tool None", ["props"], ["state"], ["weight"] = 1}]
       24 NEWTABLE                         R9 0 0
       26 SETTABLEKS                       R9 R8 K8 ["children"]
       28 DUPTABLE                         R9 K49 [{["animationId"] = "rbxassetid://507768375", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
       29 NEWTABLE                         R10 0 0
       31 SETTABLEKS                       R10 R9 K42 ["markerEvents"]
       33 NEWTABLE                         R10 0 0
       35 SETTABLEKS                       R10 R9 K48 ["timePositionEvents"]
       37 SETTABLEKS                       R9 R8 K21 ["props"]
       39 DUPTABLE                         R9 K60 [{["currentAnimationId"] = "rbxassetid://507768375", ["length"] = 0.0416666679084301, ["loadingState"] = "Loaded", ["markerEvents"], ["prevTimePosition"] = 0.0333335059694946, ["timePosition"] = 0.0333335059694946, ["timePositionEvents"], ["timePositionNormalized"] = 0.800004119425889}]
       40 NEWTABLE                         R10 0 0
       42 SETTABLEKS                       R10 R9 K42 ["markerEvents"]
       44 NEWTABLE                         R10 0 0
       46 SETTABLEKS                       R10 R9 K48 ["timePositionEvents"]
       48 SETTABLEKS                       R9 R8 K22 ["state"]
       50 SETTABLEN                        R8 R7 1
       51 DUPTABLE                         R8 K63 [{["children"], ["className"] = "SelectLayer", ["id"] = "{c77cf2a9-8984-419f-b208-f4a337c63839}", ["props"], ["state"], ["weight"] = 1}]
       52 NEWTABLE                         R9 0 10
       54 DUPTABLE                         R10 K68 [{["children"], ["className"] = "BlendSpace", ["id"] = "{01378bfa-3123-4277-be55-5105e62f22f2}", ["linkData"], ["name"] = "Backward Locomotion", ["props"], ["state"], ["weight"] = 0}]
       55 NEWTABLE                         R11 0 11
       57 DUPTABLE                         R12 K73 [{["children"], ["className"] = "RestPose", ["id"] = "{b93312c4-8c4d-453c-93ed-9541195b7fe7}", ["index"] = 1, ["linkData"], ["name"] = "Origin", ["props"], ["state"], ["weight"] = 0}]
       58 NEWTABLE                         R13 0 0
       60 SETTABLEKS                       R13 R12 K8 ["children"]
       62 DUPTABLE                         R13 K75 [{"position"}]
       63 GETIMPORT                        R14 K78 [Vector2.new]
       65 LOADN                            R15 0
       66 LOADN                            R16 0
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K74 ["position"]
       70 SETTABLEKS                       R13 R12 K66 ["linkData"]
       72 DUPTABLE                         R13 K80 [{["duration"] = 1}]
       73 SETTABLEKS                       R13 R12 K21 ["props"]
       75 DUPTABLE                         R13 K81 [{["length"] = 1, ["timePositionNormalized"] = 0}]
       76 SETTABLEKS                       R13 R12 K22 ["state"]
       78 SETTABLEN                        R12 R11 1
       79 DUPTABLE                         R12 K85 [{["children"], ["className"] = "ClipLayer", ["id"] = "{6556d92c-2ab0-47f6-9633-1e8b22e8c823}", ["index"] = 2, ["linkData"], ["name"] = "Right Walk", ["props"], ["state"], ["weight"] = 0}]
       80 NEWTABLE                         R13 0 0
       82 SETTABLEKS                       R13 R12 K8 ["children"]
       84 DUPTABLE                         R13 K75 [{"position"}]
       85 GETIMPORT                        R14 K78 [Vector2.new]
       87 LOADN                            R15 1
       88 LOADN                            R16 0
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K74 ["position"]
       92 SETTABLEKS                       R13 R12 K66 ["linkData"]
       94 DUPTABLE                         R13 K87 [{["animationId"] = "rbxassetid://10847107747", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
       95 NEWTABLE                         R14 0 0
       97 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
       99 NEWTABLE                         R14 0 0
      101 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      103 SETTABLEKS                       R13 R12 K21 ["props"]
      105 DUPTABLE                         R13 K89 [{["currentAnimationId"] = "rbxassetid://10847107747", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      106 NEWTABLE                         R14 0 0
      108 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      110 NEWTABLE                         R14 0 0
      112 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      114 SETTABLEKS                       R13 R12 K22 ["state"]
      116 SETTABLEN                        R12 R11 2
      117 DUPTABLE                         R12 K93 [{["children"], ["className"] = "ClipLayer", ["id"] = "{782abac9-1ad8-46b8-9441-dd901a6e923f}", ["index"] = 3, ["linkData"], ["name"] = "Right Run", ["props"], ["state"], ["weight"] = 0}]
      118 NEWTABLE                         R13 0 0
      120 SETTABLEKS                       R13 R12 K8 ["children"]
      122 DUPTABLE                         R13 K75 [{"position"}]
      123 GETIMPORT                        R14 K78 [Vector2.new]
      125 LOADN                            R15 2
      126 LOADN                            R16 0
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K74 ["position"]
      130 SETTABLEKS                       R13 R12 K66 ["linkData"]
      132 DUPTABLE                         R13 K95 [{["animationId"] = "rbxassetid://10847291554", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      133 NEWTABLE                         R14 0 0
      135 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      137 NEWTABLE                         R14 0 0
      139 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      141 SETTABLEKS                       R13 R12 K21 ["props"]
      143 DUPTABLE                         R13 K96 [{["currentAnimationId"] = "rbxassetid://10847291554", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      144 NEWTABLE                         R14 0 0
      146 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      148 NEWTABLE                         R14 0 0
      150 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      152 SETTABLEKS                       R13 R12 K22 ["state"]
      154 SETTABLEN                        R12 R11 3
      155 DUPTABLE                         R12 K100 [{["children"], ["className"] = "ClipLayer", ["id"] = "{816c6077-957c-4748-9ed6-72985a98a8af}", ["index"] = 4, ["linkData"], ["name"] = "Left Walk", ["props"], ["state"], ["weight"] = 0}]
      156 NEWTABLE                         R13 0 0
      158 SETTABLEKS                       R13 R12 K8 ["children"]
      160 DUPTABLE                         R13 K75 [{"position"}]
      161 GETIMPORT                        R14 K78 [Vector2.new]
      163 LOADN                            R15 -1
      164 LOADN                            R16 0
      165 CALL                             R14 2 1
      166 SETTABLEKS                       R14 R13 K74 ["position"]
      168 SETTABLEKS                       R13 R12 K66 ["linkData"]
      170 DUPTABLE                         R13 K102 [{["animationId"] = "rbxassetid://10382771806", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      171 NEWTABLE                         R14 0 0
      173 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      175 NEWTABLE                         R14 0 0
      177 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      179 SETTABLEKS                       R13 R12 K21 ["props"]
      181 DUPTABLE                         R13 K103 [{["currentAnimationId"] = "rbxassetid://10382771806", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      182 NEWTABLE                         R14 0 0
      184 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      186 NEWTABLE                         R14 0 0
      188 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      190 SETTABLEKS                       R13 R12 K22 ["state"]
      192 SETTABLEN                        R12 R11 4
      193 DUPTABLE                         R12 K107 [{["children"], ["className"] = "ClipLayer", ["id"] = "{9a4dc8c8-59ec-40a8-88ae-36d8c2e7476d}", ["index"] = 5, ["linkData"], ["name"] = "Left Run", ["props"], ["state"], ["weight"] = 0}]
      194 NEWTABLE                         R13 0 0
      196 SETTABLEKS                       R13 R12 K8 ["children"]
      198 DUPTABLE                         R13 K75 [{"position"}]
      199 GETIMPORT                        R14 K78 [Vector2.new]
      201 LOADN                            R15 -2
      202 LOADN                            R16 0
      203 CALL                             R14 2 1
      204 SETTABLEKS                       R14 R13 K74 ["position"]
      206 SETTABLEKS                       R13 R12 K66 ["linkData"]
      208 DUPTABLE                         R13 K109 [{["animationId"] = "rbxassetid://10847298457", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      209 NEWTABLE                         R14 0 0
      211 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      213 NEWTABLE                         R14 0 0
      215 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      217 SETTABLEKS                       R13 R12 K21 ["props"]
      219 DUPTABLE                         R13 K110 [{["currentAnimationId"] = "rbxassetid://10847298457", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      220 NEWTABLE                         R14 0 0
      222 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      224 NEWTABLE                         R14 0 0
      226 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      228 SETTABLEKS                       R13 R12 K22 ["state"]
      230 SETTABLEN                        R12 R11 5
      231 DUPTABLE                         R12 K114 [{["children"], ["className"] = "ClipLayer", ["id"] = "{ae2f3459-80bc-4487-a5fb-7b82c38f2f8d}", ["index"] = 6, ["linkData"], ["name"] = "Backward Walk", ["props"], ["state"], ["weight"] = 0}]
      232 NEWTABLE                         R13 0 0
      234 SETTABLEKS                       R13 R12 K8 ["children"]
      236 DUPTABLE                         R13 K75 [{"position"}]
      237 GETIMPORT                        R14 K78 [Vector2.new]
      239 LOADN                            R15 0
      240 LOADN                            R16 -1
      241 CALL                             R14 2 1
      242 SETTABLEKS                       R14 R13 K74 ["position"]
      244 SETTABLEKS                       R13 R12 K66 ["linkData"]
      246 DUPTABLE                         R13 K116 [{["animationId"] = "rbxassetid://10358505520", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      247 NEWTABLE                         R14 0 0
      249 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      251 NEWTABLE                         R14 0 0
      253 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      255 SETTABLEKS                       R13 R12 K21 ["props"]
      257 DUPTABLE                         R13 K117 [{["currentAnimationId"] = "rbxassetid://10358505520", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      258 NEWTABLE                         R14 0 0
      260 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      262 NEWTABLE                         R14 0 0
      264 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      266 SETTABLEKS                       R13 R12 K22 ["state"]
      268 SETTABLEN                        R12 R11 6
      269 DUPTABLE                         R12 K121 [{["children"], ["className"] = "ClipLayer", ["id"] = "{c6b01432-2acf-4e04-bca4-ecee93647ac6}", ["index"] = 7, ["linkData"], ["name"] = "Backward Run", ["props"], ["state"], ["weight"] = 0}]
      270 NEWTABLE                         R13 0 0
      272 SETTABLEKS                       R13 R12 K8 ["children"]
      274 DUPTABLE                         R13 K75 [{"position"}]
      275 GETIMPORT                        R14 K78 [Vector2.new]
      277 LOADN                            R15 0
      278 LOADN                            R16 -2
      279 CALL                             R14 2 1
      280 SETTABLEKS                       R14 R13 K74 ["position"]
      282 SETTABLEKS                       R13 R12 K66 ["linkData"]
      284 DUPTABLE                         R13 K123 [{["animationId"] = "rbxassetid://10358526981", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      285 NEWTABLE                         R14 0 0
      287 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      289 NEWTABLE                         R14 0 0
      291 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      293 SETTABLEKS                       R13 R12 K21 ["props"]
      295 DUPTABLE                         R13 K124 [{["currentAnimationId"] = "rbxassetid://10358526981", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      296 NEWTABLE                         R14 0 0
      298 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      300 NEWTABLE                         R14 0 0
      302 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      304 SETTABLEKS                       R13 R12 K22 ["state"]
      306 SETTABLEN                        R12 R11 7
      307 DUPTABLE                         R12 K128 [{["children"], ["className"] = "ClipLayer", ["id"] = "{e466dbc1-f3d2-4271-8ad8-e0ac692c1356}", ["index"] = 8, ["linkData"], ["name"] = "Backward Left Walk", ["props"], ["state"], ["weight"] = 0}]
      308 NEWTABLE                         R13 0 0
      310 SETTABLEKS                       R13 R12 K8 ["children"]
      312 DUPTABLE                         R13 K75 [{"position"}]
      313 GETIMPORT                        R14 K78 [Vector2.new]
      315 LOADK                            R15 K129 [-0.707106769]
      316 LOADK                            R16 K129 [-0.707106769]
      317 CALL                             R14 2 1
      318 SETTABLEKS                       R14 R13 K74 ["position"]
      320 SETTABLEKS                       R13 R12 K66 ["linkData"]
      322 DUPTABLE                         R13 K102 [{["animationId"] = "rbxassetid://10382771806", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      323 NEWTABLE                         R14 0 0
      325 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      327 NEWTABLE                         R14 0 0
      329 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      331 SETTABLEKS                       R13 R12 K21 ["props"]
      333 DUPTABLE                         R13 K103 [{["currentAnimationId"] = "rbxassetid://10382771806", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      334 NEWTABLE                         R14 0 0
      336 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      338 NEWTABLE                         R14 0 0
      340 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      342 SETTABLEKS                       R13 R12 K22 ["state"]
      344 SETTABLEN                        R12 R11 8
      345 DUPTABLE                         R12 K133 [{["children"], ["className"] = "ClipLayer", ["id"] = "{605421b4-16f3-40f9-a781-561ea5fa97fe}", ["index"] = 9, ["linkData"], ["name"] = "Backward Right Walk", ["props"], ["state"], ["weight"] = 0}]
      346 NEWTABLE                         R13 0 0
      348 SETTABLEKS                       R13 R12 K8 ["children"]
      350 DUPTABLE                         R13 K75 [{"position"}]
      351 GETIMPORT                        R14 K78 [Vector2.new]
      353 LOADK                            R15 K134 [0.707106769]
      354 LOADK                            R16 K129 [-0.707106769]
      355 CALL                             R14 2 1
      356 SETTABLEKS                       R14 R13 K74 ["position"]
      358 SETTABLEKS                       R13 R12 K66 ["linkData"]
      360 DUPTABLE                         R13 K136 [{["animationId"] = "rbxassetid://10382635795", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      361 NEWTABLE                         R14 0 0
      363 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      365 NEWTABLE                         R14 0 0
      367 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      369 SETTABLEKS                       R13 R12 K21 ["props"]
      371 DUPTABLE                         R13 K137 [{["currentAnimationId"] = "rbxassetid://10382635795", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      372 NEWTABLE                         R14 0 0
      374 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      376 NEWTABLE                         R14 0 0
      378 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      380 SETTABLEKS                       R13 R12 K22 ["state"]
      382 SETTABLEN                        R12 R11 9
      383 DUPTABLE                         R12 K141 [{["children"], ["className"] = "ClipLayer", ["id"] = "{3f08126d-f7f8-405e-bc24-026900d76dc4}", ["index"] = 10, ["linkData"], ["name"] = "Backward Left Run", ["props"], ["state"], ["weight"] = 0}]
      384 NEWTABLE                         R13 0 0
      386 SETTABLEKS                       R13 R12 K8 ["children"]
      388 DUPTABLE                         R13 K75 [{"position"}]
      389 GETIMPORT                        R14 K78 [Vector2.new]
      391 LOADK                            R15 K142 [-1.41421354]
      392 LOADK                            R16 K142 [-1.41421354]
      393 CALL                             R14 2 1
      394 SETTABLEKS                       R14 R13 K74 ["position"]
      396 SETTABLEKS                       R13 R12 K66 ["linkData"]
      398 DUPTABLE                         R13 K144 [{["animationId"] = "rbxassetid://10382960556", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      399 NEWTABLE                         R14 0 0
      401 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      403 NEWTABLE                         R14 0 0
      405 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      407 SETTABLEKS                       R13 R12 K21 ["props"]
      409 DUPTABLE                         R13 K145 [{["currentAnimationId"] = "rbxassetid://10382960556", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      410 NEWTABLE                         R14 0 0
      412 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      414 NEWTABLE                         R14 0 0
      416 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      418 SETTABLEKS                       R13 R12 K22 ["state"]
      420 SETTABLEN                        R12 R11 10
      421 DUPTABLE                         R12 K149 [{["children"], ["className"] = "ClipLayer", ["id"] = "{bf7bf7ee-c275-4ac6-aa71-86df90705fee}", ["index"] = 11, ["linkData"], ["name"] = "Backward Right Run", ["props"], ["state"], ["weight"] = 0}]
      422 NEWTABLE                         R13 0 0
      424 SETTABLEKS                       R13 R12 K8 ["children"]
      426 DUPTABLE                         R13 K75 [{"position"}]
      427 GETIMPORT                        R14 K78 [Vector2.new]
      429 LOADK                            R15 K150 [1.41421354]
      430 LOADK                            R16 K142 [-1.41421354]
      431 CALL                             R14 2 1
      432 SETTABLEKS                       R14 R13 K74 ["position"]
      434 SETTABLEKS                       R13 R12 K66 ["linkData"]
      436 DUPTABLE                         R13 K152 [{["animationId"] = "rbxassetid://10382949241", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      437 NEWTABLE                         R14 0 0
      439 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      441 NEWTABLE                         R14 0 0
      443 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      445 SETTABLEKS                       R13 R12 K21 ["props"]
      447 DUPTABLE                         R13 K153 [{["currentAnimationId"] = "rbxassetid://10382949241", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      448 NEWTABLE                         R14 0 0
      450 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      452 NEWTABLE                         R14 0 0
      454 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      456 SETTABLEKS                       R13 R12 K22 ["state"]
      458 SETTABLEN                        R12 R11 11
      459 SETTABLEKS                       R11 R10 K8 ["children"]
      461 NEWTABLE                         R11 0 1
      463 LOADK                            R12 K154 ["LocomotingBackward"]
      464 SETTABLEN                        R12 R11 1
      465 SETTABLEKS                       R11 R10 K66 ["linkData"]
      467 DUPTABLE                         R11 K160 [{["blendSpaceType"] = "Locomotion", ["lowLodThreshold"] = 2, ["positionSmoothingTime"] = 0, ["speed"] = 0, ["targetPosition"]}]
      468 GETIMPORT                        R12 K78 [Vector2.new]
      470 LOADN                            R13 0
      471 LOADN                            R14 0
      472 CALL                             R12 2 1
      473 SETTABLEKS                       R12 R11 K159 ["targetPosition"]
      475 SETTABLEKS                       R11 R10 K21 ["props"]
      477 DUPTABLE                         R11 K161 [{["length"] = 0, ["timePositionNormalized"] = 0}]
      478 SETTABLEKS                       R11 R10 K22 ["state"]
      480 SETTABLEN                        R10 R9 1
      481 DUPTABLE                         R10 K164 [{["children"], ["className"] = "ClipLayer", ["id"] = "{67afe536-0b3e-4542-b392-26a3e7691d57}", ["linkData"], ["name"] = "Climbing", ["props"], ["state"], ["weight"] = 0}]
      482 NEWTABLE                         R11 0 0
      484 SETTABLEKS                       R11 R10 K8 ["children"]
      486 NEWTABLE                         R11 0 1
      488 LOADK                            R12 K163 ["Climbing"]
      489 SETTABLEN                        R12 R11 1
      490 SETTABLEKS                       R11 R10 K66 ["linkData"]
      492 DUPTABLE                         R11 K166 [{["animationId"] = "rbxassetid://507765644", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 0, ["startTime"] = 0, ["timePositionEvents"]}]
      493 NEWTABLE                         R12 0 0
      495 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
      497 NEWTABLE                         R12 0 0
      499 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
      501 SETTABLEKS                       R11 R10 K21 ["props"]
      503 DUPTABLE                         R11 K168 [{["currentAnimationId"] = "rbxassetid://507765644", ["length"] = 1.04167497158051, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      504 NEWTABLE                         R12 0 0
      506 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
      508 NEWTABLE                         R12 0 0
      510 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
      512 SETTABLEKS                       R11 R10 K22 ["state"]
      514 SETTABLEN                        R10 R9 2
      515 DUPTABLE                         R10 K171 [{["children"], ["className"] = "ClipLayer", ["id"] = "{4fee757f-9545-47de-9d1b-832f0de17068}", ["linkData"], ["name"] = "Emote", ["props"], ["state"], ["weight"] = 0}]
      516 NEWTABLE                         R11 0 0
      518 SETTABLEKS                       R11 R10 K8 ["children"]
      520 NEWTABLE                         R11 0 1
      522 LOADK                            R12 K170 ["Emote"]
      523 SETTABLEN                        R12 R11 1
      524 SETTABLEKS                       R11 R10 K66 ["linkData"]
      526 DUPTABLE                         R11 K172 [{["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      527 NEWTABLE                         R12 0 0
      529 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
      531 NEWTABLE                         R12 0 1
      533 DUPTABLE                         R13 K176 [{["name"] = "EmoteEnding", ["shouldFireFn"], ["timePosition"] = -0.2}]
      534 DUPCLOSURE                       R14 K177 [PROTO_0]
      535 SETTABLEKS                       R14 R13 K174 ["shouldFireFn"]
      537 SETTABLEN                        R13 R12 1
      538 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
      540 SETTABLEKS                       R11 R10 K21 ["props"]
      542 DUPTABLE                         R11 K179 [{["length"] = 0, ["loadingState"] = "Unloaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      543 NEWTABLE                         R12 0 0
      545 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
      547 NEWTABLE                         R12 0 0
      549 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
      551 SETTABLEKS                       R11 R10 K22 ["state"]
      553 SETTABLEN                        R10 R9 3
      554 DUPTABLE                         R10 K182 [{["children"], ["className"] = "ClipLayer", ["id"] = "{65f0fdf6-733e-42b8-b8a1-19ef18c415c1}", ["linkData"], ["name"] = "Falling", ["props"], ["state"], ["weight"] = 0}]
      555 NEWTABLE                         R11 0 0
      557 SETTABLEKS                       R11 R10 K8 ["children"]
      559 NEWTABLE                         R11 0 1
      561 LOADK                            R12 K181 ["Falling"]
      562 SETTABLEN                        R12 R11 1
      563 SETTABLEKS                       R11 R10 K66 ["linkData"]
      565 DUPTABLE                         R11 K184 [{["animationId"] = "rbxassetid://10921262864", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      566 NEWTABLE                         R12 0 0
      568 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
      570 NEWTABLE                         R12 0 0
      572 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
      574 SETTABLEKS                       R11 R10 K21 ["props"]
      576 DUPTABLE                         R11 K186 [{["currentAnimationId"] = "rbxassetid://10921262864", ["length"] = 0.75, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      577 NEWTABLE                         R12 0 0
      579 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
      581 NEWTABLE                         R12 0 0
      583 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
      585 SETTABLEKS                       R11 R10 K22 ["state"]
      587 SETTABLEN                        R10 R9 4
      588 DUPTABLE                         R10 K189 [{["children"], ["className"] = "BlendSpace", ["id"] = "{d4597589-d9c5-47df-b379-71b2f6af05fe}", ["linkData"], ["name"] = "Forward Locomotion", ["props"], ["state"], ["weight"] = 0}]
      589 NEWTABLE                         R11 0 11
      591 DUPTABLE                         R12 K191 [{["children"], ["className"] = "RestPose", ["id"] = "{3ccee2e5-24c1-46eb-a736-825584054a59}", ["index"] = 1, ["linkData"], ["name"] = "Origin", ["props"], ["state"], ["weight"] = 0}]
      592 NEWTABLE                         R13 0 0
      594 SETTABLEKS                       R13 R12 K8 ["children"]
      596 DUPTABLE                         R13 K75 [{"position"}]
      597 GETIMPORT                        R14 K78 [Vector2.new]
      599 LOADN                            R15 0
      600 LOADN                            R16 0
      601 CALL                             R14 2 1
      602 SETTABLEKS                       R14 R13 K74 ["position"]
      604 SETTABLEKS                       R13 R12 K66 ["linkData"]
      606 DUPTABLE                         R13 K80 [{["duration"] = 1}]
      607 SETTABLEKS                       R13 R12 K21 ["props"]
      609 DUPTABLE                         R13 K81 [{["length"] = 1, ["timePositionNormalized"] = 0}]
      610 SETTABLEKS                       R13 R12 K22 ["state"]
      612 SETTABLEN                        R12 R11 1
      613 DUPTABLE                         R12 K194 [{["children"], ["className"] = "ClipLayer", ["id"] = "{65ac6017-a983-4124-b6b3-558227f7e545}", ["index"] = 2, ["linkData"], ["name"] = "Forward Walk", ["props"], ["state"], ["weight"] = 0}]
      614 NEWTABLE                         R13 0 0
      616 SETTABLEKS                       R13 R12 K8 ["children"]
      618 DUPTABLE                         R13 K75 [{"position"}]
      619 GETIMPORT                        R14 K78 [Vector2.new]
      621 LOADN                            R15 0
      622 LOADN                            R16 1
      623 CALL                             R14 2 1
      624 SETTABLEKS                       R14 R13 K74 ["position"]
      626 SETTABLEKS                       R13 R12 K66 ["linkData"]
      628 DUPTABLE                         R13 K196 [{["animationId"] = "rbxassetid://14045085169", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      629 DUPTABLE                         R14 K198 [{["Footstep"] = "Footstep"}]
      630 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      632 NEWTABLE                         R14 0 0
      634 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      636 SETTABLEKS                       R13 R12 K21 ["props"]
      638 DUPTABLE                         R13 K200 [{["currentAnimationId"] = "rbxassetid://14045085169", ["length"] = 0, ["loadingState"] = "Loading", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      639 NEWTABLE                         R14 0 0
      641 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      643 NEWTABLE                         R14 0 0
      645 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      647 SETTABLEKS                       R13 R12 K22 ["state"]
      649 SETTABLEN                        R12 R11 2
      650 DUPTABLE                         R12 K203 [{["children"], ["className"] = "ClipLayer", ["id"] = "{1d71c8d7-85ee-4ecf-9c9f-aef68c69a889}", ["index"] = 3, ["linkData"], ["name"] = "Forward Run", ["props"], ["state"], ["weight"] = 0}]
      651 NEWTABLE                         R13 0 0
      653 SETTABLEKS                       R13 R12 K8 ["children"]
      655 DUPTABLE                         R13 K75 [{"position"}]
      656 GETIMPORT                        R14 K78 [Vector2.new]
      658 LOADN                            R15 0
      659 LOADN                            R16 2
      660 CALL                             R14 2 1
      661 SETTABLEKS                       R14 R13 K74 ["position"]
      663 SETTABLEKS                       R13 R12 K66 ["linkData"]
      665 DUPTABLE                         R13 K205 [{["animationId"] = "rbxassetid://10899968825", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      666 NEWTABLE                         R14 0 0
      668 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      670 NEWTABLE                         R14 0 0
      672 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      674 SETTABLEKS                       R13 R12 K21 ["props"]
      676 DUPTABLE                         R13 K206 [{["currentAnimationId"] = "rbxassetid://10899968825", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      677 NEWTABLE                         R14 0 0
      679 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      681 NEWTABLE                         R14 0 0
      683 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      685 SETTABLEKS                       R13 R12 K22 ["state"]
      687 SETTABLEN                        R12 R11 3
      688 DUPTABLE                         R12 K208 [{["children"], ["className"] = "ClipLayer", ["id"] = "{4512dbbc-91da-45cc-950a-9480266b4b2d}", ["index"] = 4, ["linkData"], ["name"] = "Right Walk", ["props"], ["state"], ["weight"] = 0}]
      689 NEWTABLE                         R13 0 0
      691 SETTABLEKS                       R13 R12 K8 ["children"]
      693 DUPTABLE                         R13 K75 [{"position"}]
      694 GETIMPORT                        R14 K78 [Vector2.new]
      696 LOADN                            R15 1
      697 LOADN                            R16 0
      698 CALL                             R14 2 1
      699 SETTABLEKS                       R14 R13 K74 ["position"]
      701 SETTABLEKS                       R13 R12 K66 ["linkData"]
      703 DUPTABLE                         R13 K210 [{["animationId"] = "rbxassetid://10404404615", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      704 NEWTABLE                         R14 0 0
      706 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      708 NEWTABLE                         R14 0 0
      710 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      712 SETTABLEKS                       R13 R12 K21 ["props"]
      714 DUPTABLE                         R13 K211 [{["currentAnimationId"] = "rbxassetid://10404404615", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      715 NEWTABLE                         R14 0 0
      717 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      719 NEWTABLE                         R14 0 0
      721 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      723 SETTABLEKS                       R13 R12 K22 ["state"]
      725 SETTABLEN                        R12 R11 4
      726 DUPTABLE                         R12 K213 [{["children"], ["className"] = "ClipLayer", ["id"] = "{6d769e3c-82cf-4869-a72f-71c8138a1f52}", ["index"] = 5, ["linkData"], ["name"] = "Right Run", ["props"], ["state"], ["weight"] = 0}]
      727 NEWTABLE                         R13 0 0
      729 SETTABLEKS                       R13 R12 K8 ["children"]
      731 DUPTABLE                         R13 K75 [{"position"}]
      732 GETIMPORT                        R14 K78 [Vector2.new]
      734 LOADN                            R15 2
      735 LOADN                            R16 0
      736 CALL                             R14 2 1
      737 SETTABLEKS                       R14 R13 K74 ["position"]
      739 SETTABLEKS                       R13 R12 K66 ["linkData"]
      741 DUPTABLE                         R13 K215 [{["animationId"] = "rbxassetid://10404627994", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      742 NEWTABLE                         R14 0 0
      744 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      746 NEWTABLE                         R14 0 0
      748 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      750 SETTABLEKS                       R13 R12 K21 ["props"]
      752 DUPTABLE                         R13 K216 [{["currentAnimationId"] = "rbxassetid://10404627994", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      753 NEWTABLE                         R14 0 0
      755 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      757 NEWTABLE                         R14 0 0
      759 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      761 SETTABLEKS                       R13 R12 K22 ["state"]
      763 SETTABLEN                        R12 R11 5
      764 DUPTABLE                         R12 K218 [{["children"], ["className"] = "ClipLayer", ["id"] = "{0fc10906-5cea-4e87-84e7-053506e27dbf}", ["index"] = 6, ["linkData"], ["name"] = "Left Walk", ["props"], ["state"], ["weight"] = 0}]
      765 NEWTABLE                         R13 0 0
      767 SETTABLEKS                       R13 R12 K8 ["children"]
      769 DUPTABLE                         R13 K75 [{"position"}]
      770 GETIMPORT                        R14 K78 [Vector2.new]
      772 LOADN                            R15 -1
      773 LOADN                            R16 0
      774 CALL                             R14 2 1
      775 SETTABLEKS                       R14 R13 K74 ["position"]
      777 SETTABLEKS                       R13 R12 K66 ["linkData"]
      779 DUPTABLE                         R13 K220 [{["animationId"] = "rbxassetid://10404377900", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      780 NEWTABLE                         R14 0 0
      782 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      784 NEWTABLE                         R14 0 0
      786 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      788 SETTABLEKS                       R13 R12 K21 ["props"]
      790 DUPTABLE                         R13 K221 [{["currentAnimationId"] = "rbxassetid://10404377900", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      791 NEWTABLE                         R14 0 0
      793 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      795 NEWTABLE                         R14 0 0
      797 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      799 SETTABLEKS                       R13 R12 K22 ["state"]
      801 SETTABLEN                        R12 R11 6
      802 DUPTABLE                         R12 K223 [{["children"], ["className"] = "ClipLayer", ["id"] = "{5f721a47-53cc-4b3b-bc5b-ea223561ebad}", ["index"] = 7, ["linkData"], ["name"] = "Left Run", ["props"], ["state"], ["weight"] = 0}]
      803 NEWTABLE                         R13 0 0
      805 SETTABLEKS                       R13 R12 K8 ["children"]
      807 DUPTABLE                         R13 K75 [{"position"}]
      808 GETIMPORT                        R14 K78 [Vector2.new]
      810 LOADN                            R15 -2
      811 LOADN                            R16 0
      812 CALL                             R14 2 1
      813 SETTABLEKS                       R14 R13 K74 ["position"]
      815 SETTABLEKS                       R13 R12 K66 ["linkData"]
      817 DUPTABLE                         R13 K225 [{["animationId"] = "rbxassetid://10404604071", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      818 NEWTABLE                         R14 0 0
      820 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      822 NEWTABLE                         R14 0 0
      824 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      826 SETTABLEKS                       R13 R12 K21 ["props"]
      828 DUPTABLE                         R13 K226 [{["currentAnimationId"] = "rbxassetid://10404604071", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      829 NEWTABLE                         R14 0 0
      831 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      833 NEWTABLE                         R14 0 0
      835 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      837 SETTABLEKS                       R13 R12 K22 ["state"]
      839 SETTABLEN                        R12 R11 7
      840 DUPTABLE                         R12 K229 [{["children"], ["className"] = "ClipLayer", ["id"] = "{1b1a8b55-c2dc-44bb-999e-eda4f884bd02}", ["index"] = 8, ["linkData"], ["name"] = "Forward Right Walk", ["props"], ["state"], ["weight"] = 0}]
      841 NEWTABLE                         R13 0 0
      843 SETTABLEKS                       R13 R12 K8 ["children"]
      845 DUPTABLE                         R13 K75 [{"position"}]
      846 GETIMPORT                        R14 K78 [Vector2.new]
      848 LOADK                            R15 K134 [0.707106769]
      849 LOADK                            R16 K134 [0.707106769]
      850 CALL                             R14 2 1
      851 SETTABLEKS                       R14 R13 K74 ["position"]
      853 SETTABLEKS                       R13 R12 K66 ["linkData"]
      855 DUPTABLE                         R13 K231 [{["animationId"] = "rbxassetid://10404269576", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      856 NEWTABLE                         R14 0 0
      858 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      860 NEWTABLE                         R14 0 0
      862 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      864 SETTABLEKS                       R13 R12 K21 ["props"]
      866 DUPTABLE                         R13 K232 [{["currentAnimationId"] = "rbxassetid://10404269576", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      867 NEWTABLE                         R14 0 0
      869 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      871 NEWTABLE                         R14 0 0
      873 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      875 SETTABLEKS                       R13 R12 K22 ["state"]
      877 SETTABLEN                        R12 R11 8
      878 DUPTABLE                         R12 K235 [{["children"], ["className"] = "ClipLayer", ["id"] = "{3423814e-2fd4-4926-803f-334847f77a83}", ["index"] = 9, ["linkData"], ["name"] = "Forward Left Walk", ["props"], ["state"], ["weight"] = 0}]
      879 NEWTABLE                         R13 0 0
      881 SETTABLEKS                       R13 R12 K8 ["children"]
      883 DUPTABLE                         R13 K75 [{"position"}]
      884 GETIMPORT                        R14 K78 [Vector2.new]
      886 LOADK                            R15 K129 [-0.707106769]
      887 LOADK                            R16 K134 [0.707106769]
      888 CALL                             R14 2 1
      889 SETTABLEKS                       R14 R13 K74 ["position"]
      891 SETTABLEKS                       R13 R12 K66 ["linkData"]
      893 DUPTABLE                         R13 K237 [{["animationId"] = "rbxassetid://10404251500", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      894 NEWTABLE                         R14 0 0
      896 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      898 NEWTABLE                         R14 0 0
      900 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      902 SETTABLEKS                       R13 R12 K21 ["props"]
      904 DUPTABLE                         R13 K238 [{["currentAnimationId"] = "rbxassetid://10404251500", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      905 NEWTABLE                         R14 0 0
      907 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      909 NEWTABLE                         R14 0 0
      911 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      913 SETTABLEKS                       R13 R12 K22 ["state"]
      915 SETTABLEN                        R12 R11 9
      916 DUPTABLE                         R12 K241 [{["children"], ["className"] = "ClipLayer", ["id"] = "{d6493c48-d9cd-4368-820b-0d23c25cb833}", ["index"] = 10, ["linkData"], ["name"] = "Forward Right Run", ["props"], ["state"], ["weight"] = 0}]
      917 NEWTABLE                         R13 0 0
      919 SETTABLEKS                       R13 R12 K8 ["children"]
      921 DUPTABLE                         R13 K75 [{"position"}]
      922 GETIMPORT                        R14 K78 [Vector2.new]
      924 LOADK                            R15 K150 [1.41421354]
      925 LOADK                            R16 K150 [1.41421354]
      926 CALL                             R14 2 1
      927 SETTABLEKS                       R14 R13 K74 ["position"]
      929 SETTABLEKS                       R13 R12 K66 ["linkData"]
      931 DUPTABLE                         R13 K243 [{["animationId"] = "rbxassetid://10319882993", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      932 NEWTABLE                         R14 0 0
      934 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      936 NEWTABLE                         R14 0 0
      938 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      940 SETTABLEKS                       R13 R12 K21 ["props"]
      942 DUPTABLE                         R13 K244 [{["currentAnimationId"] = "rbxassetid://10319882993", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      943 NEWTABLE                         R14 0 0
      945 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      947 NEWTABLE                         R14 0 0
      949 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      951 SETTABLEKS                       R13 R12 K22 ["state"]
      953 SETTABLEN                        R12 R11 10
      954 DUPTABLE                         R12 K247 [{["children"], ["className"] = "ClipLayer", ["id"] = "{117d88c1-9254-4fea-8bb6-47760516fb0f}", ["index"] = 11, ["linkData"], ["name"] = "Forward Left Run", ["props"], ["state"], ["weight"] = 0}]
      955 NEWTABLE                         R13 0 0
      957 SETTABLEKS                       R13 R12 K8 ["children"]
      959 DUPTABLE                         R13 K75 [{"position"}]
      960 GETIMPORT                        R14 K78 [Vector2.new]
      962 LOADK                            R15 K142 [-1.41421354]
      963 LOADK                            R16 K150 [1.41421354]
      964 CALL                             R14 2 1
      965 SETTABLEKS                       R14 R13 K74 ["position"]
      967 SETTABLEKS                       R13 R12 K66 ["linkData"]
      969 DUPTABLE                         R13 K249 [{["animationId"] = "rbxassetid://10319903622", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
      970 NEWTABLE                         R14 0 0
      972 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      974 NEWTABLE                         R14 0 0
      976 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      978 SETTABLEKS                       R13 R12 K21 ["props"]
      980 DUPTABLE                         R13 K250 [{["currentAnimationId"] = "rbxassetid://10319903622", ["length"] = 0.625, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
      981 NEWTABLE                         R14 0 0
      983 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
      985 NEWTABLE                         R14 0 0
      987 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
      989 SETTABLEKS                       R13 R12 K22 ["state"]
      991 SETTABLEN                        R12 R11 11
      992 SETTABLEKS                       R11 R10 K8 ["children"]
      994 NEWTABLE                         R11 0 1
      996 LOADK                            R12 K251 ["LocomotingForward"]
      997 SETTABLEN                        R12 R11 1
      998 SETTABLEKS                       R11 R10 K66 ["linkData"]
     1000 DUPTABLE                         R11 K160 [{["blendSpaceType"] = "Locomotion", ["lowLodThreshold"] = 2, ["positionSmoothingTime"] = 0, ["speed"] = 0, ["targetPosition"]}]
     1001 GETIMPORT                        R12 K78 [Vector2.new]
     1003 LOADN                            R13 0
     1004 LOADN                            R14 0
     1005 CALL                             R12 2 1
     1006 SETTABLEKS                       R12 R11 K159 ["targetPosition"]
     1008 SETTABLEKS                       R11 R10 K21 ["props"]
     1010 DUPTABLE                         R11 K161 [{["length"] = 0, ["timePositionNormalized"] = 0}]
     1011 SETTABLEKS                       R11 R10 K22 ["state"]
     1013 SETTABLEN                        R10 R9 5
     1014 DUPTABLE                         R10 K254 [{["children"], ["className"] = "ClipLayer", ["id"] = "{80711aa0-bdf3-49e1-bcdc-a0900eaabf06}", ["linkData"], ["name"] = "Idle", ["props"], ["state"], ["weight"] = 0}]
     1015 NEWTABLE                         R11 0 0
     1017 SETTABLEKS                       R11 R10 K8 ["children"]
     1019 NEWTABLE                         R11 0 1
     1021 LOADK                            R12 K253 ["Idle"]
     1022 SETTABLEN                        R12 R11 1
     1023 SETTABLEKS                       R11 R10 K66 ["linkData"]
     1025 DUPTABLE                         R11 K257 [{["animationId"] = "rbxassetid://10921258489", ["didLoopEventName"] = "IdleDidLoop", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
     1026 NEWTABLE                         R12 0 0
     1028 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1030 NEWTABLE                         R12 0 0
     1032 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1034 SETTABLEKS                       R11 R10 K21 ["props"]
     1036 DUPTABLE                         R11 K259 [{["currentAnimationId"] = "rbxassetid://10921258489", ["length"] = 10, ["loadingState"] = "Loaded", ["markerEvents"], ["prevTimePosition"] = 7.2416670541279, ["timePosition"] = 7.2416670541279, ["timePositionEvents"], ["timePositionNormalized"] = 0.72416670541279}]
     1037 NEWTABLE                         R12 0 0
     1039 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1041 NEWTABLE                         R12 0 0
     1043 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1045 SETTABLEKS                       R11 R10 K22 ["state"]
     1047 SETTABLEN                        R10 R9 6
     1048 DUPTABLE                         R10 K263 [{["children"], ["className"] = "SequenceLayer", ["id"] = "{5d480bf8-4844-4022-9d45-e56af61bf4e5}", ["linkData"], ["name"] = "Jumping Sequence", ["props"], ["state"], ["weight"] = 0}]
     1049 NEWTABLE                         R11 0 2
     1051 DUPTABLE                         R12 K265 [{["children"], ["className"] = "ClipLayer", ["id"] = "{9e60c31d-cf4e-4b81-bb19-b708becd9515}", ["linkData"], ["props"], ["state"], ["weight"] = 0}]
     1052 NEWTABLE                         R13 0 0
     1054 SETTABLEKS                       R13 R12 K8 ["children"]
     1056 NEWTABLE                         R13 0 0
     1058 SETTABLEKS                       R13 R12 K66 ["linkData"]
     1060 DUPTABLE                         R13 K267 [{["animationId"] = "rbxassetid://10921263860", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
     1061 NEWTABLE                         R14 0 0
     1063 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
     1065 NEWTABLE                         R14 0 0
     1067 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
     1069 SETTABLEKS                       R13 R12 K21 ["props"]
     1071 DUPTABLE                         R13 K269 [{["currentAnimationId"] = "rbxassetid://10921263860", ["length"] = 1.04200005531311, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
     1072 NEWTABLE                         R14 0 0
     1074 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
     1076 NEWTABLE                         R14 0 0
     1078 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
     1080 SETTABLEKS                       R13 R12 K22 ["state"]
     1082 SETTABLEN                        R12 R11 1
     1083 DUPTABLE                         R12 K271 [{["children"], ["className"] = "ClipLayer", ["id"] = "{b1751c84-f579-489b-8490-0b3251969695}", ["linkData"], ["props"], ["state"], ["weight"] = 0}]
     1084 NEWTABLE                         R13 0 0
     1086 SETTABLEKS                       R13 R12 K8 ["children"]
     1088 NEWTABLE                         R13 0 0
     1090 SETTABLEKS                       R13 R12 K66 ["linkData"]
     1092 DUPTABLE                         R13 K184 [{["animationId"] = "rbxassetid://10921262864", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
     1093 NEWTABLE                         R14 0 0
     1095 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
     1097 NEWTABLE                         R14 0 0
     1099 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
     1101 SETTABLEKS                       R13 R12 K21 ["props"]
     1103 DUPTABLE                         R13 K186 [{["currentAnimationId"] = "rbxassetid://10921262864", ["length"] = 0.75, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
     1104 NEWTABLE                         R14 0 0
     1106 SETTABLEKS                       R14 R13 K42 ["markerEvents"]
     1108 NEWTABLE                         R14 0 0
     1110 SETTABLEKS                       R14 R13 K48 ["timePositionEvents"]
     1112 SETTABLEKS                       R13 R12 K22 ["state"]
     1114 SETTABLEN                        R12 R11 2
     1115 SETTABLEKS                       R11 R10 K8 ["children"]
     1117 NEWTABLE                         R11 0 1
     1119 LOADK                            R12 K272 ["Jumping"]
     1120 SETTABLEN                        R12 R11 1
     1121 SETTABLEKS                       R11 R10 K66 ["linkData"]
     1123 DUPTABLE                         R11 K276 [{["incrementMode"] = 1, ["transitionDurationSeconds"] = 0.25}]
     1124 SETTABLEKS                       R11 R10 K21 ["props"]
     1126 NEWTABLE                         R11 0 0
     1128 SETTABLEKS                       R11 R10 K22 ["state"]
     1130 SETTABLEN                        R10 R9 7
     1131 DUPTABLE                         R10 K279 [{["children"], ["className"] = "ClipLayer", ["id"] = "{14ce7080-803b-435f-93ea-4eb438941c29}", ["linkData"], ["name"] = "Sitting", ["props"], ["state"], ["weight"] = 0}]
     1132 NEWTABLE                         R11 0 0
     1134 SETTABLEKS                       R11 R10 K8 ["children"]
     1136 NEWTABLE                         R11 0 1
     1138 LOADK                            R12 K278 ["Sitting"]
     1139 SETTABLEN                        R12 R11 1
     1140 SETTABLEKS                       R11 R10 K66 ["linkData"]
     1142 DUPTABLE                         R11 K281 [{["animationId"] = "rbxassetid://2506281703", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
     1143 NEWTABLE                         R12 0 0
     1145 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1147 NEWTABLE                         R12 0 0
     1149 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1151 SETTABLEKS                       R11 R10 K21 ["props"]
     1153 DUPTABLE                         R11 K283 [{["currentAnimationId"] = "rbxassetid://2506281703", ["length"] = 0.916999995708466, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
     1154 NEWTABLE                         R12 0 0
     1156 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1158 NEWTABLE                         R12 0 0
     1160 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1162 SETTABLEKS                       R11 R10 K22 ["state"]
     1164 SETTABLEN                        R10 R9 8
     1165 DUPTABLE                         R10 K286 [{["children"], ["className"] = "ClipLayer", ["id"] = "{f8703185-c346-4a94-94a5-438a9d9b53f4}", ["linkData"], ["name"] = "Swimming", ["props"], ["state"], ["weight"] = 0}]
     1166 NEWTABLE                         R11 0 0
     1168 SETTABLEKS                       R11 R10 K8 ["children"]
     1170 NEWTABLE                         R11 0 1
     1172 LOADK                            R12 K285 ["Swimming"]
     1173 SETTABLEN                        R12 R11 1
     1174 SETTABLEKS                       R11 R10 K66 ["linkData"]
     1176 DUPTABLE                         R11 K288 [{["animationId"] = "rbxassetid://10921264784", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 0, ["startTime"] = 0, ["timePositionEvents"]}]
     1177 NEWTABLE                         R12 0 0
     1179 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1181 NEWTABLE                         R12 0 0
     1183 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1185 SETTABLEKS                       R11 R10 K21 ["props"]
     1187 DUPTABLE                         R11 K290 [{["currentAnimationId"] = "rbxassetid://10921264784", ["length"] = 2.25, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
     1188 NEWTABLE                         R12 0 0
     1190 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1192 NEWTABLE                         R12 0 0
     1194 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1196 SETTABLEKS                       R11 R10 K22 ["state"]
     1198 SETTABLEN                        R10 R9 9
     1199 DUPTABLE                         R10 K293 [{["children"], ["className"] = "ClipLayer", ["id"] = "{85ce8c33-0a03-425b-a7f4-8749f4ef200d}", ["linkData"], ["name"] = "Swimming Idle", ["props"], ["state"], ["weight"] = 0}]
     1200 NEWTABLE                         R11 0 0
     1202 SETTABLEKS                       R11 R10 K8 ["children"]
     1204 NEWTABLE                         R11 0 1
     1206 LOADK                            R12 K294 ["SwimmingIdle"]
     1207 SETTABLEN                        R12 R11 1
     1208 SETTABLEKS                       R11 R10 K66 ["linkData"]
     1210 DUPTABLE                         R11 K296 [{["animationId"] = "rbxassetid://10921265698", ["didLoopEventName"] = "", ["endTime"] = ∞, ["looping"] = -1, ["markerEvents"], ["preload"] = True, ["speed"] = 1, ["startTime"] = 0, ["timePositionEvents"]}]
     1211 NEWTABLE                         R12 0 0
     1213 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1215 NEWTABLE                         R12 0 0
     1217 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1219 SETTABLEKS                       R11 R10 K21 ["props"]
     1221 DUPTABLE                         R11 K298 [{["currentAnimationId"] = "rbxassetid://10921265698", ["length"] = 2.875, ["loadingState"] = "Loaded", ["markerEvents"], ["timePosition"] = 0, ["timePositionEvents"], ["timePositionNormalized"] = 0}]
     1222 NEWTABLE                         R12 0 0
     1224 SETTABLEKS                       R12 R11 K42 ["markerEvents"]
     1226 NEWTABLE                         R12 0 0
     1228 SETTABLEKS                       R12 R11 K48 ["timePositionEvents"]
     1230 SETTABLEKS                       R11 R10 K22 ["state"]
     1232 SETTABLEN                        R10 R9 10
     1233 SETTABLEKS                       R9 R8 K8 ["children"]
     1235 DUPTABLE                         R9 K301 [{["lowLodThreshold"] = 3, ["selection"] = "Idle", ["transitionDurationSeconds"] = 0.2}]
     1236 SETTABLEKS                       R9 R8 K21 ["props"]
     1238 NEWTABLE                         R9 0 0
     1240 SETTABLEKS                       R9 R8 K22 ["state"]
     1242 SETTABLEN                        R8 R7 2
     1243 SETTABLEKS                       R7 R6 K8 ["children"]
     1245 DUPTABLE                         R7 K304 [{["fadeDurationSeconds"] = 0.15}]
     1246 SETTABLEKS                       R7 R6 K21 ["props"]
     1248 DUPTABLE                         R7 K307 [{"easedWeights", "weights"}]
     1249 NEWTABLE                         R8 0 0
     1251 SETTABLEKS                       R8 R7 K305 ["easedWeights"]
     1253 NEWTABLE                         R8 0 2
     1255 LOADN                            R9 1
     1256 SETTABLEN                        R9 R8 1
     1257 LOADN                            R9 0
     1258 SETTABLEN                        R9 R8 2
     1259 SETTABLEKS                       R8 R7 K306 ["weights"]
     1261 SETTABLEKS                       R7 R6 K22 ["state"]
     1263 SETTABLEN                        R6 R5 1
     1264 SETTABLEKS                       R5 R4 K8 ["children"]
     1266 NEWTABLE                         R5 0 0
     1268 SETTABLEKS                       R5 R4 K21 ["props"]
     1270 NEWTABLE                         R5 0 0
     1272 SETTABLEKS                       R5 R4 K22 ["state"]
     1274 SETTABLEN                        R4 R3 1
     1275 SETTABLEKS                       R3 R2 K8 ["children"]
     1277 GETIMPORT                        R3 K309 [CFrame.new]
     1279 LOADK                            R4 K310 [-4.98748732]
     1280 LOADK                            R5 K311 [4.45460129]
     1281 LOADK                            R6 K312 [0.635853291]
     1282 LOADN                            R7 1
     1283 LOADN                            R8 0
     1284 LOADN                            R9 0
     1285 LOADN                            R10 0
     1286 LOADN                            R11 1
     1287 LOADN                            R12 0
     1288 LOADN                            R13 0
     1289 LOADN                            R14 0
     1290 LOADN                            R15 1
     1291 CALL                             R3 12 1
     1292 SETTABLEKS                       R3 R2 K11 ["hrpCFrame"]
     1294 RETURN                           R2 1
