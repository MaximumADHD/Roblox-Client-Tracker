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
      108 SETTABLEKS                       R3 R2 K38 ["AudioChannelMixer"]
      110 LOADN                            R3 10
      111 SETTABLEKS                       R3 R2 K39 ["AudioChannelSplitter"]
      113 LOADN                            R3 10
      114 SETTABLEKS                       R3 R2 K40 ["AudioFDNReverb"]
      116 LOADN                            R3 10
      117 SETTABLEKS                       R3 R2 K41 ["AudioGate"]
      119 LOADN                            R3 10
      120 SETTABLEKS                       R3 R2 K42 ["AudioRecorder"]
      122 LOADN                            R3 10
      123 SETTABLEKS                       R3 R2 K43 ["AudioSpeechToText"]
      125 LOADN                            R3 10
      126 SETTABLEKS                       R3 R2 K44 ["AudioTextToSpeech"]
      128 LOADN                            R3 10
      129 SETTABLEKS                       R3 R2 K45 ["AudioTremolo"]
      131 LOADN                            R3 10
      132 SETTABLEKS                       R3 R2 K46 ["AudioWindSynthesizer"]
      134 LOADN                            R3 10
      135 SETTABLEKS                       R3 R2 K47 ["ChatWindowConfiguration"]
      137 LOADN                            R3 10
      138 SETTABLEKS                       R3 R2 K48 ["TextSource"]
      140 LOADN                            R3 10
      141 SETTABLEKS                       R3 R2 K49 ["Team"]
      143 LOADN                            R3 10
      144 SETTABLEKS                       R3 R2 K50 ["Player"]
      146 LOADN                            R3 10
      147 SETTABLEKS                       R3 R2 K51 ["FunctionalTest"]
      149 LOADN                            R3 10
      150 SETTABLEKS                       R3 R2 K52 ["VideoPlayer"]
      152 LOADN                            R3 10
      153 SETTABLEKS                       R3 R2 K53 ["Folder"]
      155 LOADN                            R3 10
      156 SETTABLEKS                       R3 R2 K54 ["GeneratedFolder"]
      158 LOADN                            R3 10
      159 SETTABLEKS                       R3 R2 K55 ["VideoDisplay"]
      161 LOADN                            R3 11
      162 SETTABLEKS                       R3 R2 K56 ["ChatInputBarConfiguration"]
      164 LOADN                            R3 12
      165 SETTABLEKS                       R3 R2 K57 ["ChannelTabsConfiguration"]
      167 LOADN                            R3 13
      168 SETTABLEKS                       R3 R2 K58 ["BubbleChatConfiguration"]
      170 LOADN                            R3 14
      171 SETTABLEKS                       R3 R2 K59 ["TextChannel"]
      173 LOADN                            R3 15
      174 SETTABLEKS                       R3 R2 K60 ["TextChatCommand"]
      176 LOADN                            R3 16
      177 SETTABLEKS                       R3 R2 K61 ["TextChannelWindow"]
      179 LOADN                            R3 18
      180 SETTABLEKS                       R3 R2 K62 ["VideoFrame"]
      182 LOADN                            R3 20
      183 SETTABLEKS                       R3 R2 K63 ["Clothing"]
      185 LOADN                            R3 20
      186 SETTABLEKS                       R3 R2 K64 ["BackpackItem"]
      188 LOADN                            R3 20
      189 SETTABLEKS                       R3 R2 K65 ["EchoSoundEffect"]
      191 LOADN                            R3 20
      192 SETTABLEKS                       R3 R2 K66 ["FlangeSoundEffect"]
      194 LOADN                            R3 20
      195 SETTABLEKS                       R3 R2 K67 ["DistortionSoundEffect"]
      197 LOADN                            R3 20
      198 SETTABLEKS                       R3 R2 K68 ["PitchShiftSoundEffect"]
      200 LOADN                            R3 20
      201 SETTABLEKS                       R3 R2 K69 ["ChannelSelectorSoundEffect"]
      203 LOADN                            R3 20
      204 SETTABLEKS                       R3 R2 K70 ["ChorusSoundEffect"]
      206 LOADN                            R3 20
      207 SETTABLEKS                       R3 R2 K71 ["TremoloSoundEffect"]
      209 LOADN                            R3 20
      210 SETTABLEKS                       R3 R2 K72 ["ReverbSoundEffect"]
      212 LOADN                            R3 20
      213 SETTABLEKS                       R3 R2 K73 ["EqualizerSoundEffect"]
      215 LOADN                            R3 20
      216 SETTABLEKS                       R3 R2 K74 ["CompressorSoundEffect"]
      218 LOADN                            R3 20
      219 SETTABLEKS                       R3 R2 K75 ["SoundGroup"]
      221 LOADN                            R3 20
      222 SETTABLEKS                       R3 R2 K76 ["ColorCorrectionEffect"]
      224 LOADN                            R3 20
      225 SETTABLEKS                       R3 R2 K77 ["ColorGradingEffect"]
      227 LOADN                            R3 20
      228 SETTABLEKS                       R3 R2 K78 ["BloomEffect"]
      230 LOADN                            R3 20
      231 SETTABLEKS                       R3 R2 K79 ["BlurEffect"]
      233 LOADN                            R3 20
      234 SETTABLEKS                       R3 R2 K80 ["Highlight"]
      236 LOADN                            R3 20
      237 SETTABLEKS                       R3 R2 K81 ["DepthOfFieldEffect"]
      239 LOADN                            R3 20
      240 SETTABLEKS                       R3 R2 K82 ["SunRaysEffect"]
      242 LOADN                            R3 20
      243 SETTABLEKS                       R3 R2 K83 ["Motor"]
      245 LOADN                            R3 20
      246 SETTABLEKS                       R3 R2 K84 ["ControllerPartSensor"]
      248 LOADN                            R3 20
      249 SETTABLEKS                       R3 R2 K85 ["BuoyancySensor"]
      251 LOADN                            R3 20
      252 SETTABLEKS                       R3 R2 K86 ["AtmosphereSensor"]
      254 LOADN                            R3 20
      255 SETTABLEKS                       R3 R2 K87 ["FluidForceSensor"]
      257 LOADN                            R3 20
      258 SETTABLEKS                       R3 R2 K88 ["ControllerManager"]
      260 LOADN                            R3 20
      261 SETTABLEKS                       R3 R2 K89 ["GroundController"]
      263 LOADN                            R3 20
      264 SETTABLEKS                       R3 R2 K90 ["AirController"]
      266 LOADN                            R3 20
      267 SETTABLEKS                       R3 R2 K91 ["ClimbController"]
      269 LOADN                            R3 20
      270 SETTABLEKS                       R3 R2 K92 ["SwimController"]
      272 LOADN                            R3 20
      273 SETTABLEKS                       R3 R2 K93 ["BodyColors"]
      275 LOADN                            R3 20
      276 SETTABLEKS                       R3 R2 K94 ["Shirt"]
      278 LOADN                            R3 20
      279 SETTABLEKS                       R3 R2 K95 ["Pants"]
      281 LOADN                            R3 20
      282 SETTABLEKS                       R3 R2 K96 ["ShirtGraphic"]
      284 LOADN                            R3 20
      285 SETTABLEKS                       R3 R2 K97 ["Skin"]
      287 LOADN                            R3 20
      288 SETTABLEKS                       R3 R2 K98 ["DebugSettings"]
      290 LOADN                            R3 20
      291 SETTABLEKS                       R3 R2 K99 ["GameSettings"]
      293 LOADN                            R3 20
      294 SETTABLEKS                       R3 R2 K100 ["GlobalSettings"]
      296 LOADN                            R3 20
      297 SETTABLEKS                       R3 R2 K101 ["Item"]
      299 LOADN                            R3 20
      300 SETTABLEKS                       R3 R2 K102 ["NetworkSettings"]
      302 LOADN                            R3 20
      303 SETTABLEKS                       R3 R2 K103 ["RenderSettings"]
      305 LOADN                            R3 20
      306 SETTABLEKS                       R3 R2 K104 ["Hopper"]
      308 LOADN                            R3 20
      309 SETTABLEKS                       R3 R2 K105 ["Hole"]
      311 LOADN                            R3 20
      312 SETTABLEKS                       R3 R2 K106 ["Feature"]
      314 LOADN                            R3 20
      315 SETTABLEKS                       R3 R2 K107 ["Players"]
      317 LOADN                            R3 20
      318 SETTABLEKS                       R3 R2 K108 ["Accoutrement"]
      320 LOADN                            R3 20
      321 SETTABLEKS                       R3 R2 K109 ["TerrainRegion"]
      323 LOADN                            R3 22
      324 SETTABLEKS                       R3 R2 K110 ["HumanoidDescription"]
      326 LOADN                            R3 22
      327 SETTABLEKS                       R3 R2 K111 ["BodyPartDescription"]
      329 LOADN                            R3 22
      330 SETTABLEKS                       R3 R2 K112 ["AccessoryDescription"]
      332 LOADN                            R3 22
      333 SETTABLEKS                       R3 R2 K113 ["MakeupDescription"]
      335 LOADN                            R3 22
      336 SETTABLEKS                       R3 R2 K114 ["WorldModel"]
      338 LOADN                            R3 30
      339 SETTABLEKS                       R3 R2 K115 ["TouchTransmitter"]
      341 LOADN                            R3 30
      342 SETTABLEKS                       R3 R2 K116 ["ForceField"]
      344 LOADN                            R3 30
      345 SETTABLEKS                       R3 R2 K117 ["Plugin"]
      347 LOADN                            R3 30
      348 SETTABLEKS                       R3 R2 K118 ["Hat"]
      350 LOADN                            R3 30
      351 SETTABLEKS                       R3 R2 K119 ["Accessory"]
      353 LOADN                            R3 30
      354 SETTABLEKS                       R3 R2 K120 ["Attachment"]
      356 LOADN                            R3 30
      357 SETTABLEKS                       R3 R2 K121 ["Bone"]
      359 LOADN                            R3 30
      360 SETTABLEKS                       R3 R2 K122 ["Constraint"]
      362 LOADN                            R3 30
      363 SETTABLEKS                       R3 R2 K123 ["BallSocketConstraint"]
      365 LOADN                            R3 30
      366 SETTABLEKS                       R3 R2 K124 ["RopeConstraint"]
      368 LOADN                            R3 30
      369 SETTABLEKS                       R3 R2 K125 ["RodConstraint"]
      371 LOADN                            R3 30
      372 SETTABLEKS                       R3 R2 K126 ["SpringConstraint"]
      374 LOADN                            R3 30
      375 SETTABLEKS                       R3 R2 K127 ["TorsionSpringConstraint"]
      377 LOADN                            R3 30
      378 SETTABLEKS                       R3 R2 K128 ["WeldConstraint"]
      380 LOADN                            R3 30
      381 SETTABLEKS                       R3 R2 K129 ["NoCollisionConstraint"]
      383 LOADN                            R3 30
      384 SETTABLEKS                       R3 R2 K130 ["RigidConstraint"]
      386 LOADN                            R3 30
      387 SETTABLEKS                       R3 R2 K131 ["HingeConstraint"]
      389 LOADN                            R3 30
      390 SETTABLEKS                       R3 R2 K132 ["UniversalConstraint"]
      392 LOADN                            R3 30
      393 SETTABLEKS                       R3 R2 K133 ["SlidingBallConstraint"]
      395 LOADN                            R3 30
      396 SETTABLEKS                       R3 R2 K134 ["PrismaticConstraint"]
      398 LOADN                            R3 30
      399 SETTABLEKS                       R3 R2 K135 ["CylindricalConstraint"]
      401 LOADN                            R3 30
      402 SETTABLEKS                       R3 R2 K136 ["AlignOrientation"]
      404 LOADN                            R3 30
      405 SETTABLEKS                       R3 R2 K137 ["AlignPosition"]
      407 LOADN                            R3 30
      408 SETTABLEKS                       R3 R2 K138 ["AnimationConstraint"]
      410 LOADN                            R3 30
      411 SETTABLEKS                       R3 R2 K139 ["VectorForce"]
      413 LOADN                            R3 30
      414 SETTABLEKS                       R3 R2 K140 ["LineForce"]
      416 LOADN                            R3 30
      417 SETTABLEKS                       R3 R2 K141 ["Torque"]
      419 LOADN                            R3 30
      420 SETTABLEKS                       R3 R2 K142 ["AngularVelocity"]
      422 LOADN                            R3 30
      423 SETTABLEKS                       R3 R2 K143 ["PlaneConstraint"]
      425 LOADN                            R3 30
      426 SETTABLEKS                       R3 R2 K144 ["PluginCapabilities"]
      428 LOADN                            R3 30
      429 SETTABLEKS                       R3 R2 K145 ["Plane"]
      431 LOADN                            R3 30
      432 SETTABLEKS                       R3 R2 K146 ["LinearVelocity"]
      434 LOADN                            R3 30
      435 SETTABLEKS                       R3 R2 K147 ["ClickDetector"]
      437 LOADN                            R3 30
      438 SETTABLEKS                       R3 R2 K148 ["DragDetector"]
      440 LOADN                            R3 30
      441 SETTABLEKS                       R3 R2 K149 ["UIDragDetector"]
      443 LOADN                            R3 30
      444 SETTABLEKS                       R3 R2 K150 ["ProximityPrompt"]
      446 LOADN                            R3 30
      447 SETTABLEKS                       R3 R2 K151 ["Smoke"]
      449 LOADN                            R3 30
      450 SETTABLEKS                       R3 R2 K152 ["Trail"]
      452 LOADN                            R3 30
      453 SETTABLEKS                       R3 R2 K153 ["Beam"]
      455 LOADN                            R3 30
      456 SETTABLEKS                       R3 R2 K154 ["ParticleEmitter"]
      458 LOADN                            R3 30
      459 SETTABLEKS                       R3 R2 K155 ["Sparkles"]
      461 LOADN                            R3 30
      462 SETTABLEKS                       R3 R2 K156 ["Explosion"]
      464 LOADN                            R3 30
      465 SETTABLEKS                       R3 R2 K157 ["Fire"]
      467 LOADN                            R3 30
      468 SETTABLEKS                       R3 R2 K158 ["Seat"]
      470 LOADN                            R3 30
      471 SETTABLEKS                       R3 R2 K159 ["Platform"]
      473 LOADN                            R3 30
      474 SETTABLEKS                       R3 R2 K160 ["SkateboardPlatform"]
      476 LOADN                            R3 30
      477 SETTABLEKS                       R3 R2 K161 ["VehicleSeat"]
      479 LOADN                            R3 30
      480 SETTABLEKS                       R3 R2 K162 ["Tool"]
      482 LOADN                            R3 30
      483 SETTABLEKS                       R3 R2 K163 ["Flag"]
      485 LOADN                            R3 30
      486 SETTABLEKS                       R3 R2 K164 ["FlagStand"]
      488 LOADN                            R3 30
      489 SETTABLEKS                       R3 R2 K165 ["IntValue"]
      491 LOADN                            R3 30
      492 SETTABLEKS                       R3 R2 K166 ["RayValue"]
      494 LOADN                            R3 30
      495 SETTABLEKS                       R3 R2 K167 ["IntConstrainedValue"]
      497 LOADN                            R3 30
      498 SETTABLEKS                       R3 R2 K168 ["DoubleConstrainedValue"]
      500 LOADN                            R3 30
      501 SETTABLEKS                       R3 R2 K169 ["BoolValue"]
      503 LOADN                            R3 30
      504 SETTABLEKS                       R3 R2 K170 ["CustomEvent"]
      506 LOADN                            R3 30
      507 SETTABLEKS                       R3 R2 K171 ["CustomEventReceiver"]
      509 LOADN                            R3 30
      510 SETTABLEKS                       R3 R2 K172 ["FloorWire"]
      512 LOADN                            R3 30
      513 SETTABLEKS                       R3 R2 K173 ["NumberValue"]
      515 LOADN                            R3 30
      516 SETTABLEKS                       R3 R2 K174 ["StringValue"]
      518 LOADN                            R3 30
      519 SETTABLEKS                       R3 R2 K175 ["Vector3Value"]
      521 LOADN                            R3 30
      522 SETTABLEKS                       R3 R2 K176 ["CFrameValue"]
      524 LOADN                            R3 30
      525 SETTABLEKS                       R3 R2 K177 ["Color3Value"]
      527 LOADN                            R3 30
      528 SETTABLEKS                       R3 R2 K178 ["BrickColorValue"]
      530 LOADN                            R3 30
      531 SETTABLEKS                       R3 R2 K179 ["ValueBase"]
      533 LOADN                            R3 30
      534 SETTABLEKS                       R3 R2 K180 ["ObjectValue"]
      536 LOADN                            R3 30
      537 SETTABLEKS                       R3 R2 K181 ["SpecialMesh"]
      539 LOADN                            R3 30
      540 SETTABLEKS                       R3 R2 K182 ["BlockMesh"]
      542 LOADN                            R3 30
      543 SETTABLEKS                       R3 R2 K183 ["CylinderMesh"]
      545 LOADN                            R3 30
      546 SETTABLEKS                       R3 R2 K184 ["Backpack"]
      548 LOADN                            R3 30
      549 SETTABLEKS                       R3 R2 K185 ["StarterPack"]
      551 LOADN                            R3 30
      552 SETTABLEKS                       R3 R2 K186 ["StarterPlayer"]
      554 LOADN                            R3 30
      555 SETTABLEKS                       R3 R2 K187 ["StarterGear"]
      557 LOADN                            R3 30
      558 SETTABLEKS                       R3 R2 K188 ["CoreGui"]
      560 LOADN                            R3 30
      561 SETTABLEKS                       R3 R2 K189 ["CorePackages"]
      563 LOADN                            R3 30
      564 SETTABLEKS                       R3 R2 K190 ["RobloxPluginGuiService"]
      566 LOADN                            R3 30
      567 SETTABLEKS                       R3 R2 K191 ["PluginGuiService"]
      569 LOADN                            R3 30
      570 SETTABLEKS                       R3 R2 K192 ["PluginDebugService"]
      572 LOADN                            R3 30
      573 SETTABLEKS                       R3 R2 K193 ["UIListLayout"]
      575 LOADN                            R3 30
      576 SETTABLEKS                       R3 R2 K194 ["UIGridLayout"]
      578 LOADN                            R3 30
      579 SETTABLEKS                       R3 R2 K195 ["UIPageLayout"]
      581 LOADN                            R3 30
      582 SETTABLEKS                       R3 R2 K196 ["UITableLayout"]
      584 LOADN                            R3 30
      585 SETTABLEKS                       R3 R2 K197 ["UISizeConstraint"]
      587 LOADN                            R3 30
      588 SETTABLEKS                       R3 R2 K198 ["UITextSizeConstraint"]
      590 LOADN                            R3 30
      591 SETTABLEKS                       R3 R2 K199 ["UIAspectRatioConstraint"]
      593 LOADN                            R3 30
      594 SETTABLEKS                       R3 R2 K200 ["UIScale"]
      596 LOADN                            R3 30
      597 SETTABLEKS                       R3 R2 K201 ["UIPadding"]
      599 LOADN                            R3 30
      600 SETTABLEKS                       R3 R2 K202 ["UIGradient"]
      602 LOADN                            R3 30
      603 SETTABLEKS                       R3 R2 K203 ["UICorner"]
      605 LOADN                            R3 30
      606 SETTABLEKS                       R3 R2 K204 ["UIShadow"]
      608 LOADN                            R3 30
      609 SETTABLEKS                       R3 R2 K205 ["UIStroke"]
      611 LOADN                            R3 30
      612 SETTABLEKS                       R3 R2 K206 ["StarterGui"]
      614 LOADN                            R3 30
      615 SETTABLEKS                       R3 R2 K207 ["LocalizationTable"]
      617 LOADN                            R3 30
      618 SETTABLEKS                       R3 R2 K208 ["MaterialService"]
      620 LOADN                            R3 30
      621 SETTABLEKS                       R3 R2 K209 ["Humanoid"]
      623 LOADN                            R3 30
      624 SETTABLEKS                       R3 R2 K210 ["SpawnLocation"]
      626 LOADN                            R3 30
      627 SETTABLEKS                       R3 R2 K211 ["NetworkClient"]
      629 LOADN                            R3 30
      630 SETTABLEKS                       R3 R2 K212 ["NetworkServer"]
      632 LOADN                            R3 30
      633 SETTABLEKS                       R3 R2 K213 ["Script"]
      635 LOADN                            R3 30
      636 SETTABLEKS                       R3 R2 K214 ["NetworkReplicator"]
      638 LOADN                            R3 30
      639 SETTABLEKS                       R3 R2 K215 ["ReplicatedStorage"]
      641 LOADN                            R3 30
      642 SETTABLEKS                       R3 R2 K216 ["ReplicatedFirst"]
      644 LOADN                            R3 30
      645 SETTABLEKS                       R3 R2 K217 ["ServerStorage"]
      647 LOADN                            R3 30
      648 SETTABLEKS                       R3 R2 K218 ["ServerScriptService"]
      650 LOADN                            R3 30
      651 SETTABLEKS                       R3 R2 K219 ["Lighting"]
      653 LOADN                            R3 30
      654 SETTABLEKS                       R3 R2 K220 ["ViewportFrame"]
      656 LOADN                            R3 30
      657 SETTABLEKS                       R3 R2 K221 ["Light"]
      659 LOADN                            R3 30
      660 SETTABLEKS                       R3 R2 K222 ["PointLight"]
      662 LOADN                            R3 30
      663 SETTABLEKS                       R3 R2 K223 ["SpotLight"]
      665 LOADN                            R3 30
      666 SETTABLEKS                       R3 R2 K224 ["SurfaceLight"]
      668 LOADN                            R3 30
      669 SETTABLEKS                       R3 R2 K225 ["PlatformLibraries"]
      671 LOADN                            R3 30
      672 SETTABLEKS                       R3 R2 K226 ["Preloaded"]
      674 LOADN                            R3 31
      675 SETTABLEKS                       R3 R2 K227 ["Path2D"]
      677 LOADN                            R3 31
      678 SETTABLEKS                       R3 R2 K228 ["InputAction"]
      680 LOADN                            R3 31
      681 SETTABLEKS                       R3 R2 K229 ["InputBinding"]
      683 LOADN                            R3 31
      684 SETTABLEKS                       R3 R2 K230 ["InputContext"]
      686 LOADN                            R3 32
      687 SETTABLEKS                       R3 R2 K231 ["WrapTarget"]
      689 LOADN                            R3 32
      690 SETTABLEKS                       R3 R2 K232 ["WrapDeformer"]
      692 LOADN                            R3 32
      693 SETTABLEKS                       R3 R2 K233 ["WrapLayer"]
      695 LOADN                            R3 33
      696 SETTABLEKS                       R3 R2 K234 ["WrapTextureTransfer"]
      698 LOADN                            R3 40
      699 SETTABLEKS                       R3 R2 K235 ["BindableFunction"]
      701 LOADN                            R3 40
      702 SETTABLEKS                       R3 R2 K236 ["SurfaceAppearance"]
      704 LOADN                            R3 40
      705 SETTABLEKS                       R3 R2 K237 ["Decal"]
      707 LOADN                            R3 40
      708 SETTABLEKS                       R3 R2 K238 ["Texture"]
      710 LOADN                            R3 40
      711 SETTABLEKS                       R3 R2 K239 ["LocalScript"]
      713 LOADN                            R3 40
      714 SETTABLEKS                       R3 R2 K240 ["RenderingTest"]
      716 LOADN                            R3 40
      717 SETTABLEKS                       R3 R2 K241 ["RemoteFunction"]
      719 LOADN                            R3 41
      720 SETTABLEKS                       R3 R2 K242 ["MaterialVariant"]
      722 LOADN                            R3 42
      723 SETTABLEKS                       R3 R2 K243 ["TerrainDetail"]
      725 LOADN                            R3 50
      726 SETTABLEKS                       R3 R2 K244 ["BindableEvent"]
      728 LOADN                            R3 50
      729 SETTABLEKS                       R3 R2 K245 ["RemoteEvent"]
      731 LOADN                            R3 50
      732 SETTABLEKS                       R3 R2 K246 ["ModuleScript"]
      734 LOADN                            R3 50
      735 SETTABLEKS                       R3 R2 K247 ["AuroraScript"]
      737 LOADN                            R3 51
      738 SETTABLEKS                       R3 R2 K248 ["UnreliableRemoteEvent"]
      740 LOADN                            R3 100
      741 SETTABLEKS                       R3 R2 K249 ["Model"]
      743 LOADN                            R3 100
      744 SETTABLEKS                       R3 R2 K250 ["Status"]
      746 LOADN                            R3 100
      747 SETTABLEKS                       R3 R2 K251 ["HapticEffect"]
      749 LOADN                            R3 100
      750 SETTABLEKS                       R3 R2 K252 ["ProceduralModel"]
      752 LOADN                            R3 102
      753 SETTABLEKS                       R3 R2 K253 ["NegateOperation"]
      755 LOADN                            R3 103
      756 SETTABLEKS                       R3 R2 K254 ["UnionOperation"]
      758 LOADN                            R3 104
      759 SETTABLEKS                       R3 R2 K255 ["IntersectOperation"]
      761 LOADN                            R3 105
      762 SETTABLEKS                       R3 R2 K256 ["FaceControls"]
      764 LOADN                            R3 105
      765 SETTABLEKS                       R3 R2 K257 ["MeshPart"]
      767 LOADN                            R3 110
      768 SETTABLEKS                       R3 R2 K258 ["Message"]
      770 LOADN                            R3 110
      771 SETTABLEKS                       R3 R2 K259 ["Hint"]
      773 LOADN                            R3 110
      774 SETTABLEKS                       R3 R2 K260 ["Part"]
      776 LOADN                            R3 120
      777 SETTABLEKS                       R3 R2 K261 ["TrussPart"]
      779 LOADN                            R3 120
      780 SETTABLEKS                       R3 R2 K262 ["WedgePart"]
      782 LOADN                            R3 120
      783 SETTABLEKS                       R3 R2 K263 ["PrismPart"]
      785 LOADN                            R3 120
      786 SETTABLEKS                       R3 R2 K264 ["PyramidPart"]
      788 LOADN                            R3 120
      789 SETTABLEKS                       R3 R2 K265 ["ParallelRampPart"]
      791 LOADN                            R3 120
      792 SETTABLEKS                       R3 R2 K266 ["RightAngleRampPart"]
      794 LOADN                            R3 120
      795 SETTABLEKS                       R3 R2 K267 ["CornerWedgePart"]
      797 LOADN                            R3 130
      798 SETTABLEKS                       R3 R2 K268 ["PlayerGui"]
      800 LOADN                            R3 130
      801 SETTABLEKS                       R3 R2 K269 ["PlayerScripts"]
      803 LOADN                            R3 130
      804 SETTABLEKS                       R3 R2 K270 ["StandalonePluginScripts"]
      806 LOADN                            R3 130
      807 SETTABLEKS                       R3 R2 K271 ["StarterPlayerScripts"]
      809 LOADN                            R3 130
      810 SETTABLEKS                       R3 R2 K272 ["StarterCharacterScripts"]
      812 LOADN                            R3 130
      813 SETTABLEKS                       R3 R2 K273 ["UIFlexItem"]
      815 LOADN                            R3 140
      816 SETTABLEKS                       R3 R2 K274 ["BodyGyro"]
      818 LOADN                            R3 140
      819 SETTABLEKS                       R3 R2 K275 ["BodyPosition"]
      821 LOADN                            R3 140
      822 SETTABLEKS                       R3 R2 K276 ["RocketPropulsion"]
      824 LOADN                            R3 140
      825 SETTABLEKS                       R3 R2 K277 ["BodyVelocity"]
      827 LOADN                            R3 140
      828 SETTABLEKS                       R3 R2 K278 ["BodyAngularVelocity"]
      830 LOADN                            R3 140
      831 SETTABLEKS                       R3 R2 K279 ["BodyForce"]
      833 LOADN                            R3 140
      834 SETTABLEKS                       R3 R2 K280 ["BodyThrust"]
      836 LOADN                            R3 140
      837 SETTABLEKS                       R3 R2 K281 ["Teams"]
      839 LOADN                            R3 140
      840 SETTABLEKS                       R3 R2 K282 ["GuiMain"]
      842 LOADN                            R3 140
      843 SETTABLEKS                       R3 R2 K283 ["ScreenGui"]
      845 LOADN                            R3 140
      846 SETTABLEKS                       R3 R2 K284 ["BillboardGui"]
      848 LOADN                            R3 140
      849 SETTABLEKS                       R3 R2 K285 ["SurfaceGuiBase"]
      851 LOADN                            R3 140
      852 SETTABLEKS                       R3 R2 K286 ["SurfaceGui"]
      854 LOADN                            R3 150
      855 SETTABLEKS                       R3 R2 K287 ["Frame"]
      857 LOADN                            R3 150
      858 SETTABLEKS                       R3 R2 K288 ["ScrollingFrame"]
      860 LOADN                            R3 160
      861 SETTABLEKS                       R3 R2 K289 ["GuiButton"]
      863 LOADN                            R3 160
      864 SETTABLEKS                       R3 R2 K290 ["ImageButton"]
      866 LOADN                            R3 170
      867 SETTABLEKS                       R3 R2 K291 ["TextButton"]
      869 LOADN                            R3 170
      870 SETTABLEKS                       R3 R2 K292 ["TextBox"]
      872 LOADN                            R3 180
      873 SETTABLEKS                       R3 R2 K293 ["ImageLabel"]
      875 LOADN                            R3 185
      876 SETTABLEKS                       R3 R2 K294 ["InputActionLabel"]
      878 LOADN                            R3 190
      879 SETTABLEKS                       R3 R2 K295 ["TextLabel"]
      881 LOADN                            R3 190
      882 SETTABLEKS                       R3 R2 K296 ["Handles"]
      884 LOADN                            R3 200
      885 SETTABLEKS                       R3 R2 K297 ["Weld"]
      887 LOADN                            R3 200
      888 SETTABLEKS                       R3 R2 K298 ["Snap"]
      890 LOADN                            R3 200
      891 SETTABLEKS                       R3 R2 K299 ["AdGui"]
      893 LOADN                            R3 200
      894 SETTABLEKS                       R3 R2 K300 ["AdPortal"]
      896 LOADN                            R3 200
      897 SETTABLEKS                       R3 R2 K301 ["JointInstance"]
      899 LOADN                            R3 200
      900 SETTABLEKS                       R3 R2 K302 ["CanvasGroup"]
      902 LOADN                            R3 200
      903 SETTABLEKS                       R3 R2 K303 ["StyleBase"]
      905 LOADN                            R3 200
      906 SETTABLEKS                       R3 R2 K304 ["StyleSheet"]
      908 LOADN                            R3 200
      909 SETTABLEKS                       R3 R2 K305 ["StyleRule"]
      911 LOADN                            R3 200
      912 SETTABLEKS                       R3 R2 K306 ["StyleLink"]
      914 LOADN                            R3 200
      915 SETTABLEKS                       R3 R2 K307 ["StyleDerive"]
      917 LOADN                            R3 200
      918 SETTABLEKS                       R3 R2 K308 ["StyleQuery"]
      920 LOADN                            R3 200
      921 SETTABLEKS                       R3 R2 K309 ["ArcHandles"]
      923 LOADN                            R3 200
      924 SETTABLEKS                       R3 R2 K310 ["Motor6D"]
      926 LOADN                            R3 205
      927 SETTABLEKS                       R3 R2 K311 ["BoxHandleAdornment"]
      929 LOADN                            R3 205
      930 SETTABLEKS                       R3 R2 K312 ["ConeHandleAdornment"]
      932 LOADN                            R3 205
      933 SETTABLEKS                       R3 R2 K313 ["CylinderHandleAdornment"]
      935 LOADN                            R3 205
      936 SETTABLEKS                       R3 R2 K314 ["SphereHandleAdornment"]
      938 LOADN                            R3 205
      939 SETTABLEKS                       R3 R2 K315 ["WireframeHandleAdornment"]
      941 LOADN                            R3 205
      942 SETTABLEKS                       R3 R2 K316 ["LineHandleAdornment"]
      944 LOADN                            R3 205
      945 SETTABLEKS                       R3 R2 K317 ["ImageHandleAdornment"]
      947 LOADN                            R3 205
      948 SETTABLEKS                       R3 R2 K318 ["PyramidHandleAdornment"]
      950 LOADN                            R3 210
      951 SETTABLEKS                       R3 R2 K319 ["SelectionBox"]
      953 LOADN                            R3 210
      954 SETTABLEKS                       R3 R2 K320 ["SelectionSphere"]
      956 LOADN                            R3 210
      957 SETTABLEKS                       R3 R2 K321 ["SurfaceSelection"]
      959 LOADN                            R3 210
      960 SETTABLEKS                       R3 R2 K322 ["PathfindingModifier"]
      962 LOADN                            R3 210
      963 SETTABLEKS                       R3 R2 K323 ["PathfindingLink"]
      965 LOADN                            R3 220
      966 SETTABLEKS                       R3 R2 K324 ["Configuration"]
      968 LOADN                            R3 220
      969 SETTABLEKS                       R3 R2 K325 ["SelectionPartLasso"]
      971 LOADN                            R3 220
      972 SETTABLEKS                       R3 R2 K326 ["SelectionPointLasso"]
      974 LOADN                            R3 220
      975 SETTABLEKS                       R3 R2 K327 ["PartPairLasso"]
      977 LOADN                            R3 220
      978 SETTABLEKS                       R3 R2 K328 ["PoseBase"]
      980 LOADN                            R3 220
      981 SETTABLEKS                       R3 R2 K329 ["Pose"]
      983 LOADN                            R3 220
      984 SETTABLEKS                       R3 R2 K330 ["NumberPose"]
      986 LOADN                            R3 220
      987 SETTABLEKS                       R3 R2 K331 ["KeyframeMarker"]
      989 LOADN                            R3 220
      990 SETTABLEKS                       R3 R2 K332 ["Keyframe"]
      992 LOADN                            R3 220
      993 SETTABLEKS                       R3 R2 K333 ["Animation"]
      995 LOADN                            R3 220
      996 SETTABLEKS                       R3 R2 K334 ["AnimationTrack"]
      998 LOADN                            R3 220
      999 SETTABLEKS                       R3 R2 K335 ["AnimationController"]
     1001 LOADN                            R3 220
     1002 SETTABLEKS                       R3 R2 K336 ["Animator"]
     1004 LOADN                            R3 220
     1005 SETTABLEKS                       R3 R2 K337 ["IKControl"]
     1007 LOADN                            R3 220
     1008 SETTABLEKS                       R3 R2 K338 ["CharacterMesh"]
     1010 LOADN                            R3 220
     1011 SETTABLEKS                       R3 R2 K339 ["Dialog"]
     1013 LOADN                            R3 220
     1014 SETTABLEKS                       R3 R2 K340 ["DialogChoice"]
     1016 LOADN                            R3 220
     1017 SETTABLEKS                       R3 R2 K341 ["HumanoidRigDescription"]
     1019 LOADN                            R3 222
     1020 SETTABLEKS                       R3 R2 K342 ["HandRigDescription"]
     1022 LOADN                            R3 240
     1023 SETTABLEKS                       R3 R2 K343 ["HopperBin"]
     1025 LOADN                            R3 500
     1026 SETTABLEKS                       R3 R2 K344 ["SoundService"]
     1028 LOADN                            R3 510
     1029 SETTABLEKS                       R3 R2 K345 ["Chat"]
     1031 LOADN                            R3 510
     1032 SETTABLEKS                       R3 R2 K346 ["ChatService"]
     1034 LOADN                            R3 511
     1035 SETTABLEKS                       R3 R2 K347 ["TextChatService"]
     1037 LOADN                            R3 520
     1038 SETTABLEKS                       R3 R2 K348 ["VoiceChatService"]
     1040 LOADN                            R3 530
     1041 SETTABLEKS                       R3 R2 K349 ["LocalizationService"]
     1043 LOADN                            R3 1000
     1044 SETTABLEKS                       R3 R2 K350 ["TestService"]
     1046 LOADN                            R3 1000
     1047 SETTABLEKS                       R3 R2 K351 ["VRService"]
     1049 DUPCLOSURE                       R3 K352 [PROTO_0]
     1050 CAPTURE                          VAL R2
     1051 RETURN                           R3 1
