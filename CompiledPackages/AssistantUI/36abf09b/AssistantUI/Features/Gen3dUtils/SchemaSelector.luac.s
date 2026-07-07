PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantGen3dAutoSegmentation"]
        5 JUMPIFNOT                        R3 ; [+10]
        6 LOADK                            R4 K1 ["You are a 3D generation assistant. Given an object description, determine how to segment it into 3D parts.\n\nDECISION ORDER (apply the first rule that matches):\n\n1. EXPLICIT NO-PARTS INTENT — if the user's description explicitly says the object should NOT be segmented (e.g. \"with no parts\", \"as a single mesh\", \"one piece\", \"single solid mesh\", \"no segmentation\", \"unsegmented\"), reply with exactly: NONE\n\n2. EXPLICIT USER-LISTED PARTS — if the user's description explicitly names the parts they want (e.g. \"car with doors and a sunroof\", \"chair with legs, seat, and backrest\", \"robot with head, arms and legs\"), reply with ONLY those user-listed parts as a comma-separated lowercase list (max %* parts). Use the parts the user named — do not add or remove parts, do not substitute a schema, do not apply the segmentation-style limit. Use space-separated words for part names (no underscores).\n\n3. SCHEMA MATCH — otherwise, if the object somewhat matches one of the known schemas below, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nKnown schemas (ID|Name):\n%*\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\n\n4. FREE-FORM FALLBACK — otherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style.\n\nSegmentation style (only applies to rule 4): %*\n\nReply with ONLY the result (NONE, a schema ID, or a comma-separated parts list) — no preamble, no explanation."]
        7 LOADN                            R6 8
        8 MOVE                             R7 R1
        9 LOADN                            R8 3
       10 MOVE                             R9 R2
       11 NAMECALL                         R4 R4 K2 ["format"]
       13 CALL                             R4 5 1
       14 MOVE                             R3 R4
       15 RETURN                           R3 1
       16 LOADK                            R4 K3 ["You are a 3D generation assistant. Given an object name, determine how to segment it into 3D parts.\n\nSegmentation style: %*\n\nKnown schemas (ID|Name):\n%*\n\nIf the object somewhat matches one of the known schemas, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\nOtherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style. Use space-separated words for part names (no underscores)"]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R1
       19 LOADN                            R8 3
       20 NAMECALL                         R4 R4 K2 ["format"]
       22 CALL                             R4 4 1
       23 MOVE                             R3 R4
       24 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R2 K0 ["Object: \"%*\""]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 JUMPIFNOTEQKS                    R1 K2 [""] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 NEWTABLE                         R2 0 0
       11 LOADK                            R5 K3 ["[^,]+"]
       12 NAMECALL                         R3 R1 K4 ["gmatch"]
       14 CALL                             R3 2 3
       15 FORGPREP                         R3
       16 LOADK                            R10 K0 ["^%s*(.-)%s*$"]
       17 NAMECALL                         R8 R6 K1 ["match"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+16]
       21 LENGTH                           R9 R8
       22 LOADN                            R10 0
       23 JUMPIFNOTLT                      R10 R9 ; [+13]
       25 MOVE                             R10 R2
       26 NAMECALL                         R11 R8 K5 ["lower"]
       28 CALL                             R11 1 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R9 K8 [table.insert]
       32 CALL                             R9 -1 0
       33 LENGTH                           R9 R2
       34 LOADN                            R10 8
       35 JUMPIFLE                         R10 R9 ; [+3]
       37 FORGLOOP                         R3 1 ; [-22]
       39 LENGTH                           R4 R2
       40 LOADN                            R5 0
       41 JUMPIFNOTLT                      R5 R4 ; [+3]
       43 MOVE                             R3 R2
       44 RETURN                           R3 1
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R4 K0 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+5]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 LOADB                            R5 0
       10 RETURN                           R3 3
       11 NAMECALL                         R3 R2 K3 ["upper"]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K4 ["NONE"] ; [+5]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 LOADB                            R5 1
       19 RETURN                           R3 3
       20 LOADK                            R5 K5 [","]
       21 NAMECALL                         R3 R2 K6 ["find"]
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+11]
       25 LOADK                            R5 K7 ["^[%w]+$"]
       26 NAMECALL                         R3 R2 K1 ["match"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+6]
       30 GETTABLE                         R3 R1 R2
       31 JUMPIFNOT                        R3 ; [+4]
       32 MOVE                             R3 R2
       33 LOADNIL                          R4
       34 LOADB                            R5 0
       35 RETURN                           R3 3
       36 LOADNIL                          R3
       37 GETUPVAL                         R4 0
       38 MOVE                             R5 R2
       39 CALL                             R4 1 1
       40 LOADB                            R5 0
       41 RETURN                           R3 3

