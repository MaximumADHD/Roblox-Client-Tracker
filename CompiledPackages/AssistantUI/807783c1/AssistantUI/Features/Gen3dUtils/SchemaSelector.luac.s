PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+10]
        5 LOADK                            R4 K0 ["You are a 3D generation assistant. Given an object description, determine how to segment it into 3D parts.\n\nDECISION ORDER (apply the first rule that matches):\n\n1. EXPLICIT NO-PARTS INTENT — if the user's description explicitly says the object should NOT be segmented (e.g. \"with no parts\", \"as a single mesh\", \"one piece\", \"single solid mesh\", \"no segmentation\", \"unsegmented\"), reply with exactly: NONE\n\n2. EXPLICIT USER-LISTED PARTS — if the user's description explicitly names the parts they want (e.g. \"car with doors and a sunroof\", \"chair with legs, seat, and backrest\", \"robot with head, arms and legs\"), reply with ONLY those user-listed parts as a comma-separated lowercase list (max %* parts). Use the parts the user named — do not add or remove parts, do not substitute a schema, do not apply the segmentation-style limit. Use space-separated words for part names (no underscores).\n\n3. SCHEMA MATCH — otherwise, if the object somewhat matches one of the known schemas below, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nKnown schemas (ID|Name):\n%*\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\n\n4. FREE-FORM FALLBACK — otherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style.\n\nSegmentation style (only applies to rule 4): %*\n\nReply with ONLY the result (NONE, a schema ID, or a comma-separated parts list) — no preamble, no explanation."]
        6 LOADN                            R6 8
        7 MOVE                             R7 R1
        8 LOADN                            R8 3
        9 MOVE                             R9 R2
       10 NAMECALL                         R4 R4 K1 ["format"]
       12 CALL                             R4 5 1
       13 MOVE                             R3 R4
       14 RETURN                           R3 1
       15 LOADK                            R4 K2 ["You are a 3D generation assistant. Given an object name, determine how to segment it into 3D parts.\n\nSegmentation style: %*\n\nKnown schemas (ID|Name):\n%*\n\nIf the object somewhat matches one of the known schemas, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\nOtherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style. Use space-separated words for part names (no underscores)"]
       16 MOVE                             R6 R2
       17 MOVE                             R7 R1
       18 LOADN                            R8 3
       19 NAMECALL                         R4 R4 K1 ["format"]
       21 CALL                             R4 4 1
       22 MOVE                             R3 R4
       23 RETURN                           R3 1

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
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+10]
       12 LOADK                            R7 K2 ["You are a 3D generation assistant. Given an object description, determine how to segment it into 3D parts.\n\nDECISION ORDER (apply the first rule that matches):\n\n1. EXPLICIT NO-PARTS INTENT — if the user's description explicitly says the object should NOT be segmented (e.g. \"with no parts\", \"as a single mesh\", \"one piece\", \"single solid mesh\", \"no segmentation\", \"unsegmented\"), reply with exactly: NONE\n\n2. EXPLICIT USER-LISTED PARTS — if the user's description explicitly names the parts they want (e.g. \"car with doors and a sunroof\", \"chair with legs, seat, and backrest\", \"robot with head, arms and legs\"), reply with ONLY those user-listed parts as a comma-separated lowercase list (max %* parts). Use the parts the user named — do not add or remove parts, do not substitute a schema, do not apply the segmentation-style limit. Use space-separated words for part names (no underscores).\n\n3. SCHEMA MATCH — otherwise, if the object somewhat matches one of the known schemas below, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nKnown schemas (ID|Name):\n%*\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\n\n4. FREE-FORM FALLBACK — otherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style.\n\nSegmentation style (only applies to rule 4): %*\n\nReply with ONLY the result (NONE, a schema ID, or a comma-separated parts list) — no preamble, no explanation."]
       13 LOADN                            R9 8
       14 MOVE                             R10 R2
       15 LOADN                            R11 3
       16 MOVE                             R12 R6
       17 NAMECALL                         R7 R7 K3 ["format"]
       19 CALL                             R7 5 1
       20 MOVE                             R5 R7
       21 JUMP                             ; [+8]
       22 LOADK                            R7 K4 ["You are a 3D generation assistant. Given an object name, determine how to segment it into 3D parts.\n\nSegmentation style: %*\n\nKnown schemas (ID|Name):\n%*\n\nIf the object somewhat matches one of the known schemas, reply with only that schema's ID (e.g. \"CarSimple5\"). The schema defines the parts — no parts limit applies.\nIf no schema matches the full description, identify the core object type (e.g. from \"octopus car\" extract \"car\", from \"glowing sword\" extract \"sword\") and check if that matches a schema. If so, return that schema ID.\nOtherwise, reply with a comma-separated list of distinct lowercase part names, at most %* parts, using real-world knowledge with the given segmentation style. Use space-separated words for part names (no underscores)"]
       23 MOVE                             R9 R6
       24 MOVE                             R10 R2
       25 LOADN                            R11 3
       26 NAMECALL                         R7 R7 K3 ["format"]
       28 CALL                             R7 4 1
       29 MOVE                             R5 R7
       30 LOADK                            R7 K5 ["Object: \"%*\""]
       31 MOVE                             R9 R0
       32 NAMECALL                         R7 R7 K3 ["format"]
       34 CALL                             R7 2 1
       35 MOVE                             R6 R7
       36 GETUPVAL                         R7 3
       37 CALL                             R7 0 1
       38 JUMPIFNOT                        R7 ; [+12]
       39 GETIMPORT                        R7 K7 [print]
       41 LOADK                            R9 K8 ["[SchemaSelector] combined mode: %*, prompt: \"%*\"\nsystem prompt (%*c):\n%*"]
       42 MOVE                             R11 R4
       43 MOVE                             R12 R0
       44 LENGTH                           R13 R5
       45 MOVE                             R14 R5
       46 NAMECALL                         R9 R9 K3 ["format"]
       48 CALL                             R9 5 1
       49 MOVE                             R8 R9
       50 CALL                             R7 1 0
       51 GETIMPORT                        R7 K11 [os.clock]
       53 CALL                             R7 0 1
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K12 ["runAsync"]
       57 DUPTABLE                         R9 K17 [{"name", "description", "systemPrompt", "userPrompt"}]
       58 LOADK                            R10 K18 ["schema_selector"]
       59 SETTABLEKS                       R10 R9 K13 ["name"]
       61 LOADK                            R10 K19 ["Suggests part names for 3D generation"]
       62 SETTABLEKS                       R10 R9 K14 ["description"]
       64 SETTABLEKS                       R5 R9 K15 ["systemPrompt"]
       66 SETTABLEKS                       R6 R9 K16 ["userPrompt"]
       68 CALL                             R8 1 1
       69 GETUPVAL                         R9 3
       70 CALL                             R9 0 1
       71 JUMPIFNOT                        R9 ; [+28]
       72 GETIMPORT                        R9 K7 [print]
       74 LOADK                            R11 K20 ["[SchemaSelector] combined done in %*s — error: %*, response: \"%*\""]
       75 GETIMPORT                        R13 K22 [string.format]
       77 LOADK                            R14 K23 ["%.2f"]
       78 GETIMPORT                        R16 K11 [os.clock]
       80 CALL                             R16 0 1
       81 SUB                              R15 R16 R7
       82 CALL                             R13 2 1
       83 GETTABLEKS                       R15 R8 K24 ["error"]
       85 FASTCALL1                        TOSTRING R15 ; [+2]
       86 GETIMPORT                        R14 K26 [tostring]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R16 R8 K27 ["text"]
       91 FASTCALL1                        TOSTRING R16 ; [+2]
       92 GETIMPORT                        R15 K26 [tostring]
       94 CALL                             R15 1 1
       95 NAMECALL                         R11 R11 K3 ["format"]
       97 CALL                             R11 4 1
       98 MOVE                             R10 R11
       99 CALL                             R9 1 0
      100 GETTABLEKS                       R9 R8 K24 ["error"]
      102 JUMPIF                           R9 ; [+3]
      103 GETTABLEKS                       R9 R8 K27 ["text"]
      105 JUMPIF                           R9 ; [+4]
      106 LOADNIL                          R9
      107 LOADNIL                          R10
      108 LOADB                            R11 0
      109 RETURN                           R9 3
      110 GETUPVAL                         R9 5
      111 GETTABLEKS                       R10 R8 K27 ["text"]
      113 MOVE                             R11 R3
      114 CALL                             R9 2 -1
      115 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Features"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dUtils"]
       13 GETTABLEKS                       R2 R2 K8 ["SegmentationEnums"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Subagents"]
       20 GETTABLEKS                       R3 R3 K10 ["runLLM"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantGen3dAutoSegmentation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K13 ["FFlagDebugLogAssistantUI"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K16 [{"functional", "material"}]
       38 LOADK                            R7 K17 ["FUNCTIONAL — separate each independently moving or interactive component (e.g. wheels that spin, doors that open, gun barrels, rotor blades). Provide up to %* parts"]
       39 LOADN                            R9 3
       40 NAMECALL                         R7 R7 K18 ["format"]
       42 CALL                             R7 2 1
       43 MOVE                             R6 R7
       44 SETTABLEKS                       R6 R5 K14 ["functional"]
       46 LOADK                            R7 K19 ["MATERIAL — group components that share the same texture or material into one part (e.g. all four wooden chair legs become a single mesh, a metal frame stays separate from upholstery). Limit the generation to %* parts"]
       47 LOADN                            R9 3
       48 NAMECALL                         R7 R7 K18 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 SETTABLEKS                       R6 R5 K15 ["material"]
       54 DUPCLOSURE                       R6 K20 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R7 K21 [PROTO_1]
       58 DUPCLOSURE                       R8 K22 [PROTO_2]
       59 DUPCLOSURE                       R9 K23 [PROTO_3]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R10 K24 [PROTO_4]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R9
       68 DUPTABLE                         R11 K27 [{"suggestSchemaOrPartsAsync", "SEGMENTATION_STYLE_DESCRIPTIONS"}]
       69 SETTABLEKS                       R10 R11 K25 ["suggestSchemaOrPartsAsync"]
       71 SETTABLEKS                       R5 R11 K26 ["SEGMENTATION_STYLE_DESCRIPTIONS"]
       73 RETURN                           R11 1
