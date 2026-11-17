PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["Connect"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["Disconnect"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetPropertyChangedSignal"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Connect"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["Connect"]
        5 DUPTABLE                         R1 K4 [{"Disconnect"}]
        6 DUPCLOSURE                       R2 K5 [PROTO_1]
        7 SETTABLEKS                       R2 R1 K3 ["Disconnect"]
        9 DUPTABLE                         R2 K7 [{"GetPropertyChangedSignal"}]
       10 DUPCLOSURE                       R3 K8 [PROTO_2]
       11 SETTABLEKS                       R3 R2 K6 ["GetPropertyChangedSignal"]
       13 DUPTABLE                         R3 K16 [{"CoreGui", "GuiService", "LocalizationService", "Players", "RunService", "TextService", "UserInputService"}]
       14 GETIMPORT                        R4 K18 [game]
       16 LOADK                            R6 K9 ["CoreGui"]
       17 NAMECALL                         R4 R4 K19 ["GetService"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K9 ["CoreGui"]
       22 GETIMPORT                        R4 K18 [game]
       24 LOADK                            R6 K10 ["GuiService"]
       25 NAMECALL                         R4 R4 K19 ["GetService"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K10 ["GuiService"]
       30 GETIMPORT                        R4 K18 [game]
       32 LOADK                            R6 K11 ["LocalizationService"]
       33 NAMECALL                         R4 R4 K19 ["GetService"]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K11 ["LocalizationService"]
       38 GETIMPORT                        R4 K18 [game]
       40 LOADK                            R6 K12 ["Players"]
       41 NAMECALL                         R4 R4 K19 ["GetService"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K12 ["Players"]
       46 GETIMPORT                        R4 K18 [game]
       48 LOADK                            R6 K13 ["RunService"]
       49 NAMECALL                         R4 R4 K19 ["GetService"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K13 ["RunService"]
       54 GETIMPORT                        R4 K18 [game]
       56 LOADK                            R6 K14 ["TextService"]
       57 NAMECALL                         R4 R4 K19 ["GetService"]
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R3 K14 ["TextService"]
       62 GETIMPORT                        R4 K18 [game]
       64 LOADK                            R6 K15 ["UserInputService"]
       65 NAMECALL                         R4 R4 K19 ["GetService"]
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R3 K15 ["UserInputService"]
       70 DUPTABLE                         R4 K24 [{"Signal", "Connection", "Instance", "Services"}]
       71 SETTABLEKS                       R0 R4 K20 ["Signal"]
       73 SETTABLEKS                       R1 R4 K21 ["Connection"]
       75 SETTABLEKS                       R2 R4 K22 ["Instance"]
       77 SETTABLEKS                       R3 R4 K23 ["Services"]
       79 RETURN                           R4 1