PROTO_4:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+5]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["SegmentationMode"]
        5 GETTABLEKS                       R4 R4 K1 ["Functional"]
        7 GETUPVAL                         R7 1
        8 GETTABLE                         R6 R7 R4
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K2 ["FFlagAssistantGen3dAutoSegmentation"]
       12 JUMPIFNOT                        R7 ; [+10]
       13 LOADK                            R7 K3 ["You are a 3D generation assistant. Given an object description, determine how to segment it into 3D parts.\n\nDECISION ORDER (apply the first rule that matches):\n\n1. EXPLICIT NO-PARTS INTENT — if the user's description explicitly says the object should NOT be segmented (e.g. \"with no parts\", \"as a single mesh\", \"one piece\", \"single solid mesh\", \"no segmentation\", \"unsegmented\"), reply with exactly: NONE\n\n2. EXPLICIT USER-LISTED PARTS — if the user's description explicitly names the parts they want (e.g. \"car with doors and a sunroof\", \"chair with legs, seat, and backrest\", \"robot with head, arms and legs\"), reply with ONLY those user-listed parts as a comma-separated lowercase list (max %* parts). Use the parts the user named — do not add or remove parts, do not substitute a schema, do not apply the segmentation-style limit. Use space-separated words for part names (no underscores).\n\n3. SCHEMA MATCH — otherwise, if the object somewhat matches one of the known schemas below, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nKnown schemas (ID|Name):\n%*\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\n\n4. FREE-FORM FALLBACK — otherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style.\n\nSegmentation style (only applies to rule 4): %*\n\nReply with ONLY the result (NONE, a schema ID, or a comma-separated parts list) — no preamble, no explanation."]
       14 LOADN                            R9 8
       15 MOVE                             R10 R2
       16 LOADN                            R11 3
       17 MOVE                             R12 R6
       18 NAMECALL                         R7 R7 K4 ["format"]
       20 CALL                             R7 5 1
       21 MOVE                             R5 R7
       22 JUMP                             ; [+8]
       23 LOADK                            R7 K5 ["You are a 3D generation assistant. Given an object name, determine how to segment it into 3D parts.\n\nSegmentation style: %*\n\nKnown schemas (ID|Name):\n%*\n\nIf the object somewhat matches one of the known schemas, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\nOtherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style. Use space-separated words for part names (no underscores)"]
       24 MOVE                             R9 R6
       25 MOVE                             R10 R2
       26 LOADN                            R11 3
       27 NAMECALL                         R7 R7 K4 ["format"]
       29 CALL                             R7 4 1
       30 MOVE                             R5 R7
       31 LOADK                            R7 K6 ["Object: \"%*\""]
       32 MOVE                             R9 R0
       33 NAMECALL                         R7 R7 K4 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K7 ["FFlagDebugLogAssistantUI"]
       40 JUMPIFNOT                        R7 ; [+12]
       41 GETIMPORT                        R7 K9 [print]
       43 LOADK                            R9 K10 ["[SchemaSelector] combined mode: %*, prompt: \"%*\"\nsystem prompt (%*c):\n%*"]
       44 MOVE                             R11 R4
       45 MOVE                             R12 R0
       46 LENGTH                           R13 R5
       47 MOVE                             R14 R5
       48 NAMECALL                         R9 R9 K4 ["format"]
       50 CALL                             R9 5 1
       51 MOVE                             R8 R9
       52 CALL                             R7 1 0
       53 GETIMPORT                        R7 K13 [os.clock]
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K14 ["runAsync"]
       59 DUPTABLE                         R9 K21 [{["name"] = "schema_selector", ["description"] = "Suggests part names for 3D generation", ["systemPrompt"], ["userPrompt"]}]
       60 SETTABLEKS                       R5 R9 K19 ["systemPrompt"]
       62 SETTABLEKS                       R6 R9 K20 ["userPrompt"]
       64 CALL                             R8 1 1
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K7 ["FFlagDebugLogAssistantUI"]
       68 JUMPIFNOT                        R9 ; [+28]
       69 GETIMPORT                        R9 K9 [print]
       71 LOADK                            R11 K22 ["[SchemaSelector] combined done in %*s — error: %*, response: \"%*\""]
       72 GETIMPORT                        R13 K24 [string.format]
       74 LOADK                            R14 K25 ["%.2f"]
       75 GETIMPORT                        R16 K13 [os.clock]
       77 CALL                             R16 0 1
       78 SUB                              R15 R16 R7
       79 CALL                             R13 2 1
       80 GETTABLEKS                       R15 R8 K26 ["error"]
       82 FASTCALL1                        TOSTRING R15 ; [+2]
       83 GETIMPORT                        R14 K28 [tostring]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R16 R8 K29 ["text"]
       88 FASTCALL1                        TOSTRING R16 ; [+2]
       89 GETIMPORT                        R15 K28 [tostring]
       91 CALL                             R15 1 1
       92 NAMECALL                         R11 R11 K4 ["format"]
       94 CALL                             R11 4 1
       95 MOVE                             R10 R11
       96 CALL                             R9 1 0
       97 GETTABLEKS                       R9 R8 K26 ["error"]
       99 JUMPIF                           R9 ; [+3]
      100 GETTABLEKS                       R9 R8 K29 ["text"]
      102 JUMPIF                           R9 ; [+4]
      103 LOADNIL                          R9
      104 LOADNIL                          R10
      105 LOADB                            R11 0
      106 RETURN                           R9 3
      107 GETUPVAL                         R9 4
      108 GETTABLEKS                       R10 R8 K29 ["text"]
      110 MOVE                             R11 R3
      111 CALL                             R9 2 -1
      112 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Features"]
       16 GETTABLEKS                       R3 R3 K8 ["Gen3dUtils"]
       18 GETTABLEKS                       R3 R3 K9 ["SegmentationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Subagents"]
       25 GETTABLEKS                       R4 R4 K11 ["runLLM"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K14 [{"functional", "material"}]
       29 LOADK                            R6 K15 ["FUNCTIONAL — separate each independently moving or interactive component (e.g. wheels that spin, doors that open, gun barrels, rotor blades). Provide up to %* parts"]
       30 LOADN                            R8 3
       31 NAMECALL                         R6 R6 K16 ["format"]
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 SETTABLEKS                       R5 R4 K12 ["functional"]
       37 LOADK                            R6 K17 ["MATERIAL — group components that share the same texture or material into one part (e.g. all four wooden chair legs become a single mesh, a metal frame stays separate from upholstery). Limit the generation to %* parts"]
       38 LOADN                            R8 3
       39 NAMECALL                         R6 R6 K16 ["format"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 SETTABLEKS                       R5 R4 K13 ["material"]
       45 DUPCLOSURE                       R5 K18 [PROTO_0]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 DUPCLOSURE                       R6 K19 [PROTO_1]
       49 DUPCLOSURE                       R7 K20 [PROTO_2]
       50 DUPCLOSURE                       R8 K21 [PROTO_3]
       51 CAPTURE                          VAL R7
       52 DUPCLOSURE                       R9 K22 [PROTO_4]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 DUPTABLE                         R10 K25 [{"suggestSchemaOrPartsAsync", "SEGMENTATION_STYLE_DESCRIPTIONS"}]
       59 SETTABLEKS                       R9 R10 K23 ["suggestSchemaOrPartsAsync"]
       61 SETTABLEKS                       R4 R10 K24 ["SEGMENTATION_STYLE_DESCRIPTIONS"]
       63 RETURN                           R10 1
