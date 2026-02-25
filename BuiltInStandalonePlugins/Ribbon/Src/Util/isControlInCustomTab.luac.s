PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["WidgetUri"]
        2 GETTABLEKS                       R1 R2 K1 ["ItemId"]
        4 JUMPIFEQKNIL                     R1 ; [+15]
        6 GETTABLEKS                       R3 R0 K0 ["WidgetUri"]
        8 GETTABLEKS                       R2 R3 K1 ["ItemId"]
       10 LOADN                            R3 1
       11 LOADN                            R4 12
       12 FASTCALL                         STRING_SUB ; [+2]
       13 GETIMPORT                        R1 K4 [string.sub]
       15 CALL                             R1 3 1
       16 JUMPIFNOTEQKS                    R1 K5 ["Tabs/Custom_"] ; [+3]
       18 LOADB                            R1 1
       19 RETURN                           R1 1
       20 LOADB                            R1 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["ControlsView"]
       22 GETTABLEKS                       R3 R4 K10 ["ControlProps"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 RETURN                           R3 1
