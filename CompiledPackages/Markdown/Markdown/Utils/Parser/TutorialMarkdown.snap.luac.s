MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"children", "name", "offset"}]
  NEWTABLE R1 0 4
  DUPTABLE R2 K6 [{"attributes", "name", "offset", "text"}]
  DUPTABLE R3 K10 [{"difficulty", "summary", "title"}]
  LOADK R4 K11 ["Intermediate"]
  SETTABLEKS R4 R3 K7 ["difficulty"]
  LOADK R4 K12 ["Create a laser beam special effect that sets the player's health to zero on collision."]
  SETTABLEKS R4 R3 K8 ["summary"]
  LOADK R4 K13 ["Creating Laser Beams"]
  SETTABLEKS R4 R3 K9 ["title"]
  SETTABLEKS R3 R2 K4 ["attributes"]
  LOADK R3 K14 ["TAG"]
  SETTABLEKS R3 R2 K1 ["name"]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["offset"]
  LOADK R3 K15 ["TutorialInfo"]
  SETTABLEKS R3 R2 K5 ["text"]
  DUPTABLE R3 K16 [{"children", "name", "offset", "text"}]
  NEWTABLE R4 0 10
  DUPTABLE R5 K18 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R6 K20 [{"depth"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K19 ["depth"]
  SETTABLEKS R6 R5 K4 ["attributes"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K21 [{"name", "offset", "text"}]
  LOADK R8 K22 ["TEXT"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 188
  SETTABLEKS R8 R7 K2 ["offset"]
  LOADK R8 K13 ["Creating Laser Beams"]
  SETTABLEKS R8 R7 K5 ["text"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K0 ["children"]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["isBlock"]
  LOADK R6 K23 ["HEADING"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 186
  SETTABLEKS R6 R5 K2 ["offset"]
  DUPTABLE R6 K3 [{"children", "name", "offset"}]
  NEWTABLE R7 0 1
  DUPTABLE R8 K25 [{"name", "offset", "text", "url"}]
  LOADK R9 K26 ["IMAGE"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 211
  SETTABLEKS R9 R8 K2 ["offset"]
  LOADK R9 K27 ["header-image-or-video"]
  SETTABLEKS R9 R8 K5 ["text"]
  LOADK R9 K28 ["rbxassetid://0000000"]
  SETTABLEKS R9 R8 K24 ["url"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K0 ["children"]
  LOADK R7 K29 ["PARAGRAPH"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 210
  SETTABLEKS R7 R6 K2 ["offset"]
  DUPTABLE R7 K3 [{"children", "name", "offset"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K21 [{"name", "offset", "text"}]
  LOADK R10 K22 ["TEXT"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 2
  SETTABLEKS R10 R9 K2 ["offset"]
  LOADK R10 K30 ["This tutorial shows you how to create a laser beam special effect with an optional script to set the player's health to zero on collision."]
  SETTABLEKS R10 R9 K5 ["text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K0 ["children"]
  LOADK R8 K29 ["PARAGRAPH"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 2
  SETTABLEKS R8 R7 K2 ["offset"]
  DUPTABLE R8 K18 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R9 K20 [{"depth"}]
  LOADN R10 3
  SETTABLEKS R10 R9 K19 ["depth"]
  SETTABLEKS R9 R8 K4 ["attributes"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K21 [{"name", "offset", "text"}]
  LOADK R11 K22 ["TEXT"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 146
  SETTABLEKS R11 R10 K2 ["offset"]
  LOADK R11 K31 ["Topics"]
  SETTABLEKS R11 R10 K5 ["text"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K0 ["children"]
  LOADB R9 1
  SETTABLEKS R9 R8 K17 ["isBlock"]
  LOADK R9 K23 ["HEADING"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 142
  SETTABLEKS R9 R8 K2 ["offset"]
  DUPTABLE R9 K3 [{"children", "name", "offset"}]
  NEWTABLE R10 0 1
  DUPTABLE R11 K21 [{"name", "offset", "text"}]
  LOADK R12 K22 ["TEXT"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 154
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K32 ["Setting up an invisible collision box that detects when a player collides with the laser beam."]
  SETTABLEKS R12 R11 K5 ["text"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K0 ["children"]
  LOADK R10 K29 ["PARAGRAPH"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 154
  SETTABLEKS R10 R9 K2 ["offset"]
  DUPTABLE R10 K3 [{"children", "name", "offset"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K21 [{"name", "offset", "text"}]
  LOADK R13 K22 ["TEXT"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 250
  SETTABLEKS R13 R12 K2 ["offset"]
  LOADK R13 K33 ["Configuring attachments that represent the reach of the laser beam's emission."]
  SETTABLEKS R13 R12 K5 ["text"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADK R11 K29 ["PARAGRAPH"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 250
  SETTABLEKS R11 R10 K2 ["offset"]
  DUPTABLE R11 K3 [{"children", "name", "offset"}]
  NEWTABLE R12 0 1
  DUPTABLE R13 K21 [{"name", "offset", "text"}]
  LOADK R14 K22 ["TEXT"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 74
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K34 ["Customizing a beam that emulates the visual characteristics of a futuristic laser beam."]
  SETTABLEKS R14 R13 K5 ["text"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADK R12 K29 ["PARAGRAPH"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 74
  SETTABLEKS R12 R11 K2 ["offset"]
  DUPTABLE R12 K3 [{"children", "name", "offset"}]
  NEWTABLE R13 0 1
  DUPTABLE R14 K21 [{"name", "offset", "text"}]
  LOADK R15 K22 ["TEXT"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 163
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K35 ["Scripting behavior for the collision box that damages the player's character."]
  SETTABLEKS R15 R14 K5 ["text"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K0 ["children"]
  LOADK R13 K29 ["PARAGRAPH"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 163
  SETTABLEKS R13 R12 K2 ["offset"]
  DUPTABLE R13 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R14 K39 [{"action", "target"}]
  LOADK R15 K40 ["select"]
  SETTABLEKS R15 R14 K37 ["action"]
  LOADK R15 K41 ["Workspace.LaserBeamBlaster"]
  SETTABLEKS R15 R14 K38 ["target"]
  SETTABLEKS R14 R13 K4 ["attributes"]
  NEWTABLE R14 0 1
  DUPTABLE R15 K3 [{"children", "name", "offset"}]
  NEWTABLE R16 0 2
  DUPTABLE R17 K25 [{"name", "offset", "text", "url"}]
  LOADK R18 K26 ["IMAGE"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 53
  SETTABLEKS R18 R17 K2 ["offset"]
  LOADK R18 K42 ["explore-icon"]
  SETTABLEKS R18 R17 K5 ["text"]
  LOADK R18 K43 ["rbxassetid://00000"]
  SETTABLEKS R18 R17 K24 ["url"]
  DUPTABLE R18 K21 [{"name", "offset", "text"}]
  LOADK R19 K22 ["TEXT"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 88
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K44 [" Explore the Workspace"]
  SETTABLEKS R19 R18 K5 ["text"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K29 ["PARAGRAPH"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 53
  SETTABLEKS R16 R15 K2 ["offset"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K14 ["TAG"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 243
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K45 ["ActionButton"]
  SETTABLEKS R14 R13 K5 ["text"]
  DUPTABLE R14 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R15 K46 [{"action"}]
  LOADK R16 K47 ["playtest"]
  SETTABLEKS R16 R15 K37 ["action"]
  SETTABLEKS R15 R14 K4 ["attributes"]
  NEWTABLE R15 0 1
  DUPTABLE R16 K3 [{"children", "name", "offset"}]
  NEWTABLE R17 0 2
  DUPTABLE R18 K25 [{"name", "offset", "text", "url"}]
  LOADK R19 K26 ["IMAGE"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 159
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K48 ["play-icon"]
  SETTABLEKS R19 R18 K5 ["text"]
  LOADK R19 K43 ["rbxassetid://00000"]
  SETTABLEKS R19 R18 K24 ["url"]
  DUPTABLE R19 K21 [{"name", "offset", "text"}]
  LOADK R20 K22 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 191
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K49 [" Playtest the demo"]
  SETTABLEKS R20 R19 K5 ["text"]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K29 ["PARAGRAPH"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 159
  SETTABLEKS R17 R16 K2 ["offset"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K0 ["children"]
  LOADK R15 K14 ["TAG"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 127
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K45 ["ActionButton"]
  SETTABLEKS R15 R14 K5 ["text"]
  SETLIST R4 R5 10 [1]
  SETTABLEKS R4 R3 K0 ["children"]
  LOADK R4 K14 ["TAG"]
  SETTABLEKS R4 R3 K1 ["name"]
  LOADN R4 171
  SETTABLEKS R4 R3 K2 ["offset"]
  LOADK R4 K50 ["TutorialHome"]
  SETTABLEKS R4 R3 K5 ["text"]
  DUPTABLE R4 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R5 K51 [{"title"}]
  LOADK R6 K52 ["Add the Model from the Project Files"]
  SETTABLEKS R6 R5 K9 ["title"]
  SETTABLEKS R5 R4 K4 ["attributes"]
  NEWTABLE R5 0 7
  DUPTABLE R6 K18 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R7 K20 [{"depth"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K19 ["depth"]
  SETTABLEKS R7 R6 K4 ["attributes"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K21 [{"name", "offset", "text"}]
  LOADK R9 K22 ["TEXT"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 53
  SETTABLEKS R9 R8 K2 ["offset"]
  LOADK R9 K52 ["Add the Model from the Project Files"]
  SETTABLEKS R9 R8 K5 ["text"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K0 ["children"]
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["isBlock"]
  LOADK R7 K23 ["HEADING"]
  SETTABLEKS R7 R6 K1 ["name"]
  LOADN R7 50
  SETTABLEKS R7 R6 K2 ["offset"]
  DUPTABLE R7 K3 [{"children", "name", "offset"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K25 [{"name", "offset", "text", "url"}]
  LOADK R10 K26 ["IMAGE"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 92
  SETTABLEKS R10 R9 K2 ["offset"]
  LOADK R10 K53 ["header-image"]
  SETTABLEKS R10 R9 K5 ["text"]
  LOADK R10 K28 ["rbxassetid://0000000"]
  SETTABLEKS R10 R9 K24 ["url"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K0 ["children"]
  LOADK R8 K29 ["PARAGRAPH"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 91
  SETTABLEKS R8 R7 K2 ["offset"]
  DUPTABLE R8 K3 [{"children", "name", "offset"}]
  NEWTABLE R9 0 1
  DUPTABLE R10 K21 [{"name", "offset", "text"}]
  LOADK R11 K22 ["TEXT"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 130
  SETTABLEKS R11 R10 K2 ["offset"]
  LOADK R11 K54 ["Let's get the laser blaster model we'll be using today into our Workspace to get started."]
  SETTABLEKS R11 R10 K5 ["text"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K0 ["children"]
  LOADK R9 K29 ["PARAGRAPH"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 130
  SETTABLEKS R9 R8 K2 ["offset"]
  DUPTABLE R9 K18 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R10 K20 [{"depth"}]
  LOADN R11 3
  SETTABLEKS R11 R10 K19 ["depth"]
  SETTABLEKS R10 R9 K4 ["attributes"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K21 [{"name", "offset", "text"}]
  LOADK R12 K22 ["TEXT"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 225
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K55 ["Steps"]
  SETTABLEKS R12 R11 K5 ["text"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K0 ["children"]
  LOADB R10 1
  SETTABLEKS R10 R9 K17 ["isBlock"]
  LOADK R10 K23 ["HEADING"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 221
  SETTABLEKS R10 R9 K2 ["offset"]
  DUPTABLE R10 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R11 K58 [{"instance", "type"}]
  LOADK R12 K59 ["ReplicatedStorage.TutorialFiles.LaserBeamBlaster"]
  SETTABLEKS R12 R11 K56 ["instance"]
  LOADK R12 K60 ["instanceSelect"]
  SETTABLEKS R12 R11 K57 ["type"]
  SETTABLEKS R11 R10 K4 ["attributes"]
  NEWTABLE R11 0 5
  DUPTABLE R12 K3 [{"children", "name", "offset"}]
  NEWTABLE R13 0 1
  DUPTABLE R14 K21 [{"name", "offset", "text"}]
  LOADK R15 K22 ["TEXT"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 66
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K61 ["Find the "]
  SETTABLEKS R15 R14 K5 ["text"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K0 ["children"]
  LOADK R13 K29 ["PARAGRAPH"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 66
  SETTABLEKS R13 R12 K2 ["offset"]
  DUPTABLE R13 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R14 K39 [{"action", "target"}]
  LOADK R15 K62 ["highlight"]
  SETTABLEKS R15 R14 K37 ["action"]
  LOADK R15 K59 ["ReplicatedStorage.TutorialFiles.LaserBeamBlaster"]
  SETTABLEKS R15 R14 K38 ["target"]
  SETTABLEKS R14 R13 K4 ["attributes"]
  NEWTABLE R14 0 1
  DUPTABLE R15 K3 [{"children", "name", "offset"}]
  NEWTABLE R16 0 2
  DUPTABLE R17 K25 [{"name", "offset", "text", "url"}]
  LOADK R18 K26 ["IMAGE"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 167
  SETTABLEKS R18 R17 K2 ["offset"]
  LOADK R18 K63 ["model-icon"]
  SETTABLEKS R18 R17 K5 ["text"]
  LOADK R18 K43 ["rbxassetid://00000"]
  SETTABLEKS R18 R17 K24 ["url"]
  DUPTABLE R18 K21 [{"name", "offset", "text"}]
  LOADK R19 K22 ["TEXT"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 200
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K64 [" Laser Beam Blaster"]
  SETTABLEKS R19 R18 K5 ["text"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K29 ["PARAGRAPH"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 167
  SETTABLEKS R16 R15 K2 ["offset"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K14 ["TAG"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 76
  SETTABLEKS R14 R13 K2 ["offset"]
  LOADK R14 K45 ["ActionButton"]
  SETTABLEKS R14 R13 K5 ["text"]
  DUPTABLE R14 K3 [{"children", "name", "offset"}]
  NEWTABLE R15 0 1
  DUPTABLE R16 K21 [{"name", "offset", "text"}]
  LOADK R17 K22 ["TEXT"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 234
  SETTABLEKS R17 R16 K2 ["offset"]
  LOADK R17 K65 [" in your "]
  SETTABLEKS R17 R16 K5 ["text"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K0 ["children"]
  LOADK R15 K29 ["PARAGRAPH"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 234
  SETTABLEKS R15 R14 K2 ["offset"]
  DUPTABLE R15 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R16 K39 [{"action", "target"}]
  LOADK R17 K62 ["highlight"]
  SETTABLEKS R17 R16 K37 ["action"]
  LOADK R17 K66 ["ReplicatedStorage.TutorialFiles"]
  SETTABLEKS R17 R16 K38 ["target"]
  SETTABLEKS R16 R15 K4 ["attributes"]
  NEWTABLE R16 0 1
  DUPTABLE R17 K3 [{"children", "name", "offset"}]
  NEWTABLE R18 0 2
  DUPTABLE R19 K25 [{"name", "offset", "text", "url"}]
  LOADK R20 K26 ["IMAGE"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 61
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K67 ["folder-icon"]
  SETTABLEKS R20 R19 K5 ["text"]
  LOADK R20 K43 ["rbxassetid://00000"]
  SETTABLEKS R20 R19 K24 ["url"]
  DUPTABLE R20 K21 [{"name", "offset", "text"}]
  LOADK R21 K22 ["TEXT"]
  SETTABLEKS R21 R20 K1 ["name"]
  LOADN R21 95
  SETTABLEKS R21 R20 K2 ["offset"]
  LOADK R21 K68 [" project files"]
  SETTABLEKS R21 R20 K5 ["text"]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R17 K0 ["children"]
  LOADK R18 K29 ["PARAGRAPH"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 61
  SETTABLEKS R18 R17 K2 ["offset"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K14 ["TAG"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 243
  SETTABLEKS R16 R15 K2 ["offset"]
  LOADK R16 K45 ["ActionButton"]
  SETTABLEKS R16 R15 K5 ["text"]
  DUPTABLE R16 K3 [{"children", "name", "offset"}]
  NEWTABLE R17 0 1
  DUPTABLE R18 K21 [{"name", "offset", "text"}]
  LOADK R19 K22 ["TEXT"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 124
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K69 ["."]
  SETTABLEKS R19 R18 K5 ["text"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K29 ["PARAGRAPH"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 124
  SETTABLEKS R17 R16 K2 ["offset"]
  SETLIST R11 R12 5 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADK R11 K14 ["TAG"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 233
  SETTABLEKS R11 R10 K2 ["offset"]
  LOADK R11 K70 ["Step"]
  SETTABLEKS R11 R10 K5 ["text"]
  DUPTABLE R11 K36 [{"attributes", "children", "name", "offset", "text"}]
  NEWTABLE R12 4 0
  LOADK R13 K59 ["ReplicatedStorage.TutorialFiles.LaserBeamBlaster"]
  SETTABLEKS R13 R12 K71 ["prefab"]
  LOADK R13 K72 ["Workspace"]
  SETTABLEKS R13 R12 K73 ["target-parent"]
  LOADK R13 K74 ["insertInstance"]
  SETTABLEKS R13 R12 K57 ["type"]
  SETTABLEKS R12 R11 K4 ["attributes"]
  NEWTABLE R12 0 5
  DUPTABLE R13 K3 [{"children", "name", "offset"}]
  NEWTABLE R14 0 1
  DUPTABLE R15 K21 [{"name", "offset", "text"}]
  LOADK R16 K22 ["TEXT"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 248
  SETTABLEKS R16 R15 K2 ["offset"]
  LOADK R16 K75 ["Drag the "]
  SETTABLEKS R16 R15 K5 ["text"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K29 ["PARAGRAPH"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 248
  SETTABLEKS R14 R13 K2 ["offset"]
  DUPTABLE R14 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R15 K39 [{"action", "target"}]
  LOADK R16 K62 ["highlight"]
  SETTABLEKS R16 R15 K37 ["action"]
  LOADK R16 K59 ["ReplicatedStorage.TutorialFiles.LaserBeamBlaster"]
  SETTABLEKS R16 R15 K38 ["target"]
  SETTABLEKS R15 R14 K4 ["attributes"]
  NEWTABLE R15 0 1
  DUPTABLE R16 K3 [{"children", "name", "offset"}]
  NEWTABLE R17 0 2
  DUPTABLE R18 K25 [{"name", "offset", "text", "url"}]
  LOADK R19 K26 ["IMAGE"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 93
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K63 ["model-icon"]
  SETTABLEKS R19 R18 K5 ["text"]
  LOADK R19 K43 ["rbxassetid://00000"]
  SETTABLEKS R19 R18 K24 ["url"]
  DUPTABLE R19 K21 [{"name", "offset", "text"}]
  LOADK R20 K22 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 126
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K64 [" Laser Beam Blaster"]
  SETTABLEKS R20 R19 K5 ["text"]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K29 ["PARAGRAPH"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 93
  SETTABLEKS R17 R16 K2 ["offset"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K0 ["children"]
  LOADK R15 K14 ["TAG"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 2
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K45 ["ActionButton"]
  SETTABLEKS R15 R14 K5 ["text"]
  DUPTABLE R15 K3 [{"children", "name", "offset"}]
  NEWTABLE R16 0 1
  DUPTABLE R17 K21 [{"name", "offset", "text"}]
  LOADK R18 K22 ["TEXT"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 160
  SETTABLEKS R18 R17 K2 ["offset"]
  LOADK R18 K76 [" into "]
  SETTABLEKS R18 R17 K5 ["text"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K29 ["PARAGRAPH"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 160
  SETTABLEKS R16 R15 K2 ["offset"]
  DUPTABLE R16 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R17 K39 [{"action", "target"}]
  LOADK R18 K62 ["highlight"]
  SETTABLEKS R18 R17 K37 ["action"]
  LOADK R18 K72 ["Workspace"]
  SETTABLEKS R18 R17 K38 ["target"]
  SETTABLEKS R17 R16 K4 ["attributes"]
  NEWTABLE R17 0 1
  DUPTABLE R18 K3 [{"children", "name", "offset"}]
  NEWTABLE R19 0 2
  DUPTABLE R20 K25 [{"name", "offset", "text", "url"}]
  LOADK R21 K26 ["IMAGE"]
  SETTABLEKS R21 R20 K1 ["name"]
  LOADN R21 218
  SETTABLEKS R21 R20 K2 ["offset"]
  LOADK R21 K77 ["worldmodel-icon"]
  SETTABLEKS R21 R20 K5 ["text"]
  LOADK R21 K43 ["rbxassetid://00000"]
  SETTABLEKS R21 R20 K24 ["url"]
  DUPTABLE R21 K21 [{"name", "offset", "text"}]
  LOADK R22 K22 ["TEXT"]
  SETTABLEKS R22 R21 K1 ["name"]
  LOADN R22 0
  SETTABLEKS R22 R21 K2 ["offset"]
  LOADK R22 K78 [" Workspace"]
  SETTABLEKS R22 R21 K5 ["text"]
  SETLIST R19 R20 2 [1]
  SETTABLEKS R19 R18 K0 ["children"]
  LOADK R19 K29 ["PARAGRAPH"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 218
  SETTABLEKS R19 R18 K2 ["offset"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K14 ["TAG"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 166
  SETTABLEKS R17 R16 K2 ["offset"]
  LOADK R17 K45 ["ActionButton"]
  SETTABLEKS R17 R16 K5 ["text"]
  DUPTABLE R17 K3 [{"children", "name", "offset"}]
  NEWTABLE R18 0 1
  DUPTABLE R19 K21 [{"name", "offset", "text"}]
  LOADK R20 K22 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 25
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K69 ["."]
  SETTABLEKS R20 R19 K5 ["text"]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K0 ["children"]
  LOADK R18 K29 ["PARAGRAPH"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 25
  SETTABLEKS R18 R17 K2 ["offset"]
  SETLIST R12 R13 5 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADK R12 K14 ["TAG"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 135
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K70 ["Step"]
  SETTABLEKS R12 R11 K5 ["text"]
  DUPTABLE R12 K3 [{"children", "name", "offset"}]
  NEWTABLE R13 0 1
  DUPTABLE R14 K25 [{"name", "offset", "text", "url"}]
  LOADK R15 K79 ["LINK"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 37
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K80 ["Read more on Docs"]
  SETTABLEKS R15 R14 K5 ["text"]
  LOADK R15 K81 ["create.roblox.com"]
  SETTABLEKS R15 R14 K24 ["url"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K0 ["children"]
  LOADK R13 K29 ["PARAGRAPH"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 36
  SETTABLEKS R13 R12 K2 ["offset"]
  SETLIST R5 R6 7 [1]
  SETTABLEKS R5 R4 K0 ["children"]
  LOADK R5 K14 ["TAG"]
  SETTABLEKS R5 R4 K1 ["name"]
  LOADN R5 243
  SETTABLEKS R5 R4 K2 ["offset"]
  LOADK R5 K82 ["TutorialSection"]
  SETTABLEKS R5 R4 K5 ["text"]
  DUPTABLE R5 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R6 K51 [{"title"}]
  LOADK R7 K83 ["Create a Script inside the Laser Beam Blaster"]
  SETTABLEKS R7 R6 K9 ["title"]
  SETTABLEKS R6 R5 K4 ["attributes"]
  NEWTABLE R6 0 5
  DUPTABLE R7 K18 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R8 K20 [{"depth"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K19 ["depth"]
  SETTABLEKS R8 R7 K4 ["attributes"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K21 [{"name", "offset", "text"}]
  LOADK R10 K22 ["TEXT"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 172
  SETTABLEKS R10 R9 K2 ["offset"]
  LOADK R10 K83 ["Create a Script inside the Laser Beam Blaster"]
  SETTABLEKS R10 R9 K5 ["text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K0 ["children"]
  LOADB R8 1
  SETTABLEKS R8 R7 K17 ["isBlock"]
  LOADK R8 K23 ["HEADING"]
  SETTABLEKS R8 R7 K1 ["name"]
  LOADN R8 169
  SETTABLEKS R8 R7 K2 ["offset"]
  DUPTABLE R8 K3 [{"children", "name", "offset"}]
  NEWTABLE R9 0 1
  DUPTABLE R10 K25 [{"name", "offset", "text", "url"}]
  LOADK R11 K26 ["IMAGE"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 220
  SETTABLEKS R11 R10 K2 ["offset"]
  LOADK R11 K53 ["header-image"]
  SETTABLEKS R11 R10 K5 ["text"]
  LOADK R11 K28 ["rbxassetid://0000000"]
  SETTABLEKS R11 R10 K24 ["url"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K0 ["children"]
  LOADK R9 K29 ["PARAGRAPH"]
  SETTABLEKS R9 R8 K1 ["name"]
  LOADN R9 219
  SETTABLEKS R9 R8 K2 ["offset"]
  DUPTABLE R9 K3 [{"children", "name", "offset"}]
  NEWTABLE R10 0 1
  DUPTABLE R11 K21 [{"name", "offset", "text"}]
  LOADK R12 K22 ["TEXT"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 2
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K84 ["We're going to need a Script in order to make this laser actually work."]
  SETTABLEKS R12 R11 K5 ["text"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K0 ["children"]
  LOADK R10 K29 ["PARAGRAPH"]
  SETTABLEKS R10 R9 K1 ["name"]
  LOADN R10 2
  SETTABLEKS R10 R9 K2 ["offset"]
  DUPTABLE R10 K18 [{"attributes", "children", "isBlock", "name", "offset"}]
  DUPTABLE R11 K20 [{"depth"}]
  LOADN R12 3
  SETTABLEKS R12 R11 K19 ["depth"]
  SETTABLEKS R11 R10 K4 ["attributes"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K21 [{"name", "offset", "text"}]
  LOADK R13 K22 ["TEXT"]
  SETTABLEKS R13 R12 K1 ["name"]
  LOADN R13 79
  SETTABLEKS R13 R12 K2 ["offset"]
  LOADK R13 K55 ["Steps"]
  SETTABLEKS R13 R12 K5 ["text"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K0 ["children"]
  LOADB R11 1
  SETTABLEKS R11 R10 K17 ["isBlock"]
  LOADK R11 K23 ["HEADING"]
  SETTABLEKS R11 R10 K1 ["name"]
  LOADN R11 75
  SETTABLEKS R11 R10 K2 ["offset"]
  DUPTABLE R11 K36 [{"attributes", "children", "name", "offset", "text"}]
  NEWTABLE R12 4 0
  LOADK R13 K85 ["Script"]
  SETTABLEKS R13 R12 K86 ["class-name"]
  LOADK R13 K41 ["Workspace.LaserBeamBlaster"]
  SETTABLEKS R13 R12 K73 ["target-parent"]
  LOADK R13 K74 ["insertInstance"]
  SETTABLEKS R13 R12 K57 ["type"]
  SETTABLEKS R12 R11 K4 ["attributes"]
  NEWTABLE R12 0 3
  DUPTABLE R13 K3 [{"children", "name", "offset"}]
  NEWTABLE R14 0 1
  DUPTABLE R15 K21 [{"name", "offset", "text"}]
  LOADK R16 K22 ["TEXT"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 179
  SETTABLEKS R16 R15 K2 ["offset"]
  LOADK R16 K87 ["Create a new Script instance as a child of the "]
  SETTABLEKS R16 R15 K5 ["text"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K0 ["children"]
  LOADK R14 K29 ["PARAGRAPH"]
  SETTABLEKS R14 R13 K1 ["name"]
  LOADN R14 179
  SETTABLEKS R14 R13 K2 ["offset"]
  DUPTABLE R14 K36 [{"attributes", "children", "name", "offset", "text"}]
  DUPTABLE R15 K39 [{"action", "target"}]
  LOADK R16 K62 ["highlight"]
  SETTABLEKS R16 R15 K37 ["action"]
  LOADK R16 K41 ["Workspace.LaserBeamBlaster"]
  SETTABLEKS R16 R15 K38 ["target"]
  SETTABLEKS R15 R14 K4 ["attributes"]
  NEWTABLE R15 0 1
  DUPTABLE R16 K3 [{"children", "name", "offset"}]
  NEWTABLE R17 0 2
  DUPTABLE R18 K25 [{"name", "offset", "text", "url"}]
  LOADK R19 K26 ["IMAGE"]
  SETTABLEKS R19 R18 K1 ["name"]
  LOADN R19 40
  SETTABLEKS R19 R18 K2 ["offset"]
  LOADK R19 K63 ["model-icon"]
  SETTABLEKS R19 R18 K5 ["text"]
  LOADK R19 K43 ["rbxassetid://00000"]
  SETTABLEKS R19 R18 K24 ["url"]
  DUPTABLE R19 K21 [{"name", "offset", "text"}]
  LOADK R20 K22 ["TEXT"]
  SETTABLEKS R20 R19 K1 ["name"]
  LOADN R20 73
  SETTABLEKS R20 R19 K2 ["offset"]
  LOADK R20 K64 [" Laser Beam Blaster"]
  SETTABLEKS R20 R19 K5 ["text"]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K0 ["children"]
  LOADK R17 K29 ["PARAGRAPH"]
  SETTABLEKS R17 R16 K1 ["name"]
  LOADN R17 40
  SETTABLEKS R17 R16 K2 ["offset"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K0 ["children"]
  LOADK R15 K14 ["TAG"]
  SETTABLEKS R15 R14 K1 ["name"]
  LOADN R15 227
  SETTABLEKS R15 R14 K2 ["offset"]
  LOADK R15 K45 ["ActionButton"]
  SETTABLEKS R15 R14 K5 ["text"]
  DUPTABLE R15 K3 [{"children", "name", "offset"}]
  NEWTABLE R16 0 1
  DUPTABLE R17 K21 [{"name", "offset", "text"}]
  LOADK R18 K22 ["TEXT"]
  SETTABLEKS R18 R17 K1 ["name"]
  LOADN R18 107
  SETTABLEKS R18 R17 K2 ["offset"]
  LOADK R18 K88 [" in Workspace."]
  SETTABLEKS R18 R17 K5 ["text"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K0 ["children"]
  LOADK R16 K29 ["PARAGRAPH"]
  SETTABLEKS R16 R15 K1 ["name"]
  LOADN R16 107
  SETTABLEKS R16 R15 K2 ["offset"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K0 ["children"]
  LOADK R12 K14 ["TAG"]
  SETTABLEKS R12 R11 K1 ["name"]
  LOADN R12 87
  SETTABLEKS R12 R11 K2 ["offset"]
  LOADK R12 K70 ["Step"]
  SETTABLEKS R12 R11 K5 ["text"]
  SETLIST R6 R7 5 [1]
  SETTABLEKS R6 R5 K0 ["children"]
  LOADK R6 K14 ["TAG"]
  SETTABLEKS R6 R5 K1 ["name"]
  LOADN R6 96
  SETTABLEKS R6 R5 K2 ["offset"]
  LOADK R6 K82 ["TutorialSection"]
  SETTABLEKS R6 R5 K5 ["text"]
  SETLIST R1 R2 4 [1]
  SETTABLEKS R1 R0 K0 ["children"]
  LOADK R1 K89 ["ROOT"]
  SETTABLEKS R1 R0 K1 ["name"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["offset"]
  DUPTABLE R1 K92 [{"markdown", "ast"}]
  LOADK R2 K93 ["<TutorialInfo
  title=\"Creating Laser Beams\"
  summary=\"Create a laser beam special effect that sets the player's health to zero on collision.\"
  difficulty=\"Intermediate\"
/>

<TutorialHome>

# Creating Laser Beams

![header-image-or-video](rbxassetid://0000000)

This tutorial shows you how to create a laser beam special effect with an optional script to set the player's health to zero on collision.

### Topics

Setting up an invisible collision box that detects when a player collides with the laser beam.

Configuring attachments that represent the reach of the laser beam's emission.

Customizing a beam that emulates the visual characteristics of a futuristic laser beam.

Scripting behavior for the collision box that damages the player's character.

<ActionButton action=\"select\" target=\"Workspace.LaserBeamBlaster\">![explore-icon](rbxassetid://00000) Explore the Workspace</ActionButton>

<ActionButton action=\"playtest\">![play-icon](rbxassetid://00000) Playtest the demo</ActionButton>

</TutorialHome>

<TutorialSection
  title=\"Add the Model from the Project Files\"
>
## Add the Model from the Project Files

![header-image](rbxassetid://0000000)

Let's get the laser blaster model we'll be using today into our Workspace to get started.

### Steps

<Step
  type=\"instanceSelect\"
  instance=\"ReplicatedStorage.TutorialFiles.LaserBeamBlaster\"
>
Find the <ActionButton action=\"highlight\" target=\"ReplicatedStorage.TutorialFiles.LaserBeamBlaster\">![model-icon](rbxassetid://00000) Laser Beam Blaster</ActionButton> in your <ActionButton action=\"highlight\" target=\"ReplicatedStorage.TutorialFiles\">![folder-icon](rbxassetid://00000) project files</ActionButton>.
</Step>

<Step
  type=\"insertInstance\"
  prefab=\"ReplicatedStorage.TutorialFiles.LaserBeamBlaster\"
  target-parent=\"Workspace\"
>
Drag the <ActionButton action=\"highlight\" target=\"ReplicatedStorage.TutorialFiles.LaserBeamBlaster\">![model-icon](rbxassetid://00000) Laser Beam Blaster</ActionButton> into <ActionButton action=\"highlight\" target=\"Workspace\">![worldmodel-icon](rbxassetid://00000) Workspace</ActionButton>.
</Step>


[Read more on Docs](create.roblox.com)
</TutorialSection>

<TutorialSection
  title=\"Create a Script inside the Laser Beam Blaster\"
>

## Create a Script inside the Laser Beam Blaster

![header-image](rbxassetid://0000000)

We're going to need a Script in order to make this laser actually work.

### Steps

<Step
  type=\"insertInstance\"
  class-name=\"Script\"
  target-parent=\"Workspace.LaserBeamBlaster\"
>
Create a new Script instance as a child of the <ActionButton action=\"highlight\" target=\"Workspace.LaserBeamBlaster\">![model-icon](rbxassetid://00000) Laser Beam Blaster</ActionButton> in Workspace.
</Step>

</TutorialSection>
"]
  SETTABLEKS R2 R1 K90 ["markdown"]
  SETTABLEKS R0 R1 K91 ["ast"]
  RETURN R1 1
