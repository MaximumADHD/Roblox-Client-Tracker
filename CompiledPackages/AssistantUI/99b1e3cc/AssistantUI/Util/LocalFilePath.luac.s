PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 LOADN                            R4 1
        3 LOADN                            R5 2
        4 FASTCALL3                        STRING_SUB R0 R4 R5
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K4 [string.sub]
        9 CALL                             R2 3 1
       10 LOADK                            R3 K5 ["\\"]
       11 LOADK                            R4 K6 ["/"]
       12 CALL                             R1 3 1
       13 JUMPIFNOTEQKS                    R1 K7 ["//"] ; [+3]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 GETIMPORT                        R1 K9 [string.find]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K10 [":"]
       21 LOADN                            R4 3
       22 LOADB                            R5 1
       23 CALL                             R1 4 1
       24 JUMPIFEQKNIL                     R1 ; [+3]
       26 LOADB                            R1 0
       27 RETURN                           R1 1
       28 LOADB                            R1 1
       29 LOADN                            R4 1
       30 LOADN                            R5 1
       31 FASTCALL3                        STRING_SUB R0 R4 R5
       33 MOVE                             R3 R0
       34 GETIMPORT                        R2 K4 [string.sub]
       36 CALL                             R2 3 1
       37 JUMPIFEQKS                       R2 K6 ["/"] ; [+10]
       39 GETIMPORT                        R2 K12 [string.match]
       41 MOVE                             R3 R0
       42 LOADK                            R4 K13 ["^%a:[/\\]"]
       43 CALL                             R2 2 1
       44 JUMPIFNOTEQKNIL                  R2 ; [+2]
       46 LOADB                            R1 0 +1
       47 LOADB                            R1 1
       48 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["/"]
        1 GETIMPORT                        R5 K3 [string.gsub]
        3 MOVE                             R6 R0
        4 LOADK                            R7 K4 ["\\"]
        5 LOADK                            R8 K0 ["/"]
        6 CALL                             R5 3 1
        7 MOVE                             R3 R5
        8 LOADK                            R4 K0 ["/"]
        9 CONCAT                           R1 R2 R4
       10 GETIMPORT                        R3 K6 [string.find]
       12 MOVE                             R4 R1
       13 LOADK                            R5 K7 ["/%.%.?/"]
       14 CALL                             R3 2 1
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\\"]
        4 LOADK                            R4 K4 ["/"]
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K2 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K5 ["/+"]
       10 LOADK                            R5 K4 ["/"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 GETIMPORT                        R2 K2 [string.gsub]
       15 MOVE                             R3 R1
       16 LOADK                            R4 K6 ["/$"]
       17 LOADK                            R5 K7 [""]
       18 CALL                             R2 3 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K9 [string.match]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K10 ["^%a:"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETIMPORT                        R2 K12 [string.lower]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 1
       30 MOVE                             R1 R2
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isAbsolute"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["hasRelativeSegment"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["normalize"]
       12 RETURN                           R0 1
