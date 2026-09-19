PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+7]
        4 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
        5 GETTABLEKS                       R3 R0 K1 ["text"]
        7 SETTABLEKS                       R3 R2 K1 ["text"]
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R1 K3 ["image"] ; [+11]
       12 DUPTABLE                         R2 K6 [{[1] = "image", ["data"], ["mimeType"]}]
       13 GETTABLEKS                       R3 R0 K4 ["data"]
       15 SETTABLEKS                       R3 R2 K4 ["data"]
       17 GETTABLEKS                       R3 R0 K5 ["mimeType"]
       19 SETTABLEKS                       R3 R2 K5 ["mimeType"]
       21 RETURN                           R2 1
       22 JUMPIFNOTEQKS                    R1 K7 ["audio"] ; [+11]
       24 DUPTABLE                         R2 K8 [{[1] = "audio", ["data"], ["mimeType"]}]
       25 GETTABLEKS                       R3 R0 K4 ["data"]
       27 SETTABLEKS                       R3 R2 K4 ["data"]
       29 GETTABLEKS                       R3 R0 K5 ["mimeType"]
       31 SETTABLEKS                       R3 R2 K5 ["mimeType"]
       33 RETURN                           R2 1
       34 JUMPIFNOTEQKS                    R1 K9 ["resource"] ; [+7]
       36 DUPTABLE                         R2 K10 [{[1] = "resource", ["resource"]}]
       37 GETTABLEKS                       R3 R0 K9 ["resource"]
       39 SETTABLEKS                       R3 R2 K9 ["resource"]
       41 RETURN                           R2 1
       42 JUMPIFNOTEQKS                    R1 K11 ["resource_link"] ; [+22]
       44 DUPTABLE                         R2 K15 [{[1] = "resource_link", ["uri"], ["name"], ["description"], ["mimeType"]}]
       45 GETTABLEKS                       R3 R0 K12 ["uri"]
       47 SETTABLEKS                       R3 R2 K12 ["uri"]
       49 GETTABLEKS                       R3 R0 K13 ["name"]
       51 JUMPIF                           R3 ; [+2]
       52 GETTABLEKS                       R3 R0 K12 ["uri"]
       54 SETTABLEKS                       R3 R2 K13 ["name"]
       56 GETTABLEKS                       R3 R0 K14 ["description"]
       58 SETTABLEKS                       R3 R2 K14 ["description"]
       60 GETTABLEKS                       R3 R0 K5 ["mimeType"]
       62 SETTABLEKS                       R3 R2 K5 ["mimeType"]
       64 RETURN                           R2 1
       65 LOADNIL                          R2
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AgentClientProtocol"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
