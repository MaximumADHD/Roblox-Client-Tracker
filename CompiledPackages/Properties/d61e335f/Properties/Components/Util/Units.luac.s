PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["studs"] ; [+13]
        2 LOADK                            R2 K1 [" %*"]
        3 GETUPVAL                         R4 0
        4 LOADK                            R6 K2 ["Unit"]
        5 LOADK                            R7 K3 ["Studs"]
        6 NAMECALL                         R4 R4 K4 ["getText"]
        8 CALL                             R4 3 1
        9 NAMECALL                         R2 R2 K5 ["format"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 RETURN                           R1 1
       14 JUMPIFNOTEQKS                    R0 K6 ["degrees"] ; [+3]
       16 LOADK                            R1 K7 ["°"]
       17 RETURN                           R1 1
       18 JUMPIFNOTEQKS                    R0 K8 ["pixels"] ; [+3]
       20 LOADK                            R1 K9 ["px"]
       21 RETURN                           R1 1
       22 JUMPIFNOTEQKS                    R0 K10 ["seconds"] ; [+13]
       24 LOADK                            R2 K1 [" %*"]
       25 GETUPVAL                         R4 0
       26 LOADK                            R6 K2 ["Unit"]
       27 LOADK                            R7 K11 ["Seconds"]
       28 NAMECALL                         R4 R4 K4 ["getText"]
       30 CALL                             R4 3 1
       31 NAMECALL                         R2 R2 K5 ["format"]
       33 CALL                             R2 2 1
       34 MOVE                             R1 R2
       35 RETURN                           R1 1
       36 JUMPIFNOTEQKS                    R0 K12 ["percent_0-1"] ; [+3]
       38 LOADK                            R1 K13 ["%"]
       39 RETURN                           R1 1
       40 GETUPVAL                         R1 1
       41 MOVE                             R2 R0
       42 CALL                             R1 1 1
       43 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["percent_0-1"] ; [+3]
        2 MULK                             R2 R1 K1 [100]
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["percent_0-1"] ; [+3]
        2 DIVK                             R2 R1 K1 [100]
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Resources"]
       16 GETTABLEKS                       R3 R3 K8 ["Localization"]
       18 GETTABLEKS                       R3 R3 K9 ["Translator"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["exhaustiveMatch"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R5 R4 K14 ["getSuffix"]
       37 DUPCLOSURE                       R5 K15 [PROTO_1]
       38 SETTABLEKS                       R5 R4 K16 ["toDisplayValue"]
       40 DUPCLOSURE                       R5 K17 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K18 ["fromDisplayValue"]
       43 RETURN                           R4 1
