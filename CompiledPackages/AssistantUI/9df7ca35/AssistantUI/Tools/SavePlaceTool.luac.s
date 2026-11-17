PROTO_0:
        0 DUPTABLE                         R2 K1 [{"notes"}]
        1 GETTABLEKS                       R3 R1 K0 ["notes"]
        3 SETTABLEKS                       R3 R2 K0 ["notes"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["new"]
        8 GETTABLEKS                       R4 R0 K3 ["net"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantDMNetworkingLongUnreachableTimeout"]
       14 JUMPIFNOT                        R5 ; [+7]
       15 GETTABLEKS                       R4 R3 K5 ["savePlace"]
       17 DUPTABLE                         R6 K8 [{["unreachableTimeout"] = 120}]
       18 NAMECALL                         R4 R4 K9 ["WithConfig"]
       20 CALL                             R4 2 1
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R4 R3 K5 ["savePlace"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K10 ["Identity"]
       27 GETTABLEKS                       R7 R7 K11 ["Edit"]
       29 MOVE                             R8 R2
       30 NAMECALL                         R5 R4 K12 ["InvokeAsync"]
       32 CALL                             R5 3 -1
       33 RETURN                           R5 -1

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
        9 LOADK                            R4 K0 ["%*: %*"]
       10 GETTABLEKS                       R6 R1 K1 ["status"]
       12 GETTABLEKS                       R7 R1 K2 ["message"]
       14 NAMECALL                         R4 R4 K3 ["format"]
       16 CALL                             R4 3 1
       17 GETTABLEKS                       R5 R1 K4 ["notesError"]
       19 JUMPIFNOT                        R5 ; [+8]
       20 MOVE                             R5 R4
       21 LOADK                            R6 K5 [" %*"]
       22 GETTABLEKS                       R8 R1 K4 ["notesError"]
       24 NAMECALL                         R6 R6 K3 ["format"]
       26 CALL                             R6 2 1
       27 CONCAT                           R4 R5 R6
       28 NAMECALL                         R2 R2 K6 ["addText"]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R4 3
       32 MOVE                             R6 R1
       33 NAMECALL                         R4 R4 K7 ["JSONEncode"]
       35 CALL                             R4 2 -1
       36 NAMECALL                         R2 R2 K6 ["addText"]
       38 CALL                             R2 -1 1
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R2 K8 ["setStructuredContent"]
       42 CALL                             R2 2 1
       43 GETTABLEKS                       R5 R1 K1 ["status"]
       45 JUMPIFEQKS                       R5 K9 ["Failed"] ; [+2]
       47 LOADB                            R4 0 +1
       48 LOADB                            R4 1
       49 NAMECALL                         R2 R2 K10 ["setError"]
       51 CALL                             R2 2 1
       52 NAMECALL                         R2 R2 K11 ["build"]
       54 CALL                             R2 1 -1
       55 RETURN                           R2 -1

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
       15 LOADK                            R4 K3 ["Save Place"]
       16 NAMECALL                         R2 R2 K4 ["setTitle"]
       18 CALL                             R2 2 1
       19 LOADK                            R4 K5 ["Saves the place open in Roblox Studio, the same way the user pressing Ctrl+S (File > Save) would. Never publishes: players do not see the change until the user publishes.\n\nWhere it saves depends on how the place was opened: places from Roblox (including Team Create) are saved to Roblox as a new place version; places opened from a .rbxl/.rbxlx file are written back to that file.\n\nCall this when the user asks to save, or at the end of a change they asked you to save. Do not call it after every edit: each save to Roblox creates a version in the place's version history.\n\nThe result's status is one of:\n- Saved: done. version is the new place version (Roblox saves) and filePath the file written (local saves).\n- NotNeeded: there were no unsaved changes; nothing was written.\n- NeedsUserAction: Studio can only save this place through a dialog (it was never saved, needs Save As, or needs to ask about script changes from a playtest). Relay the message to the user; once they save it themselves, later calls work.\n- Busy: a playtest, or another save or publish, is in progress. Retry once it has finished; for a playtest, ask the user to stop it, or stop it yourself.\n- Failed: the save failed; message says why.\n\nIf notesSaved is false, notesError says why. The save itself still happened; do not save again to retry the notes."]
       20 NAMECALL                         R2 R2 K6 ["setDescription"]
       22 CALL                             R2 2 1
       23 LOADK                            R4 K7 ["notes"]
       24 DUPTABLE                         R5 K12 [{["type"] = "string", ["description"] = "Optional title for this save in the place's version history. Only pass it when the user asked to label the save. With no changes it still saves, but the title can go on the latest version instead of a new one, replacing that version's notes. Must pass text moderation, and titles longer than version history allows are shortened (notesTruncated). Ignored for local place files."}]
       25 NAMECALL                         R2 R2 K13 ["addOptionalArgument"]
       27 CALL                             R2 3 1
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R2 K14 ["setHandler"]
       31 CALL                             R2 2 1
       32 DUPTABLE                         R4 K22 [{["title"] = "Save Place", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       33 NAMECALL                         R2 R2 K23 ["setAnnotations"]
       35 CALL                             R2 2 1
       36 NAMECALL                         R2 R2 K24 ["build"]
       38 CALL                             R2 1 1
       39 DUPTABLE                         R3 K26 [{"definition"}]
       40 SETTABLEKS                       R2 R3 K25 ["definition"]
       42 RETURN                           R3 1

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
       27 GETTABLEKS                       R6 R0 K13 ["Flags"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Remotes"]
       34 GETTABLEKS                       R7 R7 K15 ["PlaceSaveRemotes"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Tools"]
       41 GETTABLEKS                       R8 R8 K17 ["ToolTypes"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K18 ["Util"]
       46 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       48 GETTABLEKS                       R9 R4 K18 ["Util"]
       50 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       52 GETTABLEKS                       R10 R7 K21 ["ToolNames"]
       54 DUPCLOSURE                       R11 K22 [PROTO_0]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 DUPCLOSURE                       R12 K23 [PROTO_1]
       59 DUPCLOSURE                       R13 K24 [PROTO_3]
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 RETURN                           R13 1
