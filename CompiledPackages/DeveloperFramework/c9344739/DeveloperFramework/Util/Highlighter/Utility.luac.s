PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K2 [string.gsub]
        4 GETIMPORT                        R3 K2 [string.gsub]
        6 GETIMPORT                        R4 K2 [string.gsub]
        8 GETIMPORT                        R5 K2 [string.gsub]
       10 MOVE                             R6 R0
       11 LOADK                            R7 K3 ["&"]
       12 LOADK                            R8 K4 ["&amp;"]
       13 CALL                             R5 3 1
       14 LOADK                            R6 K5 ["<"]
       15 LOADK                            R7 K6 ["&lt;"]
       16 CALL                             R4 3 1
       17 LOADK                            R5 K7 [">"]
       18 LOADK                            R6 K8 ["&gt;"]
       19 CALL                             R3 3 1
       20 LOADK                            R4 K9 ["\""]
       21 LOADK                            R5 K10 ["&quot;"]
       22 CALL                             R2 3 1
       23 LOADK                            R3 K11 ["'"]
       24 LOADK                            R4 K12 ["&apos;"]
       25 CALL                             R1 3 -1
       26 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\t"]
        4 LOADK                            R4 K4 ["    "]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\0\x\x\x\x\x\x\x\x\x\x\r\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x]+"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["sanitizeRichText"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["convertTabsToSpaces"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["removeControlChars"]
       12 RETURN                           R0 1
