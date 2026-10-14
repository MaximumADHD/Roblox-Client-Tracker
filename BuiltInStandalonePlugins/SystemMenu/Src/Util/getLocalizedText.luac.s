PROTO_0:
        0 GETIMPORT                        R0 K2 [string.gsub]
        2 GETIMPORT                        R1 K4 [string.lower]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K5 ["StudioLocaleId"]
        7 CALL                             R1 1 1
        8 LOADK                            R2 K6 ["_"]
        9 LOADK                            R3 K7 ["-"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+3]
        7 JUMPIFEQKS                       R3 K2 [""] ; [+2]
        9 RETURN                           R3 1
       10 LOADNIL                          R4
       11 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 MOVE                             R2 R1
        2 CALL                             R2 0 1
        3 JUMP                             ; [+11]
        4 GETIMPORT                        R2 K2 [string.gsub]
        6 GETIMPORT                        R3 K4 [string.lower]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["StudioLocaleId"]
       11 CALL                             R3 1 1
       12 LOADK                            R4 K6 ["_"]
       13 LOADK                            R5 K7 ["-"]
       14 CALL                             R2 3 1
       15 JUMPIFEQKS                       R2 K8 ["en-us"] ; [+26]
       17 GETUPVAL                         R3 1
       18 JUMPIFEQ                         R2 R3 ; [+8]
       20 SETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K9 ["GetTranslator"]
       25 CALL                             R3 2 1
       26 SETUPVAL                         R3 2
       27 GETUPVAL                         R4 2
       28 GETIMPORT                        R5 K11 [pcall]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R0
       33 CALL                             R5 1 2
       34 JUMPIFNOT                        R5 ; [+4]
       35 JUMPIFEQKS                       R6 K12 [""] ; [+3]
       37 MOVE                             R3 R6
       38 JUMP                             ; [+1]
       39 LOADNIL                          R3
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R3 1
       42 GETUPVAL                         R5 4
       43 GETIMPORT                        R6 K11 [pcall]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R0
       48 CALL                             R6 1 2
       49 JUMPIFNOT                        R6 ; [+4]
       50 JUMPIFEQKS                       R7 K12 [""] ; [+3]
       52 MOVE                             R4 R7
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 OR                               R3 R4 R0
       56 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SystemMenu"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Resources"]
       17 GETTABLEKS                       R2 R2 K10 ["Localization"]
       19 GETTABLEKS                       R3 R2 K11 ["LocalizedStrings"]
       21 GETTABLEKS                       R4 R2 K12 ["SourceStrings"]
       23 LOADK                            R7 K13 ["en-us"]
       24 NAMECALL                         R5 R4 K14 ["GetTranslator"]
       26 CALL                             R5 2 1
       27 LOADK                            R6 K15 [""]
       28 LOADNIL                          R7
       29 DUPCLOSURE                       R8 K16 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R9 K17 [PROTO_2]
       32 NEWCLOSURE                       R10 P2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          REF R6
       35 CAPTURE                          REF R7
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CLOSEUPVALS                      R6
       39 RETURN                           R10 1
