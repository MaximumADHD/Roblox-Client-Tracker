PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AcceptAllSession"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["None"]
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AcceptAllSession"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["AcceptAllPrompt"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+3]
       14 LOADB                            R0 0
       15 RETURN                           R0 1
       16 LOADB                            R0 1
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["ReviewEach"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["AcceptAllPrompt"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["AcceptAllSession"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["None"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["None"]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["None"]
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K4 [{[1] = "None", ["ReviewEach"] = "ReviewEach", ["AcceptAllPrompt"] = "AcceptAllPrompt", ["AcceptAllSession"] = "AcceptAllSession"}]
        4 SETTABLEKS                       R1 R0 K5 ["AcceptanceMode"]
        6 GETTABLEKS                       R2 R1 K0 ["None"]
        8 GETTABLEKS                       R3 R1 K0 ["None"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R3
       14 SETTABLEKS                       R4 R0 K6 ["shouldShowConfirmation"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          REF R3
       20 SETTABLEKS                       R4 R0 K7 ["shouldUseDiffView"]
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          REF R3
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R4 R0 K8 ["setReviewEach"]
       27 NEWCLOSURE                       R4 P3
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R0 K9 ["setAcceptAllPrompt"]
       32 NEWCLOSURE                       R4 P4
       33 CAPTURE                          REF R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R0 K10 ["setAcceptAllSession"]
       37 NEWCLOSURE                       R4 P5
       38 CAPTURE                          REF R3
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R0 K11 ["resetPrompt"]
       42 NEWCLOSURE                       R4 P6
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          REF R3
       46 SETTABLEKS                       R4 R0 K12 ["_resetAll"]
       48 CLOSEUPVALS                      R2
       49 RETURN                           R0 1
