PROTO_0:
        0 DUPTABLE                         R2 K1 [{"notes"}]
        1 GETTABLEKS                       R3 R1 K0 ["notes"]
        3 SETTABLEKS                       R3 R2 K0 ["notes"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R3 ; [+18]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["new"]
       12 GETTABLEKS                       R4 R0 K4 ["net"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K5 ["savePlace"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Edit"]
       22 MOVE                             R7 R2
       23 NAMECALL                         R4 R4 K8 ["InvokeAsync"]
       25 CALL                             R4 3 -1
       26 RETURN                           R4 -1
       27 GETTABLEKS                       R3 R0 K9 ["bridges"]
       29 GETTABLEKS                       R3 R3 K10 ["PlaceSave"]
       31 FASTCALL2K                       ASSERT R3 K11 ; [+5]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K11 ["PlaceSave bridge is not available"]
       35 GETIMPORT                        R4 K13 [assert]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R3 K14 ["createGuestContext"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K15 ["Types"]
       43 GETTABLEKS                       R5 R5 K7 ["Edit"]
       45 LOADNIL                          R6
       46 CALL                             R4 2 1
       47 GETTABLEKS                       R4 R4 K16 ["bridge"]
       49 GETTABLEKS                       R4 R4 K17 ["savePlaceAsync"]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1

PROTO_1:
        0 LOADK                            R1 K0 ["%*: %*"]
        1 GETTABLEKS                       R3 R0 K1 ["status"]
        3 GETTABLEKS                       R4 R0 K2 ["message"]
        5 NAMECALL                         R1 R1 K3 ["format"]
        7 CALL                             R1 3 1
        8 GETTABLEKS                       R2 R0 K4 ["notesError"]
       10 JUMPIFNOT                        R2 ; [+8]
       11 MOVE                             R2 R1
       12 LOADK                            R3 K5 [" %*"]
       13 GETTABLEKS                       R5 R0 K4 ["notesError"]
       15 NAMECALL                         R3 R3 K3 ["format"]
       17 CALL                             R3 2 1
       18 CONCAT                           R1 R2 R3
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 LOADK                            R5 K0 ["%*: %*"]
       10 GETTABLEKS                       R7 R1 K1 ["status"]
       12 GETTABLEKS                       R8 R1 K2 ["message"]
       14 NAMECALL                         R5 R5 K3 ["format"]
       16 CALL                             R5 3 1
       17 GETTABLEKS                       R6 R1 K4 ["notesError"]
       19 JUMPIFNOT                        R6 ; [+8]
       20 MOVE                             R6 R5
       21 LOADK                            R7 K5 [" %*"]
       22 GETTABLEKS                       R9 R1 K4 ["notesError"]
       24 NAMECALL                         R7 R7 K3 ["format"]
       26 CALL                             R7 2 1
       27 CONCAT                           R5 R6 R7
       28 MOVE                             R4 R5
       29 NAMECALL                         R2 R2 K6 ["addText"]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R4 3
       33 MOVE                             R6 R1
       34 NAMECALL                         R4 R4 K7 ["JSONEncode"]
       36 CALL                             R4 2 -1
       37 NAMECALL                         R2 R2 K6 ["addText"]
       39 CALL                             R2 -1 1
       40 MOVE                             R4 R1
       41 NAMECALL                         R2 R2 K8 ["setStructuredContent"]
       43 CALL                             R2 2 1
       44 GETTABLEKS                       R5 R1 K1 ["status"]
       46 JUMPIFEQKS                       R5 K9 ["Failed"] ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 NAMECALL                         R2 R2 K10 ["setError"]
       52 CALL                             R2 2 1
       53 NAMECALL                         R2 R2 K11 ["build"]
       55 CALL                             R2 1 -1
       56 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["define"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K1 ["SavePlace"]
       12 NAMECALL                         R2 R2 K2 ["setName"]
       14 CALL                             R2 2 1
       15 LOADK                            R4 K3 ["Saves the place open in Roblox Studio, the same way the user pressing Ctrl+S (File > Save) would. Never publishes: players do not see the change until the user publishes.\n\nWhere it saves depends on how the place was opened: places from Roblox (including Team Create) are saved to Roblox as a new place version; places opened from a .rbxl/.rbxlx file are written back to that file.\n\nCall this when the user asks to save, or at the end of a change they asked you to save. Do not call it after every edit: each save to Roblox creates a version in the place's version history.\n\nThe result's status is one of:\n- Saved: done. version is the new place version (Roblox saves) and filePath the file written (local saves).\n- NotNeeded: there were no unsaved changes; nothing was written.\n- NeedsUserAction: Studio can only save this place through a dialog (it was never saved, needs Save As, or needs to ask about script changes from a playtest). Relay the message to the user; once they save it themselves, later calls work.\n- Busy: a playtest, or another save or publish, is in progress. Retry once it has finished; for a playtest, ask the user to stop it, or stop it yourself.\n- Failed: the save failed; message says why.\n\nIf notesSaved is false, notesError says why. The save itself still happened; do not save again to retry the notes."]
       16 NAMECALL                         R2 R2 K4 ["setDescription"]
       18 CALL                             R2 2 1
       19 LOADK                            R4 K5 ["notes"]
       20 DUPTABLE                         R5 K10 [{["type"] = "string", ["description"] = "Optional title for this save in the place's version history. Only pass it when the user asked to label the save. With no changes it still saves, but the title can go on the latest version instead of a new one, replacing that version's notes. Must pass text moderation, and titles longer than version history allows are shortened (notesTruncated). Ignored for local place files."}]
       21 NAMECALL                         R2 R2 K11 ["addOptionalArgument"]
       23 CALL                             R2 3 1
       24 MOVE                             R4 R1
       25 NAMECALL                         R2 R2 K12 ["setHandler"]
       27 CALL                             R2 2 1
       28 DUPTABLE                         R4 K21 [{["title"] = "Save Place", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       29 NAMECALL                         R2 R2 K22 ["setAnnotations"]
       31 CALL                             R2 2 1
       32 NAMECALL                         R2 R2 K23 ["build"]
       34 CALL                             R2 1 1
       35 DUPTABLE                         R3 K25 [{"definition"}]
       36 SETTABLEKS                       R2 R3 K24 ["definition"]
       38 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["ModelContextProtocol"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R6 K14 ["DataModelType"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R0 K15 ["Flags"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Remotes"]
       41 GETTABLEKS                       R8 R8 K17 ["PlaceSaveRemotes"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K10 [require]
       46 GETTABLEKS                       R9 R0 K18 ["Tools"]
       48 GETTABLEKS                       R9 R9 K19 ["ToolTypes"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R4 K13 ["Util"]
       53 GETTABLEKS                       R9 R9 K20 ["ToolBuilder"]
       55 GETTABLEKS                       R10 R4 K13 ["Util"]
       57 GETTABLEKS                       R10 R10 K21 ["ToolResult"]
       59 GETTABLEKS                       R11 R8 K22 ["ToolNames"]
       61 DUPCLOSURE                       R12 K23 [PROTO_0]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 DUPCLOSURE                       R13 K24 [PROTO_1]
       67 DUPCLOSURE                       R14 K25 [PROTO_3]
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R11
       73 RETURN                           R14 1
