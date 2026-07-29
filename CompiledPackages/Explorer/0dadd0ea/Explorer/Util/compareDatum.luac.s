PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K1 ["className"]
        3 GETTABLE                         R3 R4 R5
        4 ORK                              R2 R3 K0 [∞]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R6 R1 K1 ["className"]
        8 GETTABLE                         R4 R5 R6
        9 ORK                              R3 R4 K0 [∞]
       10 JUMPIFNOTLT                      R2 R3 ; [+3]
       12 LOADB                            R4 1
       13 RETURN                           R4 1
       14 JUMPIFNOTLT                      R3 R2 ; [+3]
       16 LOADB                            R4 0
       17 RETURN                           R4 1
       18 GETTABLEKS                       R5 R0 K2 ["name"]
       20 GETTABLEKS                       R6 R1 K2 ["name"]
       22 JUMPIFNOTLT                      R5 R6 ; [+3]
       24 LOADB                            R4 1
       25 RETURN                           R4 1
       26 GETTABLEKS                       R5 R0 K2 ["name"]
       28 GETTABLEKS                       R6 R1 K2 ["name"]
       30 JUMPIFNOTLT                      R6 R5 ; [+3]
       32 LOADB                            R4 0
       33 RETURN                           R4 1
       34 LOADB                            R4 0
       35 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 512 0
       14 LOADN                            R3 -1
       15 SETTABLEKS                       R3 R2 K7 ["StockSound"]
       17 LOADN                            R3 -1
       18 SETTABLEKS                       R3 R2 K8 ["GlobalDataStore"]
       20 LOADN                            R3 -1
       21 SETTABLEKS                       R3 R2 K9 ["OrderedDataStore"]
       23 LOADN                            R3 1
       24 SETTABLEKS                       R3 R2 K10 ["PackageLink"]
       26 LOADN                            R3 3
       27 SETTABLEKS                       R3 R2 K11 ["BasePart"]
       29 LOADN                            R3 5
       30 SETTABLEKS                       R3 R2 K12 ["Atmosphere"]
       32 LOADN                            R3 5
       33 SETTABLEKS                       R3 R2 K13 ["Clouds"]
       35 LOADN                            R3 5
       36 SETTABLEKS                       R3 R2 K14 ["Sky"]
       38 LOADN                            R3 5
       39 SETTABLEKS                       R3 R2 K15 ["Camera"]
       41 LOADN                            R3 5
       42 SETTABLEKS                       R3 R2 K16 ["Workspace"]
       44 LOADN                            R3 5
       45 SETTABLEKS                       R3 R2 K17 ["Terrain"]
       47 LOADN                            R3 10
       48 SETTABLEKS                       R3 R2 K18 ["Actor"]
       50 LOADN                            R3 10
       51 SETTABLEKS                       R3 R2 K19 ["Sound"]
       53 LOADN                            R3 10
       54 SETTABLEKS                       R3 R2 K20 ["Wire"]
       56 LOADN                            R3 10
       57 SETTABLEKS                       R3 R2 K21 ["AudioPlayer"]
       59 LOADN                            R3 10
       60 SETTABLEKS                       R3 R2 K22 ["AudioEmitter"]
       62 LOADN                            R3 10
       63 SETTABLEKS                       R3 R2 K23 ["AudioListener"]
       65 LOADN                            R3 10
       66 SETTABLEKS                       R3 R2 K24 ["AudioDeviceInput"]
       68 LOADN                            R3 10
       69 SETTABLEKS                       R3 R2 K25 ["AudioDeviceOutput"]
       71 LOADN                            R3 10
       72 SETTABLEKS                       R3 R2 K26 ["AudioChorus"]
       74 LOADN                            R3 10
       75 SETTABLEKS                       R3 R2 K27 ["AudioDistortion"]
       77 LOADN                            R3 10
       78 SETTABLEKS                       R3 R2 K28 ["AudioFlanger"]
       80 LOADN                            R3 10
       81 SETTABLEKS                       R3 R2 K29 ["AudioReverb"]
       83 LOADN                            R3 10
       84 SETTABLEKS                       R3 R2 K30 ["AudioEcho"]
       86 LOADN                            R3 10
       87 SETTABLEKS                       R3 R2 K31 ["AudioEqualizer"]
       89 LOADN                            R3 10
       90 SETTABLEKS                       R3 R2 K32 ["AudioFader"]
       92 LOADN                            R3 10
       93 SETTABLEKS                       R3 R2 K33 ["AudioFilter"]
       95 LOADN                            R3 10
       96 SETTABLEKS                       R3 R2 K34 ["AudioAnalyzer"]
       98 LOADN                            R3 10
       99 SETTABLEKS                       R3 R2 K35 ["AudioPitchShifter"]
      101 LOADN                            R3 10
      102 SETTABLEKS                       R3 R2 K36 ["AudioCompressor"]
      104 LOADN                            R3 10
      105 SETTABLEKS                       R3 R2 K37 ["AudioLimiter"]
      107 LOADN                            R3 10
      108 SETTABLEKS                       R3 R2 K38 ["ChatWindowConfiguration"]
      110 LOADN                            R3 10
      111 SETTABLEKS                       R3 R2 K39 ["TextSource"]
      113 LOADN                            R3 10
      114 SETTABLEKS                       R3 R2 K40 ["Team"]
      116 LOADN                            R3 10
      117 SETTABLEKS                       R3 R2 K41 ["Player"]
      119 LOADN                            R3 10
      120 SETTABLEKS                       R3 R2 K42 ["FunctionalTest"]
      122 LOADN                            R3 10
      123 SETTABLEKS                       R3 R2 K43 ["VideoPlayer"]
      125 LOADN                            R3 10
      126 SETTABLEKS                       R3 R2 K44 ["Folder"]
      128 LOADN                            R3 11
      129 SETTABLEKS                       R3 R2 K45 ["ChatInputBarConfiguration"]
      131 LOADN                            R3 12
      132 SETTABLEKS                       R3 R2 K46 ["ChannelTabsConfiguration"]
      134 LOADN                            R3 13
      135 SETTABLEKS                       R3 R2 K47 ["BubbleChatConfiguration"]
      137 LOADN                            R3 14
      138 SETTABLEKS                       R3 R2 K48 ["TextChannel"]
      140 LOADN                            R3 15
      141 SETTABLEKS                       R3 R2 K49 ["TextChatCommand"]
      143 LOADN                            R3 18
      144 SETTABLEKS                       R3 R2 K50 ["VideoFrame"]
      146 LOADN                            R3 20
      147 SETTABLEKS                       R3 R2 K51 ["Clothing"]
      149 LOADN                            R3 20
      150 SETTABLEKS                       R3 R2 K52 ["BackpackItem"]
      152 LOADN                            R3 20
      153 SETTABLEKS                       R3 R2 K53 ["EchoSoundEffect"]
      155 LOADN                            R3 20
      156 SETTABLEKS                       R3 R2 K54 ["FlangeSoundEffect"]
      158 LOADN                            R3 20
      159 SETTABLEKS                       R3 R2 K55 ["DistortionSoundEffect"]
      161 LOADN                            R3 20
      162 SETTABLEKS                       R3 R2 K56 ["PitchShiftSoundEffect"]
      164 LOADN                            R3 20
      165 SETTABLEKS                       R3 R2 K57 ["ChannelSelectorSoundEffect"]
      167 LOADN                            R3 20
      168 SETTABLEKS                       R3 R2 K58 ["ChorusSoundEffect"]
      170 LOADN                            R3 20
      171 SETTABLEKS                       R3 R2 K59 ["TremoloSoundEffect"]
      173 LOADN                            R3 20
      174 SETTABLEKS                       R3 R2 K60 ["ReverbSoundEffect"]
      176 LOADN                            R3 20
      177 SETTABLEKS                       R3 R2 K61 ["EqualizerSoundEffect"]
      179 LOADN                            R3 20
      180 SETTABLEKS                       R3 R2 K62 ["CompressorSoundEffect"]
      182 LOADN                            R3 20
      183 SETTABLEKS                       R3 R2 K63 ["SoundGroup"]
      185 LOADN                            R3 20
      186 SETTABLEKS                       R3 R2 K64 ["ColorCorrectionEffect"]
      188 LOADN                            R3 20
      189 SETTABLEKS                       R3 R2 K65 ["ColorGradingEffect"]
      191 LOADN                            R3 20
      192 SETTABLEKS                       R3 R2 K66 ["BloomEffect"]
      194 LOADN                            R3 20
      195 SETTABLEKS                       R3 R2 K67 ["BlurEffect"]
      197 LOADN                            R3 20
      198 SETTABLEKS                       R3 R2 K68 ["Highlight"]
      200 LOADN                            R3 20
      201 SETTABLEKS                       R3 R2 K69 ["DepthOfFieldEffect"]
      203 LOADN                            R3 20
      204 SETTABLEKS                       R3 R2 K70 ["SunRaysEffect"]
      206 LOADN                            R3 20
      207 SETTABLEKS                       R3 R2 K71 ["Motor"]
      209 LOADN                            R3 20
      210 SETTABLEKS                       R3 R2 K72 ["ControllerPartSensor"]
      212 LOADN                            R3 20
      213 SETTABLEKS                       R3 R2 K73 ["BuoyancySensor"]
      215 LOADN                            R3 20
      216 SETTABLEKS                       R3 R2 K74 ["AtmosphereSensor"]
      218 LOADN                            R3 20
      219 SETTABLEKS                       R3 R2 K75 ["FluidForceSensor"]
      221 LOADN                            R3 20
      222 SETTABLEKS                       R3 R2 K76 ["ControllerManager"]
      224 LOADN                            R3 20
      225 SETTABLEKS                       R3 R2 K77 ["GroundController"]
      227 LOADN                            R3 20
      228 SETTABLEKS                       R3 R2 K78 ["AirController"]
      230 LOADN                            R3 20
      231 SETTABLEKS                       R3 R2 K79 ["ClimbController"]
      233 LOADN                            R3 20
      234 SETTABLEKS                       R3 R2 K80 ["SwimController"]
      236 LOADN                            R3 20
      237 SETTABLEKS                       R3 R2 K81 ["BodyColors"]
      239 LOADN                            R3 20
      240 SETTABLEKS                       R3 R2 K82 ["Shirt"]
      242 LOADN                            R3 20
      243 SETTABLEKS                       R3 R2 K83 ["Pants"]
      245 LOADN                            R3 20
      246 SETTABLEKS                       R3 R2 K84 ["ShirtGraphic"]
      248 LOADN                            R3 20
      249 SETTABLEKS                       R3 R2 K85 ["Skin"]
      251 LOADN                            R3 20
      252 SETTABLEKS                       R3 R2 K86 ["DebugSettings"]
      254 LOADN                            R3 20
      255 SETTABLEKS                       R3 R2 K87 ["GameSettings"]
      257 LOADN                            R3 20
      258 SETTABLEKS                       R3 R2 K88 ["GlobalSettings"]
      260 LOADN                            R3 20
      261 SETTABLEKS                       R3 R2 K89 ["Item"]
      263 LOADN                            R3 20
      264 SETTABLEKS                       R3 R2 K90 ["NetworkSettings"]
      266 LOADN                            R3 20
      267 SETTABLEKS                       R3 R2 K91 ["RenderSettings"]
      269 LOADN                            R3 20
      270 SETTABLEKS                       R3 R2 K92 ["Hopper"]
      272 LOADN                            R3 20
      273 SETTABLEKS                       R3 R2 K93 ["Hole"]
      275 LOADN                            R3 20
      276 SETTABLEKS                       R3 R2 K94 ["Feature"]
      278 LOADN                            R3 20
      279 SETTABLEKS                       R3 R2 K95 ["Players"]
      281 LOADN                            R3 20
      282 SETTABLEKS                       R3 R2 K96 ["Accoutrement"]
      284 LOADN                            R3 20
      285 SETTABLEKS                       R3 R2 K97 ["TerrainRegion"]
      287 LOADN                            R3 22
      288 SETTABLEKS                       R3 R2 K98 ["HumanoidDescription"]
      290 LOADN                            R3 22
      291 SETTABLEKS                       R3 R2 K99 ["BodyPartDescription"]
      293 LOADN                            R3 22
      294 SETTABLEKS                       R3 R2 K100 ["AccessoryDescription"]
      296 LOADN                            R3 22
      297 SETTABLEKS                       R3 R2 K101 ["WorldModel"]
      299 LOADN                            R3 30
      300 SETTABLEKS                       R3 R2 K102 ["TouchTransmitter"]
      302 LOADN                            R3 30
      303 SETTABLEKS                       R3 R2 K103 ["ForceField"]
      305 LOADN                            R3 30
      306 SETTABLEKS                       R3 R2 K104 ["Plugin"]
      308 LOADN                            R3 30
      309 SETTABLEKS                       R3 R2 K105 ["Hat"]
      311 LOADN                            R3 30
      312 SETTABLEKS                       R3 R2 K106 ["Accessory"]
      314 LOADN                            R3 30
      315 SETTABLEKS                       R3 R2 K107 ["Attachment"]
      317 LOADN                            R3 30
      318 SETTABLEKS                       R3 R2 K108 ["Bone"]
      320 LOADN                            R3 30
      321 SETTABLEKS                       R3 R2 K109 ["Constraint"]
      323 LOADN                            R3 30
      324 SETTABLEKS                       R3 R2 K110 ["BallSocketConstraint"]
      326 LOADN                            R3 30
      327 SETTABLEKS                       R3 R2 K111 ["RopeConstraint"]
      329 LOADN                            R3 30
      330 SETTABLEKS                       R3 R2 K112 ["RodConstraint"]
      332 LOADN                            R3 30
      333 SETTABLEKS                       R3 R2 K113 ["SpringConstraint"]
      335 LOADN                            R3 30
      336 SETTABLEKS                       R3 R2 K114 ["TorsionSpringConstraint"]
      338 LOADN                            R3 30
      339 SETTABLEKS                       R3 R2 K115 ["WeldConstraint"]
      341 LOADN                            R3 30
      342 SETTABLEKS                       R3 R2 K116 ["NoCollisionConstraint"]
      344 LOADN                            R3 30
      345 SETTABLEKS                       R3 R2 K117 ["RigidConstraint"]
      347 LOADN                            R3 30
      348 SETTABLEKS                       R3 R2 K118 ["HingeConstraint"]
      350 LOADN                            R3 30
      351 SETTABLEKS                       R3 R2 K119 ["UniversalConstraint"]
      353 LOADN                            R3 30
      354 SETTABLEKS                       R3 R2 K120 ["SlidingBallConstraint"]
      356 LOADN                            R3 30
      357 SETTABLEKS                       R3 R2 K121 ["PrismaticConstraint"]
      359 LOADN                            R3 30
      360 SETTABLEKS                       R3 R2 K122 ["CylindricalConstraint"]
      362 LOADN                            R3 30
      363 SETTABLEKS                       R3 R2 K123 ["AlignOrientation"]
      365 LOADN                            R3 30
      366 SETTABLEKS                       R3 R2 K124 ["AlignPosition"]
      368 LOADN                            R3 30
      369 SETTABLEKS                       R3 R2 K125 ["AnimationConstraint"]
      371 LOADN                            R3 30
      372 SETTABLEKS                       R3 R2 K126 ["VectorForce"]
      374 LOADN                            R3 30
      375 SETTABLEKS                       R3 R2 K127 ["LineForce"]
      377 LOADN                            R3 30
      378 SETTABLEKS                       R3 R2 K128 ["Torque"]
      380 LOADN                            R3 30
      381 SETTABLEKS                       R3 R2 K129 ["AngularVelocity"]
      383 LOADN                            R3 30
      384 SETTABLEKS                       R3 R2 K130 ["PlaneConstraint"]
      386 LOADN                            R3 30
      387 SETTABLEKS                       R3 R2 K131 ["PluginCapabilities"]
      389 LOADN                            R3 30
      390 SETTABLEKS                       R3 R2 K132 ["Plane"]
      392 LOADN                            R3 30
      393 SETTABLEKS                       R3 R2 K133 ["LinearVelocity"]
      395 LOADN                            R3 30
      396 SETTABLEKS                       R3 R2 K134 ["ClickDetector"]
      398 LOADN                            R3 30
      399 SETTABLEKS                       R3 R2 K135 ["DragDetector"]
      401 LOADN                            R3 30
      402 SETTABLEKS                       R3 R2 K136 ["UIDragDetector"]
      404 LOADN                            R3 30
      405 SETTABLEKS                       R3 R2 K137 ["ProximityPrompt"]
      407 LOADN                            R3 30
      408 SETTABLEKS                       R3 R2 K138 ["Smoke"]
      410 LOADN                            R3 30
      411 SETTABLEKS                       R3 R2 K139 ["Trail"]
      413 LOADN                            R3 30
      414 SETTABLEKS                       R3 R2 K140 ["Beam"]
      416 LOADN                            R3 30
      417 SETTABLEKS                       R3 R2 K141 ["ParticleEmitter"]
      419 LOADN                            R3 30
      420 SETTABLEKS                       R3 R2 K142 ["Sparkles"]
      422 LOADN                            R3 30
      423 SETTABLEKS                       R3 R2 K143 ["Explosion"]
      425 LOADN                            R3 30
      426 SETTABLEKS                       R3 R2 K144 ["Fire"]
      428 LOADN                            R3 30
      429 SETTABLEKS                       R3 R2 K145 ["Seat"]
      431 LOADN                            R3 30
      432 SETTABLEKS                       R3 R2 K146 ["Platform"]
      434 LOADN                            R3 30
      435 SETTABLEKS                       R3 R2 K147 ["SkateboardPlatform"]
      437 LOADN                            R3 30
      438 SETTABLEKS                       R3 R2 K148 ["VehicleSeat"]
      440 LOADN                            R3 30
      441 SETTABLEKS                       R3 R2 K149 ["Tool"]
      443 LOADN                            R3 30
      444 SETTABLEKS                       R3 R2 K150 ["Flag"]
      446 LOADN                            R3 30
      447 SETTABLEKS                       R3 R2 K151 ["FlagStand"]
      449 LOADN                            R3 30
      450 SETTABLEKS                       R3 R2 K152 ["IntValue"]
      452 LOADN                            R3 30
      453 SETTABLEKS                       R3 R2 K153 ["RayValue"]
      455 LOADN                            R3 30
      456 SETTABLEKS                       R3 R2 K154 ["IntConstrainedValue"]
      458 LOADN                            R3 30
      459 SETTABLEKS                       R3 R2 K155 ["DoubleConstrainedValue"]
      461 LOADN                            R3 30
      462 SETTABLEKS                       R3 R2 K156 ["BoolValue"]
      464 LOADN                            R3 30
      465 SETTABLEKS                       R3 R2 K157 ["CustomEvent"]
      467 LOADN                            R3 30
      468 SETTABLEKS                       R3 R2 K158 ["CustomEventReceiver"]
      470 LOADN                            R3 30
      471 SETTABLEKS                       R3 R2 K159 ["FloorWire"]
      473 LOADN                            R3 30
      474 SETTABLEKS                       R3 R2 K160 ["NumberValue"]
      476 LOADN                            R3 30
      477 SETTABLEKS                       R3 R2 K161 ["StringValue"]
      479 LOADN                            R3 30
      480 SETTABLEKS                       R3 R2 K162 ["Vector3Value"]
      482 LOADN                            R3 30
      483 SETTABLEKS                       R3 R2 K163 ["CFrameValue"]
      485 LOADN                            R3 30
      486 SETTABLEKS                       R3 R2 K164 ["Color3Value"]
      488 LOADN                            R3 30
      489 SETTABLEKS                       R3 R2 K165 ["BrickColorValue"]
      491 LOADN                            R3 30
      492 SETTABLEKS                       R3 R2 K166 ["ValueBase"]
      494 LOADN                            R3 30
      495 SETTABLEKS                       R3 R2 K167 ["ObjectValue"]
      497 LOADN                            R3 30
      498 SETTABLEKS                       R3 R2 K168 ["SpecialMesh"]
      500 LOADN                            R3 30
      501 SETTABLEKS                       R3 R2 K169 ["BlockMesh"]
      503 LOADN                            R3 30
      504 SETTABLEKS                       R3 R2 K170 ["CylinderMesh"]
      506 LOADN                            R3 30
      507 SETTABLEKS                       R3 R2 K171 ["Backpack"]
      509 LOADN                            R3 30
      510 SETTABLEKS                       R3 R2 K172 ["StarterPack"]
      512 LOADN                            R3 30
      513 SETTABLEKS                       R3 R2 K173 ["StarterPlayer"]
      515 LOADN                            R3 30
      516 SETTABLEKS                       R3 R2 K174 ["StarterGear"]
      518 LOADN                            R3 30
      519 SETTABLEKS                       R3 R2 K175 ["CoreGui"]
      521 LOADN                            R3 30
      522 SETTABLEKS                       R3 R2 K176 ["CorePackages"]
      524 LOADN                            R3 30
      525 SETTABLEKS                       R3 R2 K177 ["RobloxPluginGuiService"]
      527 LOADN                            R3 30
      528 SETTABLEKS                       R3 R2 K178 ["PluginGuiService"]
      530 LOADN                            R3 30
      531 SETTABLEKS                       R3 R2 K179 ["PluginDebugService"]
      533 LOADN                            R3 30
      534 SETTABLEKS                       R3 R2 K180 ["UIListLayout"]
      536 LOADN                            R3 30
      537 SETTABLEKS                       R3 R2 K181 ["UIGridLayout"]
      539 LOADN                            R3 30
      540 SETTABLEKS                       R3 R2 K182 ["UIPageLayout"]
      542 LOADN                            R3 30
      543 SETTABLEKS                       R3 R2 K183 ["UITableLayout"]
      545 LOADN                            R3 30
      546 SETTABLEKS                       R3 R2 K184 ["UISizeConstraint"]
      548 LOADN                            R3 30
      549 SETTABLEKS                       R3 R2 K185 ["UITextSizeConstraint"]
      551 LOADN                            R3 30
      552 SETTABLEKS                       R3 R2 K186 ["UIAspectRatioConstraint"]
      554 LOADN                            R3 30
      555 SETTABLEKS                       R3 R2 K187 ["UIScale"]
      557 LOADN                            R3 30
      558 SETTABLEKS                       R3 R2 K188 ["UIPadding"]
      560 LOADN                            R3 30
      561 SETTABLEKS                       R3 R2 K189 ["UIGradient"]
      563 LOADN                            R3 30
      564 SETTABLEKS                       R3 R2 K190 ["UICorner"]
      566 LOADN                            R3 30
      567 SETTABLEKS                       R3 R2 K191 ["UIStroke"]
      569 LOADN                            R3 30
      570 SETTABLEKS                       R3 R2 K192 ["StarterGui"]
      572 LOADN                            R3 30
      573 SETTABLEKS                       R3 R2 K193 ["LocalizationTable"]
      575 LOADN                            R3 30
      576 SETTABLEKS                       R3 R2 K194 ["MaterialService"]
      578 LOADN                            R3 30
      579 SETTABLEKS                       R3 R2 K195 ["Humanoid"]
      581 LOADN                            R3 30
      582 SETTABLEKS                       R3 R2 K196 ["SpawnLocation"]
      584 LOADN                            R3 30
      585 SETTABLEKS                       R3 R2 K197 ["NetworkClient"]
      587 LOADN                            R3 30
      588 SETTABLEKS                       R3 R2 K198 ["NetworkServer"]
      590 LOADN                            R3 30
      591 SETTABLEKS                       R3 R2 K199 ["Script"]
      593 LOADN                            R3 30
      594 SETTABLEKS                       R3 R2 K200 ["NetworkReplicator"]
      596 LOADN                            R3 30
      597 SETTABLEKS                       R3 R2 K201 ["ReplicatedStorage"]
      599 LOADN                            R3 30
      600 SETTABLEKS                       R3 R2 K202 ["ReplicatedFirst"]
      602 LOADN                            R3 30
      603 SETTABLEKS                       R3 R2 K203 ["ServerStorage"]
      605 LOADN                            R3 30
      606 SETTABLEKS                       R3 R2 K204 ["ServerScriptService"]
      608 LOADN                            R3 30
      609 SETTABLEKS                       R3 R2 K205 ["Lighting"]
      611 LOADN                            R3 30
      612 SETTABLEKS                       R3 R2 K206 ["ViewportFrame"]
      614 LOADN                            R3 30
      615 SETTABLEKS                       R3 R2 K207 ["Light"]
      617 LOADN                            R3 30
      618 SETTABLEKS                       R3 R2 K208 ["PointLight"]
      620 LOADN                            R3 30
      621 SETTABLEKS                       R3 R2 K209 ["SpotLight"]
      623 LOADN                            R3 30
      624 SETTABLEKS                       R3 R2 K210 ["SurfaceLight"]
      626 LOADN                            R3 31
      627 SETTABLEKS                       R3 R2 K211 ["Path2D"]
      629 LOADN                            R3 32
      630 SETTABLEKS                       R3 R2 K212 ["WrapTarget"]
      632 LOADN                            R3 32
      633 SETTABLEKS                       R3 R2 K213 ["WrapDeformer"]
      635 LOADN                            R3 32
      636 SETTABLEKS                       R3 R2 K214 ["WrapLayer"]
      638 LOADN                            R3 40
      639 SETTABLEKS                       R3 R2 K215 ["BindableFunction"]
      641 LOADN                            R3 40
      642 SETTABLEKS                       R3 R2 K216 ["SurfaceAppearance"]
      644 LOADN                            R3 40
      645 SETTABLEKS                       R3 R2 K217 ["Decal"]
      647 LOADN                            R3 40
      648 SETTABLEKS                       R3 R2 K218 ["Texture"]
      650 LOADN                            R3 40
      651 SETTABLEKS                       R3 R2 K219 ["LocalScript"]
      653 LOADN                            R3 40
      654 SETTABLEKS                       R3 R2 K220 ["RenderingTest"]
      656 LOADN                            R3 40
      657 SETTABLEKS                       R3 R2 K221 ["RemoteFunction"]
      659 LOADN                            R3 41
      660 SETTABLEKS                       R3 R2 K222 ["MaterialVariant"]
      662 LOADN                            R3 42
      663 SETTABLEKS                       R3 R2 K223 ["TerrainDetail"]
      665 LOADN                            R3 50
      666 SETTABLEKS                       R3 R2 K224 ["BindableEvent"]
      668 LOADN                            R3 50
      669 SETTABLEKS                       R3 R2 K225 ["RemoteEvent"]
      671 LOADN                            R3 50
      672 SETTABLEKS                       R3 R2 K226 ["ModuleScript"]
      674 LOADN                            R3 51
      675 SETTABLEKS                       R3 R2 K227 ["UnreliableRemoteEvent"]
      677 LOADN                            R3 100
      678 SETTABLEKS                       R3 R2 K228 ["Model"]
      680 LOADN                            R3 100
      681 SETTABLEKS                       R3 R2 K229 ["Status"]
      683 LOADN                            R3 102
      684 SETTABLEKS                       R3 R2 K230 ["NegateOperation"]
      686 LOADN                            R3 103
      687 SETTABLEKS                       R3 R2 K231 ["UnionOperation"]
      689 LOADN                            R3 104
      690 SETTABLEKS                       R3 R2 K232 ["IntersectOperation"]
      692 LOADN                            R3 105
      693 SETTABLEKS                       R3 R2 K233 ["FaceControls"]
      695 LOADN                            R3 105
      696 SETTABLEKS                       R3 R2 K234 ["MeshPart"]
      698 LOADN                            R3 110
      699 SETTABLEKS                       R3 R2 K235 ["Message"]
      701 LOADN                            R3 110
      702 SETTABLEKS                       R3 R2 K236 ["Hint"]
      704 LOADN                            R3 110
      705 SETTABLEKS                       R3 R2 K237 ["Part"]
      707 LOADN                            R3 120
      708 SETTABLEKS                       R3 R2 K238 ["TrussPart"]
      710 LOADN                            R3 120
      711 SETTABLEKS                       R3 R2 K239 ["WedgePart"]
      713 LOADN                            R3 120
      714 SETTABLEKS                       R3 R2 K240 ["PrismPart"]
      716 LOADN                            R3 120
      717 SETTABLEKS                       R3 R2 K241 ["PyramidPart"]
      719 LOADN                            R3 120
      720 SETTABLEKS                       R3 R2 K242 ["ParallelRampPart"]
      722 LOADN                            R3 120
      723 SETTABLEKS                       R3 R2 K243 ["RightAngleRampPart"]
      725 LOADN                            R3 120
      726 SETTABLEKS                       R3 R2 K244 ["CornerWedgePart"]
      728 LOADN                            R3 130
      729 SETTABLEKS                       R3 R2 K245 ["PlayerGui"]
      731 LOADN                            R3 130
      732 SETTABLEKS                       R3 R2 K246 ["PlayerScripts"]
      734 LOADN                            R3 130
      735 SETTABLEKS                       R3 R2 K247 ["StandalonePluginScripts"]
      737 LOADN                            R3 130
      738 SETTABLEKS                       R3 R2 K248 ["StarterPlayerScripts"]
      740 LOADN                            R3 130
      741 SETTABLEKS                       R3 R2 K249 ["StarterCharacterScripts"]
      743 LOADN                            R3 130
      744 SETTABLEKS                       R3 R2 K250 ["UIFlexItem"]
      746 LOADN                            R3 140
      747 SETTABLEKS                       R3 R2 K251 ["BodyGyro"]
      749 LOADN                            R3 140
      750 SETTABLEKS                       R3 R2 K252 ["BodyPosition"]
      752 LOADN                            R3 140
      753 SETTABLEKS                       R3 R2 K253 ["RocketPropulsion"]
      755 LOADN                            R3 140
      756 SETTABLEKS                       R3 R2 K254 ["BodyVelocity"]
      758 LOADN                            R3 140
      759 SETTABLEKS                       R3 R2 K255 ["BodyAngularVelocity"]
      761 LOADN                            R3 140
      762 SETTABLEKS                       R3 R2 K256 ["BodyForce"]
      764 LOADN                            R3 140
      765 SETTABLEKS                       R3 R2 K257 ["BodyThrust"]
      767 LOADN                            R3 140
      768 SETTABLEKS                       R3 R2 K258 ["Teams"]
      770 LOADN                            R3 140
      771 SETTABLEKS                       R3 R2 K259 ["GuiMain"]
      773 LOADN                            R3 140
      774 SETTABLEKS                       R3 R2 K260 ["ScreenGui"]
      776 LOADN                            R3 140
      777 SETTABLEKS                       R3 R2 K261 ["BillboardGui"]
      779 LOADN                            R3 140
      780 SETTABLEKS                       R3 R2 K262 ["SurfaceGuiBase"]
      782 LOADN                            R3 140
      783 SETTABLEKS                       R3 R2 K263 ["SurfaceGui"]
      785 LOADN                            R3 150
      786 SETTABLEKS                       R3 R2 K264 ["Frame"]
      788 LOADN                            R3 150
      789 SETTABLEKS                       R3 R2 K265 ["ScrollingFrame"]
      791 LOADN                            R3 160
      792 SETTABLEKS                       R3 R2 K266 ["GuiButton"]
      794 LOADN                            R3 160
      795 SETTABLEKS                       R3 R2 K267 ["ImageButton"]
      797 LOADN                            R3 170
      798 SETTABLEKS                       R3 R2 K268 ["TextButton"]
      800 LOADN                            R3 170
      801 SETTABLEKS                       R3 R2 K269 ["TextBox"]
      803 LOADN                            R3 180
      804 SETTABLEKS                       R3 R2 K270 ["ImageLabel"]
      806 LOADN                            R3 190
      807 SETTABLEKS                       R3 R2 K271 ["TextLabel"]
      809 LOADN                            R3 190
      810 SETTABLEKS                       R3 R2 K272 ["Handles"]
      812 LOADN                            R3 200
      813 SETTABLEKS                       R3 R2 K273 ["Weld"]
      815 LOADN                            R3 200
      816 SETTABLEKS                       R3 R2 K274 ["Snap"]
      818 LOADN                            R3 200
      819 SETTABLEKS                       R3 R2 K275 ["AdGui"]
      821 LOADN                            R3 200
      822 SETTABLEKS                       R3 R2 K276 ["AdPortal"]
      824 LOADN                            R3 200
      825 SETTABLEKS                       R3 R2 K277 ["JointInstance"]
      827 LOADN                            R3 200
      828 SETTABLEKS                       R3 R2 K278 ["CanvasGroup"]
      830 LOADN                            R3 200
      831 SETTABLEKS                       R3 R2 K279 ["StyleBase"]
      833 LOADN                            R3 200
      834 SETTABLEKS                       R3 R2 K280 ["StyleSheet"]
      836 LOADN                            R3 200
      837 SETTABLEKS                       R3 R2 K281 ["StyleRule"]
      839 LOADN                            R3 200
      840 SETTABLEKS                       R3 R2 K282 ["StyleLink"]
      842 LOADN                            R3 200
      843 SETTABLEKS                       R3 R2 K283 ["StyleDerive"]
      845 LOADN                            R3 200
      846 SETTABLEKS                       R3 R2 K284 ["ArcHandles"]
      848 LOADN                            R3 200
      849 SETTABLEKS                       R3 R2 K285 ["Motor6D"]
      851 LOADN                            R3 205
      852 SETTABLEKS                       R3 R2 K286 ["BoxHandleAdornment"]
      854 LOADN                            R3 205
      855 SETTABLEKS                       R3 R2 K287 ["ConeHandleAdornment"]
      857 LOADN                            R3 205
      858 SETTABLEKS                       R3 R2 K288 ["CylinderHandleAdornment"]
      860 LOADN                            R3 205
      861 SETTABLEKS                       R3 R2 K289 ["SphereHandleAdornment"]
      863 LOADN                            R3 205
      864 SETTABLEKS                       R3 R2 K290 ["WireframeHandleAdornment"]
      866 LOADN                            R3 205
      867 SETTABLEKS                       R3 R2 K291 ["LineHandleAdornment"]
      869 LOADN                            R3 205
      870 SETTABLEKS                       R3 R2 K292 ["ImageHandleAdornment"]
      872 LOADN                            R3 210
      873 SETTABLEKS                       R3 R2 K293 ["SelectionBox"]
      875 LOADN                            R3 210
      876 SETTABLEKS                       R3 R2 K294 ["SelectionSphere"]
      878 LOADN                            R3 210
      879 SETTABLEKS                       R3 R2 K295 ["SurfaceSelection"]
      881 LOADN                            R3 210
      882 SETTABLEKS                       R3 R2 K296 ["PathfindingModifier"]
      884 LOADN                            R3 210
      885 SETTABLEKS                       R3 R2 K297 ["PathfindingLink"]
      887 LOADN                            R3 220
      888 SETTABLEKS                       R3 R2 K298 ["Configuration"]
      890 LOADN                            R3 220
      891 SETTABLEKS                       R3 R2 K299 ["SelectionPartLasso"]
      893 LOADN                            R3 220
      894 SETTABLEKS                       R3 R2 K300 ["SelectionPointLasso"]
      896 LOADN                            R3 220
      897 SETTABLEKS                       R3 R2 K301 ["PartPairLasso"]
      899 LOADN                            R3 220
      900 SETTABLEKS                       R3 R2 K302 ["PoseBase"]
      902 LOADN                            R3 220
      903 SETTABLEKS                       R3 R2 K303 ["Pose"]
      905 LOADN                            R3 220
      906 SETTABLEKS                       R3 R2 K304 ["NumberPose"]
      908 LOADN                            R3 220
      909 SETTABLEKS                       R3 R2 K305 ["KeyframeMarker"]
      911 LOADN                            R3 220
      912 SETTABLEKS                       R3 R2 K306 ["Keyframe"]
      914 LOADN                            R3 220
      915 SETTABLEKS                       R3 R2 K307 ["Animation"]
      917 LOADN                            R3 220
      918 SETTABLEKS                       R3 R2 K308 ["AnimationTrack"]
      920 LOADN                            R3 220
      921 SETTABLEKS                       R3 R2 K309 ["AnimationController"]
      923 LOADN                            R3 220
      924 SETTABLEKS                       R3 R2 K310 ["Animator"]
      926 LOADN                            R3 220
      927 SETTABLEKS                       R3 R2 K311 ["IKControl"]
      929 LOADN                            R3 220
      930 SETTABLEKS                       R3 R2 K312 ["CharacterMesh"]
      932 LOADN                            R3 220
      933 SETTABLEKS                       R3 R2 K313 ["Dialog"]
      935 LOADN                            R3 220
      936 SETTABLEKS                       R3 R2 K314 ["DialogChoice"]
      938 LOADN                            R3 240
      939 SETTABLEKS                       R3 R2 K315 ["HopperBin"]
      941 LOADN                            R3 500
      942 SETTABLEKS                       R3 R2 K316 ["SoundService"]
      944 LOADN                            R3 510
      945 SETTABLEKS                       R3 R2 K317 ["Chat"]
      947 LOADN                            R3 510
      948 SETTABLEKS                       R3 R2 K318 ["ChatService"]
      950 LOADN                            R3 511
      951 SETTABLEKS                       R3 R2 K319 ["TextChatService"]
      953 LOADN                            R3 520
      954 SETTABLEKS                       R3 R2 K320 ["VoiceChatService"]
      956 LOADN                            R3 530
      957 SETTABLEKS                       R3 R2 K321 ["LocalizationService"]
      959 LOADN                            R3 1000
      960 SETTABLEKS                       R3 R2 K322 ["TestService"]
      962 LOADN                            R3 1000
      963 SETTABLEKS                       R3 R2 K323 ["VRService"]
      965 DUPCLOSURE                       R3 K324 [PROTO_0]
      966 CAPTURE                          VAL R2
      967 RETURN                           R3 1
