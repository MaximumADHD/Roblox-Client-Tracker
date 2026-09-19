PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantGen3dAutoSegmentation"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 LOADK                            R3 K1 ["You are a 3D generation assistant. Given an object description, determine how to segment it into 3D parts.\n\nDECISION ORDER (apply the first rule that matches):\n\n1. EXPLICIT NO-PARTS INTENT — if the user's description explicitly says the object should NOT be segmented (e.g. \"with no parts\", \"as a single mesh\", \"one piece\", \"single solid mesh\", \"no segmentation\", \"unsegmented\"), reply with exactly: NONE\n\n2. EXPLICIT USER-LISTED PARTS — if the user's description explicitly names the parts they want (e.g. \"car with doors and a sunroof\", \"chair with legs, seat, and backrest\", \"robot with head, arms and legs\"), reply with ONLY those user-listed parts as a comma-separated lowercase list (max %* parts). Use the parts the user named — do not add or remove parts, do not substitute a schema, do not apply the segmentation-style limit. Use space-separated words for part names (no underscores).\n\n3. SCHEMA MATCH — otherwise, if the object somewhat matches one of the known schemas below, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nKnown schemas (ID|Name):\n%*\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\n\n4. FREE-FORM FALLBACK — otherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style.\n\nSegmentation style (only applies to rule 4): %*\n\nReply with ONLY the result (NONE, a schema ID, or a comma-separated parts list) — no preamble, no explanation."]
        7 LOADN                            R5 8
        8 MOVE                             R6 R1
        9 LOADN                            R7 3
       10 MOVE                             R8 R2
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 5 1
       14 RETURN                           R3 1
       15 LOADK                            R3 K3 ["You are a 3D generation assistant. Given an object name, determine how to segment it into 3D parts.\n\nSegmentation style: %*\n\nKnown schemas (ID|Name):\n%*\n\nIf the object somewhat matches one of the known schemas, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\nOtherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style. Use space-separated words for part names (no underscores)"]
       16 MOVE                             R5 R2
       17 MOVE                             R6 R1
       18 LOADN                            R7 3
       19 NAMECALL                         R3 R3 K2 ["format"]
       21 CALL                             R3 4 1
       22 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R1 K0 ["Object: \"%*\""]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

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
       31 LOADK                            R6 K6 ["Object: \"%*\""]
       32 MOVE                             R8 R0
       33 NAMECALL                         R6 R6 K4 ["format"]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K7 ["FFlagDebugLogAssistantUI"]
       39 JUMPIFNOT                        R7 ; [+11]
       40 GETIMPORT                        R7 K9 [print]
       42 LOADK                            R8 K10 ["[SchemaSelector] combined mode: %*, prompt: \"%*\"\nsystem prompt (%*c):\n%*"]
       43 MOVE                             R10 R4
       44 MOVE                             R11 R0
       45 LENGTH                           R12 R5
       46 MOVE                             R13 R5
       47 NAMECALL                         R8 R8 K4 ["format"]
       49 CALL                             R8 5 1
       50 CALL                             R7 1 0
       51 GETIMPORT                        R7 K13 [os.clock]
       53 CALL                             R7 0 1
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K14 ["runAsync"]
       57 DUPTABLE                         R9 K21 [{["name"] = "schema_selector", ["description"] = "Suggests part names for 3D generation", ["systemPrompt"], ["userPrompt"]}]
       58 SETTABLEKS                       R5 R9 K19 ["systemPrompt"]
       60 SETTABLEKS                       R6 R9 K20 ["userPrompt"]
       62 CALL                             R8 1 1
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K7 ["FFlagDebugLogAssistantUI"]
       66 JUMPIFNOT                        R9 ; [+27]
       67 GETIMPORT                        R9 K9 [print]
       69 LOADK                            R10 K22 ["[SchemaSelector] combined done in %*s — error: %*, response: \"%*\""]
       70 GETIMPORT                        R12 K24 [string.format]
       72 LOADK                            R13 K25 ["%.2f"]
       73 GETIMPORT                        R15 K13 [os.clock]
       75 CALL                             R15 0 1
       76 SUB                              R14 R15 R7
       77 CALL                             R12 2 1
       78 GETTABLEKS                       R14 R8 K26 ["error"]
       80 FASTCALL1                        TOSTRING R14 ; [+2]
       81 GETIMPORT                        R13 K28 [tostring]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R15 R8 K29 ["text"]
       86 FASTCALL1                        TOSTRING R15 ; [+2]
       87 GETIMPORT                        R14 K28 [tostring]
       89 CALL                             R14 1 1
       90 NAMECALL                         R10 R10 K4 ["format"]
       92 CALL                             R10 4 1
       93 CALL                             R9 1 0
       94 GETTABLEKS                       R9 R8 K26 ["error"]
       96 JUMPIF                           R9 ; [+3]
       97 GETTABLEKS                       R9 R8 K29 ["text"]
       99 JUMPIF                           R9 ; [+4]
      100 LOADNIL                          R9
      101 LOADNIL                          R10
      102 LOADB                            R11 0
      103 RETURN                           R9 3
      104 GETUPVAL                         R9 4
      105 GETTABLEKS                       R10 R8 K29 ["text"]
      107 MOVE                             R11 R3
      108 CALL                             R9 2 -1
      109 RETURN                           R9 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["Gen3dUtils"]
       18 GETTABLEKS                       R3 R3 K9 ["SegmentationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Subagents"]
       25 GETTABLEKS                       R4 R4 K11 ["runLLM"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K14 [{"functional", "material"}]
       29 LOADK                            R5 K15 ["FUNCTIONAL — separate each independently moving or interactive component (e.g. wheels that spin, doors that open, gun barrels, rotor blades). Provide up to %* parts"]
       30 LOADN                            R7 3
       31 NAMECALL                         R5 R5 K16 ["format"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K12 ["functional"]
       36 LOADK                            R5 K17 ["MATERIAL — group components that share the same texture or material into one part (e.g. all four wooden chair legs become a single mesh, a metal frame stays separate from upholstery). Limit the generation to %* parts"]
       37 LOADN                            R7 3
       38 NAMECALL                         R5 R5 K16 ["format"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K13 ["material"]
       43 DUPCLOSURE                       R5 K18 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 DUPCLOSURE                       R6 K19 [PROTO_1]
       47 DUPCLOSURE                       R7 K20 [PROTO_2]
       48 DUPCLOSURE                       R8 K21 [PROTO_3]
       49 CAPTURE                          VAL R7
       50 DUPCLOSURE                       R9 K22 [PROTO_4]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R8
       56 DUPTABLE                         R10 K25 [{"suggestSchemaOrPartsAsync", "SEGMENTATION_STYLE_DESCRIPTIONS"}]
       57 SETTABLEKS                       R9 R10 K23 ["suggestSchemaOrPartsAsync"]
       59 SETTABLEKS                       R4 R10 K24 ["SEGMENTATION_STYLE_DESCRIPTIONS"]
       61 RETURN                           R10 1
