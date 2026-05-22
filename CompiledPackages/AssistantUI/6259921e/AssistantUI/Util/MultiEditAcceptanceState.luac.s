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
        3 DUPTABLE                         R1 K4 [{"None", "ReviewEach", "AcceptAllPrompt", "AcceptAllSession"}]
        4 LOADK                            R2 K0 ["None"]
        5 SETTABLEKS                       R2 R1 K0 ["None"]
        7 LOADK                            R2 K1 ["ReviewEach"]
        8 SETTABLEKS                       R2 R1 K1 ["ReviewEach"]
       10 LOADK                            R2 K2 ["AcceptAllPrompt"]
       11 SETTABLEKS                       R2 R1 K2 ["AcceptAllPrompt"]
       13 LOADK                            R2 K3 ["AcceptAllSession"]
       14 SETTABLEKS                       R2 R1 K3 ["AcceptAllSession"]
       16 SETTABLEKS                       R1 R0 K5 ["AcceptanceMode"]
       18 GETTABLEKS                       R2 R1 K0 ["None"]
       20 GETTABLEKS                       R3 R1 K0 ["None"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          REF R3
       26 SETTABLEKS                       R4 R0 K6 ["shouldShowConfirmation"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          REF R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          REF R3
       32 SETTABLEKS                       R4 R0 K7 ["shouldUseDiffView"]
       34 NEWCLOSURE                       R4 P2
       35 CAPTURE                          REF R3
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R4 R0 K8 ["setReviewEach"]
       39 NEWCLOSURE                       R4 P3
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R4 R0 K9 ["setAcceptAllPrompt"]
       44 NEWCLOSURE                       R4 P4
       45 CAPTURE                          REF R2
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R0 K10 ["setAcceptAllSession"]
       49 NEWCLOSURE                       R4 P5
       50 CAPTURE                          REF R3
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R4 R0 K11 ["resetPrompt"]
       54 NEWCLOSURE                       R4 P6
       55 CAPTURE                          REF R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          REF R3
       58 SETTABLEKS                       R4 R0 K12 ["_resetAll"]
       60 CLOSEUPVALS                      R2
       61 RETURN                           R0 1
