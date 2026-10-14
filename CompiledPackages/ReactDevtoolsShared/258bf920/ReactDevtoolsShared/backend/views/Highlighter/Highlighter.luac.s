PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFEQKNIL                     R0 ; [+7]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K3 ["remove"]
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 1
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideOverlay"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+7]
        3 GETIMPORT                        R3 K2 [task.cancel]
        5 GETUPVAL                         R4 0
        6 CALL                             R3 1 0
        7 LOADNIL                          R3
        8 SETUPVAL                         R3 0
        9 JUMPIFNOTEQKNIL                  R0 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+6]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K3 ["new"]
       18 CALL                             R3 0 1
       19 SETUPVAL                         R3 1
       20 GETUPVAL                         R3 1
       21 JUMPIFNOT                        R3 ; [+16]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K4 ["container"]
       25 GETTABLEKS                       R3 R3 K5 ["Parent"]
       27 JUMPIFNOTEQKNIL                  R3 ; [+10]
       29 GETUPVAL                         R3 1
       30 NAMECALL                         R3 R3 K6 ["remove"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K3 ["new"]
       36 CALL                             R3 0 1
       37 SETUPVAL                         R3 1
       38 GETUPVAL                         R4 1
       39 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       41 LOADK                            R5 K7 ["Luau"]
       42 GETIMPORT                        R3 K9 [assert]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 1
       46 MOVE                             R5 R0
       47 MOVE                             R6 R1
       48 NAMECALL                         R3 R3 K10 ["inspect"]
       50 CALL                             R3 3 0
       51 JUMPIFNOT                        R2 ; [+7]
       52 GETIMPORT                        R3 K12 [task.delay]
       54 LOADN                            R4 2
       55 DUPCLOSURE                       R5 K13 [PROTO_1]
       56 CAPTURE                          UPVAL U3
       57 CALL                             R3 2 1
       58 SETUPVAL                         R3 0
       59 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Overlay"]
        9 GETTABLEKS                       R1 R1 K5 ["Overlay"]
       11 CALL                             R0 1 1
       12 NEWTABLE                         R1 4 0
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          REF R2
       18 CAPTURE                          REF R3
       19 SETTABLEKS                       R4 R1 K6 ["hideOverlay"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          REF R2
       23 CAPTURE                          REF R3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R1 K7 ["showOverlay"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          REF R3
       30 SETTABLEKS                       R4 R1 K8 ["getOverlay"]
       32 CLOSEUPVALS                      R2
       33 RETURN                           R1 1
