PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+25]
        5 JUMPIFNOT                        R0 ; [+24]
        6 GETTABLEKS                       R3 R0 K1 ["creator"]
        8 FASTCALL1                        TYPE R3 ; [+2]
        9 GETIMPORT                        R2 K3 [type]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+17]
       14 GETTABLEKS                       R2 R0 K1 ["creator"]
       16 GETTABLEKS                       R2 R2 K5 ["Id"]
       18 JUMPIFEQKNIL                     R2 ; [+11]
       20 GETTABLEKS                       R2 R0 K1 ["creator"]
       22 GETTABLEKS                       R2 R2 K6 ["Type"]
       24 JUMPIFNOTEQKNIL                  R2 ; [+5]
       26 GETIMPORT                        R2 K8 [warn]
       28 LOADK                            R3 K9 ["Setting PageInfo.creator without a type"]
       29 CALL                             R2 1 0
       30 DUPTABLE                         R2 K12 [{"changes", "settings"}]
       31 SETTABLEKS                       R0 R2 K10 ["changes"]
       33 SETTABLEKS                       R1 R2 K11 ["settings"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R5 K7 ["Util"]
       26 GETTABLEKS                       R5 R5 K10 ["DebugFlags"]
       28 CALL                             R4 1 1
       29 MOVE                             R5 R3
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K11 ["Name"]
       34 DUPCLOSURE                       R7 K12 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CALL                             R5 2 -1
       37 RETURN                           R5 -1
