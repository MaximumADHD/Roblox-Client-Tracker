PROTO_0:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+3]
        2 MOVE                             R1 R0
        3 RETURN                           R1 1
        4 LOADK                            R1 K1 ["Match the style, colors and details of the provided reference image."]
        5 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["data"]
        4 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R2 R0 K2 ["mimeType"]
       10 JUMPIFEQKNIL                     R2 ; [+8]
       12 GETTABLEKS                       R2 R0 K2 ["mimeType"]
       14 JUMPIFEQKS                       R2 K1 [""] ; [+4]
       16 GETTABLEKS                       R1 R0 K2 ["mimeType"]
       18 JUMP                             ; [+1]
       19 LOADK                            R1 K3 ["image/png"]
       20 GETUPVAL                         R4 0
       21 GETTABLE                         R3 R4 R1
       22 ORK                              R2 R3 K4 ["png"]
       23 NEWTABLE                         R3 0 1
       25 DUPTABLE                         R4 K8 [{"name", "content", "contentType"}]
       26 LOADK                            R6 K9 ["image_%*.%*"]
       27 LOADN                            R8 2
       28 MOVE                             R9 R2
       29 NAMECALL                         R6 R6 K10 ["format"]
       31 CALL                             R6 3 1
       32 MOVE                             R5 R6
       33 SETTABLEKS                       R5 R4 K5 ["name"]
       35 GETUPVAL                         R5 1
       36 GETIMPORT                        R7 K13 [buffer.fromstring]
       38 GETTABLEKS                       R8 R0 K0 ["data"]
       40 CALL                             R7 1 -1
       41 NAMECALL                         R5 R5 K14 ["Base64Decode"]
       43 CALL                             R5 -1 1
       44 SETTABLEKS                       R5 R4 K6 ["content"]
       46 SETTABLEKS                       R1 R4 K7 ["contentType"]
       48 SETLIST                          R3 R4 1 [1]
       50 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 NEWTABLE                         R4 2 0
       29 LOADK                            R5 K14 ["png"]
       30 SETTABLEKS                       R5 R4 K15 ["image/png"]
       32 LOADK                            R5 K16 ["jpg"]
       33 SETTABLEKS                       R5 R4 K17 ["image/jpeg"]
       35 NEWTABLE                         R5 4 0
       37 LOADK                            R6 K18 ["Match the style, colors and details of the provided reference image."]
       38 SETTABLEKS                       R6 R5 K19 ["IMAGE_ONLY_PROMPT"]
       40 DUPCLOSURE                       R6 K20 [PROTO_0]
       41 SETTABLEKS                       R6 R5 K21 ["resolveWirePrompt"]
       43 DUPCLOSURE                       R6 K22 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K23 ["toImageGenEntries"]
       48 RETURN                           R5 1
