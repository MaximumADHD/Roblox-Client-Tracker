PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOTEQKNIL                  R1 ; [+4]
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 0
        9 SETTABLE                         R2 R1 R0
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R0
       13 ADDK                             R2 R3 K0 [1]
       14 SETTABLE                         R2 R1 R0
       15 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R0
        6 ORK                              R1 R2 K0 [0]
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getDontShowAgain"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K1 ["getFileSeenCount"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIFEQKN                       R2 K2 [2] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R4 K0 ["ReimportCallout_DontShowAgain"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["SetSetting"]
        4 CALL                             R2 3 0
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+12]
        3 LOADK                            R3 K0 ["ReimportCallout_DontShowAgain"]
        4 NAMECALL                         R1 R0 K1 ["GetSetting"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKB                    R1 TRUE ; [+4]
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 0
       11 JUMP                             ; [+2]
       12 LOADB                            R2 0
       13 SETUPVAL                         R2 0
       14 GETUPVAL                         R3 0
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 FASTCALL1                        ASSERT R2 ; [+2]
       20 GETIMPORT                        R1 K3 [assert]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 0
       24 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 NEWTABLE                         R1 0 0
        5 LOADNIL                          R2
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R3 R0 K0 ["incrementFileSeenCount"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          REF R1
       12 SETTABLEKS                       R3 R0 K1 ["getFileSeenCount"]
       14 DUPCLOSURE                       R3 K2 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R3 R0 K3 ["shouldShowCallout"]
       18 NEWCLOSURE                       R3 P3
       19 CAPTURE                          REF R2
       20 SETTABLEKS                       R3 R0 K4 ["setDontShowAgain"]
       22 NEWCLOSURE                       R3 P4
       23 CAPTURE                          REF R2
       24 SETTABLEKS                       R3 R0 K5 ["getDontShowAgain"]
       26 NEWCLOSURE                       R3 P5
       27 CAPTURE                          REF R1
       28 CAPTURE                          REF R2
       29 SETTABLEKS                       R3 R0 K6 ["reset"]
       31 CLOSEUPVALS                      R1
       32 RETURN                           R0 1
