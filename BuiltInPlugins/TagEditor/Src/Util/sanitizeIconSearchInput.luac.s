PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["–"]
        4 LOADK                            R4 K4 ["-"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["—"]
       11 LOADK                            R4 K4 ["-"]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 GETIMPORT                        R1 K2 [string.gsub]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K6 ["‐"]
       18 LOADK                            R4 K4 ["-"]
       19 CALL                             R1 3 1
       20 MOVE                             R0 R1
       21 GETIMPORT                        R1 K2 [string.gsub]
       23 MOVE                             R2 R0
       24 LOADK                            R3 K7 ["‑"]
       25 LOADK                            R4 K4 ["-"]
       26 CALL                             R1 3 1
       27 MOVE                             R0 R1
       28 GETIMPORT                        R1 K2 [string.gsub]
       30 MOVE                             R2 R0
       31 LOADK                            R3 K8 ["−"]
       32 LOADK                            R4 K4 ["-"]
       33 CALL                             R1 3 1
       34 MOVE                             R0 R1
       35 GETIMPORT                        R1 K2 [string.gsub]
       37 MOVE                             R2 R0
       38 LOADK                            R3 K9 ["%-"]
       39 LOADK                            R4 K10 ["%%-"]
       40 CALL                             R1 3 1
       41 MOVE                             R0 R1
       42 GETIMPORT                        R1 K12 [string.lower]
       44 MOVE                             R2 R0
       45 CALL                             R1 1 1
       46 MOVE                             R0 R1
       47 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["sanitizeIconSearchInput"]
        4 GETGLOBAL                        R0 K1 ["sanitizeIconSearchInput"]
        6 RETURN                           R0 1
