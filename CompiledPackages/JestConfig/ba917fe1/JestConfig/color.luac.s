PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["white"]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K3 [math.random]
        6 GETUPVAL                         R3 0
        7 LENGTH                           R2 R3
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLE                         R2 R3 R1
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 NEWTABLE                         R3 0 7
       16 LOADK                            R4 K6 ["red"]
       17 LOADK                            R5 K7 ["green"]
       18 LOADK                            R6 K8 ["yellow"]
       19 LOADK                            R7 K9 ["blue"]
       20 LOADK                            R8 K10 ["magenta"]
       21 LOADK                            R9 K11 ["cyan"]
       22 LOADK                            R10 K12 ["white"]
       23 SETLIST                          R3 R4 7 [1]
       25 DUPCLOSURE                       R4 K13 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R2 K14 ["getDisplayNameColor"]
       29 RETURN                           R2 1
