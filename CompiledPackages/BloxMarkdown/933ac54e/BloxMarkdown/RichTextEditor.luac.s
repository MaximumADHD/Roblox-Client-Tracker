PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R1 K0 [" \n  \n "]
        1 SETTABLEKS                       R1 R0 K1 ["Text"]
        3 LOADN                            R1 4
        4 SETTABLEKS                       R1 R0 K2 ["CursorPosition"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+10]
        7 JUMPIFNOT                        R2 ; [+9]
        8 LOADK                            R3 K0 [" \n  \n "]
        9 SETTABLEKS                       R3 R2 K1 ["Text"]
       11 LOADN                            R3 4
       12 SETTABLEKS                       R3 R2 K2 ["CursorPosition"]
       14 NAMECALL                         R3 R2 K3 ["CaptureFocus"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [" \n  \n "]
        2 SETTABLEKS                       R1 R0 K1 ["Text"]
        4 LOADN                            R1 4
        5 SETTABLEKS                       R1 R0 K2 ["CursorPosition"]
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 JUMPIFNOTEQKS                    R0 K1 [" \n  \n "] ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K4 [task.defer]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 CALL                             R1 1 1
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 3
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K5 ["preferredColumn"]
       20 GETUPVAL                         R2 3
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K6 ["preferredFlatOffset"]
       24 LENGTH                           R2 R0
       25 LOADN                            R3 6
       26 JUMPIFNOTLT                      R2 R3 ; [+12]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K7 ["handleBackspace"]
       31 MOVE                             R3 R1
       32 GETUPVAL                         R4 5
       33 GETUPVAL                         R5 6
       34 GETUPVAL                         R6 7
       35 GETUPVAL                         R7 8
       36 GETUPVAL                         R8 1
       37 CALL                             R2 6 0
       38 RETURN                           R0 0
       39 LOADN                            R2 0
       40 LOADK                            R5 K8 ["\n"]
       41 NAMECALL                         R3 R0 K9 ["gmatch"]
       43 CALL                             R3 2 3
       44 FORGPREP                         R3
       45 ADDK                             R2 R2 K10 [1]
       46 FORGLOOP                         R3 1 ; [-2]
       48 LOADN                            R3 2
       49 JUMPIFNOTLT                      R3 R2 ; [+12]
       51 GETUPVAL                         R3 4
       52 GETTABLEKS                       R3 R3 K11 ["handleEnter"]
       54 MOVE                             R4 R1
       55 GETUPVAL                         R5 5
       56 GETUPVAL                         R6 6
       57 GETUPVAL                         R7 7
       58 GETUPVAL                         R8 8
       59 GETUPVAL                         R9 1
       60 CALL                             R3 6 0
       61 RETURN                           R0 0
       62 GETIMPORT                        R3 K14 [string.split]
       64 MOVE                             R4 R0
       65 LOADK                            R5 K8 ["\n"]
       66 CALL                             R3 2 1
       67 GETTABLEN                        R5 R3 2
       68 ORK                              R4 R5 K15 [""]
       69 LOADN                            R7 2
       70 LENGTH                           R9 R4
       71 SUBK                             R8 R9 K10 [1]
       72 NAMECALL                         R5 R4 K16 ["sub"]
       74 CALL                             R5 3 1
       75 JUMPIFNOTEQKS                    R5 K15 [""] ; [+2]
       77 RETURN                           R0 0
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R6 R6 K17 ["handleTextInput"]
       81 MOVE                             R7 R5
       82 MOVE                             R8 R1
       83 GETUPVAL                         R9 5
       84 GETUPVAL                         R10 6
       85 GETUPVAL                         R11 7
       86 GETUPVAL                         R12 8
       87 GETUPVAL                         R13 1
       88 CALL                             R6 7 0
       89 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 4
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 JUMPIFEQKS                       R0 K1 [" \n  \n "] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["CursorPosition"]
        9 JUMPIFEQKN                       R0 K3 [-1] ; [+3]
       11 JUMPIFNOTEQKN                    R0 K4 [4] ; [+2]
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K7 [task.defer]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 2
       21 CALL                             R1 1 1
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 JUMPIFNOTEQKN                    R0 K8 [3] ; [+18]
       26 GETUPVAL                         R2 3
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K9 ["preferredColumn"]
       30 GETUPVAL                         R2 3
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K10 ["preferredFlatOffset"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K11 ["handleArrowLeft"]
       37 MOVE                             R3 R1
       38 GETUPVAL                         R4 5
       39 GETUPVAL                         R5 6
       40 GETUPVAL                         R6 1
       41 CALL                             R2 4 0
       42 RETURN                           R0 0
       43 JUMPIFNOTEQKN                    R0 K12 [5] ; [+18]
       45 GETUPVAL                         R2 3
       46 LOADNIL                          R3
       47 SETTABLEKS                       R3 R2 K9 ["preferredColumn"]
       49 GETUPVAL                         R2 3
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K10 ["preferredFlatOffset"]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K13 ["handleArrowRight"]
       56 MOVE                             R3 R1
       57 GETUPVAL                         R4 5
       58 GETUPVAL                         R5 6
       59 GETUPVAL                         R6 1
       60 CALL                             R2 4 0
       61 RETURN                           R0 0
       62 LOADN                            R2 4
       63 JUMPIFNOTLT                      R0 R2 ; [+11]
       65 GETUPVAL                         R2 4
       66 GETTABLEKS                       R2 R2 K14 ["handleArrowUp"]
       68 MOVE                             R3 R1
       69 GETUPVAL                         R4 5
       70 GETUPVAL                         R5 6
       71 GETUPVAL                         R6 1
       72 GETUPVAL                         R7 3
       73 CALL                             R2 5 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R2 4
       76 GETTABLEKS                       R2 R2 K15 ["handleArrowDown"]
       78 MOVE                             R3 R1
       79 GETUPVAL                         R4 5
       80 GETUPVAL                         R5 6
       81 GETUPVAL                         R6 1
       82 GETUPVAL                         R7 3
       83 CALL                             R2 5 0
       84 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["editable"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADK                            R4 K1 ["Text"]
       12 NAMECALL                         R2 R1 K2 ["GetPropertyChangedSignal"]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 NAMECALL                         R2 R2 K3 ["Connect"]
       27 CALL                             R2 2 1
       28 LOADK                            R5 K4 ["CursorPosition"]
       29 NAMECALL                         R3 R1 K2 ["GetPropertyChangedSignal"]
       31 CALL                             R3 2 1
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U8
       40 NAMECALL                         R3 R3 K3 ["Connect"]
       42 CALL                             R3 2 1
       43 GETTABLEKS                       R4 R1 K5 ["FocusLost"]
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          UPVAL U8
       47 NAMECALL                         R4 R4 K3 ["Connect"]
       49 CALL                             R4 2 1
       50 NEWCLOSURE                       R5 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 RETURN                           R5 1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R3
        6 GETTABLEKS                       R5 R1 K1 ["createStore"]
        8 GETUPVAL                         R6 0
        9 CALL                             R5 1 2
       10 GETTABLEKS                       R7 R1 K2 ["createSignal"]
       12 LOADNIL                          R8
       13 CALL                             R7 1 2
       14 GETTABLEKS                       R9 R1 K3 ["createRef"]
       16 LOADK                            R10 K4 ["hiddenInput"]
       17 CALL                             R9 1 1
       18 DUPTABLE                         R10 K15 [{["getSelection"], ["setSelection"], ["updateBlocks"], ["blockStore"], ["nextIndex"], ["layoutRegistry"], ["itemLayoutRegistry"], ["preferredColumn"] = , ["preferredFlatOffset"] = }]
       19 SETTABLEKS                       R7 R10 K5 ["getSelection"]
       21 SETTABLEKS                       R8 R10 K6 ["setSelection"]
       23 SETTABLEKS                       R6 R10 K7 ["updateBlocks"]
       25 SETTABLEKS                       R5 R10 K8 ["blockStore"]
       27 SETTABLEKS                       R4 R10 K9 ["nextIndex"]
       29 NEWTABLE                         R11 0 0
       31 SETTABLEKS                       R11 R10 K10 ["layoutRegistry"]
       33 NEWTABLE                         R11 0 0
       35 SETTABLEKS                       R11 R10 K11 ["itemLayoutRegistry"]
       37 DUPCLOSURE                       R11 K16 [PROTO_2]
       38 GETTABLEKS                       R12 R1 K17 ["createEffect"]
       40 NEWCLOSURE                       R13 P2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R9
       44 LOADK                            R14 K18 ["focus-on-select"]
       45 CALL                             R12 2 0
       46 GETTABLEKS                       R12 R1 K17 ["createEffect"]
       48 NEWCLOSURE                       R13 P3
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R10
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 LOADK                            R14 K19 ["input-handler"]
       60 CALL                             R12 2 0
       61 DUPTABLE                         R12 K22 [{"blocks", "editorCtx"}]
       62 SETTABLEKS                       R5 R12 K20 ["blocks"]
       64 SETTABLEKS                       R10 R12 K21 ["editorCtx"]
       66 CLOSEUPVALS                      R3
       67 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K4 ["Parent"]
       22 GETTABLEKS                       R5 R5 K9 ["EditorState"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K4 ["Parent"]
       31 GETTABLEKS                       R6 R6 K10 ["EditorOperations"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R7 R7 K4 ["Parent"]
       40 GETTABLEKS                       R7 R7 K11 ["MarkdownParser"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R2 K12 ["template"]
       45 GETTABLEKS                       R8 R2 K13 ["ScrollingFrame"]
       47 GETTABLEKS                       R9 R2 K14 ["TextBox"]
       49 GETTABLEKS                       R10 R2 K15 ["For"]
       51 GETIMPORT                        R11 K6 [require]
       53 GETIMPORT                        R12 K1 [script]
       55 GETTABLEKS                       R12 R12 K4 ["Parent"]
       57 GETTABLEKS                       R12 R12 K16 ["MarkdownBlock"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETIMPORT                        R13 K1 [script]
       64 GETTABLEKS                       R13 R13 K4 ["Parent"]
       66 GETTABLEKS                       R13 R13 K17 ["MarkdownStyles"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R6 K18 ["parse"]
       71 LOADK                            R14 K19 ["## 1. VEHICLE SYSTEMS\n\n### Vehicle Controller (Server Script)\n- **VehicleSeat-based kart**: Uses Roblox's built-in VehicleSeat for physics\n- **Custom handling**: Tune MaxSpeed, TurnSpeed, Torque for arcade-style drift physics\n- **Character attachment**: Players sit in the kart, camera follows smoothly\n\n### Kart Model Structure\n```\nKartModel/\n├── VehicleSeat (driver seat)\n├── Body (MeshPart - low-poly kart body)\n├── Wheels (4 MeshParts with wheel meshes)\n├── DriverSpawn (Attachment for character position)\n└── Hitbox (invisible Part for collisions)\n```\n\n### Driving Physics\n- **Acceleration**: Hold W/Up to accelerate\n- **Steering**: A/D or Left/Right for turning\n- **Drift mechanic**: Hold Space while turning for drift boost (optional advanced feature)\n- **Gravity/Flight**: Karts maintain momentum through jumps\n\n---\n\n## 2. TRACK SYSTEM\n\n### Track Layout\n- **Start/Finish line**: Trigger zone for lap counting\n- **Checkpoint system**: 6-8 checkpoints around the track to prevent cheating\n- **Track mesh**: Low-poly stylized road surface with clear boundaries\n\n### Track Features\n\n**Boost Pads**\n- Glowing arrow panels on the track\n- On touch: Apply velocity boost to kart (1.5x speed for 2 seconds)\n- Visual: Bright neon color with particle effects\n\n**Jump Ramps**\n- Inclined ramps that launch karts into the air\n- Physics-based trajectory\n- Landing zones marked for smooth recovery\n\n**Obstacles**\n- Moving barriers (pendulums, rotating blocks)\n- Static hazards (oil slicks that slow down, walls)\n- Environmental hazards (lava, water pits = respawn)\n\n**Shortcuts**\n- Hidden paths requiring skill to access\n- Risk/reward design (faster but dangerous)\n\n---\n\n## 3. POWER-UP SYSTEM\n\n### Power-Up Types\n1. **Speed Mushroom** (Speed Boost)\n   - 2x speed for 3 seconds\n   - Visual: Speed lines effect, engine sound\n   - Pickup: Glowing mushroom model\n\n2. **Blue Shell** (Offensive - Homing)\n   - Targets the player in 1st place\n   - Explodes on contact, flips their kart\n   - Pickup: Glowing shell model\n\n### Power-Up Mechanics\n- **Item Boxes**: Floating question-mark boxes on track\n- **Item Roulette**: Brief random spin when collected (visual feedback)\n- **Activation**: Press E or click to use held item\n- **Cooldown**: 5 seconds between item pickups\n\n---\n\n## 4. RACE MANAGEMENT SYSTEM\n\n### Race Flow\n1. **Lobby**: Players spawn in waiting area\n2. **Countdown**: 3-2-1-GO with UI overlay\n3. **Racing**: Players complete 3 laps\n4. **Finish**: Results screen with positions\n\n### Lap Counting\n- Server tracks each player's current lap\n- Checkpoint validation (must pass all in order)\n- Lap counter UI updates in real-time\n\n### Position Tracking\n- Calculate race position based on:\n  - Current lap\n  - Last checkpoint passed\n  - Distance to next checkpoint\n- Update positions every 0.5 seconds\n\n---\n\n## 5. UI SYSTEM\n\n### In-Race HUD\n- **Speedometer**: Current speed as percentage\n- **Lap Counter**: \"Lap 2/3\" display\n- **Position**: \"1st\", \"2nd\", etc.\n- **Item Slot**: Shows currently held power-up\n- **Minimap**: Optional - shows track outline and player positions\n\n### Race Start/End Screens\n- Countdown overlay (3, 2, 1, GO!)\n- Results screen with final positions\n- \"Play Again\" button\n\n---\n\n## 6. VISUAL STYLE\n\n### Low-Poly Aesthetic\n- **Karts**: Smooth, rounded meshes with vibrant colors\n- **Track**: Clean geometry, bright color palette\n- **Power-ups**: Glowing, animated pickups\n- **Effects**: Particle systems for boosts, explosions\n\n### Color Palette\n- Karts: Red, Blue, Green, Yellow (player colors)\n- Track: Gray road, green grass, blue sky\n- Boost pads: Bright orange/yellow\n- Power-ups: Purple (mushroom), Blue (shell)\n\n---\n\n## 7. AUDIO\n\n### Sound Effects\n- Engine hum (looping, pitch varies with speed)\n- Boost activation whoosh\n- Item pickup jingle\n- Collision/impact sounds\n- Countdown beeps\n- Finish fanfare\n\n---\n\n## 8. FILE STRUCTURE\n\n```\nServerScriptService/\n├── RaceManager (Script) - Handles race flow, lap counting, positions\n├── PowerUpManager (Script) - Manages power-up spawning and effects\n└── CheckpointManager (Script) - Validates checkpoint progression\n\nReplicatedStorage/\n├── RaceEvents (RemoteEvent) - Client-server communication\n├── PowerUpModels (Folder) - Power-up visual templates\n└── KartModels (Folder) - Kart model templates\n\nStarterGui/\n└── RaceUI (ScreenGui) - All race interface elements\n\nStarterPlayerScripts/\n└── KartController (LocalScript) - Client-side kart controls, camera\n\nWorkspace/\n├── RaceTrack (Model) - Complete track with all features\n├── SpawnArea (Model) - Lobby/waiting area\n└── ItemBoxes (Folder) - Power-up pickup locations\n```\n\n---\n\n## 9. IMPLEMENTATION PHASES\n\n### Phase 1: Core Racing\n- Build basic kart model with VehicleSeat\n- Create simple oval track\n- Implement driving controls\n- Add camera follow system\n\n### Phase 2: Track Features\n- Add boost pads with velocity boost\n- Create jump ramps\n- Add obstacles (moving barriers)\n- Implement checkpoint system\n\n### Phase 3: Power-Ups\n- Create item box pickups\n- Implement speed boost power-up\n- Implement homing shell power-up\n- Add item UI and activation\n\n### Phase 4: Race Management\n- Build lap counting system\n- Add position tracking\n- Create countdown sequence\n- Build results screen\n\n### Phase 5: Polish\n- Add sound effects\n- Polish visuals and effects\n- Test and balance gameplay\n- Add multiple kart colors\n\n---\n\n## 10. KEY TECHNICAL CONSIDERATIONS\n\n### Performance\n- Use server-side physics for fair racing\n- Optimize track with reasonable part count\n- Limit power-up effects to prevent lag\n\n### Anti-Cheat\n- Server validates all checkpoint passes\n- Server controls lap counting\n- Validate power-up usage on server\n\n### Player Experience\n- Clear visual feedback for all interactions\n- Forgiving track boundaries\n- Smooth respawn after falling off track\n"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R13 R13 K20 ["children"]
       75 MOVE                             R14 R7
       76 LOADK                            R15 K21 ["RichTextEditor"]
       77 DUPTABLE                         R16 K24 [{["editable"] = True}]
       78 NEWTABLE                         R17 0 2
       80 MOVE                             R18 R8
       81 NEWTABLE                         R19 8 2
       83 LOADK                            R22 K25 ["EditorRoot"]
       84 SETTABLEKS                       R22 R19 K26 ["Name"]
       86 LOADK                            R22 K27 ["md-root"]
       87 SETTABLEKS                       R22 R19 K28 ["Tags"]
       89 GETIMPORT                        R22 K31 [UDim2.new]
       91 LOADN                            R23 1
       92 LOADN                            R24 0
       93 LOADN                            R25 1
       94 LOADN                            R26 0
       95 CALL                             R22 4 1
       96 SETTABLEKS                       R22 R19 K32 ["Size"]
       98 GETIMPORT                        R22 K36 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R22 R19 K37 ["AutomaticCanvasSize"]
      102 GETIMPORT                        R22 K31 [UDim2.new]
      104 LOADN                            R23 0
      105 LOADN                            R24 0
      106 LOADN                            R25 0
      107 LOADN                            R26 0
      108 CALL                             R22 4 1
      109 SETTABLEKS                       R22 R19 K38 ["CanvasSize"]
      111 GETIMPORT                        R22 K40 [Enum.ScrollingDirection.Y]
      113 SETTABLEKS                       R22 R19 K39 ["ScrollingDirection"]
      115 LOADN                            R22 1
      116 SETTABLEKS                       R22 R19 K41 ["LayoutOrder"]
      118 MOVE                             R20 R10
      119 DUPTABLE                         R21 K45 [{"items", "keyBy", "Each"}]
      120 MOVE                             R22 R3
      121 LOADK                            R23 K46 ["blocks"]
      122 CALL                             R22 1 1
      123 SETTABLEKS                       R22 R21 K42 ["items"]
      125 DUPCLOSURE                       R22 K47 [PROTO_0]
      126 SETTABLEKS                       R22 R21 K43 ["keyBy"]
      128 MOVE                             R22 R7
      129 NEWTABLE                         R23 0 2
      131 LOADK                            R24 K48 ["idx"]
      132 LOADK                            R25 K49 ["block"]
      133 SETLIST                          R23 R24 2 [1]
      135 NEWTABLE                         R24 0 1
      137 MOVE                             R25 R11
      138 DUPTABLE                         R26 K55 [{["node"], ["theme"] = "Dark", ["editorCtx"], ["blockIndex"], ["LayoutOrder"]}]
      139 MOVE                             R27 R3
      140 LOADK                            R28 K49 ["block"]
      141 CALL                             R27 1 1
      142 SETTABLEKS                       R27 R26 K50 ["node"]
      144 MOVE                             R27 R3
      145 LOADK                            R28 K53 ["editorCtx"]
      146 CALL                             R27 1 1
      147 SETTABLEKS                       R27 R26 K53 ["editorCtx"]
      149 MOVE                             R27 R3
      150 LOADK                            R28 K48 ["idx"]
      151 CALL                             R27 1 1
      152 SETTABLEKS                       R27 R26 K54 ["blockIndex"]
      154 MOVE                             R27 R3
      155 LOADK                            R28 K48 ["idx"]
      156 CALL                             R27 1 1
      157 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      159 CALL                             R25 1 -1
      160 SETLIST                          R24 R25 -1 [1]
      162 CALL                             R22 2 1
      163 SETTABLEKS                       R22 R21 K44 ["Each"]
      165 CALL                             R20 1 1
      166 MOVE                             R21 R9
      167 DUPTABLE                         R22 K70 [{["Name"] = "HiddenInput", ["ref"] = "hiddenInput", ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextTransparency"] = 1, ["Text"] = " \n  \n ", ["ClearTextOnFocus"] = False, ["MultiLine"] = True, ["ZIndex"] = -1}]
      168 GETIMPORT                        R23 K72 [UDim2.fromOffset]
      170 LOADN                            R24 1
      171 LOADN                            R25 1
      172 CALL                             R23 2 1
      173 SETTABLEKS                       R23 R22 K32 ["Size"]
      175 GETIMPORT                        R23 K72 [UDim2.fromOffset]
      177 LOADN                            R24 -100
      178 LOADN                            R25 -100
      179 CALL                             R23 2 1
      180 SETTABLEKS                       R23 R22 K59 ["Position"]
      182 CALL                             R21 1 -1
      183 SETLIST                          R19 R20 -1 [1]
      185 CALL                             R18 1 1
      186 MOVE                             R19 R12
      187 DUPTABLE                         R20 K73 [{["theme"] = "Dark"}]
      188 CALL                             R19 1 -1
      189 SETLIST                          R17 R18 -1 [1]
      191 DUPCLOSURE                       R18 K74 [PROTO_11]
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R5
      194 CALL                             R14 4 1
      195 RETURN                           R14 1
